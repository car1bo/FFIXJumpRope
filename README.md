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

## FAQ

### When running there is an error about Execution Policy or that running scripts is disabled on this system

You might see an error like this:

`File C:\TEMP\Awesome-Script.ps1 cannot be loaded because running scripts is disabled on this system. For more information, see about_Execution_Policies at http://go.microsoft.com/fwlink/?LinkID=135170.
 CategoryInfo : SecurityError: (:) [], ParentContainsErrorRecordException
 FullyQualifiedErrorId : UnauthorizedAccess`

 This is a good thing - it means Windows is protecting your PC from random scripts from the internet! There's a good article at https://thinkpowershell.com/powershell-execution-policy-explained which explains how it works. There is a way to temporarily allow just this script to run without turning off any security measures in windows, here's how:

 - Open the PowerShell ISE program in Windows, you should be able to find it in the start menu. Note this is different to a normal PowerShell terminal, and has more features. 
 - Within PowerShell ISE, click the open script button, and browse to where you downloaded the script on your PC and open it
 - At this point you should see all of the code of the script on your screen, In the terminal pane at the command prompt in blue, type in `Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope Process`
 - You may get a warning about security, you can accept this. Because the previous command is scoped to the currently running process, it will have no effect on the security of the PC
 - Click the green start button to launch the script!