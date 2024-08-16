class_name SceneTrigger extends Area2D
@export var connected_scene: String
@export var new_position: Vector2
var scene_root = "res://"

func _on_body_entered(body):
	print("something is on the trigger!! " + body.name)
	if body.name == "player":
		# load the next scene
		pass
