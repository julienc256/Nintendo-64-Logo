// Example scene using Nintendo 64 logo
// Author : Julien COPPOLANI

#include "n64.inc"

camera {
	location <0, 7, -9>
	look_at  <0, 0,  0>
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