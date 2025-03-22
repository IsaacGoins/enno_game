extends LineEdit


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	connect("text_submitted", on_text_submitted)
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass

func on_text_submitted(input):
	var inputs = input.split(" ", false)
	
	if inputs.size() < 1:
		print("Empty Command")
		return 1

	var command = inputs[0];
	for i in inputs.size():
		inputs[i] = inputs[i].to_lower()
	var valid_targets = ["target1", "target2", "target3"]
	var valid_attributes = ["r", "g", "b"]
	var level = 9
	var is_valid_value = true
	var dec_input_value = ""
	

	
	match command:
		"set":
			print("Running set command...")
			
			if inputs.size() != 4:
				print("Too many or not enough arguments!")
				return 1
			elif !(inputs[1] in valid_targets):
				print("Invalid target!")
				return 1
			elif !(inputs[2] in valid_attributes):
				print("Invalid attribute!")
				return 1
			else:
				match level:
					1:
						if !inputs[3].is_valid_int():
							print("Invalid desired value!")
							return 1
					2:
						if !inputs[3].is_valid_int():
							print("Invalid desired value!")
							return 1
					3:
						if !inputs[3].is_valid_int():
							print("Invalid desired value!")
							return 1
					4:
						if !inputs[3].is_valid_int():
							print("Invalid desired value!")
							return 1
						for i in inputs[3]:
							if int(i) == 0:
								dec_input_value = dec_input_value+str(0)
							if int(i) == 2:
								dec_input_value = dec_input_value+str(1)
							if int(i) == 4:
								dec_input_value = dec_input_value+str(2)
							if int(i) == 6:
								dec_input_value = dec_input_value+str(3)
							if int(i) == 8:
								dec_input_value = dec_input_value+str(4)
							if int(i) == 9:
								dec_input_value = dec_input_value+str(5)
							if int(i) == 1:
								dec_input_value = dec_input_value+str(6)
							if int(i) == 3:
								dec_input_value = dec_input_value+str(7)
							if int(i) == 5:
								dec_input_value = dec_input_value+str(8)
							if int(i) == 7:
								dec_input_value = dec_input_value+str(9)
					5:
						for i in inputs[3]:
							if int(i) == 9:
								dec_input_value = dec_input_value+str(0)
							if int(i) == 8:
								dec_input_value = dec_input_value+str(1)
							if int(i) == 7:
								dec_input_value = dec_input_value+str(2)
							if int(i) == 6:
								dec_input_value = dec_input_value+str(3)
							if int(i) == 5:
								dec_input_value = dec_input_value+str(4)
							if int(i) == 4:
								dec_input_value = dec_input_value+str(5)
							if int(i) == 3:
								dec_input_value = dec_input_value+str(6)
							if int(i) == 2:
								dec_input_value = dec_input_value+str(7)
							if int(i) == 1:
								dec_input_value = dec_input_value+str(8)
							if int(i) == 0:
								dec_input_value = dec_input_value+str(9)
					6:
						if !inputs[3].is_valid_int():
							print("Invalid desired value!")
							return 1
						for i in inputs[3]:
							if i != "1" and i != "0":
								print("Invalid desired value!")
								return 1
						dec_input_value = bin_to_dec(inputs[3])
					7:
						var bin_input_value = ""
						for i in inputs[3]:
							if i != "w" and i != "a":
								print("Invalid desired value!")
								return 1
							if i == "w":
								bin_input_value = bin_input_value+"0"
							elif i == "a":
								bin_input_value = bin_input_value+"1"
						dec_input_value = bin_to_dec(bin_input_value)
						print(dec_input_value)
					8:
						var hex_chars = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "a", "b", "c", "d", "e", "f"]
						var hex_input_value = ""
						for i in inputs[3]:
							if !(i in hex_chars):
								print("Invalid desired value!")
								return 1
							if int(i) == 1:
								hex_input_value = hex_input_value+str(0)
							if int(i) == 2:
								hex_input_value = hex_input_value+str(1)
							if int(i) == 3:
								hex_input_value = hex_input_value+str(2)
							if int(i) == 4:
								hex_input_value = hex_input_value+str(3)
							if int(i) == 5:
								hex_input_value = hex_input_value+str(4)
							if int(i) == 6:
								hex_input_value = hex_input_value+str(5)
							if int(i) == 7:
								hex_input_value = hex_input_value+str(6)
							if int(i) == 8:
								hex_input_value = hex_input_value+str(7)
							if int(i) == 9:
								hex_input_value = hex_input_value+str(8)
							if i == "a":
								hex_input_value = hex_input_value+str(9)
							if i == "b":
								hex_input_value = hex_input_value+"a"
							if i == "c":
								hex_input_value = hex_input_value+"b"
							if i == "d":
								hex_input_value = hex_input_value+"c"
							if i == "e":
								hex_input_value = hex_input_value+"d"
							if i == "f":
								hex_input_value = hex_input_value+"e"
							if int(i) == 0:
								hex_input_value = hex_input_value+"f"
						dec_input_value = hex_input_value.hex_to_int()
						print(dec_input_value)
						
					9:
						var hex_chars = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "a", "b", "c", "d", "e", "f"]
						for i in inputs[3]:
							if !(i in hex_chars):
								print("Invalid desired value!")
								return 1
						var binary_input = inputs[3].hex_to_int()
						binary_input = str(binary_input)
						for i in binary_input:
							if i != "0" and i != "1":
								print("Invalid desired value!")
								return 1
						var precy_dec_input_value = bin_to_dec(binary_input)
						for i in str(precy_dec_input_value):
							if int(i) == 7:
								dec_input_value = dec_input_value+str(0)
							if int(i) == 2:
								dec_input_value = dec_input_value+str(1)
							if int(i) == 9:
								dec_input_value = dec_input_value+str(2)
							if int(i) == 4:
								dec_input_value = dec_input_value+str(3)
							if int(i) == 1:
								dec_input_value = dec_input_value+str(4)
							if int(i) == 0:
								dec_input_value = dec_input_value+str(5)
							if int(i) == 8:
								dec_input_value = dec_input_value+str(6)
							if int(i) == 5:
								dec_input_value = dec_input_value+str(7)
							if int(i) == 3:
								dec_input_value = dec_input_value+str(8)
							if int(i) == 6:
								dec_input_value = dec_input_value+str(9)
						print("Woo")
						print(dec_input_value)
						
								
						
		
		"swap":
			print("Running swap command...")
			
			if inputs.size() != 3:
				print("Too many or not enough arguments!")
				return 1
			if !(inputs[1] in valid_targets) or !(inputs[2] in valid_targets):
				print("Invalid target!")
				return 1
		_:
			pass
			print("Unrecognized command \"%s\"" % inputs[0])


func dec_to_bin(n: int) -> String:
	var binary := ""
	if n == 0:
		return "0"
	while n > 0:
		binary = str(n % 2) + binary
		n = n / 2
	return binary
	
func bin_to_dec(binary_str: String) -> int:
	var result := 0
	var length := binary_str.length()
	for i in range(length):
		var bit := int(binary_str[i])
		result += bit * pow(2, length - i - 1)
	return result
