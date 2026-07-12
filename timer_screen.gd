extends Node2D
@onready var timer_node: Node2D = $Timer
@onready var level_label: RichTextLabel = $LevelLabel

var next_scene = "res://intermission.tscn"

func _ready() -> void:
	level_label.text = "Level " + str(Global.minigames_done)
	await timer_node.Timer(3.0)
	get_tree().change_scene_to_file(next_scene)
