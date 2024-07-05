extends Node3D

@export var player = 1

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_area_3d_body_entered(body):
	print("Collided")
	if body.is_in_group("Ball"):
		print("Goal")
		if player == 1:
			GameManager.score_p1 += 1
		if player == 2:
			GameManager.score_p2 += 1
			
		print("Score P1: " + str(GameManager.score_p1))
		print("Score P2: " + str(GameManager.score_p2))
	pass # Replace with function body.
