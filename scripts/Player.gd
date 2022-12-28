extends KinematicBody2D


const UP = Vector2(0, -1)
const GRAVITY = 20
const MAXFALLSPEED = 500
const JUMP = 620


var motion = Vector2()
var score = 0


func _ready():
	pass


func _physics_process(delta):
	motion.y += GRAVITY
	if motion.y > MAXFALLSPEED:
		motion.y = MAXFALLSPEED
	if Input.is_action_just_pressed("JUMP") && $RayCast2D.is_colliding():
		JumpSFX.play()
		motion.y = -JUMP
		
	motion = move_and_slide(motion, UP)
	
	get_parent().get_node("score/scoreCounter").text = str(score)


func _on_Obstacle1_body_entered(body):
	if body.name == "Player":
		get_tree().change_scene("res://gameOver.tscn")


func _on_Obstacle2_body_entered(body):
	if body.name == "Player":
		get_tree().change_scene("res://gameOver.tscn")


func _on_Obstacle3_body_entered(body):
	if body.name == "Player":
		get_tree().change_scene("res://gameOver.tscn")


func _on_Obstacle4_body_entered(body):
	if body.name == "Player":
		get_tree().change_scene("res://gameOver.tscn")


func _on_Timer_timeout():
	score = score + 1
	$Timer.start()
