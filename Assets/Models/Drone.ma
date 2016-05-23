//Maya ASCII 2016 scene
//Name: Drone unit.ma
//Last modified: Thu, May 12, 2016 02:33:41 AM
//Codeset: 1252
requires maya "2016";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2016";
fileInfo "version" "2016";
fileInfo "cutIdentifier" "201502261600-953408";
fileInfo "osv" "Microsoft Windows 7 Home Premium Edition, 64-bit Windows 7 Service Pack 1 (Build 7601)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	rename -uid "03A1D60B-4BB1-1B41-5EA0-8C9D413F04D2";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 9.2151767148051356 18.968801654205762 10.289598636464081 ;
	setAttr ".r" -type "double3" -53.138352749208124 1129.7999999999547 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "3E4BFBFF-4002-3C44-87BD-059051D5E979";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 24.284489585639996;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "56344CFA-4325-2DE5-7F0C-B887AFA604C9";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 100.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "B5DC4720-4BD4-2C1F-A1DA-2FAA2D6D4ACB";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "8AD1F92B-4A81-2D1A-BA2C-64BB8491E408";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "FB2D2CFF-48F4-D016-953D-77850DB3D70B";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "4EC49E3F-4BA4-730C-7429-B29901EA0CC7";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "99F27114-4D6B-3B5A-4042-8C9F8D321B7F";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "pTorus1";
	rename -uid "568B9026-438A-298A-7C85-4293A286765B";
createNode mesh -n "pTorusShape1" -p "pTorus1";
	rename -uid "4A51F649-449D-6A23-6B6E-2584F42010BB";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.7000001072883606 0.79999995231628418 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pSphere1";
	rename -uid "06F37E15-4C1B-16D0-5F57-2C8156B4F892";
	setAttr ".t" -type "double3" 0 3.8746338025235603 0 ;
createNode mesh -n "pSphereShape1" -p "pSphere1";
	rename -uid "85BEDE95-41FA-C726-4814-B3A5D9807B59";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50000005960464478 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 382 ".pt";
	setAttr ".pt[0:165]" -type "float3"  -0.10683703 -2.9301043 0.034582682 
		-0.090881065 -2.9301043 0.065780275 -0.06602893 -2.9301043 0.090538815 -0.034713525 
		-2.9301043 0.10643478 -8.5603716e-008 -2.9301043 0.11191218 0.03471335 -2.9301043 
		0.10643477 0.066028744 -2.9301043 0.0905388 0.090880848 -2.9301043 0.065780245 0.10683686 
		-2.9301043 0.03458266 0.11233496 -2.9301043 -1.2665987e-007 0.10683686 -2.9301043 
		-0.034582935 0.090880848 -2.9301043 -0.065780535 0.066028707 -2.9301043 -0.090539046 
		0.034713347 -2.9301043 -0.10643501 -8.2255887e-008 -2.9301043 -0.11191236 -0.034713507 
		-2.9301043 -0.10643499 -0.066028893 -2.9301043 -0.090539031 -0.09088102 -2.9301043 
		-0.065780528 -0.10683696 -2.9301043 -0.03458292 -0.11233507 -2.9301043 -1.2665987e-007 
		-0.21104339 -2.9878855 0.068313956 -0.17952418 -2.9878855 0.12994093 -0.13043201 
		-2.9878855 0.17884837 -0.068572171 -2.9878855 0.2102489 -8.5603716e-008 -2.9878855 
		0.25700912 0.068571962 -2.9878855 0.21024887 0.1304318 -2.9878855 0.17884839 0.17952397 
		-2.9878855 0.12994093 0.21104315 -2.9878855 0.068313889 0.22190376 -2.9878855 -1.2792235e-007 
		0.23371433 -2.9878855 -0.088702068 0.20219512 -2.9878855 -0.15032911 0.13043177 -2.9878855 
		-0.17884862 0.06857194 -2.9878855 -0.21024905 -7.8990482e-008 -2.9878855 -0.22106902 
		-0.068572141 -2.9878855 -0.21024907 -0.13043192 -2.9878855 -0.17884859 -0.20200726 
		-2.9878855 -0.14279544 -0.23352651 -2.9878855 -0.081168428 -0.22190391 -2.9878855 
		-1.2792235e-007 -0.31005308 -3.0412459 0.10036309 -0.26374692 -3.0412459 0.19090202 
		-0.19162332 -3.0412459 0.26275405 -0.10074235 -3.0412459 0.30888614 -8.5603716e-008 
		-3.0412459 0.36072224 0.10074223 -3.0412459 0.30888611 0.19162317 -3.0412459 0.26275393 
		0.26374653 -3.0412459 0.19090199 0.31005272 -3.0412459 0.10036303 0.32600868 -3.0412459 
		-1.2792235e-007 0.33272389 -3.0412459 -0.12075119 0.28641772 -3.0412459 -0.21129011 
		0.19162311 -3.0412459 -0.26275423 0.10074221 -3.0412459 -0.30888626 -7.588789e-008 
		-3.0412459 -0.3247821 -0.1007423 -3.0412459 -0.30888623 -0.19162329 -3.0412459 -0.26275423 
		-0.28622985 -3.0412459 -0.20375642 -0.33253601 -3.0412459 -0.11321755 -0.32600877 
		-3.0412459 -1.2792235e-007 -0.40142837 -3.1198168 0.12994093 -0.34147528 -3.1198168 
		0.24716237 -0.24809638 -3.1198168 0.34019005 -0.13043199 -3.1198168 0.39991742 -8.5603716e-008 
		-3.1198168 0.45643824 0.13043182 -3.1198168 0.39991736 0.24809618 -3.1198168 0.34018993 
		0.34147486 -3.1198168 0.24716233 0.40142795 -3.1198168 0.1299409 0.42208618 -3.1198168 
		-1.2792235e-007 0.42409912 -3.1198168 -0.1503291 0.36414599 -3.1198168 -0.26755053 
		0.24809609 -3.1198168 -0.34019023 0.13043176 -3.1198168 -0.39991754 -7.302458e-008 
		-3.1198168 -0.42049795 -0.13043191 -3.1198168 -0.39991754 -0.24809621 -3.1198168 
		-0.34019017 -0.36395815 -3.1198168 -0.26001695 -0.42391124 -3.1198168 -0.14279541 
		-0.4220863 -3.1198168 -1.2792235e-007 -0.48291901 -3.2089958 0.15631926 -0.41079536 
		-3.2089958 0.29733694 -0.2984601 -3.2089958 0.40924922 -0.15690984 -3.2089958 0.48110121 
		-8.5603716e-008 -3.2089958 0.54180008 0.15690973 -3.2089958 0.48110116 0.29846007 
		-3.2089958 0.4092491 0.41079509 -3.2089958 0.29733682 0.48291853 -3.2089958 0.15631917 
		0.50777042 -3.2089958 -1.2792235e-007 0.50558972 -3.2089958 -0.17670742 0.43346626 
		-3.2089958 -0.31772503 0.29845998 -3.2089958 -0.40924934 0.15690966 -3.2089958 -0.48110127 
		-7.0470982e-008 -3.2089958 -0.50585967 -0.15690972 -3.2089958 -0.48110127 -0.29846001 
		-3.2089958 -0.40924928 -0.43327838 -3.2089958 -0.31019142 -0.50540179 -3.2089958 
		-0.16917375 -0.50777048 -3.2089958 -1.2792235e-007 -0.5525189 -3.3153787 0.17884837 
		-0.47000033 -3.3153787 0.34019005 -0.34147522 -3.3153787 0.46823162 -0.17952412 -3.3153787 
		0.55043906 -8.5603716e-008 -3.3153787 0.61470574 0.179524 -3.3153787 0.550439 0.34147492 
		-3.3153787 0.4682315 0.46999985 -3.3153787 0.34018993 0.55251843 -3.3153787 0.17884836 
		0.58095187 -3.3153787 -1.2792235e-007 0.57518953 -3.3153787 -0.19923651 0.49267104 
		-3.3153787 -0.36057815 0.34147483 -3.3153787 -0.46823168 0.17952394 -3.3153787 -0.55043912 
		-6.8289964e-008 -3.3153787 -0.57876563 -0.17952408 -3.3153787 -0.55043912 -0.34147498 
		-3.3153787 -0.46823162 -0.49248317 -3.3153787 -0.35304454 -0.57500184 -3.3153787 
		-0.19170281 -0.58095199 -3.3153787 -1.2792235e-007 -0.6085133 -3.4359198 0.19697371 
		-0.51763219 -3.4359198 0.37466645 -0.376082 -3.4359198 0.51568389 -0.19771793 -3.4359198 
		0.60622305 -8.5603716e-008 -3.4359198 0.67336065 0.19771771 -3.4359198 0.60622305 
		0.37608171 -3.4359198 0.51568407 0.51763183 -3.4359198 0.37466627 0.60851312 -3.4359198 
		0.19697367 0.63982832 -3.4359198 -1.2792235e-007 0.63118422 -3.4359198 -0.21736179 
		0.54030293 -3.4359198 -0.39505455 0.37608168 -3.4359198 -0.51568431 0.19771771 -3.4359198 
		-0.60622311 -6.653535e-008 -3.4359198 -0.63742048 -0.1977178 -3.4359198 -0.60622305 
		-0.37608173 -3.4359198 -0.51568389 -0.54011524 -3.4359198 -0.38752094 -0.63099647 
		-3.4359198 -0.20982811 -0.63982832 -3.4359198 -1.2792235e-007 -0.64952475 -3.566422 
		0.2102489 -0.5525189 -3.566422 0.39991748 -0.40142837 -3.566422 0.55043912 -0.21104336 
		-3.566422 0.6470803 -8.5603716e-008 -3.566422 0.71632046 0.21104312 -3.566422 0.64708024 
		0.40142807 -3.566422 0.550439 0.55251849 -3.566422 0.3999173 0.64952421 -3.566422 
		0.21024881 0.68294984 -3.566422 -1.2792235e-007 0.67219532 -3.566422 -0.23063697 
		0.57518953 -3.566422 -0.42030519 0.40142795 -3.566422 -0.55043918 0.21104315 -3.566422 
		-0.6470803 -6.5250205e-008 -3.566422 -0.68038023 -0.21104321 -3.566422 -0.64708024 
		-0.40142807 -3.566422 -0.55043912 -0.57500184 -3.566422 -0.41277191 -0.67200756 -3.566422 
		-0.22310331 -0.68294984 -3.566422 -1.2792235e-007 -0.67454231 -3.7066689 0.21834718 
		-0.57379997 -3.7066689 0.4153209 -0.41688991 -3.7066689 0.57164007 -0.21917209 -3.7066689 
		0.67200327 -8.5603716e-008 -3.7066689 0.74252647 0.21917188 -3.7066689 0.67200321;
	setAttr ".pt[166:331]" 0.089222118 -3.7066689 0.36985987 0.24613202 -3.7066689 
		0.21354082 0.34687436 -3.7066689 0.016567128 0.70925516 -3.7066689 -1.2792235e-007 
		0.69721293 -3.7066689 -0.23873518 0.59647053 -3.7066689 -0.43570894 0.41688958 -3.7066689 
		-0.57164007 0.21917181 -3.7066689 -0.67200327 -6.4466221e-008 -3.7066689 -0.70658624 
		-0.21917194 -3.7066689 -0.67200327 -0.4168897 -3.7066689 -0.57164001 -0.59628284 
		-3.7066689 -0.42817536 -0.69702524 -3.7066689 -0.23120153 -0.70925516 -3.7066689 
		-1.2792235e-007 -0.38504794 -3.8474693 0.011637606 -0.28304985 -3.8474693 0.21106683 
		-0.12418415 -3.8474693 0.3693344 -0.22190399 -3.8474693 0.68038023 -8.5603716e-008 
		-3.8474693 0.75133407 0.22190385 -3.8474693 0.68038023 0.4220863 -3.8474693 0.57876545 
		0.58095199 -3.8474693 0.4204978 0.68294984 -3.8474693 0.22106872 0.71809614 -3.8474693 
		-1.2792235e-007 0.70562094 -3.8474693 -0.24145694 0.60362297 -3.8474693 -0.44088593 
		0.42208618 -3.8474693 -0.57876563 0.22190376 -3.8474693 -0.28392631 -6.4202794e-008 
		-3.8474693 -0.31893998 -0.22190388 -3.8474693 -0.28392631 -0.4220863 -3.8474693 -0.57876557 
		-0.60343534 -3.8474693 -0.43335232 -0.70543319 -3.8474693 -0.23392323 -0.71809614 
		-3.8474693 -1.2792235e-007 -0.67454231 -3.9887686 0.21834718 -0.57379997 -3.9887686 
		0.4153209 -0.41688991 -3.9887686 0.57164007 -0.21917209 -3.9887686 0.67200327 -8.5603716e-008 
		-3.9887686 0.74252647 0.21917188 -3.9887686 0.67200321 0.4168897 -3.9887686 0.5716399 
		0.57379949 -3.9887686 0.41532072 0.67454183 -3.9887686 0.21834706 0.70925516 -3.9887686 
		-1.2792235e-007 0.69721293 -3.9887686 -0.23873518 0.59647053 -3.9887686 -0.43570894 
		0.41688958 -3.9887686 -0.57164007 0.21917181 -3.9887686 -0.67200327 -6.4466221e-008 
		-3.9887686 -0.70658624 -0.21917194 -3.9887686 -0.67200327 -0.4168897 -3.9887686 -0.57164001 
		-0.59628284 -3.9887686 -0.42817536 -0.69702524 -3.9887686 -0.23120153 -0.70925516 
		-3.9887686 -1.2792235e-007 -0.64952475 -4.1268177 0.2102489 -0.5525189 -4.1268177 
		0.39991748 -0.40142837 -4.1268177 0.55043912 -0.21104336 -4.1268177 0.6470803 -8.5603716e-008 
		-4.1268177 0.71632046 0.21104312 -4.1268177 0.64708024 0.40142807 -4.1268177 0.550439 
		0.55251849 -4.1268177 0.3999173 0.64952421 -4.1268177 0.21024881 0.68294984 -4.1268177 
		-1.2792235e-007 0.67219532 -4.1268177 -0.23063697 0.57518953 -4.1268177 -0.42030519 
		0.40142795 -4.1268177 -0.55043918 0.21104315 -4.1268177 -0.6470803 -6.5250205e-008 
		-4.1268177 -0.68038023 -0.21104321 -4.1268177 -0.64708024 -0.40142807 -4.1268177 
		-0.55043912 -0.57500184 -4.1268177 -0.41277191 -0.67200756 -4.1268177 -0.22310331 
		-0.68294984 -4.1268177 -1.2792235e-007 -0.6085133 -4.2574019 0.19697371 -0.51763219 
		-4.2574019 0.37466645 -0.376082 -4.2574019 0.51568389 -0.19771793 -4.2574019 0.60622305 
		-8.5603716e-008 -4.2574019 0.67336065 0.19771771 -4.2574019 0.60622305 0.37608171 
		-4.2574019 0.51568407 0.51763183 -4.2574019 0.37466627 0.60851312 -4.2574019 0.19697367 
		0.63982832 -4.2574019 -1.2792235e-007 0.63118422 -4.2574019 -0.21736179 0.54030293 
		-4.2574019 -0.39505455 0.37608168 -4.2574019 -0.51568431 0.19771771 -4.2574019 -0.60622311 
		-6.653535e-008 -4.2574019 -0.63742048 -0.1977178 -4.2574019 -0.60622305 -0.37608173 
		-4.2574019 -0.51568389 -0.54011524 -4.2574019 -0.38752094 -0.63099647 -4.2574019 
		-0.20982811 -0.63982832 -4.2574019 -1.2792235e-007 -0.5525189 -4.3790722 0.17884837 
		-0.47000033 -4.3790722 0.34019005 -0.34147522 -4.3790722 0.46823162 -0.17952412 -4.3790722 
		0.55043906 -8.5603716e-008 -4.3790722 0.61470574 0.179524 -4.3790722 0.550439 0.34147492 
		-4.3790722 0.4682315 0.46999985 -4.3790722 0.34018993 0.55251843 -4.3790722 0.17884836 
		0.58095187 -4.3790722 -1.2792235e-007 0.57518953 -4.3790722 -0.19923651 0.49267104 
		-4.3790722 -0.36057815 0.34147483 -4.3790722 -0.46823168 0.17952394 -4.3790722 -0.55043912 
		-6.8289964e-008 -4.3790722 -0.57876563 -0.17952408 -4.3790722 -0.55043912 -0.34147498 
		-4.3790722 -0.46823162 -0.49248317 -4.3790722 -0.35304454 -0.57500184 -4.3790722 
		-0.19170281 -0.58095199 -4.3790722 -1.2792235e-007 -0.48291901 -4.4857121 0.15631926 
		-0.41079536 -4.4857121 0.29733694 -0.2984601 -4.4857121 0.40924922 -0.15690984 -4.4857121 
		0.48110121 -8.5603716e-008 -4.4857121 0.54180008 0.15690973 -4.4857121 0.48110116 
		0.29846007 -4.4857121 0.4092491 0.41079509 -4.4857121 0.29733682 0.48291853 -4.4857121 
		0.15631917 0.50777042 -4.4857121 -1.2792235e-007 0.50558972 -4.4857121 -0.17670742 
		0.43346626 -4.4857121 -0.31772503 0.29845998 -4.4857121 -0.40924934 0.15690966 -4.4857121 
		-0.48110127 -7.0470982e-008 -4.4857121 -0.50585967 -0.15690972 -4.4857121 -0.48110127 
		-0.29846001 -4.4857121 -0.40924928 -0.43327838 -4.4857121 -0.31019142 -0.50540179 
		-4.4857121 -0.16917375 -0.50777048 -4.4857121 -1.2792235e-007 -0.40142837 -4.5795178 
		0.12994093 -0.34147528 -4.5795178 0.24716237 -0.24809638 -4.5795178 0.34019005 -0.13043199 
		-4.5795178 0.39991742 -8.5603716e-008 -4.5795178 0.45643824 0.13043182 -4.5795178 
		0.39991736 0.24809618 -4.5795178 0.34018993 0.34147486 -4.5795178 0.24716233 0.40142795 
		-4.5795178 0.1299409 0.42208618 -4.5795178 -1.2792235e-007 0.42409912 -4.5795178 
		-0.1503291 0.36414599 -4.5795178 -0.26755053 0.24809609 -4.5795178 -0.34019023 0.13043176 
		-4.5795178 -0.39991754 -7.302458e-008 -4.5795178 -0.42049795 -0.13043191 -4.5795178 
		-0.39991754 -0.24809621 -4.5795178 -0.34019017 -0.36395815 -4.5795178 -0.26001695 
		-0.42391124 -4.5795178 -0.14279541 -0.4220863 -4.5795178 -1.2792235e-007 -0.31005308 
		-4.6523204 0.10036309 -0.26374692 -4.6523204 0.19090202 -0.19162332 -4.6523204 0.26275405 
		-0.10074235 -4.6523204 0.30888614 -8.5603716e-008 -4.6523204 0.36072224 0.10074223 
		-4.6523204 0.30888611 0.19162317 -4.6523204 0.26275393 0.26374653 -4.6523204 0.19090199 
		0.31005272 -4.6523204 0.10036303 0.32600868 -4.6523204 -1.2792235e-007 0.33272389 
		-4.6523204 -0.12075119 0.28641772 -4.6523204 -0.21129011;
	setAttr ".pt[332:381]" 0.19162311 -4.6523204 -0.26275423 0.10074221 -4.6523204 
		-0.30888626 -7.588789e-008 -4.6523204 -0.3247821 -0.1007423 -4.6523204 -0.30888623 
		-0.19162329 -4.6523204 -0.26275423 -0.28622985 -4.6523204 -0.20375642 -0.33253601 
		-4.6523204 -0.11321755 -0.32600877 -4.6523204 -1.2792235e-007 -0.21104339 -4.7091165 
		0.068313956 -0.17952418 -4.7091165 0.12994093 -0.13043201 -4.7091165 0.17884837 -0.068572171 
		-4.7091165 0.2102489 -8.5603716e-008 -4.7091165 0.22106881 0.068571962 -4.7091165 
		0.21024887 0.1304318 -4.7091165 0.17884839 0.17952397 -4.7091165 0.12994093 0.21104315 
		-4.7091165 0.068313889 0.22190376 -4.7091165 -1.2792235e-007 0.21104315 -4.7091165 
		-0.068314157 0.17952394 -4.7091165 -0.12994123 0.13043177 -4.7091165 -0.17884862 
		0.06857194 -4.7091165 -0.21024905 -7.8990482e-008 -4.7091165 -0.22106902 -0.068572141 
		-4.7091165 -0.21024907 -0.13043192 -4.7091165 -0.17884859 -0.20200726 -4.7091165 
		-0.14279544 -0.23352651 -4.7091165 -0.081168428 -0.22190391 -4.7091165 -1.2792235e-007 
		-0.10683703 -4.7823262 0.034582686 -0.090881065 -4.7823262 0.065780275 -0.06602893 
		-4.7823262 0.090538822 -0.034713525 -4.7823262 0.10643479 -8.5603716e-008 -4.7823262 
		0.11191219 0.03471335 -4.7823262 0.10643478 0.066028744 -4.7823262 0.090538807 0.090880848 
		-4.7823262 0.065780245 0.10683686 -4.7823262 0.034582663 0.11233496 -4.7823262 -1.2792235e-007 
		0.10683686 -4.7823262 -0.034582932 0.090880848 -4.7823262 -0.065780528 0.066028707 
		-4.7823262 -0.090539038 0.034713347 -4.7823262 -0.10643502 -8.2255887e-008 -4.7823262 
		-0.11191238 -0.034713507 -4.7823262 -0.106435 -0.066028893 -4.7823262 -0.090539023 
		-0.09088102 -4.7823262 -0.06578052 -0.10683696 -4.7823262 -0.03458292 -0.11233507 
		-4.7823262 -1.2792235e-007 -8.5603716e-008 -2.9197717 -1.2665987e-007 -0.022483326 
		-4.7926583 -0.012854416;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "4598A2A9-4753-5B6B-28DA-82A0EB38BC8D";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "8D7BBC9F-45F7-0555-2526-48B7CF601C78";
createNode displayLayer -n "defaultLayer";
	rename -uid "351199BD-44F1-4980-AC2A-0ABCA9317BF6";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "D8053C3C-4CD5-F2C6-DD3F-7697D6CA4D79";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "4CDE2F5A-4641-6250-A1BF-5CB38F967627";
	setAttr ".g" yes;
createNode polyTorus -n "polyTorus1";
	rename -uid "3FC69CE7-4905-941C-07E6-D9BA9A60E5E5";
createNode polyExtrudeFace -n "polyExtrudeFace1";
	rename -uid "E3489FE2-41BD-021C-CA2A-12AD8662FDC1";
	setAttr ".ics" -type "componentList" 2 "f[198:199]" "f[218:219]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 1.4516555 0 -1.3411045e-007 ;
	setAttr ".rs" 40082;
	setAttr ".lt" -type "double3" 1.5265566588595902e-016 -2.9143354396410359e-016 1.124066904134909 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 1.4033108949661255 -0.15450853109359741 -0.46352580189704895 ;
	setAttr ".cbx" -type "double3" 1.5000001192092896 0.15450853109359741 0.46352553367614746 ;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	rename -uid "9A9AE939-43B5-09F0-EDB9-048436F97CC2";
	setAttr ".ics" -type "componentList" 2 "f[188:189]" "f[208:209]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.4516559 0 0 ;
	setAttr ".rs" 50101;
	setAttr ".lt" -type "double3" 6.3837823915946501e-016 6.106226635438361e-016 1.0259788209763143 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.5000004768371582 -0.15450853109359741 -0.46352562308311462 ;
	setAttr ".cbx" -type "double3" -1.4033112525939941 0.15450853109359741 0.46352562308311462 ;
createNode polyTweak -n "polyTweak1";
	rename -uid "FFA55848-4999-EFD0-358C-07BF8D6105B1";
	setAttr ".uopa" yes;
	setAttr -s 78 ".tk";
	setAttr ".tk[134]" -type "float3" 0 0 0.80757397 ;
	setAttr ".tk[141]" -type "float3" 0 0.43812054 -0.41666657 ;
	setAttr ".tk[142]" -type "float3" 0 0.43812054 -0.41666657 ;
	setAttr ".tk[143]" -type "float3" 0 0.43812054 -0.91998744 ;
	setAttr ".tk[144]" -type "float3" 0 0.43812054 -0.91998744 ;
	setAttr ".tk[145]" -type "float3" 0 0.43812054 -0.91998744 ;
	setAttr ".tk[146]" -type "float3" 0 0.43812054 -0.41666657 ;
	setAttr ".tk[147]" -type "float3" 0 0.43812054 -0.41666657 ;
	setAttr ".tk[153]" -type "float3" 0 0 0.80757397 ;
	setAttr ".tk[154]" -type "float3" 0 0 0.80757397 ;
	setAttr ".tk[155]" -type "float3" 0 0 0.80757397 ;
	setAttr ".tk[162]" -type "float3" 0 0.43812054 -0.91998744 ;
	setAttr ".tk[163]" -type "float3" 0 0.43812054 -1.2512535 ;
	setAttr ".tk[164]" -type "float3" 0 0.43812054 -1.2512535 ;
	setAttr ".tk[165]" -type "float3" 0 0.43812054 -1.2512535 ;
	setAttr ".tk[166]" -type "float3" 0 0.43812054 -0.91998744 ;
	setAttr ".tk[172]" -type "float3" 0 0 0.80757397 ;
	setAttr ".tk[173]" -type "float3" 0 0 0.80757397 ;
	setAttr ".tk[174]" -type "float3" 0 0 0.80757397 ;
	setAttr ".tk[175]" -type "float3" 0 0 0.80757397 ;
	setAttr ".tk[176]" -type "float3" 0 0 0.80757397 ;
	setAttr ".tk[181]" -type "float3" 0 0 -0.50332081 ;
	setAttr ".tk[182]" -type "float3" 0 0 -0.83458662 ;
	setAttr ".tk[183]" -type "float3" 0 0 -0.83458662 ;
	setAttr ".tk[184]" -type "float3" 0 0 -1.059965 ;
	setAttr ".tk[185]" -type "float3" 0 0 -0.83458662 ;
	setAttr ".tk[186]" -type "float3" 0 0 -0.83458662 ;
	setAttr ".tk[187]" -type "float3" 0 0 -0.50332081 ;
	setAttr ".tk[192]" -type "float3" 0 0 0.80757397 ;
	setAttr ".tk[193]" -type "float3" 0 0 1.4694858 ;
	setAttr ".tk[194]" -type "float3" 0 0 1.4694858 ;
	setAttr ".tk[195]" -type "float3" 0 0 1.4694858 ;
	setAttr ".tk[196]" -type "float3" 0 0 0.80757397 ;
	setAttr ".tk[201]" -type "float3" 0 0 -0.50332081 ;
	setAttr ".tk[202]" -type "float3" 0 0 -0.83458662 ;
	setAttr ".tk[203]" -type "float3" 0 0 -1.059965 ;
	setAttr ".tk[204]" -type "float3" 0 0 -1.059965 ;
	setAttr ".tk[205]" -type "float3" 0 0 -1.059965 ;
	setAttr ".tk[206]" -type "float3" 0 0 -0.83458662 ;
	setAttr ".tk[207]" -type "float3" 0 0 -0.50332081 ;
	setAttr ".tk[210]" -type "float3" 0 0 0.80757397 ;
	setAttr ".tk[211]" -type "float3" 0 0 0.80757397 ;
	setAttr ".tk[212]" -type "float3" 0 0 1.4694858 ;
	setAttr ".tk[213]" -type "float3" 0 0 1.4694858 ;
	setAttr ".tk[214]" -type "float3" 0 0 1.4694858 ;
	setAttr ".tk[215]" -type "float3" 0 0 0.80757397 ;
	setAttr ".tk[216]" -type "float3" 0 0 0.80757397 ;
	setAttr ".tk[219]" -type "float3" 0 0 -0.50332081 ;
	setAttr ".tk[220]" -type "float3" 0 0 -0.83458662 ;
	setAttr ".tk[221]" -type "float3" 0 0 -0.83458662 ;
	setAttr ".tk[222]" -type "float3" 0 0 -1.059965 ;
	setAttr ".tk[223]" -type "float3" 0 0 -0.83458662 ;
	setAttr ".tk[224]" -type "float3" 0 0 -0.83458662 ;
	setAttr ".tk[225]" -type "float3" 0 0 -0.50332081 ;
	setAttr ".tk[230]" -type "float3" 0 0 0.80757397 ;
	setAttr ".tk[231]" -type "float3" 0 0 1.4694858 ;
	setAttr ".tk[232]" -type "float3" 0 0 1.4694858 ;
	setAttr ".tk[233]" -type "float3" 0 0 1.4694858 ;
	setAttr ".tk[234]" -type "float3" 0 0 0.80757397 ;
	setAttr ".tk[240]" -type "float3" 0 0 -0.50332081 ;
	setAttr ".tk[241]" -type "float3" 0 0 -0.83458662 ;
	setAttr ".tk[242]" -type "float3" 0 0 -0.83458662 ;
	setAttr ".tk[243]" -type "float3" 0 0 -0.83458662 ;
	setAttr ".tk[244]" -type "float3" 0 0 -0.50332081 ;
	setAttr ".tk[250]" -type "float3" 0 0 0.80757397 ;
	setAttr ".tk[251]" -type "float3" 0 0 0.80757397 ;
	setAttr ".tk[252]" -type "float3" 0 0 0.80757397 ;
	setAttr ".tk[253]" -type "float3" 0 0 0.80757397 ;
	setAttr ".tk[254]" -type "float3" 0 0 0.80757397 ;
	setAttr ".tk[261]" -type "float3" 0 0 -0.50332081 ;
	setAttr ".tk[262]" -type "float3" 0 0 -0.50332081 ;
	setAttr ".tk[263]" -type "float3" 0 0 -0.50332081 ;
	setAttr ".tk[270]" -type "float3" 0 0 0.80757397 ;
	setAttr ".tk[271]" -type "float3" 0 0 0.80757397 ;
	setAttr ".tk[272]" -type "float3" 0 0 0.80757397 ;
	setAttr ".tk[273]" -type "float3" 0 0 0.80757397 ;
	setAttr ".tk[274]" -type "float3" 0 0 0.80757397 ;
	setAttr ".tk[292]" -type "float3" 0 0 0.80757397 ;
createNode polySplit -n "polySplit1";
	rename -uid "C0BB3B6F-40CC-6098-2E64-34B19192C5AD";
	setAttr -s 9 ".e[0:8]"  0.40000001 0.40000001 0.40000001 0.40000001
		 0.40000001 0.40000001 0.40000001 0.40000001 0.40000001;
	setAttr -s 9 ".d[0:8]"  -2147482836 -2147482833 -2147482824 -2147482822 -2147482819 -2147482827 
		-2147482829 -2147482835 -2147482836;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit2";
	rename -uid "A2140762-4C55-C305-DFDA-DDAEEB323004";
	setAttr -s 9 ".e[0:8]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 9 ".d[0:8]"  -2147482816 -2147482809 -2147482810 -2147482811 -2147482812 -2147482813 
		-2147482814 -2147482815 -2147482816;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit3";
	rename -uid "B32DD09A-426F-9DA4-E4EE-29942488FF8E";
	setAttr -s 9 ".e[0:8]"  0.73226398 0.73226398 0.73226398 0.73226398
		 0.73226398 0.73226398 0.73226398 0.73226398 0.73226398;
	setAttr -s 9 ".d[0:8]"  -2147482856 -2147482853 -2147482844 -2147482842 -2147482839 -2147482847 
		-2147482849 -2147482855 -2147482856;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit4";
	rename -uid "728A2912-467F-906D-D333-45966F72F73B";
	setAttr -s 9 ".e[0:8]"  0.66557097 0.66557097 0.66557097 0.66557097
		 0.66557097 0.66557097 0.66557097 0.66557097 0.66557097;
	setAttr -s 9 ".d[0:8]"  -2147482856 -2147482853 -2147482844 -2147482842 -2147482839 -2147482847 
		-2147482849 -2147482855 -2147482856;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "B4D69BCB-48C2-5E82-2691-41AB07628281";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n"
		+ "                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 805\n                -height 336\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n"
		+ "            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n"
		+ "            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 805\n            -height 336\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n"
		+ "                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n"
		+ "                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n"
		+ "                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 804\n                -height 336\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n"
		+ "            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n"
		+ "            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n"
		+ "            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 804\n            -height 336\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n"
		+ "                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n"
		+ "                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n"
		+ "                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 805\n                -height 336\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n"
		+ "            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n"
		+ "            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 805\n            -height 336\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n"
		+ "                -width 1615\n                -height 717\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1615\n            -height 717\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 0\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n"
		+ "                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n"
		+ "            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n"
		+ "            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n"
		+ "                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n"
		+ "                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n"
		+ "                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n"
		+ "                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n"
		+ "                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n"
		+ "                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n"
		+ "                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n"
		+ "                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n"
		+ "                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n"
		+ "                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n"
		+ "                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n"
		+ "                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"profilerPanel\" -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"Stereo\" -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels `;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n"
		+ "                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n"
		+ "                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n"
		+ "                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n"
		+ "                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n"
		+ "                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n"
		+ "                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n"
		+ "                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n"
		+ "                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n"
		+ "        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1615\\n    -height 717\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1615\\n    -height 717\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "33D8B8C9-414F-23C7-0B10-4A9E46A02709";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode polyTweak -n "polyTweak2";
	rename -uid "78037664-4115-5340-2DF7-C1ACE65A1FDF";
	setAttr ".uopa" yes;
	setAttr -s 106 ".tk";
	setAttr ".tk[0]" -type "float3" 0.20772949 -0.063946761 -0.068714589 ;
	setAttr ".tk[1]" -type "float3" 0.1767053 -0.063946761 -0.13070294 ;
	setAttr ".tk[2]" -type "float3" 0.12838389 -0.063946761 -0.17989719 ;
	setAttr ".tk[3]" -type "float3" 0.067495421 -0.063946761 -0.21148184 ;
	setAttr ".tk[4]" -type "float3" 2.603764e-008 -0.063946761 -0.22236514 ;
	setAttr ".tk[5]" -type "float3" -0.067495368 -0.063946761 -0.21148179 ;
	setAttr ".tk[6]" -type "float3" -0.12838383 -0.063946761 -0.17989716 ;
	setAttr ".tk[7]" -type "float3" -0.17670515 -0.063946761 -0.13070291 ;
	setAttr ".tk[8]" -type "float3" -0.20772938 -0.063946761 -0.068714559 ;
	setAttr ".tk[9]" -type "float3" -0.21841957 -0.063946761 4.5144013e-008 ;
	setAttr ".tk[10]" -type "float3" -0.20772938 -0.063946761 0.068714648 ;
	setAttr ".tk[11]" -type "float3" -0.17670515 -0.063946761 0.13070297 ;
	setAttr ".tk[12]" -type "float3" -0.1283838 -0.063946761 0.17989719 ;
	setAttr ".tk[13]" -type "float3" -0.067495346 -0.063946761 0.21148184 ;
	setAttr ".tk[14]" -type "float3" 1.9528231e-008 -0.063946761 0.22236516 ;
	setAttr ".tk[15]" -type "float3" 0.067495383 -0.063946761 0.21148182 ;
	setAttr ".tk[16]" -type "float3" 0.12838383 -0.063946761 0.17989717 ;
	setAttr ".tk[17]" -type "float3" 0.17670515 -0.063946761 0.13070296 ;
	setAttr ".tk[18]" -type "float3" 0.20772938 -0.063946761 0.068714626 ;
	setAttr ".tk[19]" -type "float3" 0.21841957 -0.063946761 4.5144013e-008 ;
	setAttr ".tk[20]" -type "float3" 0.21789652 0.063946739 -0.072077721 ;
	setAttr ".tk[21]" -type "float3" 0.18535388 0.063946739 -0.13710001 ;
	setAttr ".tk[22]" -type "float3" 0.13466746 0.063946739 -0.188702 ;
	setAttr ".tk[23]" -type "float3" 0.070798881 0.063946739 -0.22183247 ;
	setAttr ".tk[24]" -type "float3" 2.603764e-008 0.063946739 -0.23324849 ;
	setAttr ".tk[25]" -type "float3" -0.070798822 0.063946739 -0.22183247 ;
	setAttr ".tk[26]" -type "float3" -0.13466738 0.063946739 -0.18870197 ;
	setAttr ".tk[27]" -type "float3" -0.18535373 0.063946739 -0.13709995 ;
	setAttr ".tk[28]" -type "float3" -0.21789639 0.063946739 -0.072077692 ;
	setAttr ".tk[29]" -type "float3" -0.22910984 0.063946739 4.5144013e-008 ;
	setAttr ".tk[30]" -type "float3" -0.21789639 0.063946739 0.072077781 ;
	setAttr ".tk[31]" -type "float3" -0.18535371 0.063946739 0.13710004 ;
	setAttr ".tk[32]" -type "float3" -0.13466737 0.063946739 0.188702 ;
	setAttr ".tk[33]" -type "float3" -0.070798807 0.063946739 0.2218325 ;
	setAttr ".tk[34]" -type "float3" 1.9209638e-008 0.063946739 0.2332485 ;
	setAttr ".tk[35]" -type "float3" 0.070798829 0.063946739 0.22183247 ;
	setAttr ".tk[36]" -type "float3" 0.13466738 0.063946739 0.188702 ;
	setAttr ".tk[37]" -type "float3" 0.18535373 0.063946739 0.13710003 ;
	setAttr ".tk[38]" -type "float3" 0.21789639 0.063946739 0.072077766 ;
	setAttr ".tk[39]" -type "float3" 0.22910984 0.063946739 4.5144013e-008 ;
	setAttr ".tk[40]" -type "float3" 0.052502934 -0.13170519 0 ;
	setAttr ".tk[43]" -type "float3" 0 0.30022228 0 ;
	setAttr ".tk[44]" -type "float3" 0 0.30022228 0 ;
	setAttr ".tk[45]" -type "float3" 0 0.30022228 0 ;
	setAttr ".tk[48]" -type "float3" -0.052502878 -0.13170516 0 ;
	setAttr ".tk[49]" -type "float3" -0.055204771 -0.13170516 0 ;
	setAttr ".tk[50]" -type "float3" -0.052502878 -0.13170516 0 ;
	setAttr ".tk[53]" -type "float3" 0.046924967 -0.12144502 0 ;
	setAttr ".tk[54]" -type "float3" -1.0673835e-008 -0.12144502 0 ;
	setAttr ".tk[55]" -type "float3" -0.046924982 -0.12144502 0 ;
	setAttr ".tk[58]" -type "float3" 0.052502878 -0.13170519 0 ;
	setAttr ".tk[59]" -type "float3" 0.055204798 -0.13170519 0 ;
	setAttr ".tk[60]" -type "float3" 0.062255606 -0.16783029 0 ;
	setAttr ".tk[63]" -type "float3" 0 0.30022228 0 ;
	setAttr ".tk[64]" -type "float3" 0 0.30022228 0 ;
	setAttr ".tk[65]" -type "float3" 0 0.30022228 0 ;
	setAttr ".tk[68]" -type "float3" -0.062255558 -0.16783026 0 ;
	setAttr ".tk[69]" -type "float3" -0.065459408 -0.16783026 0 ;
	setAttr ".tk[70]" -type "float3" -0.062255558 -0.16783026 0 ;
	setAttr ".tk[73]" -type "float3" 0.055641543 -0.17329901 0 ;
	setAttr ".tk[74]" -type "float3" -9.8331894e-009 -0.17329901 0 ;
	setAttr ".tk[75]" -type "float3" -0.055641551 -0.17329901 0 ;
	setAttr ".tk[78]" -type "float3" 0.062255584 -0.16783029 0 ;
	setAttr ".tk[79]" -type "float3" 0.065459393 -0.16783029 0 ;
	setAttr ".tk[80]" -type "float3" 0.074544758 -0.19102404 0 ;
	setAttr ".tk[83]" -type "float3" 0 0.30022228 0 ;
	setAttr ".tk[84]" -type "float3" 0 0.30022228 0 ;
	setAttr ".tk[85]" -type "float3" 0 0.30022228 0 ;
	setAttr ".tk[88]" -type "float3" -0.074544683 -0.19102401 0 ;
	setAttr ".tk[89]" -type "float3" -0.07838092 -0.19102401 0 ;
	setAttr ".tk[90]" -type "float3" -0.074544683 -0.19102401 0 ;
	setAttr ".tk[93]" -type "float3" 0.066625066 -0.20659137 0 ;
	setAttr ".tk[94]" -type "float3" -8.7739123e-009 -0.20659137 0 ;
	setAttr ".tk[95]" -type "float3" -0.066625088 -0.20659137 0 ;
	setAttr ".tk[98]" -type "float3" 0.074544698 -0.19102404 0 ;
	setAttr ".tk[99]" -type "float3" 0.078380927 -0.19102404 0 ;
	setAttr ".tk[103]" -type "float3" 0 0.30022228 0 ;
	setAttr ".tk[104]" -type "float3" 0 0.30022228 0 ;
	setAttr ".tk[105]" -type "float3" 0 0.30022228 0 ;
	setAttr ".tk[113]" -type "float3" 0.078800403 -0.21806313 0 ;
	setAttr ".tk[114]" -type "float3" -7.5996951e-009 -0.21806313 0 ;
	setAttr ".tk[115]" -type "float3" -0.07880041 -0.21806313 0 ;
	setAttr ".tk[123]" -type "float3" 0 0.30022228 0 ;
	setAttr ".tk[124]" -type "float3" 0 0.30022228 0 ;
	setAttr ".tk[125]" -type "float3" 0 0.30022228 0 ;
	setAttr ".tk[133]" -type "float3" 0.090975747 -0.20659138 0 ;
	setAttr ".tk[134]" -type "float3" -6.4254766e-009 -0.20659138 0 ;
	setAttr ".tk[135]" -type "float3" -0.090975747 -0.20659138 0 ;
	setAttr ".tk[143]" -type "float3" 0 0.30022228 0 ;
	setAttr ".tk[144]" -type "float3" 0 0.30022228 0 ;
	setAttr ".tk[145]" -type "float3" 0 0.30022228 0 ;
	setAttr ".tk[213]" -type "float3" 0 0 0.20323116 ;
	setAttr ".tk[398]" -type "float3" 0 0 -0.45048314 ;
	setAttr ".tk[402]" -type "float3" 0 0 -0.48708352 ;
	setAttr ".tk[404]" -type "float3" 0 0 -0.45048314 ;
	setAttr ".tk[406]" -type "float3" 0 0 -0.48708352 ;
	setAttr ".tk[407]" -type "float3" 0 0 -0.48708352 ;
	setAttr ".tk[411]" -type "float3" 0 0 -0.45048311 ;
	setAttr ".tk[413]" -type "float3" 0 0 -0.48708352 ;
	setAttr ".tk[415]" -type "float3" 0 0 -0.45048311 ;
	setAttr ".tk[417]" -type "float3" 0 0 -0.91006058 ;
	setAttr ".tk[427]" -type "float3" 0 0 1.0394959 ;
	setAttr ".tk[431]" -type "float3" 0 0 -0.91006058 ;
	setAttr ".tk[433]" -type "float3" 0 0 1.0394959 ;
	setAttr ".tk[437]" -type "float3" 0 0 -0.91006058 ;
	setAttr ".tk[445]" -type "float3" 0 0 -0.91006058 ;
createNode polySplit -n "polySplit5";
	rename -uid "582F863E-43D0-E19D-1C84-2483371C6C89";
	setAttr -s 5 ".e[0:4]"  0.5 0.5 0.5 0.5 0.5;
	setAttr -s 5 ".d[0:4]"  -2147482797 -2147482790 -2147482811 -2147482789 -2147482797;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit6";
	rename -uid "358AF59B-401A-0FDC-CD39-F2BF6AC34A47";
	setAttr -s 5 ".e[0:4]"  0.5 0.5 0.5 0.5 0.5;
	setAttr -s 5 ".d[0:4]"  -2147482776 -2147482783 -2147482775 -2147482767 -2147482776;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit7";
	rename -uid "DB1F2BFE-4389-5D88-9AD8-F68CD3085FBA";
	setAttr -s 5 ".e[0:4]"  0.5 0.5 0.5 0.5 0.5;
	setAttr -s 5 ".d[0:4]"  -2147482790 -2147482752 -2147482749 -2147482811 -2147482790;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit8";
	rename -uid "D5928702-46C0-F74E-E915-54B8EBFAFF75";
	setAttr -s 2 ".e[0:1]"  0 1;
	setAttr -s 2 ".d[0:1]"  -2147482811 -2147482810;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit9";
	rename -uid "F855BFBB-4D56-55C9-EA88-E3A8CCF1E7AC";
	setAttr -s 2 ".e[0:1]"  1 0;
	setAttr -s 2 ".d[0:1]"  -2147482760 -2147482776;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit10";
	rename -uid "2470A7E9-401D-802E-4E03-7FAED223D170";
	setAttr -s 2 ".e[0:1]"  0 1;
	setAttr -s 2 ".d[0:1]"  -2147482784 -2147482852;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit11";
	rename -uid "DE6219DF-4D56-AF60-F086-A29569E6CE3E";
	setAttr -s 5 ".e[0:4]"  0.5 0.5 0.5 0.5 0.5;
	setAttr -s 5 ".d[0:4]"  -2147482776 -2147482743 -2147482742 -2147482767 -2147482776;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit12";
	rename -uid "7DDC3E5A-4B66-2CA9-1CAB-64A2718468F0";
	setAttr -s 2 ".e[0:1]"  0 1;
	setAttr -s 2 ".d[0:1]"  -2147482767 -2147482766;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit13";
	rename -uid "B4C26857-4347-D0C3-9D44-9D943B69D1B4";
	setAttr -s 2 ".e[0:1]"  0 1;
	setAttr -s 2 ".d[0:1]"  -2147482843 -2147482723;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit14";
	rename -uid "AE58381E-4215-E43D-187D-FCB87279EA93";
	setAttr -s 4 ".e[0:3]"  0 1 0 1;
	setAttr -s 4 ".d[0:3]"  -2147482790 -2147482825 -2147482796 -2147482804;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit15";
	rename -uid "012F5FC5-4B23-64A6-B5DB-C0A238B2ABB3";
	setAttr -s 3 ".e[0:2]"  0 0.5 1;
	setAttr -s 3 ".d[0:2]"  -2147483502 -2147483482 -2147483502;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit16";
	rename -uid "C893245E-497C-EDE7-E4AF-958F1A2F6475";
	setAttr -s 3 ".e[0:2]"  1 0 1;
	setAttr -s 3 ".d[0:2]"  -2147483462 -2147482712 -2147483086;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit17";
	rename -uid "8C00517D-411A-6AE6-6040-DA950326C8EF";
	setAttr -s 3 ".e[0:2]"  0 0.5 1;
	setAttr -s 3 ".d[0:2]"  -2147483507 -2147483487 -2147483507;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit18";
	rename -uid "A7F9CA10-4A18-EF8F-6354-B38B45E019B4";
	setAttr -s 3 ".e[0:2]"  1 0 1;
	setAttr -s 3 ".d[0:2]"  -2147483091 -2147482707 -2147483467;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySphere -n "polySphere1";
	rename -uid "6CF54B39-4A72-1F96-2DDB-CC9B998C872D";
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 4 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "polySplit18.out" "pTorusShape1.i";
connectAttr "polySphere1.out" "pSphereShape1.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyTorus1.out" "polyExtrudeFace1.ip";
connectAttr "pTorusShape1.wm" "polyExtrudeFace1.mp";
connectAttr "polyExtrudeFace1.out" "polyExtrudeFace2.ip";
connectAttr "pTorusShape1.wm" "polyExtrudeFace2.mp";
connectAttr "polyExtrudeFace2.out" "polyTweak1.ip";
connectAttr "polyTweak1.out" "polySplit1.ip";
connectAttr "polySplit1.out" "polySplit2.ip";
connectAttr "polySplit2.out" "polySplit3.ip";
connectAttr "polySplit3.out" "polySplit4.ip";
connectAttr "polySplit4.out" "polyTweak2.ip";
connectAttr "polyTweak2.out" "polySplit5.ip";
connectAttr "polySplit5.out" "polySplit6.ip";
connectAttr "polySplit6.out" "polySplit7.ip";
connectAttr "polySplit7.out" "polySplit8.ip";
connectAttr "polySplit8.out" "polySplit9.ip";
connectAttr "polySplit9.out" "polySplit10.ip";
connectAttr "polySplit10.out" "polySplit11.ip";
connectAttr "polySplit11.out" "polySplit12.ip";
connectAttr "polySplit12.out" "polySplit13.ip";
connectAttr "polySplit13.out" "polySplit14.ip";
connectAttr "polySplit14.out" "polySplit15.ip";
connectAttr "polySplit15.out" "polySplit16.ip";
connectAttr "polySplit16.out" "polySplit17.ip";
connectAttr "polySplit17.out" "polySplit18.ip";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pTorusShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pSphereShape1.iog" ":initialShadingGroup.dsm" -na;
// End of Drone unit.ma
