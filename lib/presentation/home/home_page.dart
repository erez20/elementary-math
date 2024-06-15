import 'package:fimber/fimber.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:karin/domain/use_cases/column_chosen_use_case.dart';
import 'package:karin/main/di.dart';
import 'package:karin/presentation/navigation/navigation_provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final String world = "world";

    return Scaffold(
      body: SafeArea(
          child: Center(
              child: TextButton(
        onPressed: () {
          getIt<ColumnChosenUseCase>(param1: 5).execute();
          //context.push("/shope/$world");
        },
        child: Text(
          "Press Here",
          style: GoogleFonts.lobster(textStyle: const TextStyle(fontSize: 20)),
        ),
      ))),
    );
  }
}
