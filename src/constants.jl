const SMOOTH_NONE   = 0
const SMOOTH_LINE_3	= 1
const SMOOTH_LINE_5	= 2
const SMOOTH_QUAD_5	= 3

const MGL_HIST_IN	= 0
const MGL_HIST_SUM	= 1
const MGL_HIST_UP	= 2
const MGL_HIST_DOWN	= 3


const MGL_DRAW_WIRE = 	0	# fastest, no faces
const MGL_DRAW_FAST = 	1	# fast, no color interpolation
const MGL_DRAW_NORM = 	2	# high quality, slower
const MGL_DRAW_LMEM = 	4	# low memory usage (direct to pixel)
const MGL_DRAW_DOTS = 	8	# draw dots instead of primitives
const MGL_DRAW_NONE = 	9	# no ouput (for testing only)

const MGL_DEF_PAL	= "bgrcmyhlnqeupH"	# default palette
const MGL_DEF_SCH	= "BbcyrR"	        # default palette
const MGL_COLORS	= "kwrgbcymhWRGBCYMHlenpquLENPQU"

const MGL_TRANSP_NORM	= 0x000000
const MGL_TRANSP_GLASS  = 0x000001
const MGL_TRANSP_LAMP	= 0x000002
const MGL_ENABLE_CUT	= 0x000004    # Flag which determines how points outside bounding box are drown.
const MGL_ENABLE_RTEXT 	= 0x000008 	# Use text rotation along axis
const MGL_AUTO_FACTOR	= 0x000010 	# Enable autochange PlotFactor
const MGL_ENABLE_ALPHA 	= 0x000020 	# Flag that Alpha is used
const MGL_ENABLE_LIGHT 	= 0x000040 	# Flag of using lightning
const MGL_TICKS_ROTATE 	= 0x000080 	# Allow ticks rotation
const MGL_TICKS_SKIP	= 0x000100 	# Allow ticks rotation

const MGL_DISABLE_SCALE	= 0x000200 	# Temporary flag for disable scaling (used for axis)
const MGL_FINISHED 		= 0x000400 	# Flag that final picture (i.e. mglCanvas::G) is ready
const MGL_USE_GMTIME	= 0x000800 	# Use gmtime instead of localtime
const MGL_SHOW_POS		= 0x001000 	# Switch to show or not mouse click position
const MGL_CLF_ON_UPD	= 0x002000 	# Clear plot before Update()
const MGL_NOSUBTICKS	= 0x004000 	# Disable subticks drawing (for bounding box)
const MGL_DIFFUSIVE	    = 0x008000 	# Use diffusive light instead of specular
const MGL_VECT_FRAME	= 0x010000 	# Use DrwDat to remember all data of frames
const MGL_REDUCEACC		= 0x020000 	# Reduce accuracy of points (to reduc size of output files)
const MGL_PREFERVC 		= 0x040000 	# Prefer vertex color instead of texture if output format supports
const MGL_ONESIDED 		= 0x080000 	# Render only front side of surfaces if output format supports (for debugging)
const MGL_NO_ORIGIN 	= 0x100000 	# Don't draw tick labels at axis origin



const MGL_FONT_BOLD		= 0x01000000	# This value is used binary
const MGL_FONT_ITAL		= 0x02000000	# This value is used binary
const MGL_FONT_BOLD_ITAL= 0x03000000
const MGL_FONT_WIRE	 	= 0x04000000
const MGL_FONT_OLINE	= 0x08000000	# This value is used binary
const MGL_FONT_ULINE	= 0x10000000
const MGL_FONT_ZEROW	= 0x20000000	# internal codes
const MGL_FONT_UPPER	= 0x40000000
const MGL_FONT_LOWER	= 0x80000000
const MGL_FONT_ROMAN	= 0xfcffffff
const MGL_FONT_MASK		= 0x00ffffff
const MGL_COLOR_MASK	= 0xffffff00
const MGL_FONT_STYLE	= 0x3f000000
