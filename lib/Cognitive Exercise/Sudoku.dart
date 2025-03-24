import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vhackapp/Component/leading.dart'; 

class Sudoku extends StatelessWidget {
  const Sudoku({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomLeading(title: 'Sudoku'),
      body: Padding(
        padding: const EdgeInsets.only(left: 8, right: 8, top: 8),
        child:
          Align(
          alignment: AlignmentDirectional.topCenter,
          child: Stack(
            children: [
              Positioned(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: List.generate(9, (row) {
                    return Row(
                      mainAxisSize: MainAxisSize.min,
                      children: List.generate(9, (col) {
                        return buildCell(row, col);
                      }),
                    );
                  }),
                ),
              ),
              Container(
                width: 274,
                height: 274,
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xFF10451D), width: 2),
                  color: Colors.transparent,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: List.generate(3, (row) {
                    return Row(
                      mainAxisSize: MainAxisSize.min,
                      children: List.generate(3, (col) {
                        return Container(
                          width: 90,
                          height: 90,
                          decoration: BoxDecoration(
                            border: Border.all(color: const Color(0xFF10451D), width: 2),
                            color: Colors.transparent,
                          ),
                        );
                      }),
                    );
                  }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildCell(int row, int col) {
    List<List<int?>> sudokuGrid = [
      [5, null, null, null, 2, null, null, null, null],
      [8, 3, null, null, 4, 9, null, null, 7],
      [6, null, null, 5, null, null, 9, 8, null],
      [null, 5, null, 4, null, 6, 8, 3, 2],
      [null, null, 4, null, 5, 3, null, null, null],
      [null, null, 6, null, null, null, 7, null, 5],
      [4, null, 5, null, 6, null, 3, null, null],
      [7, null, null, 1, null, null, null, 2, 9],
      [9, 2, 8, null, 7, 4, null, 6, null]
    ];

    return Material(
      color: Colors.transparent, // Ensure it's tappable
      child: Container(
        width: 30,
        height: 30,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(color: const Color(0xFF4AD66D)),
        ),
        child: sudokuGrid[row][col] != null
            ? Text(
                sudokuGrid[row][col].toString(),
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              )
            : TextField(
                keyboardType: TextInputType.number,
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                  FilteringTextInputFormatter.allow(RegExp(r'^[1-9]$')),
                ],
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 18),
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.zero,
                ),
              ),
        )
    );
  }
}