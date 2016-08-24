Set environment variables first!

- DOMAIN - the domain you want to use for the mediaserver "mediaserver" gives "plex.mediaserver" etc.
- SERVER - SMB server url/ip
- SMBPASS - password for the smb server
- SMBUSER - username for the SMB server
- MNTPATH - any mount name path
- SMBFOLDER - share name on the SMB server 

In Sonarr: 
- add Deluge download client, 
- set advanced settings shown, 
- set move completed 
- set replace from: "\/rar2fs\/\<MNTPATH>\/(.\*?)\/.*" 
- set replace to: "/mnt/\<MNTPATH>/$1/{Name}"