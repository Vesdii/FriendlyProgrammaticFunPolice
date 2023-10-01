# Friendly Programmatic Fun Police
A program intended to provide light assistance to moderate **video game addicts** like myself, by preventing specified programs from being run, according to a very simple and restrictive schedule.


## The what and why
2FP is **not** a parental control program, but a *personal productivity helper*. There is no security from others, only yourself (that's a double entendre). I cannot speak for anyone else, but I find that in moments when I am suddenly **seized** by the *irresistable force* to go *waste* my free time in a game, it does not actually take all that much of an obstacle to cause me to abandon the act. When a *minor* blocker is put in place to give me a little reminder of my expectations of my own behavior, it is enough of an [inhibitor](https://rogerabrantes.wordpress.com/2011/09/21/unveiling-the-myth-of-reinforcers-and-punishers/ "This guy is the founder of the online animal training school I go to.") to snap me out of it. 2FP serves that purpose in a reliably systematic way.


## How do I use it?
	1. Download the latest release, and extract its contained folder to a desired installation destination, perhaps `%LocalAppData%`.
	1. Open `2FP.config` in a text editor. On each line after `Blacklist:` is a **process name** you want to block your access to, **every day** *except* the specified `Game Day`. Anything on a blacklist line after a space or tab is a comment.
	1. Create a shortcut to `2FP.exe`.
	1. Open Run with *Win + R* and enter *shell:startup*.
	1. Move the new shortcut into this folder, and now the program will run whenever you (and only you) login.

See the prepackaged example config for a syntax guide.

Saving changes to the config will immediately reload it; no need to restart 2FP.

2FP runs in the background and does not have an icon in the system tray.

Be careful playing near midnight on Game Day, as a blacklisted process will close at the turn of the day without warning.

I've never seen a game with binary name with a space in it, so if you got one, you're screwed, I'm not gonna bother making the config parse quotes and shit.

If this tool does not help you, please visit https://gamequitters.com/.