
/* center radius (pixels) */
#define C_RADIUS 120
/* center line thickness (pixels) */
#define C_LINE 1
/* outline color */
#define OUTLINE @bg:#333333
/* number of bars (use even values for best results) 160 */
#define NBARS 180
/* width (in pixels) of each bar*/
#define BAR_WIDTH 2.5
/* Amplify magnitude of the results each bar displays 150 */
#define AMPLIFY 100
/* How quickly the gradient transitions, in pixels */
#define GRADIENT 95
/* Bar color. This is a gradient by default. */
#define COLOR @fg:mix(#bf616a, #d08770, clamp(d / GRADIENT, 0, 1))
/* Angle (in radians) for how much to rotate the visualizer */
#define ROTATE (PI / 2)
/* Whether to swap left/right audio buffers, set to 1 to enable */
#define INVERT 0
/* Aliasing factors. Higher values mean more defined and jagged lines.
   Note: aliasing does not have a notable impact on performance, but requires
   `xroot` transparency to be enabled since it relies on alpha blending with
   the background. */
#define BAR_ALIAS_FACTOR 1.2
#define C_ALIAS_FACTOR 1.8
/* Offset (Y) of the visualization */
#define CENTER_OFFSET_Y 2
/* Offset (X) of the visualization */
#define CENTER_OFFSET_X 2

/* (DEPRECATED) outline color */
#define BAR_OUTLINE OUTLINE
/* (DEPRECATED) outline width (in pixels, set to 0 to disable outline drawing) */
#define BAR_OUTLINE_WIDTH 0
