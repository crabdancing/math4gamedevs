tool
extends Position2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export var radius = 200

onready var radius_squared = radius * radius

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
		
func draw_unfilled_circle(position, radius, color):
	draw_arc(position, radius, 0, TAU, 512, color, 1)
func _draw():
	draw_unfilled_circle(position - transform.get_origin(), radius, Color(255, 255, 255))

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	radius_squared = radius * radius
	#update()
#	pass
