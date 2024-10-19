extends Node2D

var speed = 200

func _physics_process(delta):
	position.x -= speed * delta

func _on_body_entered(body):
	if body.name == 'Player':
		get_tree().reload_current_scene()
