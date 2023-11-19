extends RigidBody2D

signal fused(item_1, item_2, id)
signal exit_screen

@export_category("parameters")
@export var id = 0

var layer = 1
var mask = 1

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
