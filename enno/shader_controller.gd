extends Sprite2D

@onready var user_red = get("material/shader/parameter/user_red")
@onready var user_green = get("material/shader/parameter/user_green")
@onready var user_blue = get("material/shader/parameter/user_blue")
@onready var target_color = get("material/shader/parameter/target_color")
@onready var image1 = preload("res://icon.svg").get_image()

func _ready():
	get_parent().get_node("Icon").get_material().set_shader_parameter("user_color", Vector4(.6,.2,.7,1))
	image1.decompress()
	var color = image1.get_pixel(10,20)
	get_parent().get_node("Icon").get_material().set_shader_parameter("target_color", color)
