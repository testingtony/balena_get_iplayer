balena_get_iplayer
==================
Wrap [get_iplayer](https://github.com/get-iplayer/get_iplayer) into a [Balena.io](https://www.balena.io/) image for easy deployment to a Raspberry Pi. It the downloaded radio files are converted to mp3s and ftp'd to a NAS.

One environment variable **$DESTINATION_URI** is required point to the destination for the ftp.