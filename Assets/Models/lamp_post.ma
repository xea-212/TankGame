//Maya ASCII 2025ff03 scene
//Name: lamp_post.ma
//Last modified: Mon, Feb 16, 2026 01:23:42 PM
//Codeset: 932
requires maya "2025ff03";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2025";
fileInfo "version" "2025";
fileInfo "cutIdentifier" "202409190603-cbdc5a7e54";
fileInfo "osv" "Windows 11 Education v2009 (Build: 26100)";
fileInfo "UUID" "062E47FC-4443-767E-1A9A-36A62671805D";
fileInfo "license" "education";
createNode transform -s -n "persp";
	rename -uid "B060589B-48CE-9834-265E-828B2A5FF09B";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -22.95660311669732 6.2895192660035324 6.5535386278646577 ;
	setAttr ".r" -type "double3" -12.338352729545299 -431.7999999999214 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "7BEB921B-456C-C77F-5A94-BA9D7D30974A";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 25.956289146808494;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "CD74A391-4B71-B055-8DE9-75BFAC8F37DC";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "872824A6-45D7-4930-4EF4-7CAEC3A89FB9";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "6F4A7C37-48D1-5B53-0876-0E8229E60E71";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "B506A5A4-4B5A-EE06-F2EF-2D99C21694A5";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "2C5142E8-4368-5567-F870-968F23B0838C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "8E69E0D9-4CE5-8B40-812C-21BDAFDA1300";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 26.303311361996091;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "pCube2";
	rename -uid "3BB2693F-45D3-28D2-1FF4-A2A249D0EF1F";
	setAttr ".rp" -type "double3" 2.9802322387695312e-08 3.2999997138977051 -5.0663948059082031e-07 ;
	setAttr ".sp" -type "double3" 2.9802322387695312e-08 3.2999997138977051 -5.0663948059082031e-07 ;
createNode mesh -n "pCube2Shape" -p "pCube2";
	rename -uid "26C28D72-49BB-2877-EAAE-58BDA8559AE8";
	setAttr -k off ".v";
	setAttr -s 5 ".iog[0].og";
	setAttr ".iog[0].og[3].gcl" -type "componentList" 2 "f[0:127]" "f[136:151]";
	setAttr ".iog[0].og[4].gcl" -type "componentList" 1 "f[128:135]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 3 ".ciog[0].cog";
	setAttr -s 14 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[32:47]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 2 "f[48:63]" "f[104:111]";
	setAttr ".gtag[2].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "e[192:199]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 2 "vtx[98:105]" "vtx[114]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[98:105]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[98:113]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[106:113]";
	setAttr ".gtag[7].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "vtx[106:113]";
	setAttr ".gtag[8].gtagnm" -type "string" "front";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[0:15]";
	setAttr ".gtag[9].gtagnm" -type "string" "left";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "f[80:95]";
	setAttr ".gtag[10].gtagnm" -type "string" "right";
	setAttr ".gtag[10].gtagcmp" -type "componentList" 1 "f[64:79]";
	setAttr ".gtag[11].gtagnm" -type "string" "sides";
	setAttr ".gtag[11].gtagcmp" -type "componentList" 1 "f[96:103]";
	setAttr ".gtag[12].gtagnm" -type "string" "top";
	setAttr ".gtag[12].gtagcmp" -type "componentList" 2 "f[16:31]" "f[112:151]";
	setAttr ".gtag[13].gtagnm" -type "string" "topRing";
	setAttr ".gtag[13].gtagcmp" -type "componentList" 1 "e[200:207]";
	setAttr ".pv" -type "double2" 0.5 0.84375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 193 ".uvst[0].uvsp[0:192]" -type "float2" 0.375 0 0.4375 0
		 0.5 0 0.5625 0 0.625 0 0.375 0.0625 0.4375 0.0625 0.5 0.0625 0.5625 0.0625 0.625
		 0.0625 0.375 0.125 0.4375 0.125 0.5 0.125 0.5625 0.125 0.625 0.125 0.375 0.1875 0.4375
		 0.1875 0.5 0.1875 0.5625 0.1875 0.625 0.1875 0.375 0.25 0.4375 0.25 0.5 0.25 0.5625
		 0.25 0.625 0.25 0.375 0.3125 0.4375 0.3125 0.5 0.3125 0.5625 0.3125 0.625 0.3125
		 0.375 0.375 0.4375 0.375 0.5 0.375 0.5625 0.375 0.625 0.375 0.375 0.4375 0.4375 0.4375
		 0.5 0.4375 0.5625 0.4375 0.625 0.4375 0.375 0.5 0.4375 0.5 0.5 0.5 0.5625 0.5 0.625
		 0.5 0.375 0.5625 0.4375 0.5625 0.5 0.5625 0.5625 0.5625 0.625 0.5625 0.375 0.625
		 0.4375 0.625 0.5 0.625 0.5625 0.625 0.625 0.625 0.375 0.6875 0.4375 0.6875 0.5 0.6875
		 0.5625 0.6875 0.625 0.6875 0.375 0.75 0.4375 0.75 0.5 0.75 0.5625 0.75 0.625 0.75
		 0.375 0.8125 0.4375 0.8125 0.5 0.8125 0.5625 0.8125 0.625 0.8125 0.375 0.875 0.4375
		 0.875 0.5 0.875 0.5625 0.875 0.625 0.875 0.375 0.9375 0.4375 0.9375 0.5 0.9375 0.5625
		 0.9375 0.625 0.9375 0.375 1 0.4375 1 0.5 1 0.5625 1 0.625 1 0.875 0 0.8125 0 0.75
		 0 0.6875 0 0.875 0.0625 0.8125 0.0625 0.75 0.0625 0.6875 0.0625 0.875 0.125 0.8125
		 0.125 0.75 0.125 0.6875 0.125 0.875 0.1875 0.8125 0.1875 0.75 0.1875 0.6875 0.1875
		 0.875 0.25 0.8125 0.25 0.75 0.25 0.6875 0.25 0.125 0 0.1875 0 0.25 0 0.3125 0 0.125
		 0.0625 0.1875 0.0625 0.25 0.0625 0.3125 0.0625 0.125 0.125 0.1875 0.125 0.25 0.125
		 0.3125 0.125 0.125 0.1875 0.1875 0.1875 0.25 0.1875 0.3125 0.1875 0.125 0.25 0.1875
		 0.25 0.25 0.25 0.3125 0.25 0.375 0.3125 0.40625 0.3125 0.40625 0.6875 0.375 0.6875
		 0.4375 0.3125 0.4375 0.6875 0.46875 0.3125 0.46875 0.6875 0.5 0.3125 0.5 0.6875 0.53125
		 0.3125 0.53125 0.6875 0.5625 0.3125 0.5625 0.6875 0.59375 0.3125 0.59375 0.6875 0.625
		 0.3125 0.625 0.6875 0.5 1.4901161e-08 0.61048543 0.04576458 0.5 0.15625 0.38951457
		 0.04576458 0.34375 0.15625 0.38951457 0.26673543 0.5 0.3125 0.61048543 0.26673543
		 0.65625 0.15625 0.61048543 0.95423543 0.5 1 0.5 0.84375 0.38951457 0.95423543 0.34375
		 0.84375 0.38951457 0.73326457 0.5 0.6875 0.61048543 0.73326457 0.65625 0.84375 0.61048543
		 0.95423543 0.5 1 0.5 1 0.61048543 0.95423543 0.38951457 0.95423543 0.38951457 0.95423543
		 0.34375 0.84375 0.34375 0.84375 0.38951457 0.73326457 0.38951457 0.73326457 0.5 0.6875
		 0.5 0.6875 0.61048543 0.73326457 0.61048543 0.73326457 0.65625 0.84375 0.65625 0.84375
		 0.5 1 0.61048543 0.95423543 0.38951457 0.95423543 0.34375 0.84375 0.38951457 0.73326457
		 0.5 0.6875 0.61048543 0.73326457 0.65625 0.84375 0.5 1 0.61048543 0.95423543 0.38951457
		 0.95423543 0.34375 0.84375 0.38951457 0.73326457 0.5 0.6875 0.61048543 0.73326457
		 0.65625 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 148 ".vt[0:147]"  -0.5 0 -0.5 -0.25 0 -0.5 0 0 -0.5 0.25 0 -0.5
		 0.5 0 -0.5 -0.5 0 -0.25 -0.25 0 -0.25 0 0 -0.25 0.25 0 -0.25 0.5 0 -0.25 -0.5 0 0
		 -0.25 0 0 0 0 0 0.25 0 0 0.5 0 0 -0.5 0 0.25 -0.25 0 0.25 0 0 0.25 0.25 0 0.25 0.5 0 0.25
		 -0.5 0 0.5 -0.25 0 0.5 0 0 0.5 0.25 0 0.5 0.5 0 0.5 -0.5 0.25 0.5 -0.25 0.25 0.5
		 0 0.25 0.5 0.25 0.25 0.5 0.5 0.25 0.5 -0.33650181 0.54087454 0.33650181 -0.1682509 0.54087454 0.33650181
		 0 0.54087454 0.33650181 0.1682509 0.54087454 0.33650181 0.33650181 0.54087454 0.33650181
		 -0.33650205 0.70912546 0.33650205 -0.16825102 0.70912546 0.33650205 0 0.70912546 0.33650205
		 0.16825102 0.70912546 0.33650205 0.33650205 0.70912546 0.33650205 -0.42083758 1 0.42083758
		 -0.21041879 1 0.42083758 0 1 0.42083758 0.21041879 1 0.42083758 0.42083758 1 0.42083758
		 -0.42083758 1 0.21041879 -0.21041885 1 0.21041885 0 1 0.21041885 0.21041885 1 0.21041885
		 0.42083758 1 0.21041879 -0.42083758 1 0 -0.21041885 1 0 0 1 0 0.21041885 1 0 0.42083758 1 0
		 -0.42083758 1 -0.21041879 -0.21041885 1 -0.21041885 0 1 -0.21041885 0.21041885 1 -0.21041885
		 0.42083758 1 -0.21041879 -0.42083758 1 -0.42083758 -0.21041879 1 -0.42083758 0 1 -0.42083758
		 0.21041879 1 -0.42083758 0.42083758 1 -0.42083758 -0.33650205 0.70912546 -0.33650205
		 -0.16825102 0.70912546 -0.33650205 0 0.70912546 -0.33650205 0.16825102 0.70912546 -0.33650205
		 0.33650205 0.70912546 -0.33650205 -0.33650181 0.54087454 -0.33650181 -0.1682509 0.54087454 -0.33650181
		 0 0.54087454 -0.33650181 0.1682509 0.54087454 -0.33650181 0.33650181 0.54087454 -0.33650181
		 -0.5 0.25 -0.5 -0.25 0.25 -0.5 0 0.25 -0.5 0.25 0.25 -0.5 0.5 0.25 -0.5 0.33650205 0.70912546 -0.16825102
		 0.33650181 0.54087454 -0.1682509 0.5 0.25 -0.25 0.33650205 0.70912546 0 0.33650181 0.54087454 0
		 0.5 0.25 0 0.33650205 0.70912546 0.16825102 0.33650181 0.54087454 0.1682509 0.5 0.25 0.25
		 -0.33650205 0.70912546 -0.16825102 -0.33650181 0.54087454 -0.1682509 -0.5 0.25 -0.25
		 -0.33650205 0.70912546 0 -0.33650181 0.54087454 0 -0.5 0.25 0 -0.33650205 0.70912546 0.16825102
		 -0.33650181 0.54087454 0.1682509 -0.5 0.25 0.25 0.14142135 0 -0.14142135 0 0 -0.19999997
		 -0.14142135 0 -0.14142135 -0.19999997 0 0 -0.14142135 0 0.14142135 0 0 0.19999999
		 0.14142136 0 0.14142136 0.2 0 0 0.10749236 5 -0.10749234 3.5750087e-09 5 -0.15201703
		 -0.10749233 5 -0.10749234 -0.15201703 5 1.7875044e-09 -0.10749233 5 0.10749235 3.5750087e-09 5 0.15201703
		 0.10749236 5 0.10749235 0.15201706 5 1.7875044e-09 0 0 0 0.3398152 5.19999981 -0.33981526
		 -1.9360625e-08 5.19999981 -0.48057055 -0.33981517 5.19999981 -0.33982012 -0.48057061 5.19999981 -2.2133358e-07
		 -0.33981517 5.19999981 0.3398152 -1.9360625e-08 5.19999981 0.48057073 0.3398152 5.19999981 0.33981982
		 0.48057067 5.19999981 -2.2133358e-07 0.52645296 6.19999981 -0.52645272 -4.6655749e-08 6.19999981 -0.74451721
		 -0.5264529 6.19999981 -0.52645868 -0.74451596 6.19999981 -3.4102966e-06 -0.5264529 6.19999981 0.52645475
		 -4.6655749e-08 6.19999981 0.74451619 0.52645296 6.19999981 0.52646196 0.74451602 6.19999981 -1.5659828e-07
		 0.15782663 6.39999962 -0.15782697 6.9686727e-09 6.39999962 -0.22320098 -0.15782657 6.39999962 -0.15782869
		 -0.22320026 6.39999962 -1.3622725e-06 -0.15782657 6.39999962 0.15782681 6.9686727e-09 6.39999962 0.22320002
		 0.15782663 6.39999962 0.15782894 0.22320032 6.39999962 -3.8541117e-07 0.077831984 6.59999943 -0.077832714
		 1.8541943e-08 6.59999943 -0.11007247 2.7767969e-08 6.59999943 -7.6752065e-07 -0.077831924 6.59999943 -0.077833563
		 -0.11007086 6.59999943 -1.2533587e-06 -0.077831924 6.59999943 0.07783214 1.8541943e-08 6.59999943 0.11007018
		 0.077831984 6.59999943 0.077832527 0.11007092 6.59999943 -7.7162099e-07;
	setAttr -s 296 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 0 3 4 0 5 6 1 6 7 1 7 8 1 8 9 1 10 11 1
		 11 12 1 12 13 1 13 14 1 15 16 1 16 17 1 17 18 1 18 19 1 20 21 0 21 22 0 22 23 0 23 24 0
		 25 26 1 26 27 1 27 28 1 28 29 1 30 31 1 31 32 1 32 33 1 33 34 1 35 36 1 36 37 1 37 38 1
		 38 39 1 40 41 0 41 42 0 42 43 0 43 44 0 45 46 1 46 47 1 47 48 1 48 49 1 50 51 1 51 52 1
		 52 53 1 53 54 1 55 56 1 56 57 1 57 58 1 58 59 1 60 61 0 61 62 0 62 63 0 63 64 0 65 66 1
		 66 67 1 67 68 1 68 69 1 70 71 1 71 72 1 72 73 1 73 74 1 75 76 1 76 77 1 77 78 1 78 79 1
		 0 5 0 1 6 1 2 7 1 3 8 1 4 9 0 5 10 0 6 11 1 7 12 1 8 13 1 9 14 0 10 15 0 11 16 1
		 12 17 1 13 18 1 14 19 0 15 20 0 16 21 1 17 22 1 18 23 1 19 24 0 20 25 0 21 26 1 22 27 1
		 23 28 1 24 29 0 25 30 0 26 31 1 27 32 1 28 33 1 29 34 0 30 35 0 31 36 1 32 37 1 33 38 1
		 34 39 0 35 40 0 36 41 1 37 42 1 38 43 1 39 44 0 40 45 0 41 46 1 42 47 1 43 48 1 44 49 0
		 45 50 0 46 51 1 47 52 1 48 53 1 49 54 0 50 55 0 51 56 1 52 57 1 53 58 1 54 59 0 55 60 0
		 56 61 1 57 62 1 58 63 1 59 64 0 60 65 0 61 66 1 62 67 1 63 68 1 64 69 0 65 70 0 66 71 1
		 67 72 1 68 73 1 69 74 0 70 75 0 71 76 1 72 77 1 73 78 1 74 79 0 75 0 0 76 1 1 77 2 1
		 78 3 1 79 4 0 59 80 1 80 81 1 81 82 1 82 9 1 54 83 1 83 84 1 84 85 1 85 14 1 49 86 1
		 86 87 1 87 88 1 88 19 1 69 80 1 74 81 1 79 82 1 80 83 1 81 84 1 82 85 1 83 86 1 84 87 1
		 85 88 1 86 39 1;
	setAttr ".ed[166:295]" 87 34 1 88 29 1 55 89 1 89 90 1 90 91 1 91 5 1 50 92 1
		 92 93 1 93 94 1 94 10 1 45 95 1 95 96 1 96 97 1 97 15 1 65 89 1 70 90 1 75 91 1 89 92 1
		 90 93 1 91 94 1 92 95 1 93 96 1 94 97 1 95 35 1 96 30 1 97 25 1 98 99 0 99 100 0
		 100 101 0 101 102 0 102 103 0 103 104 0 104 105 0 105 98 0 106 107 1 107 108 1 108 109 1
		 109 110 1 110 111 1 111 112 1 112 113 1 113 106 1 98 106 0 99 107 0 100 108 0 101 109 0
		 102 110 0 103 111 0 104 112 0 105 113 0 114 98 1 114 99 1 114 100 1 114 101 1 114 102 1
		 114 103 1 114 104 1 114 105 1 106 115 0 107 116 0 115 116 0 108 117 0 116 117 0 109 118 0
		 117 118 0 110 119 0 118 119 0 111 120 0 119 120 0 112 121 0 120 121 0 113 122 0 121 122 0
		 122 115 0 115 123 0 116 124 0 123 124 1 117 125 0 124 125 1 118 126 0 125 126 1 119 127 0
		 126 127 1 120 128 0 127 128 1 121 129 0 128 129 1 122 130 0 129 130 1 130 123 1 123 131 0
		 124 132 0 131 132 0 125 133 0 132 133 0 126 134 0 133 134 0 127 135 0 134 135 0 128 136 0
		 135 136 0 129 137 0 136 137 0 130 138 0 137 138 0 138 131 0 131 139 0 132 140 0 139 140 0
		 140 141 1 139 141 1 133 142 0 140 142 0 142 141 1 134 143 0 142 143 0 143 141 1 135 144 0
		 143 144 0 144 141 1 136 145 0 144 145 0 145 141 1 137 146 0 145 146 0 146 141 1 138 147 0
		 146 147 0 147 141 1 147 139 0;
	setAttr -s 152 -ch 592 ".fc[0:151]" -type "polyFaces" 
		f 4 0 65 -5 -65
		mu 0 4 0 1 6 5
		f 4 1 66 -6 -66
		mu 0 4 1 2 7 6
		f 4 2 67 -7 -67
		mu 0 4 2 3 8 7
		f 4 3 68 -8 -68
		mu 0 4 3 4 9 8
		f 4 4 70 -9 -70
		mu 0 4 5 6 11 10
		f 4 5 71 -10 -71
		mu 0 4 6 7 12 11
		f 4 6 72 -11 -72
		mu 0 4 7 8 13 12
		f 4 7 73 -12 -73
		mu 0 4 8 9 14 13
		f 4 8 75 -13 -75
		mu 0 4 10 11 16 15
		f 4 9 76 -14 -76
		mu 0 4 11 12 17 16
		f 4 10 77 -15 -77
		mu 0 4 12 13 18 17
		f 4 11 78 -16 -78
		mu 0 4 13 14 19 18
		f 4 12 80 -17 -80
		mu 0 4 15 16 21 20
		f 4 13 81 -18 -81
		mu 0 4 16 17 22 21
		f 4 14 82 -19 -82
		mu 0 4 17 18 23 22
		f 4 15 83 -20 -83
		mu 0 4 18 19 24 23
		f 4 16 85 -21 -85
		mu 0 4 20 21 26 25
		f 4 17 86 -22 -86
		mu 0 4 21 22 27 26
		f 4 18 87 -23 -87
		mu 0 4 22 23 28 27
		f 4 19 88 -24 -88
		mu 0 4 23 24 29 28
		f 4 20 90 -25 -90
		mu 0 4 25 26 31 30
		f 4 21 91 -26 -91
		mu 0 4 26 27 32 31
		f 4 22 92 -27 -92
		mu 0 4 27 28 33 32
		f 4 23 93 -28 -93
		mu 0 4 28 29 34 33
		f 4 24 95 -29 -95
		mu 0 4 30 31 36 35
		f 4 25 96 -30 -96
		mu 0 4 31 32 37 36
		f 4 26 97 -31 -97
		mu 0 4 32 33 38 37
		f 4 27 98 -32 -98
		mu 0 4 33 34 39 38
		f 4 28 100 -33 -100
		mu 0 4 35 36 41 40
		f 4 29 101 -34 -101
		mu 0 4 36 37 42 41
		f 4 30 102 -35 -102
		mu 0 4 37 38 43 42
		f 4 31 103 -36 -103
		mu 0 4 38 39 44 43
		f 4 32 105 -37 -105
		mu 0 4 40 41 46 45
		f 4 33 106 -38 -106
		mu 0 4 41 42 47 46
		f 4 34 107 -39 -107
		mu 0 4 42 43 48 47
		f 4 35 108 -40 -108
		mu 0 4 43 44 49 48
		f 4 36 110 -41 -110
		mu 0 4 45 46 51 50
		f 4 37 111 -42 -111
		mu 0 4 46 47 52 51
		f 4 38 112 -43 -112
		mu 0 4 47 48 53 52
		f 4 39 113 -44 -113
		mu 0 4 48 49 54 53
		f 4 40 115 -45 -115
		mu 0 4 50 51 56 55
		f 4 41 116 -46 -116
		mu 0 4 51 52 57 56
		f 4 42 117 -47 -117
		mu 0 4 52 53 58 57
		f 4 43 118 -48 -118
		mu 0 4 53 54 59 58
		f 4 44 120 -49 -120
		mu 0 4 55 56 61 60
		f 4 45 121 -50 -121
		mu 0 4 56 57 62 61
		f 4 46 122 -51 -122
		mu 0 4 57 58 63 62
		f 4 47 123 -52 -123
		mu 0 4 58 59 64 63
		f 4 48 125 -53 -125
		mu 0 4 60 61 66 65
		f 4 49 126 -54 -126
		mu 0 4 61 62 67 66
		f 4 50 127 -55 -127
		mu 0 4 62 63 68 67
		f 4 51 128 -56 -128
		mu 0 4 63 64 69 68
		f 4 52 130 -57 -130
		mu 0 4 65 66 71 70
		f 4 53 131 -58 -131
		mu 0 4 66 67 72 71
		f 4 54 132 -59 -132
		mu 0 4 67 68 73 72
		f 4 55 133 -60 -133
		mu 0 4 68 69 74 73
		f 4 56 135 -61 -135
		mu 0 4 70 71 76 75
		f 4 57 136 -62 -136
		mu 0 4 71 72 77 76
		f 4 58 137 -63 -137
		mu 0 4 72 73 78 77
		f 4 59 138 -64 -138
		mu 0 4 73 74 79 78
		f 4 60 140 -1 -140
		mu 0 4 75 76 81 80
		f 4 61 141 -2 -141
		mu 0 4 76 77 82 81
		f 4 62 142 -3 -142
		mu 0 4 77 78 83 82
		f 4 63 143 -4 -143
		mu 0 4 78 79 84 83
		f 4 -129 -124 144 -157
		mu 0 4 86 85 89 90
		f 4 -134 156 145 -158
		mu 0 4 87 86 90 91
		f 4 -139 157 146 -159
		mu 0 4 88 87 91 92
		f 4 -144 158 147 -69
		mu 0 4 4 88 92 9
		f 4 -145 -119 148 -160
		mu 0 4 90 89 93 94
		f 4 -146 159 149 -161
		mu 0 4 91 90 94 95
		f 4 -147 160 150 -162
		mu 0 4 92 91 95 96
		f 4 -148 161 151 -74
		mu 0 4 9 92 96 14
		f 4 -149 -114 152 -163
		mu 0 4 94 93 97 98
		f 4 -150 162 153 -164
		mu 0 4 95 94 98 99
		f 4 -151 163 154 -165
		mu 0 4 96 95 99 100
		f 4 -152 164 155 -79
		mu 0 4 14 96 100 19
		f 4 -153 -109 -104 -166
		mu 0 4 98 97 101 102
		f 4 -154 165 -99 -167
		mu 0 4 99 98 102 103
		f 4 -155 166 -94 -168
		mu 0 4 100 99 103 104
		f 4 -156 167 -89 -84
		mu 0 4 19 100 104 24
		f 4 124 180 -169 119
		mu 0 4 105 106 110 109
		f 4 129 181 -170 -181
		mu 0 4 106 107 111 110
		f 4 134 182 -171 -182
		mu 0 4 107 108 112 111
		f 4 139 64 -172 -183
		mu 0 4 108 0 5 112
		f 4 168 183 -173 114
		mu 0 4 109 110 114 113
		f 4 169 184 -174 -184
		mu 0 4 110 111 115 114
		f 4 170 185 -175 -185
		mu 0 4 111 112 116 115
		f 4 171 69 -176 -186
		mu 0 4 112 5 10 116
		f 4 172 186 -177 109
		mu 0 4 113 114 118 117
		f 4 173 187 -178 -187
		mu 0 4 114 115 119 118
		f 4 174 188 -179 -188
		mu 0 4 115 116 120 119
		f 4 175 74 -180 -189
		mu 0 4 116 10 15 120
		f 4 176 189 99 104
		mu 0 4 117 118 122 121
		f 4 177 190 94 -190
		mu 0 4 118 119 123 122
		f 4 178 191 89 -191
		mu 0 4 119 120 124 123
		f 4 179 79 84 -192
		mu 0 4 120 15 20 124
		f 4 192 209 -201 -209
		mu 0 4 125 126 127 128
		f 4 193 210 -202 -210
		mu 0 4 126 129 130 127
		f 4 194 211 -203 -211
		mu 0 4 129 131 132 130
		f 4 195 212 -204 -212
		mu 0 4 131 133 134 132
		f 4 196 213 -205 -213
		mu 0 4 133 135 136 134
		f 4 197 214 -206 -214
		mu 0 4 135 137 138 136
		f 4 198 215 -207 -215
		mu 0 4 137 139 140 138
		f 4 199 208 -208 -216
		mu 0 4 139 141 142 140
		f 3 -193 -217 217
		mu 0 3 143 144 145
		f 3 -194 -218 218
		mu 0 3 146 143 145
		f 3 -195 -219 219
		mu 0 3 147 146 145
		f 3 -196 -220 220
		mu 0 3 148 147 145
		f 3 -197 -221 221
		mu 0 3 149 148 145
		f 3 -198 -222 222
		mu 0 3 150 149 145
		f 3 -199 -223 223
		mu 0 3 151 150 145
		f 3 -200 -224 216
		mu 0 3 144 151 145
		f 3 274 275 -277
		mu 0 3 152 153 154
		f 3 278 279 -276
		mu 0 3 153 155 154
		f 3 281 282 -280
		mu 0 3 155 156 154
		f 3 284 285 -283
		mu 0 3 156 157 154
		f 3 287 288 -286
		mu 0 3 157 158 154
		f 3 290 291 -289
		mu 0 3 158 159 154
		f 3 293 294 -292
		mu 0 3 159 160 154
		f 3 295 276 -295
		mu 0 3 160 152 154
		f 4 200 225 -227 -225
		mu 0 4 161 162 163 164
		f 4 201 227 -229 -226
		mu 0 4 162 165 166 163
		f 4 202 229 -231 -228
		mu 0 4 165 167 168 166
		f 4 203 231 -233 -230
		mu 0 4 167 169 170 168
		f 4 204 233 -235 -232
		mu 0 4 169 171 172 170
		f 4 205 235 -237 -234
		mu 0 4 171 173 174 172
		f 4 206 237 -239 -236
		mu 0 4 173 175 176 174
		f 4 207 224 -240 -238
		mu 0 4 175 161 164 176
		f 4 226 241 -243 -241
		mu 0 4 164 163 177 178
		f 4 228 243 -245 -242
		mu 0 4 163 166 179 177
		f 4 230 245 -247 -244
		mu 0 4 166 168 180 179
		f 4 232 247 -249 -246
		mu 0 4 168 170 181 180
		f 4 234 249 -251 -248
		mu 0 4 170 172 182 181
		f 4 236 251 -253 -250
		mu 0 4 172 174 183 182
		f 4 238 253 -255 -252
		mu 0 4 174 176 184 183
		f 4 239 240 -256 -254
		mu 0 4 176 164 178 184
		f 4 242 257 -259 -257
		mu 0 4 178 177 185 186
		f 4 244 259 -261 -258
		mu 0 4 177 179 187 185
		f 4 246 261 -263 -260
		mu 0 4 179 180 188 187
		f 4 248 263 -265 -262
		mu 0 4 180 181 189 188
		f 4 250 265 -267 -264
		mu 0 4 181 182 190 189
		f 4 252 267 -269 -266
		mu 0 4 182 183 191 190
		f 4 254 269 -271 -268
		mu 0 4 183 184 192 191
		f 4 255 256 -272 -270
		mu 0 4 184 178 186 192
		f 4 258 273 -275 -273
		mu 0 4 186 185 153 152
		f 4 260 277 -279 -274
		mu 0 4 185 187 155 153
		f 4 262 280 -282 -278
		mu 0 4 187 188 156 155
		f 4 264 283 -285 -281
		mu 0 4 188 189 157 156
		f 4 266 286 -288 -284
		mu 0 4 189 190 158 157
		f 4 268 289 -291 -287
		mu 0 4 190 191 159 158
		f 4 270 292 -294 -290
		mu 0 4 191 192 160 159
		f 4 271 272 -296 -293
		mu 0 4 192 186 152 160;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pSphere1";
	rename -uid "A80B2900-4ECD-6790-42DB-05A7AD4BB93C";
	setAttr ".t" -type "double3" 0 5.6553712516087691 0 ;
createNode mesh -n "pSphereShape1" -p "pSphere1";
	rename -uid "C6656CE2-4705-E04B-CEAD-EBA525B49374";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "49833382-4621-3D99-1665-28942E5AF78D";
	setAttr -s 5 ".lnk";
	setAttr -s 5 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "A9802DFD-49EB-219D-8D56-58BE5AD9ADA2";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "DDFA1F40-4E60-2BBD-CC37-399D8656C83F";
createNode displayLayerManager -n "layerManager";
	rename -uid "3DD5A1C5-4608-3113-1019-0685C4FAF03B";
createNode displayLayer -n "defaultLayer";
	rename -uid "6EB8177D-4ABC-E064-3581-C38696CA8309";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "597C6DF5-40E3-AA44-E991-39AC056FE86D";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "430C29CD-42EA-67F5-DBC3-AEB22A4C0AF4";
	setAttr ".g" yes;
createNode groupId -n "groupId6";
	rename -uid "821A9C38-4467-E50B-2F75-98A22BFF3E63";
	setAttr ".ihi" 0;
createNode lambert -n "lambert2";
	rename -uid "6F222DF5-407A-CD7D-B8BD-B1B7285A3B56";
	setAttr ".c" -type "float3" 0.097902097 0.097902097 0.097902097 ;
	setAttr ".ambc" -type "float3" 0.15384616 0.15384616 0.15384616 ;
	setAttr ".ic" -type "float3" 0.025641026 0.025641026 0.025641026 ;
createNode shadingEngine -n "lambert2SG";
	rename -uid "9FD5AB69-4EF2-F3C7-92F9-A994A6E9165D";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 2 ".gn";
createNode materialInfo -n "materialInfo1";
	rename -uid "DB4DE95D-4D8A-B972-A789-11835D1647E3";
createNode lambert -n "lambert3";
	rename -uid "54DD4C43-45A6-1F98-1AE6-219BE7FA6D16";
	setAttr ".c" -type "float3" 0 0.23076923 0.23076539 ;
	setAttr ".it" -type "float3" 0.67307693 0.67307693 0.67307693 ;
	setAttr ".ambc" -type "float3" 1 1 1 ;
createNode shadingEngine -n "lambert3SG";
	rename -uid "C39CF61B-4E87-971A-12B9-3794D888F2B0";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
	rename -uid "CBC3AA68-4ABA-F42A-17E2-B08577980D54";
createNode groupId -n "groupId7";
	rename -uid "667E1EEB-4C45-638C-DFE7-39AAF69B5FE7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId8";
	rename -uid "795CB771-400F-432C-3FA2-268A19132A4F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId9";
	rename -uid "9CB4B5D2-4766-0DED-A2A3-388D224C9A7E";
	setAttr ".ihi" 0;
createNode polySphere -n "polySphere1";
	rename -uid "7E370125-4E40-A471-1A87-2EB82988D284";
	setAttr ".r" 0.3;
	setAttr ".sa" 16;
	setAttr ".sh" 16;
createNode shadingEngine -n "lambert4SG";
	rename -uid "4D20E0F3-4AC6-21B0-4774-0A8EC1BA37F9";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
	rename -uid "861BAD09-48BC-3CE9-AE09-B385386DA3DA";
createNode lambert -n "lambert4";
	rename -uid "04B07636-47D8-97F1-C6A6-71B1DE77306D";
	setAttr ".c" -type "float3" 1 1 0 ;
	setAttr ".it" -type "float3" 0.070512824 0.070512824 0.070512824 ;
	setAttr ".ic" -type "float3" 0.1923077 0.1923077 0.1923077 ;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
	setAttr ".rtfm" 1;
select -ne :renderPartition;
	setAttr -s 5 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 8 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :standardSurface1;
	setAttr ".bc" -type "float3" 0.40000001 0.40000001 0.40000001 ;
	setAttr ".sr" 0.5;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :defaultColorMgtGlobals;
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "<MAYA_RESOURCES>/OCIO-configs/Maya2022-default/config.ocio";
	setAttr ".vtn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".vn" -type "string" "ACES 1.0 SDR-video";
	setAttr ".dn" -type "string" "sRGB";
	setAttr ".wsn" -type "string" "ACEScg";
	setAttr ".otn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".potn" -type "string" "ACES 1.0 SDR-video (sRGB)";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "groupId7.id" "pCube2Shape.iog.og[3].gid";
connectAttr "lambert2SG.mwc" "pCube2Shape.iog.og[3].gco";
connectAttr "groupId9.id" "pCube2Shape.iog.og[4].gid";
connectAttr "lambert3SG.mwc" "pCube2Shape.iog.og[4].gco";
connectAttr "groupId8.id" "pCube2Shape.ciog.cog[2].cgid";
connectAttr "polySphere1.out" "pSphereShape1.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert4SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert4SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "lambert2.oc" "lambert2SG.ss";
connectAttr "pCube2Shape.iog.og[3]" "lambert2SG.dsm" -na;
connectAttr "pCube2Shape.ciog.cog[2]" "lambert2SG.dsm" -na;
connectAttr "groupId7.msg" "lambert2SG.gn" -na;
connectAttr "groupId8.msg" "lambert2SG.gn" -na;
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr "lambert2.msg" "materialInfo1.m";
connectAttr "lambert3.oc" "lambert3SG.ss";
connectAttr "pCube2Shape.iog.og[4]" "lambert3SG.dsm" -na;
connectAttr "groupId9.msg" "lambert3SG.gn" -na;
connectAttr "lambert3SG.msg" "materialInfo2.sg";
connectAttr "lambert3.msg" "materialInfo2.m";
connectAttr "lambert4.oc" "lambert4SG.ss";
connectAttr "pSphereShape1.iog" "lambert4SG.dsm" -na;
connectAttr "lambert4SG.msg" "materialInfo3.sg";
connectAttr "lambert4.msg" "materialInfo3.m";
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "lambert3SG.pa" ":renderPartition.st" -na;
connectAttr "lambert4SG.pa" ":renderPartition.st" -na;
connectAttr "lambert2.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert3.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert4.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of lamp_post.ma
