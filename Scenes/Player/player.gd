extends CharacterBody2D
@export var speed : int = 400 # speed in pixels/sec
@export var rotation_speed : float = 3.0  # turning speed in radians/sec

func _physics_process(delta):
	var move_input = Input.get_axis("Move_Down", "Move_Up")
	var rotation_direction = Input.get_axis("Move_Left", "Move_Right")
	velocity = transform.x * move_input * speed
	rotation += rotation_direction * rotation_speed * delta

	move_and_slide()
