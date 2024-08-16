class_name SceneTrigger extends Area2D
@export var connected_scene: String
@export var new_position: Vector2
var scene_root = "res://"

#signal house_interior_entered()

func _on_body_entered(body):
	print("something is on the trigger!! " + body.name)
	#if body.name == "player":
		#var full_path = scene_root + connected_scene + ".tscn"
		#SceneLoader.load_scene(full_path)
