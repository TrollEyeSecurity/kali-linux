#Kali Linux Dockerfile

####Build Kali Linux container using this Dockerfile

`docker build -t trolleye/kali-linux:latest .`

####Run Kali Linux container with 4444 open for a reverse shell shell and delete whn done

`docker run --rm -p 4444:4444 -it trolleye/kali-luinux:latest`