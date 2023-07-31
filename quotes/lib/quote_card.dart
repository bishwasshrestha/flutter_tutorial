import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

  Card quotecard(quote) {
    return Card(
      color: Colors.grey.shade800,
      margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(quote.text,
                style: GoogleFonts.lato(color: Colors.white, fontSize: 18)),
            const SizedBox(height: 6.0),
            Text(
              quote.author,
              style: TextStyle(color: Colors.amber.shade100),
            ),
            const SizedBox(height: 8.0),
            TextButton.icon(
              onPressed: (){}, 
              icon: const Icon(Icons.delete), 
              label: const Text('delete quote'),
            )
          ],
        ),
      ),
    );
  }
