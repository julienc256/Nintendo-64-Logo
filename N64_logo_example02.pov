// Example scene using Nintendo 64 logo
// Author : Julien COPPOLANI

#include "n64.inc"

camera {
	location <0, 12, -18>
	look_at  <0, -1,  -3>
}

light_source {
	<0, 10, -20>
	color rgb <.5,.5, .5>
}

light_source {
	<0, 10, 0>
	color rgb <1, 1, 1>
}

plane {
	y, 0
	texture {
		pigment {
			checker color rgb <1, 1, 1>, color rgb <0, 0, 0>
		}
	}
}

object {
	N64_Logo
	scale <1.5, 1.5, 1.5>
	rotate <0, 45, 0>
	translate <-3, 0, -1.5>
}

#declare NbObjets = 12;

#for (i, 0, NbObjets - 1, 1)
	#declare Angle = i * 360 / NbObjets;
	object {
		N64_Logo
		rotate <0, -55, 0>
		translate <10, 0, 0>
		rotate <0, Angle+10, 0>
	}
#end
