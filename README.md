# FTLSaveManager

FTLSaveManager is a Windows Batch File application.
This program aims to implement a simple Save File Manager for FTL: Faster than Light, a game by Subset Games.

The current version of this software is **1.0.0**.
This program was made for FTL: Faster than Light v1.6.12 .
At the time of creation the Microsoft Command Prompt version is 10.0.19045.6456 .

Features currently supported:

    -> List all non-current save file directories 
    -> Creating new clean save files (up to 100 different save files currently, you may raise this number by directly modifying the code if you please).
    -> Selecting which save file to load before the start of the game.
    -> Start the game after selecting the save file, for supported installations.

Possible new features roadmap:

    -> Delete save files from the program (You must delete them manually from "%userprofile%\Documents\My Games\" at the moment).
    -> Support for Linux/MacOS.

### *** Development is currently stopped and may not start again ***
You may fork this repo ("https://github.com/Kekinoz/FTLSaveManager.git") if you want to update it.

If you wish to contact me, your best bet would be sending me a private message on Reddit (https://www.reddit.com/user/EquiAltK/).

## Download

From GitHub, select the Batch (.bat) file you need (Steam, Epic or Other) and click the "Download Raw" button.

Alternatively, from the main page click the green "Code" button -> Download ZIP, then unzip the file once downloaded. This will download this README.md, the LICENSE and all of the Batch files.

You will only need one Batch file, everything else is not necessary for the program to work. The Batch file you need depends on the source of your game. The license will still apply.

## Installation

The file should be ready to run if you launch the base game through EpicGames. 

If you downloaded the game through Steam, read **Usage** below as you will need to turn off Steam Cloud for the game.

If you have not downloaded the game from Steam or EpicGames, see **Usage** for further instructions.

## Usage

1) If you have bought the game on **Epic** double click "FTLSaveManager - EPIC.bat" to start using the manager.

2) If you have bought the game on **Steam** double click "FTLSaveManager - STEAM.bat" to start using the manager. 

* **!!! IMPORTANT**: You will need to turn off Steam Cloud for the game or the save file will always be overwritten on game start.
* You can do this by opening Steam -> Library -> right click the FTL entry on your games list -> Properties and turn off the "Keep game's saves in the Steam Cloud for FTL" option.
* **NOTE**: Game saves will NOT be synchronized between different devices anymore, but if you do not do this your files may be deleted and lost forever.
* **ALTERNATIVELY**: (THIS METHOD IS **NOT** RECOMMENDED) Follow the "GOG / Huble Bundle / Developer website / Other DRM-Free methods" part, in the directory which opens by going on Steam -> Library -> right click on the FTL entry in the list -> Manage -> left click on Browse local files.)
* **NOTE**: This method may also break Steam game synchronization between devices and may bring to loss to the current save file progression on Steam launch. 

3) If you have bought the game on **GOG / Humble Bundle / Developer website / Other DRM-Free methods**:
* **NOTE**: the Save Managing function of this application should work anyways, but it will not lauch the game as-is. 
* You can still launch the game manually using the method which does not involve this application.
* To start the game from this program after selecting the save file:
<ins>**3.1)**</ins> Put the "FTLSaveManager - OTHER.bat" file in the same directory where the Executable of the game is.
(You can usually find the path from any shortcut you already use to start the game by hovering over its icon or by right clicking it -> Properties under the "URL:" field.)
<ins>**3.2)**</ins>Right click the "FTLSaveManager - OTHER.bat" file -> create shortcut, then drag the newly created shortcut wherever you please.

4) If you acquired the game from any other source:
* **NOTE**: the Save Managing function of this application should work anyways, but it will not lauch the game as-is. Any batch file will work for the save managing, but you should use "FTLSaveManager - OTHER.bat" because the others will start Epic/Steam if you have them installed.
* You can still launch the game manually using the method which does not involve this application.
* **Starting the game from the app in this case is not supported and likely never will be.**
* You may have some luck restoring this functionality manually by modifying any "FTLSaveManager - ... .bat" file by changing the url from the 5th to last line of the code to the URL you can find in a working shortcut to open the game, and then correcting eventual bugs most likely caused by symbols in the path by looking up [This guide by Rob van der Woude](https://www.robvanderwoude.com/escapechars.php).
* Usually this boils boils down to doubling '%' (so any "%" must be replaced by "%%"), and a prayer and some tinkering if the URL contains '!' or other special characters.

## Contributing

This project is not currently open to contributions.

You may use, modify and redistribute the program provided as long as you follow the License Agreement indicated below. 

If you do so, consider forking and/or adding a link to the original repository of this program: "https://github.com/Kekinoz/FTLSaveManager.git".

## License

MIT License

Copyright (c) 2025 Kekinoz

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
