extends Node3D

# Called when the node enters the scene tree for the first time.
func _ready():
	loadmodel()

func loadmodel():
	var modelresource = ModelLoader.loadmdl("Duck.glb").instantiate()
	add_child(modelresource)
	
