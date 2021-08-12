extends KinematicBody
class_name Player

onready var camera = $Pivot/Camera
var gravity = -5
var max_speed = 1
var mouse_sensitivity = 0.004
var jump_speed = 2

var jump = false
var velocity = Vector3()

func _ready():
	GLOBAL.currentCamera = camera
	GLOBAL.player = self
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)

func _unhandled_input(event):
	if event is InputEventMouseMotion and Input.get_mouse_mode() == Input.MOUSE_MODE_CAPTURED:
		rotate_y(-event.relative.x * mouse_sensitivity)
		$Pivot.rotate_x(-event.relative.y * mouse_sensitivity)
		$Pivot.rotation.x = clamp($Pivot.rotation.x, -1.2, 1.2)
	
func get_input():
	jump = false
	if Input.is_action_just_pressed("move_jump"):
		jump = true
	
	var input_dir = Vector3()
	if Input.is_action_pressed("move_forwards"):
		input_dir += -global_transform.basis.z
	if Input.is_action_pressed("move_backwards"):
		input_dir += global_transform.basis.z
	if Input.is_action_pressed("move_left"):
		input_dir += -global_transform.basis.x
	if Input.is_action_pressed("move_right"):
		input_dir += global_transform.basis.x
	input_dir = input_dir.normalized()
	return input_dir

func _physics_process(delta):
	velocity.y += gravity * delta
	var desired_velocity = get_input() * max_speed
	
	velocity.x = desired_velocity.x
	velocity.z = desired_velocity.z
	velocity = move_and_slide(velocity, Vector3.UP, true, 4, PI/4, false)
	
	for i in get_slide_count():
		var collision: KinematicCollision = get_slide_collision(i)
		if collision.collider is RigidBody:
			collision.collider.apply_central_impulse(-collision.normal)
	
	if jump and is_on_floor():
		velocity.y = jump_speed
