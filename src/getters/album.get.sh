#!/usr/bin/sh

# inputs

. .env

method="album.get"

echo
echo "method: ${method}"

album_id="${1}"

echo
echo "album_id: ${album_id}"

# runner

resp=$( bash curl.sh "${method}" "album_id=${album_id}" )

# outputs

bash create.sh "${method}" "${album_id}" "album_id" "${album_id}"

bash create.sh "${method}" "${album_id}" "json" "${resp}"
