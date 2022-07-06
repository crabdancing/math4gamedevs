tool
extends Position2D

onready var is_inside = false
onready var old_is_inside = false
onready var color = Color(0, 0, 0)
onready var is_being_dragged = false
export var radius = 10
var old_radius = null
var radius_sq = radius*radius
var old_position = position
func _draw():
	if is_inside == true:
		color = Color(0, 255, 0)
	elif is_inside == false:
		color = Color(255, 0, 0)
	else:
		color = Color(0, 0, 0)
	draw_circle(position - transform.get_origin(), radius, color)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if old_radius != radius:
		radius_sq = radius * radius
		old_radius = radius
	if is_inside != old_is_inside:
		update()
		old_is_inside = is_inside
	#update()
#	pass

func is_within(v: Vector2) -> bool:
	return position.distance_squared_to(v) <= radius_sq
