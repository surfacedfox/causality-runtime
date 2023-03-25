extends Node

var devversion : String = "0.0.1"
var gameversion : String = "0.0.1"
var gamedirectory : String = "C:\\Users\\fox\\Documents\\CausalityDemoSources\\GameData\\" #replace with location of game files.

func _ready():
	if OS.has_feature("editor") == false:
		gamedirectory = OS.get_executable_path().get_base_dir() + "/GameData/"

func  GetDevVer():
	return devversion
	
func GetGameVer():
	return gameversion

func GetGameDirectory():
	print("The game directory is " + gamedirectory)
	return gamedirectory
		
