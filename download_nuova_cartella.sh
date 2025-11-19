#!/bin/bash

# Script per scaricare la cartella nuova_cartella dal repository RikMark/TEST
# Script to download the nuova_cartella folder from RikMark/TEST repository

set -e

REPO_URL="https://github.com/RikMark/TEST"
FOLDER_NAME="nuova_cartella"
BRANCH="main"

echo "Scaricamento della cartella ${FOLDER_NAME}..."
echo "Downloading ${FOLDER_NAME} folder..."

# Metodo 1: Usando git sparse-checkout (richiede Git 2.25+)
# Method 1: Using git sparse-checkout (requires Git 2.25+)

# Crea una directory temporanea
TEMP_DIR=$(mktemp -d)
cd "$TEMP_DIR"

# Inizializza un repository git vuoto
git init

# Aggiungi il remote
git remote add origin "$REPO_URL"

# Abilita sparse-checkout
git config core.sparseCheckout true

# Specifica quale cartella scaricare
echo "$FOLDER_NAME/*" >> .git/info/sparse-checkout

# Scarica solo la cartella specificata
git pull origin "$BRANCH"

# Copia la cartella nella directory corrente dell'utente
DEST_DIR="$HOME/Downloads/${FOLDER_NAME}"
mkdir -p "$DEST_DIR"
cp -r "$FOLDER_NAME"/* "$DEST_DIR/"

echo ""
echo "✓ Cartella scaricata con successo in: $DEST_DIR"
echo "✓ Folder successfully downloaded to: $DEST_DIR"

# Pulisci la directory temporanea
cd ..
rm -rf "$TEMP_DIR"
