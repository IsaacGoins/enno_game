shader_type canvas_item;
uniform vec4 user_color;
uniform vec4 target_color;

void fragment(){
	vec4 tex_color = texture(TEXTURE, UV);
	vec4 tex_original = tex_color;
	float dist_red_origin = target_color[0] - tex_original[0];
	float dist_green_origin = target_color[1] - tex_original[1];
	float dist_blue_origin = target_color[2] - tex_original[2];
	
	float dist_red = tex_original[0] - user_color[0];
	float dist_green = tex_original[1] - user_color[1];
	float dist_blue = tex_original[2] - user_color[2];

	
	int value_array_red[3];
	int value_array_green[3];
	int value_array_blue[3];
    // un-normalize the RGB values
    int non_normal_red = int(round(tex_color[0]*255.0));
	int non_normal_green = int(round(tex_color[1]*255.0));
	int non_normal_blue = int(round(tex_color[2]*255.0));
    // Extract digits from the number and add them to the
    // array
    while (non_normal_red > 9) { 
        // Convert integer digit to character and store
      	// it in the array
		int i = 0;
        int value = int(round(mod(float(non_normal_red),10)));
      	non_normal_red = non_normal_red/10;
		value_array_red[i++] = value;
    } 
	// reverse the array and leave room for the cipher
	switch(value_array_red[0]) {
		case 1:
			value_array_red[0] = 2;
			break;
		case 2:
			value_array_red[0] = 4;
			break;
		case 3:
			value_array_red[0] = 6;
			break;
		case 4:
			value_array_red[0] = 8;
			break;
		case 5:
			value_array_red[0] = 9;
			break;
		case 6:
			value_array_red[0] = 1;
			break;
		case 7:
			value_array_red[0] = 3;
			break;
		case 8:
			value_array_red[0] = 5;
			break;
		case 9:
			value_array_red[0] = 7;
			break;
		default:
			break;
	}
	switch(value_array_red[1]) {
		case 1:
			value_array_red[1] = 2;
			break;
		case 2:
			value_array_red[1] = 4;
			break;
		case 3:
			value_array_red[1] = 6;
			break;
		case 4:
			value_array_red[1] = 8;
			break;
		case 5:
			value_array_red[1] = 9;
			break;
		case 6:
			value_array_red[1] = 1;
			break;
		case 7:
			value_array_red[1] = 3;
			break;
		case 8:
			value_array_red[1] = 5;
			break;
		case 9:
			value_array_red[1] = 7;
			break;
		default:
			break;
	}
	switch(value_array_red[2]) {
		case 1:
			value_array_red[2] = 2;
			break;
		case 2:
			value_array_red[2] = 4;
			break;
		case 3:
			value_array_red[2] = 6;
			break;
		case 4:
			value_array_red[2] = 8;
			break;
		case 5:
			value_array_red[2] = 9;
			break;
		case 6:
			value_array_red[2] = 1;
			break;
		case 7:
			value_array_red[2] = 3;
			break;
		case 8:
			value_array_red[2] = 5;
			break;
		case 9:
			value_array_red[2] = 7;
			break;
		default:
			break;
	}
	
	int final_red = value_array_red[0] + value_array_red[1]*10 + value_array_red[2]*100;
	
	while (non_normal_green > 9) { 
		int i = 0;
        // Convert integer digit to character and store
      	// it in the array
        int value = int(round(mod(float(non_normal_green),10)));
      	non_normal_green = non_normal_green/10;
		value_array_green[i++] = value;
    } 
	
	switch(value_array_green[0]) {
		case 1:
			value_array_green[0] = 2;
			break;
		case 2:
			value_array_green[0] = 4;
			break;
		case 3:
			value_array_green[0] = 6;
			break;
		case 4:
			value_array_green[0] = 8;
			break;
		case 5:
			value_array_green[0] = 9;
			break;
		case 6:
			value_array_green[0] = 1;
			break;
		case 7:
			value_array_green[0] = 3;
			break;
		case 8:
			value_array_green[0] = 5;
			break;
		case 9:
			value_array_green[0] = 7;
			break;
		default:
			break;
	}
	switch(value_array_green[1]) {
		case 1:
			value_array_green[1] = 2;
			break;
		case 2:
			value_array_green[1] = 4;
			break;
		case 3:
			value_array_green[1] = 6;
			break;
		case 4:
			value_array_green[1] = 8;
			break;
		case 5:
			value_array_green[1] = 9;
			break;
		case 6:
			value_array_green[1] = 1;
			break;
		case 7:
			value_array_green[1] = 3;
			break;
		case 8:
			value_array_green[1] = 5;
			break;
		case 9:
			value_array_green[1] = 7;
			break;
		default:
			break;
	}
	switch(value_array_green[2]) {
		case 1:
			value_array_green[2] = 2;
			break;
		case 2:
			value_array_green[2] = 4;
			break;
		case 3:
			value_array_green[2] = 6;
			break;
		case 4:
			value_array_green[2] = 8;
			break;
		case 5:
			value_array_green[2] = 9;
			break;
		case 6:
			value_array_green[2] = 1;
			break;
		case 7:
			value_array_green[2] = 3;
			break;
		case 8:
			value_array_green[2] = 5;
			break;
		case 9:
			value_array_green[2] = 7;
			break;
		default:
			break;
	}
	
	int final_green = value_array_green[0] + value_array_green[1]*10 + value_array_green[2]*100;
	
	while (non_normal_blue > 9) { 
		int i = 0;
        // Convert integer digit to character and store
      	// it in the array
        int value = int(round(mod(float(non_normal_blue),10)));
      	non_normal_blue = non_normal_blue/10;
		value_array_blue[i++] = value;
    } 
	
	switch(value_array_blue[0]) {
		case 1:
			value_array_blue[0] = 2;
			break;
		case 2:
			value_array_blue[0] = 4;
			break;
		case 3:
			value_array_blue[0] = 6;
			break;
		case 4:
			value_array_blue[0] = 8;
			break;
		case 5:
			value_array_blue[0] = 9;
			break;
		case 6:
			value_array_blue[0] = 1;
			break;
		case 7:
			value_array_blue[0] = 3;
			break;
		case 8:
			value_array_blue[0] = 5;
			break;
		case 9:
			value_array_blue[0] = 7;
			break;
		default:
			break;
	}
	switch(value_array_blue[1]) {
		case 1:
			value_array_blue[1] = 2;
			break;
		case 2:
			value_array_blue[1] = 4;
			break;
		case 3:
			value_array_blue[1] = 6;
			break;
		case 4:
			value_array_blue[1] = 8;
			break;
		case 5:
			value_array_blue[1] = 9;
			break;
		case 6:
			value_array_blue[1] = 1;
			break;
		case 7:
			value_array_blue[1] = 3;
			break;
		case 8:
			value_array_blue[1] = 5;
			break;
		case 9:
			value_array_blue[1] = 7;
			break;
		default:
			break;
	}
	switch(value_array_blue[2]) {
		case 1:
			value_array_blue[2] = 2;
			break;
		case 2:
			value_array_blue[2] = 4;
			break;
		case 3:
			value_array_blue[2] = 6;
			break;
		case 4:
			value_array_blue[2] = 8;
			break;
		case 5:
			value_array_blue[2] = 9;
			break;
		case 6:
			value_array_blue[2] = 1;
			break;
		case 7:
			value_array_blue[2] = 3;
			break;
		case 8:
			value_array_blue[2] = 5;
			break;
		case 9:
			value_array_blue[2] = 7;
			break;
		default:
			break;
	}
	
	int final_blue = value_array_blue[0] + value_array_blue[1]*10 + value_array_blue[2]*100;
	
	if(final_red > final_green && final_red > final_blue) {
		tex_color[0] = float(final_red/final_red);
		tex_color[1] = float(final_green/final_red);
		tex_color[2] = float(final_blue/final_red);
	}
	else if(final_green > final_red && final_green > final_blue) {
		tex_color[0] = float(final_red/final_green);
		tex_color[1] = float(final_green/final_green);
		tex_color[2] = float(final_blue/final_green);
	}
	else if(final_blue > final_red && final_blue > final_green) {
		tex_color[0] = float(final_red/final_blue);
		tex_color[1] = float(final_green/final_blue);
		tex_color[2] = float(final_blue/final_blue);
	}

	if(user_color[0] == 0.0 && user_color[1] == 0.0 && user_color[2] == 0.0){
	tex_color = vec4(tex_color[0],tex_color[1],tex_color[2],1);
	}
	else if(user_color[0] != 0.0 && user_color[1] == 0.0 && user_color[2] == 0.0){
		tex_color = vec4(tex_color[0]-dist_red,tex_color[1],tex_color[2],1);
		if(tex_color[0] < 0.0){
			tex_color[0] = 1.0 + tex_color[0];
		}
		if(tex_color[0] > 1.0){
			tex_color[0] = tex_color[0] - 1.0;
		}
	}
	else if(user_color[0] == 0.0 && user_color[1] != 0.0 && user_color[2] == 0.0){
		tex_color = vec4(tex_color[0],tex_color[1] - dist_green,tex_color[2],1);
		if(tex_color[1] < 0.0){
			tex_color[1] = 1.0 + tex_color[1];
		}
		if(tex_color[1] > 1.0){
			tex_color[1] = tex_color[1] - 1.0;
		}
	}
	else if(user_color[0] == 0.0 && user_color[1] == 0.0 && user_color[2] != 0.0){
		tex_color = vec4(tex_color[0],tex_color[1],tex_color[2] - dist_blue,1);
		if(tex_color[2] < 0.0){
			tex_color[2] = 1.0 + tex_color[2];
		}
		if(tex_color[2] > 1.0){
			tex_color[2] = tex_color[2] - 1.0;
		}
	}
	else if(user_color[0] != 0.0 && user_color[1] != 0.0 && user_color[2] == 0.0){
		tex_color = vec4(tex_color[0] - dist_red,tex_color[1] - dist_green,tex_color[2],1);
		if(tex_color[0] < 0.0){
			tex_color[0] = 1.0 + tex_color[0];
		}
		if(tex_color[0] > 1.0){
			tex_color[0] = tex_color[0] - 1.0;
		}
		if(tex_color[1] < 0.0){
			tex_color[1] = 1.0 + tex_color[1];
		}
		if(tex_color[1] > 1.0){
			tex_color[1] = tex_color[1] - 1.0;
		}
	}
	else if(user_color[0] != 0.0 && user_color[1] == 0.0 && user_color[2] != 0.0){
		tex_color = vec4(tex_color[0] - dist_red,tex_color[1],tex_color[2] - dist_blue,1);
		if(tex_color[0] < 0.0){
			tex_color[0] = 1.0 + tex_color[0];
		}
		if(tex_color[0] > 1.0){
			tex_color[0] = tex_color[0] - 1.0;
		}
		if(tex_color[2] < 0.0){
			tex_color[2] = 1.0 + tex_color[2];
		}
		if(tex_color[2] > 1.0){
			tex_color[2] = tex_color[2] - 1.0;
		}
	}
	else if(user_color[0] == 0.0 && user_color[1] != 0.0 && user_color[2] != 0.0){
		tex_color = vec4(tex_color[0],tex_color[1] - dist_green,tex_color[2] - dist_blue,1);
		if(tex_color[1] < 0.0){
			tex_color[1] = 1.0 + tex_color[1];
		}
		if(tex_color[1] > 1.0){
			tex_color[1] = tex_color[1] - 1.0;
		}
		if(tex_color[2] < 0.0){
			tex_color[2] = 1.0 + tex_color[2];
		}
		if(tex_color[2] > 1.0){
			tex_color[2] = tex_color[2] - 1.0;
		}
	}
	else{
		tex_color = vec4(tex_original[0] + dist_red_origin - dist_red,tex_original[1] + dist_green_origin - dist_green,tex_original[2] + dist_blue_origin - dist_blue,1);
		if(tex_color[0] < 0.0){
			tex_color[0] = 1.0 + tex_color[0];
		}
		if(tex_color[0] > 1.0){
			tex_color[0] = tex_color[0] - 1.0;
		}
		if(tex_color[1] < 0.0){
			tex_color[1] = 1.0 + tex_color[1];
		}
		if(tex_color[1] > 1.0){
			tex_color[1] = tex_color[1] - 1.0;
		}
		if(tex_color[2] < 0.0){
			tex_color[2] = 1.0 + tex_color[2];
		}
		if(tex_color[2] > 1.0){
			tex_color[2] = tex_color[2] - 1.0;
		}
	}
	COLOR = tex_color;
}
