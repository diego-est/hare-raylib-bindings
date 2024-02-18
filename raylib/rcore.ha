//------------------------------------------------------------------------------
//
//     Filename:  rcore.ha
//  Description:  raylib core functions
//      License:  GPL-3.0
//     Original:  raylib.h#L949-L1215
//
//------------------------------------------------------------------------------
use types::c;

// Window-related functions
@symbol("InitWindow") fn InitWindow(width: size, height: size, title: *c::char) void;
export fn init_window(width: size, height: size, title: str) void = {
	InitWindow(width, height, c::fromstr(title));
};

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
export fn is_window_state(flag: ConfigFlag) bool = {
	return IsWindowState(flag: u32);
};

@symbol("SetWindowState") fn SetWindowState(flags: u32) void;
export fn set_window_state(flags: ConfigFlag) void = {
	SetWindowState(flags: u32);
};

@symbol("ClearWindowState") fn ClearWindowState(flags: u32) void;
export fn clear_window_state(flags: ConfigFlag) void = {
	ClearWindowState(flags: u32);
};

export @symbol("ToggleFullscreen") fn toggle_fullscreen() void;

export @symbol("ToggleBorderlessWindowed") fn toggle_borderless_windowed() void;

export @symbol("MaximizeWindow") fn maximize_window() void;

export @symbol("MinimizeWindow") fn minimize_window() void;

export @symbol("RestoreWindow") fn restore_window() void;

export @symbol("SetWindowIcon") fn set_window_icon(image: Image) void;

export @symbol("SetWindowIcons") fn set_window_icons(images: []Image, count: i32) void;

@symbol("SetWindowTitle") fn SetWindowTitle(title: *c::char) void;
export fn set_window_title(title: str) void = {
	SetWindowTitle(c::fromstr(title));
};

export @symbol("SetWindowPosition") fn set_window_position(i32, i32) void;

export @symbol("SetWindowMonitor") fn set_window_monitor(monitor: i32) void;

export @symbol("SetWindowMinSize") fn set_window_min_size(width: i32, height: i32) void;

export @symbol("SetWindowMaxSize") fn set_window_max_size(width: i32, height: i32) void;

export @symbol("SetWindowSize") fn set_window_size(width: i32, height: i32) void;

export @symbol("SetWindowOpacity") fn set_window_opacity(opacity: f32) void;

export @symbol("SetWindowFocused") fn set_window_focused() void;

export @symbol("GetWindowHandle") fn get_window_handle() nullable *opaque;

export @symbol("GetScreenWidth") fn get_screen_width() i32;

export @symbol("GetScreenHeight") fn get_screen_height() i32;

export @symbol("GetRenderWidth") fn get_render_width() i32;

export @symbol("GetRenderHeight") fn get_render_height() i32;

export @symbol("GetMonitorCount") fn get_monitor_count() i32;

export @symbol("GetCurrentMonitor") fn get_current_monitor() i32;

export @symbol("GetMonitorPosition") fn get_monitor_position(monitor: i32) Vector2;

export @symbol("GetMonitorWidth") fn get_monitor_width(monitor: i32) i32;

export @symbol("GetMonitorHeight") fn get_monitor_height(monitor: i32) i32;

export @symbol("GetMonitorPhysicalWidth") fn get_monitor_physical_width(monitor: i32) i32;

export @symbol("GetMonitorPhysicalHeight") fn get_monitor_physical_height(monitor: i32) i32;

export @symbol("GetMonitorRefreshRate") fn get_monitor_refresh_rate(monitor: i32) i32;

export @symbol("GetWindowPosition") fn get_window_position() Vector2;

export @symbol("GetWindowScaleDPI") fn get_window_scale_dpi() Vector2;

@symbol("GetMonitorName") fn GetMonitorName(monitor: i32) *c::char;
export fn get_monitor_name(monitor: i32) str = {
	return c::tostr(GetMonitorName(monitor))!;
};

@symbol("SetClipboardText") fn SetClipboardText(text: *c::char) void;
export fn set_clipboard_text(text: str) void = {
	SetClipboardText(c::fromstr(text));
};

@symbol("GetClipboardText") fn GetClipboardText() *c::char;
export fn get_clipboard_text() str = {
	return c::tostr(GetClipboardText())!;
};

export @symbol("EnableEventWaiting") fn enable_event_waiting() void;

export @symbol("DisableEventWaiting") fn disable_event_waiting() void;


// Drawing-related functions
export @symbol("BeginDrawing") fn begin_drawing() bool;

export @symbol("EndDrawing") fn end_drawing() bool;

export @symbol("ClearBackground") fn clear_background(color: Color) void;

// Timing-related functions
export @symbol("GetFrameTime") fn get_frame_time() f32;

// Input-related functions: keyboard
export @symbol("IsKeyPressed") fn is_key_pressed(key: KeyboardKey) bool;

export @symbol("IsKeyPressedRepeat") fn is_key_pressed_repeat(key: KeyboardKey) bool;

export @symbol("IsKeyDown") fn is_key_down(key: KeyboardKey) bool;

export @symbol("IsKeyReleased") fn is_key_released(key: KeyboardKey) bool;

export @symbol("IsKeyUp") fn is_key_up(key: KeyboardKey) bool;

export @symbol("GetKeyPressed") fn get_key_pressed() KeyboardKey;

export @symbol("GetCharPressed") fn get_char_pressed() u8;

export @symbol("SetExitKey") fn set_exit_key(key: int) void;
