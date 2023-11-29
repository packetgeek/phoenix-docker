# phoenix-docker
This is basically a Dockerized version of Exploit.Education's Phoenix VM (basically, qemu inside of Docker, running the Phoenix image).  I put this together yesterday, for a friend, and others have expressed interest, so here it is.

## To build

1) Visit https://exploit.education and download the exploit-education-phoenix-amd64-v1.0.0-alpha-3.tar.xz file

2) Place the above file in the same folder as the Dockerfile

3) Run "./build-image" to build the Docker image

4) Run "./build" to deploy a container from the image

5) Connect to the Phoenix VM by using ssh to connect to port 2222 on your Docker host (localhost should work also).

## Notes

* "build", "build-image", "connect-to-container", and "connect-to-vm" are Bash scripts for the user to run.  "start-up.sh" is used in starting Qemu inside of the container.
* "notes.md" is the Markdown text that I used, with Pandoc, to generate the PDF.
* The notes(.md|.pdf) file contains additoinal steps if you want to export the image to a tarball and import on a different machine (useful when the machine is air-gapped).
* Credentials are the same as before (user/user) and you can run "sudo -s" to switch to root.

## Solutions
They're not heavy on details and assume that you know a few basics, but visit: https://blog.lamarranet.com/index.php/exploit-education-phoenix-solutions/
