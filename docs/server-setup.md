# Server Setup

## Installing the server

Install required tools

    sudo apt update
    sudo apt install curl unzip zip git
    curl -s "https://get.sdkman.io" | bash
    source "$HOME/.sdkman/bin/sdkman-init.sh"

Check if SDKMan has been installed correctly:

    sdk version

Install Java 17

    sdk install java 17.0.3-tem

Clone this repo to the server

    git clone https://github.com/Petrosz007/KemenyCraft.git

Download the latest version of PaperMC from their website https://papermc.io/downloads#Paper-1.19

    cd server
    wget https://api.papermc.io/v2/projects/paper/versions/1.19/builds/60/downloads/paper-1.19-60.jar

Modify `server/start.sh` so `PAPER_JAR` has the name of your Paper jar

Start the server with 

    ./start.sh
    echo "eula=true" > eula.txt
    ./start.sh

## Port forwarding

Log into your router and forward `25565` to your local server IP.

To get your public IP:

    curl ifconfig.me



## Resources
1. https://sdkman.io/install
2. https://docs.papermc.io/paper/getting-started
