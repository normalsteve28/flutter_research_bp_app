
import 'dart:convert'; //probably wrong, might change packages later 

class Task {
  List<Task> tasks;
  DateTime Timetaken;
  int historyid;
  double SystolicPressure;
  double DiastolicPressure;
  double HeartRate;
  
  Task(this.Timetaken, this.SystolicPressure, this.DiastolicPressure, this.HeartRate);

  factory Task.fromJson(Map<String, dynamic> parsedJson) {
    return Task(
      parsedJson['title'],
      parsedJson['Datetime'],
      parsedJson['historyid'],
      parsedJson['Systolic'],
      parsedJson['Diastolic'],
      parsedJson['Heartrate'],
      );
  }
