# Start script once game is waiting at "0 times" then click back to FFIX
# This script assumes keyboard input rather than controller.

$Latency = 890      # Adjust latency to suit, somewhere in the region 800-900
$ActionKey = 'x'    # The action key for FFIX, usually the x key on the keyboard. For the enter key use $ActionKey = '~'
$StartDelay = 3     # Seconds the script will delay before starting. Increase if needed.

# Types required for keyboard input and higher precision sleep
Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Threading

# Helper function to keep accurate timings based on stopwatch
function Invoke-StopwatchDelay{
    param([int]$Milliseconds)
    $NextMark = $script:LastMark + $Milliseconds
    Write-Host "Jump $Jump. NextMark $NextMark. LastMark $LastMark. Delay Milliseconds $Milliseconds. Stopwatch Milliseconds $($Stopwatch.ElapsedMilliseconds)." -ForegroundColor Green
    [System.Threading.Thread]::Sleep($NextMark - $Stopwatch.ElapsedMilliseconds)
    $script:LastMark = $NextMark
}

# Start first jump
Write-Host "Starting script..."
Start-Sleep -Seconds $StartDelay
$Jump = 1
$LastMark = 0
$Stopwatch = [System.Diagnostics.Stopwatch]::StartNew()
[System.Windows.Forms.SendKeys]::SendWait($ActionKey)
Invoke-StopwatchDelay -Milliseconds ($Latency)

# Keep jumping accoring to frequency changes
for($Jump = 2 ; $Jump -le 20; $Jump++)
{
    [System.Windows.Forms.SendKeys]::SendWait($ActionKey)
    Invoke-StopwatchDelay -Milliseconds 667
}

for(; $Jump -le 50; $Jump++)
{
    [System.Windows.Forms.SendKeys]::SendWait($ActionKey)
    Invoke-StopwatchDelay -Milliseconds 532
}

for(; $Jump -le 100; $Jump++)
{
    [System.Windows.Forms.SendKeys]::SendWait($ActionKey)
    Invoke-StopwatchDelay -Milliseconds 467
}

for(; $Jump -le 200; $Jump++)
{
    [System.Windows.Forms.SendKeys]::SendWait($ActionKey)
    Invoke-StopwatchDelay -Milliseconds 433
}

for(; $Jump -le 300; $Jump++)
{
    [System.Windows.Forms.SendKeys]::SendWait($ActionKey)
    # Delay by 383.5ms by going between two integers on alternating jumps
    if ($Jump % 2 -eq 1) 
    {
        Invoke-StopwatchDelay -Milliseconds 383
    }
    else
    {
        Invoke-StopwatchDelay -Milliseconds 384
    }
}

for(; $Jump -le 1001; $Jump++)
{
    [System.Windows.Forms.SendKeys]::SendWait($ActionKey)
    # Delay by 400.5ms by going between two integers on alternating jumps
    if ($Jump % 2 -eq 1) 
    {
        Invoke-StopwatchDelay -Milliseconds 400
    }
    else
    {
        Invoke-StopwatchDelay -Milliseconds 401
    }
}

$Stopwatch.Stop()
Write-Host "Script Complete" -ForegroundColor Magenta