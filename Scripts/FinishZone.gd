extends Area3D

# ---------- VARIABLES ---------- #

@export var required_carrots := 15

# ---------- SIGNALS ---------- #

func _on_body_entered(body):
	if body.is_in_group("Player") and GameManager.score >= required_carrots:
		get_tree().get_first_node_in_group("CongratsPopup").show_popup()
