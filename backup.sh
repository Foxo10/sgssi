#! /bin/bash
# comando cron "0 12 * * * /home/oier/Desktop/backup.sh"

fuente=/home/oier/Desktop/Seguridad
destino=/var/tmp/Backups/
ultimo=$destino/latest

file= "$(date + "%d-%m-%Y")"
mkdir -p "$file"

rsync -a --delete $fuente --link-dest $ultimo --exclude "$destino"/"$file"

rm -rf "$ultimo"
ls -ali "/var/tmp/Backups/"$file""
