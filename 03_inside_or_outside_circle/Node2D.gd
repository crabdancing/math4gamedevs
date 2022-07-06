tool
extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _process(delta):
	# You could calculate with `distance` vs `radius`, but cutting off part of the pythagorean theorem
	# saves processing power by only making the op necessary if the circle radius changes,
	# and replacing sqrt with mult op.
	$TestPoint.is_inside = $TestPoint.position.distance_squared_to($Circle.position) < $Circle.radius_squared

