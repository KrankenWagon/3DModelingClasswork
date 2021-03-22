//Maya ASCII 6.0 scene
//Name: Lieutenant_Dan_V3.ma
//Last modified: Thu, Jan 05, 2006 10:29:44 PM
requires maya "6.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya Unlimited 6.0";
fileInfo "version" "6.0";
fileInfo "cutIdentifier" "200507192211-654274";
fileInfo "osv" "Microsoft Windows XP Service Pack 1 (Build 2600)\n";
createNode transform -s -n "persp";
	setAttr ".t" -type "double3" -0.0034703581979336207 5.4097991137768782 18.036984730001066 ;
	setAttr ".r" -type "double3" -13.538361623991785 -0.19999998471963454 -7.3612895692349254e-016 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v";
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 18.244319203933212;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0.058444618505851142 1.1388706022109591 0.29972114736902755 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".t" -type "double3" 1.0633916936750309 100 0.26970079187410212 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 100;
	setAttr ".ow" 5.3323699421965323;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".t" -type "double3" -0.20019926214851402 2.4835542894156117 100.13145437667394 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 100;
	setAttr ".ow" 5.5335382355731602;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".t" -type "double3" 100.1068213445369 3.1433479230465249 -0.76699497059170541 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
	setAttr ".rp" -type "double3" 1.5992286450908547e-017 0 0 ;
	setAttr ".rpt" -type "double3" -1.5992286450908544e-017 0 -1.5992286450908547e-017 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 100;
	setAttr ".ow" 6.7889623731976831;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "DoNotTouch";
createNode transform -n "master_CTRL" -p "DoNotTouch";
	addAttr -ci true -sn "Tail" -ln "Tail" -dv 1 -min 0 -max 1 -at "double";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".Tail";
createNode nurbsCurve -n "master_CTRLShape" -p "master_CTRL";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.1754174373368376 7.1971183107815255e-017 -1.1754174373368358
		-1.896509207129938e-016 1.0178262325110979e-016 -1.6622912813315818
		-1.1754174373368365 7.1971183107815292e-017 -1.1754174373368365
		-1.6622912813315818 3.172442304677337e-032 -5.1811625748554354e-016
		-1.1754174373368367 -7.1971183107815279e-017 1.1754174373368362
		-5.5974962090898691e-016 -1.0178262325110983e-016 1.6622912813315822
		1.175417437336836 -7.1971183107815292e-017 1.1754174373368365
		1.6622912813315818 -5.4667439667478575e-032 8.9281652829653378e-016
		1.1754174373368376 7.1971183107815255e-017 -1.1754174373368358
		-1.896509207129938e-016 1.0178262325110979e-016 -1.6622912813315818
		-1.1754174373368365 7.1971183107815292e-017 -1.1754174373368365
		;
createNode transform -n "helperArrowsGRP" -p "master_CTRL";
	setAttr ".rp" -type "double3" 0 0 -0.027503000000000055 ;
	setAttr ".sp" -type "double3" 0 0 -0.027503000000000055 ;
createNode transform -n "helperArrow1" -p "helperArrowsGRP";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
createNode nurbsCurve -n "curveShape1" -p "helperArrow1";
	setAttr -k off ".v";
	setAttr ".tmp" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 7 0 no 3
		8 0 1 2 3 4 5 6 7
		8
		1.7562500000000001 0 0.11597300000000001
		1.7562500000000001 0 -0.17097899999999999
		2.1149390000000001 0 -0.17097899999999999
		2.1149390000000001 0 -0.31445400000000001
		2.4736280000000002 0 -0.0275029
		2.1149390000000001 0 0.25944800000000001
		2.1149390000000001 0 0.11597300000000001
		1.7562500000000001 0 0.11597300000000001
		;
createNode transform -n "helperArrow2" -p "helperArrowsGRP";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
createNode nurbsCurve -n "curveShape2" -p "helperArrow2";
	setAttr -k off ".v";
	setAttr ".tmp" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 7 0 no 3
		8 0 1 2 3 4 5 6 7
		8
		0.14347599999999999 0 -1.7837529999999999
		0.14347599999999999 0 -2.142442
		0.28695100000000001 0 -2.142442
		0 0 -2.501131
		-0.28695100000000001 0 -2.142442
		-0.14347599999999999 0 -2.142442
		-0.14347599999999999 0 -1.7837529999999999
		0.14347599999999999 0 -1.7837529999999999
		;
createNode transform -n "helperArrow3" -p "helperArrowsGRP";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
createNode nurbsCurve -n "curveShape3" -p "helperArrow3";
	setAttr -k off ".v";
	setAttr ".tmp" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 7 0 no 3
		8 0 1 2 3 4 5 6 7
		8
		-1.7562500000000001 0 -0.17097899999999999
		-2.1149390000000001 0 -0.17097899999999999
		-2.1149390000000001 0 -0.31445400000000001
		-2.4736280000000002 0 -0.0275029
		-2.1149390000000001 0 0.25944800000000001
		-2.1149390000000001 0 0.11597300000000001
		-1.7562500000000001 0 0.11597300000000001
		-1.7562500000000001 0 -0.17097899999999999
		;
createNode transform -n "helperArrow4" -p "helperArrowsGRP";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
createNode nurbsCurve -n "curveShape4" -p "helperArrow4";
	setAttr -k off ".v";
	setAttr ".tmp" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 7 0 no 3
		8 0 1 2 3 4 5 6 7
		8
		-0.14347599999999999 0 1.728747
		-0.14347599999999999 0 2.0874359999999998
		-0.28695100000000001 0 2.0874359999999998
		0 0 2.4461249999999999
		0.28695100000000001 0 2.0874359999999998
		0.14347599999999999 0 2.0874359999999998
		0.14347599999999999 0 1.728747
		-0.14347599999999999 0 1.728747
		;
createNode transform -n "ball_CTRL" -p "master_CTRL";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0 2.1328632088579322 8.1315162936412833e-019 ;
	setAttr ".sp" -type "double3" 0 2.1328632088579322 8.1315162936412833e-019 ;
createNode nurbsCurve -n "ball_CTRLShape" -p "ball_CTRL";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "SQSTdown_CTRL" -p "ball_CTRL";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 0 2 0 ;
	setAttr ".sp" -type "double3" 0 2 0 ;
createNode nurbsCurve -n "SQSTdown_CTRLShape" -p "SQSTdown_CTRL";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "locator1" -p "SQSTdown_CTRL";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 0 2 0 ;
	setAttr ".sp" -type "double3" 0 2 0 ;
createNode locator -n "locatorShape1" -p "locator1";
	setAttr -k off ".v";
	setAttr ".lp" -type "double3" 0 2 0 ;
createNode transform -n "SQST_top_CTRL" -p "ball_CTRL";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0 4 0 ;
	setAttr ".sp" -type "double3" 0 4 0 ;
	setAttr ".mtye" yes;
	setAttr ".xtye" yes;
createNode nurbsCurve -n "curveShape7" -p "SQST_top_CTRL";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 10 0 no 3
		11 0 1 2 3 4 5 6 7 8 9 10
		11
		0 4.8954736403424137 0
		0.44773682017120686 4 -0.44773682017120686
		-0.44773682017120686 4 -0.44773682017120686
		0 4.8954736403424137 0
		-0.44773682017120686 4 0.44773682017120686
		0.44773682017120686 4 0.44773682017120686
		0 4.8954736403424137 0
		0.44773682017120686 4 -0.44773682017120686
		0.44773682017120686 4 0.44773682017120686
		-0.44773682017120686 4 0.44773682017120686
		-0.44773682017120686 4 -0.44773682017120686
		;
createNode ikHandle -n "ikHandle1" -p "SQST_top_CTRL";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 0 4.0061195035073762 0 ;
	setAttr ".sp" -type "double3" 0 4.0061195035073762 0 ;
	setAttr ".pv" -type "double3" 0.16160000000000002 0 0 ;
	setAttr ".roc" yes;
createNode transform -n "locator2" -p "SQST_top_CTRL";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 0 4.0061195035073762 0 ;
	setAttr ".sp" -type "double3" 0 4.0061195035073762 0 ;
createNode locator -n "locatorShape2" -p "locator2";
	setAttr -k off ".v";
	setAttr ".lp" -type "double3" 0 4.0061195035073762 0 ;
createNode joint -n "joint1" -p "ball_CTRL";
	setAttr ".ove" yes;
	setAttr ".ovv" no;
	setAttr ".t" -type "double3" 0 2 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "yxz";
createNode joint -n "joint2" -p "joint1";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -75.349387687429257 ;
createNode ikEffector -n "effector1" -p "joint1";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode joint -n "rt_leg_surface_position" -p "joint1";
	setAttr ".t" -type "double3" -0.48811399999999988 0.1328614512289179 -1.0842021724855044e-019 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -75.834070257893089 ;
createNode joint -n "R_Femur_Leg" -p "rt_leg_surface_position";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -89.999999999999986 -3.7164298146495423 -14.16592974210692 ;
createNode joint -n "R_Knee_Leg" -p "R_Femur_Leg";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 20.743378318413161 ;
createNode joint -n "R_Ankle_Leg" -p "R_Knee_Leg";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -69.835523557432694 ;
createNode joint -n "R_Ball_Leg" -p "R_Ankle_Leg";
	setAttr ".t" -type "double3" 0.50235633395090518 3.2960150909443146e-016 1.609823385706477e-015 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -37.191424946330905 ;
createNode joint -n "R_Toe_Leg" -p "R_Ball_Leg";
	setAttr ".t" -type "double3" 0.59820485927153244 -3.3438651847461673e-016 3.8857805861880479e-016 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 179.99999879258155 0 -168.88060882072745 ;
createNode joint -n "R_Femur_IKLeg" -p "rt_leg_surface_position";
	setAttr ".t" -type "double3" 1.5265566588595902e-016 -5.5511151231257827e-017 0 ;
	setAttr ".r" -type "double3" -1.1280502077729112e-006 -5.6309897943199205e-007 -14.968093114225285 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -89.999999999999986 -3.7164298146495423 -14.16592974210692 ;
createNode joint -n "R_Knee_IKLeg" -p "R_Femur_IKLeg";
	setAttr ".t" -type "double3" 1.0224540233612061 -8.7102073318977911e-017 1.1102230246251565e-016 ;
	setAttr ".r" -type "double3" -2.2499621720258274e-014 -4.9749957006518898e-014 31.501120748225777 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 20.743378318413161 ;
createNode joint -n "R_Ankle_IKLeg" -p "R_Knee_IKLeg";
	setAttr ".t" -type "double3" 0.93263620138168335 1.1272662581257665e-016 6.6613381477509392e-016 ;
	setAttr ".r" -type "double3" -3.9241464829206927e-007 -1.3040005181820638e-007 -16.532851074761297 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -69.835523557432694 ;
createNode joint -n "R_Ball_IKLeg" -p "R_Ankle_IKLeg";
	setAttr ".t" -type "double3" 0.50235633395090518 3.2960150909443146e-016 1.609823385706477e-015 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -37.191424946330905 ;
createNode joint -n "R_Toe_IKLeg" -p "R_Ball_IKLeg";
	setAttr ".t" -type "double3" 0.59820485927153244 -3.3438651847461673e-016 3.8857805861880479e-016 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 179.99999879258155 0 -168.88060882072745 ;
createNode ikEffector -n "effector7" -p "R_Ball_IKLeg";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode ikEffector -n "effector6" -p "R_Ankle_IKLeg";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode ikEffector -n "effector5" -p "R_Knee_IKLeg";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode joint -n "lt_leg_surface_position" -p "joint1";
	setAttr ".t" -type "double3" 0.48811435659203495 0.13286320885793224 8.1315162936412833e-019 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode joint -n "L_Femur_Leg" -p "lt_leg_surface_position";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -90 -3.7164356072352458 -90.000000000000071 ;
createNode joint -n "L_Knee_Leg" -p "L_Femur_Leg";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 20.743292888286454 ;
createNode joint -n "L_Ankle_Leg" -p "L_Knee_Leg";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -69.835428883563978 ;
createNode joint -n "L_Ball_Leg" -p "L_Ankle_Leg";
	setAttr ".t" -type "double3" 0.50235614929578754 -2.0123602659766233e-016 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -37.191428397487265 ;
createNode joint -n "L_Toe_Leg" -p "L_Ball_Leg";
	setAttr ".t" -type "double3" 0.59820455834705411 2.5243932353546172e-016 2.2204460492503131e-016 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 179.99999999999994 0 11.119391179272592 ;
createNode joint -n "L_Femur_IKLeg" -p "lt_leg_surface_position";
	setAttr ".t" -type "double3" 5.5511151231257827e-017 -4.4408920985006262e-016 0 ;
	setAttr ".r" -type "double3" -3.8713280379810351e-007 -1.5094920286536523e-007 -14.974696290987835 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -90 -3.7164356072352458 -90.000000000000071 ;
createNode joint -n "L_Knee_IKLeg" -p "L_Femur_IKLeg";
	setAttr ".t" -type "double3" 1.0224517583847046 -1.4837767711370586e-016 6.106226635438361e-016 ;
	setAttr ".r" -type "double3" -1.8758352959661185e-015 4.8188439477243257e-014 31.515821038136831 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 20.743292888286454 ;
createNode joint -n "L_Ankle_IKLeg" -p "L_Knee_IKLeg";
	setAttr ".t" -type "double3" 0.93264025449752808 3.1578045730606549e-016 5.5511151231257827e-017 ;
	setAttr ".r" -type "double3" -4.2438337708997662e-007 8.9595339666128099e-008 -16.540948717966874 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -69.835428883563978 ;
createNode joint -n "L_Ball_IKLeg" -p "L_Ankle_IKLeg";
	setAttr ".t" -type "double3" 0.50235614929578754 -2.0123602659766233e-016 0 ;
	setAttr ".r" -type "double3" -4.1135997987034602e-007 -1.7359184902044525e-022 -1.52690685092559e-022 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -37.191428397487265 ;
createNode joint -n "L_Toe_IKLeg" -p "L_Ball_IKLeg";
	setAttr ".t" -type "double3" 0.59820455834705411 2.5243932353546172e-016 2.2204460492503131e-016 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 179.99999999999994 0 11.119391179272592 ;
createNode ikEffector -n "effector4" -p "L_Ball_IKLeg";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode ikEffector -n "effector3" -p "L_Ankle_IKLeg";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode ikEffector -n "effector2" -p "L_Knee_IKLeg";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode transform -n "SQST_middle_CTRL" -p "ball_CTRL";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0 3 0 ;
	setAttr ".sp" -type "double3" 0 3 0 ;
	setAttr ".mntl" -type "double3" -1 -1.5 -1 ;
	setAttr ".mxtl" -type "double3" 1 1.5 1 ;
	setAttr ".mtye" yes;
	setAttr ".xtye" yes;
	setAttr ".mnrl" -type "double3" -50 -50 -50 ;
	setAttr ".mxrl" -type "double3" 50 50 50 ;
	setAttr ".mrxe" yes;
	setAttr ".mrye" yes;
	setAttr ".mrze" yes;
	setAttr ".xrxe" yes;
	setAttr ".xrye" yes;
	setAttr ".xrze" yes;
createNode nurbsCurve -n "SQST_middle_CTRLShape" -p "SQST_middle_CTRL";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode nurbsCurve -n "curveShape8" -p "SQST_middle_CTRL";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 10 0 no 3
		11 0 1 2 3 4 5 6 7 8 9 10
		11
		2.5905172370117024 3.8214624973192342 0
		2.5905172370117024 3.3520553559939574 0.35205535599395754
		2.5905172370117024 3.3520553559939574 0.11735178533131918
		2.5905172370117024 2.6479446440060426 0.11735178533131918
		2.5905172370117024 2.6479446440060426 0.35205535599395754
		2.5905172370117024 2.1785375026807658 0
		2.5905172370117024 2.6479446440060426 -0.35205535599395754
		2.5905172370117024 2.6479446440060426 -0.11735178533131918
		2.5905172370117024 3.3520553559939574 -0.11735178533131918
		2.5905172370117024 3.3520553559939574 -0.35205535599395754
		2.5905172370117024 3.8214624973192342 0
		;
createNode transform -n "distanceDimension1" -p "master_CTRL";
	setAttr ".v" no;
createNode distanceDimShape -n "distanceDimensionShape1" -p "distanceDimension1";
	setAttr -k off ".v";
createNode transform -n "leg_ctrls" -p "master_CTRL";
createNode transform -n "L_Leg_Controls" -p "leg_ctrls";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "L_IKFootControl" -p "L_Leg_Controls";
	addAttr -ci true -sn "Roll" -ln "Roll" -min -5 -max 10 -at "double";
	addAttr -ci true -sn "ToeBend" -ln "ToeBend" -at "double";
	addAttr -ci true -sn "BallTwist" -ln "BallTwist" -at "double";
	addAttr -ci true -sn "ToeTwist" -ln "ToeTwist" -at "double";
	addAttr -ci true -sn "autoStretch" -ln "autoStretch" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "stretch" -ln "stretch" -min -5 -max 10 -at "double";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".ro" 2;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0.48811435580648066 -0.0073923382804413889 -0.42857583634764412 ;
	setAttr ".sp" -type "double3" 0.48811435580648066 -0.0073923382804413889 -0.42857583634764412 ;
	setAttr ".smd" 1;
	setAttr -k on ".Roll";
	setAttr -k on ".ToeBend";
	setAttr -k on ".BallTwist";
	setAttr -k on ".ToeTwist";
	setAttr -k on ".autoStretch";
	setAttr -k on ".stretch" 1;
createNode nurbsCurve -n "L_IKFootControlShape" -p "L_IKFootControl";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 17 0 no 3
		18 -1 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17
		18
		0.69270094218311939 0.25313645021088249 -0.4589751822724536
		0.77460705450309708 0.00059555461865956616 -0.4589751822724536
		0.77460705450309708 0.00059555461865956616 0.81037185961624192
		0.69270094218311939 0.25313645021088249 0.81037185961624192
		0.69270094218311939 0.25313645021088249 -0.4589751822724536
		0.28845834312245638 0.25313645021088249 -0.4589751822724536
		0.2167660948900855 0.00059555461865956616 -0.4589751822724536
		0.77460705450309708 0.00059555461865956616 -0.4589751822724536
		0.2167660948900855 0.00059555461865956616 -0.4589751822724536
		0.2167660948900855 0.00059555461865956616 0.81037185961624192
		0.28845834312245638 0.25313645021088249 0.81037185961624192
		0.28845834312245638 0.25313645021088249 -0.4589751822724536
		0.28845834312245638 0.25313645021088249 0.81037185961624192
		0.69270094218311939 0.25313645021088249 0.81037185961624192
		0.77460705450309708 0.00059555461865956616 0.81037185961624192
		0.2167660948900855 0.00059555461865956616 0.81037185961624192
		0.77460705450309708 0.00059555461865956616 0.81037185961624192
		0.77460705450309708 0.00059555461865956616 -0.4589751822724536
		;
createNode transform -n "L_HeelRoll_Grp" -p "L_IKFootControl";
	setAttr ".rp" -type "double3" 0.48811435580648066 -0.0073923382804413889 -0.42857583634764412 ;
	setAttr ".sp" -type "double3" 0.48811435580648066 -0.0073923382804413889 -0.42857583634764412 ;
createNode transform -n "L_ToeRoll_Grp" -p "L_HeelRoll_Grp";
	setAttr ".rp" -type "double3" 0.48811435580648027 -0.0073967716481061286 0.81303340918315259 ;
	setAttr ".sp" -type "double3" 0.48811435580648027 -0.0073967716481061286 0.81303340918315259 ;
createNode transform -n "L_BallTwist_Grp" -p "L_ToeRoll_Grp";
	setAttr ".rp" -type "double3" 0.48811435580648016 0.083565488383177067 0.21216730126918776 ;
	setAttr ".sp" -type "double3" 0.48811435580648016 0.083565488383177067 0.21216730126918776 ;
createNode transform -n "L_BallRoll_Grp" -p "L_BallTwist_Grp";
	setAttr ".rp" -type "double3" 0.48811435580648022 0.090960770845413208 0.21216638395682735 ;
	setAttr ".sp" -type "double3" 0.48811435580648022 0.090960770845413208 0.21216638395682735 ;
createNode transform -n "L_BallIKHandle_Grp" -p "L_BallRoll_Grp";
	setAttr ".rp" -type "double3" 0.48811435580648016 0.083565488383177067 0.21216730126918776 ;
	setAttr ".sp" -type "double3" 0.48811435580648016 0.083565488383177067 0.21216730126918776 ;
createNode ikHandle -n "L_BallIKHandle" -p "L_BallIKHandle_Grp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.48811435580648016 0.083565488383177067 0.21216730126918776 ;
	setAttr ".pv" -type "double3" 1.1602212536140168e-009 0.12873384997591567 0.09768395912522404 ;
	setAttr ".roc" yes;
createNode transform -n "L_AnkleIKHandle_Grp" -p "L_BallRoll_Grp";
	setAttr ".rp" -type "double3" 0.48811435580648066 0.38722970592101535 -0.18801983460904614 ;
	setAttr ".sp" -type "double3" 0.48811435580648066 0.38722970592101535 -0.18801983460904614 ;
createNode ikHandle -n "L_AnkleIKHandle" -p "L_AnkleIKHandle_Grp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.48811435580648066 0.38722970592101535 -0.18801983460904614 ;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "L_AnkleIKHandle_poleVectorConstraint1" -p "L_AnkleIKHandle";
	addAttr -ci true -sn "w0" -ln "L_KneeW0" -bt "W000" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 4.0259384714858015e-010 -0.92868985221058353 0.038837690596523422 ;
	setAttr -k on ".w0";
createNode transform -n "L_BendToe_Grp" -p "L_BallTwist_Grp";
	setAttr ".rp" -type "double3" 0.48811435580648016 0.083565488383177067 0.21216730126918776 ;
	setAttr ".sp" -type "double3" 0.48811435580648016 0.083565488383177067 0.21216730126918776 ;
createNode transform -n "L_ToeIKHandle_Grp" -p "L_BendToe_Grp";
	setAttr ".rp" -type "double3" 0.48811435580648027 0.083565488383176983 0.81037185961624192 ;
	setAttr ".sp" -type "double3" 0.48811435580648027 0.083565488383176983 0.81037185961624192 ;
createNode ikHandle -n "L_ToeIKHandle" -p "L_ToeIKHandle_Grp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.48811435580648027 0.083565488383176983 0.81037185961624192 ;
	setAttr ".pv" -type "double3" 1.1602213045967468e-009 0.1616 2.3341378947013831e-017 ;
	setAttr ".roc" yes;
createNode transform -n "L_Knee_space" -p "L_Leg_Controls";
	setAttr ".t" -type "double3" -1.1102230246251565e-016 -2.2204460492503131e-016 
		1.8415709329352992 ;
	setAttr ".rp" -type "double3" 0.48811435699462885 1.2041733566473483 0.038837690596523422 ;
	setAttr ".sp" -type "double3" 0.48811435699462885 1.2041733566473483 0.038837690596523422 ;
createNode transform -n "L_Knee" -p "L_Knee_space";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 0 -3.1321070624201752e-005 0 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0.48811435699462885 1.2041733566473483 0.038837690596523422 ;
	setAttr ".sp" -type "double3" 0.48811435699462885 1.2041733566473483 0.038837690596523422 ;
createNode nurbsCurve -n "curveShape9" -p "L_Knee";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 32 0 no 3
		33 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32
		33
		0.48811435699462885 1.2041733566473483 0.12576871094966205
		0.48811435699462885 1.2476388668239176 0.11412212749785031
		0.48811435699462885 1.2794577935486751 0.082303200773092736
		0.48811435699462885 1.2911043770004869 0.038837690596523422
		0.48811435699462885 1.2794577935486751 -0.0046278195800458916
		0.48811435699462885 1.2476388668239176 -0.036446746304803462
		0.48811435699462885 1.2041733566473483 -0.048093329756615205
		0.48811435699462885 1.160707846470779 -0.036446746304803462
		0.48811435699462885 1.1288889197460215 -0.0046278195800458916
		0.48811435699462885 1.1172423362942097 0.038837690596523422
		0.48811435699462885 1.1288889197460215 0.082303200773092736
		0.48811435699462885 1.160707846470779 0.11412212749785031
		0.48811435699462885 1.2041733566473483 0.12576871094966205
		0.54958389000347563 1.2041733566473483 0.10030722360537023
		0.57504537734776751 1.2041733566473483 0.038837690596523422
		0.54958389000347563 1.2041733566473483 -0.022631842412323376
		0.48811435699462885 1.2041733566473483 -0.048093329756615205
		0.42664482398578207 1.2041733566473483 -0.022631842412323376
		0.4011833366414902 1.2041733566473483 0.038837690596523422
		0.41282992009330199 1.2476388668239176 0.038837690596523422
		0.4446488468180595 1.2794577935486751 0.038837690596523422
		0.48811435699462885 1.2911043770004869 0.038837690596523422
		0.53157986717119821 1.2794577935486751 0.038837690596523422
		0.56339879389595571 1.2476388668239176 0.038837690596523422
		0.57504537734776751 1.2041733566473483 0.038837690596523422
		0.56339879389595571 1.160707846470779 0.038837690596523422
		0.53157986717119821 1.1288889197460215 0.038837690596523422
		0.48811435699462885 1.1172423362942097 0.038837690596523422
		0.4446488468180595 1.1288889197460215 0.038837690596523422
		0.41282992009330199 1.160707846470779 0.038837690596523422
		0.4011833366414902 1.2041733566473483 0.038837690596523422
		0.42664482398578207 1.2041733566473483 0.10030722360537023
		0.48811435699462885 1.2041733566473483 0.12576871094966205
		;
createNode transform -n "R_Leg_Controls" -p "leg_ctrls";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "R_IKFootControl" -p "R_Leg_Controls";
	addAttr -ci true -sn "Roll" -ln "Roll" -min -5 -max 10 -at "double";
	addAttr -ci true -sn "ToeBend" -ln "ToeBend" -at "double";
	addAttr -ci true -sn "BallTwist" -ln "BallTwist" -at "double";
	addAttr -ci true -sn "ToeTwist" -ln "ToeTwist" -at "double";
	addAttr -ci true -sn "autoStretch" -ln "autoStretch" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "stretch" -ln "stretch" -min -5 -max 10 -at "double";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".ro" 2;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -0.48811399885667917 -0.0073923382804413889 -0.42857583634764412 ;
	setAttr ".sp" -type "double3" -0.48811399885667917 -0.0073923382804413889 -0.42857583634764412 ;
	setAttr ".smd" 1;
	setAttr -k on ".Roll";
	setAttr -k on ".ToeBend";
	setAttr -k on ".BallTwist";
	setAttr -k on ".ToeTwist";
	setAttr -k on ".autoStretch";
	setAttr -k on ".stretch" 1;
createNode nurbsCurve -n "R_IKFootControlShape" -p "R_IKFootControl";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 17 0 no 3
		18 -1 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17
		18
		-0.28845872642506881 0.25302525447561053 -0.4589749775372004
		-0.21676674139355684 0.00048509913580163655 -0.4589749775372004
		-0.21676674139355684 0.00048509913580163655 0.81037216054072081
		-0.28845872642506881 0.25302525447561053 0.81037216054072081
		-0.28845872642506881 0.25302525447561053 -0.4589749775372004
		-0.69269984498090353 0.25302525447561053 -0.4589749775372004
		-0.77460595730088111 0.00048509913580163655 -0.4589749775372004
		-0.21676674139355684 0.00048509913580163655 -0.4589749775372004
		-0.77460595730088111 0.00048509913580163655 -0.4589749775372004
		-0.77460595730088111 0.00048509913580163655 0.81037216054072081
		-0.69269984498090353 0.25302525447561053 0.81037216054072081
		-0.69269984498090353 0.25302525447561053 -0.4589749775372004
		-0.69269984498090353 0.25302525447561053 0.81037216054072081
		-0.28845872642506881 0.25302525447561053 0.81037216054072081
		-0.21676674139355684 0.00048509913580163655 0.81037216054072081
		-0.77460595730088111 0.00048509913580163655 0.81037216054072081
		-0.21676674139355684 0.00048509913580163655 0.81037216054072081
		-0.21676674139355684 0.00048509913580163655 -0.4589749775372004
		;
createNode transform -n "R_HeelRoll_Grp" -p "R_IKFootControl";
	setAttr ".rp" -type "double3" -0.48811399885667917 -0.0073923382804413889 -0.42857583634764412 ;
	setAttr ".sp" -type "double3" -0.48811399885667917 -0.0073923382804413889 -0.42857583634764412 ;
createNode transform -n "R_ToeRoll_Grp" -p "R_HeelRoll_Grp";
	setAttr ".rp" -type "double3" -0.4881139988566775 -0.0073967716481061286 0.81303340918315259 ;
	setAttr ".sp" -type "double3" -0.4881139988566775 -0.0073967716481061286 0.81303340918315259 ;
createNode transform -n "R_BallTwist_Grp" -p "R_ToeRoll_Grp";
	setAttr ".rp" -type "double3" -0.48811399885667772 0.083455032900319137 0.21216730126918842 ;
	setAttr ".sp" -type "double3" -0.48811399885667772 0.083455032900319137 0.21216730126918842 ;
createNode transform -n "R_BallRoll_Grp" -p "R_BallTwist_Grp";
	setAttr ".rp" -type "double3" -0.48811399885667772 0.090960770845413208 0.21216730126918842 ;
	setAttr ".sp" -type "double3" -0.48811399885667772 0.090960770845413208 0.21216730126918842 ;
createNode transform -n "R_BallIKHandle_Grp" -p "R_BallRoll_Grp";
	setAttr ".rp" -type "double3" -0.48811399885667772 0.083455032900319137 0.21216730126918842 ;
	setAttr ".sp" -type "double3" -0.48811399885667772 0.083455032900319137 0.21216730126918842 ;
createNode ikHandle -n "R_BallIKHandle" -p "R_BallIKHandle_Grp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.48811399885667772 0.083455032900319137 0.21216730126918842 ;
	setAttr ".pv" -type "double3" 0.1616 3.0273034458142427e-016 -3.6354563035917982e-016 ;
	setAttr ".roc" yes;
createNode transform -n "R_AnkleIKHandle_Grp" -p "R_BallRoll_Grp";
	setAttr ".rp" -type "double3" -0.48811399885667917 0.38711933795357567 -0.18801999999999996 ;
	setAttr ".sp" -type "double3" -0.48811399885667917 0.38711933795357567 -0.18801999999999996 ;
createNode ikHandle -n "R_AnkleIKHandle" -p "R_AnkleIKHandle_Grp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.48811399885667917 0.38711933795357567 -0.18801999999999996 ;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "R_AnkleIKHandle_poleVectorConstraint1" -p "R_AnkleIKHandle";
	addAttr -ci true -sn "w0" -ln "R_KneeW0" -bt "W000" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 6.3323957188998747e-010 -0.92870640681904693 0.038492330928853014 ;
	setAttr -k on ".w0";
createNode transform -n "R_BendToe_Grp" -p "R_BallTwist_Grp";
	setAttr ".rp" -type "double3" -0.48811399885667772 0.083455032900319137 0.21216730126918842 ;
	setAttr ".sp" -type "double3" -0.48811399885667772 0.083455032900319137 0.21216730126918842 ;
createNode transform -n "R_ToeIKHandle_Grp" -p "R_BendToe_Grp";
	setAttr ".rp" -type "double3" -0.4881139988566775 0.083455032900319207 0.81037216054072081 ;
	setAttr ".sp" -type "double3" -0.4881139988566775 0.083455032900319207 0.81037216054072081 ;
createNode ikHandle -n "R_ToeIKHandle" -p "R_ToeIKHandle_Grp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.4881139988566775 0.083455032900319207 0.81037216054072081 ;
	setAttr ".pv" -type "double3" 0.16159999999999997 -1.0302255383208257e-017 -5.5983306840710431e-017 ;
	setAttr ".roc" yes;
createNode transform -n "R_Knee_space" -p "R_Leg_Controls";
	setAttr ".t" -type "double3" -1.1102230246251565e-016 -2.2204460492503131e-016 
		1.8415709329352992 ;
	setAttr ".rp" -type "double3" -0.48811399936676031 1.204155044409871 0.038492330928853014 ;
	setAttr ".sp" -type "double3" -0.48811399936676031 1.204155044409871 0.038492330928853014 ;
createNode transform -n "R_Knee" -p "R_Knee_space";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" 0 -3.1321070624201752e-005 0 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -0.48811399936676031 1.204155044409871 0.038492330928853014 ;
	setAttr ".sp" -type "double3" -0.48811399936676031 1.204155044409871 0.038492330928853014 ;
createNode nurbsCurve -n "curveShape9" -p "R_Knee";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 32 0 no 3
		33 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32
		33
		-0.48811399936676031 1.204155044409871 0.12542335128199164
		-0.48811399936676031 1.2476205545864403 0.1137767678301799
		-0.48811399936676031 1.2794394813111978 0.081957841105422327
		-0.48811399936676031 1.2910860647630096 0.038492330928853014
		-0.48811399936676031 1.2794394813111978 -0.0049731792477163
		-0.48811399936676031 1.2476205545864403 -0.036792105972473871
		-0.48811399936676031 1.204155044409871 -0.048438689424285614
		-0.48811399936676031 1.1606895342333017 -0.036792105972473871
		-0.48811399936676031 1.1288706075085442 -0.0049731792477163
		-0.48811399936676031 1.1172240240567324 0.038492330928853014
		-0.48811399936676031 1.1288706075085442 0.081957841105422327
		-0.48811399936676031 1.1606895342333017 0.1137767678301799
		-0.48811399936676031 1.204155044409871 0.12542335128199164
		-0.42664446635791353 1.204155044409871 0.099961863937699819
		-0.40118297901362165 1.204155044409871 0.038492330928853014
		-0.42664446635791353 1.204155044409871 -0.022977202079993785
		-0.48811399936676031 1.204155044409871 -0.048438689424285614
		-0.54958353237560709 1.204155044409871 -0.022977202079993785
		-0.57504501971989896 1.204155044409871 0.038492330928853014
		-0.56339843626808717 1.2476205545864403 0.038492330928853014
		-0.53157950954332966 1.2794394813111978 0.038492330928853014
		-0.48811399936676031 1.2910860647630096 0.038492330928853014
		-0.44464848919019101 1.2794394813111978 0.038492330928853014
		-0.41282956246543345 1.2476205545864403 0.038492330928853014
		-0.40118297901362165 1.204155044409871 0.038492330928853014
		-0.41282956246543345 1.1606895342333017 0.038492330928853014
		-0.44464848919019101 1.1288706075085442 0.038492330928853014
		-0.48811399936676031 1.1172240240567324 0.038492330928853014
		-0.53157950954332966 1.1288706075085442 0.038492330928853014
		-0.56339843626808717 1.1606895342333017 0.038492330928853014
		-0.57504501971989896 1.204155044409871 0.038492330928853014
		-0.54958353237560709 1.204155044409871 0.099961863937699819
		-0.48811399936676031 1.204155044409871 0.12542335128199164
		;
createNode transform -n "L_AnkleIKHandle_hideme_extension_start" -p "DoNotTouch";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "L_AnkleIKHandle_hideme_extension_end" -p "L_AnkleIKHandle_hideme_extension_start";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode pointConstraint -n "null2_pointConstraint1" -p "L_AnkleIKHandle_hideme_extension_end";
	addAttr -ci true -sn "w0" -ln "L_AnkleIKHandleW0" -bt "W000" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -7.8555434379623534e-010 -1.7456335029369163 -0.18801983460904614 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "null1_pointConstraint1" -p "L_AnkleIKHandle_hideme_extension_start";
	addAttr -ci true -sn "w0" -ln "L_Femur_IKLegW0" -bt "W000" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 0.488114356592035 2.1328632088579318 8.1315162936412833e-019 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "null1_aimConstraint1" -p "L_AnkleIKHandle_hideme_extension_start";
	addAttr -ci true -sn "w0" -ln "L_AnkleIKHandleW0" -bt "W000" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".a" -type "double3" 0 1 0 ;
	setAttr ".rsrr" -type "double3" -173.85244851703197 4.7739148974100646e-007 2.563546150545794e-008 ;
	setAttr -k on ".w0";
createNode transform -n "R_AnkleIKHandle_hideme_extension_start" -p "DoNotTouch";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "R_AnkleIKHandle_hideme_extension_end" -p "R_AnkleIKHandle_hideme_extension_start";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode pointConstraint -n "null4_pointConstraint1" -p "R_AnkleIKHandle_hideme_extension_end";
	addAttr -ci true -sn "w0" -ln "R_AnkleIKHandleW0" -bt "W000" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 1.1433207158795256e-009 -1.7457421132753423 -0.18801999999999996 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "null3_pointConstraint1" -p "R_AnkleIKHandle_hideme_extension_start";
	addAttr -ci true -sn "w0" -ln "R_Femur_IKLegW0" -bt "W000" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -0.48811399999999988 2.1328614512289179 -1.0842021724855044e-019 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "null3_aimConstraint1" -p "R_AnkleIKHandle_hideme_extension_start";
	addAttr -ci true -sn "w0" -ln "R_AnkleIKHandleW0" -bt "W000" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".a" -type "double3" 0 1 0 ;
	setAttr ".rsrr" -type "double3" -173.85282268912741 -6.9481035321909944e-007 -3.7308369012353473e-008 ;
	setAttr -k on ".w0";
createNode transform -n "Tail_DO_NOT_TOUCH" -p "DoNotTouch";
	setAttr ".rp" -type "double3" 8.6019837042786273e-017 3.0012892283991257 -0.98212150129760412 ;
	setAttr ".sp" -type "double3" 8.6019837042786273e-017 3.0012892283991257 -0.98212150129760412 ;
createNode transform -n "tailGroup" -p "Tail_DO_NOT_TOUCH";
createNode joint -n "fkTail1" -p "tailGroup";
	setAttr ".ove" yes;
	setAttr ".ovv" no;
	setAttr ".t" -type "double3" 8.6019837042786273e-017 3.0012892283991262 -0.98212150129760434 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 89.999999999999986 0 ;
	setAttr -cb off ".radi" 0.5;
createNode joint -n "fkTail2" -p "fkTail1";
	setAttr ".t" -type "double3" 0.55638220230892688 0 -1.2974661460067181e-016 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb off ".radi" 0.5;
createNode joint -n "fkTail3" -p "fkTail2";
	setAttr ".t" -type "double3" 0.67687587114291814 0 -1.5029663539121586e-016 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb off ".radi" 0.5;
createNode joint -n "fkTail4" -p "fkTail3";
	setAttr ".t" -type "double3" 0.75944086390054322 0 -1.6862974658872049e-016 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb off ".radi" 0.5;
createNode joint -n "fkTail5" -p "fkTail4";
	setAttr ".t" -type "double3" 0.71652052779943887 4.4408920985006262e-016 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 -89.999999999999986 0 ;
	setAttr -cb off ".radi" 0.5;
createNode orientConstraint -n "fkTail4_orientConstraint1" -p "fkTail4";
	addAttr -ci true -sn "w0" -ln "TailCTRL4W0" -bt "W000" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 0 -89.999999999999986 0 ;
	setAttr ".o" -type "double3" 0 89.999999999999986 0 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "fkTail3_orientConstraint1" -p "fkTail3";
	addAttr -ci true -sn "w0" -ln "TailCTRL3W0" -bt "W000" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 0 -89.999999999999986 0 ;
	setAttr ".o" -type "double3" 0 89.999999999999986 0 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "fkTail2_orientConstraint1" -p "fkTail2";
	addAttr -ci true -sn "w0" -ln "TailCTRL_W0" -bt "W000" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 0 -89.999999999999986 0 ;
	setAttr ".o" -type "double3" 0 89.999999999999986 0 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "fkTail1_orientConstraint1" -p "fkTail1";
	addAttr -ci true -sn "w0" -ln "TailCTRL1W0" -bt "W000" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 0 -89.999999999999986 0 ;
	setAttr ".o" -type "double3" 0 89.999999999999986 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "tailGroup_parentConstraint1" -p "tailGroup";
	addAttr -ci true -k true -sn "w0" -ln "nurbsSphere8W0" -bt "W000" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 5.5511151231257827e-016 -2.9999999999999836 
		1.0495792056314628 ;
	setAttr ".rst" -type "double3" 0 -4.4408920985006262e-016 2.2204460492503131e-016 ;
	setAttr -k on ".w0";
createNode transform -n "CTRLgroup" -p "Tail_DO_NOT_TOUCH";
createNode transform -n "TailCTRL1" -p "CTRLgroup";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".rp" -type "double3" 8.6019837042786248e-017 3.0012892283991262 -0.98212150129760434 ;
	setAttr ".sp" -type "double3" 8.6019837042786248e-017 3.0012892283991262 -0.98212150129760434 ;
createNode nurbsCurve -n "TailCTRLShape1" -p "TailCTRL1";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.40297129409971844 3.4042605224988436 -1.3311594701505229
		3.9857408153321383e-017 3.5711766977619841 -1.3311594701505234
		-0.40297129409971788 3.4042605224988436 -1.3311594701505229
		-0.56988746936285828 3.0012892283991257 -1.3311594701505229
		-0.40297129409971799 2.5983179342994078 -1.3311594701505229
		-8.7024453069113809e-017 2.4314017590362673 -1.3311594701505229
		0.40297129409971788 2.5983179342994078 -1.3311594701505229
		0.5698874693628585 3.0012892283991253 -1.3311594701505229
		0.40297129409971844 3.4042605224988436 -1.3311594701505229
		3.9857408153321383e-017 3.5711766977619841 -1.3311594701505234
		-0.40297129409971788 3.4042605224988436 -1.3311594701505229
		;
createNode transform -n "TailCTRL_" -p "TailCTRL1";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 7.9814888741118946e-017 3.0012892283991262 -1.5385037036065312 ;
	setAttr ".sp" -type "double3" 7.9814888741118946e-017 3.0012892283991262 -1.5385037036065312 ;
createNode nurbsCurve -n "TailCTRL_Shape" -p "TailCTRL_";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.46511665422894388 3.4664058826280688 -1.8749313712812468
		2.9830396138549989e-017 3.659063508895295 -1.8749313712812468
		-0.46511665422894333 3.4664058826280693 -1.8749313712812468
		-0.65777428049616904 3.0012892283991257 -1.8749313712812468
		-0.46511665422894344 2.5361725741701826 -1.8749313712812468
		-1.16618910892031e-016 2.3435149479029564 -1.8749313712812463
		0.46511665422894322 2.5361725741701822 -1.8749313712812468
		0.65777428049616926 3.0012892283991253 -1.8749313712812468
		0.46511665422894388 3.4664058826280688 -1.8749313712812468
		2.9830396138549989e-017 3.659063508895295 -1.8749313712812468
		-0.46511665422894333 3.4664058826280693 -1.8749313712812468
		;
createNode transform -n "TailCTRL3" -p "TailCTRL_";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 1.0733730210867732e-016 3.0012892283991262 -2.2153795747494494 ;
	setAttr ".sp" -type "double3" 1.0733730210867732e-016 3.0012892283991262 -2.2153795747494494 ;
createNode nurbsCurve -n "TailCTRLShape3" -p "TailCTRL3";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.53684593718875051 3.5381351655878759 -2.5025625971795558
		1.8257040049642687e-017 3.7605040336763511 -2.5025625971795558
		-0.53684593718874984 3.5381351655878763 -2.5025625971795558
		-0.75921480527722485 3.0012892283991266 -2.5025625971795558
		-0.53684593718874996 2.4644432912103764 -2.5025625971795558
		-1.5077736189799425e-016 2.2420744231219012 -2.5025625971795558
		0.53684593718874984 2.464443291210376 -2.5025625971795558
		0.75921480527722507 3.0012892283991257 -2.5025625971795558
		0.53684593718875051 3.5381351655878759 -2.5025625971795558
		1.8257040049642687e-017 3.7605040336763511 -2.5025625971795558
		-0.53684593718874984 3.5381351655878763 -2.5025625971795558
		;
createNode transform -n "TailCTRL4" -p "TailCTRL3";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 7.9814888741118848e-017 3.0012892283991262 -2.974820438649993 ;
	setAttr ".sp" -type "double3" 7.9814888741118848e-017 3.0012892283991262 -2.974820438649993 ;
createNode nurbsCurve -n "TailCTRLShape4" -p "TailCTRL4";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.56137587967788272 3.5626651080770073 -3.2269857512695177
		1.4299189816757673e-017 3.7951946110287134 -3.2269857512695177
		-0.56137587967788194 3.5626651080770078 -3.2269857512695177
		-0.79390538262958754 3.0012892283991262 -3.2269857512695181
		-0.56137587967788205 2.4399133487212437 -3.2269857512695177
		-1.6245885102097395e-016 2.2073838457695381 -3.2269857512695177
		0.56137587967788194 2.4399133487212437 -3.2269857512695177
		0.79390538262958776 3.0012892283991253 -3.2269857512695181
		0.56137587967788272 3.5626651080770073 -3.2269857512695177
		1.4299189816757673e-017 3.7951946110287134 -3.2269857512695177
		-0.56137587967788194 3.5626651080770078 -3.2269857512695177
		;
createNode parentConstraint -n "CTRLgroup_parentConstraint1" -p "CTRLgroup";
	addAttr -ci true -k true -sn "w0" -ln "tailSpacer3W0" -bt "W000" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 5.5511151231257827e-016 -2.9999999999999836 
		1.0495792056314628 ;
	setAttr ".rst" -type "double3" 0 -4.4408920985006262e-016 2.2204460492503131e-016 ;
	setAttr -k on ".w0";
createNode transform -n "tail_spacer" -p "Tail_DO_NOT_TOUCH";
	setAttr ".t" -type "double3" -4.163336342344337e-016 3.0020293387233989 -0.99694961309433006 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 22.551967150027711 -67.499999999999972 180 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0 4.506037150961858e-019 0 ;
	setAttr ".rpt" -type "double3" 0 -4.506037150961857e-019 -4.506037150961858e-019 ;
	setAttr ".sp" -type "double3" 0 4.506037150961858e-019 0 ;
createNode nurbsSurface -n "tail_spacerShape" -p "tail_spacer";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovv" no;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		9 0 0 0 1 2 3 4 4 4
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		
		77
		4.0348530153553676e-018 -0.04204654739360171 -1.4392607822934024e-016
		4.0348530153553676e-018 -0.04204654739360171 -1.4392607822934024e-016
		4.0348530153553676e-018 -0.04204654739360171 -1.4392607822934024e-016
		4.0348530153553676e-018 -0.04204654739360171 -1.4392607822934024e-016
		4.0348530153553676e-018 -0.04204654739360171 -1.4392607822934024e-016
		4.0348530153553676e-018 -0.04204654739360171 -1.4392607822934024e-016
		4.0348530153553676e-018 -0.04204654739360171 -1.4392607822934024e-016
		4.0348530153553676e-018 -0.04204654739360171 -1.4392607822934024e-016
		4.0348530153553676e-018 -0.04204654739360171 -1.4392607822934024e-016
		4.0348530153553676e-018 -0.04204654739360171 -1.4392607822934024e-016
		4.0348530153553676e-018 -0.04204654739360171 -1.4392607822934024e-016
		0.0084058108206783236 -0.04204654739360171 -0.008405810820678478
		0.011887611665345812 -0.04204654739360171 -1.3589742125887328e-016
		0.0084058108206783323 -0.04204654739360171 0.0084058108206781952
		5.1025334453160182e-018 -0.04204654739360171 0.011887611665345682
		-0.008405810820678327 -0.04204654739360171 0.0084058108206782004
		-0.011887611665345814 -0.04204654739360171 -1.3045610437772163e-016
		-0.008405810820678334 -0.04204654739360171 -0.0084058108206784624
		-7.7821428256480028e-018 -0.04204654739360171 -0.011887611665345951
		0.0084058108206783236 -0.04204654739360171 -0.008405810820678478
		0.011887611665345812 -0.04204654739360171 -1.3589742125887328e-016
		0.0084058108206783323 -0.04204654739360171 0.0084058108206781952
		0.02591875235589737 -0.032948163324166072 -0.025918752355897551
		0.036654651101499694 -0.032948163324166072 -1.2886429218257086e-016
		0.025918752355897388 -0.032948163324166072 0.025918752355897263
		9.1717636361620862e-018 -0.032948163324166072 0.036654651101499569
		-0.025918752355897388 -0.032948163324166072 0.02591875235589727
		-0.036654651101499708 -0.032948163324166072 -1.2520946769158692e-016
		-0.025918752355897391 -0.032948163324166072 -0.025918752355897516
		-1.7434158950665248e-017 -0.032948163324166072 -0.03665465110149984
		0.02591875235589737 -0.032948163324166072 -0.025918752355897551
		0.036654651101499694 -0.032948163324166072 -1.2886429218257086e-016
		0.025918752355897388 -0.032948163324166072 0.025918752355897263
		0.036462868808300603 1.4645714677608211e-016 -0.036462868808300797
		0.051566283591729635 1.4619321618973419e-016 -1.2108380823247913e-016
		0.036462868808300616 1.4592928560338626e-016 0.036462868808300498
		9.7577523377482275e-018 1.4581996197499586e-016 0.051566283591729503
		-0.036462868808300623 1.4592928560338626e-016 0.036462868808300498
		-0.051566283591729642 1.4619321618973419e-016 -1.2223257917973498e-016
		-0.036462868808300623 1.4645714677608211e-016 -0.036462868808300748
		-2.1381407375545687e-017 1.4656647040447253e-016 -0.051566283591729781
		0.036462868808300603 1.4645714677608211e-016 -0.036462868808300797
		0.051566283591729635 1.4619321618973419e-016 -1.2108380823247913e-016
		0.036462868808300616 1.4592928560338626e-016 0.036462868808300498
		0.025918752355897388 0.03294816332416637 -0.025918752355897551
		0.036654651101499708 0.03294816332416637 -1.2035803850796289e-016
		0.025918752355897391 0.03294816332416637 0.025918752355897273
		4.7003629769092336e-018 0.03294816332416637 0.036654651101499583
		-0.025918752355897395 0.03294816332416637 0.025918752355897273
		-0.036654651101499715 0.03294816332416637 -1.256460153354847e-016
		-0.025918752355897395 0.03294816332416637 -0.02591875235589753
		-1.2962758291412393e-017 0.03294816332416637 -0.036654651101499847
		0.025918752355897388 0.03294816332416637 -0.025918752355897551
		0.036654651101499708 0.03294816332416637 -1.2035803850796289e-016
		0.025918752355897391 0.03294816332416637 0.025918752355897273
		0.008405810820678334 0.042046547393601974 -0.0084058108206784728
		0.011887611665345818 0.042046547393601974 -1.2504223049292629e-016
		0.0084058108206783323 0.042046547393601974 0.0084058108206782091
		-6.0361041118119194e-019 0.042046547393601974 0.011887611665345691
		-0.0084058108206783375 0.042046547393601974 0.0084058108206782039
		-0.011887611665345819 0.042046547393601974 -1.3101320132476907e-016
		-0.0084058108206783323 0.042046547393601974 -0.0084058108206784676
		-2.0759989691507936e-018 0.042046547393601974 -0.011887611665345951
		0.008405810820678334 0.042046547393601974 -0.0084058108206784728
		0.011887611665345818 0.042046547393601974 -1.2504223049292629e-016
		0.0084058108206783323 0.042046547393601974 0.0084058108206782091
		7.3159619083201281e-018 0.042046547393601981 -1.3398843418214483e-016
		7.3159619083201281e-018 0.042046547393601981 -1.3398843418214483e-016
		7.3159619083201281e-018 0.042046547393601981 -1.3398843418214483e-016
		7.3159619083201281e-018 0.042046547393601981 -1.3398843418214483e-016
		7.3159619083201281e-018 0.042046547393601981 -1.3398843418214483e-016
		7.3159619083201281e-018 0.042046547393601981 -1.3398843418214483e-016
		7.3159619083201281e-018 0.042046547393601981 -1.3398843418214483e-016
		7.3159619083201281e-018 0.042046547393601981 -1.3398843418214483e-016
		7.3159619083201281e-018 0.042046547393601981 -1.3398843418214483e-016
		7.3159619083201281e-018 0.042046547393601981 -1.3398843418214483e-016
		7.3159619083201281e-018 0.042046547393601981 -1.3398843418214483e-016
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "tail_spacer2" -p "Tail_DO_NOT_TOUCH";
	setAttr ".t" -type "double3" -5.8286708792820718e-016 3.0020293387233981 -1.083637455821721 ;
createNode nurbsSurface -n "tail_spacerShape2" -p "tail_spacer2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovv" no;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".tw" yes;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "tail_geometry" -p "Tail_DO_NOT_TOUCH";
createNode transform -n "tail4" -p "tail_geometry";
	setAttr ".ove" yes;
	setAttr ".rp" -type "double3" -5.6823841690645625e-017 3.0012892283991257 -2.9748204386499917 ;
	setAttr ".sp" -type "double3" -5.6823841690645625e-017 3.0012892283991257 -2.9748204386499917 ;
createNode nurbsSurface -n "tailShape4" -p "tail4";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".dvu" 1;
	setAttr ".dvv" 1;
	setAttr ".cpr" 7;
	setAttr ".cps" 2;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		15 0 0 0 1 2 3 4 5 6 7 8 9 10 10 10
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		
		143
		-9.1716368600759007e-017 2.9992917966389205 -3.6918734557801147
		-9.1716368600759007e-017 2.9992917966389205 -3.6918734557801147
		-9.1716368600759007e-017 2.9992917966389205 -3.6918734557801147
		-9.1716368600759007e-017 2.9992917966389205 -3.6918734557801147
		-9.1716368600759007e-017 2.9992917966389205 -3.6918734557801147
		-9.1716368600759007e-017 2.9992917966389205 -3.6918734557801147
		-9.1716368600759007e-017 2.9992917966389205 -3.6918734557801147
		-9.1716368600759007e-017 2.9992917966389205 -3.6918734557801147
		-9.1716368600759007e-017 2.9992917966389205 -3.6918734557801147
		-9.1716368600759007e-017 2.9992917966389205 -3.6918734557801147
		-9.1716368600759007e-017 2.9992917966389205 -3.6918734557801147
		-0.0082795589542034188 2.9910122376847172 -3.6918734557801147
		-0.011709064563502031 2.9992917966389205 -3.6918734557801147
		-0.0082795589542034292 3.0075713555931238 -3.6918734557801147
		-9.1084490924202441e-017 3.0110008612024224 -3.6918734557801147
		0.0082795589542032089 3.0075713555931238 -3.6918734557801147
		0.011709064563501822 2.9992917966389205 -3.6918734557801147
		0.0082795589542032175 2.9910122376847172 -3.6918734557801147
		-7.0264574068132414e-017 2.9875827320754187 -3.6918734557801147
		-0.0082795589542034188 2.9910122376847172 -3.6918734557801147
		-0.011709064563502031 2.9992917966389205 -3.6918734557801147
		-0.0082795589542034292 3.0075713555931238 -3.6918734557801147
		-0.024955387627972468 2.9743364090109483 -3.6886094602500861
		-0.035292247637756381 2.9992917966389205 -3.6886094602500861
		-0.024955387627972482 3.0242471842668928 -3.6886094602500861
		-9.5656696357984619e-017 3.0345840442766767 -3.6886094602500861
		0.02495538762797225 3.0242471842668928 -3.6886094602500861
		0.035292247637756173 2.9992917966389205 -3.6886094602500861
		0.024955387627972263 2.9743364090109483 -3.6886094602500861
		-6.1051744418241911e-017 2.9639995490011644 -3.6886094602500861
		-0.024955387627972468 2.9743364090109483 -3.6886094602500861
		-0.035292247637756381 2.9992917966389205 -3.6886094602500861
		-0.024955387627972482 3.0242471842668928 -3.6886094602500861
		-0.084100051524565983 2.9151917451143547 -3.6458357770412619
		-0.11893543346231722 2.9992917966389205 -3.6458357770412619
		-0.084100051524566011 3.0833918481634868 -3.6458357770412619
		-8.1268228566888335e-017 3.1182272301012381 -3.6458357770412619
		0.084100051524565816 3.0833918481634868 -3.6458357770412619
		0.11893543346231705 2.9992917966389205 -3.6458357770412619
		0.084100051524565858 2.9151917451143547 -3.6458357770412619
		1.0601563441658213e-017 2.8803563631766034 -3.6458357770412619
		-0.084100051524565983 2.9151917451143547 -3.6458357770412619
		-0.11893543346231722 2.9992917966389205 -3.6458357770412619
		-0.084100051524566011 3.0833918481634868 -3.6458357770412619
		-0.18697177541444177 2.8123200212244783 -3.5422279520107902
		-0.26441802057208036 2.9992917966389205 -3.5422279520107902
		-0.18697177541444221 3.1862635720533623 -3.5422279520107902
		-1.0376882162939582e-016 3.2637098172110006 -3.5422279520107902
		0.18697177541444202 3.1862635720533623 -3.5422279520107902
		0.2644180205720798 2.9992917966389205 -3.5422279520107902
		0.18697177541444207 2.8123200212244788 -3.5422279520107902
		7.9430027537730266e-017 2.7348737760668405 -3.5422279520107902
		-0.18697177541444177 2.8123200212244783 -3.5422279520107902
		-0.26441802057208036 2.9992917966389205 -3.5422279520107902
		-0.18697177541444221 3.1862635720533623 -3.5422279520107902
		-0.28738864125970648 2.7119031553792143 -3.3603177653221485
		-0.40642891414145316 2.9992917966389214 -3.3603177653221485
		-0.2873886412597067 3.2866804378986281 -3.3603177653221485
		-2.0759222684939804e-016 3.4057207107803746 -3.3603177653221485
		0.28738864125970642 3.2866804378986281 -3.3603177653221485
		0.40642891414145293 2.9992917966389214 -3.3603177653221485
		0.28738864125970642 2.7119031553792152 -3.3603177653221485
		5.4008468786240855e-017 2.5928628824974687 -3.3603177653221485
		-0.28738864125970648 2.7119031553792143 -3.3603177653221485
		-0.40642891414145316 2.9992917966389214 -3.3603177653221485
		-0.2873886412597067 3.2866804378986281 -3.3603177653221485
		-0.34647206792883295 2.6528197287100888 -3.1297566274828825
		-0.48998549744840858 2.9992917966389219 -3.1297566274828825
		-0.34647206792883301 3.3457638645677545 -3.1297566274828825
		-2.3576516778356741e-016 3.48927729408733 -3.1297566274828825
		0.34647206792883262 3.3457638645677545 -3.1297566274828825
		0.48998549744840814 2.9992917966389219 -3.1297566274828825
		0.34647206792883262 2.6528197287100892 -3.1297566274828825
		6.0120740594961156e-017 2.5093062991905133 -3.1297566274828825
		-0.34647206792883295 2.6528197287100888 -3.1297566274828825
		-0.48998549744840858 2.9992917966389219 -3.1297566274828825
		-0.34647206792883301 3.3457638645677545 -3.1297566274828825
		-0.33704335779530387 2.6622484388436178 -2.9631728198425722
		-0.47665128770188681 2.9992917966389219 -2.9631728198425722
		-0.33704335779530387 3.3363351544342255 -2.9631728198425713
		-2.4777726923851484e-016 3.4759430843408081 -2.9631728198425713
		0.33704335779530342 3.3363351544342255 -2.9631728198425713
		0.47665128770188647 2.9992917966389219 -2.9631728198425713
		0.33704335779530342 2.6622484388436187 -2.9631728198425722
		2.1090580762142933e-017 2.5226405089370352 -2.9631728198425722
		-0.33704335779530387 2.6622484388436178 -2.9631728198425722
		-0.47665128770188681 2.9992917966389219 -2.9631728198425722
		-0.33704335779530387 3.3363351544342255 -2.9631728198425713
		-0.31480641130907405 2.684485385329848 -2.8702656790000174
		-0.44520349639529583 2.9992917966389228 -2.8702656790000174
		-0.31480641130907416 3.3140982079479966 -2.8702656790000174
		-2.4277131867796547e-016 3.4444952930342181 -2.8702656790000174
		0.31480641130907372 3.3140982079479966 -2.8702656790000174
		0.44520349639529572 2.9992917966389228 -2.8702656790000174
		0.31480641130907372 2.6844853853298485 -2.8702656790000174
		-1.3538111563135786e-017 2.554088300243627 -2.8702656790000174
		-0.31480641130907405 2.684485385329848 -2.8702656790000174
		-0.44520349639529583 2.9992917966389228 -2.8702656790000174
		-0.31480641130907416 3.3140982079479966 -2.8702656790000174
		-0.23871683416075898 2.7605749624781635 -2.7754550585196536
		-0.33759658443691443 2.9992917966389228 -2.7754550585196536
		-0.23871683416075898 3.2380086307996816 -2.7754550585196536
		-2.2647081112805681e-016 3.3368883810758367 -2.7754550585196536
		0.23871683416075878 3.2380086307996816 -2.7754550585196536
		0.33759658443691398 2.9992917966389228 -2.7754550585196536
		0.23871683416075876 2.7605749624781635 -2.7754550585196536
		-7.9515298984562235e-017 2.6616952122020083 -2.7754550585196536
		-0.23871683416075898 2.7605749624781635 -2.7754550585196536
		-0.33759658443691443 2.9992917966389228 -2.7754550585196536
		-0.23871683416075898 3.2380086307996816 -2.7754550585196536
		-0.12559064913511231 2.8737011475038101 -2.7158897327081033
		-0.17761199931411659 2.9992917966389228 -2.7158897327081033
		-0.12559064913511228 3.124882445774035 -2.7158897327081033
		-1.9736358443421457e-016 3.1769037959530388 -2.7158897327081033
		0.12559064913511195 3.1248824457740345 -2.7158897327081033
		0.17761199931411636 2.9992917966389223 -2.7158897327081033
		0.12559064913511192 2.8737011475038106 -2.7158897327081033
		-1.5700876338618567e-016 2.8216797973248062 -2.7158897327081033
		-0.12559064913511231 2.8737011475038101 -2.7158897327081033
		-0.17761199931411659 2.9992917966389228 -2.7158897327081033
		-0.12559064913511228 3.124882445774035 -2.7158897327081033
		-0.041667763254668186 2.9576240333842545 -2.7022065243830791
		-0.058927115908502983 2.9992917966389228 -2.7022065243830791
		-0.041667763254668158 3.0409595598935906 -2.7022065243830791
		-1.7517306084047828e-016 3.0582189125474253 -2.7022065243830791
		0.041667763254667832 3.0409595598935906 -2.7022065243830791
		0.058927115908502629 2.9992917966389223 -2.7022065243830791
		0.041667763254667776 2.9576240333842545 -2.7022065243830791
		-2.0878327041041126e-016 2.9403646807304198 -2.7022065243830791
		-0.041667763254668186 2.9576240333842545 -2.7022065243830791
		-0.058927115908502983 2.9992917966389228 -2.7022065243830791
		-0.041667763254668158 3.0409595598935906 -2.7022065243830791
		-2.651561859259741e-016 2.9992917966389223 -2.7022065243830791
		-2.651561859259741e-016 2.9992917966389223 -2.7022065243830791
		-2.651561859259741e-016 2.9992917966389223 -2.7022065243830791
		-2.651561859259741e-016 2.9992917966389223 -2.7022065243830791
		-2.651561859259741e-016 2.9992917966389223 -2.7022065243830791
		-2.651561859259741e-016 2.9992917966389223 -2.7022065243830791
		-2.651561859259741e-016 2.9992917966389223 -2.7022065243830791
		-2.651561859259741e-016 2.9992917966389223 -2.7022065243830791
		-2.651561859259741e-016 2.9992917966389223 -2.7022065243830791
		-2.651561859259741e-016 2.9992917966389223 -2.7022065243830791
		-2.651561859259741e-016 2.9992917966389223 -2.7022065243830791
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode parentConstraint -n "tail4_parentConstraint1" -p "tail4";
	addAttr -ci true -sn "w0" -ln "fkTail4W0" -bt "W000" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -4.4408920985006262e-016 0 -1.3663873043176445e-016 ;
	setAttr ".tg[0].tor" -type "double3" 0 -89.999999999999986 0 ;
	setAttr ".rst" -type "double3" -4.9303806576313238e-032 0 0 ;
	setAttr -k on ".w0";
createNode transform -n "tail3" -p "tail_geometry";
	setAttr ".ove" yes;
	setAttr ".rp" -type "double3" 1.1180590489807464e-016 3.0012892283991257 -2.2153795747494489 ;
	setAttr ".sp" -type "double3" 1.1180590489807464e-016 3.0012892283991257 -2.2153795747494489 ;
createNode nurbsSurface -n "tailShape3" -p "tail3";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".dvu" 1;
	setAttr ".dvv" 1;
	setAttr ".cpr" 7;
	setAttr ".cps" 2;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		15 0 0 0 1 2 3 4 5 6 7 8 9 10 10 10
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		
		143
		1.1036741059023402e-016 2.9992917966389196 -2.0005108550439998
		1.1036741059023402e-016 2.9992917966389196 -2.0005108550439998
		1.1036741059023402e-016 2.9992917966389196 -2.0005108550439998
		1.1036741059023402e-016 2.9992917966389196 -2.0005108550439998
		1.1036741059023402e-016 2.9992917966389196 -2.0005108550439998
		1.1036741059023402e-016 2.9992917966389196 -2.0005108550439998
		1.1036741059023402e-016 2.9992917966389196 -2.0005108550439998
		1.1036741059023402e-016 2.9992917966389196 -2.0005108550439998
		1.1036741059023402e-016 2.9992917966389196 -2.0005108550439998
		1.1036741059023402e-016 2.9992917966389196 -2.0005108550439998
		1.1036741059023402e-016 2.9992917966389196 -2.0005108550439998
		0.035402914016657093 2.9638888826222627 -2.0005108550439998
		0.050067281149885012 2.9992917966389201 -2.0005108550439998
		0.035402914016657148 3.0346947106555771 -2.0005108550439998
		1.0766553828327776e-016 3.0493590777888047 -2.0005108550439998
		-0.035402914016656947 3.0346947106555771 -2.0005108550439998
		-0.050067281149884867 2.9992917966389201 -2.0005108550439998
		-0.035402914016656989 2.9638888826222627 -2.0005108550439998
		1.8640781002553341e-017 2.9492245154890351 -2.0005108550439998
		0.035402914016657093 2.9638888826222627 -2.0005108550439998
		0.050067281149885012 2.9992917966389201 -2.0005108550439998
		0.035402914016657148 3.0346947106555771 -2.0005108550439998
		0.10670779051545089 2.8925840061234691 -2.0144675106749976
		0.15090760455781785 2.9992917966389201 -2.0144675106749976
		0.10670779051545097 3.1059995871543706 -2.0144675106749976
		1.2577223814361725e-016 3.1501994011967378 -2.0144675106749976
		-0.10670779051545075 3.1059995871543711 -2.0144675106749976
		-0.15090760455781768 2.9992917966389201 -2.0144675106749976
		-0.1067077905154508 2.8925840061234691 -2.0144675106749976
		-2.2196529860782423e-017 2.8483841920811024 -2.0144675106749976
		0.10670779051545089 2.8925840061234691 -2.0144675106749976
		0.15090760455781785 2.9992917966389201 -2.0144675106749976
		0.10670779051545097 3.1059995871543706 -2.0144675106749976
		0.20282517932313382 2.7964666173157862 -2.0752231989721399
		0.28683811938953063 2.9992917966389201 -2.0752231989721399
		0.20282517932313388 3.202116975962054 -2.0752231989721408
		1.4724945626011098e-016 3.2861299160284507 -2.0752231989721408
		-0.2028251793231336 3.202116975962054 -2.0752231989721408
		-0.28683811938953085 2.9992917966389201 -2.0752231989721399
		-0.20282517932313371 2.7964666173157862 -2.0752231989721399
		-7.4314106433659336e-017 2.712453677249389 -2.0752231989721399
		0.20282517932313382 2.7964666173157862 -2.0752231989721399
		0.28683811938953063 2.9992917966389201 -2.0752231989721399
		0.20282517932313388 3.202116975962054 -2.0752231989721408
		0.27919440189839295 2.7200973947405269 -2.169852402039631
		0.39484050970335222 2.9992917966389201 -2.169852402039631
		0.27919440189839317 3.2784861985373128 -2.169852402039631
		1.6107541379712809e-016 3.3941323063422719 -2.169852402039631
		-0.27919440189839306 3.2784861985373133 -2.169852402039631
		-0.39484050970335227 2.9992917966389201 -2.169852402039631
		-0.27919440189839317 2.7200973947405269 -2.169852402039631
		-1.1248509023250324e-016 2.6044512869355674 -2.169852402039631
		0.27919440189839295 2.7200973947405269 -2.169852402039631
		0.39484050970335222 2.9992917966389201 -2.169852402039631
		0.27919440189839317 3.2784861985373128 -2.169852402039631
		0.35032922207620565 2.6489625745627143 -2.5281698103957599
		0.49544033715578628 2.999291796638921 -2.5281698103957599
		0.35032922207620587 3.3496210187151267 -2.5281698103957608
		1.8039257151088721e-016 3.4947321337947068 -2.5281698103957608
		-0.35032922207620604 3.3496210187151267 -2.5281698103957608
		-0.49544033715578656 2.999291796638921 -2.5281698103957599
		-0.35032922207620604 2.6489625745627148 -2.5281698103957599
		-1.3850092335695246e-016 2.5038514594831343 -2.5281698103957599
		0.35032922207620565 2.6489625745627143 -2.5281698103957599
		0.49544033715578628 2.999291796638921 -2.5281698103957599
		0.35032922207620587 3.3496210187151267 -2.5281698103957608
		0.36263477748997042 2.6366570191489496 -2.7945703796665424
		0.51284302051446673 2.999291796638921 -2.7945703796665433
		0.36263477748997058 3.3619265741288915 -2.7945703796665433
		1.5390096058776586e-016 3.5121348171533873 -2.7945703796665433
		-0.36263477748997069 3.3619265741288915 -2.7945703796665433
		-0.51284302051446673 2.999291796638921 -2.7945703796665433
		-0.36263477748997069 2.63665701914895 -2.7945703796665424
		-1.5578784402116761e-016 2.4864487761244543 -2.7945703796665424
		0.36263477748997042 2.6366570191489496 -2.7945703796665424
		0.51284302051446673 2.999291796638921 -2.7945703796665433
		0.36263477748997058 3.3619265741288915 -2.7945703796665433
		0.35181154565465844 2.6474802509842612 -2.9875854740541627
		0.49753665926425977 2.9992917966389205 -2.9875854740541636
		0.35181154565465844 3.351103342293579 -2.9875854740541636
		1.4520130170521427e-016 3.4968284559031799 -2.9875854740541636
		-0.35181154565465844 3.351103342293579 -2.9875854740541636
		-0.49753665926425988 2.9992917966389205 -2.9875854740541636
		-0.35181154565465844 2.6474802509842621 -2.9875854740541627
		-1.3544749821275954e-016 2.5017551373746607 -2.9875854740541627
		0.35181154565465844 2.6474802509842612 -2.9875854740541627
		0.49753665926425977 2.9992917966389205 -2.9875854740541636
		0.35181154565465844 3.351103342293579 -2.9875854740541636
		0.30971757831461222 2.6895742183243088 -3.0893337045118519
		0.43800679975787626 2.9992917966389214 -3.0893337045118519
		0.30971757831461233 3.3090093749535345 -3.0893337045118527
		1.1802709102674346e-016 3.4372985963967979 -3.0893337045118527
		-0.30971757831461244 3.3090093749535345 -3.0893337045118527
		-0.43800679975787665 2.9992917966389214 -3.0893337045118519
		-0.30971757831461244 2.6895742183252191 -3.0893337045118519
		-1.0750057050233607e-016 2.5612849968810454 -3.0893337045118519
		0.30971757831461222 2.6895742183243088 -3.0893337045118519
		0.43800679975787626 2.9992917966389214 -3.0893337045118519
		0.30971757831461233 3.3090093749535345 -3.0893337045118527
		0.22499922252756871 2.7742925741113527 -3.1767776470381404
		0.31819695202188963 2.9992917966389214 -3.1767776470381404
		0.22499922252756871 3.2242910191664906 -3.1767776470381404
		8.8021978374401937e-017 3.317488748660812 -3.1767776470381413
		-0.22499922252756857 3.2242910191664906 -3.1767776470381404
		-0.31819695202188975 2.9992917966389214 -3.1767776470381404
		-0.22499922252756854 2.7742925741113531 -3.1767776470381404
		-5.048888992975843e-017 2.6810948446170326 -3.1767776470381404
		0.22499922252756871 2.7742925741113527 -3.1767776470381404
		0.31819695202188963 2.9992917966389214 -3.1767776470381404
		0.22499922252756871 3.2242910191664906 -3.1767776470381404
		0.11837371466271741 2.8809180819762048 -3.2329201140925359
		0.16740571270449794 2.9992917966389214 -3.2329201140925359
		0.11837371466271739 3.1176655113016398 -3.2329201140925368
		5.4779552540946448e-017 3.1666975093434204 -3.2329201140925368
		-0.1183737146627173 3.1176655113016394 -3.2329201140925368
		-0.16740571270449789 2.999291796638921 -3.2329201140925359
		-0.11837371466271727 2.8809180819762048 -3.2329201140925359
		1.6743678812279834e-017 2.8318860839344246 -3.2329201140925359
		0.11837371466271741 2.8809180819762048 -3.2329201140925359
		0.16740571270449794 2.9992917966389214 -3.2329201140925359
		0.11837371466271739 3.1176655113016398 -3.2329201140925368
		0.039273369093231043 2.9600184275456916 -3.2458170312523049
		0.055540931211731689 2.9992917966389214 -3.2458170312523049
		0.039273369093231016 3.0385651657321535 -3.2458170312523049
		3.2530026189636983e-017 3.0548327278506537 -3.2458170312523049
		-0.039273369093230946 3.0385651657321535 -3.2458170312523049
		-0.055540931211731578 2.999291796638921 -3.2458170312523049
		-0.039273369093230891 2.9600184275456916 -3.2458170312523049
		6.4208860440307837e-017 2.9437508654271904 -3.2458170312523049
		0.039273369093231043 2.9600184275456916 -3.2458170312523049
		0.055540931211731689 2.9992917966389214 -3.2458170312523049
		0.039273369093231016 3.0385651657321535 -3.2458170312523049
		1.1734236569646537e-016 2.999291796638921 -3.2458170312523049
		1.1734236569646537e-016 2.999291796638921 -3.2458170312523049
		1.1734236569646537e-016 2.999291796638921 -3.2458170312523049
		1.1734236569646537e-016 2.999291796638921 -3.2458170312523049
		1.1734236569646537e-016 2.999291796638921 -3.2458170312523049
		1.1734236569646537e-016 2.999291796638921 -3.2458170312523049
		1.1734236569646537e-016 2.999291796638921 -3.2458170312523049
		1.1734236569646537e-016 2.999291796638921 -3.2458170312523049
		1.1734236569646537e-016 2.999291796638921 -3.2458170312523049
		1.1734236569646537e-016 2.999291796638921 -3.2458170312523049
		1.1734236569646537e-016 2.999291796638921 -3.2458170312523049
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode parentConstraint -n "tail3_parentConstraint1" -p "tail3";
	addAttr -ci true -sn "w0" -ln "fkTail3W0" -bt "W000" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 2.4825897981378607e-032 0 3.199101615695587e-017 ;
	setAttr ".tg[0].tor" -type "double3" 0 -89.999999999999986 0 ;
	setAttr -k on ".w0";
createNode transform -n "tail2" -p "tail_geometry";
	setAttr ".ove" yes;
	setAttr ".rp" -type "double3" 4.0057935364259352e-017 3.0012892283991257 -1.5385037036065308 ;
	setAttr ".sp" -type "double3" 4.0057935364259352e-017 3.0012892283991257 -1.5385037036065308 ;
createNode nurbsSurface -n "tailShape2" -p "tail2";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".dvu" 1;
	setAttr ".dvv" 1;
	setAttr ".cpr" 7;
	setAttr ".cps" 2;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		15 0 0 0 1 2 3 4 5 6 7 8 9 10 10 10
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		
		143
		3.1361337979295393e-017 2.9992917966389196 -1.3631007613227175
		3.1361337979295393e-017 2.9992917966389196 -1.3631007613227175
		3.1361337979295393e-017 2.9992917966389196 -1.3631007613227175
		3.1361337979295393e-017 2.9992917966389196 -1.3631007613227175
		3.1361337979295393e-017 2.9992917966389196 -1.3631007613227175
		3.1361337979295393e-017 2.9992917966389196 -1.3631007613227175
		3.1361337979295393e-017 2.9992917966389196 -1.3631007613227175
		3.1361337979295393e-017 2.9992917966389196 -1.3631007613227175
		3.1361337979295393e-017 2.9992917966389196 -1.3631007613227175
		3.1361337979295393e-017 2.9992917966389196 -1.3631007613227175
		3.1361337979295393e-017 2.9992917966389196 -1.3631007613227175
		0.026715042707185242 2.9725767539317345 -1.3631007613227175
		0.037780775715877832 2.9992917966389196 -1.3631007613227175
		0.02671504270718528 3.0260068393461053 -1.3631007613227175
		2.9322504847205266e-017 3.0370725723547976 -1.3631007613227175
		-0.026715042707185235 3.0260068393461053 -1.3631007613227175
		-0.037780775715877832 2.9992917966389196 -1.3631007613227175
		-0.026715042707185267 2.9725767539317345 -1.3631007613227175
		-3.7855586527769271e-017 2.9615110209230417 -1.3631007613227175
		0.026715042707185242 2.9725767539317345 -1.3631007613227175
		0.037780775715877832 2.9992917966389196 -1.3631007613227175
		0.02671504270718528 3.0260068393461053 -1.3631007613227175
		0.080521710147034575 2.9187700864918851 -1.3745266392531905
		0.11387489455541165 2.9992917966389196 -1.3745266392531905
		0.080521710147034631 3.0798135067859542 -1.3745266392531905
		4.29858225003105e-017 3.1131666911943316 -1.3745266392531905
		-0.080521710147034603 3.0798135067859542 -1.3745266392531905
		-0.11387489455541167 2.9992917966389196 -1.3745266392531905
		-0.080521710147034659 2.9187700864918851 -1.3745266392531905
		-6.8671425677261682e-017 2.8854169020835085 -1.3745266392531901
		0.080521710147034575 2.9187700864918851 -1.3745266392531905
		0.11387489455541165 2.9992917966389196 -1.3745266392531905
		0.080521710147034631 3.0798135067859542 -1.3745266392531905
		0.15305190203158511 2.8462398946073346 -1.4242654231294112
		0.21644807560006593 2.9992917966389196 -1.4242654231294112
		0.15305190203158517 3.1523436986705051 -1.4242654231294112
		5.9192533590355414e-017 3.2157398722389856 -1.4242654231294112
		-0.15305190203158509 3.1523436986705051 -1.4242654231294112
		-0.21644807560006596 2.9992917966389196 -1.4242654231294112
		-0.15305190203158517 2.8462398946073346 -1.4242654231294112
		-1.0799935453883276e-016 2.7828437210388537 -1.4242654231294112
		0.15305190203158511 2.8462398946073346 -1.4242654231294112
		0.21644807560006593 2.9992917966389196 -1.4242654231294112
		0.15305190203158517 3.1523436986705051 -1.4242654231294112
		0.21068012556292129 2.7886116710759983 -1.5017353952698513
		0.29794669089355008 2.9992917966389196 -1.5017353952698513
		0.21068012556292151 3.2099719222018415 -1.5017353952698513
		6.9625602627987702e-017 3.2972384875324696 -1.5017353952698513
		-0.21068012556292134 3.2099719222018415 -1.5017353952698513
		-0.29794669089355014 2.9992917966389196 -1.5017353952698513
		-0.21068012556292146 2.7886116710759983 -1.5017353952698513
		-1.3680318300000414e-016 2.7013451057453697 -1.5017353952698513
		0.21068012556292129 2.7886116710759983 -1.5017353952698513
		0.29794669089355008 2.9992917966389196 -1.5017353952698513
		0.21068012556292151 3.2099719222018415 -1.5017353952698513
		0.2643584684847522 2.7349333281541677 -1.7950786629182742
		0.37385933145931721 2.9992917966389201 -1.7950786629182747
		0.26435846848475231 3.263650265123673 -1.7950786629182747
		8.42023319068742e-017 3.3731511280982378 -1.7950786629182747
		-0.26435846848475247 3.263650265123673 -1.7950786629182747
		-0.37385933145931743 2.9992917966389201 -1.7950786629182747
		-0.26435846848475247 2.7349333281541681 -1.7950786629182742
		-1.5643473346095387e-016 2.6254324651796033 -1.7950786629182742
		0.2643584684847522 2.7349333281541677 -1.7950786629182742
		0.37385933145931721 2.9992917966389201 -1.7950786629182747
		0.26435846848475231 3.263650265123673 -1.7950786629182747
		0.29531625284604385 2.7039755437928759 -2.0553104116618903
		0.41764024996407756 2.9992917966389201 -2.0553104116618903
		0.2953162528460439 3.2946080494849643 -2.0553104116618903
		8.8071773019131596e-017 3.416932046602998 -2.0553104116618903
		-0.29531625284604407 3.2946080494849643 -2.0553104116618903
		-0.41764024996407773 2.9992917966389201 -2.0553104116618903
		-0.29531625284604407 2.7039755437928767 -2.0553104116618903
		-1.6412725201235594e-016 2.5816515466748426 -2.0553104116618903
		0.29531625284604385 2.7039755437928759 -2.0553104116618903
		0.41764024996407756 2.9992917966389201 -2.0553104116618903
		0.2953162528460439 3.2946080494849643 -2.0553104116618903
		0.30380292710528589 2.6954888695336341 -2.2258403071195088
		0.42964221980094036 2.9992917966389201 -2.2258403071195088
		0.30380292710528595 3.3030947237442061 -2.2258403071195088
		8.5997622964572354e-017 3.4289340164398605 -2.2258403071195088
		-0.30380292710528595 3.3030947237442061 -2.2258403071195088
		-0.42964221980094042 2.9992917966389201 -2.2258403071195088
		-0.30380292710528595 2.6954888695336345 -2.2258403071195088
		-1.5635351063739342e-016 2.5696495768379797 -2.2258403071195088
		0.30380292710528589 2.6954888695336341 -2.2258403071195088
		0.42964221980094036 2.9992917966389201 -2.2258403071195088
		0.30380292710528595 3.3030947237442061 -2.2258403071195088
		0.28015425808384675 2.7191375385550742 -2.3168969666281907
		0.39619795133874869 2.999291796638921 -2.3168969666281916
		0.28015425808384681 3.2794460547227686 -2.3168969666281916
		7.7244180803885573e-017 3.3954897479776696 -2.3168969666281916
		-0.28015425808384697 3.2794460547227686 -2.3168969666281916
		-0.39619795133874891 2.999291796638921 -2.3168969666281916
		-0.28015425808384697 2.7191375385550747 -2.3168969666281907
		-1.2675629936544836e-016 2.603093845300172 -2.3168969666281907
		0.28015425808384675 2.7191375385550742 -2.3168969666281907
		0.39619795133874869 2.999291796638921 -2.3168969666281916
		0.28015425808384681 3.2794460547227686 -2.3168969666281916
		0.20352248199688125 2.795769314642039 -2.4076191373107529
		0.28782425428782354 2.999291796638921 -2.4076191373107538
		0.20352248199688125 3.2028142786358025 -2.4076191373107538
		5.0103131466026878e-017 3.2871160509267443 -2.4076191373107538
		-0.2035224819968813 3.2028142786358025 -2.4076191373107538
		-0.28782425428782382 2.999291796638921 -2.4076191373107538
		-0.20352248199688128 2.7957693146420399 -2.4076191373107529
		-7.518652680091126e-017 2.7114675423510968 -2.4076191373107529
		0.20352248199688125 2.795769314642039 -2.4076191373107529
		0.28782425428782354 2.999291796638921 -2.4076191373107538
		0.20352248199688125 3.2028142786358025 -2.4076191373107538
		0.10707464648414482 2.8922171501547758 -2.4848062211356545
		0.15142641724418232 2.999291796638921 -2.4848062211356545
		0.1070746464841448 3.1063664431230653 -2.4848062211356545
		2.0033778615738092e-017 3.1507182138831027 -2.4848062211356545
		-0.10707464648414483 3.1063664431230653 -2.4848062211356545
		-0.15142641724418232 2.999291796638921 -2.4848062211356545
		-0.10707464648414479 2.8922171501547758 -2.4848062211356545
		-1.4371475496771959e-017 2.8478653793947384 -2.4848062211356545
		0.10707464648414482 2.8922171501547758 -2.4848062211356545
		0.15142641724418232 2.999291796638921 -2.4848062211356545
		0.1070746464841448 3.1063664431230653 -2.4848062211356545
		0.035524627438455331 2.9637671692004655 -2.4974625758409497
		0.050239409921714918 2.999291796638921 -2.4974625758409497
		0.035524627438455303 3.0348164240773765 -2.4974625758409497
		-9.1974599781102393e-020 3.0495312065606357 -2.4974625758409497
		-0.035524627438455317 3.0348164240773761 -2.4974625758409497
		-0.050239409921714891 2.999291796638921 -2.4974625758409497
		-0.035524627438455261 2.9637671692004655 -2.4974625758409497
		2.8563035408861823e-017 2.9490523867172063 -2.4974625758409497
		0.035524627438455331 2.9637671692004655 -2.4974625758409497
		0.050239409921714918 2.999291796638921 -2.4974625758409497
		0.035524627438455303 3.0348164240773765 -2.4974625758409497
		7.6624814225019851e-017 2.999291796638921 -2.4974625758409497
		7.6624814225019851e-017 2.999291796638921 -2.4974625758409497
		7.6624814225019851e-017 2.999291796638921 -2.4974625758409497
		7.6624814225019851e-017 2.999291796638921 -2.4974625758409497
		7.6624814225019851e-017 2.999291796638921 -2.4974625758409497
		7.6624814225019851e-017 2.999291796638921 -2.4974625758409497
		7.6624814225019851e-017 2.999291796638921 -2.4974625758409497
		7.6624814225019851e-017 2.999291796638921 -2.4974625758409497
		7.6624814225019851e-017 2.999291796638921 -2.4974625758409497
		7.6624814225019851e-017 2.999291796638921 -2.4974625758409497
		7.6624814225019851e-017 2.999291796638921 -2.4974625758409497
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode parentConstraint -n "tail2_parentConstraint1" -p "tail2";
	addAttr -ci true -sn "w0" -ln "fkTail2W0" -bt "W000" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 8.8946484320694079e-033 0 -3.9756953376859619e-017 ;
	setAttr ".tg[0].tor" -type "double3" 0 -89.999999999999986 0 ;
	setAttr -k on ".w0";
createNode transform -n "tail1" -p "tail_geometry";
	setAttr ".ove" yes;
	setAttr ".rp" -type "double3" 1.7600949826659843e-016 3.0012892283991257 -0.982121501297604 ;
	setAttr ".sp" -type "double3" 1.7600949826659843e-016 3.0012892283991257 -0.982121501297604 ;
createNode nurbsSurface -n "tailShape1" -p "tail1";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".dvu" 1;
	setAttr ".dvv" 1;
	setAttr ".cpr" 7;
	setAttr ".cps" 2;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		15 0 0 0 1 2 3 4 5 6 7 8 9 10 10 10
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		
		143
		1.5504834213388835e-016 2.9992917966389201 -0.95344495874433699
		1.5504834213388835e-016 2.9992917966389201 -0.95344495874433699
		1.5504834213388835e-016 2.9992917966389201 -0.95344495874433699
		1.5504834213388835e-016 2.9992917966389201 -0.95344495874433699
		1.5504834213388835e-016 2.9992917966389201 -0.95344495874433699
		1.5504834213388835e-016 2.9992917966389201 -0.95344495874433699
		1.5504834213388835e-016 2.9992917966389201 -0.95344495874433699
		1.5504834213388835e-016 2.9992917966389201 -0.95344495874433699
		1.5504834213388835e-016 2.9992917966389201 -0.95344495874433699
		1.5504834213388835e-016 2.9992917966389201 -0.95344495874433699
		1.5504834213388835e-016 2.9992917966389201 -0.95344495874433699
		0.019461754185147787 2.9798300424537723 -0.95344495874433699
		0.027523076716207306 2.9992917966389201 -0.95344495874433699
		0.019461754185147815 3.0187535508240675 -0.95344495874433699
		1.535630639826915e-016 3.0268148733551272 -0.95344495874433699
		-0.01946175418514752 3.0187535508240675 -0.95344495874433699
		-0.027523076716207035 2.9992917966389201 -0.95344495874433699
		-0.019461754185147544 2.9798300424537723 -0.95344495874433699
		1.046242127408215e-016 2.9717687199227125 -0.95344495874433699
		0.019461754185147787 2.9798300424537723 -0.95344495874433699
		0.027523076716207306 2.9992917966389201 -0.95344495874433699
		0.019461754185147815 3.0187535508240675 -0.95344495874433699
		0.058659600384161709 2.9406321962547581 -0.96128736219550026
		0.082957202426667542 2.9992917966389201 -0.96128736219550026
		0.058659600384161743 3.0579513970230816 -0.96128736219550026
		1.6351671191179636e-016 3.0822489990655875 -0.96128736219550026
		-0.058659600384161487 3.0579513970230816 -0.96128736219550026
		-0.082957202426667251 2.9992917966389201 -0.96128736219550026
		-0.058659600384161521 2.9406321962547581 -0.96128736219550026
		8.2175052052219342e-017 2.9163345942122527 -0.96128736219550026
		0.058659600384161709 2.9406321962547581 -0.96128736219550026
		0.082957202426667542 2.9992917966389201 -0.96128736219550026
		0.058659600384161743 3.0579513970230816 -0.96128736219550026
		0.10327074867641683 2.8960210479625026 -0.99542667408918151
		0.14604689337461196 2.9992917966389201 -0.99542667408918173
		0.10327074867641688 3.1025625453153354 -0.99542667408918173
		1.7119275349454983e-016 3.1453386900135309 -0.99542667408918173
		-0.1032707486764166 3.1025625453153354 -0.99542667408918173
		-0.14604689337461174 2.9992917966389201 -0.99542667408918173
		-0.10327074867641664 2.8960210479625026 -0.99542667408918151
		5.8381143638425303e-017 2.8532449032643075 -0.99542667408918151
		0.10327074867641683 2.8960210479625026 -0.99542667408918151
		0.14604689337461196 2.9992917966389201 -0.99542667408918173
		0.10327074867641688 3.1025625453153354 -0.99542667408918173
		0.15112877442095293 2.8481630222179666 -1.0485998989890708
		0.21372836245093588 2.9992917966389201 -1.0485998989890708
		0.15112877442095313 3.1504205710598727 -1.048599898989071
		1.8216244939201222e-016 3.2130201590898553 -1.048599898989071
		-0.15112877442095263 3.1504205710598727 -1.0485998989890715
		-0.21372836245093552 2.9992917966389201 -1.0485998989890712
		-0.15112877442095274 2.848163022217967 -1.0485998989890712
		3.4083320932186625e-017 2.7855634341879836 -1.048599898989071
		0.15112877442095293 2.8481630222179666 -1.0485998989890708
		0.21372836245093588 2.9992917966389201 -1.0485998989890708
		0.15112877442095313 3.1504205710598727 -1.048599898989071
		0.19258361615976735 2.8067081804791529 -1.2499425239129776
		0.27235436186399753 2.9992917966389201 -1.2499425239129776
		0.19258361615976746 3.1918754127986877 -1.2499425239129776
		1.9354270076131543e-016 3.271646158502918 -1.2499425239129778
		-0.19258361615976724 3.1918754127986877 -1.249942523912978
		-0.2723543618639972 2.9992917966389201 -1.249942523912978
		-0.19258361615976724 2.8067081804791534 -1.249942523912978
		1.8239989650006357e-017 2.7269374347749231 -1.2499425239129778
		0.19258361615976735 2.8067081804791529 -1.2499425239129776
		0.27235436186399753 2.9992917966389201 -1.2499425239129776
		0.19258361615976746 3.1918754127986877 -1.2499425239129776
		0.21513618311464713 2.7841556135242729 -1.4319279298837662
		0.30424850791791563 2.9992917966389201 -1.4319279298837662
		0.21513618311464719 3.2144279797535673 -1.4319279298837662
		1.9636156624418448e-016 3.3035403045568357 -1.4319279298837664
		-0.21513618311464686 3.2144279797535673 -1.4319279298837666
		-0.30424850791791541 2.9992917966389201 -1.4319279298837666
		-0.21513618311464686 2.7841556135242733 -1.4319279298837666
		1.2636034352124383e-017 2.695043288721005 -1.4319279298837664
		0.21513618311464713 2.7841556135242729 -1.4319279298837662
		0.30424850791791563 2.9992917966389201 -1.4319279298837662
		0.21513618311464719 3.2144279797535673 -1.4319279298837662
		0.22131867625505169 2.7779731203838685 -1.5489748866954263
		0.31299187356635444 2.9992917966389201 -1.5489748866954263
		0.22131867625505175 3.2206104728939717 -1.5489748866954263
		1.9485055991911932e-016 3.3122836702052747 -1.5489748866954263
		-0.22131867625505139 3.2206104728939717 -1.5489748866954263
		-0.31299187356635433 2.9992917966389201 -1.5489748866954267
		-0.22131867625505139 2.7779731203838689 -1.5489748866954263
		1.8299160007459444e-017 2.6862999230725659 -1.5489748866954263
		0.22131867625505169 2.7779731203838685 -1.5489748866954263
		0.31299187356635444 2.9992917966389201 -1.5489748866954263
		0.22131867625505175 3.2206104728939717 -1.5489748866954263
		0.1882689553183057 2.8110228413206149 -1.6405853080556905
		0.26625250998496236 2.999291796638921 -1.6405853080556905
		0.18826895531830573 3.1875607519572262 -1.6405853080556909
		1.8038875359302243e-016 3.265544306623883 -1.6405853080556909
		-0.18826895531830551 3.1875607519572262 -1.6405853080556909
		-0.26625250998496214 2.999291796638921 -1.6405853080556909
		-0.18826895531830551 2.8110228413206149 -1.6405853080556905
		4.3296576059820435e-017 2.7330392866539586 -1.6405853080556905
		0.1882689553183057 2.8110228413206149 -1.6405853080556905
		0.26625250998496236 2.999291796638921 -1.6405853080556905
		0.18826895531830573 3.1875607519572262 -1.6405853080556909
		0.13677095372890502 2.862520842910016 -1.7096466609301171
		0.19342333770212053 2.999291796638921 -1.7096466609301171
		0.13677095372890502 3.1360627503678256 -1.7096466609301171
		1.6214945557188746e-016 3.1927151343410411 -1.7096466609301171
		-0.13677095372890477 3.1360627503678256 -1.7096466609301171
		-0.19342333770212028 2.9992917966389205 -1.7096466609301171
		-0.13677095372890474 2.862520842910016 -1.7096466609301171
		7.7952437702381052e-017 2.8058684589368004 -1.7096466609301171
		0.13677095372890502 2.862520842910016 -1.7096466609301171
		0.19342333770212053 2.999291796638921 -1.7096466609301171
		0.13677095372890502 3.1360627503678256 -1.7096466609301171
		0.071956185754683641 2.9273356108842372 -1.7445308953439413
		0.10176141379091133 2.9992917966389205 -1.7445308953439413
		0.071956185754683627 3.0712479823936043 -1.7445308953439413
		1.4194228225622406e-016 3.1010532104298321 -1.7445308953439413
		-0.071956185754683419 3.0712479823936043 -1.7445308953439413
		-0.10176141379091112 2.9992917966389205 -1.7445308953439413
		-0.071956185754683391 2.9273356108842372 -1.7445308953439413
		1.188213013597478e-016 2.8975303828480095 -1.7445308953439413
		0.071956185754683641 2.9273356108842372 -1.7445308953439413
		0.10176141379091133 2.9992917966389205 -1.7445308953439413
		0.071956185754683627 3.0712479823936043 -1.7445308953439413
		0.02387322092355398 2.9754185757153668 -1.7525444206666005
		0.033761832807619144 2.9992917966389205 -1.7525444206666005
		0.023873220923553963 3.0231650175624747 -1.7525444206666005
		1.2841739579260538e-016 3.0330536294465396 -1.7525444206666005
		-0.023873220923553717 3.0231650175624747 -1.7525444206666005
		-0.03376183280761888 2.9992917966389205 -1.7525444206666005
		-0.023873220923553689 2.9754185757153668 -1.7525444206666005
		1.476741039928131e-016 2.9655299638313015 -1.7525444206666005
		0.02387322092355398 2.9754185757153668 -1.7525444206666005
		0.033761832807619144 2.9992917966389205 -1.7525444206666005
		0.023873220923553963 3.0231650175624747 -1.7525444206666005
		1.799725275482724e-016 2.9992917966389205 -1.7525444206666005
		1.799725275482724e-016 2.9992917966389205 -1.7525444206666005
		1.799725275482724e-016 2.9992917966389205 -1.7525444206666005
		1.799725275482724e-016 2.9992917966389205 -1.7525444206666005
		1.799725275482724e-016 2.9992917966389205 -1.7525444206666005
		1.799725275482724e-016 2.9992917966389205 -1.7525444206666005
		1.799725275482724e-016 2.9992917966389205 -1.7525444206666005
		1.799725275482724e-016 2.9992917966389205 -1.7525444206666005
		1.799725275482724e-016 2.9992917966389205 -1.7525444206666005
		1.799725275482724e-016 2.9992917966389205 -1.7525444206666005
		1.799725275482724e-016 2.9992917966389205 -1.7525444206666005
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode parentConstraint -n "tail1_parentConstraint1" -p "tail1";
	addAttr -ci true -sn "w0" -ln "fkTail1W0" -bt "W000" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 1.110223024625157e-016 0 8.9989661223812131e-017 ;
	setAttr ".tg[0].tor" -type "double3" 0 -89.999999999999986 0 ;
	setAttr ".rst" -type "double3" 0 0 -1.1102230246251565e-016 ;
	setAttr -k on ".w0";
createNode transform -n "tail0" -p "tail_geometry";
	setAttr ".rp" -type "double3" 8.6019837042786273e-017 3.0012892283991257 -0.98212150129760412 ;
	setAttr ".sp" -type "double3" 8.6019837042786273e-017 3.0012892283991257 -0.98212150129760412 ;
createNode nurbsSurface -n "tailShape0" -p "tail0";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".tw" yes;
	setAttr ".dvu" 3;
	setAttr ".dvv" 3;
	setAttr ".cpr" 15;
	setAttr ".cps" 4;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode parentConstraint -n "tail0_parentConstraint1" -p "tail0";
	addAttr -ci true -sn "w0" -ln "fkTail1W0" -bt "W000" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 1.9100240731881051e-032 0 0 ;
	setAttr ".tg[0].tor" -type "double3" 0 -89.999999999999986 0 ;
	setAttr -k on ".w0";
createNode transform -n "tailSpacer3" -p "Tail_DO_NOT_TOUCH";
createNode nurbsSurface -n "tailSpacerShape3" -p "tailSpacer3";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".tw" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "geometry" -p "DoNotTouch";
createNode transform -n "leg_geomtry" -p "geometry";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
createNode transform -n "rt_leg" -p "leg_geomtry";
createNode transform -n "rt_heal" -p "rt_leg";
	setAttr ".ove" yes;
	setAttr ".rp" -type "double3" -0.488114 0.39462497045432765 -0.1880198270082469 ;
	setAttr ".sp" -type "double3" -0.488114 0.39462497045432765 -0.1880198270082469 ;
createNode mesh -n "rt_healShape" -p "rt_heal";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 16 ".uvst[0].uvsp[0:15]" -type "float2" 0 0 1 0 0 1 1 1 
		0 2 1 2 0 3 1 3 0 4 1 4 2 0 2 1 -1 0 -1 1 0 0.5 1 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".op" yes;
	setAttr -s 10 ".pt[0:9]" -type "float3"  0.22022885 0.5 -0.53575438 
		-1.1964574 0.5 -0.53575438 -0.032169998 0.38050798 -0.4847661 -0.94405854 0.38050798 
		-0.4847661 -0.032169998 0.38050798 -0.12891275 -0.94405854 0.38050798 -0.12891275 
		0.22022885 0.5 -0.020182217 -1.1964574 0.5 -0.020182217 0.09564925 0.42352447 -0.4081018 
		-1.0718778 0.42352447 -0.4081018;
	setAttr -s 10 ".vt[0:9]"  -0.5 -0.5 0.6640743 0.5 -0.5 0.6640743 -0.28956217 
		0.018670261 0.4084256 0.28956217 0.018670261 0.4084256 -0.28956217 0.018670261 -0.17069882 
		0.28956217 0.018670261 -0.17069882 -0.5 -0.5 -0.40839246 0.5 -0.5 -0.40839246 -0.39478108 
		-0.24066487 0.53624994 0.39478108 -0.24066487 0.53624994;
	setAttr -s 15 ".ed[0:14]"  0 1 0 2 3 0 
		4 5 0 6 7 0 0 8 0 1 9 0 
		2 4 0 3 5 0 4 6 0 5 7 0 
		6 0 0 7 1 0 8 2 0 9 3 0 
		8 9 0;
	setAttr -s 7 ".fc[0:6]" -type "polyFaces" 
		f 4 14 13 -2 -13 
		mu 0 4 14 15 3 2 
		f 4 1 7 -3 -7 
		mu 0 4 2 3 5 4 
		f 4 2 9 -4 -9 
		mu 0 4 4 5 7 6 
		f 4 3 11 -1 -11 
		mu 0 4 6 7 9 8 
		f 5 -12 -10 -8 -14 -6 
		mu 0 5 1 10 11 3 15 
		f 5 10 4 12 6 8 
		mu 0 5 12 0 14 2 13 
		f 4 0 5 -15 -5 
		mu 0 4 0 1 15 14 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
createNode parentConstraint -n "rt_heal_parentConstraint1" -p "rt_heal";
	addAttr -ci true -sn "w0" -ln "joint6W0" -bt "W000" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 1.993303775575824e-007 -2.3493103785267424e-008 
		-6.6613381477509392e-016 ;
	setAttr ".tg[0].tor" -type "double3" 142.80857505366907 -90 0 ;
	setAttr ".lr" -type "double3" 0.00017655923917772687 -6.3611191639261099e-015 6.3610995619128552e-015 ;
	setAttr ".rst" -type "double3" 0 5.5511151231257827e-017 -8.3266726846886741e-017 ;
	setAttr ".rsrr" -type "double3" 1.272221872585407e-014 -9.5416640443905519e-015 
		-3.1805546814635183e-015 ;
	setAttr -k on ".w0";
createNode transform -n "rt__ball" -p "rt_leg";
	setAttr ".ove" yes;
	setAttr ".rp" -type "double3" -0.48811399999999755 0.0834557289674418 0.21216638395682735 ;
	setAttr ".sp" -type "double3" -0.48811399999999755 0.0834557289674418 0.21216638395682735 ;
createNode mesh -n "rt__ballShape" -p "rt__ball";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.5 0 0 0.15915494 
		0.1 0.15915494 0.2 0.15915494 0.30000001 0.15915494 0.40000001 0.15915494 0.5 0.15915494 
		0.60000002 0.15915494 0.70000005 0.15915494 0.80000007 0.15915494 0.9000001 0.15915494 
		1.0000001 0.15915494 0 0.4774648 0.1 0.4774648 0.2 0.4774648 0.30000001 0.4774648 
		0.40000001 0.4774648 0.5 0.4774648 0.60000002 0.4774648 0.70000005 0.4774648 0.80000007 
		0.4774648 0.9000001 0.4774648 1.0000001 0.4774648 0.5 0.63661975;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".op" yes;
	setAttr -s 22 ".pt[0:21]" -type "float3"  -1.4896775 1.154449 0.74837297 
		-0.98967761 1.1105727 1.0797662 -0.37164363 1.0563388 1.0797663 0.1283564 1.0124624 
		0.74837285 0.31933931 0.99570322 0.21216726 0.1283564 1.0124624 -0.32403836 -0.3716436 
		1.0563388 -0.65543163 -0.98967773 1.1105727 -0.65543163 -1.4896777 1.154449 -0.32403833 
		-1.6806606 1.1712083 0.21216731 -1.1045851 -0.84555101 0.74837297 -0.60458499 -0.8894273 
		1.0797662 0.013449 -0.94366133 1.0797663 0.51344889 -0.98753756 0.74837285 0.70443195 
		-1.0042968 0.21216726 0.51344889 -0.98753756 -0.32403836 0.013448941 -0.94366133 
		-0.65543163 -0.60458505 -0.8894273 -0.65543163 -1.1045851 -0.84555101 -0.32403833 
		-1.2955681 -0.82879174 0.21216731 -0.68066067 1.0834557 0.21216731 -0.29556805 -0.91654426 
		0.21216731;
	setAttr -s 22 ".vt[0:21]"  0.80901694 -1 -0.5877853 0.30901691 -1 -0.95105654 
		-0.30901706 -1 -0.95105648 -0.809017 -1 -0.58778518 -1 -1 4.8221171e-008 -0.809017 
		-1 0.5877853 -0.309017 -1 0.95105654 0.309017 -1 0.95105654 0.809017 -1 0.58778524 
		1 -1 0 0.80901694 1 -0.5877853 0.30901691 1 -0.95105654 -0.30901706 1 -0.95105648 
		-0.809017 1 -0.58778518 -1 1 4.8221171e-008 -0.809017 1 0.5877853 -0.309017 1 0.95105654 
		0.309017 1 0.95105654 0.809017 1 0.58778524 1 1 0 0 -1 0 0 1 0;
	setAttr -s 50 ".ed[0:49]"  0 1 0 1 2 0 
		2 3 0 3 4 0 4 5 0 5 6 0 
		6 7 0 7 8 0 8 9 0 9 0 0 
		10 11 0 11 12 0 12 13 0 13 14 0 
		14 15 0 15 16 0 16 17 0 17 18 0 
		18 19 0 19 10 0 0 10 1 1 11 1 
		2 12 1 3 13 1 4 14 1 5 15 1 
		6 16 1 7 17 1 8 18 1 9 19 1 
		20 0 1 20 1 1 20 2 1 20 3 1 
		20 4 1 20 5 1 20 6 1 20 7 1 
		20 8 1 20 9 1 10 21 1 11 21 1 
		12 21 1 13 21 1 14 21 1 15 21 1 
		16 21 1 17 21 1 18 21 1 19 21 1;
	setAttr -s 30 ".fc[0:29]" -type "polyFaces" 
		f 4 0 21 -11 -21 
		mu 0 4 1 2 13 12 
		f 4 1 22 -12 -22 
		mu 0 4 2 3 14 13 
		f 4 2 23 -13 -23 
		mu 0 4 3 4 15 14 
		f 4 3 24 -14 -24 
		mu 0 4 4 5 16 15 
		f 4 4 25 -15 -25 
		mu 0 4 5 6 17 16 
		f 4 5 26 -16 -26 
		mu 0 4 6 7 18 17 
		f 4 6 27 -17 -27 
		mu 0 4 7 8 19 18 
		f 4 7 28 -18 -28 
		mu 0 4 8 9 20 19 
		f 4 8 29 -19 -29 
		mu 0 4 9 10 21 20 
		f 4 9 20 -20 -30 
		mu 0 4 10 11 22 21 
		f 3 -1 -31 31 
		mu 0 3 2 1 0 
		f 3 -2 -32 32 
		mu 0 3 3 2 0 
		f 3 -3 -33 33 
		mu 0 3 4 3 0 
		f 3 -4 -34 34 
		mu 0 3 5 4 0 
		f 3 -5 -35 35 
		mu 0 3 6 5 0 
		f 3 -6 -36 36 
		mu 0 3 7 6 0 
		f 3 -7 -37 37 
		mu 0 3 8 7 0 
		f 3 -8 -38 38 
		mu 0 3 9 8 0 
		f 3 -9 -39 39 
		mu 0 3 10 9 0 
		f 3 -10 -40 30 
		mu 0 3 11 10 0 
		f 3 10 41 -41 
		mu 0 3 12 13 23 
		f 3 11 42 -42 
		mu 0 3 13 14 23 
		f 3 12 43 -43 
		mu 0 3 14 15 23 
		f 3 13 44 -44 
		mu 0 3 15 16 23 
		f 3 14 45 -45 
		mu 0 3 16 17 23 
		f 3 15 46 -46 
		mu 0 3 17 18 23 
		f 3 16 47 -47 
		mu 0 3 18 19 23 
		f 3 17 48 -48 
		mu 0 3 19 20 23 
		f 3 18 49 -49 
		mu 0 3 20 21 23 
		f 3 19 40 -50 
		mu 0 3 21 22 23 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
createNode parentConstraint -n "rt__ball_parentConstraint1" -p "rt__ball";
	addAttr -ci true -sn "w0" -ln "joint8W0" -bt "W000" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 1.1266041264115637e-017 -4.1274439477614796e-022 
		0 ;
	setAttr ".tg[0].tor" -type "double3" 179.99978180623972 -89.999999999999986 0 ;
	setAttr ".lr" -type "double3" -4.1634521097775297e-005 -1.2722229126164116e-014 
		-2.8624987510809367e-014 ;
	setAttr ".rsrr" -type "double3" -1.9083328088781101e-014 -6.3611093629270335e-015 
		1.0593375115320381e-030 ;
	setAttr -k on ".w0";
createNode transform -n "rt_toe" -p "rt_leg";
	setAttr ".ove" yes;
	setAttr ".rp" -type "double3" -0.48811399999999994 0.090960767177192078 0.21216730126918787 ;
	setAttr ".sp" -type "double3" -0.48811399999999994 0.090960767177192078 0.21216730126918787 ;
createNode mesh -n "rt_toeShape" -p "rt_toe";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0 0 1 0 0 1 1 1 
		0 2 1 2 0 3 1 3 0 4 1 4 2 0 2 1 -1 0 -1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".op" yes;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.22168468 0.5 0.31303462 
		-1.1979132 0.5 0.31303462 0.2019725 -0.3199583 0.22263584 -1.178201 -0.3199583 0.22263584 
		0.2019725 -0.3199583 0.79723185 -1.178201 -0.3199583 0.79723185 0.22168468 0.5 0.79723185 
		-1.1979132 0.5 0.79723185;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 
		0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 
		4 5 0 6 7 0 0 2 0 1 3 0 
		2 4 0 3 5 0 4 6 0 5 7 0 
		6 0 0 7 1 0;
	setAttr -s 6 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5 
		mu 0 4 0 1 3 2 
		f 4 1 7 -3 -7 
		mu 0 4 2 3 5 4 
		f 4 2 9 -4 -9 
		mu 0 4 4 5 7 6 
		f 4 3 11 -1 -11 
		mu 0 4 6 7 9 8 
		f 4 -12 -10 -8 -6 
		mu 0 4 1 10 11 3 
		f 4 10 4 6 8 
		mu 0 4 12 0 2 13 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
createNode parentConstraint -n "rt_toe_parentConstraint1" -p "rt_toe";
	addAttr -ci true -sn "w0" -ln "joint8W0" -bt "W000" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -4.1263546311908873e-016 -4.3153103312931768e-016 
		-2.1649348980190553e-015 ;
	setAttr ".tg[0].tor" -type "double3" 179.99999999999997 -90 0 ;
	setAttr ".lr" -type "double3" 0.00017655923915864359 -6.3610701588929795e-015 -2.5444447252684565e-014 ;
	setAttr ".rsrr" -type "double3" -6.3611093629270335e-015 -1.2722218725854067e-014 
		-3.1805546814635164e-015 ;
	setAttr -k on ".w0";
createNode transform -n "rt_leg_bottom" -p "rt_leg";
	setAttr ".rp" -type "double3" -0.48811399999999988 1.170671962230025 -0.28460191349653158 ;
	setAttr ".rpt" -type "double3" 0 0.033483108157669916 0.32309423450981284 ;
	setAttr ".sp" -type "double3" -0.4881139999999991 1.1706719622300239 -0.28460191349653147 ;
createNode nurbsSurface -n "rt_leg_bottomShape" -p "rt_leg_bottom";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		7 0 0 0 1.094872606 2 2 2
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		
		55
		-0.44597209677019722 0.32208522125573413 -0.32674381672633318
		-0.42851634890819901 0.3220852212557343 -0.28460191349653147
		-0.44597209677019722 0.32208522125573419 -0.24246001026672964
		-0.4881139999999991 0.32208522125573402 -0.22500426240473115
		-0.53025590322980054 0.32208522125573419 -0.24246001026672964
		-0.5477116510917992 0.32208522125573391 -0.28460191349653136
		-0.53025590322980054 0.32208522125573413 -0.32674381672633318
		-0.4881139999999991 0.32208522125573424 -0.34419956458833167
		-0.44597209677019722 0.32208522125573413 -0.32674381672633318
		-0.42851634890819901 0.3220852212557343 -0.28460191349653147
		-0.44597209677019722 0.32208522125573419 -0.24246001026672964
		-0.43682552859898105 0.47692661273360792 -0.33589038489754947
		-0.41558114815129499 0.4769266127336082 -0.28460191349653147
		-0.43682552859898105 0.47692661273360815 -0.23331344209551355
		-0.4881139999999991 0.4769266127336082 -0.21206906164782724
		-0.53940247140101694 0.47692661273360815 -0.23331344209551355
		-0.56064685184870322 0.4769266127336082 -0.28460191349653147
		-0.53940247140101694 0.47692661273360798 -0.33589038489754935
		-0.4881139999999991 0.47692661273360787 -0.35713476534523564
		-0.43682552859898105 0.47692661273360792 -0.33589038489754947
		-0.41558114815129499 0.4769266127336082 -0.28460191349653147
		-0.43682552859898105 0.47692661273360815 -0.23331344209551355
		-0.40163388652272469 0.75977484663649186 -0.40433261863751802
		-0.36581265064487356 0.7597748466364922 -0.31785250516024421
		-0.40163388652272469 0.75977484663649186 -0.2313723916829705
		-0.48811399999999822 0.7597748466364922 -0.19555115580511931
		-0.57459411347727196 0.75977484663649186 -0.2313723916829705
		-0.61041534935512298 0.7597748466364922 -0.31785250516024421
		-0.57459411347727229 0.75977484663649197 -0.40433261863751785
		-0.48811399999999827 0.75977484663649175 -0.4401538545153687
		-0.40163388652272469 0.75977484663649186 -0.40433261863751802
		-0.36581265064487356 0.7597748466364922 -0.31785250516024421
		-0.40163388652272469 0.75977484663649186 -0.2313723916829705
		-0.4292640923483273 1.042623080539375 -0.34345182114820338
		-0.40488766245460073 1.0426230805393752 -0.28460191349653158
		-0.4292640923483273 1.042623080539375 -0.2257520058448598
		-0.4881139999999991 1.042623080539375 -0.20137557595113315
		-0.5469639076516708 1.042623080539375 -0.2257520058448598
		-0.57134033754539759 1.0426230805393752 -0.28460191349653158
		-0.54696390765167091 1.042623080539375 -0.34345182114820327
		-0.48811399999999916 1.0426230805393752 -0.3678282510419299
		-0.4292640923483273 1.042623080539375 -0.34345182114820338
		-0.40488766245460073 1.0426230805393752 -0.28460191349653158
		-0.4292640923483273 1.042623080539375 -0.2257520058448598
		-0.4292640923483273 1.1706299229643848 -0.34345182114820344
		-0.40488766245460073 1.1706299229643851 -0.28460191349653163
		-0.4292640923483273 1.1706299229643848 -0.22575200584485985
		-0.4881139999999991 1.1706299229643842 -0.20137557595113317
		-0.5469639076516708 1.1706299229643848 -0.22575200584485963
		-0.57134033754539759 1.1706299229643851 -0.28460191349653163
		-0.54696390765167091 1.1706299229643848 -0.34345182114820333
		-0.48811399999999916 1.1706299229643853 -0.36782825104193001
		-0.4292640923483273 1.1706299229643848 -0.34345182114820344
		-0.40488766245460073 1.1706299229643851 -0.28460191349653163
		-0.4292640923483273 1.1706299229643848 -0.22575200584485985
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode nurbsSurface -n "revolvebottomCap6" -p "rt_leg_bottom";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 1 1 1
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		
		44
		-0.4881139999999991 0.3220852212557343 -0.28460191349653147
		-0.4881139999999991 0.3220852212557343 -0.28460191349653147
		-0.4881139999999991 0.3220852212557343 -0.28460191349653147
		-0.4881139999999991 0.3220852212557343 -0.28460191349653147
		-0.4881139999999991 0.3220852212557343 -0.28460191349653147
		-0.4881139999999991 0.3220852212557343 -0.28460191349653147
		-0.4881139999999991 0.3220852212557343 -0.28460191349653147
		-0.4881139999999991 0.3220852212557343 -0.28460191349653147
		-0.4881139999999991 0.3220852212557343 -0.28460191349653147
		-0.4881139999999991 0.3220852212557343 -0.28460191349653147
		-0.4881139999999991 0.3220852212557343 -0.28460191349653147
		-0.47406669892339859 0.32208522125573424 -0.29864921457313204
		-0.46824811630273244 0.3220852212557343 -0.28460191349653147
		-0.47406669892339859 0.32208522125573397 -0.27055461241993078
		-0.4881139999999991 0.32208522125573397 -0.26473602979926458
		-0.50216130107659951 0.32208522125573397 -0.27055461241993078
		-0.50797988369726554 0.3220852212557343 -0.28460191349653147
		-0.50216130107659951 0.32208522125573424 -0.29864921457313204
		-0.4881139999999991 0.3220852212557343 -0.30446779719379813
		-0.47406669892339859 0.32208522125573424 -0.29864921457313204
		-0.46824811630273244 0.3220852212557343 -0.28460191349653147
		-0.47406669892339859 0.32208522125573397 -0.27055461241993078
		-0.4600193978467978 0.32208522125573419 -0.31269651564973261
		-0.4483822326054655 0.3220852212557343 -0.28460191349653147
		-0.46001939784679768 0.32208522125573408 -0.25650731134333021
		-0.4881139999999991 0.32208522125573397 -0.24487014610199792
		-0.51620860215320041 0.32208522125573408 -0.25650731134333021
		-0.52784576739453237 0.32208522125573391 -0.28460191349653136
		-0.51620860215320041 0.32208522125573419 -0.31269651564973261
		-0.4881139999999991 0.32208522125573424 -0.3243336808910649
		-0.4600193978467978 0.32208522125573419 -0.31269651564973261
		-0.4483822326054655 0.3220852212557343 -0.28460191349653147
		-0.46001939784679768 0.32208522125573408 -0.25650731134333021
		-0.44597209677019722 0.32208522125573413 -0.32674381672633318
		-0.42851634890819901 0.3220852212557343 -0.28460191349653147
		-0.44597209677019722 0.32208522125573419 -0.24246001026672964
		-0.4881139999999991 0.32208522125573402 -0.22500426240473115
		-0.53025590322980054 0.32208522125573419 -0.24246001026672964
		-0.5477116510917992 0.32208522125573391 -0.28460191349653136
		-0.53025590322980054 0.32208522125573419 -0.32674381672633307
		-0.4881139999999991 0.32208522125573424 -0.34419956458833167
		-0.44597209677019722 0.32208522125573413 -0.32674381672633318
		-0.42851634890819901 0.3220852212557343 -0.28460191349653147
		-0.44597209677019722 0.32208522125573419 -0.24246001026672964
		
		;
createNode nurbsSurface -n "revolvetopCap6" -p "rt_leg_bottom";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 1 1 1
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		
		44
		-0.4292640923483273 1.1706299229643848 -0.34345182114820333
		-0.40488766245460073 1.1706299229643848 -0.28460191349653147
		-0.4292640923483273 1.1706299229643848 -0.22575200584485966
		-0.4881139999999991 1.1706299229643848 -0.20137557595113301
		-0.5469639076516708 1.1706299229643848 -0.22575200584485963
		-0.57134033754539759 1.1706299229643848 -0.28460191349653141
		-0.54696390765167091 1.1706299229643848 -0.34345182114820322
		-0.48811399999999916 1.1706299229643848 -0.3678282510419299
		-0.4292640923483273 1.1706299229643848 -0.34345182114820333
		-0.40488766245460073 1.1706299229643848 -0.28460191349653147
		-0.4292640923483273 1.1706299229643848 -0.22575200584485966
		-0.44888072823221803 1.1706299229643848 -0.32383518526431271
		-0.43262977496973343 1.1706299229643848 -0.28460191349653147
		-0.44888072823221781 1.1706299229643848 -0.24536864172875025
		-0.4881139999999991 1.1706299229643848 -0.22911768846626585
		-0.52734727176778029 1.1706299229643848 -0.24536864172875025
		-0.54359822503026467 1.1706299229643848 -0.28460191349653147
		-0.52734727176778029 1.1706299229643848 -0.32383518526431265
		-0.4881139999999991 1.1706299229643848 -0.34008613852679709
		-0.44888072823221803 1.1706299229643848 -0.32383518526431271
		-0.43262977496973343 1.1706299229643848 -0.28460191349653147
		-0.44888072823221781 1.1706299229643848 -0.24536864172875025
		-0.46849736411610854 1.1706299229643848 -0.30421854938042209
		-0.46037188748486624 1.1706299229643848 -0.28460191349653147
		-0.46849736411610854 1.1706299229643848 -0.26498527761264085
		-0.4881139999999991 1.1706299229643848 -0.25685980098139866
		-0.50773063588388978 1.1706299229643848 -0.26498527761264085
		-0.51585611251513197 1.1706299229643848 -0.28460191349653147
		-0.50773063588388978 1.1706299229643848 -0.30421854938042203
		-0.4881139999999991 1.1706299229643848 -0.31234402601166428
		-0.46849736411610854 1.1706299229643848 -0.30421854938042209
		-0.46037188748486624 1.1706299229643848 -0.28460191349653147
		-0.46849736411610854 1.1706299229643848 -0.26498527761264085
		-0.4881139999999991 1.1706299229643848 -0.28460191349653147
		-0.4881139999999991 1.1706299229643848 -0.28460191349653147
		-0.4881139999999991 1.1706299229643848 -0.28460191349653147
		-0.4881139999999991 1.1706299229643848 -0.28460191349653147
		-0.4881139999999991 1.1706299229643848 -0.28460191349653147
		-0.4881139999999991 1.1706299229643848 -0.28460191349653147
		-0.4881139999999991 1.1706299229643848 -0.28460191349653147
		-0.4881139999999991 1.1706299229643848 -0.28460191349653147
		-0.4881139999999991 1.1706299229643848 -0.28460191349653147
		-0.4881139999999991 1.1706299229643848 -0.28460191349653147
		-0.4881139999999991 1.1706299229643848 -0.28460191349653147
		
		;
createNode parentConstraint -n "nurbsCylinder4_parentConstraint1" -p "rt_leg_bottom";
	addAttr -ci true -sn "w0" -ln "R_Knee_LegW0" -bt "W000" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 2.0614440605539948e-016 1.3737491927243591e-016 
		-1.1102230246251565e-016 ;
	setAttr ".tg[0].tor" -type "double3" 89.999647240898057 -89.999999999999986 0 ;
	setAttr ".lr" -type "double3" 33.559623378662138 -5.8101026833422741e-016 -2.0107201454684587e-014 ;
	setAttr ".rst" -type "double3" -5.5511151231257827e-017 0 -5.5511151231257827e-017 ;
	setAttr ".rsrr" -type "double3" 15.495 -9.1759815445944831e-015 -2.6927228027326182e-014 ;
	setAttr -k on ".w0";
createNode transform -n "rt_knee" -p "rt_leg";
	setAttr ".rp" -type "double3" -0.48811399999999988 1.2041550703876951 0.038492321013281414 ;
	setAttr ".sp" -type "double3" -0.48811399999999988 1.2041550703876951 0.038492321013281414 ;
createNode nurbsSurface -n "rt_kneeShape" -p "rt_knee";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".tw" yes;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode pointConstraint -n "nurbsSphere1_pointConstraint1" -p "rt_knee";
	addAttr -ci true -sn "w0" -ln "R_Knee_LegW0" -bt "W000" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode transform -n "rt_hip" -p "rt_leg";
	setAttr ".rp" -type "double3" -0.48811399999999994 2.1892905827096376 0 ;
	setAttr ".sp" -type "double3" -0.48811399999999994 2.1892905827096376 0 ;
createNode nurbsSurface -n "rt_hipShape" -p "rt_hip";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		13 0 0 0 1 2 3 4 5 6 7 8 8 8
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		
		121
		-0.48811399999999994 2.0114550207243655 -4.8572257327350599e-017
		-0.48811399999999994 2.0114550207243655 -4.8572257327350599e-017
		-0.48811399999999994 2.0114550207243655 -4.8572257327350599e-017
		-0.48811399999999994 2.0114550207243655 -4.8572257327350599e-017
		-0.48811399999999994 2.0114550207243655 -4.8572257327350599e-017
		-0.48811399999999994 2.0114550207243655 -4.8572257327350599e-017
		-0.48811399999999994 2.0114550207243655 -4.8572257327350599e-017
		-0.48811399999999994 2.0114550207243655 -4.8572257327350599e-017
		-0.48811399999999994 2.0114550207243655 -4.8572257327350599e-017
		-0.48811399999999994 2.0114550207243655 -4.8572257327350599e-017
		-0.48811399999999994 2.0114550207243655 -4.8572257327350599e-017
		-0.46998958706322447 2.0114550207243655 -0.018124412936775462
		-0.46248220941476181 2.0114550207243655 -2.0816681711721685e-017
		-0.46998958706322447 2.0114550207243655 0.018124412936775407
		-0.48811399999999994 2.0114550207243655 0.025631790585238172
		-0.50623841293677529 2.0114550207243655 0.018124412936775421
		-0.51374579058523817 2.0114550207243655 6.9388939039072284e-018
		-0.50623841293677529 2.0114550207243655 -0.018124412936775424
		-0.48811399999999994 2.0114550207243655 -0.0256317905852382
		-0.46998958706322447 2.0114550207243655 -0.018124412936775462
		-0.46248220941476181 2.0114550207243655 -2.0816681711721685e-017
		-0.46998958706322447 2.0114550207243655 0.018124412936775407
		-0.43334399616111019 2.0207145856030939 -0.054770003838889851
		-0.41065751775981552 2.0207145856030939 0
		-0.43334399616111019 2.0207145856030939 0.054770003838889782
		-0.48811399999999994 2.0207145856030939 0.077456482240184421
		-0.54288400383888968 2.0207145856030939 0.054770003838889782
		-0.56557048224018436 2.0207145856030939 1.3877787807814457e-017
		-0.54288400383888968 2.0207145856030939 -0.054770003838889775
		-0.48811399999999994 2.0207145856030939 -0.077456482240184435
		-0.43334399616111019 2.0207145856030939 -0.054770003838889851
		-0.41065751775981552 2.0207145856030939 0
		-0.43334399616111019 2.0207145856030939 0.054770003838889782
		-0.38702479920317157 2.0602681003354384 -0.10108920079682848
		-0.34515228122366814 2.0602681003354384 1.3877787807814457e-017
		-0.38702479920317157 2.0602681003354384 0.1010892007968284
		-0.48811399999999983 2.0602681003354384 0.14296171877633182
		-0.58920320079682831 2.0602681003354384 0.10108920079682843
		-0.63107571877633173 2.0602681003354384 3.4694469519536142e-017
		-0.58920320079682831 2.0602681003354384 -0.10108920079682834
		-0.48811399999999994 2.0602681003354384 -0.14296171877633182
		-0.38702479920317157 2.0602681003354384 -0.10108920079682848
		-0.34515228122366814 2.0602681003354384 1.3877787807814457e-017
		-0.38702479920317157 2.0602681003354384 0.1010892007968284
		-0.35601179862856369 2.1194641184175396 -0.13210220137143641
		-0.30129327520117299 2.1194641184175396 3.4694469519536142e-017
		-0.35601179862856369 2.1194641184175396 0.13210220137143633
		-0.48811399999999983 2.1194641184175396 0.18682072479882691
		-0.62021620137143618 2.1194641184175396 0.13210220137143633
		-0.67493472479882688 2.1194641184175396 4.163336342344337e-017
		-0.62021620137143618 2.1194641184175396 -0.13210220137143627
		-0.48811399999999994 2.1194641184175396 -0.18682072479882697
		-0.35601179862856369 2.1194641184175396 -0.13210220137143641
		-0.30129327520117299 2.1194641184175396 3.4694469519536142e-017
		-0.35601179862856369 2.1194641184175396 0.13210220137143633
		-0.34513408014963365 2.1892905827096376 -0.14297991985036657
		-0.28590985820059356 2.1892905827096376 4.8572257327350599e-017
		-0.34513408014963354 2.1892905827096376 0.14297991985036643
		-0.48811399999999983 2.1892905827096376 0.20220414179940635
		-0.63109391985036634 2.1892905827096376 0.14297991985036643
		-0.6903181417994062 2.1892905827096376 4.163336342344337e-017
		-0.63109391985036634 2.1892905827096376 -0.1429799198503664
		-0.48811399999999994 2.1892905827096376 -0.20220414179940632
		-0.34513408014963365 2.1892905827096376 -0.14297991985036657
		-0.28590985820059356 2.1892905827096376 4.8572257327350599e-017
		-0.34513408014963354 2.1892905827096376 0.14297991985036643
		-0.35601179862856369 2.2591170470017357 -0.13210220137143638
		-0.30129327520117311 2.2591170470017357 5.5511151231257827e-017
		-0.35601179862856369 2.2591170470017357 0.13210220137143627
		-0.48811399999999994 2.2591170470017357 0.18682072479882686
		-0.62021620137143618 2.2591170470017357 0.13210220137143627
		-0.67493472479882677 2.2591170470017357 4.163336342344337e-017
		-0.62021620137143618 2.2591170470017357 -0.13210220137143625
		-0.48811399999999994 2.2591170470017357 -0.18682072479882689
		-0.35601179862856369 2.2591170470017357 -0.13210220137143638
		-0.30129327520117311 2.2591170470017357 5.5511151231257827e-017
		-0.35601179862856369 2.2591170470017357 0.13210220137143627
		-0.38702479920317168 2.3183130650838368 -0.1010892007968284
		-0.34515228122366826 2.3183130650838368 4.8572257327350599e-017
		-0.38702479920317168 2.3183130650838368 0.10108920079682832
		-0.48811399999999994 2.3183130650838368 0.14296171877633174
		-0.5892032007968282 2.3183130650838368 0.10108920079682832
		-0.63107571877633173 2.3183130650838368 3.4694469519536142e-017
		-0.5892032007968282 2.3183130650838368 -0.10108920079682832
		-0.48811399999999994 2.3183130650838368 -0.14296171877633171
		-0.38702479920317168 2.3183130650838368 -0.1010892007968284
		-0.34515228122366826 2.3183130650838368 4.8572257327350599e-017
		-0.38702479920317168 2.3183130650838368 0.10108920079682832
		-0.43334399616111019 2.3578665798161813 -0.054770003838889754
		-0.41065751775981563 2.3578665798161813 4.163336342344337e-017
		-0.43334399616111019 2.3578665798161813 0.054770003838889754
		-0.48811399999999994 2.3578665798161813 0.077456482240184338
		-0.54288400383888968 2.3578665798161813 0.054770003838889726
		-0.56557048224018425 2.3578665798161813 1.3877787807814457e-017
		-0.54288400383888968 2.3578665798161813 -0.054770003838889691
		-0.48811399999999994 2.3578665798161813 -0.077456482240184324
		-0.43334399616111019 2.3578665798161813 -0.054770003838889754
		-0.41065751775981563 2.3578665798161813 4.163336342344337e-017
		-0.43334399616111019 2.3578665798161813 0.054770003838889754
		-0.46998958706322469 2.3671261446949092 -0.018124412936775355
		-0.46248220941476181 2.3671261446949092 3.4694469519536142e-017
		-0.46998958706322469 2.3671261446949092 0.018124412936775379
		-0.48811399999999994 2.3671261446949092 0.025631790585238089
		-0.50623841293677529 2.3671261446949092 0.018124412936775365
		-0.51374579058523806 2.3671261446949092 6.9388939039072284e-018
		-0.50623841293677529 2.3671261446949092 -0.018124412936775348
		-0.48811399999999994 2.3671261446949092 -0.025631790585238078
		-0.46998958706322469 2.3671261446949092 -0.018124412936775355
		-0.46248220941476181 2.3671261446949092 3.4694469519536142e-017
		-0.46998958706322469 2.3671261446949092 0.018124412936775379
		-0.48811399999999994 2.3671261446949092 6.2450045135165055e-017
		-0.48811399999999994 2.3671261446949092 6.2450045135165055e-017
		-0.48811399999999994 2.3671261446949092 6.2450045135165055e-017
		-0.48811399999999994 2.3671261446949092 6.2450045135165055e-017
		-0.48811399999999994 2.3671261446949092 6.2450045135165055e-017
		-0.48811399999999994 2.3671261446949092 6.2450045135165055e-017
		-0.48811399999999994 2.3671261446949092 6.2450045135165055e-017
		-0.48811399999999994 2.3671261446949092 6.2450045135165055e-017
		-0.48811399999999994 2.3671261446949092 6.2450045135165055e-017
		-0.48811399999999994 2.3671261446949092 6.2450045135165055e-017
		-0.48811399999999994 2.3671261446949092 6.2450045135165055e-017
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode pointConstraint -n "nurbsSphere4_pointConstraint1" -p "rt_hip";
	addAttr -ci true -sn "w0" -ln "R_Femur_LegW0" -bt "W000" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".o" -type "double3" -5.5511151231257827e-017 0.056429131480719708 1.0842021724855044e-019 ;
	setAttr -k on ".w0";
createNode transform -n "rt_ankle" -p "rt_leg";
	setAttr ".rp" -type "double3" -0.48811400565782381 0.38712155796532499 -0.18801976090017752 ;
	setAttr ".sp" -type "double3" -0.48811400565782381 0.38712155796532499 -0.18801976090017752 ;
createNode nurbsSurface -n "rt_ankleShape" -p "rt_ankle";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		13 0 0 0 1 2 3 4 5 6 7 8 8 8
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		
		121
		-0.48811400565782381 0.2772118013635867 -0.18801976090017755
		-0.48811400565782381 0.2772118013635867 -0.18801976090017755
		-0.48811400565782381 0.2772118013635867 -0.18801976090017755
		-0.48811400565782381 0.2772118013635867 -0.18801976090017755
		-0.48811400565782381 0.2772118013635867 -0.18801976090017755
		-0.48811400565782381 0.2772118013635867 -0.18801976090017755
		-0.48811400565782381 0.2772118013635867 -0.18801976090017755
		-0.48811400565782381 0.2772118013635867 -0.18801976090017755
		-0.48811400565782381 0.2772118013635867 -0.18801976090017755
		-0.48811400565782381 0.2772118013635867 -0.18801976090017755
		-0.48811400565782381 0.2772118013635867 -0.18801976090017755
		-0.47691236638954654 0.2772118013635867 -0.19922140016845483
		-0.47227249548381511 0.2772118013635867 -0.18801976090017752
		-0.47691236638954654 0.2772118013635867 -0.17681812163190022
		-0.48811400565782381 0.2772118013635867 -0.17217825072616874
		-0.49931564492610109 0.2772118013635867 -0.17681812163190022
		-0.50395551583183273 0.2772118013635867 -0.18801976090017752
		-0.49931564492610109 0.2772118013635867 -0.1992214001684548
		-0.48811400565782381 0.2772118013635867 -0.20386127107418631
		-0.47691236638954654 0.2772118013635867 -0.19922140016845483
		-0.47227249548381511 0.2772118013635867 -0.18801976090017752
		-0.47691236638954654 0.2772118013635867 -0.17681812163190022
		-0.4542638706015566 0.28293459668471199 -0.22186989595644482
		-0.44024268557308965 0.28293459668471199 -0.18801976090017752
		-0.4542638706015566 0.28293459668471199 -0.15416962584391025
		-0.48811400565782381 0.28293459668471199 -0.14014844081544336
		-0.52196414071409114 0.28293459668471199 -0.15416962584391025
		-0.53598532574255797 0.28293459668471199 -0.1880197609001775
		-0.52196414071409114 0.28293459668471199 -0.22186989595644477
		-0.48811400565782387 0.28293459668471199 -0.23589108098491166
		-0.4542638706015566 0.28293459668471199 -0.22186989595644482
		-0.44024268557308965 0.28293459668471199 -0.18801976090017752
		-0.4542638706015566 0.28293459668471199 -0.15416962584391025
		-0.42563668486433803 0.30738031006421773 -0.2504970816936633
		-0.39975773125094172 0.30738031006421773 -0.1880197609001775
		-0.42563668486433803 0.30738031006421773 -0.12554244010669177
		-0.48811400565782381 0.30738031006421773 -0.099663486493295386
		-0.55059132645130959 0.30738031006421773 -0.12554244010669174
		-0.57647028006470591 0.30738031006421773 -0.1880197609001775
		-0.55059132645130959 0.30738031006421773 -0.25049708169366325
		-0.48811400565782387 0.30738031006421773 -0.27637603530705962
		-0.42563668486433803 0.30738031006421773 -0.2504970816936633
		-0.39975773125094172 0.30738031006421773 -0.1880197609001775
		-0.42563668486433803 0.30738031006421773 -0.12554244010669177
		-0.40646936362334229 0.3439659055804547 -0.2696644029346591
		-0.37265104559756357 0.3439659055804547 -0.1880197609001775
		-0.40646936362334229 0.3439659055804547 -0.10637511886569599
		-0.48811400565782381 0.3439659055804547 -0.072556800839917251
		-0.56975864769230533 0.3439659055804547 -0.10637511886569599
		-0.60357696571808406 0.3439659055804547 -0.1880197609001775
		-0.56975864769230533 0.3439659055804547 -0.26966440293465899
		-0.48811400565782387 0.3439659055804547 -0.30348272096043777
		-0.40646936362334229 0.3439659055804547 -0.2696644029346591
		-0.37265104559756357 0.3439659055804547 -0.1880197609001775
		-0.40646936362334229 0.3439659055804547 -0.10637511886569599
		-0.39974648223193399 0.38712155796532499 -0.27638728432606752
		-0.36314345555560812 0.38712155796532499 -0.1880197609001775
		-0.39974648223193388 0.38712155796532499 -0.0996522374742876
		-0.48811400565782381 0.38712155796532499 -0.063049210797961774
		-0.57648152908371375 0.38712155796532499 -0.0996522374742876
		-0.61308455576003951 0.38712155796532499 -0.1880197609001775
		-0.57648152908371375 0.38712155796532499 -0.27638728432606741
		-0.48811400565782387 0.38712155796532499 -0.31299031100239322
		-0.39974648223193399 0.38712155796532499 -0.27638728432606752
		-0.36314345555560812 0.38712155796532499 -0.1880197609001775
		-0.39974648223193388 0.38712155796532499 -0.0996522374742876
		-0.40646936362334229 0.43027721035019539 -0.2696644029346591
		-0.37265104559756357 0.43027721035019539 -0.18801976090017747
		-0.40646936362334229 0.43027721035019539 -0.10637511886569601
		-0.48811400565782381 0.43027721035019539 -0.072556800839917307
		-0.56975864769230533 0.43027721035019539 -0.10637511886569601
		-0.60357696571808406 0.43027721035019539 -0.1880197609001775
		-0.56975864769230533 0.43027721035019539 -0.26966440293465899
		-0.48811400565782387 0.43027721035019539 -0.30348272096043771
		-0.40646936362334229 0.43027721035019539 -0.2696644029346591
		-0.37265104559756357 0.43027721035019539 -0.18801976090017747
		-0.40646936362334229 0.43027721035019539 -0.10637511886569601
		-0.42563668486433814 0.46686280586643214 -0.25049708169366325
		-0.39975773125094172 0.46686280586643214 -0.1880197609001775
		-0.42563668486433814 0.46686280586643214 -0.1255424401066918
		-0.48811400565782381 0.46686280586643214 -0.099663486493295442
		-0.55059132645130948 0.46686280586643214 -0.1255424401066918
		-0.57647028006470591 0.46686280586643214 -0.1880197609001775
		-0.55059132645130948 0.46686280586643214 -0.25049708169366319
		-0.48811400565782387 0.46686280586643214 -0.27637603530705956
		-0.42563668486433814 0.46686280586643214 -0.25049708169366325
		-0.39975773125094172 0.46686280586643214 -0.1880197609001775
		-0.42563668486433814 0.46686280586643214 -0.1255424401066918
		-0.4542638706015566 0.49130851924593788 -0.22186989595644477
		-0.44024268557308976 0.49130851924593788 -0.1880197609001775
		-0.4542638706015566 0.49130851924593788 -0.15416962584391025
		-0.48811400565782381 0.49130851924593788 -0.14014844081544342
		-0.52196414071409114 0.49130851924593788 -0.15416962584391028
		-0.53598532574255797 0.49130851924593788 -0.1880197609001775
		-0.52196414071409114 0.49130851924593788 -0.22186989595644474
		-0.48811400565782381 0.49130851924593788 -0.23589108098491157
		-0.4542638706015566 0.49130851924593788 -0.22186989595644477
		-0.44024268557308976 0.49130851924593788 -0.1880197609001775
		-0.4542638706015566 0.49130851924593788 -0.15416962584391025
		-0.47691236638954665 0.49703131456706318 -0.19922140016845477
		-0.47227249548381511 0.49703131456706318 -0.1880197609001775
		-0.47691236638954665 0.49703131456706318 -0.17681812163190025
		-0.48811400565782381 0.49703131456706318 -0.1721782507261688
		-0.49931564492610109 0.49703131456706318 -0.17681812163190025
		-0.50395551583183251 0.49703131456706318 -0.18801976090017752
		-0.49931564492610109 0.49703131456706318 -0.19922140016845474
		-0.48811400565782381 0.49703131456706318 -0.20386127107418622
		-0.47691236638954665 0.49703131456706318 -0.19922140016845477
		-0.47227249548381511 0.49703131456706318 -0.1880197609001775
		-0.47691236638954665 0.49703131456706318 -0.17681812163190025
		-0.48811400565782387 0.49703131456706318 -0.18801976090017747
		-0.48811400565782387 0.49703131456706318 -0.18801976090017747
		-0.48811400565782387 0.49703131456706318 -0.18801976090017747
		-0.48811400565782387 0.49703131456706318 -0.18801976090017747
		-0.48811400565782387 0.49703131456706318 -0.18801976090017747
		-0.48811400565782387 0.49703131456706318 -0.18801976090017747
		-0.48811400565782387 0.49703131456706318 -0.18801976090017747
		-0.48811400565782387 0.49703131456706318 -0.18801976090017747
		-0.48811400565782387 0.49703131456706318 -0.18801976090017747
		-0.48811400565782387 0.49703131456706318 -0.18801976090017747
		-0.48811400565782387 0.49703131456706318 -0.18801976090017747
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode pointConstraint -n "nurbsSphere6_pointConstraint1" -p "rt_ankle";
	addAttr -ci true -sn "w0" -ln "R_Ankle_LegW0" -bt "W000" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".o" -type "double3" -5.5511151231257827e-017 0 0 ;
	setAttr -k on ".w0";
createNode transform -n "rt_leg_top" -p "rt_leg";
	setAttr ".s" -type "double3" 1.0001996755599976 1.1002196073532104 1 ;
	setAttr ".rp" -type "double3" -0.48811399999999988 2.1309983554476521 0.089129003235348767 ;
	setAttr ".rpt" -type "double3" 0 0.0018630957812659442 -0.089129003235348767 ;
	setAttr ".sp" -type "double3" -0.48811399999999988 2.1305709006392064 0.089129003235348767 ;
	setAttr ".spt" -type "double3" 0 0.00042745480844658845 0 ;
createNode nurbsSurface -n "rt_leg_topShape" -p "rt_leg_top";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".dvu" 1;
	setAttr ".dvv" 1;
	setAttr ".cpr" 7;
	setAttr ".cps" 2;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		
		44
		-0.42741715422514975 1.2218084123333135 0.028432157460498653
		-0.40227569751193865 1.2218084123333135 0.089129003235348891
		-0.42741715422514975 1.2218084123333135 0.14982584901019902
		-0.48811399999999988 1.2218084123333135 0.17496730572341007
		-0.54881084577484995 1.2218084123333135 0.14982584901019902
		-0.57395230248806106 1.2218084123333135 0.089129003235348891
		-0.54881084577485018 1.2218084123333135 0.028432157460498708
		-0.48811399999999994 1.2218084123333135 0.0032907007472876559
		-0.42741715422514975 1.2218084123333135 0.028432157460498653
		-0.40227569751193865 1.2218084123333135 0.089129003235348891
		-0.42741715422514975 1.2218084123333135 0.14982584901019902
		-0.41471587205605859 1.525579559844038 0.015730875291407376
		-0.38431337200888244 1.525579559844038 0.089129003235348836
		-0.41471587205605859 1.5255795598440378 0.16252713117929013
		-0.48811399999999983 1.5255795598440378 0.19292963122646628
		-0.56151212794394123 1.5255795598440378 0.16252713117929013
		-0.59191462799111738 1.525579559844038 0.089129003235348836
		-0.56151212794394123 1.525579559844038 0.015730875291407487
		-0.48811399999999994 1.525579559844038 -0.01467162475576872
		-0.41471587205605859 1.525579559844038 0.015730875291407376
		-0.38431337200888244 1.525579559844038 0.089129003235348836
		-0.41471587205605859 1.5255795598440378 0.16252713117929013
		-0.41471587205605859 1.8293507073547626 0.015730875291407376
		-0.38431337200888244 1.8293507073547624 0.08912900323534878
		-0.41471587205605859 1.8293507073547624 0.16252713117929007
		-0.48811399999999983 1.8293507073547624 0.19292963122646622
		-0.56151212794394123 1.8293507073547624 0.16252713117929007
		-0.59191462799111738 1.8293507073547624 0.089129003235348725
		-0.56151212794394123 1.8293507073547626 0.015730875291407431
		-0.48811399999999994 1.8293507073547626 -0.014671624755768775
		-0.41471587205605859 1.8293507073547626 0.015730875291407376
		-0.38431337200888244 1.8293507073547624 0.08912900323534878
		-0.41471587205605859 1.8293507073547624 0.16252713117929007
		-0.41471587205605859 2.1331218548654869 0.015730875291407265
		-0.38431337200888244 2.1331218548654869 0.089129003235348725
		-0.41471587205605859 2.1331218548654869 0.16252713117929002
		-0.48811399999999983 2.1331218548654869 0.19292963122646617
		-0.56151212794394123 2.1331218548654869 0.16252713117929002
		-0.59191462799111738 2.1331218548654869 0.089129003235348669
		-0.56151212794394123 2.1331218548654869 0.015730875291407376
		-0.48811399999999994 2.1331218548654869 -0.014671624755768831
		-0.41471587205605859 2.1331218548654869 0.015730875291407265
		-0.38431337200888244 2.1331218548654869 0.089129003235348725
		-0.41471587205605859 2.1331218548654869 0.16252713117929002
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode nurbsSurface -n "revolvebottomCap4" -p "rt_leg_top";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".dvu" 1;
	setAttr ".dvv" 1;
	setAttr ".cpr" 7;
	setAttr ".cps" 2;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 1 1 1
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		
		44
		-0.48811399999999988 1.2218084123333135 0.089129003235348891
		-0.48811399999999988 1.2218084123333135 0.089129003235348891
		-0.48811399999999988 1.2218084123333135 0.089129003235348891
		-0.48811399999999988 1.2218084123333135 0.089129003235348891
		-0.48811399999999988 1.2218084123333135 0.089129003235348891
		-0.48811399999999988 1.2218084123333135 0.089129003235348891
		-0.48811399999999988 1.2218084123333135 0.089129003235348891
		-0.48811399999999988 1.2218084123333135 0.089129003235348891
		-0.48811399999999988 1.2218084123333135 0.089129003235348891
		-0.48811399999999988 1.2218084123333135 0.089129003235348891
		-0.48811399999999988 1.2218084123333135 0.089129003235348891
		-0.4678817180750498 1.2218084123333135 0.068896721310398812
		-0.45950123250397951 1.2218084123333135 0.089129003235348891
		-0.4678817180750498 1.2218084123333135 0.10936128516029892
		-0.48811399999999988 1.2218084123333135 0.11774177073136927
		-0.50834628192495002 1.2218084123333135 0.10936128516029892
		-0.51672676749602031 1.2218084123333135 0.089129003235348891
		-0.50834628192495002 1.2218084123333135 0.068896721310398812
		-0.48811399999999988 1.2218084123333135 0.060516235739328461
		-0.4678817180750498 1.2218084123333135 0.068896721310398812
		-0.45950123250397951 1.2218084123333135 0.089129003235348891
		-0.4678817180750498 1.2218084123333135 0.10936128516029892
		-0.44764943615009983 1.2218084123333135 0.048664439385448732
		-0.43088846500795913 1.2218084123333135 0.089129003235348891
		-0.44764943615009972 1.2218084123333135 0.129593567085249
		-0.48811399999999988 1.2218084123333135 0.14635453822738964
		-0.5285785638499001 1.2218084123333135 0.129593567085249
		-0.54533953499204069 1.2218084123333135 0.089129003235348891
		-0.5285785638499001 1.2218084123333135 0.048664439385448788
		-0.48811399999999994 1.2218084123333135 0.031903468243308086
		-0.44764943615009983 1.2218084123333135 0.048664439385448732
		-0.43088846500795913 1.2218084123333135 0.089129003235348891
		-0.44764943615009972 1.2218084123333135 0.129593567085249
		-0.42741715422514975 1.2218084123333135 0.028432157460498653
		-0.40227569751193865 1.2218084123333135 0.089129003235348891
		-0.42741715422514975 1.2218084123333135 0.14982584901019902
		-0.48811399999999983 1.2218084123333135 0.17496730572341007
		-0.54881084577484995 1.2218084123333135 0.14982584901019902
		-0.57395230248806106 1.2218084123333135 0.089129003235348891
		-0.54881084577485018 1.2218084123333135 0.028432157460498708
		-0.48811399999999994 1.2218084123333135 0.0032907007472876559
		-0.42741715422514975 1.2218084123333135 0.028432157460498653
		-0.40227569751193865 1.2218084123333135 0.089129003235348891
		-0.42741715422514975 1.2218084123333135 0.14982584901019902
		
		;
createNode nurbsSurface -n "revolvetopCap4" -p "rt_leg_top";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".dvu" 1;
	setAttr ".dvv" 1;
	setAttr ".cpr" 7;
	setAttr ".cps" 2;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 1 1 1
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		
		44
		-0.41471587205605859 2.1331218548654869 0.015730875291407265
		-0.38431337200888244 2.1331218548654869 0.089129003235348725
		-0.41471587205605859 2.1331218548654869 0.16252713117929002
		-0.48811399999999983 2.1331218548654869 0.19292963122646617
		-0.56151212794394123 2.1331218548654869 0.16252713117928996
		-0.59191462799111738 2.1331218548654869 0.089129003235348669
		-0.56151212794394123 2.1331218548654869 0.015730875291407376
		-0.48811399999999994 2.1331218548654869 -0.014671624755768831
		-0.41471587205605859 2.1331218548654869 0.015730875291407265
		-0.38431337200888244 2.1331218548654869 0.089129003235348725
		-0.41471587205605859 2.1331218548654869 0.16252713117929002
		-0.43918191470403906 2.1331218548654869 0.040196917939387733
		-0.41891358133925488 2.1331218548654869 0.089129003235348669
		-0.43918191470403894 2.1331218548654869 0.13806108853130955
		-0.48811399999999988 2.1331218548654869 0.15832942189609367
		-0.53704608529596087 2.1331218548654869 0.13806108853130955
		-0.55731441866074483 2.1331218548654869 0.089129003235348669
		-0.53704608529596087 2.1331218548654869 0.040196917939387788
		-0.48811399999999994 2.1331218548654869 0.019928584574603669
		-0.43918191470403906 2.1331218548654869 0.040196917939387733
		-0.41891358133925488 2.1331218548654869 0.089129003235348669
		-0.43918191470403894 2.1331218548654869 0.13806108853130955
		-0.46364795735201941 2.1331218548654869 0.064662960587368201
		-0.45351379066962733 2.1331218548654869 0.089129003235348669
		-0.46364795735201941 2.1331218548654869 0.11359504588332914
		-0.48811399999999988 2.1331218548654869 0.12372921256572117
		-0.51258004264798029 2.1331218548654869 0.11359504588332914
		-0.52271420933037249 2.1331218548654869 0.089129003235348669
		-0.51258004264798029 2.1331218548654869 0.064662960587368257
		-0.48811399999999988 2.1331218548654869 0.054528793904976169
		-0.46364795735201941 2.1331218548654869 0.064662960587368201
		-0.45351379066962733 2.1331218548654869 0.089129003235348669
		-0.46364795735201941 2.1331218548654869 0.11359504588332914
		-0.48811399999999988 2.1331218548654869 0.089129003235348669
		-0.48811399999999988 2.1331218548654869 0.089129003235348669
		-0.48811399999999988 2.1331218548654869 0.089129003235348669
		-0.48811399999999988 2.1331218548654869 0.089129003235348669
		-0.48811399999999988 2.1331218548654869 0.089129003235348669
		-0.48811399999999988 2.1331218548654869 0.089129003235348669
		-0.48811399999999988 2.1331218548654869 0.089129003235348669
		-0.48811399999999988 2.1331218548654869 0.089129003235348669
		-0.48811399999999988 2.1331218548654869 0.089129003235348669
		-0.48811399999999988 2.1331218548654869 0.089129003235348669
		-0.48811399999999988 2.1331218548654869 0.089129003235348669
		
		;
createNode parentConstraint -n "rt_leg_top_parentConstraint1" -p "rt_leg_top";
	addAttr -ci true -sn "w0" -ln "R_Femur_LegW0" -bt "W000" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "w1" -ln "R_Femur_IKLegW1" -bt "W001" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".tg[0].tot" -type "double3" 1.330064707682038e-016 5.4712356342475625e-018 
		2.2204460492503131e-016 ;
	setAttr ".tg[0].tor" -type "double3" 87.605006583493633 269.99999994839794 2.3733851438524485 ;
	setAttr ".tg[1].tot" -type "double3" 1.330064707682038e-016 5.4712356342475625e-018 
		2.2204460492503131e-016 ;
	setAttr ".tg[1].tor" -type "double3" 87.605006583493633 269.99999994839794 2.3733851438524485 ;
	setAttr ".lr" -type "double3" -18.70613120152877 1.4492579789722767e-008 4.9525091045503809e-008 ;
	setAttr ".rst" -type "double3" 2.2204460492503131e-016 0 -6.6944493526286789e-020 ;
	setAttr ".rsrr" -type "double3" -2.3950020487063766 1.2450057560162947e-006 -1.8306608715848668e-014 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode transform -n "lt_leg" -p "leg_geomtry";
createNode transform -n "lt_heal" -p "lt_leg";
	setAttr ".ove" yes;
	setAttr ".rp" -type "double3" 0.48811435659203511 0.39462497045432765 -0.1880198270082469 ;
	setAttr ".sp" -type "double3" 0.48811435659203511 0.39462497045432765 -0.1880198270082469 ;
createNode mesh -n "lt_healShape" -p "lt_heal";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 2 ".pt[8:9]" -type "float3"  1.4242865e-010 0 0 -1.3324564e-011 
		0 0;
createNode parentConstraint -n "lt_heal_parentConstraint1" -p "lt_heal";
	addAttr -ci true -sn "w0" -ln "joint6W0" -bt "W000" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 1.4675259994124185e-008 6.7658357041840993e-009 
		7.2164496600635175e-016 ;
	setAttr ".tg[0].tor" -type "double3" 142.80857160251279 -89.999999999999986 0 ;
	setAttr ".lr" -type "double3" 0.00017602918212614854 -1.7492953032203203e-014 -6.3611120501047308e-014 ;
	setAttr ".rst" -type "double3" 0 0 -2.7755575615628914e-017 ;
	setAttr ".rsrr" -type "double3" 6.3611093629270391e-015 -1.2722218725854067e-014 
		-3.4986101496098694e-014 ;
	setAttr -k on ".w0";
createNode transform -n "lt__ball" -p "lt_leg";
	setAttr ".ove" yes;
	setAttr ".rp" -type "double3" 0.48811435659203334 0.0834557289674418 0.21216644118738781 ;
	setAttr ".sp" -type "double3" 0.48811435659203334 0.0834557289674418 0.21216644118738781 ;
createNode mesh -n "lt__ballShape" -p "lt__ball";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
createNode parentConstraint -n "lt__ball_parentConstraint1" -p "lt__ball";
	addAttr -ci true -sn "w0" -ln "lt_toeW0" -bt "W000" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -8.8817841970012523e-016 -0.00011041205541721666 
		3.9424448590585841e-010 ;
	setAttr ".tg[0].tor" -type "double3" -0.00020458389562582658 0 0 ;
	setAttr ".lr" -type "double3" -2.8554713525122526e-005 0 0 ;
	setAttr ".rst" -type "double3" 0 2.7755575615628914e-017 2.7755575615628914e-017 ;
	setAttr -k on ".w0";
createNode transform -n "lt_toe" -p "lt_leg";
	setAttr ".ove" yes;
	setAttr ".rp" -type "double3" 0.48811435659203506 0.090960767177192078 0.21216730126918787 ;
	setAttr ".sp" -type "double3" 0.48811435659203506 0.090960767177192078 0.21216730126918787 ;
createNode mesh -n "lt_toeShape" -p "lt_toe";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
createNode parentConstraint -n "lt_toe_parentConstraint1" -p "lt_toe";
	addAttr -ci true -sn "w0" -ln "joint8W0" -bt "W000" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -2.698357215581334e-016 2.940726869589049e-016 
		8.8817841970012523e-016 ;
	setAttr ".tg[0].tor" -type "double3" -179.99999999999997 -89.999999999999986 0 ;
	setAttr ".lr" -type "double3" 0.00017602918210070408 -6.3609823323463956e-015 -8.2694431489536422e-014 ;
	setAttr ".rsrr" -type "double3" 5.8263563134262109e-030 -1.9083328088781101e-014 
		-3.4986101496098681e-014 ;
	setAttr -k on ".w0";
createNode transform -n "lt_leg_bottom" -p "lt_leg";
	setAttr ".rp" -type "double3" 0.488114356592035 1.1707818436045594 -0.28427399775333667 ;
	setAttr ".rpt" -type "double3" 0 0.033391510288937956 0.32311167128871709 ;
	setAttr ".sp" -type "double3" 0.48811435659203578 1.1707818436045583 -0.28427399775333662 ;
createNode nurbsSurface -n "lt_leg_bottomShape" -p "lt_leg_bottom";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".tw" yes;
	setAttr -s 55 ".cp[0:54]" -type "double3" -0.016708004421869926 -3.8857805861880479e-016 
		0.016708004421870148 -0.02362868645359828 -2.2204460492503131e-016 0 -0.016708004421869926 
		-3.3306690738754696e-016 -0.016708004421869982 0 -4.9960036108132044e-016 -0.023628686453598141 
		0.016708004421870315 -3.3306690738754696e-016 -0.016708004421869982 0.023628686453598335 
		-6.106226635438361e-016 5.5511151231257827e-017 0.01670800442187037 -3.8857805861880479e-016 
		0.016708004421870037 5.5511151231257827e-017 -2.7755575615628914e-016 0.023628686453598224 
		-0.016708004421869926 -3.8857805861880479e-016 0.016708004421870148 -0.02362868645359828 
		-2.2204460492503131e-016 0 -0.016708004421869926 -3.3306690738754696e-016 -0.016708004421869982 
		-0.0075614362506537525 -4.9960036108132044e-016 0.0075614362506538635 -0.01069348569669426 
		-2.2204460492503131e-016 0 -0.0075614362506537525 -2.7755575615628914e-016 -0.0075614362506538912 
		0 -2.2204460492503131e-016 -0.010693485696694233 0.007561436250653919 -2.7755575615628914e-016 
		-0.007561436250653919 0.010693485696694316 -2.2204460492503131e-016 -5.5511151231257827e-017 
		0.0075614362506539745 -4.4408920985006262e-016 0.0075614362506538635 5.5511151231257827e-017 
		-5.5511151231257827e-016 0.01069348569669426 -0.0075614362506537525 -4.9960036108132044e-016 
		0.0075614362506538635 -0.01069348569669426 -2.2204460492503131e-016 0 -0.0075614362506537525 
		-2.7755575615628914e-016 -0.0075614362506538912 0.027630205825602605 5.5511151231257827e-016 
		-0.060880797489314686 0.039075011809727167 8.8817841970012523e-016 -0.033250591663712747 
		0.027630205825602605 5.5511151231257827e-016 -0.0056203858381108363 8.8817841970012523e-016 
		8.8817841970012523e-016 0.005824420146013698 -0.027630205825601106 5.5511151231257827e-016 
		-0.005620385838110864 -0.039075011809725391 8.8817841970012523e-016 -0.033250591663712803 
		-0.027630205825601328 6.6613381477509392e-016 -0.060880797489314631 8.8817841970012523e-016 
		4.4408920985006262e-016 -0.072325603473438804 0.027630205825602605 5.5511151231257827e-016 
		-0.060880797489314686 0.039075011809727167 8.8817841970012523e-016 -0.033250591663712747 
		0.027630205825602605 5.5511151231257827e-016 -0.0056203858381108363 0 0 -5.5511151231257827e-017 
		0 2.2204460492503131e-016 -1.1102230246251565e-016 0 0 -1.3877787807814457e-016 0 
		0 -1.3877787807814457e-016 0 0 -1.6653345369377348e-016 0 2.2204460492503131e-016 
		-1.6653345369377348e-016 0 0 -5.5511151231257827e-017 0 2.2204460492503131e-016 0 
		0 0 -5.5511151231257827e-017 0 2.2204460492503131e-016 -1.1102230246251565e-016 0 
		0 -1.3877787807814457e-016 0 0 -1.1102230246251565e-016 0 2.2204460492503131e-016 
		-1.6653345369377348e-016 0 0 -1.9428902930940239e-016 0 -2.2204460492503131e-016 
		-1.6653345369377348e-016 0 0 0 0 2.2204460492503131e-016 -2.2204460492503131e-016 
		0 0 -1.1102230246251565e-016 0 4.4408920985006262e-016 -1.1102230246251565e-016 0 
		0 -1.1102230246251565e-016 0 2.2204460492503131e-016 -1.6653345369377348e-016 0 0 
		-1.9428902930940239e-016;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode nurbsSurface -n "revolvebottomCap6" -p "lt_leg_bottom";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".tw" yes;
	setAttr -s 44 ".cp[0:43]" -type "double3" 0 -2.2204460492503131e-016 
		0 0 -2.2204460492503131e-016 0 0 -2.2204460492503131e-016 0 0 -2.2204460492503131e-016 
		0 0 -2.2204460492503131e-016 0 0 -2.2204460492503131e-016 0 0 -2.2204460492503131e-016 
		0 0 -2.2204460492503131e-016 0 0 -2.2204460492503131e-016 0 0 -2.2204460492503131e-016 
		0 0 -2.2204460492503131e-016 0 -0.0055693348072900495 -2.7755575615628914e-016 0.0055693348072900495 
		-0.0078762288178662043 -2.2204460492503131e-016 0 -0.0055693348072900495 -5.5511151231257827e-016 
		-0.0055693348072899385 0 -5.5511151231257827e-016 -0.0078762288178659268 0.0055693348072901605 
		-5.5511151231257827e-016 -0.0055693348072899385 0.0078762288178663709 -2.2204460492503131e-016 
		0 0.0055693348072901605 -2.7755575615628914e-016 0.005569334807289994 0 -2.2204460492503131e-016 
		0.0078762288178661488 -0.0055693348072900495 -2.7755575615628914e-016 0.0055693348072900495 
		-0.0078762288178662043 -2.2204460492503131e-016 0 -0.0055693348072900495 -5.5511151231257827e-016 
		-0.0055693348072899385 -0.011138669614579766 -3.3306690738754696e-016 0.011138669614580099 
		-0.015752457635732076 -2.2204460492503131e-016 0 -0.011138669614579877 -4.4408920985006262e-016 
		-0.011138669614579932 0 -5.5511151231257827e-016 -0.015752457635732076 0.011138669614579877 
		-4.4408920985006262e-016 -0.011138669614579988 0.015752457635732353 -6.106226635438361e-016 
		5.5511151231257827e-017 0.011138669614579877 -3.3306690738754696e-016 0.011138669614580043 
		5.5511151231257827e-017 -2.7755575615628914e-016 0.015752457635732187 -0.011138669614579766 
		-3.3306690738754696e-016 0.011138669614580099 -0.015752457635732076 -2.2204460492503131e-016 
		0 -0.011138669614579877 -4.4408920985006262e-016 -0.011138669614579932 -0.016708004421869926 
		-3.8857805861880479e-016 0.016708004421870148 -0.02362868645359828 -2.2204460492503131e-016 
		0 -0.016708004421869926 -3.3306690738754696e-016 -0.016708004421869982 -5.5511151231257827e-017 
		-4.9960036108132044e-016 -0.023628686453598141 0.016708004421870315 -3.3306690738754696e-016 
		-0.01670800442187001 0.023628686453598335 -6.106226635438361e-016 5.5511151231257827e-017 
		0.01670800442187037 -3.3306690738754696e-016 0.016708004421870148 5.5511151231257827e-017 
		-2.7755575615628914e-016 0.023628686453598224 -0.016708004421869926 -3.8857805861880479e-016 
		0.016708004421870148 -0.02362868645359828 -2.2204460492503131e-016 0 -0.016708004421869926 
		-3.3306690738754696e-016 -0.016708004421869982;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
createNode nurbsSurface -n "revolvetopCap6" -p "lt_leg_bottom";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".tw" yes;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
createNode parentConstraint -n "nurbsCylinder3_parentConstraint1" -p "lt_leg_bottom";
	addAttr -ci true -sn "w0" -ln "L_Knee_LegW0" -bt "W000" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 1.4686835593806582e-016 -5.6654707400635311e-017 
		0 ;
	setAttr ".tg[0].tor" -type "double3" 89.975507327574334 -89.999999999999929 0 ;
	setAttr ".lr" -type "double3" 33.543489355774547 2.6365710894311743e-014 -1.3157203834631833e-013 ;
	setAttr ".rst" -type "double3" -4.4408920985006262e-016 -6.6613381477509392e-016 
		-9.0205620750793969e-017 ;
	setAttr ".rsrr" -type "double3" 15.494999999999997 1.1705012610163468e-014 -1.3322144545223207e-013 ;
	setAttr -k on ".w0";
createNode transform -n "lt_knee" -p "lt_leg";
	setAttr ".rp" -type "double3" 0.48811435659203456 1.2041733538934969 0.03883767353538032 ;
	setAttr ".sp" -type "double3" 0.48811435659203456 1.2041733538934969 0.03883767353538032 ;
createNode nurbsSurface -n "lt_kneeShape" -p "lt_knee";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		13 0 0 0 1 2 3 4 5 6 7 8 8 8
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		
		121
		0.48811435659203456 1.0531877038434243 0.038837673535380278
		0.48811435659203456 1.0531877038434243 0.038837673535380278
		0.48811435659203456 1.0531877038434243 0.038837673535380278
		0.48811435659203456 1.0531877038434243 0.038837673535380278
		0.48811435659203456 1.0531877038434243 0.038837673535380278
		0.48811435659203456 1.0531877038434243 0.038837673535380278
		0.48811435659203456 1.0531877038434243 0.038837673535380278
		0.48811435659203456 1.0531877038434243 0.038837673535380278
		0.48811435659203456 1.0531877038434243 0.038837673535380278
		0.48811435659203456 1.0531877038434243 0.038837673535380278
		0.48811435659203456 1.0531877038434243 0.038837673535380278
		0.50350231521226607 1.0531877038434243 0.023449714915148766
		0.50987621637000191 1.0531877038434243 0.038837673535380306
		0.50350231521226607 1.0531877038434243 0.054225632155611832
		0.48811435659203456 1.0531877038434243 0.060599533313347713
		0.47272639797180305 1.0531877038434243 0.054225632155611846
		0.4663524968140671 1.0531877038434243 0.038837673535380327
		0.47272639797180305 1.0531877038434243 0.023449714915148797
		0.48811435659203456 1.0531877038434243 0.017075813757412905
		0.50350231521226607 1.0531877038434243 0.023449714915148766
		0.50987621637000191 1.0531877038434243 0.038837673535380306
		0.50350231521226607 1.0531877038434243 0.054225632155611832
		0.5346150932306637 1.0610492440594996 -0.007663063103248921
		0.55387632900672346 1.0610492440594996 0.03883767353538032
		0.5346150932306637 1.0610492440594996 0.085338410174009505
		0.48811435659203456 1.0610492440594996 0.10459964595006921
		0.44161361995340542 1.0610492440594996 0.085338410174009505
		0.42235238417734566 1.0610492440594996 0.038837673535380333
		0.44161361995340542 1.0610492440594996 -0.0076630631032488516
		0.4881143565920345 1.0610492440594996 -0.026924298879308577
		0.5346150932306637 1.0610492440594996 -0.007663063103248921
		0.55387632900672346 1.0610492440594996 0.03883767353538032
		0.5346150932306637 1.0610492440594996 0.085338410174009505
		0.57394094000967244 1.0946309026825527 -0.04698890988225763
		0.60949147487340383 1.0946309026825527 0.038837673535380333
		0.57394094000967244 1.0946309026825527 0.12466425695301819
		0.48811435659203462 1.0946309026825527 0.16021479181674961
		0.40228777317439668 1.0946309026825527 0.12466425695301822
		0.36673723831066529 1.0946309026825527 0.038837673535380347
		0.40228777317439668 1.0946309026825527 -0.046988909882257505
		0.4881143565920345 1.0946309026825527 -0.082539444745988955
		0.57394094000967244 1.0946309026825527 -0.04698890988225763
		0.60949147487340383 1.0946309026825527 0.038837673535380333
		0.57394094000967244 1.0946309026825527 0.12466425695301819
		0.60027154565168817 1.1448894064976789 -0.073319515524273432
		0.64672857447784016 1.1448894064976789 0.038837673535380347
		0.60027154565168817 1.1448894064976789 0.150994862595034
		0.48811435659203462 1.1448894064976789 0.19745189142118588
		0.37595716753238095 1.1448894064976789 0.150994862595034
		0.32950013870622896 1.1448894064976789 0.038837673535380354
		0.37595716753238095 1.1448894064976789 -0.073319515524273321
		0.4881143565920345 1.1448894064976789 -0.11977654435042526
		0.60027154565168817 1.1448894064976789 -0.073319515524273432
		0.64672857447784016 1.1448894064976789 0.038837673535380347
		0.60027154565168817 1.1448894064976789 0.150994862595034
		0.60950692791870043 1.2041733538934969 -0.082554897791285775
		0.65978937733354892 1.2041733538934969 0.038837673535380361
		0.60950692791870054 1.2041733538934969 0.16023024486204632
		0.48811435659203462 1.2041733538934969 0.2105126942768947
		0.36672178526536858 1.2041733538934969 0.16023024486204632
		0.3164393358505202 1.2041733538934969 0.038837673535380354
		0.36672178526536858 1.2041733538934969 -0.082554897791285636
		0.4881143565920345 1.2041733538934969 -0.13283734720613402
		0.60950692791870043 1.2041733538934969 -0.082554897791285775
		0.65978937733354892 1.2041733538934969 0.038837673535380361
		0.60950692791870054 1.2041733538934969 0.16023024486204632
		0.60027154565168817 1.2634573012893151 -0.073319515524273404
		0.64672857447784005 1.2634573012893151 0.038837673535380368
		0.60027154565168817 1.2634573012893151 0.15099486259503397
		0.48811435659203456 1.2634573012893151 0.19745189142118583
		0.37595716753238095 1.2634573012893151 0.15099486259503397
		0.32950013870622907 1.2634573012893151 0.038837673535380354
		0.37595716753238095 1.2634573012893151 -0.073319515524273293
		0.4881143565920345 1.2634573012893151 -0.1197765443504252
		0.60027154565168817 1.2634573012893151 -0.073319515524273404
		0.64672857447784005 1.2634573012893151 0.038837673535380368
		0.60027154565168817 1.2634573012893151 0.15099486259503397
		0.57394094000967233 1.3137158051044411 -0.046988909882257561
		0.60949147487340372 1.3137158051044411 0.038837673535380361
		0.57394094000967233 1.3137158051044411 0.12466425695301814
		0.48811435659203456 1.3137158051044411 0.16021479181674952
		0.40228777317439679 1.3137158051044411 0.12466425695301814
		0.36673723831066529 1.3137158051044411 0.038837673535380347
		0.40228777317439679 1.3137158051044411 -0.046988909882257478
		0.4881143565920345 1.3137158051044411 -0.082539444745988871
		0.57394094000967233 1.3137158051044411 -0.046988909882257561
		0.60949147487340372 1.3137158051044411 0.038837673535380361
		0.57394094000967233 1.3137158051044411 0.12466425695301814
		0.5346150932306637 1.3472974637274941 -0.0076630631032488378
		0.55387632900672334 1.3472974637274941 0.038837673535380354
		0.5346150932306637 1.3472974637274941 0.085338410174009477
		0.48811435659203456 1.3472974637274941 0.10459964595006913
		0.44161361995340542 1.3472974637274941 0.085338410174009449
		0.42235238417734577 1.3472974637274941 0.038837673535380333
		0.44161361995340542 1.3472974637274941 -0.0076630631032487823
		0.48811435659203456 1.3472974637274941 -0.026924298879308479
		0.5346150932306637 1.3472974637274941 -0.0076630631032488378
		0.55387632900672334 1.3472974637274941 0.038837673535380354
		0.5346150932306637 1.3472974637274941 0.085338410174009477
		0.50350231521226596 1.3551590039435695 0.023449714915148856
		0.50987621637000191 1.3551590039435695 0.038837673535380347
		0.50350231521226596 1.3551590039435695 0.054225632155611804
		0.48811435659203456 1.3551590039435695 0.060599533313347644
		0.47272639797180305 1.3551590039435695 0.05422563215561179
		0.46635249681406721 1.3551590039435695 0.038837673535380327
		0.47272639797180305 1.3551590039435695 0.023449714915148863
		0.48811435659203456 1.3551590039435695 0.017075813757413009
		0.50350231521226596 1.3551590039435695 0.023449714915148856
		0.50987621637000191 1.3551590039435695 0.038837673535380347
		0.50350231521226596 1.3551590039435695 0.054225632155611804
		0.4881143565920345 1.3551590039435695 0.038837673535380375
		0.4881143565920345 1.3551590039435695 0.038837673535380375
		0.4881143565920345 1.3551590039435695 0.038837673535380375
		0.4881143565920345 1.3551590039435695 0.038837673535380375
		0.4881143565920345 1.3551590039435695 0.038837673535380375
		0.4881143565920345 1.3551590039435695 0.038837673535380375
		0.4881143565920345 1.3551590039435695 0.038837673535380375
		0.4881143565920345 1.3551590039435695 0.038837673535380375
		0.4881143565920345 1.3551590039435695 0.038837673535380375
		0.4881143565920345 1.3551590039435695 0.038837673535380375
		0.4881143565920345 1.3551590039435695 0.038837673535380375
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode pointConstraint -n "nurbsSphere2_pointConstraint1" -p "lt_knee";
	addAttr -ci true -sn "w0" -ln "L_Knee_LegW0" -bt "W000" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode transform -n "lt_hip" -p "lt_leg";
	setAttr ".rp" -type "double3" 0.48811435659203495 2.1892923403386519 0 ;
	setAttr ".sp" -type "double3" 0.48811435659203495 2.1892923403386519 0 ;
createNode nurbsSurface -n "lt_hipShape" -p "lt_hip";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		13 0 0 0 1 2 3 4 5 6 7 8 8 8
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		
		121
		0.48811435659203495 2.0114567783533799 -4.8572257327350599e-017
		0.48811435659203495 2.0114567783533799 -4.8572257327350599e-017
		0.48811435659203495 2.0114567783533799 -4.8572257327350599e-017
		0.48811435659203495 2.0114567783533799 -4.8572257327350599e-017
		0.48811435659203495 2.0114567783533799 -4.8572257327350599e-017
		0.48811435659203495 2.0114567783533799 -4.8572257327350599e-017
		0.48811435659203495 2.0114567783533799 -4.8572257327350599e-017
		0.48811435659203495 2.0114567783533799 -4.8572257327350599e-017
		0.48811435659203495 2.0114567783533799 -4.8572257327350599e-017
		0.48811435659203495 2.0114567783533799 -4.8572257327350599e-017
		0.48811435659203495 2.0114567783533799 -4.8572257327350599e-017
		0.50623876952881042 2.0114567783533799 -0.018124412936775462
		0.51374614717727307 2.0114567783533799 -2.0816681711721685e-017
		0.50623876952881042 2.0114567783533799 0.018124412936775407
		0.48811435659203495 2.0114567783533799 0.025631790585238172
		0.46998994365525959 2.0114567783533799 0.018124412936775421
		0.46248256600679671 2.0114567783533799 6.9388939039072284e-018
		0.46998994365525959 2.0114567783533799 -0.018124412936775424
		0.48811435659203495 2.0114567783533799 -0.0256317905852382
		0.50623876952881042 2.0114567783533799 -0.018124412936775462
		0.51374614717727307 2.0114567783533799 -2.0816681711721685e-017
		0.50623876952881042 2.0114567783533799 0.018124412936775407
		0.5428843604309247 2.0207163432321078 -0.054770003838889851
		0.56557083883221937 2.0207163432321078 0
		0.5428843604309247 2.0207163432321078 0.054770003838889782
		0.48811435659203495 2.0207163432321078 0.077456482240184421
		0.4333443527531452 2.0207163432321078 0.054770003838889782
		0.41065787435185053 2.0207163432321078 1.3877787807814457e-017
		0.4333443527531452 2.0207163432321078 -0.054770003838889775
		0.48811435659203495 2.0207163432321078 -0.077456482240184435
		0.5428843604309247 2.0207163432321078 -0.054770003838889851
		0.56557083883221937 2.0207163432321078 0
		0.5428843604309247 2.0207163432321078 0.054770003838889782
		0.58920355738886332 2.0602698579644527 -0.10108920079682848
		0.63107607536836674 2.0602698579644527 1.3877787807814457e-017
		0.58920355738886332 2.0602698579644527 0.1010892007968284
		0.48811435659203506 2.0602698579644527 0.14296171877633182
		0.38702515579520658 2.0602698579644527 0.10108920079682843
		0.34515263781570316 2.0602698579644527 3.4694469519536142e-017
		0.38702515579520658 2.0602698579644527 -0.10108920079682834
		0.48811435659203495 2.0602698579644527 -0.14296171877633182
		0.58920355738886332 2.0602698579644527 -0.10108920079682848
		0.63107607536836674 2.0602698579644527 1.3877787807814457e-017
		0.58920355738886332 2.0602698579644527 0.1010892007968284
		0.62021655796347119 2.1194658760465539 -0.13210220137143641
		0.67493508139086189 2.1194658760465539 3.4694469519536142e-017
		0.62021655796347119 2.1194658760465539 0.13210220137143633
		0.48811435659203506 2.1194658760465539 0.18682072479882691
		0.3560121552205987 2.1194658760465539 0.13210220137143633
		0.30129363179320801 2.1194658760465539 4.163336342344337e-017
		0.3560121552205987 2.1194658760465539 -0.13210220137143627
		0.48811435659203495 2.1194658760465539 -0.18682072479882697
		0.62021655796347119 2.1194658760465539 -0.13210220137143641
		0.67493508139086189 2.1194658760465539 3.4694469519536142e-017
		0.62021655796347119 2.1194658760465539 0.13210220137143633
		0.63109427644240124 2.1892923403386519 -0.14297991985036657
		0.69031849839144133 2.1892923403386519 4.8572257327350599e-017
		0.63109427644240135 2.1892923403386519 0.14297991985036643
		0.48811435659203506 2.1892923403386519 0.20220414179940635
		0.34513443674166855 2.1892923403386519 0.14297991985036643
		0.28591021479262863 2.1892923403386519 4.163336342344337e-017
		0.34513443674166855 2.1892923403386519 -0.1429799198503664
		0.48811435659203495 2.1892923403386519 -0.20220414179940632
		0.63109427644240124 2.1892923403386519 -0.14297991985036657
		0.69031849839144133 2.1892923403386519 4.8572257327350599e-017
		0.63109427644240135 2.1892923403386519 0.14297991985036643
		0.62021655796347119 2.25911880463075 -0.13210220137143638
		0.67493508139086178 2.25911880463075 5.5511151231257827e-017
		0.62021655796347119 2.25911880463075 0.13210220137143627
		0.48811435659203495 2.25911880463075 0.18682072479882686
		0.3560121552205987 2.25911880463075 0.13210220137143627
		0.30129363179320812 2.25911880463075 4.163336342344337e-017
		0.3560121552205987 2.25911880463075 -0.13210220137143625
		0.48811435659203495 2.25911880463075 -0.18682072479882689
		0.62021655796347119 2.25911880463075 -0.13210220137143638
		0.67493508139086178 2.25911880463075 5.5511151231257827e-017
		0.62021655796347119 2.25911880463075 0.13210220137143627
		0.58920355738886321 2.3183148227128507 -0.1010892007968284
		0.63107607536836663 2.3183148227128507 4.8572257327350599e-017
		0.58920355738886321 2.3183148227128507 0.10108920079682832
		0.48811435659203495 2.3183148227128507 0.14296171877633174
		0.38702515579520669 2.3183148227128507 0.10108920079682832
		0.34515263781570316 2.3183148227128507 3.4694469519536142e-017
		0.38702515579520669 2.3183148227128507 -0.10108920079682832
		0.48811435659203495 2.3183148227128507 -0.14296171877633171
		0.58920355738886321 2.3183148227128507 -0.1010892007968284
		0.63107607536836663 2.3183148227128507 4.8572257327350599e-017
		0.58920355738886321 2.3183148227128507 0.10108920079682832
		0.5428843604309247 2.3578683374451956 -0.054770003838889754
		0.56557083883221926 2.3578683374451956 4.163336342344337e-017
		0.5428843604309247 2.3578683374451956 0.054770003838889754
		0.48811435659203495 2.3578683374451956 0.077456482240184338
		0.4333443527531452 2.3578683374451956 0.054770003838889726
		0.41065787435185064 2.3578683374451956 1.3877787807814457e-017
		0.4333443527531452 2.3578683374451956 -0.054770003838889691
		0.48811435659203495 2.3578683374451956 -0.077456482240184324
		0.5428843604309247 2.3578683374451956 -0.054770003838889754
		0.56557083883221926 2.3578683374451956 4.163336342344337e-017
		0.5428843604309247 2.3578683374451956 0.054770003838889754
		0.5062387695288102 2.367127902323924 -0.018124412936775355
		0.51374614717727307 2.367127902323924 3.4694469519536142e-017
		0.5062387695288102 2.367127902323924 0.018124412936775379
		0.48811435659203495 2.367127902323924 0.025631790585238089
		0.46998994365525959 2.367127902323924 0.018124412936775365
		0.46248256600679682 2.367127902323924 6.9388939039072284e-018
		0.46998994365525959 2.367127902323924 -0.018124412936775348
		0.48811435659203495 2.367127902323924 -0.025631790585238078
		0.5062387695288102 2.367127902323924 -0.018124412936775355
		0.51374614717727307 2.367127902323924 3.4694469519536142e-017
		0.5062387695288102 2.367127902323924 0.018124412936775379
		0.48811435659203495 2.367127902323924 6.2450045135165055e-017
		0.48811435659203495 2.367127902323924 6.2450045135165055e-017
		0.48811435659203495 2.367127902323924 6.2450045135165055e-017
		0.48811435659203495 2.367127902323924 6.2450045135165055e-017
		0.48811435659203495 2.367127902323924 6.2450045135165055e-017
		0.48811435659203495 2.367127902323924 6.2450045135165055e-017
		0.48811435659203495 2.367127902323924 6.2450045135165055e-017
		0.48811435659203495 2.367127902323924 6.2450045135165055e-017
		0.48811435659203495 2.367127902323924 6.2450045135165055e-017
		0.48811435659203495 2.367127902323924 6.2450045135165055e-017
		0.48811435659203495 2.367127902323924 6.2450045135165055e-017
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode pointConstraint -n "nurbsSphere3_pointConstraint1" -p "lt_hip";
	addAttr -ci true -sn "w0" -ln "L_Femur_LegW0" -bt "W000" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".o" -type "double3" -5.5511151231257827e-017 0.056429131480720152 -8.1315162936412833e-019 ;
	setAttr -k on ".w0";
createNode transform -n "lt_ankle" -p "lt_leg";
	setAttr ".rp" -type "double3" 0.48811435659203373 0.38723178752586529 -0.18801961040219867 ;
	setAttr ".sp" -type "double3" 0.48811435659203373 0.38723178752586529 -0.18801961040219867 ;
createNode nurbsSurface -n "lt_ankleShape" -p "lt_ankle";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		13 0 0 0 1 2 3 4 5 6 7 8 8 8
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		
		121
		0.48811435659203373 0.27732203092412699 -0.18801961040219869
		0.48811435659203373 0.27732203092412699 -0.18801961040219869
		0.48811435659203373 0.27732203092412699 -0.18801961040219869
		0.48811435659203373 0.27732203092412699 -0.18801961040219869
		0.48811435659203373 0.27732203092412699 -0.18801961040219869
		0.48811435659203373 0.27732203092412699 -0.18801961040219869
		0.48811435659203373 0.27732203092412699 -0.18801961040219869
		0.48811435659203373 0.27732203092412699 -0.18801961040219869
		0.48811435659203373 0.27732203092412699 -0.18801961040219869
		0.48811435659203373 0.27732203092412699 -0.18801961040219869
		0.48811435659203373 0.27732203092412699 -0.18801961040219869
		0.499315995860311 0.27732203092412699 -0.19922124967047597
		0.50395586676604243 0.27732203092412699 -0.18801961040219867
		0.499315995860311 0.27732203092412699 -0.17681797113392136
		0.48811435659203373 0.27732203092412699 -0.17217810022818988
		0.47691271732375645 0.27732203092412699 -0.17681797113392136
		0.47227284641802486 0.27732203092412699 -0.18801961040219867
		0.47691271732375645 0.27732203092412699 -0.19922124967047594
		0.48811435659203373 0.27732203092412699 -0.20386112057620745
		0.499315995860311 0.27732203092412699 -0.19922124967047597
		0.50395586676604243 0.27732203092412699 -0.18801961040219867
		0.499315995860311 0.27732203092412699 -0.17681797113392136
		0.52196449164830094 0.28304482624525229 -0.22186974545846597
		0.53598567667676789 0.28304482624525229 -0.18801961040219867
		0.52196449164830094 0.28304482624525229 -0.15416947534593139
		0.48811435659203373 0.28304482624525229 -0.14014829031746451
		0.45426422153576645 0.28304482624525229 -0.15416947534593139
		0.44024303650729957 0.28304482624525229 -0.18801961040219864
		0.45426422153576645 0.28304482624525229 -0.22186974545846591
		0.48811435659203367 0.28304482624525229 -0.2358909304869328
		0.52196449164830094 0.28304482624525229 -0.22186974545846597
		0.53598567667676789 0.28304482624525229 -0.18801961040219867
		0.52196449164830094 0.28304482624525229 -0.15416947534593139
		0.55059167738551951 0.30749053962475803 -0.25049693119568445
		0.57647063099891582 0.30749053962475803 -0.18801961040219864
		0.55059167738551951 0.30749053962475803 -0.12554228960871291
		0.48811435659203373 0.30749053962475803 -0.099663335995316529
		0.42563703579854795 0.30749053962475803 -0.12554228960871289
		0.39975808218515158 0.30749053962475803 -0.18801961040219864
		0.42563703579854795 0.30749053962475803 -0.25049693119568439
		0.48811435659203367 0.30749053962475803 -0.27637588480908076
		0.55059167738551951 0.30749053962475803 -0.25049693119568445
		0.57647063099891582 0.30749053962475803 -0.18801961040219864
		0.55059167738551951 0.30749053962475803 -0.12554228960871291
		0.56975899862651525 0.344076135140995 -0.26966425243668024
		0.60357731665229397 0.344076135140995 -0.18801961040219864
		0.56975899862651525 0.344076135140995 -0.10637496836771713
		0.48811435659203373 0.344076135140995 -0.072556650341938395
		0.40646971455755226 0.344076135140995 -0.10637496836771713
		0.37265139653177343 0.344076135140995 -0.18801961040219864
		0.40646971455755226 0.344076135140995 -0.26966425243668013
		0.48811435659203367 0.344076135140995 -0.30348257046245891
		0.56975899862651525 0.344076135140995 -0.26966425243668024
		0.60357731665229397 0.344076135140995 -0.18801961040219864
		0.56975899862651525 0.344076135140995 -0.10637496836771713
		0.57648188001792355 0.38723178752586529 -0.27638713382808866
		0.61308490669424942 0.38723178752586529 -0.18801961040219864
		0.57648188001792366 0.38723178752586529 -0.099652086976308743
		0.48811435659203373 0.38723178752586529 -0.063049060299982917
		0.39974683316614379 0.38723178752586529 -0.099652086976308743
		0.36314380648981803 0.38723178752586529 -0.18801961040219864
		0.39974683316614379 0.38723178752586529 -0.27638713382808855
		0.48811435659203367 0.38723178752586529 -0.31299016050441436
		0.57648188001792355 0.38723178752586529 -0.27638713382808866
		0.61308490669424942 0.38723178752586529 -0.18801961040219864
		0.57648188001792366 0.38723178752586529 -0.099652086976308743
		0.56975899862651525 0.43038743991073569 -0.26966425243668024
		0.60357731665229397 0.43038743991073569 -0.18801961040219861
		0.56975899862651525 0.43038743991073569 -0.10637496836771715
		0.48811435659203373 0.43038743991073569 -0.07255665034193845
		0.40646971455755226 0.43038743991073569 -0.10637496836771715
		0.37265139653177348 0.43038743991073569 -0.18801961040219864
		0.40646971455755226 0.43038743991073569 -0.26966425243668013
		0.48811435659203367 0.43038743991073569 -0.30348257046245886
		0.56975899862651525 0.43038743991073569 -0.26966425243668024
		0.60357731665229397 0.43038743991073569 -0.18801961040219861
		0.56975899862651525 0.43038743991073569 -0.10637496836771715
		0.5505916773855194 0.46697303542697244 -0.25049693119568439
		0.57647063099891582 0.46697303542697244 -0.18801961040219864
		0.5505916773855194 0.46697303542697244 -0.12554228960871294
		0.48811435659203373 0.46697303542697244 -0.099663335995316585
		0.42563703579854806 0.46697303542697244 -0.12554228960871294
		0.39975808218515158 0.46697303542697244 -0.18801961040219864
		0.42563703579854806 0.46697303542697244 -0.25049693119568434
		0.48811435659203367 0.46697303542697244 -0.27637588480908071
		0.5505916773855194 0.46697303542697244 -0.25049693119568439
		0.57647063099891582 0.46697303542697244 -0.18801961040219864
		0.5505916773855194 0.46697303542697244 -0.12554228960871294
		0.52196449164830094 0.49141874880647818 -0.22186974545846591
		0.53598567667676777 0.49141874880647818 -0.18801961040219864
		0.52196449164830094 0.49141874880647818 -0.15416947534593139
		0.48811435659203373 0.49141874880647818 -0.14014829031746456
		0.45426422153576645 0.49141874880647818 -0.15416947534593142
		0.44024303650729962 0.49141874880647818 -0.18801961040219864
		0.45426422153576645 0.49141874880647818 -0.22186974545846588
		0.48811435659203373 0.49141874880647818 -0.23589093048693272
		0.52196449164830094 0.49141874880647818 -0.22186974545846591
		0.53598567667676777 0.49141874880647818 -0.18801961040219864
		0.52196449164830094 0.49141874880647818 -0.15416947534593139
		0.49931599586031089 0.49714154412760347 -0.19922124967047591
		0.50395586676604243 0.49714154412760347 -0.18801961040219864
		0.49931599586031089 0.49714154412760347 -0.17681797113392139
		0.48811435659203373 0.49714154412760347 -0.17217810022818994
		0.47691271732375645 0.49714154412760347 -0.17681797113392139
		0.47227284641802497 0.49714154412760347 -0.18801961040219867
		0.47691271732375645 0.49714154412760347 -0.19922124967047589
		0.48811435659203373 0.49714154412760347 -0.20386112057620737
		0.49931599586031089 0.49714154412760347 -0.19922124967047591
		0.50395586676604243 0.49714154412760347 -0.18801961040219864
		0.49931599586031089 0.49714154412760347 -0.17681797113392139
		0.48811435659203367 0.49714154412760347 -0.18801961040219861
		0.48811435659203367 0.49714154412760347 -0.18801961040219861
		0.48811435659203367 0.49714154412760347 -0.18801961040219861
		0.48811435659203367 0.49714154412760347 -0.18801961040219861
		0.48811435659203367 0.49714154412760347 -0.18801961040219861
		0.48811435659203367 0.49714154412760347 -0.18801961040219861
		0.48811435659203367 0.49714154412760347 -0.18801961040219861
		0.48811435659203367 0.49714154412760347 -0.18801961040219861
		0.48811435659203367 0.49714154412760347 -0.18801961040219861
		0.48811435659203367 0.49714154412760347 -0.18801961040219861
		0.48811435659203367 0.49714154412760347 -0.18801961040219861
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode pointConstraint -n "nurbsSphere5_pointConstraint1" -p "lt_ankle";
	addAttr -ci true -sn "w0" -ln "L_Ankle_LegW0" -bt "W000" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode transform -n "lt_leg_top" -p "lt_leg";
	setAttr ".rp" -type "double3" 0.48811435659203495 2.1328632088579322 8.1315162936412833e-019 ;
	setAttr ".sp" -type "double3" 0.48811435659203495 2.1328632088579331 8.1315162936393111e-019 ;
createNode nurbsSurface -n "lt_leg_topShape" -p "lt_leg_top";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".tw" yes;
	setAttr -s 44 ".cp[0:43]" -type "double3" -0.012701282169091166 0 0.012701282169091214 
		-0.017962325503056209 0 -5.0452999126806032e-018 -0.012701282169091166 0 -0.012701282169091166 
		-5.5511151231257827e-017 0 -0.017962325503056306 0.012701282169091166 0 -0.012701282169091159 
		0.01796232550305632 0 -1.0676237871721312e-018 0.012701282169091166 0 0.012701282169091166 
		0 0 0.017962325503056306 -0.012701282169091166 0 0.012701282169091214 -0.017962325503056209 
		0 -5.0452999126806032e-018 -0.012701282169091166 0 -0.012701282169091166 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".dvu" 1;
	setAttr ".dvv" 1;
	setAttr ".cpr" 7;
	setAttr ".cps" 2;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode nurbsSurface -n "revolvebottomCap4" -p "lt_leg_top";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".tw" yes;
	setAttr -s 44 ".cp[11:43]" -type "double3" -0.0042337607230303886 0 
		0.0042337607230303956 -0.0059874418343521807 0 -1.181662313155285e-018 -0.0042337607230303886 
		0 -0.0042337607230303886 0 0 -0.0059874418343521009 0.0042337607230303886 0 -0.004233760723030399 
		0.0059874418343521252 0 -1.5176192170944844e-018 0.0042337607230303886 0 0.0042337607230303886 
		0 0 0.0059874418343521078 -0.0042337607230303886 0 0.0042337607230303956 -0.0059874418343521807 
		0 -1.181662313155285e-018 -0.0042337607230303886 0 -0.0042337607230303886 -0.0084675214460607773 
		0 0.0084675214460607912 -0.01197488366870425 0 -2.36332462631057e-018 -0.0084675214460607773 
		0 -0.0084675214460607773 -5.5511151231257827e-017 0 -0.011974883668704202 0.0084675214460607773 
		0 -0.0084675214460607981 0.011974883668704195 0 -3.0352384341889688e-018 0.0084675214460607773 
		0 0.0084675214460607773 0 0 0.011974883668704216 -0.0084675214460607773 0 0.0084675214460607912 
		-0.01197488366870425 0 -2.36332462631057e-018 -0.0084675214460607773 0 -0.0084675214460607773 
		-0.012701282169091166 0 0.012701282169091214 -0.017962325503056209 0 -3.5449869394658303e-018 
		-0.012701282169091166 0 -0.012701282169091166 0 0 -0.017962325503056306 0.012701282169091166 
		0 -0.01270128216909118 0.01796232550305632 0 -4.5528576512835272e-018 0.012701282169091166 
		0 0.012701282169091173 0 0 0.017962325503056306 -0.012701282169091166 0 0.012701282169091214 
		-0.017962325503056209 0 -3.5449869394658303e-018 -0.012701282169091166 0 -0.012701282169091166;
	setAttr ".dvu" 1;
	setAttr ".dvv" 1;
	setAttr ".cpr" 7;
	setAttr ".cps" 2;
createNode nurbsSurface -n "revolvetopCap4" -p "lt_leg_top";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".tw" yes;
	setAttr ".dvu" 1;
	setAttr ".dvv" 1;
	setAttr ".cpr" 7;
	setAttr ".cps" 2;
createNode parentConstraint -n "nurbsCylinder1_parentConstraint1" -p "lt_leg_top";
	addAttr -ci true -sn "w0" -ln "L_Femur_LegW0" -bt "W000" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -1.041940308284026e-015 -1.6147123707785903e-017 
		-5.5511151231257827e-017 ;
	setAttr ".tg[0].tor" -type "double3" 89.999705713151059 -89.999999999999929 0 ;
	setAttr ".lr" -type "double3" -18.691426185072018 -3.0591260617290631e-014 -1.2712235535912768e-013 ;
	setAttr ".rst" -type "double3" 0 4.4408920985006262e-016 -2.7402715337919407e-017 ;
	setAttr ".rsrr" -type "double3" -2.3949999999999911 -1.551117023835435e-014 -1.3328824247998877e-013 ;
	setAttr -k on ".w0";
createNode transform -n "ball_geometry" -p "geometry";
createNode transform -n "nurbsCylinder5" -p "geometry";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".rp" -type "double3" 0 2.3767306584251289 0 ;
	setAttr ".sp" -type "double3" 0 2.3786318863016076 0 ;
	setAttr ".spt" -type "double3" 0 -0.0019012278764965205 0 ;
createNode nurbsSurface -n "nurbsCylinderShape1" -p "nurbsCylinder5";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".tw" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode nurbsSurface -n "revolvebottomCap8" -p "nurbsCylinder5";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".tw" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
createNode nurbsSurface -n "revolvetopCap8" -p "nurbsCylinder5";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".tw" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
createNode nurbsSurface -n "nurbsSphereShape1" -p "nurbsCylinder5";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".tw" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode nurbsSurface -n "nurbsCylinderShape1Orig" -p "nurbsCylinder5";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".tw" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
createNode nurbsSurface -n "revolvebottomCap8Orig" -p "nurbsCylinder5";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".tw" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
createNode nurbsSurface -n "revolvetopCap8Orig" -p "nurbsCylinder5";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".tw" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
createNode nurbsSurface -n "nurbsSphereShape1Orig" -p "nurbsCylinder5";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".tw" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
createNode parentConstraint -n "nurbsCylinder5_parentConstraint1" -p "nurbsCylinder5";
	addAttr -ci true -k true -sn "w0" -ln "joint1W0" -bt "W000" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0 0.37673065842514841 0 ;
	setAttr ".rst" -type "double3" 0 1.9539925233402755e-014 0 ;
	setAttr -k on ".w0";
createNode transform -n "cluster1Handle" -p "DoNotTouch";
	setAttr ".rp" -type "double3" -1.1102230246251565e-016 2.9999999999999831 0 ;
	setAttr ".sp" -type "double3" -1.1102230246251565e-016 2.9999999999999831 0 ;
createNode clusterHandle -n "cluster1HandleShape" -p "cluster1Handle";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovv" no;
	setAttr ".or" -type "double3" -1.1102230246251565e-016 2.9999999999999831 0 ;
createNode lightLinker -n "lightLinker1";
	setAttr -s 7 ".lnk";
createNode displayLayerManager -n "layerManager";
	setAttr ".cdl" 4;
	setAttr -s 4 ".dli[1:3]"  1 4 2;
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode ikRPsolver -n "ikRPsolver";
createNode multiplyDivide -n "multiplyDivide1";
	setAttr ".op" 2;
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" \"Top View\"`;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l \"Top View\" -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -wireframeOnShaded 0\n"
		+ "                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 4096\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n"
		+ "                -occlusionCulling 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -locators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l \"Top View\" -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -wireframeOnShaded 0\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 4096\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -colorResolution 4 4 \n"
		+ "            -bumpResolution 4 4 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 0\n            -occlusionCulling 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -locators 1\n            -dimensions 1\n            -handles 1\n"
		+ "            -pivots 1\n            -textures 1\n            -strokes 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" \"Side View\"`;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l \"Side View\" -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -wireframeOnShaded 0\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -textureAnisotropic 0\n                -textureHilight 1\n"
		+ "                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 4096\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n"
		+ "                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 0\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -locators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l \"Side View\" -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n"
		+ "            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -wireframeOnShaded 0\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 4096\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -colorResolution 4 4 \n            -bumpResolution 4 4 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 0\n            -occlusionCulling 0\n"
		+ "            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 0\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -locators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" \"Front View\"`;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l \"Front View\" -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -wireframeOnShaded 0\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 4096\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n"
		+ "                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n"
		+ "                -ikHandles 0\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -locators 0\n                -dimensions 0\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l \"Front View\" -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -wireframeOnShaded 0\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -displayTextures 0\n            -smoothWireframe 0\n"
		+ "            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 4096\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -colorResolution 4 4 \n            -bumpResolution 4 4 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 0\n            -occlusionCulling 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n"
		+ "            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -joints 1\n            -ikHandles 0\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -locators 0\n            -dimensions 0\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" \"Persp View\"`;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l \"Persp View\" -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n"
		+ "                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -wireframeOnShaded 0\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 4096\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n"
		+ "                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -locators 1\n                -dimensions 1\n                -handles 1\n"
		+ "                -pivots 1\n                -textures 1\n                -strokes 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l \"Persp View\" -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -wireframeOnShaded 0\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 4096\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n"
		+ "            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n"
		+ "            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -locators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" \"Outliner\"`;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l \"Outliner\" -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -mainListConnection \"worldList\" \n                -selectionConnection \"modelList\" \n                -showShapes 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -autoExpand 0\n"
		+ "                -showDagOnly 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l \"Outliner\" -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -mainListConnection \"worldList\" \n            -selectionConnection \"modelList\" \n            -showShapes 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -autoExpand 0\n            -showDagOnly 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n"
		+ "            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" \"Graph Editor\"`;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l \"Graph Editor\" -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -mainListConnection \"graphEditorList\" \n                -selectionConnection \"graphEditor1FromOutliner\" \n                -highlightConnection \"keyframeList\" \n                -showShapes 1\n                -showAttributes 1\n                -showConnected 1\n"
		+ "                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -autoExpand 1\n                -showDagOnly 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -sortOrder \"none\" \n                -longNames 0\n"
		+ "                -niceNames 1\n                -showNamespace 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -mainListConnection \"graphEditor1FromOutliner\" \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l \"Graph Editor\" -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -mainListConnection \"graphEditorList\" \n"
		+ "                -selectionConnection \"graphEditor1FromOutliner\" \n                -highlightConnection \"keyframeList\" \n                -showShapes 1\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -autoExpand 1\n                -showDagOnly 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n"
		+ "                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -mainListConnection \"graphEditor1FromOutliner\" \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" \"Dope Sheet\"`;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l \"Dope Sheet\" -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -mainListConnection \"animationList\" \n                -selectionConnection \"dopeSheetPanel1OutlinerSelection\" \n                -highlightConnection \"keyframeList\" \n                -showShapes 1\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -autoExpand 0\n                -showDagOnly 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n"
		+ "                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -mainListConnection \"dopeSheetPanel1FromOutliner\" \n                -highlightConnection \"dopeSheetPanel1OutlinerSelection\" \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n"
		+ "                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 0\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l \"Dope Sheet\" -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -mainListConnection \"animationList\" \n                -selectionConnection \"dopeSheetPanel1OutlinerSelection\" \n                -highlightConnection \"keyframeList\" \n                -showShapes 1\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -autoExpand 0\n                -showDagOnly 0\n"
		+ "                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n"
		+ "            dopeSheetEditor -e \n                -mainListConnection \"dopeSheetPanel1FromOutliner\" \n                -highlightConnection \"dopeSheetPanel1OutlinerSelection\" \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 0\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" \"Trax Editor\"`;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l \"Trax Editor\" -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n"
		+ "            clipEditor -e \n                -mainListConnection \"clipEditorList\" \n                -highlightConnection \"clipEditorPanel1HighlightConnection\" \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l \"Trax Editor\" -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -mainListConnection \"clipEditorList\" \n                -highlightConnection \"clipEditorPanel1HighlightConnection\" \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n"
		+ "                -snapValue \"none\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" \"Relationship Editor\"`;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l \"Relationship Editor\" -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l \"Relationship Editor\" -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" \"Hypershade\"`;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l \"Hypershade\" -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l \"Hypershade\" -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" \"Visor\"`;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l \"Visor\" -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l \"Visor\" -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" \"Reference Editor\"`;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l \"Reference Editor\" -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l \"Reference Editor\" -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"webBrowserPanel\" \"Web Browser\"`;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n"
		+ "\t\t\t$panelName = `scriptedPanel -unParent  -type \"webBrowserPanel\" -l \"Web Browser\" -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l \"Web Browser\" -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" \"Paint Effects\"`;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l \"Paint Effects\" -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l \"Paint Effects\" -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" \"Render Window Panel 1\"`;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l \"Render Window Panel 1\" -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l \"Render Window Panel 1\" -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" \"Hypergraph\"`;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l \"Hypergraph\" -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -orientation \"horiz\" \n                -zoom 1\n                -animateTransition 0\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -freeform 0\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -updateSelection 1\n                -updateNodeAdded 1\n"
		+ "                -useDrawOverrideColor 0\n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l \"Hypergraph\" -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -orientation \"horiz\" \n                -zoom 1\n                -animateTransition 0\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -freeform 0\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl \"Current Layout\"`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label \"Current Layout\"\n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t\"Persp View\"\n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l \\\"Persp View\\\" -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -wireframeOnShaded 0\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 4096\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -locators 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l \\\"Persp View\\\" -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -wireframeOnShaded 0\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 4096\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -locators 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout \"Current Layout\";\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 100 -ast 0 -aet 300 ";
	setAttr ".st" 6;
createNode multiplyDivide -n "multiplyDivide2";
	setAttr ".i2" -type "float3" 2 1 1 ;
createNode lambert -n "lambert2";
	setAttr ".c" -type "float3" 0.17123398 0.23442464 0.56699997 ;
createNode shadingEngine -n "lambert2SG";
	setAttr ".ihi" 0;
	setAttr -s 13 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
createNode lambert -n "lambert3";
	setAttr ".c" -type "float3" 0.26331401 0.61111051 0.96100003 ;
createNode shadingEngine -n "lambert3SG";
	setAttr ".ihi" 0;
	setAttr -s 21 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
createNode unitConversion -n "unitConversion1";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion2";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion3";
	setAttr ".cf" 0.017453292519943295;
createNode animCurveUA -n "L_HeelRoll_Grp_rotateX";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -5 -40 0 0;
createNode animCurveUA -n "L_BallRoll_Grp_rotateX";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 40 10 0;
	setAttr -s 3 ".kot[1:2]"  3 2;
createNode animCurveUA -n "L_ToeRoll_Grp_rotateX";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 0 10 80;
createNode unitConversion -n "unitConversion4";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion5";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion6";
	setAttr ".cf" 0.017453292519943295;
createNode animCurveUA -n "R_HeelRoll_Grp_rotateX";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -5 -40 0 0;
createNode animCurveUA -n "R_BallRoll_Grp_rotateX";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 40 10 0;
	setAttr -s 3 ".kot[1:2]"  3 2;
createNode animCurveUA -n "R_ToeRoll_Grp_rotateX";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 0 10 80;
createNode brush -n "brush1";
	setAttr ".lcl[0]"  0 0.5 1;
	setAttr ".pcl[0]"  0 0.5 1;
	setAttr ".wsc[0]"  0 1 1;
	setAttr ".lws[0]"  0 1 1;
	setAttr ".pws[0]"  0 1 1;
	setAttr ".tls[0]"  0 1 1;
	setAttr -s 3 ".env";
	setAttr ".env[0].envp" 0.20000000298023224;
	setAttr ".env[0].envc" -type "float3" 0 0 0.15000001 ;
	setAttr ".env[0].envi" 2;
	setAttr ".env[1].envp" 0.5;
	setAttr ".env[1].envc" -type "float3" 0.47999999 0.55000001 0.69999999 ;
	setAttr ".env[1].envi" 2;
	setAttr ".env[2].envp" 1;
	setAttr ".env[2].envc" -type "float3" 0 0.1 0.44999999 ;
	setAttr ".env[2].envi" 2;
	setAttr ".rro[0]"  0 1 1;
createNode brush -n "brush2";
	setAttr ".lcl[0]"  0 0.5 1;
	setAttr ".pcl[0]"  0 0.5 1;
	setAttr ".wsc[0]"  0 1 1;
	setAttr ".lws[0]"  0 1 1;
	setAttr ".pws[0]"  0 1 1;
	setAttr ".tls[0]"  0 1 1;
	setAttr -s 3 ".env";
	setAttr ".env[0].envp" 0.20000000298023224;
	setAttr ".env[0].envc" -type "float3" 0 0 0.15000001 ;
	setAttr ".env[0].envi" 2;
	setAttr ".env[1].envp" 0.5;
	setAttr ".env[1].envc" -type "float3" 0.47999999 0.55000001 0.69999999 ;
	setAttr ".env[1].envi" 2;
	setAttr ".env[2].envp" 1;
	setAttr ".env[2].envc" -type "float3" 0 0.1 0.44999999 ;
	setAttr ".env[2].envi" 2;
	setAttr ".rro[0]"  0 1 1;
createNode polyCube -n "polyCube2";
createNode polyTweak -n "polyTweak5";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[0:7]" -type "float3"  -1.4811559 0 2.3782091 1.4811559 
		0 2.3782091 -1.2950118 0.13222475 1.7226083 1.2950118 0.13222475 1.7226083 -1.2950118 
		0.13222475 7.7715612e-016 1.2950118 0.13222475 7.7715612e-016 -1.4811559 0 0 1.4811559 
		0 0;
createNode transformGeometry -n "transformGeometry15";
	setAttr ".txf" -type "matrix" 0.13788702837501574 0 0 0 0 0.13788702837501574 0 0
		 0 0 0.13788702837501574 0 0.48811435659200741 0.068943514187507868 0.33849776495151329 1;
createNode polyTweak -n "polyTweak7";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk[0:5]" -type "float3"  0 0 0.049991559 0 0 0.049991559 
		0 0.023922386 0.049991559 0 0.023922386 0.049991559 0 0.023922386 0 0 0.023922386 
		0;
createNode transformGeometry -n "transformGeometry19";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 1.1102230246251565e-016 1.3877787807814457e-015 0.027677608937644288 1;
createNode transformGeometry -n "transformGeometry24";
	setAttr ".txf" -type "matrix" 0.7678586719040873 0 0 0 0 1 0 0 0 0 1 0 0.11331151500195696 0 0 1;
createNode polyCylinder -n "polyCylinder2";
	setAttr ".sa" 10;
	setAttr ".sc" 1;
	setAttr ".tx" 1;
createNode polySoftEdge -n "polySoftEdge3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 1.6237477623166216e-017 0.073127098173128138 0 0 -0.24186762484068955 5.3705401201906599e-017 0 0
		 0 0 0.073127098173128138 0 0.48811435659200797 0.073127098173131455 0.19990737101505379 1;
	setAttr ".a" 180;
createNode polySoftEdge -n "polySoftEdge4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[0:19]" "e[30:49]";
	setAttr ".ix" -type "matrix" 1.6237477623166216e-017 0.073127098173128138 0 0 -0.24186762484068955 5.3705401201906599e-017 0 0
		 0 0 0.073127098173128138 0 0.48811435659200797 0.073127098173131455 0.19990737101505379 1;
	setAttr ".a" 90;
createNode transformGeometry -n "transformGeometry14";
	setAttr ".txf" -type "matrix" 1.6237477623166216e-017 0.073127098173128138 0 0 -0.25071131913076977 5.5669095806625218e-017 0 0
		 0 0 0.073127098173128138 0 0.48811435659200803 0.07633535142043732 0.19990737101505379 1;
createNode transformGeometry -n "transformGeometry18";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1.2 0 0 0 0 1.2 0 -5.5511151231257827e-017 -0.00064165064946044561 -0.027721551565513647 1;
createNode transformGeometry -n "transformGeometry25";
	setAttr ".txf" -type "matrix" 0.7678586719040873 0 0 0 0 1 0 0 0 0 1 0 0.11331151500195052 0 0 1;
createNode transformGeometry -n "transformGeometry35";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -8.3266726846886741e-016 -0.0075050418779714079 0 1;
createNode polyCube -n "polyCube1";
createNode polyTweak -n "polyTweak1";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[0:7]" -type "float3"  0 0 0.16407427 0 0 0.16407427 
		0.21043782 -0.48132974 -0.091574408 -0.21043782 -0.48132974 -0.091574408 0.21043782 
		-0.48132974 0.32930118 -0.21043782 -0.48132974 0.32930118 0 0 0.091607533 0 0 0.091607533;
createNode polySplit -n "polySplit2";
	setAttr -s 2 ".e[0:1]"  0.5 0.5;
	setAttr -s 2 ".d[0:1]"  -2147483644 -2147483643;
	setAttr ".m70" no;
createNode polyTweak -n "polyTweak4";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk";
	setAttr ".tk[0:5]" -type "float3" 0 -5.5511151e-017 -0.046046849  0 -5.5511151e-017 
		-0.046046849  -0.13011138 0 -0.1676105  0.13011138 0 -0.1676105  -0.13011138 0 0  
		0.13011138 0 0 ;
	setAttr ".tk[8:9]" -type "float3" -0.05875545 0.033603787 0.081460938  
		0.05875545 0.033603787 0.081460938 ;
createNode transformGeometry -n "transformGeometry13";
	setAttr ".txf" -type "matrix" 0.54256018508304105 0 0 0 0 0.54256018508304105 0 0
		 0 0 0.54256018508304105 0 0.48811435659203539 0.27128009254152052 -0.20699718664344327 1;
createNode polyTweak -n "polyTweak6";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk";
	setAttr ".tk[2:5]" -type "float3" 0.011141665 0.11776865 0  -0.011141665 
		0.11776865 0  0.011141665 0.11776865 0  -0.011141665 0.11776865 0 ;
	setAttr ".tk[8:9]" -type "float3" 0 0.023922386 0  0 0.023922386 0 ;
createNode transformGeometry -n "transformGeometry17";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -1.1102230246251565e-016 -5.5511151231257827e-017 -8.3266726846886741e-017 1;
createNode transformGeometry -n "transformGeometry23";
	setAttr ".txf" -type "matrix" 0.7678586719040873 0 0 0 0 1 0 0 0 0 1 0 0.11331151500195696 0 0 1;
createNode makeNurbCircle -n "makeNurbCircle4";
	setAttr ".nr" -type "double3" 0 1 0 ;
createNode transformGeometry -n "transformGeometry34";
	setAttr ".txf" -type "matrix" 1.3603217712194156 0 0 0 0 1.3603217712194156 0 0
		 0 0 1.3603217712194156 0 0 3 0 1;
createNode makeNurbCircle -n "makeNurbCircle1";
	setAttr ".nr" -type "double3" 0 1 0 ;
createNode transformGeometry -n "transformGeometry2";
	setAttr ".txf" -type "matrix" 0.5 0 0 0 0 0.5 0 0 0 0 0.5 0 0 0 0 1;
createNode transformGeometry -n "transformGeometry33";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 2 0 1;
createNode makeNurbCircle -n "makeNurbCircle2";
	setAttr ".nr" -type "double3" 0 1 0 ;
createNode transformGeometry -n "transformGeometry3";
	setAttr ".txf" -type "matrix" 1.5 0 0 0 0 1.5 0 0 0 0 1.5 0 0 1 0 1;
createNode transformGeometry -n "transformGeometry32";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 2 0 1;
createNode brush -n "brush3";
	setAttr ".lcl[0]"  0 0.5 1;
	setAttr ".pcl[0]"  0 0.5 1;
	setAttr ".wsc[0]"  0 1 1;
	setAttr ".lws[0]"  0 1 1;
	setAttr ".pws[0]"  0 1 1;
	setAttr ".tls[0]"  0 1 1;
	setAttr -s 3 ".env";
	setAttr ".env[0].envp" 0.20000000298023224;
	setAttr ".env[0].envc" -type "float3" 0 0 0.15000001 ;
	setAttr ".env[0].envi" 2;
	setAttr ".env[1].envp" 0.5;
	setAttr ".env[1].envc" -type "float3" 0.47999999 0.55000001 0.69999999 ;
	setAttr ".env[1].envi" 2;
	setAttr ".env[2].envp" 1;
	setAttr ".env[2].envc" -type "float3" 0 0.1 0.44999999 ;
	setAttr ".env[2].envi" 2;
	setAttr ".rro[0]"  0 1 1;
createNode multiplyDivide -n "L_Femur_IKLeg_fraction_pos";
createNode multiplyDivide -n "L_Knee_IKLeg_fraction_pos";
	setAttr ".i2" -type "float3" 0.52296859 1 1 ;
createNode multiplyDivide -n "L_Ankle_IKLeg_fraction_pos";
	setAttr ".i2" -type "float3" 0.47703138 1 1 ;
createNode condition -n "_armLength_condition";
	setAttr ".op" 2;
	setAttr ".st" 1.7773563861846924;
	setAttr ".cf" -type "float3" 1.7773564 1 1 ;
createNode condition -n "_autoStretch_condition";
	setAttr ".st" 1;
createNode condition -n "_fkikMode_condition";
	setAttr ".op" 2;
createNode multiplyDivide -n "_manualStretch_range_multiplier";
	setAttr ".i2" -type "float3" 0.17773564 1 1 ;
createNode plusMinusAverage -n "L_AnkleIKHandle_limb_length";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "R_Femur_IKLeg_fraction_pos";
createNode multiplyDivide -n "R_Knee_IKLeg_fraction_pos";
	setAttr ".i2" -type "float3" 0.52297026 1 1 ;
createNode multiplyDivide -n "R_Ankle_IKLeg_fraction_pos";
	setAttr ".i2" -type "float3" 0.47702974 1 1 ;
createNode condition -n "_armLength_condition1";
	setAttr ".op" 2;
	setAttr ".st" 1.7773548364639282;
	setAttr ".cf" -type "float3" 1.7773548 1 1 ;
createNode condition -n "_autoStretch_condition1";
	setAttr ".st" 1;
createNode condition -n "_fkikMode_condition1";
	setAttr ".op" 2;
createNode multiplyDivide -n "_manualStretch_range_multiplier1";
	setAttr ".i2" -type "float3" 0.17773548 1 1 ;
createNode plusMinusAverage -n "R_AnkleIKHandle_limb_length";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "L_upperLegGeo_div";
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" 1.777 1 1 ;
createNode multiplyDivide -n "R_upperLegGeo_Div";
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" 1.777 1 1 ;
createNode multiplyDivide -n "tail_multiplyDivide1";
	setAttr ".op" 2;
createNode multiplyDivide -n "tail_multiplyDivide2";
	setAttr ".i2" -type "float3" 2 1 1 ;
createNode shadingEngine -n "tail_lambert2SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "tail_materialInfo1";
createNode shadingEngine -n "tail_lambert3SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "tail_materialInfo2";
createNode brush -n "tail_brush1";
	setAttr ".lcl[0]"  0 0.5 1;
	setAttr ".pcl[0]"  0 0.5 1;
	setAttr ".wsc[0]"  0 1 1;
	setAttr ".lws[0]"  0 1 1;
	setAttr ".pws[0]"  0 1 1;
	setAttr ".tls[0]"  0 1 1;
	setAttr -s 3 ".env";
	setAttr ".env[0].envp" 0.20000000298023224;
	setAttr ".env[0].envc" -type "float3" 0 0 0.15000001 ;
	setAttr ".env[0].envi" 2;
	setAttr ".env[1].envp" 0.5;
	setAttr ".env[1].envc" -type "float3" 0.47999999 0.55000001 0.69999999 ;
	setAttr ".env[1].envi" 2;
	setAttr ".env[2].envp" 1;
	setAttr ".env[2].envc" -type "float3" 0 0.1 0.44999999 ;
	setAttr ".env[2].envi" 2;
	setAttr ".rro[0]"  0 1 1;
createNode brush -n "tail_brush2";
	setAttr ".lcl[0]"  0 0.5 1;
	setAttr ".pcl[0]"  0 0.5 1;
	setAttr ".wsc[0]"  0 1 1;
	setAttr ".lws[0]"  0 1 1;
	setAttr ".pws[0]"  0 1 1;
	setAttr ".tls[0]"  0 1 1;
	setAttr -s 3 ".env";
	setAttr ".env[0].envp" 0.20000000298023224;
	setAttr ".env[0].envc" -type "float3" 0 0 0.15000001 ;
	setAttr ".env[0].envi" 2;
	setAttr ".env[1].envp" 0.5;
	setAttr ".env[1].envc" -type "float3" 0.47999999 0.55000001 0.69999999 ;
	setAttr ".env[1].envi" 2;
	setAttr ".env[2].envp" 1;
	setAttr ".env[2].envc" -type "float3" 0 0.1 0.44999999 ;
	setAttr ".env[2].envi" 2;
	setAttr ".rro[0]"  0 1 1;
createNode brush -n "tail_brush3";
	setAttr ".lcl[0]"  0 0.5 1;
	setAttr ".pcl[0]"  0 0.5 1;
	setAttr ".wsc[0]"  0 1 1;
	setAttr ".lws[0]"  0 1 1;
	setAttr ".pws[0]"  0 1 1;
	setAttr ".tls[0]"  0 1 1;
	setAttr -s 3 ".env";
	setAttr ".env[0].envp" 0.20000000298023224;
	setAttr ".env[0].envc" -type "float3" 0 0 0.15000001 ;
	setAttr ".env[0].envi" 2;
	setAttr ".env[1].envp" 0.5;
	setAttr ".env[1].envc" -type "float3" 0.47999999 0.55000001 0.69999999 ;
	setAttr ".env[1].envi" 2;
	setAttr ".env[2].envp" 1;
	setAttr ".env[2].envc" -type "float3" 0 0.1 0.44999999 ;
	setAttr ".env[2].envi" 2;
	setAttr ".rro[0]"  0 1 1;
createNode multiplyDivide -n "tail_L_Femur_IKLeg_fraction_pos";
createNode multiplyDivide -n "tail_L_Knee_IKLeg_fraction_pos";
	setAttr ".i2" -type "float3" 0.52296859 1 1 ;
createNode multiplyDivide -n "tail_L_Ankle_IKLeg_fraction_pos";
	setAttr ".i2" -type "float3" 0.47703138 1 1 ;
createNode multiplyDivide -n "tail__manualStretch_range_multiplier";
	setAttr ".i2" -type "float3" 0.17773564 1 1 ;
createNode plusMinusAverage -n "tail_L_AnkleIKHandle_limb_length";
	setAttr -s 2 ".i1[2]"  1;
createNode multiplyDivide -n "tail_R_Femur_IKLeg_fraction_pos";
createNode multiplyDivide -n "tail_R_Knee_IKLeg_fraction_pos";
	setAttr ".i2" -type "float3" 0.52297026 1 1 ;
createNode multiplyDivide -n "tail_R_Ankle_IKLeg_fraction_pos";
	setAttr ".i2" -type "float3" 0.47702974 1 1 ;
createNode multiplyDivide -n "tail__manualStretch_range_multiplier1";
	setAttr ".i2" -type "float3" 0.17773548 1 1 ;
createNode plusMinusAverage -n "tail_R_AnkleIKHandle_limb_length";
	setAttr -s 2 ".i1[2]"  1;
createNode multiplyDivide -n "tail_L_upperLegGeo_div";
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" 1.777 1 1 ;
createNode multiplyDivide -n "tail_R_upperLegGeo_Div";
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" 1.777 1 1 ;
createNode lambert -n "lambert4";
	setAttr ".c" -type "float3" 1 1 1 ;
createNode shadingEngine -n "lambert4SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
createNode animCurveUU -n "Tail_DO_NOT_TOUCH_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 1;
createNode makeNurbCylinder -n "makeNurbCylinder2";
	setAttr ".ax" -type "double3" 0 1 0 ;
createNode revolve -n "revolvebottomCap3";
	setAttr ".ihi" 1;
createNode revolve -n "revolvetopCap3";
	setAttr ".ihi" 1;
createNode transformGeometry -n "transformGeometry36";
	setAttr ".txf" -type "matrix" 0.093666461308725441 0 0 0 0 0.45565672126608675 0 0
		 0 0 0.093666461308725441 0 0.48394187383517817 1.6787044421437467 0 1;
createNode transformGeometry -n "transformGeometry37";
	setAttr ".txf" -type "matrix" 0.093666461308725441 0 0 0 0 0.45565672126608675 0 0
		 0 0 0.093666461308725441 0 0.48394187383517817 1.6787044421437467 0 1;
createNode transformGeometry -n "transformGeometry38";
	setAttr ".txf" -type "matrix" 0.093666461308725441 0 0 0 0 0.45565672126608675 0 0
		 0 0 0.093666461308725441 0 0.48394187383517817 1.6787044421437467 0 1;
createNode transformGeometry -n "transformGeometry39";
	setAttr ".txf" -type "matrix" 1 2.4651903288156619e-032 2.2204460492503131e-016 0
		 2.4651903288156619e-032 1 -2.2204460492503131e-016 0 -2.2204460492503131e-016 2.2204460492503131e-016 1 0
		 0.0041724827568567768 0.0010529996743802172 3.667134251202628e-016 1;
createNode transformGeometry -n "transformGeometry40";
	setAttr ".txf" -type "matrix" 1 2.4651903288156619e-032 2.2204460492503131e-016 0
		 2.4651903288156619e-032 1 -2.2204460492503131e-016 0 -2.2204460492503131e-016 2.2204460492503131e-016 1 0
		 0.0041724827568567768 0.0010529996743802172 3.667134251202628e-016 1;
createNode transformGeometry -n "transformGeometry41";
	setAttr ".txf" -type "matrix" 1 2.4651903288156619e-032 2.2204460492503131e-016 0
		 2.4651903288156619e-032 1 -2.2204460492503131e-016 0 -2.2204460492503131e-016 2.2204460492503131e-016 1 0
		 0.0041724827568567768 0.0010529996743802172 3.667134251202628e-016 1;
createNode makeNurbSphere -n "makeNurbSphere4";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".nsp" 8;
createNode transformGeometry -n "transformGeometry48";
	setAttr ".txf" -type "matrix" 0.15098565005007267 0 0 0 0 0.15098565005007267 0 0
		 0 0 0.15098565005007267 0 -0.48811399999999988 1.2041550703876951 0.038492321013281414 1;
createNode transformGeometry -n "transformGeometry45";
	setAttr ".txf" -type "matrix" 0.075100860914156228 0 0 0 0 0.42427235085432513 0 0
		 0 -3.4694469519536142e-018 0.075100860914156228 0 0.061969142866162008 -2.5856264865122558 -0.31818098792036265 1;
createNode insertKnotSurface -n "insertKnotSurface1";
	setAttr ".p[0]"  1.094872606;
	setAttr ".nk[0]"  1;
createNode transformGeometry -n "transformGeometry42";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 5.6743053080706698 7.8536674220869314 0.45148603829965817 1;
createNode makeNurbCylinder -n "makeNurbCylinder3";
	setAttr ".ax" -type "double3" 0 1 0 ;
createNode transformGeometry -n "transformGeometry46";
	setAttr ".txf" -type "matrix" 0.075100860914156228 0 0 0 0 0.42427235085432513 0 0
		 0 -3.4694469519536142e-018 0.075100860914156228 0 0.061969142866162008 -2.5856264865122558 -0.31818098792036265 1;
createNode transformGeometry -n "transformGeometry43";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 5.6743053080706698 7.8536674220869314 0.45148603829965817 1;
createNode revolve -n "revolvebottomCap5";
	setAttr ".ihi" 1;
createNode transformGeometry -n "transformGeometry47";
	setAttr ".txf" -type "matrix" 0.075100860914156228 0 0 0 0 0.42427235085432513 0 0
		 0 -3.4694469519536142e-018 0.075100860914156228 0 0.061969142866162008 -2.5856264865122558 -0.31818098792036265 1;
createNode transformGeometry -n "transformGeometry44";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 5.6743053080706698 7.8536674220869314 0.45148603829965817 1;
createNode revolve -n "revolvetopCap5";
	setAttr ".ihi" 1;
createNode makeNurbSphere -n "makeNurbSphere5";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".nsp" 8;
createNode transformGeometry -n "transformGeometry49";
	setAttr ".txf" -type "matrix" 0.074337487841669048 0 0 0 0 0.074337487841669048 4.1265595297306805e-018 0
		 0 0 0.074337487841669048 0 0 0 0 1;
createNode makeNurbSphere -n "makeNurbSphere6";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".nsp" 8;
createNode transformGeometry -n "transformGeometry50";
	setAttr ".txf" -type "matrix" 0.22032498321906102 0 0 0 0 0.22032498321906102 0 0
		 0 0 0.22032498321906102 0 -1.2325951644078309e-032 0 0 1;
createNode transformGeometry -n "transformGeometry51";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -1.2325951644078309e-032 0 0 1;
createNode transformGeometry -n "transformGeometry52";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 8.6019837042786273e-017 3.0012892283991257 -0.98212150129760412 1;
createNode transformGeometry -n "transformGeometry53";
	setAttr ".txf" -type "matrix" 1.025277236781392 0 0 0 0 1.025277236781392 0 0 0 0 1.025277236781392 0
		 -2.174343788827266e-018 -0.075864298475686098 0.024825317736395736 1;
createNode transformGeometry -n "transformGeometry54";
	setAttr ".txf" -type "matrix" 0.87481880622734309 0 0 0 0 0.87481880622734309 0 0
		 0 0 0.87481880622734309 0 1.0768065889145394e-017 0.37570496846801893 -0.12294314196222811 1;
createNode transformGeometry -n "transformGeometry55";
	setAttr ".txf" -type "matrix" 1.2133167037003305 0 0 0 0 1.2133167037003305 0 0
		 0 0 1.2133167037003305 0 -1.8349468090806752e-017 -0.64022512505340989 0.20950292129002479 1;
createNode makeNurbSphere -n "makeNurbSphere7";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".nsp" 8;
createNode makeNurbCylinder -n "makeNurbCylinder4";
	setAttr ".ax" -type "double3" 0 1 0 ;
createNode revolve -n "revolvebottomCap7";
	setAttr ".ihi" 1;
createNode revolve -n "revolvetopCap7";
	setAttr ".ihi" 1;
createNode transformGeometry -n "transformGeometry56";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 3 0 1;
createNode transformGeometry -n "transformGeometry57";
	setAttr ".txf" -type "matrix" 1.052790624366442 0 0 0 0 0.10999520823480026 0 0
		 0 0 1.052790624366442 0 0 3 0 1;
createNode transformGeometry -n "transformGeometry58";
	setAttr ".txf" -type "matrix" 1.052790624366442 0 0 0 0 0.10999520823480026 0 0
		 0 0 1.052790624366442 0 0 3 0 1;
createNode transformGeometry -n "transformGeometry59";
	setAttr ".txf" -type "matrix" 1.052790624366442 0 0 0 0 0.10999520823480026 0 0
		 0 0 1.052790624366442 0 0 3 0 1;
createNode cluster -n "cluster1";
	setAttr -s 4 ".ip";
	setAttr -s 4 ".og";
	setAttr ".en" 0.5;
	setAttr -s 64 ".wl[3].w";
	setAttr ".wl[3].w[0:7]" 0 0 0 0 0 0 0 0;
	setAttr ".wl[3].w[11:18]" 0 0 0 0 0 0 0 0;
	setAttr ".wl[3].w[22:29]" 0.10000000149011612 0.10000000149011612 0.10000000149011612 
		0.10000000149011612 0.10000000149011612 0.10000000149011612 0.10000000149011612 0.10000000149011612;
	setAttr ".wl[3].w[33:40]" 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr ".wl[3].w[77:84]" 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr ".wl[3].w[88:95]" 0.10000000149011612 0.10000000149011612 0.10000000149011612 
		0.10000000149011612 0.10000000149011612 0.10000000149011612 0.10000000149011612 0.10000000149011612;
	setAttr ".wl[3].w[99:106]" 0 0 0 0 0 0 0 0;
	setAttr ".wl[3].w[110:117]" 0 0 0 0 0 0 0 0;
	setAttr -s 4 ".gm";
	setAttr ".gm[0]" -type "matrix" 0.99694961309432983 0 0 0 0 1.0030597448348999 0 0
		 0 0 0.99694961309432983 0 0 -0.0091792345047165824 0 1;
	setAttr ".gm[1]" -type "matrix" 0.99694961309432983 0 0 0 0 1.0030597448348999 0 0
		 0 0 0.99694961309432983 0 0 -0.0091792345047165824 0 1;
	setAttr ".gm[2]" -type "matrix" 0.99694961309432983 0 0 0 0 1.0030597448348999 0 0
		 0 0 0.99694961309432983 0 0 -0.0091792345047165824 0 1;
	setAttr ".gm[3]" -type "matrix" 0.99694961309432983 0 0 0 0 1.0030597448348999 0 0
		 0 0 0.99694961309432983 0 0 -0.0091792345047165824 0 1;
createNode tweak -n "tweak1";
createNode tweak -n "tweak2";
createNode tweak -n "tweak3";
createNode tweak -n "tweak4";
createNode objectSet -n "cluster1Set";
	setAttr ".ihi" 0;
	setAttr -s 4 ".dsm";
	setAttr ".vo" yes;
	setAttr -s 4 ".gn";
createNode groupId -n "cluster1GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "cluster1GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[0:3][0:7]";
createNode groupId -n "cluster1GroupId1";
	setAttr ".ihi" 0;
createNode groupParts -n "cluster1GroupParts1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[0:3][0:7]";
createNode groupId -n "cluster1GroupId2";
	setAttr ".ihi" 0;
createNode groupParts -n "cluster1GroupParts2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[0:3][0:7]";
createNode groupId -n "cluster1GroupId3";
	setAttr ".ihi" 0;
createNode groupParts -n "cluster1GroupParts3";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[0:10][0:7]";
createNode objectSet -n "tweakSet1";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId5";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*][*]";
createNode objectSet -n "tweakSet2";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId6";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts6";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*][*]";
createNode objectSet -n "tweakSet3";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId7";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts7";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*][*]";
createNode objectSet -n "tweakSet4";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts8";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*][*]";
createNode makeNurbSphere -n "makeNurbSphere8";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".nsp" 8;
createNode transformGeometry -n "transformGeometry60";
	setAttr ".txf" -type "matrix" 0.11146596540163839 0 0 0 0 0.11146596540163839 0 0
		 0 0 0.11146596540163839 0 0 3 0 1;
createNode transformGeometry -n "transformGeometry61";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -3 0 1;
createNode pointOnSurfaceInfo -n "pointOnSurfaceInfo1";
	setAttr ".u" 1;
	setAttr ".v" 6;
select -ne :time1;
	setAttr ".o" 0;
select -ne :renderPartition;
	setAttr -s 7 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 5 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 34 ".u";
select -ne :lightList1;
select -ne :initialShadingGroup;
	setAttr -k on ".cch";
	setAttr -k on ".nds";
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr -k on ".cch";
	setAttr -k on ".nds";
	setAttr ".ro" yes;
select -ne :hardwareRenderGlobals;
	addAttr -ci true -sn "ani" -ln "animation" -bt "ANIM" -min 0 -max 1 -at "bool";
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
	setAttr ".enpt" no;
	setAttr ".hgcd" no;
	setAttr ".hgci" no;
	setAttr -k on ".ani";
select -ne :defaultHardwareRenderGlobals;
	setAttr ".fn" -type "string" "im";
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
select -ne :ikSystem;
connectAttr "transformGeometry32.og" "ball_CTRLShape.cr";
connectAttr "transformGeometry33.og" "SQSTdown_CTRLShape.cr";
connectAttr "joint1.msg" "ikHandle1.hsj";
connectAttr "effector1.hp" "ikHandle1.hee";
connectAttr "ikRPsolver.msg" "ikHandle1.hsv";
connectAttr "joint1.s" "joint2.is";
connectAttr "distanceDimensionShape1.dist" "joint2.ty";
connectAttr "joint2.tx" "effector1.tx";
connectAttr "joint2.ty" "effector1.ty";
connectAttr "joint2.tz" "effector1.tz";
connectAttr "joint1.s" "rt_leg_surface_position.is";
connectAttr "rt_leg_surface_position.s" "R_Femur_Leg.is";
connectAttr "R_Femur_IKLeg.rx" "R_Femur_Leg.rx";
connectAttr "R_Femur_IKLeg.ry" "R_Femur_Leg.ry";
connectAttr "R_Femur_IKLeg.rz" "R_Femur_Leg.rz";
connectAttr "R_Femur_IKLeg.t" "R_Femur_Leg.t";
connectAttr "R_Femur_Leg.s" "R_Knee_Leg.is";
connectAttr "R_Knee_IKLeg.rx" "R_Knee_Leg.rx";
connectAttr "R_Knee_IKLeg.ry" "R_Knee_Leg.ry";
connectAttr "R_Knee_IKLeg.rz" "R_Knee_Leg.rz";
connectAttr "R_Knee_IKLeg.t" "R_Knee_Leg.t";
connectAttr "R_Knee_Leg.s" "R_Ankle_Leg.is";
connectAttr "R_Ankle_IKLeg.rx" "R_Ankle_Leg.rx";
connectAttr "R_Ankle_IKLeg.ry" "R_Ankle_Leg.ry";
connectAttr "R_Ankle_IKLeg.rz" "R_Ankle_Leg.rz";
connectAttr "R_Ankle_IKLeg.t" "R_Ankle_Leg.t";
connectAttr "R_Ankle_Leg.s" "R_Ball_Leg.is";
connectAttr "R_Ball_IKLeg.rx" "R_Ball_Leg.rx";
connectAttr "R_Ball_IKLeg.ry" "R_Ball_Leg.ry";
connectAttr "R_Ball_IKLeg.rz" "R_Ball_Leg.rz";
connectAttr "R_Ball_Leg.s" "R_Toe_Leg.is";
connectAttr "R_Toe_IKLeg.rx" "R_Toe_Leg.rx";
connectAttr "R_Toe_IKLeg.ry" "R_Toe_Leg.ry";
connectAttr "R_Toe_IKLeg.rz" "R_Toe_Leg.rz";
connectAttr "rt_leg_surface_position.s" "R_Femur_IKLeg.is";
connectAttr "R_Knee_IKLeg_fraction_pos.ox" "R_Knee_IKLeg.tx";
connectAttr "R_Femur_IKLeg.s" "R_Knee_IKLeg.is";
connectAttr "R_Ankle_IKLeg_fraction_pos.ox" "R_Ankle_IKLeg.tx";
connectAttr "R_Knee_IKLeg.s" "R_Ankle_IKLeg.is";
connectAttr "R_Ankle_IKLeg.s" "R_Ball_IKLeg.is";
connectAttr "R_Ball_IKLeg.s" "R_Toe_IKLeg.is";
connectAttr "R_Toe_IKLeg.tx" "effector7.tx";
connectAttr "R_Toe_IKLeg.ty" "effector7.ty";
connectAttr "R_Toe_IKLeg.tz" "effector7.tz";
connectAttr "R_Ball_IKLeg.tx" "effector6.tx";
connectAttr "R_Ball_IKLeg.ty" "effector6.ty";
connectAttr "R_Ball_IKLeg.tz" "effector6.tz";
connectAttr "R_Ankle_IKLeg.tx" "effector5.tx";
connectAttr "R_Ankle_IKLeg.ty" "effector5.ty";
connectAttr "R_Ankle_IKLeg.tz" "effector5.tz";
connectAttr "joint1.s" "lt_leg_surface_position.is";
connectAttr "lt_leg_surface_position.s" "L_Femur_Leg.is";
connectAttr "L_Femur_IKLeg.rx" "L_Femur_Leg.rx";
connectAttr "L_Femur_IKLeg.ry" "L_Femur_Leg.ry";
connectAttr "L_Femur_IKLeg.rz" "L_Femur_Leg.rz";
connectAttr "L_Femur_IKLeg.t" "L_Femur_Leg.t";
connectAttr "L_Femur_Leg.s" "L_Knee_Leg.is";
connectAttr "L_Knee_IKLeg.rx" "L_Knee_Leg.rx";
connectAttr "L_Knee_IKLeg.ry" "L_Knee_Leg.ry";
connectAttr "L_Knee_IKLeg.rz" "L_Knee_Leg.rz";
connectAttr "L_Knee_IKLeg.t" "L_Knee_Leg.t";
connectAttr "L_Knee_Leg.s" "L_Ankle_Leg.is";
connectAttr "L_Ankle_IKLeg.rx" "L_Ankle_Leg.rx";
connectAttr "L_Ankle_IKLeg.ry" "L_Ankle_Leg.ry";
connectAttr "L_Ankle_IKLeg.rz" "L_Ankle_Leg.rz";
connectAttr "L_Ankle_IKLeg.t" "L_Ankle_Leg.t";
connectAttr "L_Ankle_Leg.s" "L_Ball_Leg.is";
connectAttr "L_Ball_IKLeg.rx" "L_Ball_Leg.rx";
connectAttr "L_Ball_IKLeg.ry" "L_Ball_Leg.ry";
connectAttr "L_Ball_IKLeg.rz" "L_Ball_Leg.rz";
connectAttr "L_Ball_Leg.s" "L_Toe_Leg.is";
connectAttr "L_Toe_IKLeg.rx" "L_Toe_Leg.rx";
connectAttr "L_Toe_IKLeg.ry" "L_Toe_Leg.ry";
connectAttr "L_Toe_IKLeg.rz" "L_Toe_Leg.rz";
connectAttr "lt_leg_surface_position.s" "L_Femur_IKLeg.is";
connectAttr "L_Knee_IKLeg_fraction_pos.ox" "L_Knee_IKLeg.tx";
connectAttr "L_Femur_IKLeg.s" "L_Knee_IKLeg.is";
connectAttr "L_Ankle_IKLeg_fraction_pos.ox" "L_Ankle_IKLeg.tx";
connectAttr "L_Knee_IKLeg.s" "L_Ankle_IKLeg.is";
connectAttr "L_Ankle_IKLeg.s" "L_Ball_IKLeg.is";
connectAttr "L_Ball_IKLeg.s" "L_Toe_IKLeg.is";
connectAttr "L_Toe_IKLeg.tx" "effector4.tx";
connectAttr "L_Toe_IKLeg.ty" "effector4.ty";
connectAttr "L_Toe_IKLeg.tz" "effector4.tz";
connectAttr "L_Ball_IKLeg.tx" "effector3.tx";
connectAttr "L_Ball_IKLeg.ty" "effector3.ty";
connectAttr "L_Ball_IKLeg.tz" "effector3.tz";
connectAttr "L_Ankle_IKLeg.tx" "effector2.tx";
connectAttr "L_Ankle_IKLeg.ty" "effector2.ty";
connectAttr "L_Ankle_IKLeg.tz" "effector2.tz";
connectAttr "transformGeometry34.og" "SQST_middle_CTRLShape.cr";
connectAttr "locatorShape1.wp" "distanceDimensionShape1.sp";
connectAttr "locatorShape2.wp" "distanceDimensionShape1.ep";
connectAttr "L_HeelRoll_Grp_rotateX.o" "L_HeelRoll_Grp.rx";
connectAttr "unitConversion3.o" "L_ToeRoll_Grp.ry";
connectAttr "L_ToeRoll_Grp_rotateX.o" "L_ToeRoll_Grp.rx";
connectAttr "unitConversion2.o" "L_BallTwist_Grp.ry";
connectAttr "L_BallRoll_Grp_rotateX.o" "L_BallRoll_Grp.rx";
connectAttr "L_Ankle_IKLeg.msg" "L_BallIKHandle.hsj";
connectAttr "effector3.hp" "L_BallIKHandle.hee";
connectAttr "ikRPsolver.msg" "L_BallIKHandle.hsv";
connectAttr "L_Femur_IKLeg.msg" "L_AnkleIKHandle.hsj";
connectAttr "effector2.hp" "L_AnkleIKHandle.hee";
connectAttr "ikRPsolver.msg" "L_AnkleIKHandle.hsv";
connectAttr "L_AnkleIKHandle_poleVectorConstraint1.ctx" "L_AnkleIKHandle.pvx";
connectAttr "L_AnkleIKHandle_poleVectorConstraint1.cty" "L_AnkleIKHandle.pvy";
connectAttr "L_AnkleIKHandle_poleVectorConstraint1.ctz" "L_AnkleIKHandle.pvz";
connectAttr "L_AnkleIKHandle.pim" "L_AnkleIKHandle_poleVectorConstraint1.cpim";
connectAttr "L_Femur_IKLeg.pm" "L_AnkleIKHandle_poleVectorConstraint1.ps";
connectAttr "L_Femur_IKLeg.t" "L_AnkleIKHandle_poleVectorConstraint1.crp";
connectAttr "L_Knee.t" "L_AnkleIKHandle_poleVectorConstraint1.tg[0].tt";
connectAttr "L_Knee.rp" "L_AnkleIKHandle_poleVectorConstraint1.tg[0].trp";
connectAttr "L_Knee.rpt" "L_AnkleIKHandle_poleVectorConstraint1.tg[0].trt";
connectAttr "L_Knee.pm" "L_AnkleIKHandle_poleVectorConstraint1.tg[0].tpm";
connectAttr "L_AnkleIKHandle_poleVectorConstraint1.w0" "L_AnkleIKHandle_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "unitConversion1.o" "L_BendToe_Grp.rx";
connectAttr "L_Ball_IKLeg.msg" "L_ToeIKHandle.hsj";
connectAttr "effector4.hp" "L_ToeIKHandle.hee";
connectAttr "ikRPsolver.msg" "L_ToeIKHandle.hsv";
connectAttr "R_HeelRoll_Grp_rotateX.o" "R_HeelRoll_Grp.rx";
connectAttr "unitConversion6.o" "R_ToeRoll_Grp.ry";
connectAttr "R_ToeRoll_Grp_rotateX.o" "R_ToeRoll_Grp.rx";
connectAttr "unitConversion5.o" "R_BallTwist_Grp.ry";
connectAttr "R_BallRoll_Grp_rotateX.o" "R_BallRoll_Grp.rx";
connectAttr "R_Ankle_IKLeg.msg" "R_BallIKHandle.hsj";
connectAttr "effector6.hp" "R_BallIKHandle.hee";
connectAttr "ikRPsolver.msg" "R_BallIKHandle.hsv";
connectAttr "R_Femur_IKLeg.msg" "R_AnkleIKHandle.hsj";
connectAttr "effector5.hp" "R_AnkleIKHandle.hee";
connectAttr "ikRPsolver.msg" "R_AnkleIKHandle.hsv";
connectAttr "R_AnkleIKHandle_poleVectorConstraint1.ctx" "R_AnkleIKHandle.pvx";
connectAttr "R_AnkleIKHandle_poleVectorConstraint1.cty" "R_AnkleIKHandle.pvy";
connectAttr "R_AnkleIKHandle_poleVectorConstraint1.ctz" "R_AnkleIKHandle.pvz";
connectAttr "R_AnkleIKHandle.pim" "R_AnkleIKHandle_poleVectorConstraint1.cpim";
connectAttr "R_Femur_IKLeg.pm" "R_AnkleIKHandle_poleVectorConstraint1.ps";
connectAttr "R_Femur_IKLeg.t" "R_AnkleIKHandle_poleVectorConstraint1.crp";
connectAttr "R_Knee.t" "R_AnkleIKHandle_poleVectorConstraint1.tg[0].tt";
connectAttr "R_Knee.rp" "R_AnkleIKHandle_poleVectorConstraint1.tg[0].trp";
connectAttr "R_Knee.rpt" "R_AnkleIKHandle_poleVectorConstraint1.tg[0].trt";
connectAttr "R_Knee.pm" "R_AnkleIKHandle_poleVectorConstraint1.tg[0].tpm";
connectAttr "R_AnkleIKHandle_poleVectorConstraint1.w0" "R_AnkleIKHandle_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "unitConversion4.o" "R_BendToe_Grp.rx";
connectAttr "R_Ball_IKLeg.msg" "R_ToeIKHandle.hsj";
connectAttr "effector7.hp" "R_ToeIKHandle.hee";
connectAttr "ikRPsolver.msg" "R_ToeIKHandle.hsv";
connectAttr "null1_pointConstraint1.ctx" "L_AnkleIKHandle_hideme_extension_start.tx"
		 -l on;
connectAttr "null1_pointConstraint1.cty" "L_AnkleIKHandle_hideme_extension_start.ty"
		 -l on;
connectAttr "null1_pointConstraint1.ctz" "L_AnkleIKHandle_hideme_extension_start.tz"
		 -l on;
connectAttr "null1_aimConstraint1.crx" "L_AnkleIKHandle_hideme_extension_start.rx"
		 -l on;
connectAttr "null1_aimConstraint1.cry" "L_AnkleIKHandle_hideme_extension_start.ry"
		 -l on;
connectAttr "null1_aimConstraint1.crz" "L_AnkleIKHandle_hideme_extension_start.rz"
		 -l on;
connectAttr "null2_pointConstraint1.ctx" "L_AnkleIKHandle_hideme_extension_end.tx"
		 -l on;
connectAttr "null2_pointConstraint1.cty" "L_AnkleIKHandle_hideme_extension_end.ty"
		 -l on;
connectAttr "null2_pointConstraint1.ctz" "L_AnkleIKHandle_hideme_extension_end.tz"
		 -l on;
connectAttr "L_AnkleIKHandle_hideme_extension_end.pim" "null2_pointConstraint1.cpim"
		;
connectAttr "L_AnkleIKHandle_hideme_extension_end.rp" "null2_pointConstraint1.crp"
		;
connectAttr "L_AnkleIKHandle_hideme_extension_end.rpt" "null2_pointConstraint1.crt"
		;
connectAttr "L_AnkleIKHandle.t" "null2_pointConstraint1.tg[0].tt";
connectAttr "L_AnkleIKHandle.rp" "null2_pointConstraint1.tg[0].trp";
connectAttr "L_AnkleIKHandle.rpt" "null2_pointConstraint1.tg[0].trt";
connectAttr "L_AnkleIKHandle.pm" "null2_pointConstraint1.tg[0].tpm";
connectAttr "null2_pointConstraint1.w0" "null2_pointConstraint1.tg[0].tw";
connectAttr "L_AnkleIKHandle_hideme_extension_start.pim" "null1_pointConstraint1.cpim"
		;
connectAttr "L_AnkleIKHandle_hideme_extension_start.rp" "null1_pointConstraint1.crp"
		;
connectAttr "L_AnkleIKHandle_hideme_extension_start.rpt" "null1_pointConstraint1.crt"
		;
connectAttr "L_Femur_IKLeg.t" "null1_pointConstraint1.tg[0].tt";
connectAttr "L_Femur_IKLeg.rp" "null1_pointConstraint1.tg[0].trp";
connectAttr "L_Femur_IKLeg.rpt" "null1_pointConstraint1.tg[0].trt";
connectAttr "L_Femur_IKLeg.pm" "null1_pointConstraint1.tg[0].tpm";
connectAttr "null1_pointConstraint1.w0" "null1_pointConstraint1.tg[0].tw";
connectAttr "L_AnkleIKHandle_hideme_extension_start.pim" "null1_aimConstraint1.cpim"
		;
connectAttr "L_AnkleIKHandle_hideme_extension_start.t" "null1_aimConstraint1.ct"
		;
connectAttr "L_AnkleIKHandle_hideme_extension_start.rp" "null1_aimConstraint1.crp"
		;
connectAttr "L_AnkleIKHandle_hideme_extension_start.rpt" "null1_aimConstraint1.crt"
		;
connectAttr "L_AnkleIKHandle_hideme_extension_start.ro" "null1_aimConstraint1.cro"
		;
connectAttr "L_AnkleIKHandle.t" "null1_aimConstraint1.tg[0].tt";
connectAttr "L_AnkleIKHandle.rp" "null1_aimConstraint1.tg[0].trp";
connectAttr "L_AnkleIKHandle.rpt" "null1_aimConstraint1.tg[0].trt";
connectAttr "L_AnkleIKHandle.pm" "null1_aimConstraint1.tg[0].tpm";
connectAttr "null1_aimConstraint1.w0" "null1_aimConstraint1.tg[0].tw";
connectAttr "null3_pointConstraint1.ctx" "R_AnkleIKHandle_hideme_extension_start.tx"
		 -l on;
connectAttr "null3_pointConstraint1.cty" "R_AnkleIKHandle_hideme_extension_start.ty"
		 -l on;
connectAttr "null3_pointConstraint1.ctz" "R_AnkleIKHandle_hideme_extension_start.tz"
		 -l on;
connectAttr "null3_aimConstraint1.crx" "R_AnkleIKHandle_hideme_extension_start.rx"
		 -l on;
connectAttr "null3_aimConstraint1.cry" "R_AnkleIKHandle_hideme_extension_start.ry"
		 -l on;
connectAttr "null3_aimConstraint1.crz" "R_AnkleIKHandle_hideme_extension_start.rz"
		 -l on;
connectAttr "null4_pointConstraint1.ctx" "R_AnkleIKHandle_hideme_extension_end.tx"
		 -l on;
connectAttr "null4_pointConstraint1.cty" "R_AnkleIKHandle_hideme_extension_end.ty"
		 -l on;
connectAttr "null4_pointConstraint1.ctz" "R_AnkleIKHandle_hideme_extension_end.tz"
		 -l on;
connectAttr "R_AnkleIKHandle_hideme_extension_end.pim" "null4_pointConstraint1.cpim"
		;
connectAttr "R_AnkleIKHandle_hideme_extension_end.rp" "null4_pointConstraint1.crp"
		;
connectAttr "R_AnkleIKHandle_hideme_extension_end.rpt" "null4_pointConstraint1.crt"
		;
connectAttr "R_AnkleIKHandle.t" "null4_pointConstraint1.tg[0].tt";
connectAttr "R_AnkleIKHandle.rp" "null4_pointConstraint1.tg[0].trp";
connectAttr "R_AnkleIKHandle.rpt" "null4_pointConstraint1.tg[0].trt";
connectAttr "R_AnkleIKHandle.pm" "null4_pointConstraint1.tg[0].tpm";
connectAttr "null4_pointConstraint1.w0" "null4_pointConstraint1.tg[0].tw";
connectAttr "R_AnkleIKHandle_hideme_extension_start.pim" "null3_pointConstraint1.cpim"
		;
connectAttr "R_AnkleIKHandle_hideme_extension_start.rp" "null3_pointConstraint1.crp"
		;
connectAttr "R_AnkleIKHandle_hideme_extension_start.rpt" "null3_pointConstraint1.crt"
		;
connectAttr "R_Femur_IKLeg.t" "null3_pointConstraint1.tg[0].tt";
connectAttr "R_Femur_IKLeg.rp" "null3_pointConstraint1.tg[0].trp";
connectAttr "R_Femur_IKLeg.rpt" "null3_pointConstraint1.tg[0].trt";
connectAttr "R_Femur_IKLeg.pm" "null3_pointConstraint1.tg[0].tpm";
connectAttr "null3_pointConstraint1.w0" "null3_pointConstraint1.tg[0].tw";
connectAttr "R_AnkleIKHandle_hideme_extension_start.pim" "null3_aimConstraint1.cpim"
		;
connectAttr "R_AnkleIKHandle_hideme_extension_start.t" "null3_aimConstraint1.ct"
		;
connectAttr "R_AnkleIKHandle_hideme_extension_start.rp" "null3_aimConstraint1.crp"
		;
connectAttr "R_AnkleIKHandle_hideme_extension_start.rpt" "null3_aimConstraint1.crt"
		;
connectAttr "R_AnkleIKHandle_hideme_extension_start.ro" "null3_aimConstraint1.cro"
		;
connectAttr "R_AnkleIKHandle.t" "null3_aimConstraint1.tg[0].tt";
connectAttr "R_AnkleIKHandle.rp" "null3_aimConstraint1.tg[0].trp";
connectAttr "R_AnkleIKHandle.rpt" "null3_aimConstraint1.tg[0].trt";
connectAttr "R_AnkleIKHandle.pm" "null3_aimConstraint1.tg[0].tpm";
connectAttr "null3_aimConstraint1.w0" "null3_aimConstraint1.tg[0].tw";
connectAttr "Tail_DO_NOT_TOUCH_visibility.o" "Tail_DO_NOT_TOUCH.v";
connectAttr "tailGroup_parentConstraint1.ctx" "tailGroup.tx";
connectAttr "tailGroup_parentConstraint1.cty" "tailGroup.ty";
connectAttr "tailGroup_parentConstraint1.ctz" "tailGroup.tz";
connectAttr "tailGroup_parentConstraint1.crx" "tailGroup.rx";
connectAttr "tailGroup_parentConstraint1.cry" "tailGroup.ry";
connectAttr "tailGroup_parentConstraint1.crz" "tailGroup.rz";
connectAttr "fkTail1_orientConstraint1.crx" "fkTail1.rx";
connectAttr "fkTail1_orientConstraint1.cry" "fkTail1.ry";
connectAttr "fkTail1_orientConstraint1.crz" "fkTail1.rz";
connectAttr "fkTail1.s" "fkTail2.is";
connectAttr "fkTail2_orientConstraint1.crx" "fkTail2.rx";
connectAttr "fkTail2_orientConstraint1.cry" "fkTail2.ry";
connectAttr "fkTail2_orientConstraint1.crz" "fkTail2.rz";
connectAttr "fkTail2.s" "fkTail3.is";
connectAttr "fkTail3_orientConstraint1.crx" "fkTail3.rx";
connectAttr "fkTail3_orientConstraint1.cry" "fkTail3.ry";
connectAttr "fkTail3_orientConstraint1.crz" "fkTail3.rz";
connectAttr "fkTail3.s" "fkTail4.is";
connectAttr "fkTail4_orientConstraint1.crx" "fkTail4.rx";
connectAttr "fkTail4_orientConstraint1.cry" "fkTail4.ry";
connectAttr "fkTail4_orientConstraint1.crz" "fkTail4.rz";
connectAttr "fkTail4.s" "fkTail5.is";
connectAttr "fkTail4.ro" "fkTail4_orientConstraint1.cro";
connectAttr "fkTail4.pim" "fkTail4_orientConstraint1.cpim";
connectAttr "fkTail4.jo" "fkTail4_orientConstraint1.cjo";
connectAttr "TailCTRL4.r" "fkTail4_orientConstraint1.tg[0].tr";
connectAttr "TailCTRL4.ro" "fkTail4_orientConstraint1.tg[0].tro";
connectAttr "TailCTRL4.pm" "fkTail4_orientConstraint1.tg[0].tpm";
connectAttr "fkTail4_orientConstraint1.w0" "fkTail4_orientConstraint1.tg[0].tw";
connectAttr "fkTail3.ro" "fkTail3_orientConstraint1.cro";
connectAttr "fkTail3.pim" "fkTail3_orientConstraint1.cpim";
connectAttr "fkTail3.jo" "fkTail3_orientConstraint1.cjo";
connectAttr "TailCTRL3.r" "fkTail3_orientConstraint1.tg[0].tr";
connectAttr "TailCTRL3.ro" "fkTail3_orientConstraint1.tg[0].tro";
connectAttr "TailCTRL3.pm" "fkTail3_orientConstraint1.tg[0].tpm";
connectAttr "fkTail3_orientConstraint1.w0" "fkTail3_orientConstraint1.tg[0].tw";
connectAttr "fkTail2.ro" "fkTail2_orientConstraint1.cro";
connectAttr "fkTail2.pim" "fkTail2_orientConstraint1.cpim";
connectAttr "fkTail2.jo" "fkTail2_orientConstraint1.cjo";
connectAttr "TailCTRL_.r" "fkTail2_orientConstraint1.tg[0].tr";
connectAttr "TailCTRL_.ro" "fkTail2_orientConstraint1.tg[0].tro";
connectAttr "TailCTRL_.pm" "fkTail2_orientConstraint1.tg[0].tpm";
connectAttr "fkTail2_orientConstraint1.w0" "fkTail2_orientConstraint1.tg[0].tw";
connectAttr "fkTail1.ro" "fkTail1_orientConstraint1.cro";
connectAttr "fkTail1.pim" "fkTail1_orientConstraint1.cpim";
connectAttr "fkTail1.jo" "fkTail1_orientConstraint1.cjo";
connectAttr "TailCTRL1.r" "fkTail1_orientConstraint1.tg[0].tr";
connectAttr "TailCTRL1.ro" "fkTail1_orientConstraint1.tg[0].tro";
connectAttr "TailCTRL1.pm" "fkTail1_orientConstraint1.tg[0].tpm";
connectAttr "fkTail1_orientConstraint1.w0" "fkTail1_orientConstraint1.tg[0].tw";
connectAttr "tailGroup.ro" "tailGroup_parentConstraint1.cro";
connectAttr "tailGroup.pim" "tailGroup_parentConstraint1.cpim";
connectAttr "tailGroup.rp" "tailGroup_parentConstraint1.crp";
connectAttr "tailGroup.rpt" "tailGroup_parentConstraint1.crt";
connectAttr "tailSpacer3.t" "tailGroup_parentConstraint1.tg[0].tt";
connectAttr "tailSpacer3.rp" "tailGroup_parentConstraint1.tg[0].trp";
connectAttr "tailSpacer3.rpt" "tailGroup_parentConstraint1.tg[0].trt";
connectAttr "tailSpacer3.r" "tailGroup_parentConstraint1.tg[0].tr";
connectAttr "tailSpacer3.ro" "tailGroup_parentConstraint1.tg[0].tro";
connectAttr "tailSpacer3.s" "tailGroup_parentConstraint1.tg[0].ts";
connectAttr "tailSpacer3.pm" "tailGroup_parentConstraint1.tg[0].tpm";
connectAttr "tailGroup_parentConstraint1.w0" "tailGroup_parentConstraint1.tg[0].tw"
		;
connectAttr "CTRLgroup_parentConstraint1.ctx" "CTRLgroup.tx";
connectAttr "CTRLgroup_parentConstraint1.cty" "CTRLgroup.ty";
connectAttr "CTRLgroup_parentConstraint1.ctz" "CTRLgroup.tz";
connectAttr "CTRLgroup_parentConstraint1.crx" "CTRLgroup.rx";
connectAttr "CTRLgroup_parentConstraint1.cry" "CTRLgroup.ry";
connectAttr "CTRLgroup_parentConstraint1.crz" "CTRLgroup.rz";
connectAttr "CTRLgroup.ro" "CTRLgroup_parentConstraint1.cro";
connectAttr "CTRLgroup.pim" "CTRLgroup_parentConstraint1.cpim";
connectAttr "CTRLgroup.rp" "CTRLgroup_parentConstraint1.crp";
connectAttr "CTRLgroup.rpt" "CTRLgroup_parentConstraint1.crt";
connectAttr "tailSpacer3.t" "CTRLgroup_parentConstraint1.tg[0].tt";
connectAttr "tailSpacer3.rp" "CTRLgroup_parentConstraint1.tg[0].trp";
connectAttr "tailSpacer3.rpt" "CTRLgroup_parentConstraint1.tg[0].trt";
connectAttr "tailSpacer3.r" "CTRLgroup_parentConstraint1.tg[0].tr";
connectAttr "tailSpacer3.ro" "CTRLgroup_parentConstraint1.tg[0].tro";
connectAttr "tailSpacer3.s" "CTRLgroup_parentConstraint1.tg[0].ts";
connectAttr "tailSpacer3.pm" "CTRLgroup_parentConstraint1.tg[0].tpm";
connectAttr "CTRLgroup_parentConstraint1.w0" "CTRLgroup_parentConstraint1.tg[0].tw"
		;
connectAttr "transformGeometry49.og" "tail_spacerShape2.cr";
connectAttr "tail4_parentConstraint1.ctx" "tail4.tx";
connectAttr "tail4_parentConstraint1.cty" "tail4.ty";
connectAttr "tail4_parentConstraint1.ctz" "tail4.tz";
connectAttr "tail4_parentConstraint1.crx" "tail4.rx";
connectAttr "tail4_parentConstraint1.cry" "tail4.ry";
connectAttr "tail4_parentConstraint1.crz" "tail4.rz";
connectAttr "tail4.ro" "tail4_parentConstraint1.cro";
connectAttr "tail4.pim" "tail4_parentConstraint1.cpim";
connectAttr "tail4.rp" "tail4_parentConstraint1.crp";
connectAttr "tail4.rpt" "tail4_parentConstraint1.crt";
connectAttr "fkTail4.t" "tail4_parentConstraint1.tg[0].tt";
connectAttr "fkTail4.rp" "tail4_parentConstraint1.tg[0].trp";
connectAttr "fkTail4.rpt" "tail4_parentConstraint1.tg[0].trt";
connectAttr "fkTail4.r" "tail4_parentConstraint1.tg[0].tr";
connectAttr "fkTail4.ro" "tail4_parentConstraint1.tg[0].tro";
connectAttr "fkTail4.s" "tail4_parentConstraint1.tg[0].ts";
connectAttr "fkTail4.pm" "tail4_parentConstraint1.tg[0].tpm";
connectAttr "fkTail4.jo" "tail4_parentConstraint1.tg[0].tjo";
connectAttr "tail4_parentConstraint1.w0" "tail4_parentConstraint1.tg[0].tw";
connectAttr "tail3_parentConstraint1.ctx" "tail3.tx";
connectAttr "tail3_parentConstraint1.cty" "tail3.ty";
connectAttr "tail3_parentConstraint1.ctz" "tail3.tz";
connectAttr "tail3_parentConstraint1.crx" "tail3.rx";
connectAttr "tail3_parentConstraint1.cry" "tail3.ry";
connectAttr "tail3_parentConstraint1.crz" "tail3.rz";
connectAttr "tail3.ro" "tail3_parentConstraint1.cro";
connectAttr "tail3.pim" "tail3_parentConstraint1.cpim";
connectAttr "tail3.rp" "tail3_parentConstraint1.crp";
connectAttr "tail3.rpt" "tail3_parentConstraint1.crt";
connectAttr "fkTail3.t" "tail3_parentConstraint1.tg[0].tt";
connectAttr "fkTail3.rp" "tail3_parentConstraint1.tg[0].trp";
connectAttr "fkTail3.rpt" "tail3_parentConstraint1.tg[0].trt";
connectAttr "fkTail3.r" "tail3_parentConstraint1.tg[0].tr";
connectAttr "fkTail3.ro" "tail3_parentConstraint1.tg[0].tro";
connectAttr "fkTail3.s" "tail3_parentConstraint1.tg[0].ts";
connectAttr "fkTail3.pm" "tail3_parentConstraint1.tg[0].tpm";
connectAttr "fkTail3.jo" "tail3_parentConstraint1.tg[0].tjo";
connectAttr "tail3_parentConstraint1.w0" "tail3_parentConstraint1.tg[0].tw";
connectAttr "tail2_parentConstraint1.ctx" "tail2.tx";
connectAttr "tail2_parentConstraint1.cty" "tail2.ty";
connectAttr "tail2_parentConstraint1.ctz" "tail2.tz";
connectAttr "tail2_parentConstraint1.crx" "tail2.rx";
connectAttr "tail2_parentConstraint1.cry" "tail2.ry";
connectAttr "tail2_parentConstraint1.crz" "tail2.rz";
connectAttr "tail2.ro" "tail2_parentConstraint1.cro";
connectAttr "tail2.pim" "tail2_parentConstraint1.cpim";
connectAttr "tail2.rp" "tail2_parentConstraint1.crp";
connectAttr "tail2.rpt" "tail2_parentConstraint1.crt";
connectAttr "fkTail2.t" "tail2_parentConstraint1.tg[0].tt";
connectAttr "fkTail2.rp" "tail2_parentConstraint1.tg[0].trp";
connectAttr "fkTail2.rpt" "tail2_parentConstraint1.tg[0].trt";
connectAttr "fkTail2.r" "tail2_parentConstraint1.tg[0].tr";
connectAttr "fkTail2.ro" "tail2_parentConstraint1.tg[0].tro";
connectAttr "fkTail2.s" "tail2_parentConstraint1.tg[0].ts";
connectAttr "fkTail2.pm" "tail2_parentConstraint1.tg[0].tpm";
connectAttr "fkTail2.jo" "tail2_parentConstraint1.tg[0].tjo";
connectAttr "tail2_parentConstraint1.w0" "tail2_parentConstraint1.tg[0].tw";
connectAttr "tail1_parentConstraint1.ctx" "tail1.tx";
connectAttr "tail1_parentConstraint1.cty" "tail1.ty";
connectAttr "tail1_parentConstraint1.ctz" "tail1.tz";
connectAttr "tail1_parentConstraint1.crx" "tail1.rx";
connectAttr "tail1_parentConstraint1.cry" "tail1.ry";
connectAttr "tail1_parentConstraint1.crz" "tail1.rz";
connectAttr "tail1.ro" "tail1_parentConstraint1.cro";
connectAttr "tail1.pim" "tail1_parentConstraint1.cpim";
connectAttr "tail1.rp" "tail1_parentConstraint1.crp";
connectAttr "tail1.rpt" "tail1_parentConstraint1.crt";
connectAttr "fkTail1.t" "tail1_parentConstraint1.tg[0].tt";
connectAttr "fkTail1.rp" "tail1_parentConstraint1.tg[0].trp";
connectAttr "fkTail1.rpt" "tail1_parentConstraint1.tg[0].trt";
connectAttr "fkTail1.r" "tail1_parentConstraint1.tg[0].tr";
connectAttr "fkTail1.ro" "tail1_parentConstraint1.tg[0].tro";
connectAttr "fkTail1.s" "tail1_parentConstraint1.tg[0].ts";
connectAttr "fkTail1.pm" "tail1_parentConstraint1.tg[0].tpm";
connectAttr "fkTail1.jo" "tail1_parentConstraint1.tg[0].tjo";
connectAttr "tail1_parentConstraint1.w0" "tail1_parentConstraint1.tg[0].tw";
connectAttr "tail0_parentConstraint1.ctx" "tail0.tx";
connectAttr "tail0_parentConstraint1.cty" "tail0.ty";
connectAttr "tail0_parentConstraint1.ctz" "tail0.tz";
connectAttr "tail0_parentConstraint1.crx" "tail0.rx";
connectAttr "tail0_parentConstraint1.cry" "tail0.ry";
connectAttr "tail0_parentConstraint1.crz" "tail0.rz";
connectAttr "transformGeometry55.og" "tailShape0.cr";
connectAttr "tail0.ro" "tail0_parentConstraint1.cro";
connectAttr "tail0.pim" "tail0_parentConstraint1.cpim";
connectAttr "tail0.rp" "tail0_parentConstraint1.crp";
connectAttr "tail0.rpt" "tail0_parentConstraint1.crt";
connectAttr "fkTail1.t" "tail0_parentConstraint1.tg[0].tt";
connectAttr "fkTail1.rp" "tail0_parentConstraint1.tg[0].trp";
connectAttr "fkTail1.rpt" "tail0_parentConstraint1.tg[0].trt";
connectAttr "fkTail1.r" "tail0_parentConstraint1.tg[0].tr";
connectAttr "fkTail1.ro" "tail0_parentConstraint1.tg[0].tro";
connectAttr "fkTail1.s" "tail0_parentConstraint1.tg[0].ts";
connectAttr "fkTail1.pm" "tail0_parentConstraint1.tg[0].tpm";
connectAttr "fkTail1.jo" "tail0_parentConstraint1.tg[0].tjo";
connectAttr "tail0_parentConstraint1.w0" "tail0_parentConstraint1.tg[0].tw";
connectAttr "pointOnSurfaceInfo1.p" "tailSpacer3.t";
connectAttr "transformGeometry61.og" "tailSpacerShape3.cr";
connectAttr "rt_heal_parentConstraint1.ctx" "rt_heal.tx";
connectAttr "rt_heal_parentConstraint1.cty" "rt_heal.ty";
connectAttr "rt_heal_parentConstraint1.ctz" "rt_heal.tz";
connectAttr "rt_heal_parentConstraint1.crx" "rt_heal.rx";
connectAttr "rt_heal_parentConstraint1.cry" "rt_heal.ry";
connectAttr "rt_heal_parentConstraint1.crz" "rt_heal.rz";
connectAttr "rt_heal.ro" "rt_heal_parentConstraint1.cro";
connectAttr "rt_heal.pim" "rt_heal_parentConstraint1.cpim";
connectAttr "rt_heal.rp" "rt_heal_parentConstraint1.crp";
connectAttr "rt_heal.rpt" "rt_heal_parentConstraint1.crt";
connectAttr "R_Ankle_Leg.t" "rt_heal_parentConstraint1.tg[0].tt";
connectAttr "R_Ankle_Leg.rp" "rt_heal_parentConstraint1.tg[0].trp";
connectAttr "R_Ankle_Leg.rpt" "rt_heal_parentConstraint1.tg[0].trt";
connectAttr "R_Ankle_Leg.r" "rt_heal_parentConstraint1.tg[0].tr";
connectAttr "R_Ankle_Leg.ro" "rt_heal_parentConstraint1.tg[0].tro";
connectAttr "R_Ankle_Leg.s" "rt_heal_parentConstraint1.tg[0].ts";
connectAttr "R_Ankle_Leg.pm" "rt_heal_parentConstraint1.tg[0].tpm";
connectAttr "R_Ankle_Leg.jo" "rt_heal_parentConstraint1.tg[0].tjo";
connectAttr "rt_heal_parentConstraint1.w0" "rt_heal_parentConstraint1.tg[0].tw";
connectAttr "rt__ball_parentConstraint1.ctx" "rt__ball.tx";
connectAttr "rt__ball_parentConstraint1.cty" "rt__ball.ty";
connectAttr "rt__ball_parentConstraint1.ctz" "rt__ball.tz";
connectAttr "rt__ball_parentConstraint1.crx" "rt__ball.rx";
connectAttr "rt__ball_parentConstraint1.cry" "rt__ball.ry";
connectAttr "rt__ball_parentConstraint1.crz" "rt__ball.rz";
connectAttr "rt__ball.ro" "rt__ball_parentConstraint1.cro";
connectAttr "rt__ball.pim" "rt__ball_parentConstraint1.cpim";
connectAttr "rt__ball.rp" "rt__ball_parentConstraint1.crp";
connectAttr "rt__ball.rpt" "rt__ball_parentConstraint1.crt";
connectAttr "R_Ball_Leg.t" "rt__ball_parentConstraint1.tg[0].tt";
connectAttr "R_Ball_Leg.rp" "rt__ball_parentConstraint1.tg[0].trp";
connectAttr "R_Ball_Leg.rpt" "rt__ball_parentConstraint1.tg[0].trt";
connectAttr "R_Ball_Leg.r" "rt__ball_parentConstraint1.tg[0].tr";
connectAttr "R_Ball_Leg.ro" "rt__ball_parentConstraint1.tg[0].tro";
connectAttr "R_Ball_Leg.s" "rt__ball_parentConstraint1.tg[0].ts";
connectAttr "R_Ball_Leg.pm" "rt__ball_parentConstraint1.tg[0].tpm";
connectAttr "R_Ball_Leg.jo" "rt__ball_parentConstraint1.tg[0].tjo";
connectAttr "rt__ball_parentConstraint1.w0" "rt__ball_parentConstraint1.tg[0].tw"
		;
connectAttr "rt_toe_parentConstraint1.ctx" "rt_toe.tx";
connectAttr "rt_toe_parentConstraint1.cty" "rt_toe.ty";
connectAttr "rt_toe_parentConstraint1.ctz" "rt_toe.tz";
connectAttr "rt_toe_parentConstraint1.crx" "rt_toe.rx";
connectAttr "rt_toe_parentConstraint1.cry" "rt_toe.ry";
connectAttr "rt_toe_parentConstraint1.crz" "rt_toe.rz";
connectAttr "rt_toe.ro" "rt_toe_parentConstraint1.cro";
connectAttr "rt_toe.pim" "rt_toe_parentConstraint1.cpim";
connectAttr "rt_toe.rp" "rt_toe_parentConstraint1.crp";
connectAttr "rt_toe.rpt" "rt_toe_parentConstraint1.crt";
connectAttr "R_Ball_Leg.t" "rt_toe_parentConstraint1.tg[0].tt";
connectAttr "R_Ball_Leg.rp" "rt_toe_parentConstraint1.tg[0].trp";
connectAttr "R_Ball_Leg.rpt" "rt_toe_parentConstraint1.tg[0].trt";
connectAttr "R_Ball_Leg.r" "rt_toe_parentConstraint1.tg[0].tr";
connectAttr "R_Ball_Leg.ro" "rt_toe_parentConstraint1.tg[0].tro";
connectAttr "R_Ball_Leg.s" "rt_toe_parentConstraint1.tg[0].ts";
connectAttr "R_Ball_Leg.pm" "rt_toe_parentConstraint1.tg[0].tpm";
connectAttr "R_Ball_Leg.jo" "rt_toe_parentConstraint1.tg[0].tjo";
connectAttr "rt_toe_parentConstraint1.w0" "rt_toe_parentConstraint1.tg[0].tw";
connectAttr "nurbsCylinder4_parentConstraint1.ctx" "rt_leg_bottom.tx";
connectAttr "nurbsCylinder4_parentConstraint1.cty" "rt_leg_bottom.ty";
connectAttr "nurbsCylinder4_parentConstraint1.ctz" "rt_leg_bottom.tz";
connectAttr "nurbsCylinder4_parentConstraint1.crx" "rt_leg_bottom.rx";
connectAttr "nurbsCylinder4_parentConstraint1.cry" "rt_leg_bottom.ry";
connectAttr "nurbsCylinder4_parentConstraint1.crz" "rt_leg_bottom.rz";
connectAttr "R_upperLegGeo_Div.ox" "rt_leg_bottom.sy";
connectAttr "rt_leg_bottom.ro" "nurbsCylinder4_parentConstraint1.cro";
connectAttr "rt_leg_bottom.pim" "nurbsCylinder4_parentConstraint1.cpim";
connectAttr "rt_leg_bottom.rp" "nurbsCylinder4_parentConstraint1.crp";
connectAttr "rt_leg_bottom.rpt" "nurbsCylinder4_parentConstraint1.crt";
connectAttr "R_Knee_Leg.t" "nurbsCylinder4_parentConstraint1.tg[0].tt";
connectAttr "R_Knee_Leg.rp" "nurbsCylinder4_parentConstraint1.tg[0].trp";
connectAttr "R_Knee_Leg.rpt" "nurbsCylinder4_parentConstraint1.tg[0].trt";
connectAttr "R_Knee_Leg.r" "nurbsCylinder4_parentConstraint1.tg[0].tr";
connectAttr "R_Knee_Leg.ro" "nurbsCylinder4_parentConstraint1.tg[0].tro";
connectAttr "R_Knee_Leg.s" "nurbsCylinder4_parentConstraint1.tg[0].ts";
connectAttr "R_Knee_Leg.pm" "nurbsCylinder4_parentConstraint1.tg[0].tpm";
connectAttr "R_Knee_Leg.jo" "nurbsCylinder4_parentConstraint1.tg[0].tjo";
connectAttr "nurbsCylinder4_parentConstraint1.w0" "nurbsCylinder4_parentConstraint1.tg[0].tw"
		;
connectAttr "nurbsSphere1_pointConstraint1.ctx" "rt_knee.tx";
connectAttr "nurbsSphere1_pointConstraint1.cty" "rt_knee.ty";
connectAttr "nurbsSphere1_pointConstraint1.ctz" "rt_knee.tz";
connectAttr "transformGeometry48.og" "rt_kneeShape.cr";
connectAttr "rt_knee.pim" "nurbsSphere1_pointConstraint1.cpim";
connectAttr "rt_knee.rp" "nurbsSphere1_pointConstraint1.crp";
connectAttr "rt_knee.rpt" "nurbsSphere1_pointConstraint1.crt";
connectAttr "R_Knee_Leg.t" "nurbsSphere1_pointConstraint1.tg[0].tt";
connectAttr "R_Knee_Leg.rp" "nurbsSphere1_pointConstraint1.tg[0].trp";
connectAttr "R_Knee_Leg.rpt" "nurbsSphere1_pointConstraint1.tg[0].trt";
connectAttr "R_Knee_Leg.pm" "nurbsSphere1_pointConstraint1.tg[0].tpm";
connectAttr "nurbsSphere1_pointConstraint1.w0" "nurbsSphere1_pointConstraint1.tg[0].tw"
		;
connectAttr "nurbsSphere4_pointConstraint1.ctx" "rt_hip.tx";
connectAttr "nurbsSphere4_pointConstraint1.cty" "rt_hip.ty";
connectAttr "nurbsSphere4_pointConstraint1.ctz" "rt_hip.tz";
connectAttr "rt_hip.pim" "nurbsSphere4_pointConstraint1.cpim";
connectAttr "rt_hip.rp" "nurbsSphere4_pointConstraint1.crp";
connectAttr "rt_hip.rpt" "nurbsSphere4_pointConstraint1.crt";
connectAttr "R_Femur_Leg.t" "nurbsSphere4_pointConstraint1.tg[0].tt";
connectAttr "R_Femur_Leg.rp" "nurbsSphere4_pointConstraint1.tg[0].trp";
connectAttr "R_Femur_Leg.rpt" "nurbsSphere4_pointConstraint1.tg[0].trt";
connectAttr "R_Femur_Leg.pm" "nurbsSphere4_pointConstraint1.tg[0].tpm";
connectAttr "nurbsSphere4_pointConstraint1.w0" "nurbsSphere4_pointConstraint1.tg[0].tw"
		;
connectAttr "nurbsSphere6_pointConstraint1.ctx" "rt_ankle.tx";
connectAttr "nurbsSphere6_pointConstraint1.cty" "rt_ankle.ty";
connectAttr "nurbsSphere6_pointConstraint1.ctz" "rt_ankle.tz";
connectAttr "rt_ankle.pim" "nurbsSphere6_pointConstraint1.cpim";
connectAttr "rt_ankle.rp" "nurbsSphere6_pointConstraint1.crp";
connectAttr "rt_ankle.rpt" "nurbsSphere6_pointConstraint1.crt";
connectAttr "R_Ankle_Leg.t" "nurbsSphere6_pointConstraint1.tg[0].tt";
connectAttr "R_Ankle_Leg.rp" "nurbsSphere6_pointConstraint1.tg[0].trp";
connectAttr "R_Ankle_Leg.rpt" "nurbsSphere6_pointConstraint1.tg[0].trt";
connectAttr "R_Ankle_Leg.pm" "nurbsSphere6_pointConstraint1.tg[0].tpm";
connectAttr "nurbsSphere6_pointConstraint1.w0" "nurbsSphere6_pointConstraint1.tg[0].tw"
		;
connectAttr "rt_leg_top_parentConstraint1.crx" "rt_leg_top.rx";
connectAttr "rt_leg_top_parentConstraint1.cry" "rt_leg_top.ry";
connectAttr "rt_leg_top_parentConstraint1.crz" "rt_leg_top.rz";
connectAttr "rt_leg_top_parentConstraint1.ctx" "rt_leg_top.tx";
connectAttr "rt_leg_top_parentConstraint1.cty" "rt_leg_top.ty";
connectAttr "rt_leg_top_parentConstraint1.ctz" "rt_leg_top.tz";
connectAttr "R_upperLegGeo_Div.ox" "rt_leg_top.sy";
connectAttr "rt_leg_top.ro" "rt_leg_top_parentConstraint1.cro";
connectAttr "rt_leg_top.pim" "rt_leg_top_parentConstraint1.cpim";
connectAttr "rt_leg_top.rp" "rt_leg_top_parentConstraint1.crp";
connectAttr "rt_leg_top.rpt" "rt_leg_top_parentConstraint1.crt";
connectAttr "R_Femur_Leg.t" "rt_leg_top_parentConstraint1.tg[0].tt";
connectAttr "R_Femur_Leg.rp" "rt_leg_top_parentConstraint1.tg[0].trp";
connectAttr "R_Femur_Leg.rpt" "rt_leg_top_parentConstraint1.tg[0].trt";
connectAttr "R_Femur_Leg.r" "rt_leg_top_parentConstraint1.tg[0].tr";
connectAttr "R_Femur_Leg.ro" "rt_leg_top_parentConstraint1.tg[0].tro";
connectAttr "R_Femur_Leg.s" "rt_leg_top_parentConstraint1.tg[0].ts";
connectAttr "R_Femur_Leg.pm" "rt_leg_top_parentConstraint1.tg[0].tpm";
connectAttr "R_Femur_Leg.jo" "rt_leg_top_parentConstraint1.tg[0].tjo";
connectAttr "rt_leg_top_parentConstraint1.w0" "rt_leg_top_parentConstraint1.tg[0].tw"
		;
connectAttr "R_Femur_IKLeg.t" "rt_leg_top_parentConstraint1.tg[1].tt";
connectAttr "R_Femur_IKLeg.rp" "rt_leg_top_parentConstraint1.tg[1].trp";
connectAttr "R_Femur_IKLeg.rpt" "rt_leg_top_parentConstraint1.tg[1].trt";
connectAttr "R_Femur_IKLeg.r" "rt_leg_top_parentConstraint1.tg[1].tr";
connectAttr "R_Femur_IKLeg.ro" "rt_leg_top_parentConstraint1.tg[1].tro";
connectAttr "R_Femur_IKLeg.s" "rt_leg_top_parentConstraint1.tg[1].ts";
connectAttr "R_Femur_IKLeg.pm" "rt_leg_top_parentConstraint1.tg[1].tpm";
connectAttr "R_Femur_IKLeg.jo" "rt_leg_top_parentConstraint1.tg[1].tjo";
connectAttr "rt_leg_top_parentConstraint1.w1" "rt_leg_top_parentConstraint1.tg[1].tw"
		;
connectAttr "lt_heal_parentConstraint1.ctx" "lt_heal.tx";
connectAttr "lt_heal_parentConstraint1.cty" "lt_heal.ty";
connectAttr "lt_heal_parentConstraint1.ctz" "lt_heal.tz";
connectAttr "lt_heal_parentConstraint1.crx" "lt_heal.rx";
connectAttr "lt_heal_parentConstraint1.cry" "lt_heal.ry";
connectAttr "lt_heal_parentConstraint1.crz" "lt_heal.rz";
connectAttr "transformGeometry23.og" "lt_healShape.i";
connectAttr "lt_heal.ro" "lt_heal_parentConstraint1.cro";
connectAttr "lt_heal.pim" "lt_heal_parentConstraint1.cpim";
connectAttr "lt_heal.rp" "lt_heal_parentConstraint1.crp";
connectAttr "lt_heal.rpt" "lt_heal_parentConstraint1.crt";
connectAttr "L_Ankle_Leg.t" "lt_heal_parentConstraint1.tg[0].tt";
connectAttr "L_Ankle_Leg.rp" "lt_heal_parentConstraint1.tg[0].trp";
connectAttr "L_Ankle_Leg.rpt" "lt_heal_parentConstraint1.tg[0].trt";
connectAttr "L_Ankle_Leg.r" "lt_heal_parentConstraint1.tg[0].tr";
connectAttr "L_Ankle_Leg.ro" "lt_heal_parentConstraint1.tg[0].tro";
connectAttr "L_Ankle_Leg.s" "lt_heal_parentConstraint1.tg[0].ts";
connectAttr "L_Ankle_Leg.pm" "lt_heal_parentConstraint1.tg[0].tpm";
connectAttr "L_Ankle_Leg.jo" "lt_heal_parentConstraint1.tg[0].tjo";
connectAttr "lt_heal_parentConstraint1.w0" "lt_heal_parentConstraint1.tg[0].tw";
connectAttr "lt__ball_parentConstraint1.ctx" "lt__ball.tx";
connectAttr "lt__ball_parentConstraint1.cty" "lt__ball.ty";
connectAttr "lt__ball_parentConstraint1.ctz" "lt__ball.tz";
connectAttr "lt__ball_parentConstraint1.crx" "lt__ball.rx";
connectAttr "lt__ball_parentConstraint1.cry" "lt__ball.ry";
connectAttr "lt__ball_parentConstraint1.crz" "lt__ball.rz";
connectAttr "transformGeometry35.og" "lt__ballShape.i";
connectAttr "lt__ball.ro" "lt__ball_parentConstraint1.cro";
connectAttr "lt__ball.pim" "lt__ball_parentConstraint1.cpim";
connectAttr "lt__ball.rp" "lt__ball_parentConstraint1.crp";
connectAttr "lt__ball.rpt" "lt__ball_parentConstraint1.crt";
connectAttr "lt_toe.t" "lt__ball_parentConstraint1.tg[0].tt";
connectAttr "lt_toe.rp" "lt__ball_parentConstraint1.tg[0].trp";
connectAttr "lt_toe.rpt" "lt__ball_parentConstraint1.tg[0].trt";
connectAttr "lt_toe.r" "lt__ball_parentConstraint1.tg[0].tr";
connectAttr "lt_toe.ro" "lt__ball_parentConstraint1.tg[0].tro";
connectAttr "lt_toe.s" "lt__ball_parentConstraint1.tg[0].ts";
connectAttr "lt_toe.pm" "lt__ball_parentConstraint1.tg[0].tpm";
connectAttr "lt__ball_parentConstraint1.w0" "lt__ball_parentConstraint1.tg[0].tw"
		;
connectAttr "lt_toe_parentConstraint1.ctx" "lt_toe.tx";
connectAttr "lt_toe_parentConstraint1.cty" "lt_toe.ty";
connectAttr "lt_toe_parentConstraint1.ctz" "lt_toe.tz";
connectAttr "lt_toe_parentConstraint1.crx" "lt_toe.rx";
connectAttr "lt_toe_parentConstraint1.cry" "lt_toe.ry";
connectAttr "lt_toe_parentConstraint1.crz" "lt_toe.rz";
connectAttr "transformGeometry24.og" "lt_toeShape.i";
connectAttr "lt_toe.ro" "lt_toe_parentConstraint1.cro";
connectAttr "lt_toe.pim" "lt_toe_parentConstraint1.cpim";
connectAttr "lt_toe.rp" "lt_toe_parentConstraint1.crp";
connectAttr "lt_toe.rpt" "lt_toe_parentConstraint1.crt";
connectAttr "L_Ball_Leg.t" "lt_toe_parentConstraint1.tg[0].tt";
connectAttr "L_Ball_Leg.rp" "lt_toe_parentConstraint1.tg[0].trp";
connectAttr "L_Ball_Leg.rpt" "lt_toe_parentConstraint1.tg[0].trt";
connectAttr "L_Ball_Leg.r" "lt_toe_parentConstraint1.tg[0].tr";
connectAttr "L_Ball_Leg.ro" "lt_toe_parentConstraint1.tg[0].tro";
connectAttr "L_Ball_Leg.s" "lt_toe_parentConstraint1.tg[0].ts";
connectAttr "L_Ball_Leg.pm" "lt_toe_parentConstraint1.tg[0].tpm";
connectAttr "L_Ball_Leg.jo" "lt_toe_parentConstraint1.tg[0].tjo";
connectAttr "lt_toe_parentConstraint1.w0" "lt_toe_parentConstraint1.tg[0].tw";
connectAttr "nurbsCylinder3_parentConstraint1.ctx" "lt_leg_bottom.tx";
connectAttr "nurbsCylinder3_parentConstraint1.cty" "lt_leg_bottom.ty";
connectAttr "nurbsCylinder3_parentConstraint1.ctz" "lt_leg_bottom.tz";
connectAttr "nurbsCylinder3_parentConstraint1.crx" "lt_leg_bottom.rx";
connectAttr "nurbsCylinder3_parentConstraint1.cry" "lt_leg_bottom.ry";
connectAttr "nurbsCylinder3_parentConstraint1.crz" "lt_leg_bottom.rz";
connectAttr "L_upperLegGeo_div.ox" "lt_leg_bottom.sy";
connectAttr "transformGeometry45.og" "lt_leg_bottomShape.cr";
connectAttr "transformGeometry46.og" "|DoNotTouch|geometry|leg_geomtry|lt_leg|lt_leg_bottom|revolvebottomCap6.cr"
		;
connectAttr "transformGeometry47.og" "|DoNotTouch|geometry|leg_geomtry|lt_leg|lt_leg_bottom|revolvetopCap6.cr"
		;
connectAttr "lt_leg_bottom.ro" "nurbsCylinder3_parentConstraint1.cro";
connectAttr "lt_leg_bottom.pim" "nurbsCylinder3_parentConstraint1.cpim";
connectAttr "lt_leg_bottom.rp" "nurbsCylinder3_parentConstraint1.crp";
connectAttr "lt_leg_bottom.rpt" "nurbsCylinder3_parentConstraint1.crt";
connectAttr "L_Knee_Leg.t" "nurbsCylinder3_parentConstraint1.tg[0].tt";
connectAttr "L_Knee_Leg.rp" "nurbsCylinder3_parentConstraint1.tg[0].trp";
connectAttr "L_Knee_Leg.rpt" "nurbsCylinder3_parentConstraint1.tg[0].trt";
connectAttr "L_Knee_Leg.r" "nurbsCylinder3_parentConstraint1.tg[0].tr";
connectAttr "L_Knee_Leg.ro" "nurbsCylinder3_parentConstraint1.tg[0].tro";
connectAttr "L_Knee_Leg.s" "nurbsCylinder3_parentConstraint1.tg[0].ts";
connectAttr "L_Knee_Leg.pm" "nurbsCylinder3_parentConstraint1.tg[0].tpm";
connectAttr "L_Knee_Leg.jo" "nurbsCylinder3_parentConstraint1.tg[0].tjo";
connectAttr "nurbsCylinder3_parentConstraint1.w0" "nurbsCylinder3_parentConstraint1.tg[0].tw"
		;
connectAttr "nurbsSphere2_pointConstraint1.ctx" "lt_knee.tx";
connectAttr "nurbsSphere2_pointConstraint1.cty" "lt_knee.ty";
connectAttr "nurbsSphere2_pointConstraint1.ctz" "lt_knee.tz";
connectAttr "lt_knee.pim" "nurbsSphere2_pointConstraint1.cpim";
connectAttr "lt_knee.rp" "nurbsSphere2_pointConstraint1.crp";
connectAttr "lt_knee.rpt" "nurbsSphere2_pointConstraint1.crt";
connectAttr "L_Knee_Leg.t" "nurbsSphere2_pointConstraint1.tg[0].tt";
connectAttr "L_Knee_Leg.rp" "nurbsSphere2_pointConstraint1.tg[0].trp";
connectAttr "L_Knee_Leg.rpt" "nurbsSphere2_pointConstraint1.tg[0].trt";
connectAttr "L_Knee_Leg.pm" "nurbsSphere2_pointConstraint1.tg[0].tpm";
connectAttr "nurbsSphere2_pointConstraint1.w0" "nurbsSphere2_pointConstraint1.tg[0].tw"
		;
connectAttr "nurbsSphere3_pointConstraint1.ctx" "lt_hip.tx";
connectAttr "nurbsSphere3_pointConstraint1.cty" "lt_hip.ty";
connectAttr "nurbsSphere3_pointConstraint1.ctz" "lt_hip.tz";
connectAttr "lt_hip.pim" "nurbsSphere3_pointConstraint1.cpim";
connectAttr "lt_hip.rp" "nurbsSphere3_pointConstraint1.crp";
connectAttr "lt_hip.rpt" "nurbsSphere3_pointConstraint1.crt";
connectAttr "L_Femur_Leg.t" "nurbsSphere3_pointConstraint1.tg[0].tt";
connectAttr "L_Femur_Leg.rp" "nurbsSphere3_pointConstraint1.tg[0].trp";
connectAttr "L_Femur_Leg.rpt" "nurbsSphere3_pointConstraint1.tg[0].trt";
connectAttr "L_Femur_Leg.pm" "nurbsSphere3_pointConstraint1.tg[0].tpm";
connectAttr "nurbsSphere3_pointConstraint1.w0" "nurbsSphere3_pointConstraint1.tg[0].tw"
		;
connectAttr "nurbsSphere5_pointConstraint1.ctx" "lt_ankle.tx";
connectAttr "nurbsSphere5_pointConstraint1.cty" "lt_ankle.ty";
connectAttr "nurbsSphere5_pointConstraint1.ctz" "lt_ankle.tz";
connectAttr "lt_ankle.pim" "nurbsSphere5_pointConstraint1.cpim";
connectAttr "lt_ankle.rp" "nurbsSphere5_pointConstraint1.crp";
connectAttr "lt_ankle.rpt" "nurbsSphere5_pointConstraint1.crt";
connectAttr "L_Ankle_Leg.t" "nurbsSphere5_pointConstraint1.tg[0].tt";
connectAttr "L_Ankle_Leg.rp" "nurbsSphere5_pointConstraint1.tg[0].trp";
connectAttr "L_Ankle_Leg.rpt" "nurbsSphere5_pointConstraint1.tg[0].trt";
connectAttr "L_Ankle_Leg.pm" "nurbsSphere5_pointConstraint1.tg[0].tpm";
connectAttr "nurbsSphere5_pointConstraint1.w0" "nurbsSphere5_pointConstraint1.tg[0].tw"
		;
connectAttr "nurbsCylinder1_parentConstraint1.crx" "lt_leg_top.rx";
connectAttr "nurbsCylinder1_parentConstraint1.cry" "lt_leg_top.ry";
connectAttr "nurbsCylinder1_parentConstraint1.crz" "lt_leg_top.rz";
connectAttr "nurbsCylinder1_parentConstraint1.ctx" "lt_leg_top.tx";
connectAttr "nurbsCylinder1_parentConstraint1.cty" "lt_leg_top.ty";
connectAttr "nurbsCylinder1_parentConstraint1.ctz" "lt_leg_top.tz";
connectAttr "L_upperLegGeo_div.ox" "lt_leg_top.sy";
connectAttr "transformGeometry39.og" "lt_leg_topShape.cr";
connectAttr "transformGeometry40.og" "|DoNotTouch|geometry|leg_geomtry|lt_leg|lt_leg_top|revolvebottomCap4.cr"
		;
connectAttr "transformGeometry41.og" "|DoNotTouch|geometry|leg_geomtry|lt_leg|lt_leg_top|revolvetopCap4.cr"
		;
connectAttr "lt_leg_top.ro" "nurbsCylinder1_parentConstraint1.cro";
connectAttr "lt_leg_top.pim" "nurbsCylinder1_parentConstraint1.cpim";
connectAttr "lt_leg_top.rp" "nurbsCylinder1_parentConstraint1.crp";
connectAttr "lt_leg_top.rpt" "nurbsCylinder1_parentConstraint1.crt";
connectAttr "L_Femur_Leg.t" "nurbsCylinder1_parentConstraint1.tg[0].tt";
connectAttr "L_Femur_Leg.rp" "nurbsCylinder1_parentConstraint1.tg[0].trp";
connectAttr "L_Femur_Leg.rpt" "nurbsCylinder1_parentConstraint1.tg[0].trt";
connectAttr "L_Femur_Leg.r" "nurbsCylinder1_parentConstraint1.tg[0].tr";
connectAttr "L_Femur_Leg.ro" "nurbsCylinder1_parentConstraint1.tg[0].tro";
connectAttr "L_Femur_Leg.s" "nurbsCylinder1_parentConstraint1.tg[0].ts";
connectAttr "L_Femur_Leg.pm" "nurbsCylinder1_parentConstraint1.tg[0].tpm";
connectAttr "L_Femur_Leg.jo" "nurbsCylinder1_parentConstraint1.tg[0].tjo";
connectAttr "nurbsCylinder1_parentConstraint1.w0" "nurbsCylinder1_parentConstraint1.tg[0].tw"
		;
connectAttr "multiplyDivide1.ox" "nurbsCylinder5.sy";
connectAttr "multiplyDivide1.oy" "nurbsCylinder5.sx";
connectAttr "multiplyDivide1.oy" "nurbsCylinder5.sz";
connectAttr "nurbsCylinder5_parentConstraint1.ctx" "nurbsCylinder5.tx";
connectAttr "nurbsCylinder5_parentConstraint1.cty" "nurbsCylinder5.ty";
connectAttr "nurbsCylinder5_parentConstraint1.ctz" "nurbsCylinder5.tz";
connectAttr "nurbsCylinder5_parentConstraint1.crx" "nurbsCylinder5.rx";
connectAttr "nurbsCylinder5_parentConstraint1.cry" "nurbsCylinder5.ry";
connectAttr "nurbsCylinder5_parentConstraint1.crz" "nurbsCylinder5.rz";
connectAttr "cluster1GroupId.id" "nurbsCylinderShape1.iog.og[2].gid";
connectAttr "cluster1Set.mwc" "nurbsCylinderShape1.iog.og[2].gco";
connectAttr "groupId5.id" "nurbsCylinderShape1.iog.og[3].gid";
connectAttr "tweakSet1.mwc" "nurbsCylinderShape1.iog.og[3].gco";
connectAttr "cluster1.og[0]" "nurbsCylinderShape1.cr";
connectAttr "tweak1.pl[0].cp[0]" "nurbsCylinderShape1.twl";
connectAttr "cluster1.og[1]" "revolvebottomCap8.cr";
connectAttr "cluster1GroupId1.id" "revolvebottomCap8.iog.og[2].gid";
connectAttr "cluster1Set.mwc" "revolvebottomCap8.iog.og[2].gco";
connectAttr "groupId6.id" "revolvebottomCap8.iog.og[3].gid";
connectAttr "tweakSet2.mwc" "revolvebottomCap8.iog.og[3].gco";
connectAttr "tweak2.pl[0].cp[0]" "revolvebottomCap8.twl";
connectAttr "cluster1.og[2]" "revolvetopCap8.cr";
connectAttr "cluster1GroupId2.id" "revolvetopCap8.iog.og[2].gid";
connectAttr "cluster1Set.mwc" "revolvetopCap8.iog.og[2].gco";
connectAttr "groupId7.id" "revolvetopCap8.iog.og[3].gid";
connectAttr "tweakSet3.mwc" "revolvetopCap8.iog.og[3].gco";
connectAttr "tweak3.pl[0].cp[0]" "revolvetopCap8.twl";
connectAttr "cluster1GroupId3.id" "nurbsSphereShape1.iog.og[2].gid";
connectAttr "cluster1Set.mwc" "nurbsSphereShape1.iog.og[2].gco";
connectAttr "groupId8.id" "nurbsSphereShape1.iog.og[3].gid";
connectAttr "tweakSet4.mwc" "nurbsSphereShape1.iog.og[3].gco";
connectAttr "cluster1.og[3]" "nurbsSphereShape1.cr";
connectAttr "tweak4.pl[0].cp[0]" "nurbsSphereShape1.twl";
connectAttr "transformGeometry57.og" "nurbsCylinderShape1Orig.cr";
connectAttr "transformGeometry58.og" "revolvebottomCap8Orig.cr";
connectAttr "transformGeometry59.og" "revolvetopCap8Orig.cr";
connectAttr "transformGeometry56.og" "nurbsSphereShape1Orig.cr";
connectAttr "nurbsCylinder5.ro" "nurbsCylinder5_parentConstraint1.cro";
connectAttr "nurbsCylinder5.pim" "nurbsCylinder5_parentConstraint1.cpim";
connectAttr "nurbsCylinder5.rp" "nurbsCylinder5_parentConstraint1.crp";
connectAttr "nurbsCylinder5.rpt" "nurbsCylinder5_parentConstraint1.crt";
connectAttr "joint1.t" "nurbsCylinder5_parentConstraint1.tg[0].tt";
connectAttr "joint1.rp" "nurbsCylinder5_parentConstraint1.tg[0].trp";
connectAttr "joint1.rpt" "nurbsCylinder5_parentConstraint1.tg[0].trt";
connectAttr "joint1.r" "nurbsCylinder5_parentConstraint1.tg[0].tr";
connectAttr "joint1.ro" "nurbsCylinder5_parentConstraint1.tg[0].tro";
connectAttr "joint1.s" "nurbsCylinder5_parentConstraint1.tg[0].ts";
connectAttr "joint1.pm" "nurbsCylinder5_parentConstraint1.tg[0].tpm";
connectAttr "joint1.jo" "nurbsCylinder5_parentConstraint1.tg[0].tjo";
connectAttr "nurbsCylinder5_parentConstraint1.w0" "nurbsCylinder5_parentConstraint1.tg[0].tw"
		;
connectAttr "SQST_middle_CTRL.t" "cluster1Handle.t";
connectAttr "SQST_middle_CTRL.s" "cluster1Handle.s";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[0].llnk";
connectAttr ":initialShadingGroup.msg" "lightLinker1.lnk[0].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[1].llnk";
connectAttr ":initialParticleSE.msg" "lightLinker1.lnk[1].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[2].llnk";
connectAttr "lambert2SG.msg" "lightLinker1.lnk[2].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[3].llnk";
connectAttr "lambert3SG.msg" "lightLinker1.lnk[3].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[4].llnk";
connectAttr "tail_lambert2SG.msg" "lightLinker1.lnk[4].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[5].llnk";
connectAttr "tail_lambert3SG.msg" "lightLinker1.lnk[5].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[6].llnk";
connectAttr "lambert4SG.msg" "lightLinker1.lnk[6].olnk";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "distanceDimensionShape1.dist" "multiplyDivide1.i1x";
connectAttr "multiplyDivide2.ox" "multiplyDivide1.i1y";
connectAttr "distanceDimensionShape1.dist" "multiplyDivide1.i2y";
connectAttr "multiplyDivide2.ox" "multiplyDivide1.i2x";
connectAttr "master_CTRL.sx" "multiplyDivide2.i1x";
connectAttr "lambert2.oc" "lambert2SG.ss";
connectAttr "tailShape3.iog" "lambert2SG.dsm" -na;
connectAttr "tailShape1.iog" "lambert2SG.dsm" -na;
connectAttr "tail_spacerShape.iog" "lambert2SG.dsm" -na;
connectAttr "lt_hipShape.iog" "lambert2SG.dsm" -na;
connectAttr "lt_kneeShape.iog" "lambert2SG.dsm" -na;
connectAttr "lt_ankleShape.iog" "lambert2SG.dsm" -na;
connectAttr "rt_ankleShape.iog" "lambert2SG.dsm" -na;
connectAttr "rt_kneeShape.iog" "lambert2SG.dsm" -na;
connectAttr "rt_hipShape.iog" "lambert2SG.dsm" -na;
connectAttr "tailShape0.iog" "lambert2SG.dsm" -na;
connectAttr "nurbsCylinderShape1.iog" "lambert2SG.dsm" -na;
connectAttr "revolvetopCap8.iog" "lambert2SG.dsm" -na;
connectAttr "revolvebottomCap8.iog" "lambert2SG.dsm" -na;
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr "lambert2.msg" "materialInfo1.m";
connectAttr "lambert3.oc" "lambert3SG.ss";
connectAttr "lt__ballShape.iog" "lambert3SG.dsm" -na;
connectAttr "lt_toeShape.iog" "lambert3SG.dsm" -na;
connectAttr "lt_healShape.iog" "lambert3SG.dsm" -na;
connectAttr "rt_healShape.iog" "lambert3SG.dsm" -na;
connectAttr "rt__ballShape.iog" "lambert3SG.dsm" -na;
connectAttr "rt_toeShape.iog" "lambert3SG.dsm" -na;
connectAttr "tailShape4.iog" "lambert3SG.dsm" -na;
connectAttr "tailShape2.iog" "lambert3SG.dsm" -na;
connectAttr "|DoNotTouch|geometry|leg_geomtry|rt_leg|rt_leg_bottom|revolvetopCap6.iog" "lambert3SG.dsm"
		 -na;
connectAttr "|DoNotTouch|geometry|leg_geomtry|rt_leg|rt_leg_bottom|revolvebottomCap6.iog" "lambert3SG.dsm"
		 -na;
connectAttr "rt_leg_bottomShape.iog" "lambert3SG.dsm" -na;
connectAttr "|DoNotTouch|geometry|leg_geomtry|lt_leg|lt_leg_bottom|revolvetopCap6.iog" "lambert3SG.dsm"
		 -na;
connectAttr "|DoNotTouch|geometry|leg_geomtry|lt_leg|lt_leg_bottom|revolvebottomCap6.iog" "lambert3SG.dsm"
		 -na;
connectAttr "lt_leg_bottomShape.iog" "lambert3SG.dsm" -na;
connectAttr "|DoNotTouch|geometry|leg_geomtry|lt_leg|lt_leg_top|revolvetopCap4.iog" "lambert3SG.dsm"
		 -na;
connectAttr "|DoNotTouch|geometry|leg_geomtry|lt_leg|lt_leg_top|revolvebottomCap4.iog" "lambert3SG.dsm"
		 -na;
connectAttr "lt_leg_topShape.iog" "lambert3SG.dsm" -na;
connectAttr "|DoNotTouch|geometry|leg_geomtry|rt_leg|rt_leg_top|revolvetopCap4.iog" "lambert3SG.dsm"
		 -na;
connectAttr "|DoNotTouch|geometry|leg_geomtry|rt_leg|rt_leg_top|revolvebottomCap4.iog" "lambert3SG.dsm"
		 -na;
connectAttr "rt_leg_topShape.iog" "lambert3SG.dsm" -na;
connectAttr "nurbsSphereShape1.iog" "lambert3SG.dsm" -na;
connectAttr "lambert3SG.msg" "materialInfo2.sg";
connectAttr "lambert3.msg" "materialInfo2.m";
connectAttr "L_IKFootControl.ToeBend" "unitConversion1.i";
connectAttr "L_IKFootControl.BallTwist" "unitConversion2.i";
connectAttr "L_IKFootControl.ToeTwist" "unitConversion3.i";
connectAttr "L_IKFootControl.Roll" "L_HeelRoll_Grp_rotateX.i";
connectAttr "L_IKFootControl.Roll" "L_BallRoll_Grp_rotateX.i";
connectAttr "L_IKFootControl.Roll" "L_ToeRoll_Grp_rotateX.i";
connectAttr "R_IKFootControl.ToeBend" "unitConversion4.i";
connectAttr "R_IKFootControl.BallTwist" "unitConversion5.i";
connectAttr "R_IKFootControl.ToeTwist" "unitConversion6.i";
connectAttr "R_IKFootControl.Roll" "R_HeelRoll_Grp_rotateX.i";
connectAttr "R_IKFootControl.Roll" "R_BallRoll_Grp_rotateX.i";
connectAttr "R_IKFootControl.Roll" "R_ToeRoll_Grp_rotateX.i";
connectAttr "polyCube2.out" "polyTweak5.ip";
connectAttr "polyTweak5.out" "transformGeometry15.ig";
connectAttr "transformGeometry15.og" "polyTweak7.ip";
connectAttr "polyTweak7.out" "transformGeometry19.ig";
connectAttr "transformGeometry19.og" "transformGeometry24.ig";
connectAttr "polyCylinder2.out" "polySoftEdge3.ip";
connectAttr "lt__ballShape.wm" "polySoftEdge3.mp";
connectAttr "polySoftEdge3.out" "polySoftEdge4.ip";
connectAttr "lt__ballShape.wm" "polySoftEdge4.mp";
connectAttr "polySoftEdge4.out" "transformGeometry14.ig";
connectAttr "transformGeometry14.og" "transformGeometry18.ig";
connectAttr "transformGeometry18.og" "transformGeometry25.ig";
connectAttr "transformGeometry25.og" "transformGeometry35.ig";
connectAttr "polyCube1.out" "polyTweak1.ip";
connectAttr "polyTweak1.out" "polySplit2.ip";
connectAttr "polySplit2.out" "polyTweak4.ip";
connectAttr "polyTweak4.out" "transformGeometry13.ig";
connectAttr "transformGeometry13.og" "polyTweak6.ip";
connectAttr "polyTweak6.out" "transformGeometry17.ig";
connectAttr "transformGeometry17.og" "transformGeometry23.ig";
connectAttr "makeNurbCircle4.oc" "transformGeometry34.ig";
connectAttr "makeNurbCircle1.oc" "transformGeometry2.ig";
connectAttr "transformGeometry2.og" "transformGeometry33.ig";
connectAttr "makeNurbCircle2.oc" "transformGeometry3.ig";
connectAttr "transformGeometry3.og" "transformGeometry32.ig";
connectAttr "L_AnkleIKHandle_limb_length.o1" "L_Knee_IKLeg_fraction_pos.i1x";
connectAttr "L_AnkleIKHandle_limb_length.o1" "L_Ankle_IKLeg_fraction_pos.i1x";
connectAttr "L_AnkleIKHandle_hideme_extension_end.ty" "_armLength_condition.ft";
connectAttr "L_AnkleIKHandle_hideme_extension_end.ty" "_armLength_condition.ctr"
		;
connectAttr "L_IKFootControl.autoStretch" "_autoStretch_condition.ft";
connectAttr "_armLength_condition.st" "_autoStretch_condition.cfr";
connectAttr "_armLength_condition.ocr" "_autoStretch_condition.ctr";
connectAttr "_armLength_condition.st" "_fkikMode_condition.cfr";
connectAttr "L_AnkleIKHandle.ikb" "_fkikMode_condition.ft";
connectAttr "_autoStretch_condition.ocr" "_fkikMode_condition.ctr";
connectAttr "L_IKFootControl.stretch" "_manualStretch_range_multiplier.i1x";
connectAttr "_manualStretch_range_multiplier.ox" "L_AnkleIKHandle_limb_length.i1[1]"
		;
connectAttr "_fkikMode_condition.ocr" "L_AnkleIKHandle_limb_length.i1[2]";
connectAttr "R_AnkleIKHandle_limb_length.o1" "R_Knee_IKLeg_fraction_pos.i1x";
connectAttr "R_AnkleIKHandle_limb_length.o1" "R_Ankle_IKLeg_fraction_pos.i1x";
connectAttr "R_AnkleIKHandle_hideme_extension_end.ty" "_armLength_condition1.ft"
		;
connectAttr "R_AnkleIKHandle_hideme_extension_end.ty" "_armLength_condition1.ctr"
		;
connectAttr "R_IKFootControl.autoStretch" "_autoStretch_condition1.ft";
connectAttr "_armLength_condition1.st" "_autoStretch_condition1.cfr";
connectAttr "_armLength_condition1.ocr" "_autoStretch_condition1.ctr";
connectAttr "_armLength_condition1.st" "_fkikMode_condition1.cfr";
connectAttr "R_AnkleIKHandle.ikb" "_fkikMode_condition1.ft";
connectAttr "_autoStretch_condition1.ocr" "_fkikMode_condition1.ctr";
connectAttr "R_IKFootControl.stretch" "_manualStretch_range_multiplier1.i1x";
connectAttr "_manualStretch_range_multiplier1.ox" "R_AnkleIKHandle_limb_length.i1[1]"
		;
connectAttr "_fkikMode_condition1.ocr" "R_AnkleIKHandle_limb_length.i1[2]";
connectAttr "L_AnkleIKHandle_limb_length.o1" "L_upperLegGeo_div.i1x";
connectAttr "R_AnkleIKHandle_limb_length.o1" "R_upperLegGeo_Div.i1x";
connectAttr "tail_multiplyDivide2.ox" "tail_multiplyDivide1.i1y";
connectAttr "tail_multiplyDivide2.ox" "tail_multiplyDivide1.i2x";
connectAttr "tail_lambert2SG.msg" "tail_materialInfo1.sg";
connectAttr "tail_lambert3SG.msg" "tail_materialInfo2.sg";
connectAttr "tail_L_AnkleIKHandle_limb_length.o1" "tail_L_Knee_IKLeg_fraction_pos.i1x"
		;
connectAttr "tail_L_AnkleIKHandle_limb_length.o1" "tail_L_Ankle_IKLeg_fraction_pos.i1x"
		;
connectAttr "tail__manualStretch_range_multiplier.ox" "tail_L_AnkleIKHandle_limb_length.i1[1]"
		;
connectAttr "tail_R_AnkleIKHandle_limb_length.o1" "tail_R_Knee_IKLeg_fraction_pos.i1x"
		;
connectAttr "tail_R_AnkleIKHandle_limb_length.o1" "tail_R_Ankle_IKLeg_fraction_pos.i1x"
		;
connectAttr "tail__manualStretch_range_multiplier1.ox" "tail_R_AnkleIKHandle_limb_length.i1[1]"
		;
connectAttr "tail_L_AnkleIKHandle_limb_length.o1" "tail_L_upperLegGeo_div.i1x";
connectAttr "tail_R_AnkleIKHandle_limb_length.o1" "tail_R_upperLegGeo_Div.i1x";
connectAttr "lambert4.oc" "lambert4SG.ss";
connectAttr "lambert4SG.msg" "materialInfo3.sg";
connectAttr "lambert4.msg" "materialInfo3.m";
connectAttr "master_CTRL.Tail" "Tail_DO_NOT_TOUCH_visibility.i";
connectAttr "makeNurbCylinder2.bcc" "revolvebottomCap3.ic";
connectAttr "makeNurbCylinder2.p" "revolvebottomCap3.p";
connectAttr "makeNurbCylinder2.ax" "revolvebottomCap3.ax";
connectAttr "makeNurbCylinder2.asd" "revolvebottomCap3.esw";
connectAttr "makeNurbCylinder2.s" "revolvebottomCap3.s";
connectAttr "makeNurbCylinder2.d" "revolvebottomCap3.d";
connectAttr "makeNurbCylinder2.ut" "revolvebottomCap3.ut";
connectAttr "makeNurbCylinder2.tol" "revolvebottomCap3.tol";
connectAttr "makeNurbCylinder2.tcc" "revolvetopCap3.ic";
connectAttr "makeNurbCylinder2.p" "revolvetopCap3.p";
connectAttr "makeNurbCylinder2.ax" "revolvetopCap3.ax";
connectAttr "makeNurbCylinder2.asd" "revolvetopCap3.esw";
connectAttr "makeNurbCylinder2.s" "revolvetopCap3.s";
connectAttr "makeNurbCylinder2.d" "revolvetopCap3.d";
connectAttr "makeNurbCylinder2.ut" "revolvetopCap3.ut";
connectAttr "makeNurbCylinder2.tol" "revolvetopCap3.tol";
connectAttr "makeNurbCylinder2.os" "transformGeometry36.ig";
connectAttr "revolvebottomCap3.os" "transformGeometry37.ig";
connectAttr "revolvetopCap3.os" "transformGeometry38.ig";
connectAttr "transformGeometry36.og" "transformGeometry39.ig";
connectAttr "transformGeometry37.og" "transformGeometry40.ig";
connectAttr "transformGeometry38.og" "transformGeometry41.ig";
connectAttr "makeNurbSphere4.os" "transformGeometry48.ig";
connectAttr "insertKnotSurface1.os" "transformGeometry45.ig";
connectAttr "transformGeometry42.og" "insertKnotSurface1.is";
connectAttr "makeNurbCylinder3.os" "transformGeometry42.ig";
connectAttr "transformGeometry43.og" "transformGeometry46.ig";
connectAttr "revolvebottomCap5.os" "transformGeometry43.ig";
connectAttr "makeNurbCylinder3.bcc" "revolvebottomCap5.ic";
connectAttr "makeNurbCylinder3.p" "revolvebottomCap5.p";
connectAttr "makeNurbCylinder3.ax" "revolvebottomCap5.ax";
connectAttr "makeNurbCylinder3.asd" "revolvebottomCap5.esw";
connectAttr "makeNurbCylinder3.s" "revolvebottomCap5.s";
connectAttr "makeNurbCylinder3.d" "revolvebottomCap5.d";
connectAttr "makeNurbCylinder3.ut" "revolvebottomCap5.ut";
connectAttr "makeNurbCylinder3.tol" "revolvebottomCap5.tol";
connectAttr "transformGeometry44.og" "transformGeometry47.ig";
connectAttr "revolvetopCap5.os" "transformGeometry44.ig";
connectAttr "makeNurbCylinder3.tcc" "revolvetopCap5.ic";
connectAttr "makeNurbCylinder3.p" "revolvetopCap5.p";
connectAttr "makeNurbCylinder3.ax" "revolvetopCap5.ax";
connectAttr "makeNurbCylinder3.asd" "revolvetopCap5.esw";
connectAttr "makeNurbCylinder3.s" "revolvetopCap5.s";
connectAttr "makeNurbCylinder3.d" "revolvetopCap5.d";
connectAttr "makeNurbCylinder3.ut" "revolvetopCap5.ut";
connectAttr "makeNurbCylinder3.tol" "revolvetopCap5.tol";
connectAttr "makeNurbSphere5.os" "transformGeometry49.ig";
connectAttr "makeNurbSphere6.os" "transformGeometry50.ig";
connectAttr "transformGeometry50.og" "transformGeometry51.ig";
connectAttr "transformGeometry51.og" "transformGeometry52.ig";
connectAttr "transformGeometry52.og" "transformGeometry53.ig";
connectAttr "transformGeometry53.og" "transformGeometry54.ig";
connectAttr "transformGeometry54.og" "transformGeometry55.ig";
connectAttr "makeNurbCylinder4.bcc" "revolvebottomCap7.ic";
connectAttr "makeNurbCylinder4.p" "revolvebottomCap7.p";
connectAttr "makeNurbCylinder4.ax" "revolvebottomCap7.ax";
connectAttr "makeNurbCylinder4.asd" "revolvebottomCap7.esw";
connectAttr "makeNurbCylinder4.s" "revolvebottomCap7.s";
connectAttr "makeNurbCylinder4.d" "revolvebottomCap7.d";
connectAttr "makeNurbCylinder4.ut" "revolvebottomCap7.ut";
connectAttr "makeNurbCylinder4.tol" "revolvebottomCap7.tol";
connectAttr "makeNurbCylinder4.tcc" "revolvetopCap7.ic";
connectAttr "makeNurbCylinder4.p" "revolvetopCap7.p";
connectAttr "makeNurbCylinder4.ax" "revolvetopCap7.ax";
connectAttr "makeNurbCylinder4.asd" "revolvetopCap7.esw";
connectAttr "makeNurbCylinder4.s" "revolvetopCap7.s";
connectAttr "makeNurbCylinder4.d" "revolvetopCap7.d";
connectAttr "makeNurbCylinder4.ut" "revolvetopCap7.ut";
connectAttr "makeNurbCylinder4.tol" "revolvetopCap7.tol";
connectAttr "makeNurbSphere7.os" "transformGeometry56.ig";
connectAttr "makeNurbCylinder4.os" "transformGeometry57.ig";
connectAttr "revolvebottomCap7.os" "transformGeometry58.ig";
connectAttr "revolvetopCap7.os" "transformGeometry59.ig";
connectAttr "cluster1GroupParts.og" "cluster1.ip[0].ig";
connectAttr "cluster1GroupId.id" "cluster1.ip[0].gi";
connectAttr "cluster1GroupParts1.og" "cluster1.ip[1].ig";
connectAttr "cluster1GroupId1.id" "cluster1.ip[1].gi";
connectAttr "cluster1GroupParts2.og" "cluster1.ip[2].ig";
connectAttr "cluster1GroupId2.id" "cluster1.ip[2].gi";
connectAttr "cluster1GroupParts3.og" "cluster1.ip[3].ig";
connectAttr "cluster1GroupId3.id" "cluster1.ip[3].gi";
connectAttr "cluster1Handle.wm" "cluster1.ma";
connectAttr "cluster1HandleShape.x" "cluster1.x";
connectAttr "groupParts5.og" "tweak1.ip[0].ig";
connectAttr "groupId5.id" "tweak1.ip[0].gi";
connectAttr "groupParts6.og" "tweak2.ip[0].ig";
connectAttr "groupId6.id" "tweak2.ip[0].gi";
connectAttr "groupParts7.og" "tweak3.ip[0].ig";
connectAttr "groupId7.id" "tweak3.ip[0].gi";
connectAttr "groupParts8.og" "tweak4.ip[0].ig";
connectAttr "groupId8.id" "tweak4.ip[0].gi";
connectAttr "cluster1GroupId.msg" "cluster1Set.gn" -na;
connectAttr "cluster1GroupId1.msg" "cluster1Set.gn" -na;
connectAttr "cluster1GroupId2.msg" "cluster1Set.gn" -na;
connectAttr "cluster1GroupId3.msg" "cluster1Set.gn" -na;
connectAttr "nurbsCylinderShape1.iog.og[2]" "cluster1Set.dsm" -na;
connectAttr "revolvebottomCap8.iog.og[2]" "cluster1Set.dsm" -na;
connectAttr "revolvetopCap8.iog.og[2]" "cluster1Set.dsm" -na;
connectAttr "nurbsSphereShape1.iog.og[2]" "cluster1Set.dsm" -na;
connectAttr "cluster1.msg" "cluster1Set.ub[0]";
connectAttr "tweak1.og[0]" "cluster1GroupParts.ig";
connectAttr "cluster1GroupId.id" "cluster1GroupParts.gi";
connectAttr "tweak2.og[0]" "cluster1GroupParts1.ig";
connectAttr "cluster1GroupId1.id" "cluster1GroupParts1.gi";
connectAttr "tweak3.og[0]" "cluster1GroupParts2.ig";
connectAttr "cluster1GroupId2.id" "cluster1GroupParts2.gi";
connectAttr "tweak4.og[0]" "cluster1GroupParts3.ig";
connectAttr "cluster1GroupId3.id" "cluster1GroupParts3.gi";
connectAttr "groupId5.msg" "tweakSet1.gn" -na;
connectAttr "nurbsCylinderShape1.iog.og[3]" "tweakSet1.dsm" -na;
connectAttr "tweak1.msg" "tweakSet1.ub[0]";
connectAttr "nurbsCylinderShape1Orig.ws" "groupParts5.ig";
connectAttr "groupId5.id" "groupParts5.gi";
connectAttr "groupId6.msg" "tweakSet2.gn" -na;
connectAttr "revolvebottomCap8.iog.og[3]" "tweakSet2.dsm" -na;
connectAttr "tweak2.msg" "tweakSet2.ub[0]";
connectAttr "revolvebottomCap8Orig.ws" "groupParts6.ig";
connectAttr "groupId6.id" "groupParts6.gi";
connectAttr "groupId7.msg" "tweakSet3.gn" -na;
connectAttr "revolvetopCap8.iog.og[3]" "tweakSet3.dsm" -na;
connectAttr "tweak3.msg" "tweakSet3.ub[0]";
connectAttr "revolvetopCap8Orig.ws" "groupParts7.ig";
connectAttr "groupId7.id" "groupParts7.gi";
connectAttr "groupId8.msg" "tweakSet4.gn" -na;
connectAttr "nurbsSphereShape1.iog.og[3]" "tweakSet4.dsm" -na;
connectAttr "tweak4.msg" "tweakSet4.ub[0]";
connectAttr "nurbsSphereShape1Orig.ws" "groupParts8.ig";
connectAttr "groupId8.id" "groupParts8.gi";
connectAttr "makeNurbSphere8.os" "transformGeometry60.ig";
connectAttr "transformGeometry60.og" "transformGeometry61.ig";
connectAttr "nurbsCylinderShape1.ws" "pointOnSurfaceInfo1.is";
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "lambert3SG.pa" ":renderPartition.st" -na;
connectAttr "tail_lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "tail_lambert3SG.pa" ":renderPartition.st" -na;
connectAttr "lambert4SG.pa" ":renderPartition.st" -na;
connectAttr "lambert2.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert3.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert4.msg" ":defaultShaderList1.s" -na;
connectAttr "multiplyDivide1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multiplyDivide2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "L_Femur_IKLeg_fraction_pos.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "L_Knee_IKLeg_fraction_pos.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "L_Ankle_IKLeg_fraction_pos.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "_armLength_condition.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "_autoStretch_condition.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "_fkikMode_condition.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "_manualStretch_range_multiplier.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "L_AnkleIKHandle_limb_length.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "R_Femur_IKLeg_fraction_pos.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "R_Knee_IKLeg_fraction_pos.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "R_Ankle_IKLeg_fraction_pos.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "_armLength_condition1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "_autoStretch_condition1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "_fkikMode_condition1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "_manualStretch_range_multiplier1.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "R_AnkleIKHandle_limb_length.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "L_upperLegGeo_div.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "R_upperLegGeo_Div.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "tail_multiplyDivide1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "tail_multiplyDivide2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "tail_L_Femur_IKLeg_fraction_pos.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "tail_L_Knee_IKLeg_fraction_pos.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "tail_L_Ankle_IKLeg_fraction_pos.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "tail__manualStretch_range_multiplier.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "tail_L_AnkleIKHandle_limb_length.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "tail_R_Femur_IKLeg_fraction_pos.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "tail_R_Knee_IKLeg_fraction_pos.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "tail_R_Ankle_IKLeg_fraction_pos.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "tail__manualStretch_range_multiplier1.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "tail_R_AnkleIKHandle_limb_length.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "tail_L_upperLegGeo_div.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "tail_R_upperLegGeo_Div.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "lightLinker1.msg" ":lightList1.ln" -na;
connectAttr "tail_spacerShape2.iog" ":initialShadingGroup.dsm" -na;
connectAttr "tailSpacerShape3.iog" ":initialShadingGroup.dsm" -na;
connectAttr "ikRPsolver.msg" ":ikSystem.sol" -na;
// End of Lieutenant_Dan_V3.ma
