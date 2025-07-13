# Chromium Update Batch Script by Emilia

A simple batch script for updating the stable release of Chromium by Hibbiki. This script checks for updates and launches Chromium if one is available.

## Requirements

- A 64-bit version of Chromium Stable by Hibbiki (available from [Woolyss](https://chromium.woolyss.com/))  
- Windows 10 or later  

## Download

You can download the script from the **Code** tab or the **Releases** section of this repository.

## Installation

1. Open the batch script in a text editor.  
2. Replace every instance of `&YOURPATH&` with the full file path to your Chromium installation.  
3. Place the batch script in the folder where Chromium is installed. For example:  
   ```
   C:\Users\your-username\AppData\Local\Chromium\
   ```

4. If you use a shortcut to launch Chromium (such as on the desktop or in the Start menu), update the shortcut properties:
   - In the **Target** field, set the path to the batch script.
   - In the **Start in** field, set the folder where the batch file is located.

5. Launch the script or use your updated shortcut. If an update is available, the script will open Chromium and navigate to the Woolyss page.

## Important Notes

- A Command Prompt window will open while the script runs. This is expected behavior and it will close automatically after the update check.  
- If you move your Chromium installation to a different folder, the script will stop working until the path is updated in the batch file.
