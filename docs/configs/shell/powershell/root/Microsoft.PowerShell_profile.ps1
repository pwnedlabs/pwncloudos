# PowerShell Profile Configuration
# Custom prompt with Zsh-like styling and true color support

# /root/.config/powershell/Microsoft.PowerShell_profile.ps1

# ANSI Color Definitions (24-bit RGB)
$ESC = [char]27
$magenta = "$ESC[38;2;255;51;255m"   # #FF33FF (pwnedlabs)
$blue = "$ESC[38;2;126;200;227m"     # #7EC8E3 (cloud)
$green = "$ESC[38;2;111;255;79m"     # #6FFF4F (directory)
$promptBlue = "$ESC[38;2;88;93;245m" # #585df5 (prompt lines)
$venvRed = "$ESC[38;2;217;33;33m"    # #D92121 (virtualenv)
$white = "$ESC[38;2;255;255;255m"    # White for brackets
$reset = "$ESC[0m"

# Light red for root user display
$lightRed = "$ESC[38;5;9m"

# Zsh-like colors for items (close to the image)
$dirColor = "$ESC[38;5;141m"    # Light Blue directory color
$exeColor = "$ESC[38;5;203m"         # Light red (ex=38;5;203 in Zsh)
$symlinkColor = "$ESC[36m"           # Cyan (ln=36 in Zsh)
$otherColor = "$ESC[37m"             # Gray (default)

# Custom Colored Listing
function Get-ChildItemColor {
    param([string]$Path = ".")
    Get-ChildItem $Path @args | ForEach-Object {
        if ($_.PSIsContainer) {
            Write-Host ($dirColor + $_.Name + $reset) -NoNewline
            Write-Host "/" -ForegroundColor White
        }
        elseif ($_.Extension -match '\.(exe|sh|ps1)$') {
            Write-Host ($exeColor + $_.Name + $reset)
        }
        elseif ($_.LinkType -eq "SymbolicLink") {
            Write-Host ($symlinkColor + $_.Name + $reset) -NoNewline
            Write-Host "@" -ForegroundColor White
        }
        else {
            Write-Host ($otherColor + $_.Name + $reset)
        }
    }
}

# Custom PowerShell Prompt Function
function prompt {
    # Detect if the current user is root using whoami
    $user = if ((whoami) -eq 'root') { 'root' } else { 'pwnedlabs' }
    $hostname = "cloud"
    $dir = (Get-Location).Path.Replace($HOME, '~')  # Shorten home path

    # Virtual Environment Detection
    $venv = if ($env:VIRTUAL_ENV) {
        " $venvRed($([System.IO.Path]::GetFileName($env:VIRTUAL_ENV)))$reset"
    }

    # Set prompt colors (Light Red for root)
    $userColor = if ($user -eq 'root') { "$lightRed" } else { "$magenta" }  # Light Red for root
    $hostnameColor = if ($user -eq 'root') { "$lightRed" } else { "$blue" }  # Light Red for root
    $dirColor = "$green"
    $promptSymbolColor = if ($user -eq 'root') { "$lightRed" } else { "$promptBlue" }

    # Set the prompt symbol (# for root, > for non-root)
    $promptSymbol = if ($user -eq 'root') { " $lightred#" } else { ">" }

    # Build Prompt Lines with all brackets [ ] in white
    $line1 = "$promptBlue┌─ PS $white[$userColor$user$reset@$hostnameColor$hostname$white]$promptBlue─$white[$dirColor$dir$white]$venv"
    $line2 = "$promptBlue└──╼$promptSymbol$reset "

    # Print Prompt
    Write-Host $line1
    Write-Host $line2 -NoNewline

    return " "
}

# Enable UTF-8 for ANSI color support
$OutputEncoding = [Console]::OutputEncoding = [Text.UTF8Encoding]::New()
[Console]::InputEncoding = [Text.UTF8Encoding]::New()

# Fixed Aliases
function ll { Get-ChildItem -Force -Hidden @args }  # ls -al equivalent
function la { Get-ChildItem -Force @args }          # ls -a equivalent
function l { Get-ChildItem -Force @args }           # Basic listing

# Set Aliases with AllScope
Set-Alias ll ll -Option AllScope
Set-Alias la la -Option AllScope
Set-Alias l l -Option AllScope

# Quality-of-Life Improvements
$MaximumHistoryCount = 4096
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineKeyHandler -Chord "Ctrl+LeftArrow" -Function BackwardWord
Set-PSReadLineKeyHandler -Chord "Ctrl+RightArrow" -Function ForwardWord

# Set Alias for ls
Set-Alias ls Get-ChildItemColor -Option AllScope

# Auto-Reload Profile Shortcut
function Reload-Profile { & $PROFILE }
Set-Alias reload Reload-Profile -Option AllScope