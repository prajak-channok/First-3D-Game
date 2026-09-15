extends Node3D

# ---------- VARIABLES ---------- #

var score = 0

# ---------- FUNCTIONS ---------- #

func _process(_delta):
	show_mouse_cursor()
	capture_mouse_cursor()

# Making Cursor visible using "mouse_visible" key which is assigned in Project Settings > Input Map
func show_mouse_cursor():
	if Input.is_action_just_pressed("mouse_visible"):
		Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)

# Hiding and locking the cursor using "mouse_capture" key (Enter). Requires a real
# user gesture before browsers (HTML5 export) will allow the Pointer Lock API to engage.
func capture_mouse_cursor():
	if Input.is_action_just_pressed("mouse_capture"):
		Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)

func add_score():
	score += 1
