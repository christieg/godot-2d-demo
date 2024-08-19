class_name EntityMovementController extends Node

var facing_dir: Vector2
@export var SPEED = 300

func move():
	return null

func get_facing_dir():
	return facing_dir
	
# helper functions to see if the player tried to move
func get_input_direction():
	return Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
