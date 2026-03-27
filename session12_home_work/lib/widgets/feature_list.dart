import 'package:flutter/material.dart';

class FeatureList extends StatelessWidget {
  const FeatureList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Features', style: TextStyle(color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold),),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 4.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
              boxShadow: [BoxShadow(color: Colors.grey.withValues(alpha: 0.4), blurRadius: 12, offset: Offset(0, 4)),],
            ),
            child: ListTile(leading: Container(
              decoration: BoxDecoration(
                color: Color(0xFFEFEBFA),
                borderRadius: BorderRadius.all(Radius.circular(12.0)),

              ),
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.speed, color: Colors.purple),
            ),
            title: Text('Fast Performance', style: TextStyle(fontWeight: FontWeight.bold),),
            subtitle: Text('Lightning fast app performance'),
            trailing: Icon( Icons.arrow_forward_ios, size: 16),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 4.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
              boxShadow: [BoxShadow(color: Colors.grey.withValues(alpha: 0.4), blurRadius: 12, offset: Offset(0, 4)),],
            ),
            child: ListTile(leading: Container(
              decoration: BoxDecoration(
                color: Color(0xFFEFEBFA),
                borderRadius: BorderRadius.all(Radius.circular(12.0)),

              ),
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.security, color: Colors.blue),
            ),
            title: Text('Secure', style: TextStyle(fontWeight: FontWeight.bold),),
            subtitle: Text('Your data is safe with us'),
            trailing: Icon( Icons.arrow_forward_ios, size: 16),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 4.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
              boxShadow: [BoxShadow(color: Colors.grey.withValues(alpha: 0.4), blurRadius: 12, offset: Offset(0, 4)),],
            ),
            child: ListTile(leading: Container(
              decoration: BoxDecoration(
                color: Color(0xFFEFEBFA),
                borderRadius: BorderRadius.all(Radius.circular(12.0)),

              ),
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.palette, color: Colors.orange),
            ),
            title: Text('Beautiful UI', style: TextStyle(fontWeight: FontWeight.bold),),
            subtitle: Text('Modern and clean design'),
            trailing: Icon( Icons.arrow_forward_ios, size: 16),
            ),
          ),
        ],
      ),
    );
  }
}
