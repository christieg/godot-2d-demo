class_name SceneTrigger extends Area2D
@export var connected_scene: String
@export var new_position: Vector2

func _on_ready():
	print(connected_scene)

func _on_body_entered(body):
	print("something is on the trigger!! " + body.name)
	if body.name == "player":
		SceneLoader.call_deferred("load_scene", connected_scene)
