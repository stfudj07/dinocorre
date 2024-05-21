extends Node2D

var screen_size : Vector2i

var PlayerIntialPosition
func _ready():
	screen_size = get_window().size 
	PlayerIntialPosition = $Player.position 
	print(PlayerIntialPosition)


func _process(delta):
	if ($Player.position.x - $Floor.position.x) > screen_size.x:
		$Floor .position.x += screen_size.x 
