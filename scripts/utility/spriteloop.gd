extends TextureRect

@export var imglist = []
var framecounter : int = 0

func _process(delta):
	if(framecounter >= 7):
		framecounter = 0	
	texture = imglist[framecounter]
	framecounter += 1
