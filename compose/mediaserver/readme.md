Set environment variables first!

DOMAIN
SMBPASS
SMBUSER
MNTPATH
SMBFOLDER

In Sonarr: 
- add Deluge download client, 
- set advanced settings shown, 
- set move completed 
- set replace from: "\/rar2fs\/\<MNTPATH>\/(.\*?)\/.*" 
- set replace to: "/mnt/\<MNTPATH>/$1/{Name}"
