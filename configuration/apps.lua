local filesystem = require('gears.filesystem')

return {
  -- List of apps to start by default on some actions
  default = {
    terminal = 'lxterminal',
    editor = 'atom',
    rofi = 'rofi -show drun -theme ' .. filesystem.get_configuration_dir() .. '/configuration/rofi.rasi',
    lock = 'i3lock 5 3 --blur=7 -e -k --indicator --timecolor=ffffffff --datecolor=ffffffff --ringcolor=001919ff --ringvercolor=009999ff --insidevercolor=001919ff --keyhlcolor=009999ff --verifcolor=ffffffff --wrongtext="Failed" --veriftext="Verifying"',
    quake = 'lxterminal'
  },
  -- List of apps to start once on start-up
  run_on_start_up = {
    'compton --config ' .. filesystem.get_configuration_dir() .. '/configuration/compton.conf',
    'blueman-applet', -- Bluetooth tray icon
    'pa-applet', --audio tray icon
    'xfce4-power-manager', -- Power manager
    '/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 & eval $(gnome-keyring-daemon -s --components=pkcs11,secrets,ssh,gpg)' -- credential manager
  }
}
