Set environment variables first!

DOMAIN
SMBPASS
SMBUSER
MNTPATH
SMBFOLDER

In Sonarr, add Deluge download client, set advanced settings shown, set move completed and set relace from: "\/rar2fs\/\<MNTPATH>\/(.\*?)\/.*" and set replace to: "/mnt/\<MNTPATH>/$1/{Name}"
