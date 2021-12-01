## Kali Linux Dockerfile

#### Build Kali Linux container using this Dockerfile

`docker build -t trolleye/kali-linux:latest .`


#### Or pull from dockerhub

`docker pull trolleye/kube-kali:latest`


#### Run Kali Linux container with 4444 open for a reverse shell and delete when done

`docker run --rm -p 4444:4444 -it trolleye/kali-linux:latest`
