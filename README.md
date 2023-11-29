# phoenix-docker

This is basically a Dockerized version of [Exploit.Education's](https://exploit.education) Phoenix VM (basically, qemu inside of Docker, running the Phoenix image).  I put this together yesterday, for a friend, and others have expressed interest, so here it is.

## To build

1) Visit https://exploit.education and download the exploit-education-phoenix-amd64-v1.0.0-alpha-3.tar.xz file.  Note: this is not a small file.

2) Place the above file in the same folder as the Dockerfile

3) Run "./build-image" to build the Docker image

4) Run "./build" to deploy a container from the image

5) Connect to the Phoenix VM by using ssh to connect to port 2222 on your Docker host (localhost should work also).

## Notes

In no particular order: 

* "build", "build-image", "connect-to-container", and "connect-to-vm" are Bash scripts for the user to run.  If you're new (or paranoid), recommend looking at the contents of these scripts.
* "start-up.sh" is used in starting Qemu inside of the container (don't run it manually).
* "notes.md" is the Markdown text that I used to generate the PDF (via Pandoc).
* The notes(.md|.pdf) file contains additional steps if you want to export the image to a tarball and import on a different machine (useful when the target machine is air-gapped).
* This is a quick-kluge to run the VM.  There's probably cleaner ways to do this but for an hour's work, it's usable.
* Given the size of the .xz file, as well as the number of tools needed to run it inside of a container, build-image can take a while to finish.
* Once the build-image script finishes, you should have an image roughly 6.8 GB in size.
* I intentionally left out persistent storage.  This is because completing (at least some of) the challenges modifies the challenge's binary.  If you want to reset everything, delete the container and run "./build" again.
* Since this is just a quick-and-dirty jury rig, please don't expect rapid support for any problem that you experience.  You can ask but, given that work involves travel, I may not notice your query for a month or more.  You might also try the TC4 meetings on Fridays (1st Friday of the month is in-person, others are on the TCC Cybersecurity Club Discord server (6-9 PM, Eastern).  Ask  if you need an invite.
* I'm attempting a similar Dockerization of the Nebula challenges but likely won't have time for it until after the holidays (or later).
* Credentials are the same as before (user/user) and you can run "sudo -s" to switch to root, once you're in the VM.
    
## Solutions for the Challenges

They're not heavy on details and assume that you know a few basics, but visit: https://blog.lamarranet.com/index.php/exploit-education-phoenix-solutions/
