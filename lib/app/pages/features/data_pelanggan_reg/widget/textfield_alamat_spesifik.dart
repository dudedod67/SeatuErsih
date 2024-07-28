import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:seatu_ersih/app/pages/features/data_pelanggan_reg/data_pelanggan_controller_reg.dart';

class TextfieldAlamatSpesifik extends StatelessWidget {
  const TextfieldAlamatSpesifik({
    super.key,
    required this.controller,
  });

  final DataPelangganRegController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: 5,
      decoration: InputDecoration(
        hintText: 'Beri alamat anda lebih spesifik...',
        hintStyle: GoogleFonts.poppins(
          color: Colors.grey,
          fontSize: 16,
        ),
        border: InputBorder.none,
        contentPadding: EdgeInsets.all(10),
      ),
      onChanged: (value) {
        controller.address.value = value;
      },
    );
  }
}
