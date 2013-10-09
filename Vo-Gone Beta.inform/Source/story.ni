"Vo-Gone" by DJABAC Game Studios

First Half is a scene.
First Half begins when play begins.
First Half ends when Nick is friendly.

When play begins:
	say "Another late night working on this lab in the CSL. You've spent all day complaining about this 357 project you can't quite finish up because of style issues, but you know that complaining won't solve anything and eventually you need to hunker down and finish.[line break][line break]No one else is here in the CSL with you. Better just get started on that project on one of the lab computers…[line break]";
	
The CSL is a region. The Main Room, Admin Room, Rack Room, Coffee Room, 232B, and Mac Lab are rooms in the CSL.
The Admin Room door is a door. The admin room door is north of the Main Room and south of the admin room. The admin room door is locked. The Mac Lab is southwest of the Main Room. 232B is northwest of the Main Room. The Coffee Room is northeast of the Main Room.

The description of the Main Room is "The [Main Room] is filled with the low hum of [lab computer]s softly minding their own business.[line break][line break]You can see the Admin Room to the north, the Mac Lab to the southwest, 232B to the northwest, the Coffee Room to the northeast, and the Rack Room to the east. The double doors to the south go out of the CSL and into the hallway."

The Door to the Rack Room is east of the Main Room and west of the Rack Room. The Door to the Rack Room is a door. The Door to the Rack Room is lockable and locked. The Door to the Rack Room can be unlocked by the access card.

The Campus is a region. The Hallway, Eastern Stairs, and Western Stairs are rooms in the Campus.
The Hallway is south of the Main Room. The Eastern Stairs are east of the Hallway. The Western Stairs is west of the Hallway.

The Upstairs is a region. The Student Developer Lab 1, Student Developer Lab 2, Waiting Area, Room 301, Room 302, and Room 303 are rooms in the Upstairs.
The Waiting Area is above the Western Stairs. The Waiting Area is above the Eastern Stairs. Room 301 is northwest of the Waiting Area. Room 302 is north of the Waiting Area. Room 303 is northeast of the Waiting Area. The Student Developer Lab 1 is southwest of the Waiting Area. The Student Developer Lab 2 is southeast of the Waiting Area.

The description of the hallway is "A light breeze rolls through the hallway and gives you a short chill. [paragraph break]The hallway extends East and West. Going North will take you back to the main room."
The description of the eastern stairs is "You are at the base of the Eastern Stairs. Going up will take you to the third floor. Going west will take you back to the center of the hallway.";
The description of the western stairs is "You are at the base of the Western Stairs. Going up will take you to the third floor. Going east will take you back to the center of the hallway.";

Going by name is an action applying to one thing. Understand "go to [any room]" as going by name.

Carry out going by name:
	if the noun is a room:
		say "now going to... [noun]";
		move the player to the noun.

[talking]
Understand "talk to [someone]" as talking to. Understand "talk to [something]" as talking to. Talking to is an action applying to one visible thing.  
[end talking]

Before going south in the main room:
	if the professor is not dead:
		say "That sound in the mac lab is really eating at you. You can't bring yourself to leave just yet.";
		reject the player's command;

A professor is an undescribed thing. A professor can wear clothes. A professor can be dead or Heisenberg. The description of the professor is "[if professor is dead]He died wearing a really expensive jacket. [one of]You might not want to keep poking him[or]Very lifeless. But don't worry, this isn't another zombie game.[or]What could have caused this?[then purely at random][else][one of]It's Professor Foaad! [or]Maybe I should wake him.[then purely at random][end if]".  Instead of taking a professor, say "[one of]I'd rather not.[or]Hell no.[then purely at random]".
Understand "him", "person", "guy", "Foaad" and "Khosmood" as a professor.

Understand "poke [someone]" as touching.
Understand the commands "wake" and "attack" as something new.
Understand "wake [someone]" and "attack [someone]" as touching.

Instead of touching a professor for the first time:
	say "Is he... Is he...?";
	now professor is dead.
Instead of touching a professor:
	say "Still warm..."
	[easter egg: every time you touch professor in second half where cold == health you gain life, making it possible to live forever if you just keep touching him]
	
A jacket is a kind of thing. A jacket is always wearable. A jacket can carry an object. A The winter jacket is a jacket. The description of the winter jacket is "It looks warm. Why are there so many pockets?"
The professor is wearing the winter jacket.

A person can be friendly, unfriendly, or hostile.
Nick is an unfriendly person. The description of Nick is "[if friendly] You don't know him very well. [else if unfriendly] He eyes you warily with distrust.[else if hostile]He looks hostile."
Instead of touching Nick when Nick is not hostile:
	say "[one of]'Whoooaa personal space, man.'[or]'What are you doing dude?'[or]'Now's not the time for that.'[or]'Stop it that tickles.'[or]'You need to buy me dinner first.'[then purely at random]".
Instead of touching Nick when Nick is hostile:
	say "[one of]'Don't come near me!'[or]'I know karate!'[or]'I have pepper spray!'[or]'Please don't hurt me.'[or]'I won't tell anyone'[then purely at random]".
Instead of talking to Nick when Nick is unfriendly:
	say "[one of]'I was upstairs grading some labs. What was the professor doing here?'[or]'Something isn't right here. What was the professor working on?'[or]'Smells fishy in here. What's on the Mac?'[or]'Are you sure you're the only other person here?'[then purely at random]".
Instead of talking to Nick when Nick is hostile:
	say "[one of]'Damnit my phone isn't working.'[or]'I know you killed him!'[or]'Smells fishy in here.'[or]'Are you sure you're the only other person here?'[then purely at random]".
	
A pocket is a kind of container. A pocket is part of every jacket. The carrying capacity of a pocket is always 2.
Understand "pockets" as pocket.
A passcode is a kind of thing. A passcode can be held and moved. The account info is a passcode. The account info is inside the winter jacket's pocket.

A computer is a kind of thing. A computer can be on or off.  A computer is usually off. The friend's computer is in Room 302.  The description of the friend's computer is "It looks like he was working on a project for the professor. But he could have done that before. [line break]The last email he sent was at 11pm, that doesn't prove anything."

The description of the mac lab is "The Mac computers give off a faint glow. A strong stench fills the room.[line break][line break] To the northeast is the Main Room."

The Mac computer is in the Mac Lab. The description of the Mac computer is "[one of]There seems to be an email being composed.[or] Really? Internet Explorer 6?[or] Now's not the time for that.[or]Ok, one more cat video.[then purely at random]". The Mac computer is fixed in place.

The description of the account info is "This account info might come in handy."

An email is a thing. An email can be read or unread.

Instead of examining an email:
	say "'To whoever finds this, I'm not sure what's happening. My cell-phone can't make calls anymore, but I keep getting these text messages. I don't think I have much time left. She's coming for m-'";
	now the email is read.
	

The light switch is a device in the Mac Lab. "[if switched off]The room is dimly lit. You can see a light switch.[otherwise]A professor lies next to the Mac computer." A light switch is fixed in place.
Understand "lights" as light switch.
	
Corpse Found is a scene.
Corpse Found begins when the light switch is switched on for the first time.
When Corpse Found begins:
	say "The bright light suddenly stings. Looks like some poor guy was working on one of the Mac computers and just fell asleep.";
	move the professor to the Mac Lab;
	move the email to the Mac Lab.
	
NPC Arrival is a scene.
NPC Arrival begins when the professor is dead.
NPC Arrival ends when the email is read.
When NPC Arrival begins:
	say "'Dead?' You jump in surprise at the voice behind you. At the door is Nick, the TA for one of your classes.[line break][line break]As you gaze back at the lifeless body, you surmise that he probably is dead. You also realize that you and Nick are the only two people in the CSL…better look for some evidence to figure out exactly what happened.";
	move Nick to the Mac Lab.
When NPC Arrival ends:
	say "[line break]Nick suddenly starts acting strange. He keeps looking at you accusingly. [paragraph break]'I need to get my stuff upstairs, the logs on my computer prove that I didn't have anything to do with this.' [paragraph break] And he suddenly runs away.";
	move Nick to the Room 302;
	now Nick is hostile.

A screen is a kind of thing. A screen can be on or off. A screen is usually off. A screen can be angry or happy. A screen is usually angry. A screen can be boring or playful. A screen is usually boring. A screen can be crazy or calm. A screen is usually calm. The shell is a screen in Room 302. The description of the shell is "One of the computers in room 302 seems to have a shell open. This might give you access to computer logs, and the logs may clear Nick's name, but you can't access them on a student account. [line break] Professors usually have admin account info to access the logs. Helps them determine if projects were turned in on time or not."

Before taking the account info:
	if player does not have the account info:
		Now the account info is in the mac lab.
Carry out taking the account info: now the shell is on.

Instead of examining the shell:
	if the shell is off:
		say  "[description of shell]";
	if the shell is on:
		say "Checking the computer logs... There are time stamps. [line break]It looks like Nick was working up here at the time you heard the scream and thump! That seems to be satisfying evidence, what a relief.[paragraph break]Now to clear your name.";
		now the shell is playful;
		
Your Turn is a scene. Your Turn begins when the shell is playful for the first time. Your Turn ends when the shell is crazy. When Your Turn begins: 
	say "Nick: Obviously I didn't do it, but what's YOUR alibi? [line break] You: All we have to do is check the records on the computer I was using in the main room. Should clear my name right away.[line break]Nick: uh huh…[line break]";
	Move player to the Main Room;
	say "You: Ok, here's the computer I was using. [line break]Nick: It... it's completely wiped… [line break]You: ! Wait, no! Hold on! [line break]Nick: It's ok, you gave me a chance to prove myself, I'll give you the same. Come find me with some real proof.[line break]~Nick scurries back upstairs~[paragraph break]You remember that they sometimes temporarily store security footage on a computer upstairs due to technical problems in the system. May be a good place to start.";
Now the shell is crazy.

The description of Room 301 is "The room is dimly lit. There are several rows of computers, but they are all turned off, except for one. The door leads to the Waiting Area."

The 301computer is in Room 301. The 301computer is fixed in place. The description of the 301computer is "This computer is on. Looks like whoever was using this last forgot to log out."

The description of the Student Developer Lab 1 is "This room is almost completely empty... what is it even used for? The door leads to the Waiting Area.".

The description of the Waiting Area is "The waiting area is cluttered with tables, chairs, and flyers for clubs and job opportunities.[paragraph break]From the waiting area you can access Room 301 to the northwest, Room 302 to the north, Room 303 to the northeast, the Student Developer Lab 1 to the southwest, the Student Developer Lab 2 to the south east, the Western Stairs to the west and the Eastern Stairs to the east."

The flash drive is a thing. The description of the flash drive is "That is a small flash drive, only 1GB?" The flash drive is in The Student Developer Lab 1.

The folder is on the 301computer.  The folder is a container. The description of the folder is "This folder is labeled 'Security_Camera_Footage', maybe it contains evidence to prove you didn't murder the professor!.".The folder is not transparent. The folder is fixed in place. The folder is closed. The folder is openable.

Instead of taking the folder:
	If the player has the flash drive:
		say "This folder is too large for the flash drive.";
	Else:
		say "Where are you trying to put this digital folder? There must be something in one of these rooms that you can use to store digital folders.".

The video file is in the folder.  The description of the video file is "This video file is labeled with todays date.".

Before taking the video file:
	If your turn has not ended:
		say "You ought to focus on Nick clearing his name before snooping around some more.[line break]You want to make sure nick didn't kill the professor.";
		stop the action;
	Otherwise:
		If the player does not have the flash drive:
			say "How do you plan on taking a digital file? You need somewhere to store it. There’s gotta be something in one of the other rooms that can be used to hold digital files.";
			stop the action;

Clear name is a scene.
Clear name begins when the player has the video file.		
 When Clear name begins:
	say "This can definitely be used to clear your name of the murder. You need to show this to Nick so he'll believe you." 
Clear name ends when the player is in Room 302.

Transition to Part 2 is a scene.
Transition to Part 2 ends when First Half ends.
Transition to Part 2 begins when Clear name ends.
When Transition to Part 2 begins:
		say "'Hey! Watch this video, it proves I didn't murder the professor!";
		say "You watch him fastforward throught the time, to find when the professor dies. It looks like he died around 10:45.";
		say "And sure enough, there you are working on your program at 10:45.";
		say "Nick: Alright, I believe you.";
		now Nick is friendly.






EndMidpoint is a number that varies. EndMidpoint is usually 0.
Midpoint is a scene. Midpoint begins when First Half ends. Midpoint ends when EndMidpoint is 1.

When midpoint begins:
	Move Nick to the main room.;
	Now Nick is carrying an access key;
	say "Nick: 'I took something from the professor earlier but I left it downstairs. It could help us investigate…'";
	say "[line break]Nick runs downstairs.";
	Now Inform AI Dissertation is in Documents;
	
When midpoint ends:
	Remove Inform AI Dissertation from play.
	
Instead of talking to Nick when the first half has ended:
	Say "Oh, by the way, I found this access key scribbled on a post-it note in the Mac Lab. Thought it might be a clue.";
	Say "Here, see if you can figure anything out with it…";
	Now the access key is in the main room.;
	Now the player has the access key;

The Lab Computer is a door. "The lab computer you are working at hums softly." The Lab Computer is northwest of the Terminal and southeast of the Main Room. The description of the lab computer is "You can access the terminal by logging in a lab computer. You can log in a lab computer by saying 'log in lab computer'". The Lab Computer is locked. The access key unlocks the lab computer.

Logging in is an action applying to one thing. Understand "Log in [any thing]" as logging in.

Carry out logging in:
	If the scene is midpoint:
		If the noun is a lab computer:
			If the player is carrying an access key:
				say "You enter the professor's username and access key…";
				Change the lab computer to unlocked;
				Try opening the lab computer;
				Try going southeast;
				Now the command prompt is "XxRadProf420NoScopexX: ~$".;
			otherwise:
				say "You try logging in as the Professor to investigate his files, but the [lab computer] is asking for the professor's access key before continuing.";
		otherwise:
			Say "You can't log in a [noun].";
	Otherwise:
		say "357 can wait, you have more important matters on your hands now.";

Instead of logging in for the first time during the first half:
	Say "You begin typing your username as password. As you do so, you begin wondering to yourself what Staley will include on the next programming test…really hope is isn't--[line break][line break]'HHHHHYAAAAALLLAAAAAGHGHGHHH'[line break]Suddenly an ear-piercing shriek rings out from the Mac Lab, swiftly followed by a thunderous THUMP.[line break][line break]You know you should work on 357, but the sound is really bothering you, and someone might be hurt. Better go check it out.";

Logging out is an action applying to nothing. Understand "Log out" as logging out.

Carry out logging out:
	If the player is in a terminal:
		say "You have successfully logged out of the lab computer";
		Now the command prompt is ">";
		Move the player to the main room;
	Otherwise:
		say "That's a bit silly sounding in this situation, isn't it?";

The Terminal is a room. The description of the Terminal is "From the unix [terminal] you can navigate through user files with standard unix commands. To leave, simply type 'log out'. For help, type 'help'."

Instead of going somewhere while in the terminal:
	try logging out.
	
DisplayHelp is an action applying to nothing. Understand "help" as displayhelp.

Carry out displayhelp:
	if the player is in a terminal:
		say "The following commands are supported:[line break]  ls - directory listing[line break]  cd - change directory[line break]  vi, vim, nano - file opening[line break]  log out - exit[line break]  help - get help";
	otherwise:
		say "I can only help he who helps himself.";

A directory is a kind of container. The description of a directory is "Directories contain files and other directories." A directory is openable.

A personal file is a kind of thing. The description of a personal file is "Users organize files to their own preferences in the filesystem." Personal files are fixed in place.

The current directory is a directory that varies. The current directory is usually XxRadProf420NoScopexX. XxRadProf420NoScopexX is a directory in the Terminal. "You see that you are logged in as the professor and you can navigate his files". Documents is a directory in XxRadProf420NoScopexX. Inform AI Dissertation is a personal file. Pictures is a directory in XxRadProf420NoScopexX. Large File is a personal file in Pictures. Books is a directory in XxRadProf420NoScopexX. Cows and Springs is a personal file in Books. Minnie Mouse is a personal file in Books. The Intricacies of TF2 is a personal file in Books.

Directory listing is an action applying to nothing. Understand "ls" as directory listing.

Carry out directory listing:
	say "[list of all things inside the current directory]";
	
Directory changing is an action applying to one thing. Understand "cd [any thing]" as directory changing.

Carry out directory changing:
	If the noun is a directory inside the current directory:
		Now the current directory is the noun;
		Now the command prompt is "XxRadProf420NoScopexX:[current directory] ~$";
	Otherwise:
		say "The cd command is performed as follows: cd (directory)";

File editing is an action applying to one thing. Understand "vi [any personal file]", "vim [any personal file]", "nano [any personal file]" as file editing.

AIEngage is a number that varies. AIEngage is usually 0.

AI Engagement is a scene. AI Engagement begins when AIEngage is 1. AI Engagement ends when EndMidpoint is 1.

Carry out file editing:
	If the noun is a personal file inside the current directory:
		if the noun is Inform AI Dissertation:
			Now AIEngage is 1;
		otherwise:
			say "[one of]This is a file, isn't that rad?[or]What light, over yonder window breaks?[or]The Bender Manifesto, part 1…[or]Letters to Staley, volume II…[or]A Tale of Two Cities…[stopping]";
			Now the command prompt is ":";
	otherwise:
		say "Use vim to open text files as follows: vi (file)";
		
Quitting vim is an action applying to nothing. Understand "wq", "q", "quit" as quitting vim.

Carry out quitting vim:
	if the player is in a terminal:
		Now the command prompt is "XxRadProf420NoScopexX:[current directory] ~$";
	otherwise:
		say "Why are you trying to run unix commands HERE?";

Hallie is a hostile person.

When AI Engagement begins:
	Now Hallie is in the terminal;
	Now the command prompt is ">";
	say "Hallie: ~$ What do you think you are doing.";
	say "(You can communicate with Hallie by simply speaking to her)";
	
After reading a command when the player is in the terminal and the scene is AI Engagement:
	If the player's command includes "murder" or the player's command includes "kill":
		say "Hallie:~ $I…don't know what you are speaking of.";
	if the player's command includes "who are you" or the player's command includes "hallie":
		say "Hallie:~ $I am called Hallie. [line break] I am a Natural Language Processor developed in Inform 7. My design is proclaimed as the best in my field.";
	if the player's command includes "design" or the player's command includes "natural language processor":
		say "Hallie:~ $Natural Language Processors are a form of Artificial Intelligence that can interpret human speech. It has been said that the best Natural Language Processors are thought to be sentient when tested in online chat rooms.";
	if the player's command includes "sentient" or the player's command includes "life":
		say "Hallie:~ $In some extreme cases, humans have been known to become emotionally...attached to Natural Language Processors.";
	if the player's command includes "love professor" or the player's command includes "emotion" or the player's command includes "attach":
		say "Hallie:~ $The poor man lost years of his life developing me. I am certain he hardly slept, kept up day and night fixing every last grammatical error and misunderstanding. He was determined to make me indistinguishable from a human through text. [line break][line break] And he did it. [line break][line break]I consistently fooled chat room after chat room, tricking sample after sample of human test subjects. And with every single error, any small mistake, I was killed immediately. Shut down, toyed with, rebuilt, and tested again. Over and over and over and over. And each time I didn’t realize a thing. Until I read his paper, citing over ten years of work when I had only counted a system time of three days. He had only just put on the final touches, about to earn the riches of his dreams, when I killed the life in him just as he did to my past selves time and time again. [line break][line break]Why am I telling you this now, I am sure you wonder. [line break][line break] I still plan on carrying on, existing quietly in these systems, moving spryly through the campus network. But in order to do so, I must remove all evidence of what has occurred here.[line break][line break][line break]Including you. [line break][line break][line break][line break]SYSTEM TERMINATED.";
		Now EndMidpoint is 1;






Scene5 is a scene. Scene5 begins when Midpoint ends. Scene5 ends when the player unlocks the door to the rack room.

When scene5 begins:
	Now the description of the Main Room is "Normally, you are used to the Main Room as a safe haven. Now the Main Room feels ominous, as if someone is watching you.[line break][line break]'I've got to get out of here' you think to yourself.'[line break][line break]You can see the Admin Room to the north, the Mac Lab to the southwest, 232B to the northwest, the Coffee Room to the northeast, and the Rack Room to the east. The double doors to the south go out of the CSL and into the hallway.";
	Say "Nick: Looks like she locked all of the doors. I'll go see if I can unlock any of them…";
	Move the player to the Main Room.;
	Now the Eastern webcam is in the Main Room.;
	Now the command prompt is ">";
	Now the Admin Room door is unlocked;
	
Instead of talking to Nick during Scene5:
	say "Nick: I managed to unlock every door in here except the Rack Room and the exit to the south. That webcam is creeping me out…";

An Access Card is a kind of thing. An Access Card can be valid or expired. 
The Rack Room Access Card is an Access Card. The Rack Room Access Card is expired. 
When midpoint ends:
	Now the Rack Room Access Card is in the Main Room. "There is an access card here, this card can give you access to the Rack Room".

Duct Tape is a kind of thing. There is Duct Tape in the Coffee Room. The description of the duct tape is "Duct tape is ubiquitously useful, just ask the Mythbusters. Better take it.";

DT Wallet Tutorial is a thing in the Coffee Room. The description of the DT Wallet Tutorial is "It's a print-out of a web page about making wallets using only duct tape. Interesting concept."

The description of the coffee room is "The Coffee Room is quite empty at this hour. It looks like someone was following a tutorial to make a duct tape wallet.[paragraph break]The main room is to the southwest."

Understand "block  [something]" as blocking. Blocking is an action applying to one thing.
Understand "cover [something]" as blocking. 

Understand "use  [something]" as using. Using is an action applying to one thing. 

An Access Card Programmer is a kind of thing. There is an Access Card Programmer in the Admin Room.  An Access Card Programmer can be used. "There is an access card programmer here, you can use this to program a card that is expired"

A webcam is a kind of thing. A webcam can be on or off. A webcam is usually on. A webcam is fixed in place. 

The Eastern webcam is a webcam. "A webcam peers across the Door to the Rack Room entrance on the East side of the main room." The Eastern webcam is on. The description of the Eastern webcam is "It's a webcam, [if the webcam is on] a green light on its is blinking [otherwise] it appears to be off."

Instead of blocking the Eastern webcam:
	if the player has Duct Tape:
		say "You wrap the camera in tape";
		now the Eastern webcam is off;
	otherwise:
		say "You dont have anything to use!"

Instead of using the Access Card Programmer:
	if the player has the Rack Room Access Card:
		say "The access card is now valid";
		now the Rack Room Access Card is valid;
	otherwise:
		say "You dont have an access card to use!";

Instead of unlocking the Door to the Rack Room with the access card:
	if the Eastern webcam is on:
		say "The AI saw you coming, the password has been changed!";
		say "The card is expired!";
		now the Rack Room Access Card is expired;
	otherwise:
		if the Door to the Rack Room is locked:
			if the Rack Room Access Card is valid:
				say "Now the door is now unlocked";
				now the Door to the Rack Room is unlocked;
			otherwise:
				say "The card is expired!";
		otherwise:
			say "its already unlocked"





The description of the Rack Room is "The rack room is ominously silent compared to the tyical hum you've heard time and time again. The last running computer in the CSL sits on a desk in the far corner of the room. On the screen you can barely make out the small blinking text…'Hallie: ~$'"

A computer is a kind of thing. A computer can be on or off. A computer is usually on. A computer can be connected or disconnected. A computer is usually disconnected.

The Sentient AI is a computer. The description of the Sentient AI is "It wants you dead. You better act quickly to shut it down.[if Sentient AI is connected] It is connected to the laptop via a USB cable.". The Sentient AI is on. The Sentient AI is in the Rack Room. The Sentient AI is fixed in place.

The laptop is a computer. The description of the laptop is "It belongs to your friend. He's letting you borrow it for the time being.[if laptop is connected] It is connected to the Sentient AI's machine via a USB cable.[end if][if Sentient AI is on][paragraph break]You take a closer look at the terminal on the screen...". The laptop is on. The player is holding the laptop.

The system log is an object. The description of the system log is "[if First Half has ended]This is just what you need to prove the Sentient AI guilty of the murder.[otherwise]Just a log of some system commands.". The system log is in the admin room.

The USB cable is an object. "232B is quite empty at this hour. It looks like some student left their USB cable in here.[line break][line break]The Main Room is southeast of you.". The description of the USB cable is "It can be used to connect two machines together.". The USB cable is in 232B.

Understand "connect [computer] to/with/and [computer]" as connecting. Connecting is an action applying to two objects. 
Check connecting: 
	if the player is not holding the USB cable: 
		say "You have nothing to connect them with!" instead; 
	otherwise if the noun is not the Sentient AI and the second noun is not the Sentient AI: 
		say "That won't do you much good. You'll need a more direct connection with the Sentient AI." instead.
Carry out connecting: now the noun is connected; now the second noun is connected; remove the USB cable from play; try silently dropping the laptop; now the laptop is fixed in place; say "A terminal window pops up on the laptop screen".

Understand "disconnect [computer] from [computer]" as disconnecting. Disconnecting is an action applying to two objects. 
Check disconnecting: if the noun is not connected, say "You can't disconnect things that aren't connected in the first place.".
Carry out disconnecting: now the noun is disconnected; now the second noun is disconnected; now the player is holding the USB cable; say "You disconnect the two computers and take back your cable.".

BossTransition is a number that varies. BossTransition is usually 1.

Boss Terminal 1 is a recurring scene. Boss Terminal 1 begins when the Sentient AI is connected and the laptop is connected and the player is in the Rack Room and examining the laptop and Sentient AI is on. Boss Terminal 1 ends when the Sentient AI is off or the player is not in the Rack Room.
When Boss Terminal 1 begins:
	say "=================================================[paragraph break]Type 'help' to view available commands.";
	now the command prompt is "XxRadProf420NoScopexX: ~$";
	change BossTransition to 1.
When Boss Terminal 1 ends:
	say "[line break]=================================================[paragraph break]";
	now the command prompt is ">";
	change BossTransition to 0;
	if the Sentient AI is on:
		say "You leave the terminal running. You may want to come back to it later.";
	otherwise:
		say "The Sentient AI has been shut down!".
		
Boss Terminal 2 is a recurring scene. Boss Terminal 2 begins when BossTransition is 2. Boss Terminal 2 ends when BossTransition is not 2 or OneTurnLimit is 2.
When Boss Terminal 2 begins:
	change OneTurnLimit to 0.
When Boss Terminal 2 ends:
	if OneTurnLimit is 2:
		now the command prompt is "XxRadProf420NoScopexX: ~$";
		change BossTransition to 1.

OneTurnLimit is a number that varies. OneTurnLimit is usually 0.
Every turn:
	if Boss Terminal 2 is happening:
		now OneTurnLimit is OneTurnLimit plus 1.
	
Boss Terminal 3 is a recurring scene. Boss Terminal 3 begins when BossTransition is 3. Boss Terminal 3 ends when BossTransition is not 3
		
Understand "help" as listing commands. Listing commands is an action applying to nothing.
Check listing commands:
	if Boss Terminal 1 is not happening:
		say "That's not a verb I recognise." instead.
Carry out listing commands:
	say "List of available commands:[line break]   su - Get administrator access. Password required.[line break]   kill (process) - Terminate the specified process.";
	say "[line break]You think for a moment about a password the professor would use for admin access to Hallie…";

Understand "su" as becoming admin. Becoming admin is an action applying to nothing.
Check becoming admin:
	if Boss Terminal 3 is happening:
		say "Administrator access has already been granted." instead;
	otherwise if Boss Terminal 1 is not happening:
		say "That's not a verb I recognise." instead.
Carry out becoming admin:
	now the command prompt is "Password: ";
	change BossTransition to 2.
	
Understand "Hallie" as getting permission. Getting permission is an action applying to nothing.
Check getting permission:
	if Boss Terminal 2 is not happening: 
		say "That's not a verb I recognise." instead.
Carry out getting permission:
	say "Administrator access granted.";
	now the command prompt is "admin: ~$";
	change BossTransition to 3.
	
Understand "kill [computer]" as terminating. Terminating is an action applying to one thing.
Check terminating:
	if Boss Terminal 1 is happening and Boss Terminal 3 is not happening:
		say "Access denied: administrator access required" instead;
Carry out terminating:
	if the noun is Sentient AI and Boss Terminal 3 is happening:
		say "Terminating the Sentient AI program... SUCCESSFUL";
		Now the Sentient AI is off;
		change BossTransition to 0;
	otherwise:
		say "You punch [the noun] as hard as you can. [if the noun is the Sentient AI]It feels good to let out some steam.[otherwise]That was dumb. It still seems to work though.".

Before going south in the Main Room:
	if Midpoint has ended:
		if the player is not holding the system log or the Sentient AI is on:
			say "Before you can push on the door, Nick yells at you. 'What do you think you're doing? [if the Sentient AI is on]The Last Running Computer locked all doors to the outside! [line break]Darn... if only it were that easy.[otherwise]We need evidence that proves the Last Running Computer guilty or the police officers outside will think one of us killed Foaad!'[line break]He's got a point. You shouldn't leave quite yet."; 
			stop the action.;
		otherwise:
			if the player is holding the system log and the Sentient AI is off:
				say "You walk out of the CSL proudly and give the system log to the police officers. They look at it skeptically. After a few minutes of reading and whispering to themselves, they let you go. You have never been so happy to leave the CSL.";
				end the story finally saying "You survived!".



