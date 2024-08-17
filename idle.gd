extends State

@export var move_state: State
@export var talking_state: State

func enter() -> void:
	super()
	# do the idle animation
	animations.player_idle_animation()


func process_input(_event: InputEvent) -> State:
	# transition to talking state if player is talking
	#
	
	
	return null

# I dont think I need to process physics just yet....
func process_physics(_delta: float) -> State:
	return null
