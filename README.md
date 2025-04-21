# Chromium Update Batch Script By Emilia

So this one is pretty simple, it's a batch script, this is specifically for the chromium stable release by Hibbiki that can be found [here.](https://chromium.woolyss.com/#windows-64-bit)

## Requirements
Windows 64-Bit
Chromium Stable By Hibbiki From [Woolyss](https://chromium.woolyss.com/#windows-64-bit)

## How To Install
1. Edit the script and replace any instances of `&YOURPATH&` with the file path for chromium.
2. Place the batch script in `C:\Users\your username\AppData\Local\Chromium\` or wherever you have chromium installed.
3. If you have any chromium shortcuts (such as one in your start menu, on your desktop, etc.), proceed to 3a, if not, proceed to step 4.
   a. In the properties for your shortcut, change the target to the file path that you placed the batch script in.
   b. Also in the properties, change the "Start In:" to the folder where you have placed the batch script.
4. Now all you have to do is launch the batch file or launch your shortcut, if there is an update available, chromium will open with the [woolyss page](https://chromium.woolyss.com/#windows-64-bit) open.

## Important Things To Note
- Yes, a cmd window will open, that is how this script works, it'll close once it has checked for an update
- If chromium gets moved, the script will not work.
