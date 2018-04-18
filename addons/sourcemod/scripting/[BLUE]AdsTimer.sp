#include <sourcemod>

#define PLUGIN_AUTHOR "Blue Malgeran"
#define PLUGIN_VERSION "1.0"

#define PREFIX " \x05[BLUE]\x01"

#pragma semicolon 1 

public Plugin myinfo = 
{
	name = "[BLUE]AdsTimer",
	author = PLUGIN_AUTHOR,
	description = "Ads after every time (default: 180 seconds)",
	version = PLUGIN_VERSION,
	url = "http://BlueMalgeran.com"
};

public void OnPluginStart()
{
	CreateTimer(180.0, Timer_Ads, _, TIMER_REPEAT);
}

public Action Timer_Ads(Handle timer)
{
	PrintToChatAll("%s Forum: <website>", PREFIX);
	PrintToChatAll("%s TeamSpeak: <teamspeak>", PREFIX);
	
	return Plugin_Continue;
}