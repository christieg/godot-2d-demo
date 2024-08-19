extends State

@export
var move_state: State
@export
var idle_state: State

func enter() -> void:
	super()
	animations.play_idle_animations()
	
func process_input(_event: InputEvent) -> State:
	# if there is no input, then switch to idle state
	return null

func process_physics(_delta: float) -> State:
	return null
