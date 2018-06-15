[colors]
black = #494B53
grey  = #f0f0f0
white = #fafafa

[section/bar]
background = ${colors.white}
cursor-click = pointer
font-0 = SpaceMonoNL:pixelsize=12;3
font-1 = FontAwesome5FreeSolid:pixelsize=12;3
foreground = ${colors.black}
height = 32
module-margin-left = 1
module-margin-right = 1
padding-left = 1
padding-right = 1
radius = 0

[bar/top]
inherit = section/bar
border-bottom-size = 1
border-bottom-color = ${colors.grey}
modules-left = mpd
modules-right = date

[bar/bottom]
inherit = section/bar
bottom = true
border-top-size = 1
border-top-color = ${colors.grey}
modules-left = battery memory cpu temperature filesystem backlight alsa
modules-center = title
modules-right = network-speed wired-network xkeyboard

[module/mpd]
type = internal/mpd
host = /run/user/$UID/mpd.sock
interval = 1
format-online = <icon-prev> <toggle> <icon-next> <icon-random> <label-time>  <label-song>
icon-play = 
icon-pause = ⏸
icon-prev = 
icon-next = 
icon-random = 

[module/title]
type = internal/xwindow
format-background = ${colors.white}
format-foreground = ${colors.black}
label-maxlen = 50

[module/xkeyboard]
type = internal/xkeyboard
blacklist-0  = num lock
label-layout =  %layout%

[module/filesystem]
type = internal/fs
interval = 60
mount-0 = /
label-mounted =  %free%

[module/backlight]
type = internal/backlight
card = intel_backlight
format = <label>
label =  %percentage%%

[module/alsa]
type = internal/alsa
label-volume =  %percentage%%
label-muted  =   --%

[module/memory]
type = internal/memory
interval = 5
label =  %percentage_used%%

[module/date]
type = internal/date
interval = 5
date  = %a. %e
time  = %Hh%M
label =  %date%, %time%

[module/battery]
type = internal/battery
adapter = AC
battery = BAT0
full-at = 99
format-charging    =  <label-charging>
format-discharging = <ramp-capacity> <label-discharging>
label-charging     = %percentage%%
label-discharging  = %percentage%%
label-full         =  100%
poll-interval = 1
ramp-capacity-0 = 
ramp-capacity-1 = 
ramp-capacity-2 = 
ramp-capacity-3 = 
ramp-capacity-4 = 

[module/temperature]
type = internal/temperature
interval = 5
label       =  %temperature-c%
label-warn  =  %temperature-c%
warn-temperature = 60

[module/wired-network]
type = internal/network
interface = eth0
interval = 5
label-connected =   %local_ip%
format-disconnected =

[module/network-speed]
type = internal/network
interface = eth0
interval = 1
label-connected =   %downspeed% -  %upspeed%
format-disconnected =

[module/cpu]
type = internal/cpu
interval = 5
label =  %percentage%%

; vim:ft=dosini

