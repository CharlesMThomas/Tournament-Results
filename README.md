# Tournament Results

By: Charles M Thomas

**Tournament Results** is Python program that uses a PostgreSQL database to keep track of players and matches in a game tournament. It uses the results of these matches to pair players with similar skill levels (based on number of games won).

Tournament Results was built and tested using Linux and PostgreSQL via VirtualBox. VirtualBox was configured using Vagrant. If you are already running Ubuntu and would like to run Tournament Results locally (not in VirtualBox), please skip to the *Installing Dependencies* section below.

## Installing VirtualBox

* Download the installtion file for your operating system here: https://www.virtualbox.org/wiki/Downloads
* Run the installation file and follow the instructions.
* You do not need the extension pack or the SDK. 
* You do not need to launch VirtualBox after installing it; Vagrant will do that.

## Installing Vagrant

* Download the installation file for your operating system here: https://www.vagrantup.com/downloads.html
* Run the installation file and follow the instructions.
* Windows Users: The Installer may ask you to grant network permissions to Vagrant or make a firewall exception. Be sure to allow this.

## Preparing to run the VirtualBox Ubuntu Installation

* Download the VirtualBox configuration files from here: https://d17h27t6h515a5.cloudfront.net/topher/2016/December/58488015_fsnd-virtual-machine/fsnd-virtual-machine.zip
* Extract the FSND-Virtual-Machine folder from the zip file.
* Navigate to the FSND-Virtual-Machine folder via terminal or GitBash
  * Windows Users: Download the Unix-style terminal GitBash from here: https://git-scm.com/downloads
* Change directories to **vagrant**

## Start the VirtualBox Ubuntu Installation

Use the vagrant up command to start the Ubuntu Linux installation within VirtualBox

`vagrant up`

Log into the VirtualBox Ubuntu installation that was created in the previous step

`vagrant ssh`

If you were successfully logged in, you should see the following shell prompt:

`vagrant@vagrant-ubuntu-trusty-32:~$`

## Installing Dependencies

**The VirtualBox Ubuntu installation from the steps above has been preconfigured with all of the required dependencies for running Tournament Results.**

If you are running Ubuntu locally, the following dependencies are required:

**PostgreSQL - Open source relational database**

Installation:

`sudo apt-get update`

`sudo apt-get install postgresql postgresql-contrib`

** Psycopg2 - PosgtgreSQL adapter for Python**

Installation:

`pip install psycopg2`

## Setting up the PostgreSQL Database

#### Local Machine: 

Download the files from this repository and place them within the **FSND-Virtual-Machine/vagrant** folder.

#### VirtualBox: 

Navigate to the vagrant directory

`cd vagrant`

Start the PostgreSQL command line interface (CLI)

`psql`

Run the tournament database setup file

`\i tournament.sql`

Exit the PostgreSQL CLI

`\q`

## Run the Tournament Results Program

Run the tournament test file

`python tournament_test.py`

If Tournament Results was successful, all the tournament tests have passed and the pairs have been properly assigned.
