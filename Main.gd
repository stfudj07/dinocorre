extends Node2D

var screen_size : Vector2i

var PlayerIntialPosition

func _ready():
	screen_size = get_window().size 
	PlayerIntialPosition = $Player.position 
	
func new_game():
	$Floor.position.x = 0
	$Player.position = PlayerIntialPosition

func _process (delta):
	$Floor. position.x  = $Player.position.x - 100
