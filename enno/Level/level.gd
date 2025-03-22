extends Control


@onready var user_input = $CanvasLayer/HBoxContainer/VBoxContainer/Input/MarginContainer/user_input
@onready var ui_r_value = $CanvasLayer/HBoxContainer/Sidebar/VBoxContainer/MarginContainer2/HBoxContainer/PanelContainer/MarginContainer/r_value
@onready var ui_g_value = $CanvasLayer/HBoxContainer/Sidebar/VBoxContainer/MarginContainer3/HBoxContainer/PanelContainer/MarginContainer/g_value
@onready var ui_b_value = $CanvasLayer/HBoxContainer/Sidebar/VBoxContainer/MarginContainer4/HBoxContainer/PanelContainer/MarginContainer/b_value

var r_value = 255
var g_value = 255
var b_value = 255

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	
	# update ui
	ui_r_value.text = str(r_value)
	ui_b_value.text = str(b_value)
	ui_g_value.text = str(g_value)


func load_level(level):
	user_input.level = level

func change_value(target, attribute, value):
	pass
	print("Setting Values | Target: " + str(target) + " | Attribute: " + str(attribute) + " | Value " + str(value))
	if attribute == "r":
		target.r_value == value
	elif attribute == "g":
		target.g_value == value
	elif attribute == "b":
		target.b_value == value
func swap_images(target1, target2):
	print("Swapping images: " + target1 + " and " + target2)
