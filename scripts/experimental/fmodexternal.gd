extends MeshInstance3D

var bank: Bank
var editmodeassetpath : String = "C:\\Users\\fox\\Documents\\CausalityDemoSources\\"
var assetroot : String = "";

func _ready():
		if OS.has_feature("editor"):
			assetroot = editmodeassetpath;
		else:
			assetroot = OS.get_executable_path().get_base_dir() + "/"
		bank = FMODStudioModule.get_studio_system().load_bank_file(assetroot + "Audio/Master.bank", FMODStudioModule.FMOD_STUDIO_LOAD_BANK_NORMAL, false)
		bank = FMODStudioModule.get_studio_system().load_bank_file(assetroot + "Audio/Master.strings.bank", FMODStudioModule.FMOD_STUDIO_LOAD_BANK_NORMAL, false)
	
		AudioRuntimeManager.play_one_shot_path("event:/MindGames", self)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
