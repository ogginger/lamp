This docker container is a lamp monolith intended for development use.

The container is intended to be spun up, setup, and left up but 
has a very quick turn over period. When the container is initially run, 
you must enter shell within it and run the script install_mysql located
in the /home/.config directory.

There is also a script for starting the lamp services in the /home/.config
direcotry called startup.  The startup script will run the apache, ssh, and
mysql services.

The container is intended to be exposed on port 80 through the host's 
ip address. If a user with a password or ssh key is setup you can ssh to
the lamp container via the host's IP address using port 2022.

The container's volume /var/www/html is hosted in the current directory's
/html/ directory. To add files to the web server you can just drop them 
into /html to see changes take affect.  
