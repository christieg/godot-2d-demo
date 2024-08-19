extends State

@export var move_state: State
@export var talking_state: State

func enter() -> void:
	super()
	# do the idle animation
	animations.play_idle_animations()


func process_input(_event: InputEvent) -> State:
	return null


func process_physics(_delta: float) -> State:
	return null
