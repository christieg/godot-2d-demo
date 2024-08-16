extends State

@export var move_state: State
@export var idle_state: State

func enter() -> void:
	super()


func process_input(_event: InputEvent) -> State:
	return null


func process_physics(_delta: float) -> State:
	return null
