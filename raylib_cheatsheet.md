
# A simple and easy-to-use library to enjoy videogames programming

[raylib Discord server][github.com/raysan5/raylib][raylib.h]

v5.0 quick reference card [download as PDF]

Chinese Translation: 以下为raylib所有API接口中文释义

## module: rcore

### Window-related functions

- [x] `void InitWindow(int width, int height, const char *title);`
- [x] `void CloseWindow(void);`
- [x] `bool WindowShouldClose(void);`
- [x] `bool IsWindowReady(void);`
- [x] `bool IsWindowFullscreen(void);`
- [x] `bool IsWindowHidden(void);`
- [x] `bool IsWindowMinimized(void);`
- [x] `bool IsWindowMaximized(void);`
- [x] `bool IsWindowFocused(void);`
- [x] `bool IsWindowResized(void);`
- [x] `bool IsWindowState(unsigned int flag);`
- [x] `void SetWindowState(unsigned int flags);`
- [x] `void ClearWindowState(unsigned int flags);`
- [x] `void ToggleFullscreen(void);`
- [x] `void ToggleBorderlessWindowed(void);`
- [x] `void MaximizeWindow(void);`
- [x] `void MinimizeWindow(void);`
- [x] `void RestoreWindow(void);`
- [x] `void SetWindowIcon(Image image);`
- [x] `void SetWindowIcons(Image *images, int count);`
- [x] `void SetWindowTitle(const char *title);`
- [x] `void SetWindowPosition(int x, int y);`
- [x] `void SetWindowMonitor(int monitor);`
- [x] `void SetWindowMinSize(int width, int height);`
- [x] `void SetWindowMaxSize(int width, int height);`
- [x] `void SetWindowSize(int width, int height);`
- [x] `void SetWindowOpacity(float opacity);`
- [x] `void SetWindowFocused(void);`
- [x] `void *GetWindowHandle(void);`
- [x] `int GetScreenWidth(void);`
- [x] `int GetScreenHeight(void);`
- [x] `int GetRenderWidth(void);`
- [x] `int GetRenderHeight(void);`
- [x] `int GetMonitorCount(void);`
- [x] `int GetCurrentMonitor(void);`
- [x] `Vector2 GetMonitorPosition(int monitor);`
- [x] `int GetMonitorWidth(int monitor);`
- [x] `int GetMonitorHeight(int monitor);`
- [x] `int GetMonitorPhysicalWidth(int monitor);`
- [x] `int GetMonitorPhysicalHeight(int monitor);`
- [x] `int GetMonitorRefreshRate(int monitor);`
- [x] `Vector2 GetWindowPosition(void);`
- [x] `Vector2 GetWindowScaleDPI(void);`
- [x] `const char *GetMonitorName(int monitor);`
- [x] `void SetClipboardText(const char *text);`
- [x] `const char *GetClipboardText(void);`
- [x] `void EnableEventWaiting(void);`
- [x] `void DisableEventWaiting(void);`

### Cursor-related functions

- [ ] `void ShowCursor(void);`
- [ ] `void HideCursor(void);`
- [ ] `bool IsCursorHidden(void);`
- [ ] `void EnableCursor(void);`
- [ ] `void DisableCursor(void);`
- [ ] `bool IsCursorOnScreen(void);`

### Drawing-related functions

- [x] `void ClearBackground(Color color);`
- [x] `void BeginDrawing(void);`
- [x] `void EndDrawing(void);`
- [ ] `void BeginMode2D(Camera2D camera);`
- [ ] `void EndMode2D(void);`
- [ ] `void BeginMode3D(Camera3D camera);`
- [ ] `void EndMode3D(void);`
- [ ] `void BeginTextureMode(RenderTexture2D target);`
- [ ] `void EndTextureMode(void);`
- [ ] `void BeginShaderMode(Shader shader);`
- [ ] `void EndShaderMode(void);`
- [ ] `void BeginBlendMode(int mode);`
- [ ] `void EndBlendMode(void);`
- [ ] `void BeginScissorMode(int x, int y, int width, int height);`
- [ ] `void EndScissorMode(void);`
- [ ] `void BeginVrStereoMode(VrStereoConfig config);`
- [ ] `void EndVrStereoMode(void);`

### VR stereo config functions for VR simulator

- [ ] `VrStereoConfig LoadVrStereoConfig(VrDeviceInfo device);`
- [ ] `void UnloadVrStereoConfig(VrStereoConfig config);`

### Shader management functions

- [ ] `Shader LoadShader(const char *vsFileName, const char *fsFileName);`
- [ ] `Shader LoadShaderFromMemory(const char *vsCode, const char *fsCode);`
- [ ] `bool IsShaderReady(Shader shader);`
- [ ] `int GetShaderLocation(Shader shader, const char *uniformName);`
- [ ] `int GetShaderLocationAttrib(Shader shader, const char *attribName);`
- [ ] `void SetShaderValue(Shader shader, int locIndex, const void *value, int uniformType);`
- [ ] `void SetShaderValueV(Shader shader, int locIndex, const void *value, int uniformType, int count);`
- [ ] `void SetShaderValueMatrix(Shader shader, int locIndex, Matrix mat);`
- [ ] `void SetShaderValueTexture(Shader shader, int locIndex, Texture2D texture);`
- [ ] `void UnloadShader(Shader shader);`

### Screen-space-related functions

- [ ] `Ray GetMouseRay(Vector2 mousePosition, Camera camera);`
- [ ] `Matrix GetCameraMatrix(Camera camera);`
- [ ] `Matrix GetCameraMatrix2D(Camera2D camera);`
- [ ] `Vector2 GetWorldToScreen(Vector3 position, Camera camera);`
- [ ] `Vector2 GetScreenToWorld2D(Vector2 position, Camera2D camera);`
- [ ] `Vector2 GetWorldToScreenEx(Vector3 position, Camera camera, int width, int height);`
- [ ] `Vector2 GetWorldToScreen2D(Vector2 position, Camera2D camera);`

### Timing-related functions

- [ ] `void SetTargetFPS(int fps);`
- [x] `float GetFrameTime(void);`
- [ ] `double GetTime(void);`
- [ ] `int GetFPS(void);`

### Custom frame control functions

- [ ] `void SwapScreenBuffer(void);`
- [ ] `void PollInputEvents(void);`
- [ ] `void WaitTime(double seconds);`

### Random values generation functions

- [ ] `void SetRandomSeed(unsigned int seed);`
- [ ] `int GetRandomValue(int min, int max);`
- [ ] `int *LoadRandomSequence(unsigned int count, int min, int max);`
- [ ] `void UnloadRandomSequence(int *sequence);`

### Misc. functions

- [ ] `void TakeScreenshot(const char *fileName);`
- [ ] `void SetConfigFlags(unsigned int flags);`
- [ ] `void OpenURL(const char *url);`

#### NOTE: BEGIN Following functions implemented in module [utils]

- [ ] `void TraceLog(int logLevel, const char *text, ...);`
- [ ] `void SetTraceLogLevel(int logLevel);`
- [ ] `void *MemAlloc(unsigned int size);`
- [ ] `void *MemRealloc(void *ptr, unsigned int size);`
- [ ] `void MemFree(void *ptr);`

### Set custom callbacks

- [ ] `void SetTraceLogCallback(TraceLogCallback callback);`
- [ ] `void SetLoadFileDataCallback(LoadFileDataCallback callback);`
- [ ] `void SetSaveFileDataCallback(SaveFileDataCallback callback);`
- [ ] `void SetLoadFileTextCallback(LoadFileTextCallback callback);`
- [ ] `void SetSaveFileTextCallback(SaveFileTextCallback callback);`

### Files management functions

- [ ] `unsigned char *LoadFileData(const char *fileName, int *dataSize);`
- [ ] `void UnloadFileData(unsigned char *data);`
- [ ] `bool SaveFileData(const char *fileName, void *data, int dataSize);`
- [ ] `bool ExportDataAsCode(const unsigned char *data, int dataSize, const char *fileName);`
- [ ] `char *LoadFileText(const char *fileName);`
- [ ] `void UnloadFileText(char *text);`
- [ ] `bool SaveFileText(const char *fileName, char *text);`

#### NOTE: END Preceding functions implemented in module [utils]


### File system functions

- [ ] `bool FileExists(const char *fileName);`
- [ ] `bool DirectoryExists(const char *dirPath);`
- [ ] `bool IsFileExtension(const char *fileName, const char *ext);`
- [ ] `int GetFileLength(const char *fileName);`
- [ ] `const char *GetFileExtension(const char *fileName);`
- [ ] `const char *GetFileName(const char *filePath);`
- [ ] `const char *GetFileNameWithoutExt(const char *filePath);`
- [ ] `const char *GetDirectoryPath(const char *filePath);`
- [ ] `const char *GetPrevDirectoryPath(const char *dirPath);`
- [ ] `const char *GetWorkingDirectory(void);`
- [ ] `const char *GetApplicationDirectory(void);`
- [ ] `bool ChangeDirectory(const char *dir);`
- [ ] `bool IsPathFile(const char *path);`
- [ ] `FilePathList LoadDirectoryFiles(const char *dirPath);`
- [ ] `FilePathList LoadDirectoryFilesEx(const char *basePath, const char *filter, bool scanSubdirs);`
- [ ] `void UnloadDirectoryFiles(FilePathList files);`
- [ ] `bool IsFileDropped(void);`
- [ ] `FilePathList LoadDroppedFiles(void);`
- [ ] `void UnloadDroppedFiles(FilePathList files);`
- [ ] `long GetFileModTime(const char *fileName);`

### Compression/Encoding functionality

- [ ] `unsigned char *CompressData(const unsigned char *data, int dataSize, int *compDataSize);`
- [ ] `unsigned char *DecompressData(const unsigned char *compData, int compDataSize, int *dataSize);`
- [ ] `char *EncodeDataBase64(const unsigned char *data, int dataSize, int *outputSize);`
- [ ] `unsigned char *DecodeDataBase64(const unsigned char *data, int *outputSize);`

### Automation events functionality

- [ ] `AutomationEventList LoadAutomationEventList(const char *fileName);`
- [ ] `void UnloadAutomationEventList(AutomationEventList *list);`
- [ ] `bool ExportAutomationEventList(AutomationEventList list, const char *fileName);`
- [ ] `void SetAutomationEventList(AutomationEventList *list);`
- [ ] `void SetAutomationEventBaseFrame(int frame);`
- [ ] `void StartAutomationEventRecording(void);`
- [ ] `void StopAutomationEventRecording(void);`
- [ ] `void PlayAutomationEvent(AutomationEvent event);`

### Input-related functions: keyboard

- [x] `bool IsKeyPressed(int key);`
- [x] `bool IsKeyPressedRepeat(int key);`
- [x] `bool IsKeyDown(int key);`
- [x] `bool IsKeyReleased(int key);`
- [x] `bool IsKeyUp(int key);`
- [x] `int GetKeyPressed(void);`
- [x] `int GetCharPressed(void);`
- [x] `void SetExitKey(int key);`

### Input-related functions: gamepads

- [ ] `bool IsGamepadAvailable(int gamepad);`
- [ ] `const char *GetGamepadName(int gamepad);`
- [ ] `bool IsGamepadButtonPressed(int gamepad, int button);`
- [ ] `bool IsGamepadButtonDown(int gamepad, int button);`
- [ ] `bool IsGamepadButtonReleased(int gamepad, int button);`
- [ ] `bool IsGamepadButtonUp(int gamepad, int button);`
- [ ] `int GetGamepadButtonPressed(void);`
- [ ] `int GetGamepadAxisCount(int gamepad);`
- [ ] `float GetGamepadAxisMovement(int gamepad, int axis);`
- [ ] `int SetGamepadMappings(const char *mappings);`

### Input-related functions: mouse

- [ ] `bool IsMouseButtonPressed(int button);`
- [ ] `bool IsMouseButtonDown(int button);`
- [ ] `bool IsMouseButtonReleased(int button);`
- [ ] `bool IsMouseButtonUp(int button);`
- [ ] `int GetMouseX(void);`
- [ ] `int GetMouseY(void);`
- [ ] `Vector2 GetMousePosition(void);`
- [ ] `Vector2 GetMouseDelta(void);`
- [ ] `void SetMousePosition(int x, int y);`
- [ ] `void SetMouseOffset(int offsetX, int offsetY);`
- [ ] `void SetMouseScale(float scaleX, float scaleY);`
- [ ] `float GetMouseWheelMove(void);`
- [ ] `Vector2 GetMouseWheelMoveV(void);`
- [ ] `void SetMouseCursor(int cursor);`

### Input-related functions: touch

- [ ] `int GetTouchX(void);`
- [ ] `int GetTouchY(void);`
- [ ] `Vector2 GetTouchPosition(int index);`
- [ ] `int GetTouchPointId(int index);`
- [ ] `int GetTouchPointCount(void);`

### Gestures and Touch Handling Functions (Module: rgestures)

- [ ] `void SetGesturesEnabled(unsigned int flags);`
- [ ] `bool IsGestureDetected(unsigned int gesture);`
- [ ] `int GetGestureDetected(void);`
- [ ] `float GetGestureHoldDuration(void);`
- [ ] `Vector2 GetGestureDragVector(void);`
- [ ] `float GetGestureDragAngle(void);`
- [ ] `Vector2 GetGesturePinchVector(void);`
- [ ] `float GetGesturePinchAngle(void);`

### Camera System Functions (Module: rcamera)

- [ ] `void UpdateCamera(Camera *camera, int mode);`
- [ ] `void UpdateCameraPro(Camera *camera, Vector3 movement, Vector3 rotation, float zoom);`

## module: rshapes

- [ ] `void SetShapesTexture(Texture2D texture, Rectangle source);`

### Basic shapes drawing functions

- [ ] `void DrawPixel(int posX, int posY, Color color);`
- [ ] `void DrawPixelV(Vector2 position, Color color);`
- [ ] `void DrawLine(int startPosX, int startPosY, int endPosX, int endPosY, Color color);`
- [ ] `void DrawLineV(Vector2 startPos, Vector2 endPos, Color color);`
- [ ] `void DrawLineEx(Vector2 startPos, Vector2 endPos, float thick, Color color);`
- [ ] `void DrawLineStrip(Vector2 *points, int pointCount, Color color);`
- [ ] `void DrawLineBezier(Vector2 startPos, Vector2 endPos, float thick, Color color);`
- [ ] `void DrawCircle(int centerX, int centerY, float radius, Color color);`
- [ ] `void DrawCircleSector(Vector2 center, float radius, float startAngle, float endAngle, int segments, Color color);`
- [ ] `void DrawCircleSectorLines(Vector2 center, float radius, float startAngle, float endAngle, int segments, Color color);`
- [ ] `void DrawCircleGradient(int centerX, int centerY, float radius, Color color1, Color color2);`
- [ ] `void DrawCircleV(Vector2 center, float radius, Color color);`
- [ ] `void DrawCircleLines(int centerX, int centerY, float radius, Color color);`
- [ ] `void DrawCircleLinesV(Vector2 center, float radius, Color color);`
- [ ] `void DrawEllipse(int centerX, int centerY, float radiusH, float radiusV, Color color);`
- [ ] `void DrawEllipseLines(int centerX, int centerY, float radiusH, float radiusV, Color color);`
- [ ] `void DrawRing(Vector2 center, float innerRadius, float outerRadius, float startAngle, float endAngle, int segments, Color color);`
- [ ] `void DrawRingLines(Vector2 center, float innerRadius, float outerRadius, float startAngle, float endAngle, int segments, Color color);`
- [x] `void DrawRectangle(int posX, int posY, int width, int height, Color color);`
- [ ] `void DrawRectangleV(Vector2 position, Vector2 size, Color color);`
- [ ] `void DrawRectangleRec(Rectangle rec, Color color);`
- [ ] `void DrawRectanglePro(Rectangle rec, Vector2 origin, float rotation, Color color);`
- [ ] `void DrawRectangleGradientV(int posX, int posY, int width, int height, Color color1, Color color2);`
- [ ] `void DrawRectangleGradientH(int posX, int posY, int width, int height, Color color1, Color color2);`
- [ ] `void DrawRectangleGradientEx(Rectangle rec, Color col1, Color col2, Color col3, Color col4);`
- [ ] `void DrawRectangleLines(int posX, int posY, int width, int height, Color color);`
- [ ] `void DrawRectangleLinesEx(Rectangle rec, float lineThick, Color color);`
- [ ] `void DrawRectangleRounded(Rectangle rec, float roundness, int segments, Color color);`
- [ ] `void DrawRectangleRoundedLines(Rectangle rec, float roundness, int segments, float lineThick, Color color);`
- [ ] `void DrawTriangle(Vector2 v1, Vector2 v2, Vector2 v3, Color color);`
- [ ] `void DrawTriangleLines(Vector2 v1, Vector2 v2, Vector2 v3, Color color);`
- [ ] `void DrawTriangleFan(Vector2 *points, int pointCount, Color color);`
- [ ] `void DrawTriangleStrip(Vector2 *points, int pointCount, Color color);`
- [ ] `void DrawPoly(Vector2 center, int sides, float radius, float rotation, Color color);`
- [ ] `void DrawPolyLines(Vector2 center, int sides, float radius, float rotation, Color color);`
- [ ] `void DrawPolyLinesEx(Vector2 center, int sides, float radius, float rotation, float lineThick, Color color);`

### Splines drawing functions

- [ ] `void DrawSplineLinear(Vector2 *points, int pointCount, float thick, Color color);`
- [ ] `void DrawSplineBasis(Vector2 *points, int pointCount, float thick, Color color);`
- [ ] `void DrawSplineCatmullRom(Vector2 *points, int pointCount, float thick, Color color);`
- [ ] `void DrawSplineBezierQuadratic(Vector2 *points, int pointCount, float thick, Color color);`
- [ ] `void DrawSplineBezierCubic(Vector2 *points, int pointCount, float thick, Color color);`
- [ ] `void DrawSplineSegmentLinear(Vector2 p1, Vector2 p2, float thick, Color color);`
- [ ] `void DrawSplineSegmentBasis(Vector2 p1, Vector2 p2, Vector2 p3, Vector2 p4, float thick, Color color);`
- [ ] `void DrawSplineSegmentCatmullRom(Vector2 p1, Vector2 p2, Vector2 p3, Vector2 p4, float thick, Color color);`
- [ ] `void DrawSplineSegmentBezierQuadratic(Vector2 p1, Vector2 c2, Vector2 p3, float thick, Color color);`
- [ ] `void DrawSplineSegmentBezierCubic(Vector2 p1, Vector2 c2, Vector2 c3, Vector2 p4, float thick, Color color);`

### Spline segment point evaluation functions, for a given t [0.0f .. 1.0f]

- [ ] `Vector2 GetSplinePointLinear(Vector2 startPos, Vector2 endPos, float t);`
- [ ] `Vector2 GetSplinePointBasis(Vector2 p1, Vector2 p2, Vector2 p3, Vector2 p4, float t);`
- [ ] `Vector2 GetSplinePointCatmullRom(Vector2 p1, Vector2 p2, Vector2 p3, Vector2 p4, float t);`
- [ ] `Vector2 GetSplinePointBezierQuad(Vector2 p1, Vector2 c2, Vector2 p3, float t);`
- [ ] `Vector2 GetSplinePointBezierCubic(Vector2 p1, Vector2 c2, Vector2 c3, Vector2 p4, float t);`

### Basic shapes collision detection functions

- [ ] `bool CheckCollisionRecs(Rectangle rec1, Rectangle rec2);`
- [ ] `bool CheckCollisionCircles(Vector2 center1, float radius1, Vector2 center2, float radius2);`
- [ ] `bool CheckCollisionCircleRec(Vector2 center, float radius, Rectangle rec);`
- [ ] `bool CheckCollisionPointRec(Vector2 point, Rectangle rec);`
- [ ] `bool CheckCollisionPointCircle(Vector2 point, Vector2 center, float radius);`
- [ ] `bool CheckCollisionPointTriangle(Vector2 point, Vector2 p1, Vector2 p2, Vector2 p3);`
- [ ] `bool CheckCollisionPointPoly(Vector2 point, Vector2 *points, int pointCount);`
- [ ] `bool CheckCollisionLines(Vector2 startPos1, Vector2 endPos1, Vector2 startPos2, Vector2 endPos2, Vector2 *collisionPoint);`
- [ ] `bool CheckCollisionPointLine(Vector2 point, Vector2 p1, Vector2 p2, int threshold);`
- [ ] `Rectangle GetCollisionRec(Rectangle rec1, Rectangle rec2);`

## module: rtextures

### Image loading functions

- [ ] `Image LoadImage(const char *fileName);`
- [ ] `Image LoadImageRaw(const char *fileName, int width, int height, int format, int headerSize);`
- [ ] `Image LoadImageSvg(const char *fileNameOrString, int width, int height);`
- [ ] `Image LoadImageAnim(const char *fileName, int *frames);`
- [ ] `Image LoadImageFromMemory(const char *fileType, const unsigned char *fileData, int dataSize);`
- [ ] `Image LoadImageFromTexture(Texture2D texture);`
- [ ] `Image LoadImageFromScreen(void);`
- [ ] `bool IsImageReady(Image image);`
- [ ] `void UnloadImage(Image image);`
- [ ] `bool ExportImage(Image image, const char *fileName);`
- [ ] `unsigned char *ExportImageToMemory(Image image, const char *fileType, int *fileSize);`
- [ ] `bool ExportImageAsCode(Image image, const char *fileName);`

### Image generation functions

- [ ] `Image GenImageColor(int width, int height, Color color);`
- [ ] `Image GenImageGradientLinear(int width, int height, int direction, Color start, Color end);`
- [ ] `Image GenImageGradientRadial(int width, int height, float density, Color inner, Color outer);`
- [ ] `Image GenImageGradientSquare(int width, int height, float density, Color inner, Color outer);`
- [ ] `Image GenImageChecked(int width, int height, int checksX, int checksY, Color col1, Color col2);`
- [ ] `Image GenImageWhiteNoise(int width, int height, float factor);`
- [ ] `Image GenImagePerlinNoise(int width, int height, int offsetX, int offsetY, float scale);`
- [ ] `Image GenImageCellular(int width, int height, int tileSize);`
- [ ] `Image GenImageText(int width, int height, const char *text);`

### Image manipulation functions

- [ ] `Image ImageCopy(Image image);`
- [ ] `Image ImageFromImage(Image image, Rectangle rec);`
- [ ] `Image ImageText(const char *text, int fontSize, Color color);`
- [ ] `Image ImageTextEx(Font font, const char *text, float fontSize, float spacing, Color tint);`
- [ ] `void ImageFormat(Image *image, int newFormat);`
- [ ] `void ImageToPOT(Image *image, Color fill);`
- [ ] `void ImageCrop(Image *image, Rectangle crop);`
- [ ] `void ImageAlphaCrop(Image *image, float threshold);`
- [ ] `void ImageAlphaClear(Image *image, Color color, float threshold);`
- [ ] `void ImageAlphaMask(Image *image, Image alphaMask);`
- [ ] `void ImageAlphaPremultiply(Image *image);`
- [ ] `void ImageBlurGaussian(Image *image, int blurSize);`
- [ ] `void ImageResize(Image *image, int newWidth, int newHeight);`
- [ ] `void ImageResizeNN(Image *image, int newWidth,int newHeight);`
- [ ] `void ImageResizeCanvas(Image *image, int newWidth, int newHeight, int offsetX, int offsetY, Color fill);`
- [ ] `void ImageMipmaps(Image *image);`
- [ ] `void ImageDither(Image *image, int rBpp, int gBpp, int bBpp, int aBpp);`
- [ ] `void ImageFlipVertical(Image *image);`
- [ ] `void ImageFlipHorizontal(Image *image);`
- [ ] `void ImageRotate(Image *image, int degrees);`
- [ ] `void ImageRotateCW(Image *image);`
- [ ] `void ImageRotateCCW(Image *image);`
- [ ] `void ImageColorTint(Image *image, Color color);`
- [ ] `void ImageColorInvert(Image *image);`
- [ ] `void ImageColorGrayscale(Image *image);`
- [ ] `void ImageColorContrast(Image *image, float contrast);`
- [ ] `void ImageColorBrightness(Image *image, int brightness);`
- [ ] `void ImageColorReplace(Image *image, Color color, Color replace);`
- [ ] `Color *LoadImageColors(Image image);`
- [ ] `Color *LoadImagePalette(Image image, int maxPaletteSize, int *colorCount);`
- [ ] `void UnloadImageColors(Color *colors);`
- [ ] `void UnloadImagePalette(Color *colors);`
- [ ] `Rectangle GetImageAlphaBorder(Image image, float threshold);`
- [ ] `Color GetImageColor(Image image, int x, int y);`

### Image drawing functions

- [ ] `void ImageClearBackground(Image *dst, Color color);`
- [ ] `void ImageDrawPixel(Image *dst, int posX, int posY, Color color);`
- [ ] `void ImageDrawPixelV(Image *dst, Vector2 position, Color color);`
- [ ] `void ImageDrawLine(Image *dst, int startPosX, int startPosY, int endPosX, int endPosY, Color color);`
- [ ] `void ImageDrawLineV(Image *dst, Vector2 start, Vector2 end, Color
- [ ] `color);``
- [ ] `void ImageDrawCircle(Image *dst, int centerX, int centerY, int radius, Color color);`
- [ ] `void ImageDrawCircleV(Image *dst, Vector2 center, int radius, Color color);`
- [ ] `void ImageDrawCircleLines(Image *dst, int centerX, int centerY, int radius, Color color);`
- [ ] `void ImageDrawCircleLinesV(Image *dst, Vector2 center, int radius, Color color);`
- [ ] `void ImageDrawRectangle(Image *dst, int posX, int posY, int width, int height, Color color);`
- [ ] `void ImageDrawRectangleV(Image *dst, Vector2 position, Vector2 size, Color color);`
- [ ] `void ImageDrawRectangleRec(Image *dst, Rectangle rec, Color color);`
- [ ] `void ImageDrawRectangleLines(Image *dst, Rectangle rec, int thick, Color color);`
- [ ] `void ImageDraw(Image *dst, Image src, Rectangle srcRec, Rectangle dstRec, Color tint);`
- [ ] `void ImageDrawText(Image *dst, const char *text, int posX, int posY, int fontSize, Color color);`
    void ImageDrawTextEx(Image *dst, Font font, const char *text, Vector2 position, float fontSize, float spacing, Color tint);

### Texture loading functions

- [ ] `Texture2D LoadTexture(const char *fileName);`
- [ ] `Texture2D LoadTextureFromImage(Image image);`
- [ ] `TextureCubemap LoadTextureCubemap(Image image, int layout);`
- [ ] `RenderTexture2D LoadRenderTexture(int width, int height);`
- [ ] `bool IsTextureReady(Texture2D texture);`
- [ ] `void UnloadTexture(Texture2D texture);`
- [ ] `bool IsRenderTextureReady(RenderTexture2D target);`
- [ ] `void UnloadRenderTexture(RenderTexture2D target);`
- [ ] `void UpdateTexture(Texture2D texture, const void *pixels);`
- [ ] `void UpdateTextureRec(Texture2D texture, Rectangle rec, const void *pixels);`

### Texture configuration functions

- [ ] `void GenTextureMipmaps(Texture2D *texture);`
- [ ] `void SetTextureFilter(Texture2D texture, int filter);`
- [ ] `void SetTextureWrap(Texture2D texture, int wrap);`

### Texture drawing functions

- [ ] `void DrawTexture(Texture2D texture, int posX, int posY, Color tint);`
- [ ] `void DrawTextureV(Texture2D texture, Vector2 position, Color tint);`
- [ ] `void DrawTextureEx(Texture2D texture, Vector2 position, float rotation, float scale, Color tint);`
- [ ] `void DrawTextureRec(Texture2D texture, Rectangle source, Vector2 position, Color tint);`
- [ ] `void DrawTexturePro(Texture2D texture, Rectangle source, Rectangle dest, Vector2 origin, float rotation, Color tint);`
- [ ] `void DrawTextureNPatch(Texture2D texture, NPatchInfo nPatchInfo, Rectangle dest, Vector2 origin, float rotation, Color tint);`

### Color/pixel related functions

- [ ] `Color Fade(Color color, float alpha);`
- [ ] `int ColorToInt(Color color);`
- [ ] `Vector4 ColorNormalize(Color color);`
- [ ] `Color ColorFromNormalized(Vector4 normalized);`
- [ ] `Vector3 ColorToHSV(Color color);`
- [ ] `Color ColorFromHSV(float hue, float saturation, float value);`
- [ ] `Color ColorTint(Color color, Color tint);`
- [ ] `Color ColorBrightness(Color color, float factor);`
- [ ] `Color ColorContrast(Color color, float contrast);`
- [ ] `Color ColorAlpha(Color color, float alpha);`
- [ ] `Color ColorAlphaBlend(Color dst, Color src, Color tint);`
- [ ] `Color GetColor(unsigned int hexValue);`
- [ ] `Color GetPixelColor(void *srcPtr, int format);`
- [ ] `void SetPixelColor(void *dstPtr, Color color, int format);`
- [ ] `int GetPixelDataSize(int width, int height, int format);`

## module: rtext

### Font loading/unloading functions

- [ ] `Font GetFontDefault(void);`
- [ ] `Font LoadFont(const char *fileName);`
- [ ] `Font LoadFontEx(const char *fileName, int fontSize, int *codepoints, int codepointCount);`
- [ ] `Font LoadFontFromImage(Image image, Color key, int firstChar);`
- [ ] `Font LoadFontFromMemory(const char *fileType, const unsigned char *fileData, int dataSize, int fontSize, int *codepoints, int codepointCount);`
- [ ] `bool IsFontReady(Font font);`
- [ ] `GlyphInfo *LoadFontData(const unsigned char *fileData, int dataSize, int fontSize, int *codepoints, int codepointCount, int type);`
- [ ] `Image GenImageFontAtlas(const GlyphInfo *glyphs, Rectangle **glyphRecs, int glyphCount, int fontSize, int padding, int packMethod);`
- [ ] `void UnloadFontData(GlyphInfo *glyphs, int glyphCount);`
- [ ] `void UnloadFont(Font font);`
- [ ] `bool ExportFontAsCode(Font font, const char *fileName);`

### Text drawing functions

- [ ] `void DrawFPS(int posX, int posY);`
- [ ] `void DrawText(const char *text, int posX, int posY, int fontSize, Color color);`
- [ ] `void DrawTextEx(Font font, const char *text, Vector2 position, float fontSize, float spacing, Color tint);`
- [ ] `void DrawTextPro(Font font, const char *text, Vector2 position, Vector2 origin, float rotation, float fontSize, float spacing, Color tint);`
- [ ] `void DrawTextCodepoint(Font font, int codepoint, Vector2 position, float fontSize, Color tint);`
- [ ] `void DrawTextCodepoints(Font font, const int *codepoints, int codepointCount, Vector2 position, float fontSize, float spacing, Color tint);`

### Text font info functions

- [ ] `void SetTextLineSpacing(int spacing);`
- [ ] `int MeasureText(const char *text, int fontSize);`
- [ ] `Vector2 MeasureTextEx(Font font, const char *text, float fontSize, float spacing);`
- [ ] `int GetGlyphIndex(Font font, int codepoint);`
- [ ] `GlyphInfo GetGlyphInfo(Font font, int codepoint);`
- [ ] `Rectangle GetGlyphAtlasRec(Font font, int codepoint);`

### Text codepoints management functions (unicode characters)

- [ ] `char *LoadUTF8(const int *codepoints, int length);`
- [ ] `void UnloadUTF8(char *text);`
- [ ] `int *LoadCodepoints(const char *text, int *count);`
- [ ] `void UnloadCodepoints(int *codepoints);`
- [ ] `int GetCodepointCount(const char *text);`
- [ ] `int GetCodepoint(const char *text, int *codepointSize);`
- [ ] `int GetCodepointNext(const char *text, int *codepointSize);`
- [ ] `int GetCodepointPrevious(const char *text, int *codepointSize);`
- [ ] `const char *CodepointToUTF8(int codepoint, int *utf8Size);`

### Text strings management functions (no UTF-8 strings, only byte chars)

- [ ] `int TextCopy(char *dst, const char *src);`
- [ ] `bool TextIsEqual(const char *text1, const char *text2);`
- [ ] `unsigned int TextLength(const char *text);`
- [ ] `const char *TextFormat(const char *text, ...);`
- [ ] `const char *TextSubtext(const char *text, int position, int length);`
- [ ] `char *TextReplace(char *text, const char *replace, const char *by);`
- [ ] `char *TextInsert(const char *text, const char *insert, int position);`
- [ ] `const char *TextJoin(const char **textList, int count, const char *delimiter);`
- [ ] `const char **TextSplit(const char *text, char delimiter, int *count);`
- [ ] `void TextAppend(char *text, const char *append, int *position);`
- [ ] `int TextFindIndex(const char *text, const char *find);`
- [ ] `const char *TextToUpper(const char *text);`
- [ ] `const char *TextToLower(const char *text);`
- [ ] `const char *TextToPascal(const char *text);`
- [ ] `int TextToInteger(const char *text);`

## module: rmodels

### Basic geometric 3D shapes drawing functions

- [ ] `void DrawLine3D(Vector3 startPos, Vector3 endPos, Color color);`
- [ ] `void DrawPoint3D(Vector3 position, Color color);`
- [ ] `void DrawCircle3D(Vector3 center, float radius, Vector3 rotationAxis, float rotationAngle, Color color);`
- [ ] `void DrawTriangle3D(Vector3 v1, Vector3 v2, Vector3 v3, Color color);`
- [ ] `void DrawTriangleStrip3D(Vector3 *points, int pointCount, Color color);`
- [ ] `void DrawCube(Vector3 position, float width, float height, float length, Color color);`
- [ ] `void DrawCubeV(Vector3 position, Vector3 size, Color color);`
- [ ] `void DrawCubeWires(Vector3 position, float width, float height, float length, Color color);`
- [ ] `void DrawCubeWiresV(Vector3 position, Vector3 size, Color color);`
- [ ] `void DrawSphere(Vector3 centerPos, float radius, Color color);`
- [ ] `void DrawSphereEx(Vector3 centerPos, float radius, int rings, int slices, Color color);`
- [ ] `void DrawSphereWires(Vector3 centerPos, float radius, int rings, int slices, Color color);`
- [ ] `void DrawCylinder(Vector3 position, float radiusTop, float radiusBottom, float height, int slices, Color color);`
- [ ] `void DrawCylinderEx(Vector3 startPos, Vector3 endPos, float startRadius, float endRadius, int sides, Color color);`
- [ ] `void DrawCylinderWires(Vector3 position, float radiusTop, float radiusBottom, float height, int slices, Color color);`
- [ ] `void DrawCylinderWiresEx(Vector3 startPos, Vector3 endPos, float startRadius, float endRadius, int sides, Color color);`
- [ ] `void DrawCapsule(Vector3 startPos, Vector3 endPos, float radius, int slices, int rings, Color color);`
- [ ] `void DrawCapsuleWires(Vector3 startPos, Vector3 endPos, float radius, int slices, int rings, Color color);`
- [ ] `void DrawPlane(Vector3 centerPos, Vector2 size, Color color);`
- [ ] `void DrawRay(Ray ray, Color color);`
- [ ] `void DrawGrid(int slices, float spacing);`

### Model 3d Loading and Drawing Functions (Module: models)

### Model management functions

- [ ] `Model LoadModel(const char *fileName);`
- [ ] `Model LoadModelFromMesh(Mesh mesh);`
- [ ] `bool IsModelReady(Model model);`
- [ ] `void UnloadModel(Model model);`
- [ ] `BoundingBox GetModelBoundingBox(Model model);`

### Model drawing functions

- [ ] `void DrawModel(Model model, Vector3 position, float scale, Color tint);`
- [ ] `void DrawModelEx(Model model, Vector3 position, Vector3 rotationAxis, float rotationAngle, Vector3 scale, Color tint);`
- [ ] `void DrawModelWires(Model model, Vector3 position, float scale, Color tint);`
- [ ] `void DrawModelWiresEx(Model model, Vector3 position, Vector3 rotationAxis, float rotationAngle, Vector3 scale, Color tint);`
- [ ] `void DrawBoundingBox(BoundingBox box, Color color);`
- [ ] `void DrawBillboard(Camera camera, Texture2D texture, Vector3 position, float size, Color tint);`
- [ ] `void DrawBillboardRec(Camera camera, Texture2D texture, Rectangle source, Vector3 position, Vector2 size, Color tint);`
- [ ] `void DrawBillboardPro(Camera camera, Texture2D texture, Rectangle source, Vector3 position, Vector3 up, Vector2 size, Vector2 origin, float rotation, Color tint);`

### Mesh management functions

- [ ] `void UploadMesh(Mesh *mesh, bool dynamic);`
- [ ] `void UpdateMeshBuffer(Mesh mesh, int index, const void *data, int dataSize, int offset);`
- [ ] `void UnloadMesh(Mesh mesh);`
- [ ] `void DrawMesh(Mesh mesh, Material material, Matrix transform);`
- [ ] `void DrawMeshInstanced(Mesh mesh, Material material, const Matrix *transforms, int instances);`
- [ ] `bool ExportMesh(Mesh mesh, const char *fileName);`
- [ ] `BoundingBox GetMeshBoundingBox(Mesh mesh);`
- [ ] `void GenMeshTangents(Mesh *mesh);`

### Mesh generation functions

- [ ] `Mesh GenMeshPoly(int sides, float radius);`
- [ ] `Mesh GenMeshPlane(float width, float length, int resX, int resZ);`
- [ ] `Mesh GenMeshCube(float width, float height, float length);`
- [ ] `Mesh GenMeshSphere(float radius, int rings, int slices);`
- [ ] `Mesh GenMeshHemiSphere(float radius, int rings, int slices);`
- [ ] `Mesh GenMeshCylinder(float radius, float height, int slices);`
- [ ] `Mesh GenMeshCone(float radius, float height, int slices);`
- [ ] `Mesh GenMeshTorus(float radius, float size, int radSeg, int sides);`
- [ ] `Mesh GenMeshKnot(float radius, float size, int radSeg, int sides);`
- [ ] `Mesh GenMeshHeightmap(Image heightmap, Vector3 size);`
- [ ] `Mesh GenMeshCubicmap(Image cubicmap, Vector3 cubeSize);`

### Material loading/unloading functions

- [ ] `Material *LoadMaterials(const char *fileName, int *materialCount);`
- [ ] `Material LoadMaterialDefault(void);`
- [ ] `bool IsMaterialReady(Material material);`
- [ ] `void UnloadMaterial(Material material);`
- [ ] `void SetMaterialTexture(Material *material, int mapType, Texture2D texture);`
- [ ] `void SetModelMeshMaterial(Model *model, int meshId, int materialId);`

### Model animations loading/unloading functions

- [ ] `ModelAnimation *LoadModelAnimations(const char *fileName, int *animCount);`
- [ ] `void UpdateModelAnimation(Model model, ModelAnimation anim, int frame);`
- [ ] `void UnloadModelAnimation(ModelAnimation anim);`
- [ ] `void UnloadModelAnimations(ModelAnimation *animations, int animCount);`
- [ ] `bool IsModelAnimationValid(Model model, ModelAnimation anim);`

### Collision detection functions

- [ ] `bool CheckCollisionSpheres(Vector3 center1, float radius1, Vector3 center2, float radius2);`
- [ ] `bool CheckCollisionBoxes(BoundingBox box1, BoundingBox box2);`
- [ ] `bool CheckCollisionBoxSphere(BoundingBox box, Vector3 center, float radius);`
- [ ] `RayCollision GetRayCollisionSphere(Ray ray, Vector3 center, float radius);`
- [ ] `RayCollision GetRayCollisionBox(Ray ray, BoundingBox box);`
- [ ] `RayCollision GetRayCollisionMesh(Ray ray, Mesh mesh, Matrix transform);`
- [ ] `RayCollision GetRayCollisionTriangle(Ray ray, Vector3 p1, Vector3 p2, Vector3 p3);`
- [ ] `RayCollision GetRayCollisionQuad(Ray ray, Vector3 p1, Vector3 p2, Vector3 p3, Vector3 p4);`

## module: raudio

### Audio device management functions

- [ ] `void InitAudioDevice(void);`
- [ ] `void CloseAudioDevice(void);`
- [ ] `bool IsAudioDeviceReady(void);`
- [ ] `void SetMasterVolume(float volume);`
- [ ] `float GetMasterVolume(void);`

### Wave/Sound loading/unloading functions

- [ ] `Wave LoadWave(const char *fileName);`
- [ ] `Wave LoadWaveFromMemory(const char *fileType, const unsigned char *fileData, int dataSize);`
- [ ] `bool IsWaveReady(Wave wave);`
- [ ] `Sound LoadSound(const char *fileName);`
- [ ] `Sound LoadSoundFromWave(Wave wave);`
- [ ] `Sound LoadSoundAlias(Sound source);`
- [ ] `bool IsSoundReady(Sound sound);`
- [ ] `void UpdateSound(Sound sound, const void *data, int sampleCount);`
- [ ] `void UnloadWave(Wave wave);`
- [ ] `void UnloadSound(Sound sound);`
- [ ] `void UnloadSoundAlias(Sound alias);`
- [ ] `bool ExportWave(Wave wave, const char *fileName);`
- [ ] `bool ExportWaveAsCode(Wave wave, const char *fileName);`

### Wave/Sound management functions

- [ ] `void PlaySound(Sound sound);`
- [ ] `void StopSound(Sound sound);`
- [ ] `void PauseSound(Sound sound);`
- [ ] `void ResumeSound(Sound sound);`
- [ ] `bool IsSoundPlaying(Sound sound);`
- [ ] `void SetSoundVolume(Sound sound, float volume);`
- [ ] `void SetSoundPitch(Sound sound, float pitch);`
- [ ] `void SetSoundPan(Sound sound, float pan);`
- [ ] `Wave WaveCopy(Wave wave);`
- [ ] `void WaveCrop(Wave *wave, int initSample, int finalSample);`
- [ ] `void WaveFormat(Wave *wave, int sampleRate, int sampleSize, int channels);`
- [ ] `float *LoadWaveSamples(Wave wave);`
- [ ] `void UnloadWaveSamples(float *samples);`

### Music management functions

- [ ] `Music LoadMusicStream(const char *fileName);`
- [ ] `Music LoadMusicStreamFromMemory(const char *fileType, const unsigned char *data, int dataSize);`
- [ ] `bool IsMusicReady(Music music);`
- [ ] `void UnloadMusicStream(Music music);`
- [ ] `void PlayMusicStream(Music music);`
- [ ] `bool IsMusicStreamPlaying(Music music);`
- [ ] `void UpdateMusicStream(Music music);`
- [ ] `void StopMusicStream(Music music);`
- [ ] `void PauseMusicStream(Music music);`
- [ ] `void ResumeMusicStream(Music music);`
- [ ] `void SeekMusicStream(Music music, float position);`
- [ ] `void SetMusicVolume(Music music, float volume);`
- [ ] `void SetMusicPitch(Music music, float pitch);`
- [ ] `void SetMusicPan(Music music, float pan);`
- [ ] `float GetMusicTimeLength(Music music);`
- [ ] `float GetMusicTimePlayed(Music music);`

### AudioStream management functions

- [ ] `AudioStream LoadAudioStream(unsigned int sampleRate, unsigned int sampleSize, unsigned int channels);`
- [ ] `bool IsAudioStreamReady(AudioStream stream);`
- [ ] `void UnloadAudioStream(AudioStream stream);`
- [ ] `void UpdateAudioStream(AudioStream stream, const void *data, int frameCount);`
- [ ] `bool IsAudioStreamProcessed(AudioStream stream);`
- [ ] `void PlayAudioStream(AudioStream stream);`
- [ ] `void PauseAudioStream(AudioStream stream);`
- [ ] `void ResumeAudioStream(AudioStream stream);`
- [ ] `bool IsAudioStreamPlaying(AudioStream stream);`
- [ ] `void StopAudioStream(AudioStream stream);`
- [ ] `void SetAudioStreamVolume(AudioStream stream, float volume);`
- [ ] `void SetAudioStreamPitch(AudioStream stream, float pitch);`
- [ ] `void SetAudioStreamPan(AudioStream stream, float pan);`
- [ ] `void SetAudioStreamBufferSizeDefault(int size);`
- [ ] `void SetAudioStreamCallback(AudioStream stream, AudioCallback callback);`
- [ ] `void AttachAudioStreamProcessor(AudioStream stream, AudioCallback processor);`
- [ ] `void DetachAudioStreamProcessor(AudioStream stream, AudioCallback processor);`
- [ ] `void AttachAudioMixedProcessor(AudioCallback processor);`
- [ ] `void DetachAudioMixedProcessor(AudioCallback processor);`

## structs

- [x] `struct Vector2;`
- [x] `struct Vector3;`
- [x] `struct Vector4;`
- [x] `struct Matrix;`
- [x] `struct Color;`
- [x] `struct Rectangle;`
- [x] `struct Image;`
- [x] `struct Texture;`
- [x] `struct RenderTexture;`
- [x] `struct NPatchInfo;`
- [x] `struct GlyphInfo;`
- [x] `struct Font;`
- [x] `struct Camera3D;`
- [x] `struct Camera2D;`
- [x] `struct Mesh;`
- [x] `struct Shader;`
- [x] `struct MaterialMap;`
- [x] `struct Material;`
- [x] `struct Transform;`
- [x] `struct BoneInfo;`
- [x] `struct Model;`
- [x] `struct ModelAnimation;`
- [x] `struct Ray;`
- [x] `struct RayCollision;`
- [x] `struct BoundingBox;`
- [x] `struct Wave;`
- [x] `struct AudioStream;`
- [x] `struct Sound;`
- [x] `struct Music;`
- [x] `struct VrDeviceInfo;`
- [x] `struct VrStereoConfig;`
- [x] `struct FilePathList;`
- [x] `struct AutomationEvent;`
- [x] `struct AutomationEventList;`

## colors

- [x] `LIGHTGRAY`
- [x] `GRAY`
- [x] `DARKGRAY`
- [x] `YELLOW`
- [x] `GOLD`
- [x] `ORANGE`
- [x] `PINK`
- [x] `RED`
- [x] `MAROON`
- [x] `GREEN`
- [x] `LIME`
- [x] `DARKGREEN`
- [x] `SKYBLUE`
- [x] `BLUE`
- [x] `DARKBLUE`
- [x] `PURPLE`
- [x] `VIOLET`
- [x] `DARKPURPLE`
- [x] `BEIGE`
- [x] `BROWN`
- [x] `DARKBROWN`
- [x] `WHITE`
- [x] `BLACK`
- [x] `BLANK`
- [x] `MAGENTA`
- [x] `RAYWHITE`

Other cheatsheets

    raymath cheatsheet

raylib quick reference card - Copyright (c) 2013-2024 Ramon Santamaria (@raysan5)
