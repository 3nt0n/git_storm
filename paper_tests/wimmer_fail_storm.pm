
mdp

const double gamma = 0.000001;

//default gamma = 0.000001, you get true
//for gamma = 0.00001, you get 0 as result in storm
//same with --sound flag
//only with the --exact flag, it always returns false
//property for storm: P<=1/2 [((((s = 1) | (s = 2)) | (s = 5)) | (s = 6))


module sys

	s : [1..6] init 1;
	
	[] s=1 -> 1.0: (s'=2);
	[] s=2 -> 0.5: (s'=3) + gamma: (s'=5) + (0.5-gamma): (s'=4);
	[] s=3 -> 1.0: (s'=3);
	[] s=4 -> 1.0: (s'=4);
	[] s=5 -> gamma: (s'=6) + (1-gamma): (s'=4);
	[] s=6 -> gamma: (s'=3) + (1-gamma): (s'=4);

endmodule







