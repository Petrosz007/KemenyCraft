# Server Setup

## Installing the server

Install required tools

    sudo apt update
    sudo apt install curl unzip zip git screen
    curl -s "https://get.sdkman.io" | bash
    source "$HOME/.sdkman/bin/sdkman-init.sh"

Check if SDKMan has been installed correctly:

    sdk version

Install Java 17

    sdk install java 17.0.3-tem

Clone this repo to the server

    git clone https://github.com/Petrosz007/KemenyCraft.git

Download the latest version of SpigotMC from their website https://getbukkit.org/download/spigot

    cd server
    wget https://download.getbukkit.org/spigot/spigot-1.19.jar -O spigot_1.19.jar

Modify `server/start.sh` so `PAPER_JAR` has the name of your Paper jar

Start the server with 

    ./start.sh
    echo "eula=true" > eula.txt
    ./start.sh

## Running the server in the background - Screen

To attach create the minecraft screen

    screen -S "minecraft"

To list available screens

    screen -ls

To reattach to the minecraft screen

    screen -r "minecraft"

To exit the screen: `Ctrl-A d` 

## Port forwarding

Log into your router and forward `25565` to your local server IP.

To get your public IP:

    curl ifconfig.me



## Resources
1. https://sdkman.io/install
2. https://www.spigotmc.org/wiki/spigot-installation/
