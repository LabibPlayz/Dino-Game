extends Area2D


func _ready():
	pass


func _physics_process(delta):
	position += Vector2(-6, 0)
	if position.x <= -30:
		position.x = rand_range(1304, 1500)
		
		position.y = rand_range(456, 136)
