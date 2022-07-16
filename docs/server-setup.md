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

Download the latest version of PaperMC from their website https://papermc.io/downloads

    cd server
    wget https://api.papermc.io/v2/projects/paper/versions/1.19/builds/61/downloads/paper-1.19-61.jar

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

## Server optimisations
https://www.spigotmc.org/threads/guide-server-optimization⚡.283181/

https://aikar.co/mcflags.html

https://old.reddit.com/r/admincraft/comments/87i0hi/keeping_up_with_cant_keep_up_an_overloaded_guide/

https://docs.papermc.io/paper/aikars-flags

## Resources
1. https://sdkman.io/install
2. https://www.spigotmc.org/wiki/spigot-installation/
3. https://www.spigotmc.org/threads/guide-server-optimization⚡.283181/
4. https://aikar.co/mcflags.html
5. https://old.reddit.com/r/admincraft/comments/87i0hi/keeping_up_with_cant_keep_up_an_overloaded_guide/
6. https://docs.papermc.io/paper/aikars-flags
