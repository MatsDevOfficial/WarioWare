extends Node2D
@onready var garlic_container: HBoxContainer = $garliccontainer
@onready var garlic: TextureRect = $garliccontainer/garlic1
@onready var garlic_2: TextureRect = $garliccontainer/garlic2
@onready var garlic_3: TextureRect = $garliccontainer/garlic3
@onready var garlic_4: TextureRect = $garliccontainer/garlic4
@onready var garlic_5: TextureRect = $garliccontainer/garlic5
@onready var level_label: RichTextLabel = $level
@onready var timer_node: Node2D = $Timer
@onready var timer_text: RichTextLabel = $Timer/timer

func _ready() -> void:
	level_label.text = "Level " + str(Global.minigames_done + 1)
	await timer_node.Timer(5.0)
	
	if Global.minigames_done < 2:
		Global.minigames_done += 1
		get_tree().change_scene_to_file("res://minigame_" + str(Global.minigames_done) + ".tscn")
	else:
		get_tree().change_scene_to_file("res://winscreen.tscn")

func _process(_delta: float) -> void:
	match Global.lives:
		4:
			garlic.hide()
		3:
			garlic.hide()
			garlic_2.hide()
		2:
			garlic.hide()
			garlic_2.hide()
			garlic_3.hide()
		1:
			garlic.hide()
			garlic_2.hide()
			garlic_3.hide()
			garlic_4.hide()
		0:
			garlic_container.hide()
	
	level_label.text = "Level " + str(Global.minigames_done + 1)
  
