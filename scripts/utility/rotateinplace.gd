extends Node3D

@export var rotationPerFrame : float = 0.01
var thread
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _ready():
	ModelLoader.modelstreamed.connect(displaymodel)
	ModelLoader.LoadModel("LoadingScreens/eye.glb")
	
func displaymodel():
	var modelpackedscene = ModelLoader.loaded_model
	var node = modelpackedscene.instantiate()
	add_child(node)

func _process(_delta):
	rotate_y(rotationPerFrame)
	pass
