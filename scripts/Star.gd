extends Area2D


func _ready():
	pass


func _physics_process(delta):
	position += Vector2(-0.5, 0)
	if position.x <= -30:
		position.x = 1304
		
		position.y = rand_range(360, 32)
