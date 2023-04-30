extends Node


# Called when the node enters the scene tree for the first time.
func _ready():
	var scene = load("res://scenes/runtime/menu.tscn")
	var instance = scene.instantiate()
	add_child(instance)
	print("Completed initializing game systems")
	RuntimeInfo.CompletedInit()
