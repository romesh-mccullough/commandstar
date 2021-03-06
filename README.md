commandstar
===========

Starbound Server Status Website

The best server resource for your players!

[![Build Status](https://travis-ci.org/seriallos/commandstar.png)](https://travis-ci.org/seriallos/commandstar)

Currently works for: **Offended Koala**

Visit the [Demo Server!](http://commandstar.munshot.com:8080/)

![](https://raw.github.com/seriallos/commandstar/master/commandstar.png)

Features
========

**Current**

* Real-time display of active players
* Real-time display of in-game chat
    * Relay game chat to HipChat
* Real-time server up/down status
* Active solar systems: sector, X, and Y
* Server Description
* Easy to install, easy to run
* Mobile-friendly design

**Upcoming**

* "Captain's Log" - Shared notes of visited world
* User notes

Requirements
============

Tested on Ubuntu 12.04 and Windows 7

* Starbound server
* NodeJS 0.10.x

Installation
============

This is still very early stuff!

**Ubuntu**

**Make sure you have NodeJS 0.10.x!**

You will likely need to install the latest version from the chris-lea PPA.

https://github.com/joyent/node/wiki/Installing-Node.js-via-package-manager

    git clone https://github.com/seriallos/commandstar
    cd commandstar
    npm install
    
    # make your own config file and update values
    vim config/`hostname`.yaml
    
    chmod u+x runServer.sh
    ./runServer.sh

You can also download a release tgz or ZIP and skip the github clone process.

**Windows**

* Download and Install NodeJS: http://nodejs.org/download/
* Download the latest release of CommandStar: https://github.com/seriallos/commandstar/releases/
* Extract the archive
* Edit config/default.yaml (or create config/{YOUR-MACHINENAME-HERE}.yaml)
    * Add a nice server name and description
    * Set up the starbound paths and files for your machine.
* Double click runServer.bat to start the CommandStar process
* Visit http://localhost:8080/

Configuration
=============

**serverName**

Name to display as the title of the page.

**serverDescription**

Long description of your server.  Include whatever you want or use it as a
message of the day area.

* HTML tags supported
* An empty description will hide the Server Description panel completely.

**starbound**

Paths for assets, executables, and whatnot.

* starbound.binPath: Directory that contains the executable
* starbound.assetsPath: Starbound assets directory
* starbound.dataPath: Starbound server universe directory
* starbound.logFile: Full path to 'starbound_server.log'
* starbound.configFile: Full path to 'starbound.config'

**listenPort**

Port that the HTTP server binds to.  Defaults to 8080.

If you want to serve this over port 80, I recommend having a real web server
like apache or nginx in front of node.  You *can* run server.coffee as root to
use port 80 but it's not recommended.

**maxRecentChatMessages**

Number of chat messages to keep (default 100)

Setting this too high can vastly increase initial page load time and bloat
memory usage.

**customCss**

List of custom CSS files to use on the page.

* Files must exist in public/css/
* CSS is dynamically loaded after the DOM is ready

**hipchat**

These are only used if you provide hipchat.token.  HipChat is a chat service
sort of like IRC.  You must have your own account set up at www.hipchat.com

* hipchat.token: API Token for your HipChat (default to NULL)
    * Wrap your token in double quotes
    * Requires a *version 1* token.
* hipchat.user: Username to relay in-game chat (defaults to Server)
* hipchat.room: Room to speak in (defaults to Starbound)
    * This room must *already* exist.  It will not be created automatically
* hipchat.notify: Whether to cause a notification alert or not (defaults to false)
* hipchat.color: Background color for the message (defaults to yellow)
