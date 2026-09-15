extends Control

# ---------- VARIABLES ---------- #

@onready var subtitle_label = $Panel/VBoxContainer/SubtitleLabel

# ---------- FUNCTIONS ---------- #

func show_popup():
	subtitle_label.text = "You collected %d/16 carrots and finished the adventure!" % GameManager.score
	visible = true
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
	get_tree().paused = true
