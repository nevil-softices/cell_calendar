import 'package:flutter/material.dart';

/// DataModel of event
///
/// [eventName] and [eventDate] is essential to show in [CellCalendar]
class CalendarEvent {
  CalendarEvent(this.eventHight, {
    required this.eventName,
    required this.eventDate,
    required this.eventTextStyle,
    this.eventBackgroundColor = Colors.blue,
    this.eventID,
  });

  final String eventName;
  final TextStyle eventTextStyle;
  final DateTime eventDate;
  final String? eventID;
  final Color eventBackgroundColor;
  final double? eventHight;
}
