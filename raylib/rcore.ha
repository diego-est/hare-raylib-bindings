//------------------------------------------------------------------------------
//
//     Filename:  rcore.ha
//  Description:  raylib core functions
//      License:  GPL-3.0
//     Original:  raylib.h#L949-L1215
//
//------------------------------------------------------------------------------
use types::c;

export fn init_window(width: size, height: size, title: str) void = {
	InitWindow(width, height, c::fromstr(title));
};

export fn is_window_state(flag: ConfigFlag) bool = {
	return IsWindowState(flag: u32);
};

export fn set_window_state(flags: ConfigFlag) void = {
	SetWindowState(flags: u32);
};

export fn clear_window_state(flags: ConfigFlag) void = {
	ClearWindowState(flags: u32);
};

@symbol("InitWindow") fn InitWindow(size, size, *c::char) void;
export @symbol("CloseWindow") fn close_window() void;
export @symbol("WindowShouldClose") fn window_should_close() bool;
export @symbol("IsWindowReady") fn is_window_ready() bool;
export @symbol("IsWindowFullscreen") fn is_window_fullscreen() bool;
export @symbol("IsWindowHidden") fn is_window_hidden() bool;
export @symbol("IsWindowMinimized") fn is_window_minimized() bool;
export @symbol("IsWindowMaximized") fn is_window_maximized() bool;
export @symbol("IsWindowFocused") fn is_window_focused_() bool;
export @symbol("IsWindowResized") fn is_window_resized() bool;
@symbol("IsWindowState") fn IsWindowState(flag: u32) bool;
@symbol("SetWindowState") fn SetWindowState(flags: u32) void;
@symbol("ClearWindowState") fn ClearWindowState(flags: u32) void;
export @symbol("ToggleFullscreen") fn toggle_fullscreen() void;
export @symbol("ToggleBorderlessWindowed") fn toggle_borderless_windowed() void;
export @symbol("MaximizeWindow") fn maximize_window() void;
export @symbol("MinimizeWindow") fn minimize_window() void;
export @symbol("RestoreWindow") fn restore_window() void;
export @symbol("SetWindowIcon") fn set_window_icon(image: Image) void;
export @symbol("SetWindowIcons") fn set_window_icons(images: []Image, count: i32) void;

export @symbol("BeginDrawing") fn begin_drawing() bool;
export @symbol("EndDrawing") fn end_drawing() bool;
export @symbol("ClearBackground") fn clear_background(color: Color) void;

export @symbol("GetFrameTime") fn get_frame_time() f32;

export @symbol("IsKeyPressed") fn is_key_pressed(KeyboardKey) bool;
export @symbol("IsKeyPressedRepeat") fn is_key_pressed_repeat(KeyboardKey) bool;
export @symbol("IsKeyDown") fn is_key_down(KeyboardKey) bool;
export @symbol("IsKeyReleased") fn is_key_released(KeyboardKey) bool;
export @symbol("IsKeyUp") fn is_key_up(KeyboardKey) bool;
export @symbol("GetKeyPressed") fn get_key_pressed() KeyboardKey;
export @symbol("GetCharPressed") fn get_char_pressed() u8;
export @symbol("SetExitKey") fn set_exit_key(int) void;
