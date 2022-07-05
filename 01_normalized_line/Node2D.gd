extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


var window_middle = Vector2(OS.window_size.x/2, OS.window_size.y/2)

# Called when the node enters the scene tree for the first time.
func _ready():
	print('UwU')
	$Camera2D.set_zoom(Vector2(0.1, 0.1))
	$Camera2D.position = window_middle;
	$Line2D.set_point_position(0, window_middle)
	set_process_input(true)

func _input(ev):
	if ev is InputEventMouseMotion:
		var game_pos = get_local_mouse_position()
		var a_to_b = game_pos - window_middle
		$Line2D.set_point_position(1, window_middle + (a_to_b.normalized()*20))

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
#	var pos = get_global_mouse_position()
#	$Line2D.set_point_position(1, pos)
	# update()
