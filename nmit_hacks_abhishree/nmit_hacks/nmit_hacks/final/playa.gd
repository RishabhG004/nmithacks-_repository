extends CharacterBody2D

@export var speed: float = 200
@export var input_prefix: String = "p1"

func _physics_process(delta):
	var direction = Vector2.ZERO

	if Input.is_action_pressed("move_left_" + input_prefix):
		direction.x -= 1
	if Input.is_action_pressed("move_right_" + input_prefix):
		direction.x += 1
	if Input.is_action_pressed("move_up_" + input_prefix):
		direction.y -= 1
	if Input.is_action_pressed("move_down_" + input_prefix):
		direction.y += 1

	direction = direction.normalized()

	velocity = direction * speed

	move_and_slide()
