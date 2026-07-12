extends Node2D
@onready var animation_player: AnimationPlayer = $AnimationPlayer

func _ready() -> void:
	animation_player.play("win")
	await get_tree().create_timer(5.0).timeout
	get_tree().change_scene_to_file("res://title.tscn")
