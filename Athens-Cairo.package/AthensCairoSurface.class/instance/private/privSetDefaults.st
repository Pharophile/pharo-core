privSetDefaults
	"reset matrices"
	currentCanvas pathTransform loadIdentity.
	currentCanvas paintTransform loadIdentity.
	currentCanvas resetDash.
	currentCanvas paintMode over.
	
	currentCanvas primSetLineJoin: CAIRO_LINE_JOIN_MITER.
	currentCanvas primSetLineCap: CAIRO_LINE_CAP_BUTT.
	currentCanvas primSetLineWidth: 1.0.