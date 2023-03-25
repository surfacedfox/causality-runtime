extends Node

# Called every frame. 'delta' is the elapsed time since the previous frame.
func loadmdl(resourcePath : String):
	print("Loading 3d content " + resourcePath + " from " + RuntimeInfo.GetGameDirectory() + "Models/")
	var state : = GLTFState.new()
	var gltf : GLTFDocument = GLTFDocument.new()
	gltf.append_from_file(RuntimeInfo.GetGameDirectory() + "Models/" + resourcePath, state, 0)
	var node = gltf.generate_scene(state)
	var packed_scene = PackedScene.new()
	packed_scene.pack(node)
	return packed_scene
	
