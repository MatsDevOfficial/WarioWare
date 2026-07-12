extends Node2D
@onready var themed_timer: Node2D = $Timer

var buttons_pressed := 0
var timer_end = false

func _ready() -> void:
	await themed_timer.Timer(5.5)
	timer_end = true 

func _process(_delta: float) -> void:
	if buttons_pressed == 4:
		get_tree().change_scene_to_file("res://winscreen.tscn")

	if timer_end:
		Global.lives -= 1
		Global.minigames_done -= 1
		get_tree().change_scene_to_file("res://timer_screen.tscn")
