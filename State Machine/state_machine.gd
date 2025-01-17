extends Node

@export
var starting_state: State

var current_state: State
signal state_changed(current_state)

# Initialize the state machine by giving each child state a reference to the
# parent object it belongs to and enter the default starting_state.
func init(entity: CharacterBody2D, animations: EntityAnimationController, movement: EntityMovementController) -> void:
	# This hands references to the player, animation controller, and movement controller to all the states
	for child in get_children():
		print("Setting entity and animations for: ", child)
		child.entity = entity
		child.animations = animations
		child.movement = movement
	# Initialize to the default state
	change_state(starting_state)

# Change to the new state by first calling any exit logic on the current state.
func change_state(new_state: State) -> void:
	if current_state:
		current_state.exit()

	current_state = new_state
	state_changed.emit(current_state)
	current_state.enter()
	
# Pass through functions for the Player to call,
# handling state changes as needed.
func process_physics(delta: float) -> void:
	var new_state = current_state.process_physics(delta)
	if new_state:
		change_state(new_state)

func process_input(event: InputEvent) -> void:
	var new_state = current_state.process_input(event)
	if new_state:
		change_state(new_state)

func process_frame(delta: float) -> void:
	var new_state = current_state.process_frame(delta)
	if new_state:
		change_state(new_state)
		
