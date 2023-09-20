#!/bin/bash

# Kuupäeva vorming
date_format=$(date +"%Y-%m-%d")

# Kataloogi teekond ja nimi
source_directory="/home/madis/Documents"
backup_directory="/path/to/varukoopiad"  # Asenda see kooli serveri tee ja nimega

# Arhiveeri ja kompileeri kataloog
tar -czf "$backup_directory/backup_$date_format.tar.gz" -C "$source_directory" .

# Saada failid kooli serverisse (asenda SSH-kasutajanime ja serveri IP/ga)
scp "$backup_directory/backup_$date_format.tar.gz" username@server_ip:$backup_directory
