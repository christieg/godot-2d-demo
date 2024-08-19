extends State

@export var move_state: State
@export var talking_state: State

func enter() -> void:
	super()
	# do the idle animation
	animations.player_idle_animation()


func process_input(event: InputEvent) -> State:
	# on ui_accept, need to see if player raycast is colliding with something
	var player_raycast = entity.get_node("Raycast2D")
	if event.is_action_pressed("ui_accept"):
		if player_raycast.is_colliding():
			var collider = player_raycast.get_collider()
			if collider is NPC:
				print("I collided with an NPC!")
	#check if player is moving
	if movement.get_input_direction():
		return move_state
	return null


func process_physics(_delta: float) -> State:
	return null
