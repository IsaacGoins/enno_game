extends Sprite2D

@onready var target_color = get("material/shader/parameter/target_color")
@onready var image1 = preload("res://icon.svg").get_image()

func _ready():
	get_parent().get_node("Icon3").get_material().set_shader_parameter("user_color", Vector4(.2118,.2392,.3216,1))
	image1.decompress()
	var color = image1.get_pixel(10,20)
	print(color)
	get_parent().get_node("Icon3").get_material().set_shader_parameter("target_color", color)
