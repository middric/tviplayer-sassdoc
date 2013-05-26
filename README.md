# TV & iPlayer sassdoc

Setup script to automate the installation of sassdoc.
*  Installs all sassdoc dependencies
*  Configures sassdoc to parse the tviplayer application
*  Sets up sassdoc as a service
*  Configures service to run on startup

## To install

On the sandbox:

```bash
$ cd ~
$ curl https://raw.github.com/middric/tviplayer-sassdoc/master/install.sh | sh
```

## To start/restart/stop

```bash
$ service sassdoc start|restart|stop
```
