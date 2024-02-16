import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projefloote/quiz.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: const Drawer(),
      appBar: AppBar(
        shadowColor: Colors.black,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text('Quiz',
            style: GoogleFonts.roboto(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: const Color(0xDD303030))),
        centerTitle: true,
        actions: const [
          Icon(Icons.search),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 32, 8, 40),
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start, // Ajuste conforme necessário
              children: [
                Text(
                  'Desafie \nsua mente',
                  style: GoogleFonts.roboto(fontSize: 40),
                ),
                Text(
                  'Exercite à sua mente',
                  style: GoogleFonts.roboto(
                      fontSize: 16, fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 60,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(16, 8, 8, 8),
                  padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(50)),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Todos',
                          style: GoogleFonts.roboto(
                              fontSize: 16, fontWeight: FontWeight.w600)),
                    ],
                  ),
                ),
                Container(
                    margin: const EdgeInsets.all(8),
                    padding: const EdgeInsets.fromLTRB(8, 8, 16, 8),
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(50)),
                    child: Row(
                      children: [
                        Image.asset('assets/aviao.png',
                            width: 50, height: 50),
                        Text('Aereo',
                            style: GoogleFonts.roboto(color: Colors.white))
                      ],
                    )),
                Container(
                    margin: const EdgeInsets.all(8),
                    padding: const EdgeInsets.fromLTRB(8, 8, 16, 8),
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(50)),
                    child: Row(
                      children: [
                        Image.asset('assets/sc.png',
                            width: 50, height: 50),
                        Text('torcida',
                            style: GoogleFonts.roboto(color: Colors.black))
                      ],
                    )),
                Container(
                    margin: const EdgeInsets.fromLTRB(8, 8, 16, 8),
                    padding: const EdgeInsets.fromLTRB(8, 8, 16, 8),
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(50)),
                    child: Row(
                      children: [
                        Image.asset('assets/torinden.jpg',
                            width: 50, height: 50),
                        Text('clube',
                            style: GoogleFonts.roboto(color: Colors.black))
                      ],
                    ))
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(16, 16, 16, 8),
            height: 320,
            width: double.infinity,
            child: GestureDetector(
              onTap: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => const Quiz())),
              child: Card(
                color: Colors.grey[300],
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: Image.asset(
                          'assets/fut.jpg',
                          width: 170,
                          height: 170,
                        ),
                      ),
                      Text(
                        'Mostre seu conhecimento futebolístico',
                        style: GoogleFonts.roboto(
                            color: Colors.black, fontSize: 16),
                        textAlign: TextAlign.center,
                      ),
                      ListTile(
                        leading:
                            const Icon(Icons.star, color: Colors.amberAccent),
                        title: Text('1500 pontos',
                            style: GoogleFonts.roboto(
                                fontSize: 16, fontWeight: FontWeight.w300)),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 240,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                    margin: const EdgeInsets.fromLTRB(16, 0, 4, 16),
                    height: double.infinity,
                    width: 240,
                    child: Card(
                      color: Colors.grey[300],
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(16),
                              child: Image.asset(
                                'assets/sc.png',
                                width: 50,
                                height: 50,
                              ),
                            ),
                            Text(
                              'Mostre seu conhecimento terrestre',
                              style: GoogleFonts.roboto(
                                  color: Colors.black, fontSize: 14),
                              textAlign: TextAlign.center,
                            ),
                            ListTile(
                              leading: const Icon(Icons.star,
                                  color: Colors.amberAccent),
                              title: Text('1500 pontos',
                                  style: GoogleFonts.roboto(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400)),
                            )
                          ],
                        ),
                      ),
                    )),
                Container(
                    margin: const EdgeInsets.fromLTRB(4, 0, 16, 16),
                    height: double.infinity,
                    width: 240,
                    child: Card(
                      color: Colors.grey[300],
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(16),
                              child: Image.asset(
                                'assets/aviao.png',
                                width: 50,
                                height: 50,
                              ),
                            ),
                            Text(
                              'Mostre seu conhecimento aéreo',
                              style: GoogleFonts.roboto(
                                  color: Colors.black, fontSize: 14),
                              textAlign: TextAlign.center,
                            ),
                            ListTile(
                              leading: const Icon(Icons.star,
                                  color: Colors.amberAccent),
                              title: Text('1200 pontos',
                                  style: GoogleFonts.roboto(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400)),
                            )
                          ],
                        ),
                      ),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
