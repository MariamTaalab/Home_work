import 'package:flutter/material.dart';

class QuickStateGrid extends StatelessWidget {
  const QuickStateGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.all(8.0),
          width: double.infinity,
          child: Text('Quick Stats', style: TextStyle( color: Colors.black,fontSize: 22, fontWeight: FontWeight.bold),
          ),
        ),
        Row(
          children: [
            Expanded(child: Container(
              margin: const EdgeInsets.all(4.0),
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color:  Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(12.0)),
              ),
              child: Column(children: [
                Icon(Icons.group, color: Color(0xFF6136B7),),
                Center(
                  child: Text('1,234', style: TextStyle(
                    fontSize: 16, fontWeight: FontWeight.bold,
                  ),
                  ),
                ),
                Text('Users'),

              ],
              ),
            ),
            ),
            Expanded(child: Container(
              margin: const EdgeInsets.all(4.0),
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color:  Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(12.0)),
              ),
              child: Column(children: [
                Icon(Icons.star, color: Color(0xFFFA9804),),
                Center(
                  child: Text('4.8', style: TextStyle(
                    fontSize: 16, fontWeight: FontWeight.bold,
                  ),
                  ),
                ),
                Text('Rating'),

              ],
              ),
            ),
            ),
            Expanded(child: Container(
              margin: const EdgeInsets.all(4.0),
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color:  Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(12.0)),
              ),
              child: Column(children: [
                Icon(Icons.trending_up, color: Color(0xFF3C94C5),),
                Center(
                  child: Text('98%', style: TextStyle(
                    fontSize: 16, fontWeight: FontWeight.bold,
                  ),
                  ),
                ),
                Text('Success'),

              ],
              ),
            ),
            ),
          ],
        )
      ],
    );
  }
}
