extends CanvasLayer


func _ready():
	get_tree().get_root().get_node("World").connect("score_change", _on_score_change)

func _on_score_change(new_score):
	$Label.text = "Score %d" % new_score
	$Label.show()
