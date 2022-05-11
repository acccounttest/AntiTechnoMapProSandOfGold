
# AntiTechnoMapProSandOfGold,green,bluefield etc(click on release to the right panel of this page)
Try to get spectator almost as possible, detect when map is or is not and only.

**Spamming keys in chat can affect your status like a flooder but you will not be warned or specified, or it's an admin hidden**

> 
# [Working.](#Working-1)
[working]: #working

((((
:I discovered the script tend to stop to react even by changing the main state mode of the script with <kbd>control+F2</kbd>, if you think the script stop working itself after a long period, or by a rehost and take around a minute to act or definitively, add theses lines after retrieving the source code explained in source.md file in this repository root:

The variable myind already exist and has been declared in top of the script with myind:=0
Following lines are maybe includd but are commented, it must be reside at the end of the first while loop.
Please remember reload is not good, it force the application to come back to the front, at your coordinates, preferably the windows corner to the top right.
```autohotkey
;while
;{
;...

myind+=1
if(myind>=10)
{
Reload
}

;...
;}
```
In fact reload will bring constantly the window to the front, but it was in the demo version, this one works fully, better comment out this and keep it in screen 2 or somewhere the map area is always visible.

))))

** If you face difficulties and you get the windows regulary front of all others, try to stop the appearing by using the key that permit to send a window to the desktop, un der ll other windows, in one shortcut or by this script, SublimeTab, it permit revert all of them too**
Let me retrieve what distinguish the both maps and what differenciate them, they are not so far together but sand maps are more and more.

This achieve theses opportunities:
 - Stop the checks and cancelations, can prevent any change or detect if they are needed or not, example checkboxes selection or not ready.
 - Detect the map and get alerted and unspecced automatically, same apply but not for statuses, there are:
 + Promap: detect a map with blue or green or gold in it(you must add them, there is not much but versions).
 + Antimap: detect keyword techno, no UI access and not actualized, simply as usualy, check the coordinate pixel color.


So for the abstract of all of this, the program springlobby will be verified to get its checkboxes always checked in a good order:
 - 1 Be specced always.(and never start game as spec)
 - 2 Be ready on blue and green maps, be spec on tekno maps ,be unready on all others maps only after first map change.(map lists can be changed or deactivated)
 - 3 Be spectator and check always auto unspectate.(but not start game if user is specced) and be ready as soon as player is unspectated.
 - 4 Always spec and always start the game



+ For Spring default lobby only on Windows:
--- 
+ Modes
___
 - 1 Always spec 
 - 2 Always rdy or not 
 - 3 Always spec until unspec 
 - 4 Always game spec 
+ The mode 2 will allow one more thing, it keeps the other maps as neutral and tends to let you unready, for blue not techno.
+ This mode 3 is special, it should make you firstly spectator but ready to unspec, it will allow staying unspecced if you are unspecced the first time and so on, it remains the rdy status but prefers by default to be not, if a reload or rehost it should make you unready.

# [Next menus.](#Next-menus-1)
[next-menus]: #next-menus

# [Readme.](#Readme-1)
[readme]: #readme


# Readme 
[[Return]][readme]
---

 : 
+ For install correctly, download the folder named files:
---
- Drag and drop the executable file like on desktop in a new folder.
- The same for the .ini file.
- Start it and prepare your application the first time.

+ Currently supporting battle change but:
---
- Does not support multiple lobby processes.
- You probably need to wait for the background processes can be achieved when entering a new battleroom but no more than 3 seconds else retry or clean your folders or simply wait later.
- You must wait at least 4 seconds between quit and enter a new or the same battleroom.

+ Tested on SL up to **0.273**, the mode two screens permit it works always while in one screen you can appear as spec or player one second or another, the timing reside to hide the windows in the mode that check automatically the maps, uncheck spectator then release the windows the most out of the screen side right but mostly hidden, the window cannot be hidden FTM, but you can choose to really let positioned constantly the window to get the player list ready just stuck on the right side of the screen, that area all along the limit should never be occupied. Other lobbies certainly not, later.

+ Support any engine or mods but not all maps (Since the according to string name of the map is not searched, the script use a pixel of the map outside boxes as much as possible FTM).

+ Currently not supported:
---
- Can't check players number or it need lobby to be always in front and firstly clicked on two first player icons from the top of the sorted ready column state at startup and do not change that aspect of the interface during and after the configuration of a new tutorial i am going to release to demonstrate the recognizing capabilities of this script.
- Can't check the map outside the lobby but current player status.

+ Next updates(with the source if asked):
---
- Player count and map name from the outside of the lobby.
- Get map names associated as keyword that is included in map name, they can be including themselves, the longer apply, with a player count only minimal.
- Support more layouts(ideally map is top right, but it should find).
- Check from the outside in any circumstances, do not need to be in lobby even if the window is reduced, and since that better relay with others on top windows type if switching the windows repeatedly.
- Works with all maps following your preferate features, or if the map change, instantly check the features by scrolling the map area(or eventually drawn zones of predefined preferred zone color recognizable).
- Enhance the map area by selecting the appropriate and proportional value of the pixel due to the map dimensions not equals needed to be approximative, instead evaluate the map dimensions that are shown by using an identification of the gray surrounding the map before compute coordinates.
- Select the tabs more conveniently, because replays could break usage, or it could be forced to the needed disposition by the parent UI part, by default the behavior does not break the research of the other interface elements,.
- Do not stop working, maybe the process can lose its functionality, but maybe it was due to errors, anyway much AHK scripts tend to be more revealed in a crashing state and require to be reloaded.
- Move maps in hierarchy of folder to blacklist or whitelist, or add new map based on a set of coordinates and their different colors.

+ Usage and problems:
---
- Double screens has not been tested fully, windows out of screen maybe not works with negative values, press F3 to force to recognize the app always in front of it is in a secondary screen always in front of all other apps even if not under focus, it will not take the window.
- Press <kbd>control+F2</kbd> in SpringLobby only to change the mode, saved when using the application, default is on 2, for bluefield and anti techno, note the pixel color is not saved though the restarts of the script and the script does not restart on itself.
- If you get an error popup regularly, simply rename the process Spring.exe.
- If nothing works as expected maybe it's because a encoding or scripts number associated with a wrong version of AHK (Try not L but 64 Unicode 1.1 if you used the source).
- (Maybe the first time the script maybe need to be reloaded two times).
- (Tips if nothing works, right-click the new icon and reload the script, now enter in spring lobby if not yet, if nothing after max 4 seconds, simply quit and come back in the app).

There is a hidden mode that allow you to so much switch fast the status, make you invisible to the status, escape the kick, but can sometimes break the start command, it works in spectator mode too but it will stop much easier and itself alone depending the current mode.

This mode is maybe available only for the users that own only a single screen installation.
The special procedure to be able to play techno is follow theses steps:
- Be in the mode 2
- Wait a techno map.
- Be specced
- Be not in game
- Be in Springlobby in the room
- Press the <kbd>control+F2</kbd> to be in mode 3, so one time, no need press the button.
- Uncheck the first check, try both if not.
- Drag and drop the window to the extreme right side if the screen to let the map area and/or the checkboxes hidden and the mouse buttons does not need to be released, the window continue to be pressed, continue to wait if necessary, the window should not long later appears in the other sens of the screen, the hidden part is inverted a little bit less, if you wait the window should continue the perpetual effect of the highlights of majority of all controls in the user intterface, note selecting and keep rolled down the combobox should refuse any checkboxes changes in every visual aspect.



# Working 
[[Return]][working]

---

Now that i demonstrate you the potential of AHK langage through this last script, it was able to :
- Create server latency and block starting of game, commands can fail consecutively
- Show a nice new animations that reuse all controls and thematic of the system(see screenshots and the gif)
- Make player lists sort differents.
- Force to be in unfair game without being noticed before game start.
- Get kicked some time to time while chating or switching statuses too rapidly.

You can configurate the script like this for make it works when in background in top right corner of the screen.

Decide to positionate your application anywhere, do not positionnate the window to the top right, into one screen with the minimap outside of the screen , it could let make you unready as the map pixel color position was not recognized properly, near the corner you need remove much more space to discover the map, hopefully the second map coordinates of the real map area can be too out of the screen but not much, it could require a recalibration later, see the screenshot topright.


Follow this list of operations to configure it properly the first time, search for the string ";tuto" in the script to follow steps:
- 1 Ideal pos of the window to be able to see map abstract without take much space in the corner.
- 2 Invert the old condition to be or not in the window, that does not matter now, 3 different lines i nthe whole script.
- 3 Your difference in pixel for x and y used by your Windows theme, the most common border value of the windows in your system.
- 4 Show the last pixel found in case of.
- 5 Your preferate map pixel color, here blue,gold,green and techno maps footprint found, with an old active list unactualized for techno (exhaustive list).
- 6 ...




There is a latency time added in case of rehosting(happen when the room get closed and all players rejoin sometimes ready sometimes not), the process will take around 1m30 in both mode 1 and 2 to reconfigure the spectator checkbox without game start,
feel free to decide to kill the process spring, but you have to choose which from yours lobbies.


# Later
----
There will be a anti rehost, by analysing the chat every second we can get if rehost occurs then simply reload the script should make it works, maybe add a little additionnal time to avoid that.

The server could kick out if you discuss too much while using the application, it happend when you change and make tests, even after, the interface may flicker some time to time.

Not yet antikick, just enter two enters and if it was the last room selected in the room list, that should works for close the popup and the room.

There is not yet antipopup for download(in case of rehosting) and not for anti notification.

The blacklist and whitelist could be saved in another computer, it must require the window coordinate to be really effective and the resolution used, maybe too the bit screen configuration by the software and the hardware.

In the future if there is a problem, simply do not calculate the pixel from the inner window, but expose the window into a corner in the same way but simply subtract 25 in x and y axis should be enough.







# Next menus 
[[Return]][next-menus]

  # installation 
  ___
  # shortcut 
  ___
  # config
  ___
  # images
  ___
  # folders
  ___
  # map structures
  ___
  # lobbies
  ___

