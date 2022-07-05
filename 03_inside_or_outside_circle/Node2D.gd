tool
extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _process(delta):
	$TestPoint.is_inside = ($Circle.position - $TestPoint.position).length() < $Circle.radius

