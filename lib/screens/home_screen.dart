import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/quiz_model.dart';
import 'quiz_screen.dart';
import '../widgets/primary_button.dart';

class HomeScreen extends StatefulWidget {// ada texteditingcontroller 
  static const routeName = '/';//untuk alamat rute
  const HomeScreen({super.key});//constructor

  @override
  State<HomeScreen> createState() => _HomeScreenState();//untuk hubungin state dengan widget  
}

class _HomeScreenState extends State<HomeScreen> {//statenya, bersifat private
  final _controller = TextEditingController();//pengontrol untuk teksfield yang menyimpan teks yang diketik user 

  @override
  void dispose() {//lifecylenya widget dipanggil saat halaman dihapus 
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) {// ksih tau potrait atau landscape
        return LayoutBuilder(
          builder: (context, constraints) {//kasih tau ukuran ruang layar
            final width = constraints.maxWidth;
            final height = constraints.maxHeight;
            final isPortrait = orientation == Orientation.portrait;

            // Responsive measurements
            final paddingHorizontal = width * 0.06;//padding kiri kanan ui
            final titleSize = width * (isPortrait ? 0.06 : 0.04);
            final subtitleSize = width * (isPortrait ? 0.04 : 0.03);
            final contentSpacing = height * 0.06;//tinggi dari title dengan subtitle
            final topPadding = height * 0.05;// tinggi dari title dengan layar

            return Scaffold(
              body: SafeArea(//biar ui ga nabrak
                child: SingleChildScrollView(//biar bisa discroll
                  child: Padding(
                    padding: EdgeInsets.symmetric(//simetris
                      horizontal: paddingHorizontal,
                      vertical: height * 0.02,
                    ),
                    child: Center(
                      child: Container(
                        constraints: BoxConstraints(
                          maxWidth: 600, //lebar maksimum kontainer 
                        ),
                        child: Column(//susun secara vertikal
                          crossAxisAlignment: CrossAxisAlignment.stretch,//biar sejajar kiri kanan
                          children: [
                            SizedBox(height: topPadding),
                            Text(
                              'Selamat Datang!',
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineMedium
                                  ?.copyWith(// biar responsif jadi mengubah ukuran font sesuai ukuran layar dan tebalin font
                                    fontSize: titleSize,//? untuk apakah null, kalau ga baru dipanggil
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                            SizedBox(height: contentSpacing),
                            Text(
                              'Masukkan nama Anda untuk memulai kuis',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(
                                    fontSize: subtitleSize,
                                  ),
                            ),
                            SizedBox(height: height * 0.04),
                            TextField(
                              controller: _controller,
                              style: TextStyle(fontSize: subtitleSize),
                              decoration: InputDecoration(//dekorasinya
                                labelText: 'Nama',
                                labelStyle: TextStyle(fontSize: subtitleSize),
                                border: OutlineInputBorder(//TextField bentuk kotak dengan garis pinggir.
                                  borderRadius: BorderRadius.circular(12),//border default
                                  borderSide: BorderSide(width: 2),
                                ),
                                enabledBorder: OutlineInputBorder(//waktu teksfield ga diklik 
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: BorderSide(
                                    width: 2,
                                    color: Theme.of(context)
                                        .primaryColor
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(//saat teksfield diklik 
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: BorderSide(
                                    width: 2,
                                    color: Theme.of(context).primaryColor,
                                  ),
                                ),
                                prefixIcon: Icon(//ikon orang 
                                  Icons.person,
                                  size: subtitleSize * 1.5,
                                ),
                                contentPadding: EdgeInsets.symmetric(//untuk yang didalam teksfield
                                  horizontal: width * 0.04,
                                  vertical: height * 0.02,
                                ),
                              ),
                            ),
                            SizedBox(height: height * 0.03),
                            SizedBox(
                              height: height * 0.07,
                              child: PrimaryButton(
                                text: 'Mulai Kuis',
                                onPressed: () {
                                  final name = _controller.text.trim();//meghapus spasi akhir dan awal
                                  if (name.isEmpty) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(//pesan peringatan 
                                        content: Text(
                                          'Isi nama terlebih dahulu',
                                          style:
                                              TextStyle(fontSize: subtitleSize),
                                        ),
                                        behavior: SnackBarBehavior.floating,//melayang ga lengket
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        margin: EdgeInsets.all(20),
                                      ),
                                    );
                                    return;//jika nama kosong, keluar dari fungsi
                                  }
                                  Provider.of<QuizModel>(context, listen: false)
                                      .setName(name);//disimpan nama ke state global menggunakan provider 
                                  Navigator.pushNamed(
                                      context, QuizScreen.routeName);//pindah ke halaman kuis
                                },
                              ),
                            ),
                            SizedBox(height: height * 0.1),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
