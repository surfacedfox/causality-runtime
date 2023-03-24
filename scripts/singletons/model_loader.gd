extends Node

var editmodeassetpath : String = "C:\\Users\\fox\\Documents\\CausalityDemoSources\\"
var assetroot : String = "";

# Called when the node enters the scene tree for the first time.
func _ready():
	if OS.has_feature("editor"):
		assetroot = editmodeassetpath;
	else:
		assetroot = OS.get_executable_path().get_base_dir() + "/"


# Called every frame. 'delta' is the elapsed time since the previous frame.
func loadmdl(resourcePath : String):
	print("Loading 3d content " + resourcePath + " from " + assetroot)
	var state : = GLTFState.new()
	var gltf : GLTFDocument = GLTFDocument.new()
	gltf.append_from_file(assetroot + resourcePath, state, 0)
	var node = gltf.generate_scene(state)
	var packed_scene = PackedScene.new()
	packed_scene.pack(node)
	return packed_scene
	
