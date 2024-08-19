class_name EntityAnimationController
extends AnimatedSprite2D

var movement_controller : EntityMovementController
var facingDir = Vector2(0,0)
var dir_vector = Vector2(0,0)

func init(movement: EntityMovementController):
	self.movement_controller = movement

# plays the animation based on the players movement direction
func play_idle_animations():
	match movement_controller.get_facing_dir():
		Vector2.RIGHT:
			play_animation("IdleRight")
		Vector2.LEFT:
			play_animation("IdleLeft")
		Vector2.UP:
			play_animation("IdleUp")
		Vector2.DOWN:
			play_animation("IdleDown")

func play_move_animations():
	match movement_controller.get_input_direction():
		Vector2.RIGHT:
			play_animation("MoveRight")
		Vector2.LEFT:
			play_animation("MoveLeft")
		Vector2.UP:
			play_animation("MoveUp")
		Vector2.DOWN:
			play_animation("MoveDown")

func play_animation(anim_name):
	# dont stop playing an animation if it's what we want to see
	# will cause animation not to stutter
	if animation != anim_name:
		play(anim_name)
