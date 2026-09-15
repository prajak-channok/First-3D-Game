# ----------------------------------------------------------------------------------- #
# -------------- FEEL FREE TO USE IN ANY PROJECT, COMMERCIAL OR NON-COMMERCIAL ------ #
# ---------------------- 3D PLATFORMER CONTROLLER BY SD STUDIOS --------------------- #
# ---------------------------- ATTRIBUTION NOT REQUIRED ----------------------------- #
# ----------------------------------------------------------------------------------- #

extends Node3D

# ---------- VARIABLES ---------- #

# Control Mouse Sensitivity through inspector or from here
@export var mouse_sensitivity := 0.2

# Assign Camera Node here it might be named different in your Project
@onready var camera = $Camera3D

# ---------- FUNCTIONS ---------- #

func _ready():
	top_level = true

# Handling Camera Movement
func _unhandled_input(event):
	if event is InputEventMouseMotion:
		rotation_degrees.x -= event.relative.y * mouse_sensitivity
		rotation_degrees.x = clamp(rotation_degrees.x, -60, -0)
		
		rotation_degrees.y -= event.relative.x * mouse_sensitivity
		rotation_degrees.y = wrapf(rotation_degrees.y, 0, 360)
