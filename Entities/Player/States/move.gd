extends State

@export
var talking_state: State
@export
var idle_state: State

func process_input(_event: InputEvent) -> State:
	# if there is no input, then switch to idle state
	
	return null

func process_physics(_delta: float) -> State:
	# Get the input direction and handle the movement/deceleration.
	# TODO: As good practice, you should replace UI actions with custom gameplay actions.
	
	movement.move()
	animations.play_move_animations()
	if movement.get_input_direction().is_zero_approx():
		return idle_state
	return null
