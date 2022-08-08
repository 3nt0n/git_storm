
probabilistic

const double gamma = 0.001;
//default gamma = 0.000001
//for gamma = 0.01, you get 0 as result

module sys

	s : [1..6] init 1;
	
	[] s=1 -> 1.0: (s'=2);
	[] s=2 -> 0.5: (s'=3) + gamma: (s'=5) + (0.5-gamma): (s'=4);
	[] s=3 -> 1.0: (s'=3);
	[] s=4 -> 1.0: (s'=4);
	[] s=5 -> gamma: (s'=6) + (1-gamma): (s'=4);
	[] s=6 -> gamma: (s'=3) + (1-gamma): (s'=4);

endmodule







