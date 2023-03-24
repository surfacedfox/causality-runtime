extends SpringArm3D

var sensitivity : float = 0.05
var _mouse_position = Vector2(0.0, 0.0)

# Called when the node enters the scene tree for the first time.
func _ready():
	set_as_top_level(true)
	
func _input(event):
	# Receives mouse motion
	if event is InputEventMouseMotion && Input.mouse_mode == Input.MOUSE_MODE_CAPTURED:
		rotation_degrees.x -= event.relative.y * sensitivity		
		rotation_degrees.y -= event.relative.x * sensitivity
	
	# Receives mouse button input
	if event is InputEventMouseButton:
		match event.button_index:
			MOUSE_BUTTON_RIGHT: # Only allows rotation if right click down
				Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED if event.pressed else Input.MOUSE_MODE_VISIBLE)
			MOUSE_BUTTON_WHEEL_UP: # zoom in
				spring_length -= sensitivity
			MOUSE_BUTTON_WHEEL_DOWN: # zoom out
				spring_length += sensitivity
		spring_length = clampf(spring_length, 0, 3)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
