# FFIXJumpRope

This script has been created to help with the Hail to the King achievement in Final Fantasy IX.
Others have created versions for Playstation RemotePlay which inspired this script, but this one works with the XBox (PC) version.

## Script Configuration

There are some configuration options available to suit your environment, you can change these variables at the top of the script by editing the file:

- `$Latency = 890`      Adjust latency to suit, somewhere in the region 800-900
- `$ActionKey = 'x'`    The action key for FFIX, usually the x key on the keyboard.
- `$StartDelay = 3 `    Seconds the script will delay before starting. Increase if needed.

## Running the script
To run this script, open a PowerShell editor such as VS Code or PowerShell ISE, and launch FFIX. Talk to the NPCs at the jump rope mini game, and wait at the part where it says "0 times" In the PowerShell editor, run the script then quickly click back into the FFIX game. The script should then send keyboard inputs to the game and jump the rope. Alternatively, the Powershell Script can be ran from a PowerShell window, or by Right Clicking and running it, though you may need to unblock it in the file properties first.

## Script tuning
This script has been tested to work, but if it fails at any point during the jump run, you can find the relevant jump section and alter the jump timings if necessary
