extends Node

var loaded_model : PackedScene
var resourcePath : String
signal modelstreamed
var thread

# Called every frame. 'delta' is the elapsed time since the previous frame.
func LoadModel(path : String):
	resourcePath = path
	thread = Thread.new()
	thread.start(StreamModelAsync)
	
	
func StreamModelAsync():
	print("Loading 3d content " + resourcePath + " from " + RuntimeInfo.GetGameDirectory() + "Models/")
	var state : = GLTFState.new()
	var gltf : GLTFDocument = GLTFDocument.new()
	gltf.append_from_file(RuntimeInfo.GetGameDirectory() + "Models/" + resourcePath, state, 0)
	var node = gltf.generate_scene(state)
	var packed_scene = PackedScene.new()
	packed_scene.pack(node)
	loaded_model = packed_scene
	print("Loaded " + resourcePath + " successfully.")
	modelstreamed.emit()
	
func _exit_tree():
	thread.wait_to_finish()	
