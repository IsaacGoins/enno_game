shader_type canvas_item;
uniform vec4 user_color;
uniform vec4 target_color;

void fragment(){
	float dist_red = target_color[0] - user_color[0];
	float dist_green = target_color[1] - user_color[1];
	float dist_blue = target_color[2] - user_color[2];
	vec4 tex_color = texture(TEXTURE, UV);
	if(user_color[0] == 0.0 && user_color[1] == 0.0 && user_color[2] == 0.0){
	tex_color = vec4(tex_color[1],tex_color[2],tex_color[0],1);
	}
	else if(user_color[0] != 0.0 && user_color[1] == 0.0 && user_color[2] == 0.0){
		tex_color = vec4(tex_color[0]-dist_red,tex_color[2],tex_color[0],1);
		if(tex_color[0] < 0.0){
			tex_color[0] = 1.0 + tex_color[0];
		}
		if(tex_color[0] > 1.0){
			tex_color[0] = tex_color[0] - 1.0;
		}
	}
	else if(user_color[0] == 0.0 && user_color[1] != 0.0 && user_color[2] == 0.0){
		tex_color = vec4(tex_color[1],tex_color[1] - dist_green,tex_color[0],1);
		if(tex_color[1] < 0.0){
			tex_color[1] = 1.0 + tex_color[1];
		}
		if(tex_color[1] > 1.0){
			tex_color[1] = tex_color[1] - 1.0;
		}
	}
	else if(user_color[0] == 0.0 && user_color[1] == 0.0 && user_color[2] != 0.0){
		tex_color = vec4(tex_color[1],tex_color[2],tex_color[2] - dist_blue,1);
		if(tex_color[2] < 0.0){
			tex_color[2] = 1.0 + tex_color[2];
		}
		if(tex_color[2] > 1.0){
			tex_color[2] = tex_color[2] - 1.0;
		}
	}
	else if(user_color[0] != 0.0 && user_color[1] != 0.0 && user_color[2] == 0.0){
		tex_color = vec4(tex_color[0] - dist_red,tex_color[1] - dist_green,tex_color[0],1);
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
		tex_color = vec4(tex_color[0] - dist_red,tex_color[2],tex_color[2] - dist_blue,1);
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
		tex_color = vec4(tex_color[1],tex_color[1] - dist_green,tex_color[2] - dist_blue,1);
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
		tex_color = vec4(tex_color[0] - dist_red,tex_color[1] - dist_green,tex_color[2] - dist_blue,1);
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