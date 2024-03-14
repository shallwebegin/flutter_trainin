import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  MediaQueryData get mediaQuery => MediaQuery.of(this);
}

extension PaddingExtension on BuildContext {
  //Padding All

  EdgeInsets get padding1x => EdgeInsets.all(val1x);
  EdgeInsets get padding2x => EdgeInsets.all(val2x);
  EdgeInsets get padding3x => EdgeInsets.all(val3x);
  EdgeInsets get padding4x => EdgeInsets.all(val4x);
  EdgeInsets get padding5x => EdgeInsets.all(val5x);
  EdgeInsets get padding6x => EdgeInsets.all(val6x);
  EdgeInsets get padding7x => EdgeInsets.all(val7x);
  EdgeInsets get padding8x => EdgeInsets.all(val8x);
  EdgeInsets get padding9x => EdgeInsets.all(val9x);
  EdgeInsets get padding10x => EdgeInsets.all(val10x);
  EdgeInsets get padding11x => EdgeInsets.all(val11x);
  EdgeInsets get padding12x => EdgeInsets.all(val12x);
  EdgeInsets get padding13x => EdgeInsets.all(val13x);
  EdgeInsets get padding14x => EdgeInsets.all(val14x);
  EdgeInsets get padding15x => EdgeInsets.all(val15x);

  // Padding Horizontal
  EdgeInsets get paddingHorizontal1x => EdgeInsets.symmetric(horizontal: val1x);
  EdgeInsets get paddingHorizontal2x => EdgeInsets.symmetric(horizontal: val2x);
  EdgeInsets get paddingHorizontal3x => EdgeInsets.symmetric(horizontal: val3x);
  EdgeInsets get paddingHorizontal4x => EdgeInsets.symmetric(horizontal: val4x);
  EdgeInsets get paddingHorizontal5x => EdgeInsets.symmetric(horizontal: val5x);
  EdgeInsets get paddingHorizontal6x => EdgeInsets.symmetric(horizontal: val6x);
  EdgeInsets get paddingHorizontal7x => EdgeInsets.symmetric(horizontal: val7x);
  EdgeInsets get paddingHorizontal8x => EdgeInsets.symmetric(horizontal: val8x);
  EdgeInsets get paddingHorizontal9x => EdgeInsets.symmetric(horizontal: val9x);
  EdgeInsets get paddingHorizontal10x =>
      EdgeInsets.symmetric(horizontal: val10x);
  EdgeInsets get paddingHorizontal11x =>
      EdgeInsets.symmetric(horizontal: val11x);
  EdgeInsets get paddingHorizontal12x =>
      EdgeInsets.symmetric(horizontal: val12x);
  EdgeInsets get paddingHorizontal13x =>
      EdgeInsets.symmetric(horizontal: val13x);
  EdgeInsets get paddingHorizontal14x =>
      EdgeInsets.symmetric(horizontal: val14x);
  EdgeInsets get paddingHorizontal15x =>
      EdgeInsets.symmetric(horizontal: val15x);

  // Padding Vertical
  EdgeInsets get paddingVertical1x => EdgeInsets.symmetric(vertical: val1x);
  EdgeInsets get paddingVertical2x => EdgeInsets.symmetric(vertical: val2x);
  EdgeInsets get paddingVertical3x => EdgeInsets.symmetric(vertical: val3x);
  EdgeInsets get paddingVertical4x => EdgeInsets.symmetric(vertical: val4x);
  EdgeInsets get paddingVertical5x => EdgeInsets.symmetric(vertical: val5x);
  EdgeInsets get paddingVertical6x => EdgeInsets.symmetric(vertical: val6x);
  EdgeInsets get paddingVertical7x => EdgeInsets.symmetric(vertical: val7x);
  EdgeInsets get paddingVertical8x => EdgeInsets.symmetric(vertical: val8x);
  EdgeInsets get paddingVertical9x => EdgeInsets.symmetric(vertical: val9x);
  EdgeInsets get paddingVertical10x => EdgeInsets.symmetric(vertical: val10x);
  EdgeInsets get paddingVertical11x => EdgeInsets.symmetric(vertical: val11x);
  EdgeInsets get paddingVertical12x => EdgeInsets.symmetric(vertical: val12x);
  EdgeInsets get paddingVertical13x => EdgeInsets.symmetric(vertical: val13x);
  EdgeInsets get paddingVertical14x => EdgeInsets.symmetric(vertical: val14x);
  EdgeInsets get paddingVertical15x => EdgeInsets.symmetric(vertical: val15x);
}

extension MediaQueryExtension on BuildContext {
  double get height => mediaQuery.size.height;
  double get width => mediaQuery.size.width;
  double get maxFinite => double.maxFinite;
  // Dynamic values
  double get val1x => width * 0.01;
  double get val2x => width * 0.02;
  double get val3x => width * 0.03;
  double get val4x => width * 0.04;
  double get val5x => width * 0.05;
  double get val6x => width * 0.06;
  double get val7x => width * 0.07;
  double get val8x => width * 0.08;
  double get val9x => width * 0.09;
  double get val10x => width * 0.1;
  double get val11x => width * 0.11;
  double get val12x => width * 0.12;
  double get val13x => width * 0.13;
  double get val14x => width * 0.14;
  double get val15x => width * 0.15;
  double get val16x => width * 0.16;
  double get val17x => width * 0.17;
  double get val18x => width * 0.18;
  double get val19x => width * 0.19;
  double get val20x => width * 0.2;
  double get val21x => width * 0.21;
  double get val22x => width * 0.22;
  double get val23x => width * 0.23;
  double get val24x => width * 0.24;

  // Dynamic height and weight generator
  double dynamicWidth(double val) => width * val;
  double dynamicHeight(double val) => height * val;
}

extension DurationExtension on BuildContext {
  Duration get durationLow1x => const Duration(milliseconds: 100);
  Duration get durationLow2x => const Duration(milliseconds: 250);
  Duration get durationLow3x => const Duration(milliseconds: 500);
  Duration get durationLow4x => const Duration(milliseconds: 750);

  Duration get durationNormal1x => const Duration(milliseconds: 1000);
  Duration get durationNormal2x => const Duration(milliseconds: 1250);
  Duration get durationNormal3x => const Duration(milliseconds: 1500);
  Duration get durationNormal4x => const Duration(milliseconds: 1750);

  Duration get durationSlow1x => const Duration(milliseconds: 2000);
  Duration get durationSlow2x => const Duration(milliseconds: 2250);
  Duration get durationSlow3x => const Duration(milliseconds: 2500);
  Duration get durationSlow4x => const Duration(milliseconds: 2750);

  Duration get durationVerySlow1x => const Duration(milliseconds: 3000);
  Duration get durationVerySlow2x => const Duration(milliseconds: 3250);
  Duration get durationVerySlow3x => const Duration(milliseconds: 3500);
  Duration get durationVerySlow4x => const Duration(milliseconds: 3750);

  Duration get durationTooSlow1x => const Duration(milliseconds: 4000);
  Duration get durationTooSlow2x => const Duration(milliseconds: 4250);
  Duration get durationTooSlow3x => const Duration(milliseconds: 4500);
  Duration get durationTooSlow4x => const Duration(milliseconds: 4750);
}
