# Come Scaricare la Cartella nuova_cartella

Questa guida spiega come scaricare solo la cartella `nuova_cartella` dal repository RikMark/TEST.

## Metodo 1: Script Automatico (Linux/Mac)

1. Scarica ed esegui lo script fornito:
```bash
curl -O https://raw.githubusercontent.com/RikMark/TEST/main/download_nuova_cartella.sh
chmod +x download_nuova_cartella.sh
./download_nuova_cartella.sh
```

La cartella verrà scaricata in `~/Downloads/nuova_cartella`

## Metodo 2: Sparse Checkout Manuale

Se hai Git installato (versione 2.25 o superiore):

```bash
# Crea una directory per il download
mkdir test-download
cd test-download

# Inizializza git
git init

# Aggiungi il repository remoto
git remote add origin https://github.com/RikMark/TEST

# Abilita sparse-checkout
git config core.sparseCheckout true

# Specifica la cartella da scaricare
echo "nuova_cartella/*" >> .git/info/sparse-checkout

# Scarica
git pull origin main
```

## Metodo 3: Download Diretto del Repository Completo

Il modo più semplice è scaricare tutto il repository:

1. Vai su https://github.com/RikMark/TEST
2. Clicca sul pulsante verde "Code"
3. Seleziona "Download ZIP"
4. Estrai il file ZIP e trova la cartella `nuova_cartella`

## Metodo 4: Git Clone (se vuoi tutto il repository)

```bash
git clone https://github.com/RikMark/TEST.git
cd TEST/nuova_cartella
```

---

# How to Download the nuova_cartella Folder

This guide explains how to download only the `nuova_cartella` folder from the RikMark/TEST repository.

## Method 1: Automatic Script (Linux/Mac)

1. Download and run the provided script:
```bash
curl -O https://raw.githubusercontent.com/RikMark/TEST/main/download_nuova_cartella.sh
chmod +x download_nuova_cartella.sh
./download_nuova_cartella.sh
```

The folder will be downloaded to `~/Downloads/nuova_cartella`

## Method 2: Manual Sparse Checkout

If you have Git installed (version 2.25 or higher):

```bash
# Create a directory for the download
mkdir test-download
cd test-download

# Initialize git
git init

# Add the remote repository
git remote add origin https://github.com/RikMark/TEST

# Enable sparse-checkout
git config core.sparseCheckout true

# Specify the folder to download
echo "nuova_cartella/*" >> .git/info/sparse-checkout

# Download
git pull origin main
```

## Method 3: Direct Download of Complete Repository

The simplest way is to download the entire repository:

1. Go to https://github.com/RikMark/TEST
2. Click the green "Code" button
3. Select "Download ZIP"
4. Extract the ZIP file and find the `nuova_cartella` folder

## Method 4: Git Clone (if you want the entire repository)

```bash
git clone https://github.com/RikMark/TEST.git
cd TEST/nuova_cartella
```
