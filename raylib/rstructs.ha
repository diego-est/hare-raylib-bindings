//------------------------------------------------------------------------------
//
//     Filename:  rstructs.ha
//  Description:  raylib types
//      License:  GPL-3.0
//     Original:  raylib.h#L197-L525
//
//------------------------------------------------------------------------------

// Color, 4 components, R8G8B8A8 (32bit)
export type Color = struct {
	r: u8,
	g: u8,
	b: u8,
	a: u8
};


// Vector2, 2 components
export type Vector2 = struct {
	x: f32,
	y: f32
};

// Vector3, 3 components
export type Vector3 = struct {
	x: f32,
	y: f32,
	z: f32
};

// Vector4, 4 components
export type Vector4 = struct {
	x: f32,
	y: f32,
	z: f32,
	w: f32
};

// Quaternion, Vector4 alias
export type Quaternion = Vector4;

// Matrix 4x4, column major, OpenGL style, right-handed
export type Matrix = struct {
	m0: f32,  m1: f32,  m2: f32,  m3: f32,
	m4: f32,  m5: f32,  m6: f32,  m7: f32,
	m8: f32,  m9: f32,  m10: f32, m11: f32,
	m12: f32, m13: f32, m14: f32, m15: f32,
};

// Rectangle, 4 components
export type Rectangle = struct {
	x: f32,
	y: f32,
	width: f32,
	height: f32
};

// Image, pixel data stored in CPU memory (RAM)
export type Image = struct {
	data: []opaque,
	width: i32,
	height: i32,
	mipmaps: i32,
	format: i32
};

export type Texture = struct {
	id: u32,
	width: i32,
	height: i32,
	mipmaps: i32,
	format: i32
};

// Texture2d, Texture alias
export type Texture2d = Texture;

// TextureCubeMap, Texture alias
export type TextureCubeMap = Texture;

// RenderTexture, fbo for texture rendering
export type RenderTexture = struct {
	id: u32,
	texture: Texture,
	depth: Texture
};

// RenderTexture2D, RenderTexture alias
export type RenderTexture2D = RenderTexture;

// NPatchInfo, n-patch info layout
export type NPatchInfo = struct {
	source: Rectangle,
	left: i32,
	top: i32,
	right: i32,
	bottom: i32,
	layout: i32
};

// GlyphInfo, font characters glyphs info
export type GlyphInfo = struct {
	value: i32,
	offsetX: i32,
	offsetY: i32,
	advanceX: i32,
	image: Image
};

// Font, font texture and GlyphInfo array data
export type Font = struct {
	base_size: i32,
	glyph_count: i32,
	glyph_padding: i32,
	texture: Texture2D,
	recs: []Rectangle,
	glyphs: []GlyphInfo
};

// Camera, defines position/orientation in 3d space
export type Camera3D = struct {
	position: Vector3,
	target: Vector3,
	up: Vector3,
	fovy: f32,
	projection: i32
};

// Camera type fallback, defaults to Camera3D
export type Camera = Camera3D;

// Camera2D, defines position/orientation in 2d space
export type Camera2D = struct {
	offset: Vector2,
	target: Vector2,
	rotation: f32,
	zoom: f32
};

// Mesh, vertex data and vao/bao
export type Mesh = struct {
	vertex_count: i32,
	triangle_count: i32,
	vertices: []f32,
	texcoords: []f32,
	texcoords2: []f32,
	normals: []f32,
	tangents: []f32,
	colors: []Color,
	indices: []u32,
	anim_vertices: []f32,
	anim_normals: []f32,
	bone_ids: []u32,
	bone_weights: []f32,
	vao_id: u32,
	vbo_id: u32
};


// Shader
export type Shader = struct {
	id: u32,
	locs: []i32
};

// MaterialMap
export type MaterialMap = struct {
	texture: Texture2D,
	color: Color,
	value: f32
};

// Material, include shader and maps
export type Material = struct {
	shader: Shader,
	maps: []MaterialMap,
	params: [4]f32
};

// Transform, vertex transformation data
export type Transform = struct {
	translation: Vector3,
	rotation: Quaternion,
	scale: Vector3
};

// Bone, skeletal animation bone
export type BoneInfo = struct {
	name: str,
	parent: i32
};

// Model, meshes, materials and animation data
export type Model = struct {
	transform: Matrix,
	mesh_count: i32,
	material_count: i32,
	meshes: []mesh,
	materials: []Material,
	mesh_materials: []i32,
	bone_count: i32,
	bones: []BoneInfo,
	bind_pose: []Transform
};

// ModelAnimation
export type ModelAnimation = struct {
	bone_count: i32,
	frame_count: i32,
	bones: []BoneInfo,
	frame_poses: [][]Transform,
	name: str
};

// Ray, ray for raycasting
export type Ray = struct {
	position: Vector3,
	direction: Vector3
};

// RayCollision, ray hit information
export type RayCollision = struct {
	hit: bool,
	distance: f32,
	point: Vector3,
	normal: Vector3
};

// BoundingBox
export type BondingBox = struct {
	min: Vector3,
	max: Vector3
};
// Wave, audio wave data
export type Wave = struct {
	frame_count: u32,
	sample_rate: u32,
	sample_size: u32,
	channels: u32,
	data: []opaque
};

// TODO: ma_data_converte type
export type ma_data_converter;

// TODO: AudioCallback type
export type AudioCallback;

export type RAudioProcessor = struct {
	process: AudioCallback,
	next: nullable *RAudioProcessor,
	prev: nullable *RAudioProcessor
};

// Audio buffer struct
export type RAudioBuffer = struct {
	converter: ma_data_converter,
	callback: AudioCallback,
	processor: RAudioProcessor,
	volume: f32,
	pitch: f32,
	pan: f32,
	playing: bool,
	paused: bool,
	looping: bool,
	usage: i32,
	is_sub_buffer_processed: (bool, bool),
	size_in_frames: u32,
	frame_cursor_pos: u32,
	frames_processed: u32,
	data: []opaque,
	next: nullable *RAudioBuffer,
	prev: nullable *RAudioBuffer
};

// AudioStream, custom audio stream
export type AudioStream = struct {
	buffer: *RAudioBuffer,
	processor: *RAudioProcessor,
	sample_rate: u32,
	sample_size: u32,
	channels: u32
};

// Sound
export type Sound = struct {
	stream: AudioStream,
	frame_count: u32
};

// Music, audio stream, anything longer than ~10 seconds should be streamed
export type Music = struct {
	stream: AudioStream,
	frame_count: u32,
	looping: bool,
	ctx_type: u32,
	ctx_data: []opaque
};

// VRDeviceInfo, Head-Mounted-Display device parameters
export type VRDeviceInfo = struct {
	h_resolution: i32,
	v_resolution: i32,
	h_screen_size: f32,
	v_screen_size: f32,
	eye_to_screen_distance: f32,
	lens_separation_distance: f32,
	inter_pupillary_distance: f32,
	lens_distortion_values: [4]f32,
	chroma_ab_correction: [4]f32
};

// VRStereoConfig, VR stereo rendering configuration for simulator
export type VRStereoConfig = struct {
	projection: [2]Matrix,
	view_offset: [2]Matrix,
	left_lens_center: [2]f32,
	right_lens_center: [2]f32,
	left_screen_center: [2]f32,
	right_screen_center: [2]f32,
	scale: [2]f32,
	scale_in: [2]f32
};

// FilePathList
export type FilePathList = struct {
	capacity: u32,
	count: u32,
	paths: []str
};

// Automation event
export type AutomationEvent = struct {
	frame: u32,
	type: u32,
	params: [4]i32
};

// Automation event list
export type AutomationEventList = struct {
	capacity: u32,
	count: u32,
	events: []AutomationEvent
};
