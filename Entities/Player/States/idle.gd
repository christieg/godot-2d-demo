extends State

@export var move_state: State
@export var talking_state: State

var player_raycast : RayCast2D

func enter() -> void:
	super()
	# do the idle animation
	animations.play_idle_animations()


func process_input(event: InputEvent) -> State:
	if movement.get_input_direction():
		return move_state
	if event.is_action_pressed("ui_accept"):
		player_raycast = entity.get_node("Raycast")
		if player_raycast.is_colliding():
			var collider = player_raycast.get_collider()
			print(collider)
			print("raycast is colliding with something.")
			if player_raycast.get_collider() is NPC:
				print("PLAYER COLLIDED WITH NPC!")
	return null


func process_physics(_delta: float) -> State:
	return null
