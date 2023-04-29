extends Node


# Called when the node enters the scene tree for the first time.
func LoadTex(resourcePath : String):
	var tex_file = FileAccess.open(resourcePath, FileAccess.READ)
	var buffer = tex_file.get_buffer(tex_file.get_length())
	var img = Image.new()
	var extension = resourcePath.get_extension().to_lower()
	if extension == "jpeg" || extension == "jpg":
		img.load_jpg_from_buffer(buffer)
	elif extension == "tga":
		img.load_tga_from_buffer(buffer)
	elif extension == "webp":
		img.load_webp_from_buffer(buffer)
	elif extension == "bmp":
		img.load_bmp_from_buffer(buffer)
	elif extension == "png":
		img.load_png_from_buffer(buffer)
	else:
		print("Unable to load file: " + resourcePath + ", unsupported file extension.")
		return;
	var imgtex = ImageTexture.create_from_image(img)
	tex_file.close()
	print("Loading " + resourcePath + " successful.")
	return imgtex
