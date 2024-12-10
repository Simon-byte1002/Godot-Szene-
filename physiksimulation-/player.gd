extends RigidBody3D

@export var speed = 5
@export var rot_speed = 5

# Called when the node enters the scene tree for the first time.
func _ready():
	print("Hello Godot")

# Called every frame. "delta" is the elasped time since the previous frame.
func _process(delta):
	var target_velocity = Vector3.ZERO
	var direction = Vector3.ZERO

	if Input.is_key_pressed(KEY_UP):
		direction.x += 1
	if Input.is_key_pressed(KEY_LEFT):
		direction.x -= 1
	if Input.is_key_pressed(KEY_DOWN):
		direction.z += 1
	if Input.is_key_pressed(KEY_UP):
		direction.z -= 1

	if direction != Vector3.ZERO:
		direction = direction.normalized()

	# Ground Velocity
	target_velocity.x = direction.x * speed
	target_velocity.z = direction.z * speed
