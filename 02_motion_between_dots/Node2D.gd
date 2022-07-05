tool
extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export var pos = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _draw():
	var posA = $posA.position
	var posB = $posB.position
	var aToBDir = (posB - posA).normalized()
	if posA != null && posB != null:
		draw_line(posA, posB, Color(0.683594, 0.683594, 0.683594) , true)
		draw_circle(posA, 10, Color(0.042969, 0.282227, 1))
		draw_circle(posB, 10, Color(0.996094, 0.513611, 0))
		
		draw_circle(aToBDir * pos + posA, 10, Color(0.960938, 0.22522, 0.483871))
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	update()
