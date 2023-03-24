extends Node


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func loadmdl(resourcePath : String):
	var state : = GLTFState.new()
	var gltf : GLTFDocument = GLTFDocument.new()
	gltf.append_from_file("user://" + resourcePath, state, 0)
	var node = gltf.generate_scene(state)
	var packed_scene = PackedScene.new()
	packed_scene.pack(node)
	return packed_scene
	
