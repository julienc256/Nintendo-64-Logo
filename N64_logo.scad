////////////////////////////////////////////////////////////////////////////////
//                             NINTENDO 64 LOGO                               //
//                           BY  JULIEN COPPOLANI                             //
//                        julien.coppolani@gmail.com                          //
////////////////////////////////////////////////////////////////////////////////

// N_letter has 10 vertices :

// 1──2     4──5
// │   ╲    │  │
// │    ╲   │  │
// │  8  ╲  │  │
// │  │╲  ╲ │  │
// │  │ ╲  ╲│  │
// │  │  ╲  3  │
// │  │   ╲    │
// 0──9    ╲7──6

N=20; // Size

module N_letter()
{
	// Base of the letter N
	linear_extrude(height = N)
	{
		polygon(
			points =
				[[  0,  0],  [  0,   3*N],
				[  N, 3*N],  [2*N, 1.5*N],
				[2*N, 3*N],  [3*N,   3*N],
				[3*N,   0],  [2*N,     0],
				[N, 1.5*N],  [  N,     0]]
		);
	}
}

// N64_logo assembly
module N64_logo() {
	color("green")
	union()
	{
		N_letter();
		translate([N,   0, -2*N]) rotate([0, -90, 0]) N_letter();
		translate([2*N, 0,    N]) rotate([0,  90, 0]) N_letter();
		translate([3*N, 0,   -N]) rotate([0, 180, 0]) N_letter();
	}
}

// MAIN
translate([0, N, 0]) rotate([90, 0, 0]) N64_logo();
