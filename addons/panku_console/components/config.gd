const FILE_NAME = "config/devconsole.cfg"

static func set_config(config:Dictionary):
	var file = FileAccess.open(RuntimeInfo.GetGameDirectory() + FILE_NAME, FileAccess.WRITE)
	var content = var_to_str(config)
	file.store_string(content)

static func get_config() -> Dictionary:
	if FileAccess.file_exists(RuntimeInfo.GetGameDirectory() + FILE_NAME):
		var file = FileAccess.open(RuntimeInfo.GetGameDirectory() + FILE_NAME, FileAccess.READ)
		var content = file.get_as_text()
		var config:Dictionary = str_to_var(content)
		if config: return config
	return {}
