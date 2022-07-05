tool
extends Position2D

onready var is_inside = false
onready var color = Color(0, 0, 0)

func _draw():
	if is_inside == true:
		color = Color(0, 255, 0)
	elif is_inside == false:
		color = Color(255, 0, 0)
	draw_circle(position - transform.get_origin(), 10, color)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	update()
#	pass
