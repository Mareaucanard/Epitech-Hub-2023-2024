extends RigidBody2D

signal fused(item_1, item_2, id)
signal exit_screen

@export_category("parameters")

var id = -1
var layer = 1
var mask = 1

func size_from_id(x):
	return 0.1 * (x + 1)

const colors = [Color(0, 0, 0),
	Color(0, 0.5, 1),
	Color(1, 1, 0),
	Color(1, 1, 0.5),
	Color(0.5, 0.5, 0),
	Color(1, 0.5, 0),
	Color(0.5, 1, 0.5),
	Color(0, 0, 0.5),
	Color(1, 0, 1),
	Color(1, 0.5, 0.5),
	Color(0, 0.5, 0),
	Color(0.5, 0.5, 0.5),
	Color(0.5, 0.5, 1),
	Color(0.5, 0, 1),
	Color(0, 1, 0.5),
	Color(0.5, 0, 0.5),
	Color(1, 0, 0),
	Color(1, 0, 0.5),
	Color(0, 1, 0),
	Color(0.5, 1, 1),
	Color(0.5, 0, 0),
	Color(1, 0.5, 1),
	Color(0, 0, 1),
	Color(0.5, 1, 0),
	Color(0, 0.5, 0.5),
	Color(0, 1, 1),
	Color(1, 1, 1)]

func color_from_id(x):
	return colors[x % len(colors)]	

func set_id(x):
	var size = size_from_id(x)
	var size_vec = Vector2(size, size)
	$Sprite.scale = size_vec
	$CollisionShape2D.scale = size_vec
	$Sprite.modulate = color_from_id(x)
	id = x

func _ready():
	$VisibleOnScreenNotifier2D.connect("screen_exited", _on_exit_screen)
	connect("body_entered", _on_body_entered)

func _on_body_entered(body):
	if not "id" in body:
		return
	if self.id == body.id:
		fused.emit(self, body, id)


func remove_collision():
	self.collision_layer = 0
	self.collision_mask = 0
	self.gravity_scale = 0
	self.freeze = true

func add_collision():
	self.collision_layer = layer
	self.collision_mask = mask
	self.gravity_scale = 1
	self.freeze = false
	self.visible = true
	self.add_to_group("ball")
	


func _on_exit_screen():
	exit_screen.emit()
