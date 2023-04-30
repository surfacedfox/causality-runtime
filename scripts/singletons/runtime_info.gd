extends Node

var devversion : String = "0.0.1"
var gameversion : String = "0.0.1"
var gamedirectory : String = "D:/Causality-Dev/GameData/" #replace with location of game files.
var scene : PackedScene
var instance : Node

func _ready():
	if OS.has_feature("editor") == false:
		gamedirectory = OS.get_executable_path().get_base_dir() + "/GameData/"
		print("Initializing game systems...")
		scene = load("res://scenes/runtime/initloading.tscn")
		instance = scene.instantiate()
		add_child(instance)

func CompletedInit():
	print("Deleting initialization loading screen...")
	remove_child(instance)
	instance.free()

func  GetDevVer():
	return devversion
	
func GetGameVer():
	return gameversion

func GetGameDirectory():
	print("The game directory is " + gamedirectory)
	return gamedirectory
