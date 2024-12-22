import 'package:flutter/material.dart';
import '../models/student.dart';
import 'student_item.dart';

class StudentsScreen extends StatelessWidget {
  // Новий список студентів
  final List<Student> students = [
    Student(
      firstName: 'Emma',
      lastName: 'Taylor',
      department: Department.engineering,
      grade: 3,
      gender: Gender.female,
    ),
    Student(
      firstName: 'James',
      lastName: 'Anderson',
      department: Department.sports,
      grade: 4,
      gender: Gender.male,
    ),
    Student(
      firstName: 'Charlotte',
      lastName: 'Lee',
      department: Department.arts,
      grade: 5,
      gender: Gender.female,
    ),
    Student(
      firstName: 'Benjamin',
      lastName: 'Walker',
      department: Department.business,
      grade: 6,
      gender: Gender.male,
    ),
    Student(
      firstName: 'Mia',
      lastName: 'Harris',
      department: Department.engineering,
      grade: 7,
      gender: Gender.female,
    ),
    Student(
      firstName: 'Lucas',
      lastName: 'Martinez',
      department: Department.sports,
      grade: 8,
      gender: Gender.male,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Students'),
      ),
      body: ListView.builder(
        itemCount: students.length,
        itemBuilder: (context, index) {
          final student = students[index];
          return StudentItem(student: student);
        },
      ),
    );
  }
}
