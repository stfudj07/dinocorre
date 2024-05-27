extends CharacterBody2D

const SPEED = 500
const JUMP_VELOCITY = -1000
const gravity = 2600
var speed_scale = 1

func _physics_process(delta):
	if GHUD.is_playing == true:
		if is_on_floor():
			if Input.is_action_pressed("ui_down"):	
				$CollisionShape2D.disabled = true
				$AnimatableBody2D.play("crouch")
			else:
				$CollisionShape2D.disabled = false
				$AnimatableBody2D.play("run")
		else:
			$AnimatableBody2D.play("jump")
		if Input.is_action_just_pressed("ui_accept") and is_on_floor():
			$AudioJump.play()
			velocity.y = JUMP_VELOCITY
		velocity.x = SPEED +  GHUD.score 
		# Velocidad de la animacion
		if GHUD.score > 150:
			speed_scale = GHUD.score/150
		velocity.y += gravity * delta
		$CrouchCollisionShape2D2.disabled = !$CollisionShape2D.disabled 
		move_and_slide()
