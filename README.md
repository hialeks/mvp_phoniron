<div style="text-align:center">
  <img src="assets/logos/logo_black.png" alt="phoniron logo" height="270">
  https://phoniron.com
</div>



# Anwendungsbeschreibung

Die von mir ausgewählte Anwendung zeichnet sich durch eine ziemlich hohe Komplexität und komplexe Funktionen aus, einschließlich der Profilregistrierung, dem Importieren vorhandener Daten usw. Einige der Hauptfunktionen sind wie folgt:

## 1. Starten der Anwendung

### 1.1. Für bestehende Benutzer:

- Anmeldung
  - Eingabe des Benutzernamens // E-Mail, Handynummer
  - Eingabe des Passworts
  - OTP-Authentifizierung oder Verwendung von biometrischen Daten zur Anmeldung

und/oder

- Verwendung biometrischer Daten zur Anmeldung

### 1.2 Für neue Benutzer:

- Kurze Einführung in ein paar Folien
- Link zum Abschnitt - FAQ
- Link zum Demoprofil // zur Visualisierung und Vorstellung der Anwendungsfunktionen
  - Registrierung eines persönlichen/privaten Profils
    // WICHTIG! Die Registrierung eines neuen Profils in der Phoniron App ist nur einmal möglich, und einem Benutzer entspricht nur ein Profil.
    - Eingabe persönlicher Daten // Telefonnummern, E-Mails, Nationalität, aktuelles Land, Stadt, Geburtsdatum, Geschlecht
    und/oder
    - Verwendung von APIs zur Anmeldung wie Google, Apple, Linkedin, Xing
    - Eingabe des echten Namens, Profilbilds // wenn die Präferenzen von den eingegebenen abweichen, über APIs
    und/oder
    - Eingabe minimaler erforderlicher Daten zur Profilregistrierung

#### Nächste Schritte

- OTP-Authentifizierung
- Einverständniserklärung zur Verwendung biometrischer Daten zur Anmeldung

### 1.2.2. Registrierung eines Geschäftsprofils

// Nur möglich durch Aktualisierung eines vorhandenen privaten Benutzerprofils

- Überprüfung und zusätzliche Überprüfung eines autorisierten privaten Profils
- Überprüfung und Verifizierung von Daten zur rechtlichen Registrierung einer juristischen Person
- Eingabe von Daten
- Auswahl des Logos // Format gemäß den Anforderungen der Phoniron App

#### Nächste Schritte

- OTP-Authentifizierung

### 1.2.3. Registrierung einer Organisation, Institution

// Nur möglich durch Aktualisierung eines vorhandenen privaten Benutzerprofils

- Überprüfung und zusätzliche Überprüfung eines autorisierten privaten Profils
- Überprüfung und Verifizierung von Daten zur rechtlichen Registrierung
- Eingabe von Daten
- Auswahl des Logos // Format gemäß den Anforderungen der Phoniron App

#### Nächste Schritte

- OTP-Authentifizierung

## 2. Erstmalige Anmeldung in der Anwendung nach erfolgreicher Registrierung

### 2.1. Festlegen grundlegender Profil- und Datenschutzeinstellungen // Ohne diese initialen Einstellungen kann die Anwendung nicht gestartet werden

Nach erfolgreicher Abschluss der grundlegenden Einstellungen ist die Anwendung bereit für eine Voransicht.

Der Benutzer erhält Zugriff auf die grundlegenden Menüs und Abschnitte der Anwendung:

- Netzwerk
- Spaces
- Gruppen
- Markt

#### Nächste Schritte

- Vorschlag zur Profilverifizierung durch Überprüfung persönlicher Daten.

- Bei erfolgreicher Verifizierung wird das Profil als echt markiert. Bei einem unmarkierten Profil werden einige Funktionen eingeschränkt.

### 2.2. Vorschlag zum Importieren vorhandener Kontaktlisten

Auswahl des Imports von vorhandenen persönlichen Kontakten vom aktuellen Gerät sowie von verschiedenen Quellen // Google, GMX usw., sowie/oder von sozialen Netzwerken und Profilen

Nach Abschluss des Importvorgangs von Kontaktlisten und deren Konvertierung gemäß dem Format der Phoniron App

Vorschlag zum Gruppieren von Kontakten nach Spaces

- Freunde / enge Kontakte
- Familie
- Kollegen
- Geschäft // + Erstellen eines Space

Nach Abschluss des Prozesses erhält der Benutzer Zugriff auf alle Funktionen der Abschnitte Netzwerk, Spaces und Gruppen

### 2.3. Konfiguration des Marktes

Definition eines Käuferprofils

Erstellen eines persönlichen Portfolios - Definition und Verifizierung von Zahlungsmethoden

Nach Abschluss des Prozesses erhält der Benutzer Zugriff auf alle Funktionen des Marktabschnitts

## 3. Kontaktlisten in der Phoniron App

Wenn der Benutzer die Bedingung für minimale persönliche Informationen für einen vollständigen Kontakt erfüllt hat, erhält er Zugriff auf alle Funktionen der Kontaktlisten in der Phoniron App

Ein Standardkontakt in der Kontaktliste der Phoniron APP besteht nur aus Name und Profilbild. Abhängig von den Gruppen in Spaces entscheidet jeder Benutzer, welche Variablen angezeigt werden sollen. Die Verbindung zu einem Kontakt in der Phoniron App erfolgt nicht durch Anrufen einer Telefonnummer, sondern einfach durch Anrufen.

Es folgt ein Vorschlag zur Benachrichtigung aller vorhandenen Kontakte über die Verwendung der Phoniron App // Die Benachrichtigung erfolgt über eine vom Benutzer festgelegte Methode - E-Mail, SMS usw.

### 3.1. Es gibt bereits zwei grundlegende Arten von persönlichen Kontakten auf dem Gerät:

- Klassische Kontaktlisten - Standardliste mit allen zugehörigen Variablen wie Name, Telefonnummer, E-Mail usw.

- Von der Phoniron App zugewiesene - Listen, die nur den PrimaryKey der entsprechenden Benutzer enthalten. Die Informationen mit den zugehörigen Kontaktvariablen werden automatisch durch Vergleich mit der Datenbank von Phoniron aktualisiert.

Nach Abschluss der Zuweisungsprozesse für Kontakte hat der Benutzer ein vollständiges Profil in Phonoron mit Zugriff auf alle Funktionen.

## 4. Beenden der Anwendung

Auch wenn die Anwendung geschlossen wird, bleibt sie im Hintergrund aktiv, während der Benutzer immer angemeldet ist. Beim nächsten Start reicht das Einloggen über biometrische Daten aus.
