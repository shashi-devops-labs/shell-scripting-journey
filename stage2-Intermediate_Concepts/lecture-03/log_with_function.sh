#!/bin/bash

log_file="system.log"

log(){
	echo "$(date '+%F %T') - $1" >> "$log_file"
}

log "Script started!"
sleep 1
log "Script ended!"

