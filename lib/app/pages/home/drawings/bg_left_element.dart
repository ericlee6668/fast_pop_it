import 'dart:ui' as ui;

import 'package:flutter/material.dart';

//Add this CustomPaint widget to the Widget Tree

//Copy this CustomPainter code to the Bottom of the File
class BgLeftElement extends CustomPainter {
  final Color cornerColor;

  BgLeftElement({
    required this.cornerColor
  });

  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(0, 0);
    path_0.cubicTo(
        size.width * 0.3300000, 0, size.width * 0.6600000, 0, size.width, 0);
    path_0.cubicTo(
        size.width,
        size.height * 0.04820776,
        size.width,
        size.height * 0.04820776,
        size.width * 0.9909277,
        size.height * 0.07193796);
    path_0.cubicTo(
        size.width * 0.9902818,
        size.height * 0.07367896,
        size.width * 0.9896365,
        size.height * 0.07541998,
        size.width * 0.9889916,
        size.height * 0.07716102);
    path_0.cubicTo(
        size.width * 0.9886645,
        size.height * 0.07803607,
        size.width * 0.9883373,
        size.height * 0.07891113,
        size.width * 0.9880002,
        size.height * 0.07981270);
    path_0.cubicTo(
        size.width * 0.9862713,
        size.height * 0.08447666,
        size.width * 0.9846242,
        size.height * 0.08914378,
        size.width * 0.9829629,
        size.height * 0.09381039);
    path_0.cubicTo(
        size.width * 0.9792873,
        size.height * 0.1040836,
        size.width * 0.9754771,
        size.height * 0.1143511,
        size.width * 0.9716298,
        size.height * 0.1246175);
    path_0.cubicTo(
        size.width * 0.9704179,
        size.height * 0.1278582,
        size.width * 0.9692171,
        size.height * 0.1310994,
        size.width * 0.9680169,
        size.height * 0.1343406);
    path_0.cubicTo(
        size.width * 0.9410938,
        size.height * 0.2070174,
        size.width * 0.9094496,
        size.height * 0.2795264,
        size.width * 0.7733333,
        size.height * 0.5070175);
    path_0.cubicTo(
        size.width * 0.7721380,
        size.height * 0.5086633,
        size.width * 0.7709427,
        size.height * 0.5103090,
        size.width * 0.7697474,
        size.height * 0.5119548);
    path_0.cubicTo(
        size.width * 0.7209928,
        size.height * 0.5788709,
        size.width * 0.6607999,
        size.height * 0.6452696,
        size.width * 0.5733333,
        size.height * 0.7078947);
    path_0.cubicTo(
        size.width * 0.5721474,
        size.height * 0.7087453,
        size.width * 0.5721474,
        size.height * 0.7087453,
        size.width * 0.5709375,
        size.height * 0.7096131);
    path_0.cubicTo(
        size.width * 0.5362614,
        size.height * 0.7344633,
        size.width * 0.4993784,
        size.height * 0.7588755,
        size.width * 0.4577669,
        size.height * 0.7825581);
    path_0.cubicTo(
        size.width * 0.4530446,
        size.height * 0.7852525,
        size.width * 0.4483691,
        size.height * 0.7879553,
        size.width * 0.4436979,
        size.height * 0.7906593);
    path_0.cubicTo(
        size.width * 0.4226287,
        size.height * 0.8028173,
        size.width * 0.4006839,
        size.height * 0.8147577,
        size.width * 0.3778958,
        size.height * 0.8265749);
    path_0.cubicTo(
        size.width * 0.3737616,
        size.height * 0.8287247,
        size.width * 0.3696634,
        size.height * 0.8308812,
        size.width * 0.3655833,
        size.height * 0.8330421);
    path_0.cubicTo(
        size.width * 0.3183929,
        size.height * 0.8579690,
        size.width * 0.2673400,
        size.height * 0.8821269,
        size.width * 0.2160000,
        size.height * 0.9061404);
    path_0.cubicTo(
        size.width * 0.2146147,
        size.height * 0.9067894,
        size.width * 0.2132294,
        size.height * 0.9074385,
        size.width * 0.2118021,
        size.height * 0.9081072);
    path_0.cubicTo(
        size.width * 0.1926579,
        size.height * 0.9170758,
        size.width * 0.1732561,
        size.height * 0.9259802,
        size.width * 0.1537096,
        size.height * 0.9348543);
    path_0.cubicTo(
        size.width * 0.1464627,
        size.height * 0.9381460,
        size.width * 0.1392321,
        size.height * 0.9414416,
        size.width * 0.1320000,
        size.height * 0.9447368);
    path_0.cubicTo(
        size.width * 0.1291112,
        size.height * 0.9460527,
        size.width * 0.1262223,
        size.height * 0.9473684,
        size.width * 0.1233333,
        size.height * 0.9486842);
    path_0.cubicTo(
        size.width * 0.1219033,
        size.height * 0.9493355,
        size.width * 0.1204733,
        size.height * 0.9499868,
        size.width * 0.1190000,
        size.height * 0.9506579);
    path_0.cubicTo(
        size.width * 0.1060000,
        size.height * 0.9565789,
        size.width * 0.1060000,
        size.height * 0.9565789,
        size.width * 0.1016647,
        size.height * 0.9585535);
    path_0.cubicTo(
        size.width * 0.09878221,
        size.height * 0.9598664,
        size.width * 0.09589983,
        size.height * 0.9611793,
        size.width * 0.09301758,
        size.height * 0.9624923);
    path_0.cubicTo(
        size.width * 0.08569873,
        size.height * 0.9658262,
        size.width * 0.07837755,
        size.height * 0.9691595,
        size.width * 0.07105208,
        size.height * 0.9724918);
    path_0.cubicTo(
        size.width * 0.05633683,
        size.height * 0.9791872,
        size.width * 0.04164351,
        size.height * 0.9858873,
        size.width * 0.02708659,
        size.height * 0.9926201);
    path_0.cubicTo(
        size.width * 0.02428903,
        size.height * 0.9939126,
        size.width * 0.02147842,
        size.height * 0.9952021,
        size.width * 0.01866667,
        size.height * 0.9964912);
    path_0.cubicTo(
        size.width * 0.01665573,
        size.height * 0.9975259,
        size.width * 0.01665573,
        size.height * 0.9975259,
        size.width * 0.01460417,
        size.height * 0.9985814);
    path_0.cubicTo(
        size.width * 0.01265510,
        size.height * 0.9992836,
        size.width * 0.01265510,
        size.height * 0.9992836,
        size.width * 0.01066667,
        size.height);
    path_0.cubicTo(size.width * 0.007146667, size.height,
        size.width * 0.003626667, size.height, 0, size.height);
    path_0.cubicTo(
        0, size.height * 0.6700000, 0, size.height * 0.3400000, 0, 0);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Color(0xffA38BFC).withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_fill);

    Path path_1 = Path();
    path_1.moveTo(0, 0);
    path_1.cubicTo(
        size.width * 0.002581563,
        size.height * 0.0003720189,
        size.width * 0.005163125,
        size.height * 0.0007440378,
        size.width * 0.007822917,
        size.height * 0.001127330);
    path_1.cubicTo(
        size.width * 0.03299445,
        size.height * 0.005160653,
        size.width * 0.05135662,
        size.height * 0.01151665,
        size.width * 0.06133333,
        size.height * 0.02017544);
    path_1.cubicTo(
        size.width * 0.07103493,
        size.height * 0.03000990,
        size.width * 0.06393376,
        size.height * 0.04100648,
        size.width * 0.05066667,
        size.height * 0.05000000);
    path_1.cubicTo(
        size.width * 0.04516542,
        size.height * 0.05315224,
        size.width * 0.03898134,
        size.height * 0.05595838,
        size.width * 0.03200000,
        size.height * 0.05877193);
    path_1.cubicTo(
        size.width * 0.03027781,
        size.height * 0.05949109,
        size.width * 0.02855563,
        size.height * 0.06021025,
        size.width * 0.02678125,
        size.height * 0.06095121);
    path_1.cubicTo(
        size.width * -0.009796206,
        size.height * 0.07532717,
        size.width * -0.06873158,
        size.height * 0.08553145,
        size.width * -0.1253333,
        size.height * 0.08771930);
    path_1.cubicTo(
        size.width * -0.1356689,
        size.height * 0.08788449,
        size.width * -0.1459868,
        size.height * 0.08792173,
        size.width * -0.1563333,
        size.height * 0.08793860);
    path_1.cubicTo(
        size.width * -0.1604016,
        size.height * 0.08796573,
        size.width * -0.1604016,
        size.height * 0.08796573,
        size.width * -0.1645521,
        size.height * 0.08799342);
    path_1.cubicTo(
        size.width * -0.1686204,
        size.height * 0.08800021,
        size.width * -0.1686204,
        size.height * 0.08800021,
        size.width * -0.1727708,
        size.height * 0.08800713);
    path_1.cubicTo(
        size.width * -0.1751827,
        size.height * 0.08801533,
        size.width * -0.1775945,
        size.height * 0.08802352,
        size.width * -0.1800794,
        size.height * 0.08803197);
    path_1.cubicTo(
        size.width * -0.1941863,
        size.height * 0.08755532,
        size.width * -0.2076575,
        size.height * 0.08629285,
        size.width * -0.2213333,
        size.height * 0.08508772);
    path_1.cubicTo(
        size.width * -0.2220143,
        size.height * 0.07594532,
        size.width * -0.2225348,
        size.height * 0.06680357,
        size.width * -0.2228532,
        size.height * 0.05765898);
    path_1.cubicTo(
        size.width * -0.2230060,
        size.height * 0.05341214,
        size.width * -0.2232131,
        size.height * 0.04916719,
        size.width * -0.2235462,
        size.height * 0.04492145);
    path_1.cubicTo(
        size.width * -0.2238660,
        size.height * 0.04082047,
        size.width * -0.2240405,
        size.height * 0.03672131,
        size.width * -0.2241164,
        size.height * 0.03261909);
    path_1.cubicTo(
        size.width * -0.2241704,
        size.height * 0.03105767,
        size.width * -0.2242759,
        size.height * 0.02949635,
        size.width * -0.2244347,
        size.height * 0.02793571);
    path_1.cubicTo(
        size.width * -0.2256282,
        size.height * 0.01571617,
        size.width * -0.2256282,
        size.height * 0.01571617,
        size.width * -0.2149535,
        size.height * 0.01153793);
    path_1.cubicTo(
        size.width * -0.2075093,
        size.height * 0.009728172,
        size.width * -0.2003327,
        size.height * 0.008331782,
        size.width * -0.1920000,
        size.height * 0.007017544);
    path_1.cubicTo(
        size.width * -0.1893723,
        size.height * 0.006514938,
        size.width * -0.1893723,
        size.height * 0.006514938,
        size.width * -0.1866915,
        size.height * 0.006002179);
    path_1.cubicTo(size.width * -0.1338380, size.height * -0.004030954,
        size.width * -0.05676162, size.height * -0.008623855, 0, 0);
    path_1.close();

    Paint paint_1_fill = Paint()..style = PaintingStyle.fill;
    paint_1_fill.color = Color(0xff8270F9).withOpacity(1.0);
    canvas.drawPath(path_1, paint_1_fill);

    Path path_2 = Path();
    path_2.moveTo(0, 0);
    path_2.cubicTo(
        size.width * 0.001687813,
        size.height * 0.0003855880,
        size.width * 0.003375625,
        size.height * 0.0007711760,
        size.width * 0.005114583,
        size.height * 0.001168448);
    path_2.cubicTo(
        size.width * 0.02736717,
        size.height * 0.006775546,
        size.width * 0.04049378,
        size.height * 0.01556199,
        size.width * 0.04716667,
        size.height * 0.02434211);
    path_2.cubicTo(
        size.width * 0.05084397,
        size.height * 0.03692234,
        size.width * 0.04359722,
        size.height * 0.04826608,
        size.width * 0.02133333,
        size.height * 0.05877193);
    path_2.cubicTo(
        size.width * -0.005622969,
        size.height * 0.06937808,
        size.width * -0.04058977,
        size.height * 0.07693260,
        size.width * -0.08319922,
        size.height * 0.07825178);
    path_2.cubicTo(
        size.width * -0.1231455,
        size.height * 0.07903145,
        size.width * -0.1603439,
        size.height * 0.07679682,
        size.width * -0.1923333,
        size.height * 0.06836623);
    path_2.cubicTo(
        size.width * -0.2179666,
        size.height * 0.06049865,
        size.width * -0.2317308,
        size.height * 0.05124938,
        size.width * -0.2330605,
        size.height * 0.03986110);
    path_2.cubicTo(
        size.width * -0.2334262,
        size.height * 0.03267105,
        size.width * -0.2312460,
        size.height * 0.02669690,
        size.width * -0.2213333,
        size.height * 0.02017544);
    path_2.cubicTo(
        size.width * -0.2203983,
        size.height * 0.01950603,
        size.width * -0.2194633,
        size.height * 0.01883662,
        size.width * -0.2185000,
        size.height * 0.01814693);
    path_2.cubicTo(
        size.width * -0.1978444,
        size.height * 0.004557705,
        size.width * -0.1603568,
        size.height * -0.003292254,
        size.width * -0.1180000,
        size.height * -0.008168860);
    path_2.cubicTo(size.width * -0.07707641, size.height * -0.01099280,
        size.width * -0.03371397, size.height * -0.008048955, 0, 0);
    path_2.close();

    Paint paint_2_fill = Paint()..style = PaintingStyle.fill;
    paint_2_fill.color = Color(0xff8573F8).withOpacity(1.0);
    canvas.drawPath(path_2, paint_2_fill);

    Path path_3 = Path();
    path_3.moveTo(0, 0);
    path_3.cubicTo(
        size.width * 0.001718750,
        size.height * 0.0004059416,
        size.width * 0.003437500,
        size.height * 0.0008118832,
        size.width * 0.005208333,
        size.height * 0.001230126);
    path_3.cubicTo(
        size.width * 0.01801368,
        size.height * 0.004535855,
        size.width * 0.02627919,
        size.height * 0.008610030,
        size.width * 0.03466667,
        size.height * 0.01315789);
    path_3.cubicTo(
        size.width * 0.03378667,
        size.height * 0.01373684,
        size.width * 0.03290667,
        size.height * 0.01431579,
        size.width * 0.03200000,
        size.height * 0.01491228);
    path_3.cubicTo(
        size.width * 0.03060781,
        size.height * 0.01435029,
        size.width * 0.02921562,
        size.height * 0.01378831,
        size.width * 0.02778125,
        size.height * 0.01320929);
    path_3.cubicTo(
        size.width * 0.001785408,
        size.height * 0.003160434,
        size.width * -0.02592577,
        size.height * -0.001977859,
        size.width * -0.06566667,
        size.height * -0.003399123);
    path_3.cubicTo(
        size.width * -0.1082163,
        size.height * -0.004097434,
        size.width * -0.1471652,
        size.height * -0.0001116213,
        size.width * -0.1798333,
        size.height * 0.009046053);
    path_3.cubicTo(
        size.width * -0.2076050,
        size.height * 0.01789646,
        size.width * -0.2209927,
        size.height * 0.02728734,
        size.width * -0.2253542,
        size.height * 0.03983347);
    path_3.cubicTo(
        size.width * -0.2257873,
        size.height * 0.04058316,
        size.width * -0.2262204,
        size.height * 0.04133285,
        size.width * -0.2266667,
        size.height * 0.04210526);
    path_3.cubicTo(
        size.width * -0.2293067,
        size.height * 0.04253947,
        size.width * -0.2293067,
        size.height * 0.04253947,
        size.width * -0.2320000,
        size.height * 0.04298246);
    path_3.cubicTo(
        size.width * -0.2332463,
        size.height * 0.03454416,
        size.width * -0.2326091,
        size.height * 0.02792310,
        size.width * -0.2213333,
        size.height * 0.02017544);
    path_3.cubicTo(
        size.width * -0.2203983,
        size.height * 0.01950264,
        size.width * -0.2194633,
        size.height * 0.01882984,
        size.width * -0.2185000,
        size.height * 0.01813665);
    path_3.cubicTo(
        size.width * -0.1977520,
        size.height * 0.004557750,
        size.width * -0.1603921,
        size.height * -0.003288190,
        size.width * -0.1180000,
        size.height * -0.008168860);
    path_3.cubicTo(size.width * -0.07712172, size.height * -0.01098968,
        size.width * -0.03365660, size.height * -0.008061001, 0, 0);
    path_3.close();

    Paint paint_3_fill = Paint()..style = PaintingStyle.fill;
    paint_3_fill.color = Color(0xff6C6AE7).withOpacity(1.0);
    canvas.drawPath(path_3, paint_3_fill);

    Path path_4 = Path();
    path_4.moveTo(0, 0);
    path_4.cubicTo(
        size.width * 0.002581563,
        size.height * 0.0003720189,
        size.width * 0.005163125,
        size.height * 0.0007440378,
        size.width * 0.007822917,
        size.height * 0.001127330);
    path_4.cubicTo(
        size.width * 0.02612288,
        size.height * 0.004059598,
        size.width * 0.03825625,
        size.height * 0.007894088,
        size.width * 0.05066667,
        size.height * 0.01315789);
    path_4.cubicTo(
        size.width * 0.04978667,
        size.height * 0.01373684,
        size.width * 0.04890667,
        size.height * 0.01431579,
        size.width * 0.04800000,
        size.height * 0.01491228);
    path_4.cubicTo(
        size.width * 0.04629328,
        size.height * 0.01433899,
        size.width * 0.04629328,
        size.height * 0.01433899,
        size.width * 0.04455208,
        size.height * 0.01375411);
    path_4.cubicTo(
        size.width * 0.01012510,
        size.height * 0.002966493,
        size.width * -0.03048356,
        size.height * 0.001283070,
        size.width * -0.07578125,
        size.height * 0.001541941);
    path_4.cubicTo(
        size.width * -0.1256393,
        size.height * 0.002103551,
        size.width * -0.1661991,
        size.height * 0.008159600,
        size.width * -0.2080000,
        size.height * 0.01666667);
    path_4.cubicTo(
        size.width * -0.2124417,
        size.height * 0.01754534,
        size.width * -0.2168854,
        size.height * 0.01842299,
        size.width * -0.2213333,
        size.height * 0.01929825);
    path_4.cubicTo(
        size.width * -0.2220938,
        size.height * 0.01688254,
        size.width * -0.2220938,
        size.height * 0.01688254,
        size.width * -0.2213333,
        size.height * 0.01403509);
    path_4.cubicTo(size.width * -0.1736198, size.height * -0.003422212,
        size.width * -0.06280874, size.height * -0.009542600, 0, 0);
    path_4.close();

    Paint paint_4_fill = Paint()..style = PaintingStyle.fill;
    paint_4_fill.color = Color(0xff6A69E7).withOpacity(1.0);
    canvas.drawPath(path_4, paint_4_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
