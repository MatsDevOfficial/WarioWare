extends Node2D
@onready var themed_timer: Node2D = $Timer 
# ^^^ You dragged this in the scene by the way 



var garlic_collected = 0 # just keeping track of garlic collected
var timer_end = false # boolean (true or false) stating whether the timer ended

func _ready() -> void:
	await themed_timer.Timer(5.0) #accessing a function from this node
	#after this is compeleted...
	timer_end = true # now we're saying "oh ye you ran out of time"

func _process(_delta: float) -> void: # running every frame brochacho
	if garlic_collected == 3: # the double equals is just an argument asking if it's the same, with "=" it'll give an error
		if Global.minigames_done > 3: # we access a global script and see how many minigames have been compeleted
			get_tree().change_scene_to_file("res://winscreen.tscn") # change current play scene into another
		else:
			get_tree().change_scene_to_file("res://intermission.tscn") # go back to the intermission scene
	
	if timer_end: # if the timer does end...
		Global.minigames_done -=1 #go back a minigame
		Global.lives -= 1 # lose ur lives
		get_tree().change_scene_to_file("res://intermission.tscn") # back to intermission
	


func _on_garlic_1_garlic_collected() -> void:
	garlic_collected = garlic_collected +1
	return


func _on_garlic_2_garlic_collected() -> void:
	garlic_collected = garlic_collected +1
	return
	
func _on_garlic_3_garlic_collected() -> void:
	garlic_collected = garlic_collected +1
	return
