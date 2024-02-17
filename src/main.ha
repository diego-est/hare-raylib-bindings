use fmt;
use raylib::*;

const SPEED = 400.0f64;

export fn main() void = {
	init_window(800, 600, "hola");
	const RED = Color{ r = 0xFF, g = 0x00, b = 0x00, a = 0xFF };
	let x: f64 = 0.0;
	let y: f64 = 0.0;
	for (!window_should_close()) {
		begin_drawing();
		if (is_key_down(KeyboardKey::DOWN))  y += SPEED * get_frame_time();
		if (is_key_down(KeyboardKey::UP))    y -= SPEED * get_frame_time();
		if (is_key_down(KeyboardKey::LEFT))  x -= SPEED * get_frame_time();
		if (is_key_down(KeyboardKey::RIGHT)) x += SPEED * get_frame_time();
		clear_background(DARKGRAY);
		draw_rectangle(x: int, y: int, 50, 50, RED);
		end_drawing();
	};
	close_window();
};
