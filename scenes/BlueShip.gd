extends RigidBody2D

var victory_label: Label
var next_level_path = "res://scenes/NextLevel.tscn"

func _ready():
	call_deferred("connect_to_objective")

func connect_to_objective():
	var objective = get_node("../ObjectiveArea")
	if objective:
		objective.connect("level_completed", _on_level_completed)

func _process(delta):
	if position.y > 700:
		reset_level()

func reset_level():
	if get_tree():
		get_tree().reload_current_scene()

func _on_level_completed():
	victory_label = Label.new()
	victory_label.text = "Level Complete!"
	victory_label.set_anchors_preset(Control.PRESET_CENTER)
	
	if get_tree() and get_tree().root:
		get_tree().root.call_deferred("add_child", victory_label)
		var timer = get_tree().create_timer(2.0)
		timer.timeout.connect(_on_victory_timeout)

func _on_victory_timeout():
	if victory_label:
		victory_label.queue_free()
	if get_tree():
		get_tree().call_deferred("change_scene_to_file", next_level_path)
