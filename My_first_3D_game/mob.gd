extends CharacterBody3D

@export_category("movement")
@export var min_speed = 10
@export var max_speed = 18

signal squashed

func _ready():
	if min_speed > max_speed:
		push_error("Mob min speed (%d) is greater than max speed (%d)" % [min_speed, max_speed])

func initialize(start_position, player_position):
	look_at_from_position(start_position, player_position, Vector3.UP)
	rotate_y(randf_range(-PI / 4, PI / 4))
	
	var speed = randi_range(min_speed, max_speed)
	velocity = Vector3.FORWARD * speed
	velocity = velocity.rotated(Vector3.UP, rotation.y)
	$AnimationPlayer.speed_scale = speed / min_speed

func squash():
	squashed.emit()
	queue_free()

func _physics_process(_delta):
	move_and_slide()


func _on_visible_notifer_screen_exited():
	queue_free()
