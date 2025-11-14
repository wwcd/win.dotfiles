Set-PSReadLineOption -EditMode Emacs

Set-Alias -Name vim -Value nvim
Set-Alias -Name cat -Value bat

function ll { lsd -la }

