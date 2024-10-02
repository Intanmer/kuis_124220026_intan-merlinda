import 'package:flutter/material.dart';

class PenjelasanPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail UPN'),
        backgroundColor: Colors.greenAccent, // Warna latar belakang AppBar
      ),
      body: SingleChildScrollView( // Menambahkan ScrollView
        child: Center(
          child: Container(
            width: 350, // Lebar kontainer
            padding: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.white, // Warna latar belakang kontainer
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 10,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Gambar Header
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    'images/upn.jpg',
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: 250,
                  ),
                ),
                SizedBox(height: 16),
                Center(
                  child: Text(
                    'Arah Pendidikan UPN',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black, // Warna hitam
                    ),
                  ),
                ),
                SizedBox(height: 12),

                Text(
                  'Arah pendidikan UPN ”Veteran” Yogyakarta adalah mengembangkan ilmu pengetahuan dan teknologi yang dilandasi oleh nilai-nilai kedisiplinan, kejuangan, kreativitas, keunggulan, kebangsaan, dan kejujuran dalam rangka menunjang pembangunan nasional melalui bidang pendidikan tinggi untuk terciptanya sumber daya manusia yang unggul di era global dengan dilandasi jiwa bela negara.',
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.justify, // Rata kiri
                ),
                SizedBox(height: 16),
                // Judul Tujuan Pendidikan
                Center(
                  child: Text(
                    'Tujuan Pendidikan',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black, // Warna hitam
                    ),
                  ),
                ),
                SizedBox(height: 12),

                Text(
                  'Pendidikan di UPN ”Veteran” Yogyakarta bertujuan untuk:',
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.justify,
                ),
                SizedBox(height: 8),
                Text(
                  '1. Menyelenggarakan pendidikan dan pengajaran yang berkualitas guna menghasilkan lulusan berdaya saing global yang memiliki jiwa disiplin, berdaya juang, kreatif, serta berwawasan kebangsaan dan mampu menjadi komponen pendukung dalam sistem pertahanan negara;',
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.justify,
                ),
                SizedBox(height: 8),
                Text(
                  '2. Meningkatkan kuantitas dan kualitas penelitian guna:',
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.justify,
                ),
                SizedBox(height: 8),
                Text(
                  '  a. Menunjang pengembangan mutu pendidikan dan pengajaran;',
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.justify,
                ),
                Text(
                  '  b. Mengembangkan dan menerapkan ilmu pengetahuan dan teknologi (IPTEK) untuk menunjang pengabdian kepada masyarakat;',
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.justify,
                ),
                Text(
                  '  c. Menghasilkan modal intelektual dan karya ilmiah dalam rangka menunjang pembangunan nasional;',
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.justify,
                ),
                SizedBox(height: 8),
                Text(
                  '3. Pengembangan kegiatan pengabdian kepada masyarakat melalui:',
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.justify,
                ),
                SizedBox(height: 8),
                Text(
                  '  a. Penyediaan layanan ilmu pengetahuan dan teknologi (IPTEK) dalam rangka meningkatkan kesejahteraan masyarakat;',
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.justify,
                ),
                Text(
                  '  b. Peningkatan keberdayaan masyarakat;',
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.justify,
                ),
                Text(
                  '  c. Peningkatan reputasi UPN ”Veteran” Yogyakarta.',
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}