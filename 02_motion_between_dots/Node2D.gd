tool
extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export var path_along_trajectory = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _draw():
	var posA = $posA.position
	var posB = $posB.position
	if posA != null && posB != null:
		var a_to_b_trajectory = posB - posA
		draw_line(posA, posB, Color(0.683594, 0.683594, 0.683594) , true)
		draw_circle(posA, 10, Color(0.042969, 0.282227, 1))
		draw_circle(posB, 10, Color(0.996094, 0.513611, 0))
		var node_along_path = a_to_b_trajectory.normalized() * path_along_trajectory
		# Unnecessary but OCD requires this check, I guess -- IDK
		if node_along_path.length() <= a_to_b_trajectory.length() \
			and path_along_trajectory >= 0:

			draw_circle(node_along_path + posA,
				10, Color(0.960938, 0.22522, 0.483871))

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	update()
