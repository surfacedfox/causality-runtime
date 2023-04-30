extends Node3D

@export var rotationPerFrame : float = 0.01
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	rotate_y(rotationPerFrame)
	pass
