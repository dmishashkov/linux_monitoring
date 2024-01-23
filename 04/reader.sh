. config.cfg

if [[ $column1_background -eq "" ||  $column2_background -eq ""  ||  $column1_font_color -eq "" || $column2_font_color -eq "" ]]; then

. default.cfg

back1=$c1_background
back2=$c2_background
front1=$c1_font_color
front2=$c2_font_color

def=1
    
else
back1=$column1_background
back2=$column2_background
front1=$column1_font_color
front2=$column2_font_color

def=0

fi




