# TV & iPlayer sassdoc

Setup script to automate the installation of sassdoc.
*  Installs all sassdoc dependencies
*  Configures sassdoc to parse the tviplayer application
*  Sets up sassdoc as a service
*  Configures service to run on startup

## To install

### On the sandbox

```bash
$ cd ~
$ curl https://raw.github.com/middric/tviplayer-sassdoc/master/install.sh | sh
```

### On your mac/pc

Add the following entry to your hosts file:
```bash
192.168.192.10  sassdoc.sandbox.dev.bbc.co.uk
```

Load http://sassdoc.sandbox.dev.bbc.co.uk:3000 in your browser of choice

## To start/restart/stop

```bash
$ service sassdoc start|restart|stop
```
