import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:w6_providers_and_asynchronous_repositories/EX-1-START-CODE/providers/courses_provider.dart';
import 'package:w6_providers_and_asynchronous_repositories/EX-1-START-CODE/repositories/courses_mock_repository.dart';
import 'package:w6_providers_and_asynchronous_repositories/EX-1-START-CODE/repositories/courses_repository.dart';

import 'screens/course_list_screen.dart';

void main() {
  // Create repository
  CoursesRepository coursesRepo = CoursesMockRepository();

  // Run the app with provider
  runApp(
    ChangeNotifierProvider(
      create: (context) => CoursesProvider(repository: coursesRepo),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: CourseListScreen(),
      ),
    ),
  );
}