# Fantacalcio 2025-26 Data Files

Questo repository contiene i dati elaborati per la stagione Fantacalcio 2025-26 in modalità Classic.

## File inclusi

### `fantacalcio_25_26_all_with_tiers.csv`
Contiene tutti i giocatori del listone ufficiale con i Tier calcolati.

**Colonne:**
- `Id`: ID univoco del giocatore
- `Nome`: Nome del giocatore
- `Squadra`: Squadra di appartenenza
- `Ruolo`: Ruolo (P=Portiere, D=Difensore, C=Centrocampista, A=Attaccante)
- `Qt.I`: Quotazione iniziale
- `Qt.A`: Quotazione attuale
- `Tier`: Tier calcolato secondo le regole sotto

### `fantacalcio_scommesse_hot40_25_26.csv`
Contiene le 40 "scommesse" più interessanti della stagione con note estese per supportare le decisioni di acquisto.

**Colonne:**
- `Id`: ID univoco del giocatore
- `Nome`: Nome del giocatore
- `Squadra`: Squadra di appartenenza
- `Ruolo`: Ruolo
- `Qt.I`: Quotazione iniziale
- `Tier`: Tier del giocatore (tutti "Scommessa")
- `Note`: Analisi dettagliata del profilo e considerazioni tattiche

## Regole di calcolo dei Tier

I Tier sono calcolati in base al ruolo e alla quotazione iniziale (Qt.I):

### Portieri (P)
- **Top**: Qt.I ≥ 14
- **Semi-top**: Qt.I 12-13
- **Titolari**: Qt.I 7-11
- **Scommesse**: Qt.I ≤ 6

### Difensori (D)
- **Top**: Qt.I ≥ 14
- **Semi-top**: Qt.I 11-13
- **Titolari**: Qt.I 6-10
- **Scommesse**: Qt.I ≤ 5

### Centrocampisti (C)
- **Top**: Qt.I ≥ 20
- **Semi-top**: Qt.I 14-19
- **Titolari**: Qt.I 8-13
- **Scommesse**: Qt.I ≤ 7

### Attaccanti (A)
- **Top**: Qt.I ≥ 24
- **Semi-top**: Qt.I 18-23
- **Titolari**: Qt.I 11-17
- **Scommesse**: Qt.I ≤ 10

## Fonte dati

I dati derivano dal listone ufficiale Fantacalcio.it per la modalità Classic, stagione 2025-26.
File sorgente disponibile in `../source/fantacalcio_listone_25_26.csv`.

## Formato

Tutti i file CSV utilizzano il delimitatore `;` (punto e virgola) e codifica UTF-8.