extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

onready var button_pressed = false
onready var old_button_pressed = false

func _input(ev):
	if ev is InputEventMouseButton:
		button_pressed = ev.pressed
	elif ev is InputEventMouseMotion:
		if $TestPoint.is_being_dragged:
			$TestPoint.translate(ev.relative)
		if button_pressed:
			if !old_button_pressed:
				var pos = ev.get_position() - get_canvas_transform().get_origin()
				if $TestPoint.is_within(pos):
					$TestPoint.is_being_dragged = true
		else:
			$TestPoint.is_being_dragged = false
			
		old_button_pressed = button_pressed
	# You could calculate with `distance` vs `radius`, but cutting off part of the pythagorean theorem
	# saves processing power by only making the op necessary if the circle radius changes,
	# and replacing sqrt with mult op.
	$TestPoint.is_inside = $TestPoint.position.distance_squared_to($Circle.position) < $Circle.radius_squared

