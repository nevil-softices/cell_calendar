import 'package:cell_calendar/cell_calendar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// Default days of the week
const List<String> _DaysOfTheWeek = [
  'Sun',
  'Mon',
  'Tue',
  'Wed',
  'Thu',
  'Fri',
  'Sat'
];

/// Show the row of text from [_DaysOfTheWeek]
class DaysOfTheWeek extends StatelessWidget {
  DaysOfTheWeek(this.daysOfTheWeekBuilder);

  final DaysBuilder? daysOfTheWeekBuilder;

  Widget defaultLabels(index) {
    return Text(
      _DaysOfTheWeek[index],
      textAlign: TextAlign.center,
      style: GoogleFonts.poppins(fontWeight: FontWeight.w500, fontSize: 12,color: Color(0xff393E46)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        7,
        (index) {
          return Expanded(
            child: Container(
              alignment: Alignment.center,
              height: 24,
                width: 52,
                color: index==0 || index == 6 ? Color(0xffD1D1D6) : Colors.white,
                child: daysOfTheWeekBuilder?.call(index) ?? defaultLabels(index)),
          );
        },
      ),
    );
  }
}
