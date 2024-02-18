//------------------------------------------------------------------------------
//
//     Filename:  extra_types.ha
//  Description:  raylib extra types, not necessarily listed in cheatsheet
//      License:  GPL-3.0
//     Original:  raylib.h#TODO
//
//------------------------------------------------------------------------------

// WindowFlag
export type ConfigFlag = enum u32 {
	VSyncHint		= 0x00000040, // Set to try enabling VSync on GPU
	FullscreenMode		= 0x00000002, // Set to run program in fullscreen
	WindowResizable		= 0x00000004, // Set to allow resizable window
	WindowUndecorated	= 0x00000008, // Set to disable window decoration (frame and buttons)
	WindowHidden		= 0x00000080, // Set to hide window
	WindowMinimized		= 0x00000200, // Set to minimize window (iconify)
	WindowMaximized		= 0x00000400, // Set to maximize window (expanded to monitor)
	WindowUnfocused		= 0x00000800, // Set to window non focused
	WindowTopmost		= 0x00001000, // Set to window always on top
	WindowAlways_run	= 0x00000100, // Set to allow windows running while minimized
	WindowTransparent	= 0x00000010, // Set to allow transparent framebuffer
	WindowHighdpi		= 0x00002000, // Set to support HighDPI
	WindowMousePassthrough	= 0x00004000, // Set to support mouse passthrough, only supported when FLAG_WINDOW_UNDECORATED
	BorderlessWindowedMode	= 0x00008000, // Set to run program in borderless windowed mode
	MSAA4XHint		= 0x00000020, // Set to try enabling MSAA 4X
	InterlacedHint		= 0x00010000  // Set to try enabling interlaced video format (for V3D)
};

export type KeyboardKey = enum u64 {
    NULL            = 0,        // Key: NULL, used for no key pressed
    // Alphanumeric keys
    APOSTROPHE      = 39,       // Key: '
    COMMA           = 44,       // Key: ,
    MINUS           = 45,       // Key: -
    PERIOD          = 46,       // Key: .
    SLASH           = 47,       // Key: /
    ZERO            = 48,       // Key: 0
    ONE             = 49,       // Key: 1
    TWO             = 50,       // Key: 2
    THREE           = 51,       // Key: 3
    FOUR            = 52,       // Key: 4
    FIVE            = 53,       // Key: 5
    SIX             = 54,       // Key: 6
    SEVEN           = 55,       // Key: 7
    EIGHT           = 56,       // Key: 8
    NINE            = 57,       // Key: 9
    SEMICOLON       = 59,       // Key: ;
    EQUAL           = 61,       // Key: =
    A               = 65,       // Key: A | a
    B               = 66,       // Key: B | b
    C               = 67,       // Key: C | c
    D               = 68,       // Key: D | d
    E               = 69,       // Key: E | e
    F               = 70,       // Key: F | f
    G               = 71,       // Key: G | g
    H               = 72,       // Key: H | h
    I               = 73,       // Key: I | i
    J               = 74,       // Key: J | j
    K               = 75,       // Key: K | k
    L               = 76,       // Key: L | l
    M               = 77,       // Key: M | m
    N               = 78,       // Key: N | n
    O               = 79,       // Key: O | o
    P               = 80,       // Key: P | p
    Q               = 81,       // Key: Q | q
    R               = 82,       // Key: R | r
    S               = 83,       // Key: S | s
    T               = 84,       // Key: T | t
    U               = 85,       // Key: U | u
    V               = 86,       // Key: V | v
    W               = 87,       // Key: W | w
    X               = 88,       // Key: X | x
    Y               = 89,       // Key: Y | y
    Z               = 90,       // Key: Z | z
    LEFT_BRACKET     = 91,       // Key: [
    BACKSLASH       = 92,       // Key: '\'
    RIGHT_BRACKET    = 93,       // Key: ]
    GRAVE           = 96,       // Key: `
    // Function keys
    SPACE           = 32,       // Key: Space
    ESCAPE          = 256,      // Key: Esc
    ENTER           = 257,      // Key: Enter
    TAB             = 258,      // Key: Tab
    BACKSPACE       = 259,      // Key: Backspace
    INSERT          = 260,      // Key: Ins
    DELETE          = 261,      // Key: Del
    RIGHT           = 262,      // Key: Cursor right
    LEFT            = 263,      // Key: Cursor left
    DOWN            = 264,      // Key: Cursor down
    UP              = 265,      // Key: Cursor up
    PAGE_UP          = 266,      // Key: Page up
    PAGE_DOWN        = 267,      // Key: Page down
    HOME            = 268,      // Key: Home
    END             = 269,      // Key: End
    CAPS_LOCK        = 280,      // Key: Caps lock
    SCROLL_LOCK      = 281,      // Key: Scroll down
    NUM_LOCK         = 282,      // Key: Num lock
    PRINT_SCREEN     = 283,      // Key: Print screen
    PAUSE           = 284,      // Key: Pause
    F1              = 290,      // Key: F1
    F2              = 291,      // Key: F2
    F3              = 292,      // Key: F3
    F4              = 293,      // Key: F4
    F5              = 294,      // Key: F5
    F6              = 295,      // Key: F6
    F7              = 296,      // Key: F7
    F8              = 297,      // Key: F8
    F9              = 298,      // Key: F9
    F10             = 299,      // Key: F10
    F11             = 300,      // Key: F11
    F12             = 301,      // Key: F12
    LEFT_SHIFT       = 340,      // Key: Shift left
    LEFT_CONTROL     = 341,      // Key: Control left
    LEFT_ALT         = 342,      // Key: Alt left
    LEFT_SUPER       = 343,      // Key: Super left
    RIGHT_SHIFT      = 344,      // Key: Shift right
    RIGHT_CONTROL    = 345,      // Key: Control right
    RIGHT_ALT        = 346,      // Key: Alt right
    RIGHT_SUPER      = 347,      // Key: Super right
    KB_MENU          = 348,      // Key: KB menu
    // Keypad keys
    KP0             = 320,      // Key: Keypad 0
    KP1             = 321,      // Key: Keypad 1
    KP2             = 322,      // Key: Keypad 2
    KP3             = 323,      // Key: Keypad 3
    KP4             = 324,      // Key: Keypad 4
    KP5             = 325,      // Key: Keypad 5
    KP6             = 326,      // Key: Keypad 6
    KP7             = 327,      // Key: Keypad 7
    KP8             = 328,      // Key: Keypad 8
    KP9             = 329,      // Key: Keypad 9
    KP_DECIMAL       = 330,      // Key: Keypad .
    KP_DIVIDE        = 331,      // Key: Keypad /
    KP_MULTIPLY      = 332,      // Key: Keypad *
    KP_SUBTRACT      = 333,      // Key: Keypad -
    KP_ADD           = 334,      // Key: Keypad +
    KP_ENTER         = 335,      // Key: Keypad Enter
    KP_EQUAL         = 336,      // Key: Keypad =
    // Android key buttons
    BACK            = 4,        // Key: Android back button
    MENU            = 5,        // Key: Android menu button
    VOLUME_UP        = 24,       // Key: Android volume up button
    VOLUME_DOWN      = 25        // Key: Android volume down button
};
