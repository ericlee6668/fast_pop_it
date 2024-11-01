
import 'package:flutter/cupertino.dart';

//Add this CustomPaint widget to the Widget Tree


//Copy this CustomPainter code to the Bottom of the File
class RPSCustomPainter extends CustomPainter {
@override
void paint(Canvas canvas, Size size) {

Path path_0 = Path();
path_0.moveTo(290.5,-0.5);
path_0.cubicTo(296.5,-0.5,302.5,-0.5,308.5,-0.5);
path_0.cubicTo(318.218,3.06455,323.718,10.0645,325,20.5);
path_0.cubicTo(325.017,45.616,317.184,67.9493,301.5,87.5);
path_0.cubicTo(298.141,89.487,294.475,89.987,290.5,89);
path_0.cubicTo(289.944,88.6174,289.611,88.1174,289.5,87.5);
path_0.cubicTo(306.676,68.4799,315.509,46.1466,316,20.5);
path_0.cubicTo(313.718,11.4352,307.885,7.43521,298.5,8.5);
path_0.cubicTo(287.956,9.20403,280.122,14.204,275,23.5);
path_0.cubicTo(268.575,36.0429,265.575,49.3763,266,63.5);
path_0.cubicTo(263.822,67.0655,261.156,67.3988,258,64.5);
path_0.cubicTo(252.751,52.5972,245.251,42.4305,235.5,34);
path_0.cubicTo(227.402,29.6813,220.569,31.1813,215,38.5);
path_0.cubicTo(213.496,42.0387,213.163,45.7054,214,49.5);
path_0.cubicTo(218.014,57.184,223.181,64.0174,229.5,70);
path_0.cubicTo(237.388,76.4288,245.388,82.5955,253.5,88.5);
path_0.cubicTo(248.167,88.5,242.833,88.5,237.5,88.5);
path_0.cubicTo(226.568,80.7357,217.068,71.4024,209,60.5);
path_0.cubicTo(199.474,42.7353,203.974,30.2353,222.5,23);
path_0.cubicTo(230.742,21.7486,238.076,23.7486,244.5,29);
path_0.cubicTo(249.598,34.0407,254.098,39.5407,258,45.5);
path_0.cubicTo(259.884,34.8469,263.551,24.8469,269,15.5);
path_0.cubicTo(274.654,7.99646,281.821,2.66313,290.5,-0.5);
path_0.close();

Paint paint0Fill = Paint()..style=PaintingStyle.fill;
paint0Fill.color = const Color(0xff0967b1).withOpacity(1.0);
canvas.drawPath(path_0,paint0Fill);

Path path_1 = Path();
path_1.moveTo(289.5,87.5);
path_1.cubicTo(277.58,88.4786,265.58,88.8119,253.5,88.5);
path_1.cubicTo(245.388,82.5955,237.388,76.4288,229.5,70);
path_1.cubicTo(223.181,64.0174,218.014,57.184,214,49.5);
path_1.cubicTo(213.163,45.7054,213.496,42.0387,215,38.5);
path_1.cubicTo(220.569,31.1813,227.402,29.6813,235.5,34);
path_1.cubicTo(245.251,42.4305,252.751,52.5972,258,64.5);
path_1.cubicTo(261.156,67.3988,263.822,67.0655,266,63.5);
path_1.cubicTo(265.575,49.3763,268.575,36.0429,275,23.5);
path_1.cubicTo(280.122,14.204,287.956,9.20403,298.5,8.5);
path_1.cubicTo(307.885,7.43521,313.718,11.4352,316,20.5);
path_1.cubicTo(315.509,46.1466,306.676,68.4799,289.5,87.5);
path_1.close();

Paint paint1Fill = Paint()..style=PaintingStyle.fill;
paint1Fill.color = const Color(0xfffbf007).withOpacity(1.0);
canvas.drawPath(path_1,paint1Fill);

Path path_2 = Path();
path_2.moveTo(289.5,87.5);
path_2.cubicTo(289.611,88.1174,289.944,88.6174,290.5,89);
path_2.cubicTo(294.475,89.987,298.141,89.487,301.5,87.5);
path_2.cubicTo(301.611,88.1174,301.944,88.6174,302.5,89);
path_2.cubicTo(318.596,89.7663,334.596,91.4329,350.5,94);
path_2.cubicTo(395.766,105.604,426.933,133.104,444,176.5);
path_2.cubicTo(447.766,187.23,450.433,198.23,452,209.5);
path_2.cubicTo(458.819,255.289,461.319,301.289,459.5,347.5);
path_2.cubicTo(456.203,349.601,452.537,350.935,448.5,351.5);
path_2.cubicTo(450.024,344.279,451.024,336.946,451.5,329.5);
path_2.cubicTo(449.167,329.5,446.833,329.5,444.5,329.5);
path_2.cubicTo(446.607,328.532,448.941,328.198,451.5,328.5);
path_2.cubicTo(451.5,325.833,451.5,323.167,451.5,320.5);
path_2.cubicTo(450.849,278.203,447.016,236.203,440,194.5);
path_2.cubicTo(424.055,138.554,387.222,107.054,329.5,100);
path_2.cubicTo(289.517,97.2224,249.517,96.8891,209.5,99);
path_2.cubicTo(170.053,99.895,137.553,115.062,112,144.5);
path_2.cubicTo(99.6234,161.257,91.6234,179.924,88,200.5);
path_2.cubicTo(82.3857,240.319,78.8857,280.319,77.5,320.5);
path_2.cubicTo(77.5,323.167,77.5,325.833,77.5,328.5);
path_2.cubicTo(79.4147,328.216,81.0813,328.549,82.5,329.5);
path_2.cubicTo(80.8333,329.5,79.1667,329.5,77.5,329.5);
path_2.cubicTo(77.9753,343.663,80.8086,357.33,86,370.5);
path_2.cubicTo(86.2784,369.584,86.7784,368.918,87.5,368.5);
path_2.cubicTo(86.6803,374.797,86.347,381.131,86.5,387.5);
path_2.cubicTo(85.5,387.5,84.5,387.5,83.5,387.5);
path_2.cubicTo(76.7285,375.354,72.2285,362.354,70,348.5);
path_2.cubicTo(67.7341,298.551,70.7341,248.884,79,199.5);
path_2.cubicTo(89.5561,142.946,122.723,107.779,178.5,94);
path_2.cubicTo(198.033,90.7134,217.7,88.88,237.5,88.5);
path_2.cubicTo(242.833,88.5,248.167,88.5,253.5,88.5);
path_2.cubicTo(265.58,88.8119,277.58,88.4786,289.5,87.5);
path_2.close();

Paint paint2Fill = Paint()..style=PaintingStyle.fill;
paint2Fill.color = const Color(0xff6bcdf5).withOpacity(1.0);
canvas.drawPath(path_2,paint2Fill);

Path path_3 = Path();
path_3.moveTo(451.5,320.5);
path_3.cubicTo(405.548,324.216,359.548,327.383,313.5,330);
path_3.cubicTo(271.975,331.003,230.475,330.503,189,328.5);
path_3.cubicTo(185.317,328.501,181.817,328.835,178.5,329.5);
path_3.cubicTo(173.919,321.222,166.919,318.389,157.5,321);
path_3.cubicTo(152.212,322.69,146.879,324.19,141.5,325.5);
path_3.cubicTo(120.391,322.853,99.0573,321.186,77.5,320.5);
path_3.cubicTo(78.8857,280.319,82.3857,240.319,88,200.5);
path_3.cubicTo(91.6234,179.924,99.6234,161.257,112,144.5);
path_3.cubicTo(137.553,115.062,170.053,99.895,209.5,99);
path_3.cubicTo(249.517,96.8891,289.517,97.2224,329.5,100);
path_3.cubicTo(387.222,107.054,424.055,138.554,440,194.5);
path_3.cubicTo(447.016,236.203,450.849,278.203,451.5,320.5);
path_3.close();

Paint paint3Fill = Paint()..style=PaintingStyle.fill;
paint3Fill.color = const Color(0xff0189cf).withOpacity(1.0);
canvas.drawPath(path_3,paint3Fill);

Path path_4 = Path();
path_4.moveTo(226.5,104.5);
path_4.cubicTo(257.879,103.922,289.212,104.755,320.5,107);
path_4.cubicTo(338.816,108.795,356.483,113.129,373.5,120);
path_4.cubicTo(387.721,125.505,398.221,135.005,405,148.5);
path_4.cubicTo(406.998,156.84,403.664,160.507,395,159.5);
path_4.cubicTo(391.765,159.418,388.598,158.918,385.5,158);
path_4.cubicTo(377.112,152.633,368.445,147.633,359.5,143);
path_4.cubicTo(338.647,134.629,316.981,129.963,294.5,129);
path_4.cubicTo(272.833,128.333,251.167,128.333,229.5,129);
path_4.cubicTo(209.874,130.659,190.874,134.992,172.5,142);
path_4.cubicTo(162.841,146.828,153.508,152.161,144.5,158);
path_4.cubicTo(139.254,159.506,133.921,159.839,128.5,159);
path_4.cubicTo(125.317,157.982,123.984,155.815,124.5,152.5);
path_4.cubicTo(126.124,143.762,130.457,136.595,137.5,131);
path_4.cubicTo(149.355,122.573,162.355,116.573,176.5,113);
path_4.cubicTo(193.118,109.012,209.785,106.179,226.5,104.5);
path_4.close();

Paint paint4Fill = Paint()..style=PaintingStyle.fill;
paint4Fill.color = const Color(0xff0bb9f1).withOpacity(1.0);
canvas.drawPath(path_4,paint4Fill);

Path path_5 = Path();
path_5.moveTo(234.5,107.5);
path_5.cubicTo(273.849,106.435,312.849,109.602,351.5,117);
path_5.cubicTo(353.011,119.782,352.178,121.615,349,122.5);
path_5.cubicTo(291.875,110.943,234.708,110.609,177.5,121.5);
path_5.cubicTo(177.286,119.856,177.62,118.356,178.5,117);
path_5.cubicTo(197.028,112.19,215.695,109.024,234.5,107.5);
path_5.close();

Paint paint5Fill = Paint()..style=PaintingStyle.fill;
paint5Fill.color = const Color(0xfff8fdfe).withOpacity(1.0);
canvas.drawPath(path_5,paint5Fill);

Path path_6 = Path();
path_6.moveTo(243.5,133.5);
path_6.cubicTo(272.163,132.363,300.497,134.863,328.5,141);
path_6.cubicTo(390.472,159.406,415.306,200.572,403,264.5);
path_6.cubicTo(397.622,291.215,381.788,308.382,355.5,316);
path_6.cubicTo(336.516,321.275,317.183,324.608,297.5,326);
path_6.cubicTo(273.833,326.667,250.167,326.667,226.5,326);
path_6.cubicTo(207.305,324.913,188.639,321.246,170.5,315);
path_6.cubicTo(147.806,307.64,133.306,292.473,127,269.5);
path_6.cubicTo(112.422,197.462,140.922,153.629,212.5,138);
path_6.cubicTo(223.005,136.608,233.338,135.108,243.5,133.5);
path_6.close();

Paint paint6Fill = Paint()..style=PaintingStyle.fill;
paint6Fill.color = const Color(0xff6ccdf4).withOpacity(1.0);
canvas.drawPath(path_6,paint6Fill);

Path path_7 = Path();
path_7.moveTo(394.5,258.5);
path_7.cubicTo(382.069,281.425,363.736,297.925,339.5,308);
path_7.cubicTo(333.499,310.277,327.499,312.444,321.5,314.5);
path_7.cubicTo(312.329,316.746,302.995,317.913,293.5,318);
path_7.cubicTo(271.167,318.667,248.833,318.667,226.5,318);
path_7.cubicTo(218.941,317.442,211.607,315.942,204.5,313.5);
path_7.cubicTo(180.778,305.931,160.611,292.931,144,274.5);
path_7.cubicTo(140.066,269.634,136.9,264.301,134.5,258.5);
path_7.cubicTo(123.931,214.326,138.264,181.159,177.5,159);
path_7.cubicTo(196.024,149.522,215.69,144.189,236.5,143);
path_7.cubicTo(267.956,139.327,298.956,141.661,329.5,150);
path_7.cubicTo(352.557,156.768,371.391,169.601,386,188.5);
path_7.cubicTo(397.973,210.744,400.806,234.078,394.5,258.5);
path_7.close();

Paint paint7Fill = Paint()..style=PaintingStyle.fill;
paint7Fill.color = const Color(0xfffefefe).withOpacity(1.0);
canvas.drawPath(path_7,paint7Fill);

Path path_8 = Path();
path_8.moveTo(192.5,215.5);
path_8.cubicTo(206.554,215.566,212.054,222.566,209,236.5);
path_8.cubicTo(204.436,245.68,197.603,247.847,188.5,243);
path_8.cubicTo(186.683,241.2,185.516,239.034,185,236.5);
path_8.cubicTo(182.354,227.402,184.854,220.402,192.5,215.5);
path_8.close();

Paint paint8Fill = Paint()..style=PaintingStyle.fill;
paint8Fill.color = const Color(0xff060606).withOpacity(1.0);
canvas.drawPath(path_8,paint8Fill);

Path path_9 = Path();
path_9.moveTo(327.5,215.5);
path_9.cubicTo(334.561,214.456,340.061,216.79,344,222.5);
path_9.cubicTo(345.141,229.084,344.474,235.417,342,241.5);
path_9.cubicTo(337.827,245.191,332.993,246.358,327.5,245);
path_9.cubicTo(324.667,243.5,322.5,241.333,321,238.5);
path_9.cubicTo(320.333,233.167,320.333,227.833,321,222.5);
path_9.cubicTo(322.694,219.642,324.861,217.309,327.5,215.5);
path_9.close();

Paint paint9Fill = Paint()..style=PaintingStyle.fill;
paint9Fill.color = const Color(0xff050505).withOpacity(1.0);
canvas.drawPath(path_9,paint9Fill);

Path path_10 = Path();
path_10.moveTo(245.5,243.5);
path_10.cubicTo(246.873,243.343,248.207,243.51,249.5,244);
path_10.cubicTo(259.394,253.856,269.394,253.856,279.5,244);
path_10.cubicTo(281.925,243.014,283.591,243.681,284.5,246);
path_10.cubicTo(275.313,256.613,264.313,258.946,251.5,253);
path_10.cubicTo(249.241,251.285,247.074,249.452,245,247.5);
path_10.cubicTo(244.421,246.072,244.588,244.738,245.5,243.5);
path_10.close();

Paint paint10Fill = Paint()..style=PaintingStyle.fill;
paint10Fill.color = const Color(0xff131313).withOpacity(1.0);
canvas.drawPath(path_10,paint10Fill);

Path path_11 = Path();
path_11.moveTo(134.5,258.5);
path_11.cubicTo(136.9,264.301,140.066,269.634,144,274.5);
path_11.cubicTo(160.611,292.931,180.778,305.931,204.5,313.5);
path_11.cubicTo(180.969,313.141,160.803,304.474,144,287.5);
path_11.cubicTo(137.847,278.546,134.68,268.88,134.5,258.5);
path_11.close();

Paint paint11Fill = Paint()..style=PaintingStyle.fill;
paint11Fill.color = const Color(0xff138dd0).withOpacity(1.0);
canvas.drawPath(path_11,paint11Fill);

Path path_12 = Path();
path_12.moveTo(394.5,258.5);
path_12.cubicTo(394.568,274.2,388.235,287.034,375.5,297);
path_12.cubicTo(358.819,307.618,340.819,313.451,321.5,314.5);
path_12.cubicTo(327.499,312.444,333.499,310.277,339.5,308);
path_12.cubicTo(363.736,297.925,382.069,281.425,394.5,258.5);
path_12.close();

Paint paint12Fill = Paint()..style=PaintingStyle.fill;
paint12Fill.color = const Color(0xff138cd0).withOpacity(1.0);
canvas.drawPath(path_12,paint12Fill);

Path path_13 = Path();
path_13.moveTo(186.5,296.5);
path_13.cubicTo(231.338,303.071,276.338,304.237,321.5,300);
path_13.cubicTo(327.801,298.64,334.134,297.473,340.5,296.5);
path_13.cubicTo(346.054,298.313,346.721,301.146,342.5,305);
path_13.cubicTo(332.531,306.83,322.531,308.496,312.5,310);
path_13.cubicTo(270.283,313.3,228.283,311.634,186.5,305);
path_13.cubicTo(183.899,302.17,183.899,299.337,186.5,296.5);
path_13.close();

Paint paint13Fill = Paint()..style=PaintingStyle.fill;
paint13Fill.color = const Color(0xff74d1f6).withOpacity(1.0);
canvas.drawPath(path_13,paint13Fill);

Path path_14 = Path();
path_14.moveTo(77.5,320.5);
path_14.cubicTo(99.0573,321.186,120.391,322.853,141.5,325.5);
path_14.cubicTo(131.942,328.306,122.276,330.639,112.5,332.5);
path_14.cubicTo(109.215,332.269,106.715,333.603,105,336.5);
path_14.cubicTo(99.8385,345.804,96.8385,355.804,96,366.5);
path_14.cubicTo(95.5004,373.492,95.3337,380.492,95.5,387.5);
path_14.cubicTo(99.1667,387.5,102.833,387.5,106.5,387.5);
path_14.cubicTo(113.167,387.5,119.833,387.5,126.5,387.5);
path_14.cubicTo(126.728,383.61,126.394,379.776,125.5,376);
path_14.cubicTo(127.707,373.729,130.374,372.229,133.5,371.5);
path_14.cubicTo(133.833,372.167,134.167,372.833,134.5,373.5);
path_14.cubicTo(135.167,378.167,135.833,382.833,136.5,387.5);
path_14.cubicTo(145.083,386.813,153.083,388.646,160.5,393);
path_14.cubicTo(165.621,396.453,170.454,400.286,175,404.5);
path_14.cubicTo(178.752,409.403,182.252,414.403,185.5,419.5);
path_14.cubicTo(186.167,420.833,186.833,422.167,187.5,423.5);
path_14.cubicTo(188.633,426.557,189.633,429.557,190.5,432.5);
path_14.cubicTo(193.841,451.675,186.174,464.175,167.5,470);
path_14.cubicTo(160.291,471.863,152.957,472.863,145.5,473);
path_14.cubicTo(117.48,473.878,89.4804,473.544,61.5,472);
path_14.cubicTo(31.5984,466.698,22.0984,449.865,33,421.5);
path_14.cubicTo(40.6384,406.527,52.1384,395.694,67.5,389);
path_14.cubicTo(72.7539,387.729,78.0873,387.229,83.5,387.5);
path_14.cubicTo(84.5,387.5,85.5,387.5,86.5,387.5);
path_14.cubicTo(86.347,381.131,86.6803,374.797,87.5,368.5);
path_14.cubicTo(88.3796,354.974,92.0463,342.307,98.5,330.5);
path_14.cubicTo(93.2079,329.505,87.8746,329.172,82.5,329.5);
path_14.cubicTo(81.0813,328.549,79.4147,328.216,77.5,328.5);
path_14.cubicTo(77.5,325.833,77.5,323.167,77.5,320.5);
path_14.close();

Paint paint14Fill = Paint()..style=PaintingStyle.fill;
paint14Fill.color = const Color(0xff0f69b2).withOpacity(1.0);
canvas.drawPath(path_14,paint14Fill);

Path path_15 = Path();
path_15.moveTo(178.5,329.5);
path_15.cubicTo(178.5,331.833,178.5,334.167,178.5,336.5);
path_15.cubicTo(181.059,336.198,183.393,336.532,185.5,337.5);
path_15.cubicTo(183.167,337.5,180.833,337.5,178.5,337.5);
path_15.cubicTo(177.604,342.458,175.271,346.624,171.5,350);
path_15.cubicTo(158.933,357.447,146.266,364.614,133.5,371.5);
path_15.cubicTo(130.374,372.229,127.707,373.729,125.5,376);
path_15.cubicTo(126.394,379.776,126.728,383.61,126.5,387.5);
path_15.cubicTo(119.833,387.5,113.167,387.5,106.5,387.5);
path_15.cubicTo(92.6275,370.743,96.4608,363.743,118,366.5);
path_15.cubicTo(119.376,366.316,120.209,365.649,120.5,364.5);
path_15.cubicTo(121.404,365.209,121.737,366.209,121.5,367.5);
path_15.cubicTo(128.705,364.899,135.705,361.733,142.5,358);
path_15.cubicTo(150.329,353.92,157.996,349.587,165.5,345);
path_15.cubicTo(172.342,339.85,173.008,334.183,167.5,328);
path_15.cubicTo(165.167,327.333,162.833,327.333,160.5,328);
path_15.cubicTo(145.833,332,131.167,336,116.5,340);
path_15.cubicTo(115.244,340.417,114.577,341.25,114.5,342.5);
path_15.cubicTo(108.819,340.095,108.152,336.762,112.5,332.5);
path_15.cubicTo(122.276,330.639,131.942,328.306,141.5,325.5);
path_15.cubicTo(146.879,324.19,152.212,322.69,157.5,321);
path_15.cubicTo(166.919,318.389,173.919,321.222,178.5,329.5);
path_15.close();

Paint paint15Fill = Paint()..style=PaintingStyle.fill;
paint15Fill.color = const Color(0xff6dcef5).withOpacity(1.0);
canvas.drawPath(path_15,paint15Fill);

Path path_16 = Path();
path_16.moveTo(451.5,320.5);
path_16.cubicTo(451.5,323.167,451.5,325.833,451.5,328.5);
path_16.cubicTo(448.941,328.198,446.607,328.532,444.5,329.5);
path_16.cubicTo(410.872,332.378,377.205,334.878,343.5,337);
path_16.cubicTo(328.635,371.514,302.802,385.347,266,378.5);
path_16.cubicTo(263.777,380.28,262.61,382.614,262.5,385.5);
path_16.cubicTo(261.549,386.919,261.216,388.585,261.5,390.5);
path_16.cubicTo(261.5,399.833,261.5,409.167,261.5,418.5);
path_16.cubicTo(260.167,421.167,258.833,421.167,257.5,418.5);
path_16.cubicTo(257.5,408.833,257.5,399.167,257.5,389.5);
path_16.cubicTo(257.62,386.52,258.287,383.687,259.5,381);
path_16.cubicTo(224.559,383.878,199.892,369.378,185.5,337.5);
path_16.cubicTo(183.393,336.532,181.059,336.198,178.5,336.5);
path_16.cubicTo(178.5,334.167,178.5,331.833,178.5,329.5);
path_16.cubicTo(181.817,328.835,185.317,328.501,189,328.5);
path_16.cubicTo(230.475,330.503,271.975,331.003,313.5,330);
path_16.cubicTo(359.548,327.383,405.548,324.216,451.5,320.5);
path_16.close();

Paint paint16Fill = Paint()..style=PaintingStyle.fill;
paint16Fill.color = const Color(0xff126ab5).withOpacity(1.0);
canvas.drawPath(path_16,paint16Fill);

Path path_17 = Path();
path_17.moveTo(120.5,364.5);
path_17.cubicTo(118.709,357.126,116.709,349.792,114.5,342.5);
path_17.cubicTo(114.577,341.25,115.244,340.417,116.5,340);
path_17.cubicTo(131.167,336,145.833,332,160.5,328);
path_17.cubicTo(162.833,327.333,165.167,327.333,167.5,328);
path_17.cubicTo(173.008,334.183,172.342,339.85,165.5,345);
path_17.cubicTo(157.996,349.587,150.329,353.92,142.5,358);
path_17.cubicTo(135.705,361.733,128.705,364.899,121.5,367.5);
path_17.cubicTo(121.737,366.209,121.404,365.209,120.5,364.5);
path_17.close();

Paint paint17Fill = Paint()..style=PaintingStyle.fill;
paint17Fill.color = const Color(0xff038acf).withOpacity(1.0);
canvas.drawPath(path_17,paint17Fill);

Path path_18 = Path();
path_18.moveTo(82.5,329.5);
path_18.cubicTo(87.8746,329.172,93.2079,329.505,98.5,330.5);
path_18.cubicTo(92.0463,342.307,88.3796,354.974,87.5,368.5);
path_18.cubicTo(86.7784,368.918,86.2784,369.584,86,370.5);
path_18.cubicTo(80.8086,357.33,77.9753,343.663,77.5,329.5);
path_18.cubicTo(79.1667,329.5,80.8333,329.5,82.5,329.5);
path_18.close();

Paint paint18Fill = Paint()..style=PaintingStyle.fill;
paint18Fill.color = const Color(0xfffafcfd).withOpacity(1.0);
canvas.drawPath(path_18,paint18Fill);

Path path_19 = Path();
path_19.moveTo(444.5,329.5);
path_19.cubicTo(446.833,329.5,449.167,329.5,451.5,329.5);
path_19.cubicTo(451.024,336.946,450.024,344.279,448.5,351.5);
path_19.cubicTo(443.579,353.363,438.579,355.029,433.5,356.5);
path_19.cubicTo(431.705,351.781,430.538,346.781,430,341.5);
path_19.cubicTo(428.192,339.604,426.025,339.104,423.5,340);
path_19.cubicTo(422.62,341.356,422.286,342.856,422.5,344.5);
path_19.cubicTo(413.69,347.103,405.024,350.103,396.5,353.5);
path_19.cubicTo(393.071,350.38,390.405,350.88,388.5,355);
path_19.cubicTo(389.872,359.616,391.538,364.116,393.5,368.5);
path_19.cubicTo(393.137,369.183,392.804,369.85,392.5,370.5);
path_19.cubicTo(383.155,373.226,373.822,376.059,364.5,379);
path_19.cubicTo(362.75,380.754,362.083,382.921,362.5,385.5);
path_19.cubicTo(345.267,388.027,327.934,389.36,310.5,389.5);
path_19.cubicTo(294.5,389.5,278.5,389.5,262.5,389.5);
path_19.cubicTo(262.5,388.167,262.5,386.833,262.5,385.5);
path_19.cubicTo(262.61,382.614,263.777,380.28,266,378.5);
path_19.cubicTo(302.802,385.347,328.635,371.514,343.5,337);
path_19.cubicTo(377.205,334.878,410.872,332.378,444.5,329.5);
path_19.close();

Paint paint19Fill = Paint()..style=PaintingStyle.fill;
paint19Fill.color = const Color(0xfffcfdfe).withOpacity(1.0);
canvas.drawPath(path_19,paint19Fill);

Path path_20 = Path();
path_20.moveTo(112.5,332.5);
path_20.cubicTo(108.152,336.762,108.819,340.095,114.5,342.5);
path_20.cubicTo(116.709,349.792,118.709,357.126,120.5,364.5);
path_20.cubicTo(120.209,365.649,119.376,366.316,118,366.5);
path_20.cubicTo(96.4608,363.743,92.6275,370.743,106.5,387.5);
path_20.cubicTo(102.833,387.5,99.1667,387.5,95.5,387.5);
path_20.cubicTo(95.3337,380.492,95.5004,373.492,96,366.5);
path_20.cubicTo(96.8385,355.804,99.8385,345.804,105,336.5);
path_20.cubicTo(106.715,333.603,109.215,332.269,112.5,332.5);
path_20.close();

Paint paint20Fill = Paint()..style=PaintingStyle.fill;
paint20Fill.color = const Color(0xfff8fbfd).withOpacity(1.0);
canvas.drawPath(path_20,paint20Fill);

Path path_21 = Path();
path_21.moveTo(185.5,337.5);
path_21.cubicTo(199.892,369.378,224.559,383.878,259.5,381);
path_21.cubicTo(258.287,383.687,257.62,386.52,257.5,389.5);
path_21.cubicTo(230.113,390.088,202.78,389.255,175.5,387);
path_21.cubicTo(160.863,385.176,147.196,380.676,134.5,373.5);
path_21.cubicTo(134.167,372.833,133.833,372.167,133.5,371.5);
path_21.cubicTo(146.266,364.614,158.933,357.447,171.5,350);
path_21.cubicTo(175.271,346.624,177.604,342.458,178.5,337.5);
path_21.cubicTo(180.833,337.5,183.167,337.5,185.5,337.5);
path_21.close();

Paint paint21Fill = Paint()..style=PaintingStyle.fill;
paint21Fill.color = const Color(0xfffdfefe).withOpacity(1.0);
canvas.drawPath(path_21,paint21Fill);

Path path_22 = Path();
path_22.moveTo(190.5,337.5);
path_22.cubicTo(193.898,337.18,197.232,337.513,200.5,338.5);
path_22.cubicTo(215.75,355.787,234.083,368.621,255.5,377);
path_22.cubicTo(224.431,379.139,202.764,365.972,190.5,337.5);
path_22.close();

Paint paint22Fill = Paint()..style=PaintingStyle.fill;
paint22Fill.color = const Color(0xfff8fafc).withOpacity(1.0);
canvas.drawPath(path_22,paint22Fill);

Path path_23 = Path();
path_23.moveTo(208.5,339.5);
path_23.cubicTo(209.622,338.844,210.955,338.511,212.5,338.5);
path_23.cubicTo(227.152,339.266,241.819,339.766,256.5,340);
path_23.cubicTo(252.253,344.754,247.586,348.92,242.5,352.5);
path_23.cubicTo(231.15,348.157,219.817,343.823,208.5,339.5);
path_23.close();

Paint paint23Fill = Paint()..style=PaintingStyle.fill;
paint23Fill.color = const Color(0xfff6f9fc).withOpacity(1.0);
canvas.drawPath(path_23,paint23Fill);

Path path_24 = Path();
path_24.moveTo(262.5,338.5);
path_24.cubicTo(268.598,341.074,273.765,345.074,278,350.5);
path_24.cubicTo(277.969,353.201,276.469,354.701,273.5,355);
path_24.cubicTo(266.375,357.201,259.375,356.867,252.5,354);
path_24.cubicTo(250.993,353.163,250.493,351.996,251,350.5);
path_24.cubicTo(255.037,346.631,258.87,342.631,262.5,338.5);
path_24.close();

Paint paint24Fill = Paint()..style=PaintingStyle.fill;
paint24Fill.color = const Color(0xfff1ea1a).withOpacity(1.0);
canvas.drawPath(path_24,paint24Fill);

Path path_25 = Path();
path_25.moveTo(290.5,338.5);
path_25.cubicTo(300.506,338.334,310.506,338.5,320.5,339);
path_25.cubicTo(309.28,343.795,297.947,348.295,286.5,352.5);
path_25.cubicTo(282.061,348.236,277.394,344.069,272.5,340);
path_25.cubicTo(278.681,339.828,284.681,339.328,290.5,338.5);
path_25.close();

Paint paint25Fill = Paint()..style=PaintingStyle.fill;
paint25Fill.color = const Color(0xfff3f7fb).withOpacity(1.0);
canvas.drawPath(path_25,paint25Fill);

Path path_26 = Path();
path_26.moveTo(328.5,337.5);
path_26.cubicTo(331.898,337.18,335.232,337.513,338.5,338.5);
path_26.cubicTo(325.43,366.538,303.43,379.371,272.5,377);
path_26.cubicTo(294.919,368.974,313.586,355.807,328.5,337.5);
path_26.close();

Paint paint26Fill = Paint()..style=PaintingStyle.fill;
paint26Fill.color = const Color(0xfff9fbfd).withOpacity(1.0);
canvas.drawPath(path_26,paint26Fill);

Path path_27 = Path();
path_27.moveTo(433.5,356.5);
path_27.cubicTo(432.314,357.961,432.314,359.295,433.5,360.5);
path_27.cubicTo(435.027,372.465,435.861,384.465,436,396.5);
path_27.cubicTo(433.833,408.674,426.666,413.84,414.5,412);
path_27.cubicTo(412.04,410.542,409.873,408.709,408,406.5);
path_27.cubicTo(403.767,395.279,399.267,384.279,394.5,373.5);
path_27.cubicTo(394.715,371.821,394.048,370.821,392.5,370.5);
path_27.cubicTo(392.804,369.85,393.137,369.183,393.5,368.5);
path_27.cubicTo(391.538,364.116,389.872,359.616,388.5,355);
path_27.cubicTo(390.405,350.88,393.071,350.38,396.5,353.5);
path_27.cubicTo(402.164,370.324,408.331,386.991,415,403.5);
path_27.cubicTo(420.689,406.824,425.022,405.491,428,399.5);
path_27.cubicTo(428.542,380.924,426.709,362.591,422.5,344.5);
path_27.cubicTo(422.286,342.856,422.62,341.356,423.5,340);
path_27.cubicTo(426.025,339.104,428.192,339.604,430,341.5);
path_27.cubicTo(430.538,346.781,431.705,351.781,433.5,356.5);
path_27.close();

Paint paint27Fill = Paint()..style=PaintingStyle.fill;
paint27Fill.color = const Color(0xff6ecef3).withOpacity(1.0);
canvas.drawPath(path_27,paint27Fill);

Path path_28 = Path();
path_28.moveTo(367.5,431.5);
path_28.cubicTo(367.815,427.629,367.482,423.962,366.5,420.5);
path_28.cubicTo(366.5,419.167,366.5,417.833,366.5,416.5);
path_28.cubicTo(364.756,406.217,363.423,395.884,362.5,385.5);
path_28.cubicTo(362.083,382.921,362.75,380.754,364.5,379);
path_28.cubicTo(373.822,376.059,383.155,373.226,392.5,370.5);
path_28.cubicTo(394.048,370.821,394.715,371.821,394.5,373.5);
path_28.cubicTo(385.168,376,376.001,379,367,382.5);
path_28.cubicTo(368.948,406.531,371.448,430.531,374.5,454.5);
path_28.cubicTo(410.11,446.689,444.444,435.356,477.5,420.5);
path_28.cubicTo(478.815,415.32,478.815,409.986,477.5,404.5);
path_28.cubicTo(476.893,404.624,476.56,404.957,476.5,405.5);
path_28.cubicTo(472.683,407.41,468.683,408.743,464.5,409.5);
path_28.cubicTo(463.486,395.823,462.653,382.156,462,368.5);
path_28.cubicTo(466.326,366.336,470.826,364.669,475.5,363.5);
path_28.cubicTo(475.49,358.085,474.823,352.752,473.5,347.5);
path_28.cubicTo(460.154,351.838,446.821,356.171,433.5,360.5);
path_28.cubicTo(432.314,359.295,432.314,357.961,433.5,356.5);
path_28.cubicTo(438.579,355.029,443.579,353.363,448.5,351.5);
path_28.cubicTo(452.537,350.935,456.203,349.601,459.5,347.5);
path_28.cubicTo(464.68,345.94,469.846,344.274,475,342.5);
path_28.cubicTo(476.882,343.093,477.882,344.427,478,346.5);
path_28.cubicTo(481.341,372.116,482.507,397.783,481.5,423.5);
path_28.cubicTo(445.8,439.511,408.8,451.511,370.5,459.5);
path_28.cubicTo(369.664,450.148,368.664,440.815,367.5,431.5);
path_28.close();

Paint paint28Fill = Paint()..style=PaintingStyle.fill;
paint28Fill.color = const Color(0xff1a6ab1).withOpacity(1.0);
canvas.drawPath(path_28,paint28Fill);

Path path_29 = Path();
path_29.moveTo(422.5,344.5);
path_29.cubicTo(426.709,362.591,428.542,380.924,428,399.5);
path_29.cubicTo(425.022,405.491,420.689,406.824,415,403.5);
path_29.cubicTo(408.331,386.991,402.164,370.324,396.5,353.5);
path_29.cubicTo(405.024,350.103,413.69,347.103,422.5,344.5);
path_29.close();

Paint paint29Fill = Paint()..style=PaintingStyle.fill;
paint29Fill.color = const Color(0xff058acf).withOpacity(1.0);
canvas.drawPath(path_29,paint29Fill);

Path path_30 = Path();
path_30.moveTo(213.5,346.5);
path_30.cubicTo(213.56,345.957,213.893,345.624,214.5,345.5);
path_30.cubicTo(223.207,348.902,231.873,352.402,240.5,356);
path_30.cubicTo(243.419,356.54,246.086,356.207,248.5,355);
path_30.cubicTo(249.167,355.667,249.833,356.333,250.5,357);
path_30.cubicTo(248.792,360.293,247.792,363.793,247.5,367.5);
path_30.cubicTo(246.127,367.657,244.793,367.49,243.5,367);
path_30.cubicTo(232.796,361.118,222.796,354.285,213.5,346.5);
path_30.close();

Paint paint30Fill = Paint()..style=PaintingStyle.fill;
paint30Fill.color = const Color(0xfff4f8fb).withOpacity(1.0);
canvas.drawPath(path_30,paint30Fill);

Path path_31 = Path();
path_31.moveTo(313.5,345.5);
path_31.cubicTo(314.239,345.369,314.906,345.536,315.5,346);
path_31.cubicTo(305.769,355.06,294.935,362.56,283,368.5);
path_31.cubicTo(281.732,364.864,280.566,361.197,279.5,357.5);
path_31.cubicTo(279.608,356.558,279.941,355.725,280.5,355);
path_31.cubicTo(282.417,355.027,284.084,355.861,285.5,357.5);
path_31.cubicTo(295.016,353.67,304.35,349.67,313.5,345.5);
path_31.close();

Paint paint31Fill = Paint()..style=PaintingStyle.fill;
paint31Fill.color = const Color(0xfff5f9fc).withOpacity(1.0);
canvas.drawPath(path_31,paint31Fill);

Path path_32 = Path();
path_32.moveTo(476.5,405.5);
path_32.cubicTo(477.487,410.305,477.821,415.305,477.5,420.5);
path_32.cubicTo(444.444,435.356,410.11,446.689,374.5,454.5);
path_32.cubicTo(371.448,430.531,368.948,406.531,367,382.5);
path_32.cubicTo(376.001,379,385.168,376,394.5,373.5);
path_32.cubicTo(399.267,384.279,403.767,395.279,408,406.5);
path_32.cubicTo(409.873,408.709,412.04,410.542,414.5,412);
path_32.cubicTo(426.666,413.84,433.833,408.674,436,396.5);
path_32.cubicTo(435.861,384.465,435.027,372.465,433.5,360.5);
path_32.cubicTo(446.821,356.171,460.154,351.838,473.5,347.5);
path_32.cubicTo(474.823,352.752,475.49,358.085,475.5,363.5);
path_32.cubicTo(470.826,364.669,466.326,366.336,462,368.5);
path_32.cubicTo(462.653,382.156,463.486,395.823,464.5,409.5);
path_32.cubicTo(468.683,408.743,472.683,407.41,476.5,405.5);
path_32.close();

Paint paint32Fill = Paint()..style=PaintingStyle.fill;
paint32Fill.color = const Color(0xfffcf008).withOpacity(1.0);
canvas.drawPath(path_32,paint32Fill);

Path path_33 = Path();
path_33.moveTo(253.5,358.5);
path_33.cubicTo(260.514,359.756,267.514,359.756,274.5,358.5);
path_33.cubicTo(276.724,361.807,278.391,365.473,279.5,369.5);
path_33.cubicTo(270.457,375.412,261.124,375.912,251.5,371);
path_33.cubicTo(250.941,370.275,250.608,369.442,250.5,368.5);
path_33.cubicTo(251.506,365.149,252.506,361.816,253.5,358.5);
path_33.close();

Paint paint33Fill = Paint()..style=PaintingStyle.fill;
paint33Fill.color = const Color(0xfff4ec15).withOpacity(1.0);
canvas.drawPath(path_33,paint33Fill);

Path path_34 = Path();
path_34.moveTo(473.5,367.5);
path_34.cubicTo(474.5,367.5,475.5,367.5,476.5,367.5);
path_34.cubicTo(477.309,378.848,477.309,390.181,476.5,401.5);
path_34.cubicTo(473.573,402.801,470.573,403.801,467.5,404.5);
path_34.cubicTo(467.33,394.969,466.664,385.469,465.5,376);
path_34.cubicTo(465.833,374.167,466.167,372.333,466.5,370.5);
path_34.cubicTo(469.016,369.67,471.35,368.67,473.5,367.5);
path_34.close();

Paint paint34Fill = Paint()..style=PaintingStyle.fill;
paint34Fill.color = const Color(0xfff8fbfd).withOpacity(1.0);
canvas.drawPath(path_34,paint34Fill);

Path path_35 = Path();
path_35.moveTo(134.5,373.5);
path_35.cubicTo(147.196,380.676,160.863,385.176,175.5,387);
path_35.cubicTo(202.78,389.255,230.113,390.088,257.5,389.5);
path_35.cubicTo(257.5,399.167,257.5,408.833,257.5,418.5);
path_35.cubicTo(233.328,418.169,209.328,418.502,185.5,419.5);
path_35.cubicTo(182.252,414.403,178.752,409.403,175,404.5);
path_35.cubicTo(170.454,400.286,165.621,396.453,160.5,393);
path_35.cubicTo(153.083,388.646,145.083,386.813,136.5,387.5);
path_35.cubicTo(135.833,382.833,135.167,378.167,134.5,373.5);
path_35.close();

Paint paint35Fill = Paint()..style=PaintingStyle.fill;
paint35Fill.color = const Color(0xff6fcff5).withOpacity(1.0);
canvas.drawPath(path_35,paint35Fill);

Path path_36 = Path();
path_36.moveTo(362.5,385.5);
path_36.cubicTo(363.423,395.884,364.756,406.217,366.5,416.5);
path_36.cubicTo(365.732,415.737,365.232,414.737,365,413.5);
path_36.cubicTo(361.788,414.855,358.622,416.355,355.5,418);
path_36.cubicTo(324.168,418.5,292.835,418.667,261.5,418.5);
path_36.cubicTo(261.5,409.167,261.5,399.833,261.5,390.5);
path_36.cubicTo(278.009,390.83,294.342,390.496,310.5,389.5);
path_36.cubicTo(327.934,389.36,345.267,388.027,362.5,385.5);
path_36.close();

Paint paint36Fill = Paint()..style=PaintingStyle.fill;
paint36Fill.color = const Color(0xff6fcff6).withOpacity(1.0);
canvas.drawPath(path_36,paint36Fill);

Path path_37 = Path();
path_37.moveTo(262.5,385.5);
path_37.cubicTo(262.5,386.833,262.5,388.167,262.5,389.5);
path_37.cubicTo(278.5,389.5,294.5,389.5,310.5,389.5);
path_37.cubicTo(294.342,390.496,278.009,390.83,261.5,390.5);
path_37.cubicTo(261.216,388.585,261.549,386.919,262.5,385.5);
path_37.close();

Paint paint37Fill = Paint()..style=PaintingStyle.fill;
paint37Fill.color = const Color(0xffbae6f8).withOpacity(1.0);
canvas.drawPath(path_37,paint37Fill);

Path path_38 = Path();
path_38.moveTo(113.5,467.5);
path_38.cubicTo(99.0095,468.496,84.3428,468.829,69.5,468.5);
path_38.cubicTo(59.2655,468.588,49.9321,465.755,41.5,460);
path_38.cubicTo(31.8857,449.839,30.0523,438.339,36,425.5);
path_38.cubicTo(43.338,409.493,55.1714,398.327,71.5,392);
path_38.cubicTo(90.1667,391.333,108.833,391.333,127.5,392);
path_38.cubicTo(105.121,404.264,94.288,423.097,95,448.5);
path_38.cubicTo(97.9846,457.984,104.151,464.317,113.5,467.5);
path_38.close();

Paint paint38Fill = Paint()..style=PaintingStyle.fill;
paint38Fill.color = const Color(0xfffcf004).withOpacity(1.0);
canvas.drawPath(path_38,paint38Fill);

Path path_39 = Path();
path_39.moveTo(136.5,391.5);
path_39.cubicTo(146.998,390.623,156.331,393.456,164.5,400);
path_39.cubicTo(175.65,409.136,183.15,420.636,187,434.5);
path_39.cubicTo(189.057,449.222,183.223,459.389,169.5,465);
path_39.cubicTo(155.365,468.339,141.031,469.339,126.5,468);
path_39.cubicTo(98.4462,461.535,90.9462,445.369,104,419.5);
path_39.cubicTo(111.679,406.308,122.512,396.975,136.5,391.5);
path_39.close();

Paint paint39Fill = Paint()..style=PaintingStyle.fill;
paint39Fill.color = const Color(0xfffcf007).withOpacity(1.0);
canvas.drawPath(path_39,paint39Fill);

Path path_40 = Path();
path_40.moveTo(273.5,393.5);
path_40.cubicTo(283.666,393.818,287.5,398.818,285,408.5);
path_40.cubicTo(278.922,415.285,273.255,414.952,268,407.5);
path_40.cubicTo(266.268,401.314,268.101,396.647,273.5,393.5);
path_40.close();

Paint paint40Fill = Paint()..style=PaintingStyle.fill;
paint40Fill.color = const Color(0xfff0f8fc).withOpacity(1.0);
canvas.drawPath(path_40,paint40Fill);

Path path_41 = Path();
path_41.moveTo(273.5,396.5);
path_41.cubicTo(281.33,395.495,284.496,398.828,283,406.5);
path_41.cubicTo(278.205,412.089,273.872,411.756,270,405.5);
path_41.cubicTo(269.333,403.833,269.333,402.167,270,400.5);
path_41.cubicTo(271.376,399.295,272.542,397.962,273.5,396.5);
path_41.close();

Paint paint41Fill = Paint()..style=PaintingStyle.fill;
paint41Fill.color = const Color(0xff176cb6).withOpacity(1.0);
canvas.drawPath(path_41,paint41Fill);

Path path_42 = Path();
path_42.moveTo(476.5,405.5);
path_42.cubicTo(476.56,404.957,476.893,404.624,477.5,404.5);
path_42.cubicTo(478.815,409.986,478.815,415.32,477.5,420.5);
path_42.cubicTo(477.821,415.305,477.487,410.305,476.5,405.5);
path_42.close();

Paint paint42Fill = Paint()..style=PaintingStyle.fill;
paint42Fill.color = const Color(0xff9bbb47).withOpacity(1.0);
canvas.drawPath(path_42,paint42Fill);

Path path_43 = Path();
path_43.moveTo(366.5,416.5);
path_43.cubicTo(366.5,417.833,366.5,419.167,366.5,420.5);
path_43.cubicTo(360.916,422.295,354.916,423.129,348.5,423);
path_43.cubicTo(294.834,423.5,241.168,423.667,187.5,423.5);
path_43.cubicTo(186.833,422.167,186.167,420.833,185.5,419.5);
path_43.cubicTo(209.328,418.502,233.328,418.169,257.5,418.5);
path_43.cubicTo(258.833,421.167,260.167,421.167,261.5,418.5);
path_43.cubicTo(292.835,418.667,324.168,418.5,355.5,418);
path_43.cubicTo(358.622,416.355,361.788,414.855,365,413.5);
path_43.cubicTo(365.232,414.737,365.732,415.737,366.5,416.5);
path_43.close();

Paint paint43Fill = Paint()..style=PaintingStyle.fill;
paint43Fill.color = const Color(0xfffefefe).withOpacity(1.0);
canvas.drawPath(path_43,paint43Fill);

Path path_44 = Path();
path_44.moveTo(149.5,417.5);
path_44.cubicTo(145.833,417.5,142.167,417.5,138.5,417.5);
path_44.cubicTo(138.5,420.5,138.5,423.5,138.5,426.5);
path_44.cubicTo(135.5,426.5,132.5,426.5,129.5,426.5);
path_44.cubicTo(129.5,430.167,129.5,433.833,129.5,437.5);
path_44.cubicTo(128.517,433.702,128.183,429.702,128.5,425.5);
path_44.cubicTo(131.5,425.5,134.5,425.5,137.5,425.5);
path_44.cubicTo(137.5,422.5,137.5,419.5,137.5,416.5);
path_44.cubicTo(141.702,416.183,145.702,416.517,149.5,417.5);
path_44.close();

Paint paint44Fill = Paint()..style=PaintingStyle.fill;
paint44Fill.color = const Color(0xff71b775).withOpacity(1.0);
canvas.drawPath(path_44,paint44Fill);

Path path_45 = Path();
path_45.moveTo(149.5,417.5);
path_45.cubicTo(149.5,420.5,149.5,423.5,149.5,426.5);
path_45.cubicTo(152.5,426.5,155.5,426.5,158.5,426.5);
path_45.cubicTo(158.5,430.167,158.5,433.833,158.5,437.5);
path_45.cubicTo(155.5,437.5,152.5,437.5,149.5,437.5);
path_45.cubicTo(149.5,440.5,149.5,443.5,149.5,446.5);
path_45.cubicTo(145.5,446.5,141.5,446.5,137.5,446.5);
path_45.cubicTo(137.5,443.5,137.5,440.5,137.5,437.5);
path_45.cubicTo(134.833,437.5,132.167,437.5,129.5,437.5);
path_45.cubicTo(129.5,433.833,129.5,430.167,129.5,426.5);
path_45.cubicTo(132.5,426.5,135.5,426.5,138.5,426.5);
path_45.cubicTo(138.5,423.5,138.5,420.5,138.5,417.5);
path_45.cubicTo(142.167,417.5,145.833,417.5,149.5,417.5);
path_45.close();

Paint paint45Fill = Paint()..style=PaintingStyle.fill;
paint45Fill.color = const Color(0xff0b89cd).withOpacity(1.0);
canvas.drawPath(path_45,paint45Fill);

Path path_46 = Path();
path_46.moveTo(366.5,420.5);
path_46.cubicTo(367.482,423.962,367.815,427.629,367.5,431.5);
path_46.cubicTo(355.914,432.478,344.247,432.811,332.5,432.5);
path_46.cubicTo(330.088,444.894,327.421,457.227,324.5,469.5);
path_46.cubicTo(322.504,475.296,320.004,480.963,317,486.5);
path_46.cubicTo(311.636,492.061,305.136,493.895,297.5,492);
path_46.cubicTo(293.51,490.01,291.01,486.843,290,482.5);
path_46.cubicTo(289.785,477.085,289.285,471.752,288.5,466.5);
path_46.cubicTo(288.5,455.5,288.5,444.5,288.5,433.5);
path_46.cubicTo(276.833,433.5,265.167,433.5,253.5,433.5);
path_46.cubicTo(253.5,444.5,253.5,455.5,253.5,466.5);
path_46.cubicTo(254.035,473.361,253.202,480.028,251,486.5);
path_46.cubicTo(246.071,492.118,239.905,493.951,232.5,492);
path_46.cubicTo(224.302,486.777,219.802,479.277,219,469.5);
path_46.cubicTo(218.617,468.944,218.117,468.611,217.5,468.5);
path_46.cubicTo(214.849,456.561,212.515,444.561,210.5,432.5);
path_46.cubicTo(203.833,432.5,197.167,432.5,190.5,432.5);
path_46.cubicTo(189.633,429.557,188.633,426.557,187.5,423.5);
path_46.cubicTo(241.168,423.667,294.834,423.5,348.5,423);
path_46.cubicTo(354.916,423.129,360.916,422.295,366.5,420.5);
path_46.close();
path_46.moveTo(288.5,466.5);
path_46.cubicTo(276.833,466.5,265.167,466.5,253.5,466.5);
path_46.cubicTo(253.5,455.5,253.5,444.5,253.5,433.5);
path_46.cubicTo(265.167,433.5,276.833,433.5,288.5,433.5);
path_46.cubicTo(288.5,444.5,288.5,455.5,288.5,466.5);
path_46.close();

Paint paint46Fill = Paint()..style=PaintingStyle.fill;
paint46Fill.color = const Color(0xff69cbf3).withOpacity(1.0);
canvas.drawPath(path_46,paint46Fill);

Path path_47 = Path();
path_47.moveTo(218.5,432.5);
path_47.cubicTo(227.5,432.5,236.5,432.5,245.5,432.5);
path_47.cubicTo(245.667,448.837,245.5,465.17,245,481.5);
path_47.cubicTo(241.438,486.174,237.271,486.674,232.5,483);
path_47.cubicTo(230.959,481.421,229.792,479.587,229,477.5);
path_47.cubicTo(224.708,462.667,221.208,447.667,218.5,432.5);
path_47.close();

Paint paint47Fill = Paint()..style=PaintingStyle.fill;
paint47Fill.color = const Color(0xff0089cf).withOpacity(1.0);
canvas.drawPath(path_47,paint47Fill);

Path path_48 = Path();
path_48.moveTo(296.5,432.5);
path_48.cubicTo(305.5,432.5,314.5,432.5,323.5,432.5);
path_48.cubicTo(321.285,447.361,318.118,462.028,314,476.5);
path_48.cubicTo(311.766,483.087,307.266,485.92,300.5,485);
path_48.cubicTo(298.513,483.681,297.346,481.848,297,479.5);
path_48.cubicTo(296.5,463.837,296.333,448.17,296.5,432.5);
path_48.close();

Paint paint48Fill = Paint()..style=PaintingStyle.fill;
paint48Fill.color = const Color(0xff0189cf).withOpacity(1.0);
canvas.drawPath(path_48,paint48Fill);

Path path_49 = Path();
path_49.moveTo(253.5,466.5);
path_49.cubicTo(265.167,466.5,276.833,466.5,288.5,466.5);
path_49.cubicTo(289.285,471.752,289.785,477.085,290,482.5);
path_49.cubicTo(291.01,486.843,293.51,490.01,297.5,492);
path_49.cubicTo(305.136,493.895,311.636,492.061,317,486.5);
path_49.cubicTo(320.004,480.963,322.504,475.296,324.5,469.5);
path_49.cubicTo(339.82,470.609,354.82,473.442,369.5,478);
path_49.cubicTo(374.081,479.871,378.248,482.371,382,485.5);
path_49.cubicTo(383.419,491.44,381.252,495.607,375.5,498);
path_49.cubicTo(369.637,500.399,363.637,502.399,357.5,504);
path_49.cubicTo(340.165,507.497,322.832,509.997,305.5,511.5);
path_49.cubicTo(282.833,511.5,260.167,511.5,237.5,511.5);
path_49.cubicTo(221.54,510.15,205.54,507.983,189.5,505);
path_49.cubicTo(181.971,503.268,174.638,500.935,167.5,498);
path_49.cubicTo(161.748,495.607,159.581,491.44,161,485.5);
path_49.cubicTo(169.21,479.536,178.377,475.703,188.5,474);
path_49.cubicTo(198.303,472.147,207.97,470.314,217.5,468.5);
path_49.cubicTo(218.117,468.611,218.617,468.944,219,469.5);
path_49.cubicTo(219.802,479.277,224.302,486.777,232.5,492);
path_49.cubicTo(239.905,493.951,246.071,492.118,251,486.5);
path_49.cubicTo(253.202,480.028,254.035,473.361,253.5,466.5);
path_49.close();

Paint paint49Fill = Paint()..style=PaintingStyle.fill;
paint49Fill.color = const Color(0xff01b9f2).withOpacity(1.0);
canvas.drawPath(path_49,paint49Fill);

Path path_50 = Path();
path_50.moveTo(113.5,467.5);
path_50.cubicTo(114.473,467.987,115.473,468.487,116.5,469);
path_50.cubicTo(100.661,469.828,84.9946,469.661,69.5,468.5);
path_50.cubicTo(84.3428,468.829,99.0095,468.496,113.5,467.5);
path_50.close();

Paint paint50Fill = Paint()..style=PaintingStyle.fill;
paint50Fill.color = const Color(0xff629b6e).withOpacity(1.0);
canvas.drawPath(path_50,paint50Fill);

}

@override
bool shouldRepaint(covariant CustomPainter oldDelegate) {
return true;
}
}