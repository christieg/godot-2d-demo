extends State

@export var move_state: State
@export var talking_state: State

func enter() -> void:
	super()
	# do the idle animation
	animations.play_idle_animations()


func process_input(event: InputEvent) -> State:
	if movement.get_input_direction():
		return move_state
	return null


func process_physics(_delta: float) -> State:
	return null
