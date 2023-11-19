extends Node2D

@export_category("Balls")
@export var Ball_1 : PackedScene
@export var Ball_2 : PackedScene
@export var Ball_3 : PackedScene
@export var Ball_4 : PackedScene
@export var Ball_5 : PackedScene
@export var Ball_6 : PackedScene
@export var Ball_7 : PackedScene
@export var Ball_8 : PackedScene
@export var Ball_9 : PackedScene
@export var Ball_10 : PackedScene
@export var Ball_11 : PackedScene
@export var Ball_12 : PackedScene

var playing = false
var score = 0
signal score_change

var nb_balls = 9
var speed = 200
var can_drop = true


var balls = []
var hand_ball = null
var fuse_queue = []

func _ready():
	balls = [Ball_1, Ball_2, Ball_3, Ball_4, Ball_5, Ball_6, Ball_7, Ball_8, Ball_9, Ball_10, Ball_11, Ball_12]
	start_game()

func start_game():
	hand_ball = create_ball(randi() % 4, $Spawner.position)
	hand_ball.remove_collision()
	score = 0
	playing = true	
	

func create_ball(id, pos):
	var ball = balls[id].instantiate()
	ball.position = pos
	ball.connect("fused", _on_ball_fused)
	ball.connect("exit_screen", _on_ball_offscreen)
	ball.id = id
	ball.add_to_group("ball")	
	call_deferred("add_child", ball)
	return ball

func _on_ball_offscreen():
	get_tree().call_group("ball", "queue_free")
	playing = false
	
	

func _process(delta):
	if playing:
		if Input.is_action_just_pressed("ui_accept") and can_drop:
			hand_ball.add_collision()
			hand_ball = create_ball(randi() % 4, $Spawner/Ball_spawn.position)
			hand_ball.remove_collision()
			hand_ball.visible = false
			can_drop = false
			$Ball_spawn_timer.start()
		if Input.is_action_pressed("ui_right"):
			$Spawner.position.x += speed * delta 
		if Input.is_action_pressed("ui_left"):
			$Spawner.position.x -= speed * delta
		if hand_ball != null:
			hand_ball.position = $Spawner/Ball_spawn.global_position
	else:
		if Input.is_action_just_pressed("ui_accept"):
			start_game()

func _on_ball_fused(item_1, item_2, id):
	if not is_instance_valid(item_1) or not is_instance_valid(item_2):
		return
	var in_queue = false
	var i = 0
	while i < len(fuse_queue):
		var item = fuse_queue[i]
		if item == item_1 or item == item_2:
			fuse_queue.remove_at(i)
			i = i - 1
			in_queue = true
		elif item == null:
			fuse_queue.remove_at(i)
			i = i - 1
		i = i + 1
	if in_queue:
		return
	fuse_queue.append(item_1)
	fuse_queue.append(item_2)
	var new_i = (id + 1) % nb_balls
	var pos = (item_1.position + item_2.position) / 2
	var velocity = (item_1.linear_velocity + item_2.linear_velocity) / 2
	item_1.queue_free()
	item_2.queue_free()
	add_to_score(2 ** id)
	var ball = create_ball(new_i, pos)
	ball.linear_velocity = velocity

func add_to_score(points):
	score += points
	score_change.emit(score)

func _on_ball_spawn_timer_timeout():
	if hand_ball != null:
		hand_ball.visible = true
	can_drop = true
