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
    -> Support for a brief Save file description to be displayed when listing the save files.
    -> Support for Linux/MacOS.

### *** Development is currently stopped and may not start again ***
You may fork this repo ("https://github.com/Kekinoz/FTLSaveManager.git") if you want to update it.

If you wish to contact me, your best bet would be sending me a private message on Reddit (https://www.reddit.com/user/EquiAltK/).

## Download

From GitHub, select the Batch (.bat) file you need (Steam, Epic or Other) and click the "Download raw file" button (NOT the "Raw" icon, the box with an arrow one).

Alternatively, from the main page click the green "Code" button -> Download ZIP, then unzip the file once downloaded. This will download this README.md, the LICENSE and all of the Batch files.

You will only need one Batch file, everything else is not necessary for the program to work. The Batch file you need depends on the source of your game. The license will still apply.

## Installation

The file should be ready to run if you launch the base game through EpicGames. 

If you downloaded the game through Steam, read **BEFORE FIRST START** below as you will need to turn off Steam Cloud for the game.

If you have not downloaded the game from Steam or EpicGames, see **BEFORE FIRST START** for further instructions.

## BEFORE FIRST START
**IN ANY CASE**: Backup your current save file by copying the "FasterThanLight" folder at this path "%userprofile%\Documents\My Games\". Then follow the instructions for your installation below:

1) **EPICGAMES:**  Everything should be already set, you can start using the manager. Use the "FTLSaveManager - EPIC.bat" Batch file.

2) **STEAM:**  **!!! IMPORTANT !!!** You will need to turn off Steam Cloud for the game or the save file will always be overwritten on game start.
* You can do this by opening Steam -> Library -> right click the FTL entry on your games list -> Properties and turn off the "Keep game's saves in the Steam Cloud for FTL" option.
* **NOTE**: Game saves will NOT be synchronized between different devices anymore, but if you do not do this your files may be deleted and lost forever.

* AFTER FOLLOWING THE ABOVE INSTRUCTIONS, Use the "FTLSaveManager - STEAM.bat" Batch file.

<details>
<summary> Alternative NOT RECOMMENDED method for STEAM  </summary>
* **ALTERNATIVELY**: (THIS METHOD IS **NOT** RECOMMENDED) Follow the "GOG / Huble Bundle / Developer website / Other DRM-Free methods" part, in the directory which opens by going on Steam -> Library -> right click on the FTL entry in the list -> Manage -> left click on Browse local files.)
* **NOTE**: This method may also break Steam game synchronization between devices and may bring to the loss of the current save file on Steam launch. 
</details>


3) **GOG / Humble Bundle / Developer website / Other DRM-Free methods**:
<ins>**3.1)**</ins> Put the "FTLSaveManager - OTHER.bat" file in the same directory where the Executable of the game is.
(You can usually find the path from any shortcut you already use to start the game by hovering over its icon or by right clicking it -> Properties under the "URL:" field.)
<ins>**3.2)**</ins> Right click the "FTLSaveManager - OTHER.bat" file -> create shortcut, then drag the newly created shortcut wherever you please.

* Use either the shortcut created in the above steps or the original "FTLSaveManager - OTHER.bat" Batch file that you put in the game directory.

* **NOTE**: if you do not follow these steps, the Save Managing function of this application should work anyways, but it will not lauch the game. (You can still launch the game manually using the method which does not involve this application.)

4) If you acquired the game from any other source:
* **NOTE**: the Save Managing function of this application should work anyways, but it will not lauch the game as-is. Any batch file will work for the save managing, but you should use "FTLSaveManager - OTHER.bat" because the others will start Epic/Steam if you have them installed.
* You can still launch the game manually using the method which does not involve this application.
* **Starting the game from the app in this case is not supported and likely never will be.**
* You may have some luck restoring this functionality manually by modifying any "FTLSaveManager - OTHER.bat" file by changing the url from the 5th to last line of the code to the URL you can find in a working shortcut to open the game, and then correcting eventual bugs most likely caused by symbols in the path by looking up [This guide by Rob van der Woude](https://www.robvanderwoude.com/escapechars.php).
* Usually this boils boils down to doubling '%' (so any "%" must be replaced by "%%"), and a prayer and some tinkering if the URL contains '!' or other special characters.

## Usage

0) **Start the program**: simply double click the correct .bat file that was indicated in the BEFORE FIRST START instructions above.
   * If you use any other bat file, the save managing part of the program will still work, but it will not launch the game and will open the Steam or Epic client, if you have them installed.

- This will open the command prompt, in which there will be the list of the directory of the saves previously created with this program, then number of total alternative saves directories, the index of the current save file, and the question "Input the number of the save to load (0-99): ", followed by the blinking cursor. 

- There may be other lines, those will contain either debug information or error codes. Usually you can ignore those, but make sure to include them if you are sending an error report.

- The command propmt will remain open on a pause screen, to help you reporting bugs or asking for help. It serves no other function as the application will have already done its job (or failed with an error). When the "press any key to continue . . ." line appears, pressing any key after selecting the prompt window will close the program.

1) **Load the CURRENT save file**: input the number that you can see in the "Current save file number: " line that is just above the cursor, then press Enter.

- This may generate the index number file in the current save if not present, or do nothing and start the game.

2) **Load ANOTHER EXISTING save file**: input the number associated with the folder of the save file you want to load then press Enter.

- You can read the list of the existing save file folders at the top of the window (the list of "FTL_*" where * is the number of the respective save file). Among them find the one you want to load, digit its number and press Enter.

- If you have trouble remembering which save file is which, creating a note with the save file number and a brief description should help you. This is not part of the application at the moment.

3) **Create a new save file**: input a number that is not associated with any existing save files, Then press enter.

- You can read the list of the existing save file folders at the top of the window (the list of "FTL_*" where * is the number of the respective save file), and the current save file index just above the cursor. Select a whole number between 0 and 99 (extremes included) which is neither the current save number or appears as the number of a file in the list.

- This will create a new folder with the chosen index and load it, and the game will initialize it to a blank save automatically on boot.

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
