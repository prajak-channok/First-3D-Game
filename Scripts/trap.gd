extends Area3D

@onready var player = get_tree().get_first_node_in_group("Player")
@onready var spawn_position = get_tree().get_first_node_in_group("SpawnPosition")

func _on_body_entered(body):
	if body.is_in_group("Player"):
		$spike/AnimationPlayer.play("SpikeTrap_Activate")
		player.global_position = spawn_position.global_position
