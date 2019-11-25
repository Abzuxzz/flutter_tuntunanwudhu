import 'package:flutter/material.dart';

void main() => runApp(Ali());

class Ali extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
      children: <Widget>[
        _createPageAli(
            "Membaca Basmalah",
            "assets/image/ali/ali1.png",
            "Membaca basmallah ini dilakukan sambil mencuci kedua telap"
                "ak tangan sebanyak 3 kali, hingga ke sela-sela jari."
                " Namun bila lupa untuk membaca basmallah, maka wudhu yang kamu lakukan tetap sah."),
        _createPageAli("Berkumur-kumur", "assets/image/ali/ali2.png",
            "Berkumur-kumur sebanyak 3 kali atau memutar air dalam mulut dan mengeluarkannya serta membersihkan gigi dari sisa-sisa makanan yang ada pada gigi."),
        _createPageAli("Mencuci lubang hidung", "assets/image/ali/ali3.png",
            "Mencuci lubang hidung sebanyak 3 kali untuk mengeluarkan kotoran yang ada di dalamnya. Dan disunnahkan pula muncuci lubang hidung dengan cara menghirup air dalam sekali hirup serta mengeluarkannya dengan memencet hidung."),
        _createPageAli("Mencuci muka 3 kali", "assets/image/ali/ali4.png",
            "Mencuci muka 3 kali pada saat berwudhu sebaiknya dilakukan mulai dari ujung kepala tumbuhnya rambut hingga bawah dagu. Serta membersihkan dari telinga kanan ke telinga kiri."),
        _createPageAli(
            "Mencuci kedua belah tangan hingga siku",
            "assets/image/ali/ali5.png",
            "Setelah mencuci muka, kemudian cucilah kedua belah tangan hingga siku sebanyak 3 kali. Sebaiknya lakukan dengan mendahulukan anggota tubuh bagian kanan, membasahi tangan hingga siku pun sudah tercantum dalam surat Al- Maidah ayat 6 sesuai dengan perintah Allah SWT."),
        _createPageAli("Mengusap kepala", "assets/image/ali/ali6.png",
            "Tata cara wudhu selanjutnya ialah mengusap kepala dari depan hingga ke bagian belakang kepala sebanyak satu kali. Ali bin Abi Thalib berkata : Aku melihat Nabi SAW mengusap kepalanya satu kali. (HR. Sahih Abu Dawud no.106)"),
        _createPageAli(
            "Membersihkan kedua telinga",
            "assets/image/ali/ali7.png",
            "Setelah mengusap kepala dilanjutkan dengan membersihkan kedua telinga tanpa perlu mengambil air baru. Membersihkan telinga dalam tata cara wudhu ini dilakukan dengan memasukan jari telunjuk ke dalam telinga, kemudian ibu jari mengusapkan kedua daun telinga. Hal ini dilakukan secara bersamaan antar telinga kanan dan telinga kiri."),
        _createPageAli(
            "Mencuci kedua kaki hingga di atas mata kaki",
            "assets/image/ali/ali8.png",
            "Dan tata cara wudhu selanjutnya yang benar sesuai dengan sunnah ialah membasuh kedua kaki hingga di atas mata kaki. Hal ini dilakukan sebanyak 3 kali dan dimulai dari kaki bagian kanan terlebih dahulu."
                "Dalam HR Bukhari, dahulukan kaki kanan hingga tiga kali kemudian kaki kiri. Dan saat membasuh kaki, Rasulullah menggosok jari kelingkingnya pada sela-sela jari kaki (HR. Bukhari; Fathul Baari, dan Muslim). Dalam menggosok kaki Rasullullah menyuruh umatnya untuk berhati-hati, karena bila tidak sempurna dalam membasuhnya akan terkena ancaman neraka. Dan pastikan kulit yang terlipat terkena air wudhu."),
      ],
    ));
  }
}

Widget _createPageAli(
  String nama,
  String gambar,
  String deskripsi,
) {
  return Container(
    child: ListView(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image(
            image: AssetImage(gambar),
            height: 300.0,
            fit: BoxFit.contain,
          ),
        ),
        SizedBox(
          height: 20.0,
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(nama,
              style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold)),
        ),
        Divider(
          thickness: 4.0,
          color: Colors.black45,
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            deskripsi,
            style: TextStyle(
              fontSize: 16.0,
            ),
            textAlign: TextAlign.justify,
          ),
        )
      ],
    ),
  );
}
