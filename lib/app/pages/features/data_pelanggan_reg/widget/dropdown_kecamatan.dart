import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:seatu_ersih/app/pages/features/data_pelanggan_reg/data_pelanggan_controller_reg.dart';

class DropdownKecamatan extends GetView<DataPelangganRegController> {
  const DropdownKecamatan({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 0,
            blurRadius: 3,
            offset: Offset(0, 0),
          ),
        ],
      ),
      child: Obx(
        () => DropdownButtonHideUnderline(
          child: DropdownButton<String>(
            hint: Text(
              'Kecamatan',
              style: GoogleFonts.poppins(
                color: Colors.grey,
                fontSize: 16,
              ),
            ),
            value: controller.kecamatanName.value.isEmpty
                ? null
                : controller.kecamatanName.value,
            items: [
              DropdownMenuItem(
                value: 'Gebog',
                child: Text('Gebog', style: GoogleFonts.poppins(fontSize: 16)),
              ),
              DropdownMenuItem(
                value: 'Kaliwungu',
                child: Text('Kaliwungu', style: GoogleFonts.poppins(fontSize: 16)),
              ),
            ],
            onChanged: (value) {
              controller.kecamatanName.value = value ?? '';
            },
            icon: Icon(Icons.arrow_drop_down, color: Colors.grey),
          ),
        ),
      ),
    );
  }
}
