import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/fback.jpeg"),
            fit: BoxFit.cover, 
          ),
        ),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.fromLTRB(0, 40.0, 0, 40.0), // Margin atas 30px
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        radius: 100.0,
                        backgroundImage: AssetImage('images/f.jpg'),
                      ),
                      SizedBox(height: 10), // Jarak antara CircleAvatar dan Text
                      Text(
                        "Lubna Salsabila",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 25), // Anda bisa menambahkan warna jika perlu
                      ),
                    ],
                  ),
                ),

                // First Card: About
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  margin: EdgeInsets.fromLTRB(50.0, 10.0, 50.0, 10.0),
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.white,
                          Color(0xFFE0B0FF), // Ungu muda
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(15.0), // Pastikan borderRadius sama
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "About",
                            textAlign: TextAlign.start,
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Halo semuanya, saya Siti Lubna Salsabila Muslimah dari rombel PPLG XII-2 rayon Cisarua 4, saya adalah anak ke-3 dari 4 bersaudara tanggal lahir saya 18 Juli 2007 dan saya lahir di Bogor, salam kenal semuanya. saya sekarang lagi belajar flutter di ruangan 322 sama ka Alvin",
                            textAlign: TextAlign.start,
                            style: TextStyle(fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),  


                Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0), // Menggunakan shape untuk border radius
                    ),
                    color: Color(0xFFAD49E1), // Margin dari Card
                    child: Padding(
                      padding: EdgeInsets.all(10.0), // Padding di dalam Card
                      child: Column(
                        children: <Widget>[
                          // Tambahkan child di sini
                        ],
                      ),
                    ),
                  ),

                // Second Card: History
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  margin: EdgeInsets.fromLTRB(50.0, 10.0, 50.0, 10.0),
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.white,
                          Color(0xFFE0B0FF), // Ungu muda
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(15.0), // Pastikan borderRadius sama
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "History",
                            textAlign: TextAlign.start,
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Halo semuanya, saya Siti Lubna Salsabila Muslimah dari rombel PPLG XII-2 rayon Cisarua 4, saya adalah anak ke-3 dari 4 bersaudara tanggal lahir saya 18 Juli 2007 dan saya lahir di Bogor, salam kenal semuanya.",
                            textAlign: TextAlign.start,
                            style: TextStyle(fontSize: 15),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Nis saya 12209428, zodiak saya adalah cancer, mbti saya adalah INFP",
                            textAlign: TextAlign.start,
                            style: TextStyle(fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),


                Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0), // Menggunakan shape untuk border radius
                    ),
                    color: Color(0xFFAD49E1),// Margin dari Card
                    child: Padding(
                      padding: EdgeInsets.all(10.0), // Padding di dalam Card
                      child: Column(
                        children: <Widget>[
                          // Tambahkan child di sini
                        ],
                      ),
                    ),
                  ),

                // Third Card: Skill
               Container(
                  width: MediaQuery.of(context).size.width * 10, // Ubah 10 menjadi 0.9 untuk lebar yang wajar
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    margin: EdgeInsets.fromLTRB(50.0, 10.0, 50.0, 10.0),
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.white,
                            Color(0xFFE0B0FF), // Ungu muda
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(15.0), // Pastikan borderRadius sama
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Skill",
                              textAlign: TextAlign.start,
                              style: TextStyle(fontSize: 20),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "HTML",
                              textAlign: TextAlign.start,
                              style: TextStyle(fontSize: 17),
                            ),
                            Text(
                              "CSS",
                              textAlign: TextAlign.start,
                              style: TextStyle(fontSize: 17),
                            ),
                            Text(
                              "LARAVEL",
                              textAlign: TextAlign.start,
                              style: TextStyle(fontSize: 17),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
