echo
echo
echo What iMac color do you want?
echo
echo 3: Yellow
echo 4: Green
echo 5: Blue
echo 6: Pink/Red
echo 7: Purple
echo 8: Orange
echo 0: Disable
echo 
echo Your option:
read userColor

if [ $userColor = 0 ]
then
    defaults write -g NSColorSimulateHardwareAccent -bool YES
    echo Disabled. Relaunch System Preferences.
    exit
fi


defaults write -g NSColorSimulateHardwareAccent -bool YES
defaults write -g NSColorSimulatedHardwareEnclosureNumber -int $userColor
echo Done.
echo Relaunch System Preferences, and after applying, log out and log in.