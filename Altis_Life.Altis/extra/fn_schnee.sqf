if (life_schnee) then {
snow = "#particlesource" createVehiclelocal getpos schnee;
snow setParticleParams [["\A3\Data_f\cl_water.p3d", 2, 1, 1], "","Billboard",1,7,[0, 0, 20.0], [0, 0, -0.35],1.0,0.000001,0.0, 0.4, [0.17,0.05], [[1.0,1.0,1.0,1.0], [0.94,0.94,0.96,1.0], [1.0,1.0,1.0,1.0]], [0, 1], 0, 0.01, "", "", schnee];
snow setParticleRandom [2, [35, 35, 10], [0.0, 0.0, -0.1], 0.001, 0.05, [0.01, 0.01, 0.01, 0.02], 0.2, 0];
snow setParticleCircle [0, [0.0, 0.0, -0.01] ];
snow setDropInterval 0.0005;
};
