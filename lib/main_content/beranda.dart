import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:posyandu/main_content/posyaduMap.dart';
import 'package:posyandu/main_content/ambulance.dart';

class beranda extends StatefulWidget {
  const beranda({super.key});

  @override
  State<beranda> createState() => _berandaState();
}

class _berandaState extends State<beranda> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(color: Color(0x5975A488)),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 15, 10, 2),
                child: Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.green[300],
                    borderRadius: const BorderRadius.all(Radius.circular(15)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Hello,",
                              style: GoogleFonts.inter(
                                fontSize: 15,
                                
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              "Hi Diana",
                              style: GoogleFonts.poppins(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.w600
                              ),
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 20),
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.black, width: 3)
                          ),
                          child: Icon(
                            Icons.account_circle,
                            color: Colors.black,
                            size: 60,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(4, 12, 4, 2),
                child: Container(
                  width: 392,
                  height: 56,
                  padding: const EdgeInsets.all(16),
                  decoration: ShapeDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        icon: Icon(
                          Icons.search,
                          size: 20,
                        ),
                        labelText: "Search doctor or health issues",
                        labelStyle: GoogleFonts.poppins(
                            fontSize: 15,
                             color: Colors.black),
                        border: InputBorder.none,
                        floatingLabelBehavior: FloatingLabelBehavior.never),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(10, 30, 10, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => FindPosyandu(),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            maximumSize: Size(130, 130),
                            backgroundColor: Colors.transparent,
                            shadowColor: Colors.transparent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          child: Image.asset(
                            'assets/icons/posyandu.png',
                            fit: BoxFit.fill,
                          ),
                        ),
                        Text(
                          'Posyandu',
                          style: GoogleFonts.lato(
                              fontSize: 15,
                              
                              color: Colors.black,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ambulanceEmergency(),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            maximumSize: Size(130, 130),
                            backgroundColor: Colors.transparent,
                            shadowColor: Colors.transparent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          child: Image.asset(
                            'assets/icons/ambulance-icon.png',
                            fit: BoxFit.fill,
                          ),
                        ),
                        Text(
                          'Ambulance',
                          style: GoogleFonts.lato(
                              fontSize: 15,
                              
                              color: Colors.black,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                                                            
                              borderRadius: BorderRadius.circular(50),
                              image: DecorationImage(
                                image: AssetImage('assets/icons/vaksin.png'),
                                fit: BoxFit.cover
                              )
                              ),
                        ),
                        Text(
                          'Vaksinasi',
                          style: GoogleFonts.lato(
                              fontSize: 15,
                              
                              color: Colors.black,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(10, 10, 10, 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                              
                              image: DecorationImage(
                                image: AssetImage('assets/icons/kontak.png'),
                                fit: BoxFit.cover
                              )
                              ),
                        ),
                        Text(
                          'Dokter',
                          style: GoogleFonts.lato(
                              fontSize: 15,
                              
                              color: Colors.black,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                              
                              image: DecorationImage(
                                image: AssetImage('assets/icons/money.png'),
                                fit: BoxFit.cover
                              )
                              ),
                        ),
                        Text(
                          'Bansos',
                          style: GoogleFonts.lato(
                              fontSize: 15,
                              
                              color: Colors.black,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              image: DecorationImage(
                                image: AssetImage('assets/icons/search.png'),
                                fit: BoxFit.cover
                              )
                              ),
                        ),
                        Text(
                          'Search',
                          style: GoogleFonts.lato(
                              fontSize: 15,
                              
                              color: Colors.black,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 25, bottom: 15),
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: 26,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: SizedBox(
                            child: Text(
                              'Layanan Terpadu',
                              style: TextStyle(
                                color: Color(0xFF112022),
                                fontSize: 20,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                height: 0.07,
                                letterSpacing: -0.40,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 12),
                        Text('See all',
                            style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize: 15,
                              
                              fontWeight: FontWeight.w600,
                            )),
                      ],
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.all(8),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        width: MediaQuery.of(context).size.width * 0.7,
                        height: 280,
                        padding: const EdgeInsets.all(4),
                        decoration: ShapeDecoration(
                          color: const Color.fromARGB(255, 199, 26, 26),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: Column(
                          children: [
                            Container(
                              width:
                                  MediaQuery.of(context).size.width * 0.7 * 0.9,
                              height: 280 * 0.65,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/rumahsakit.jpg'),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10, left: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Lorem Ipsum',
                                    style: GoogleFonts.montserrat(
                                        color: Colors.white,
                                        fontSize: 15,
                                        
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    'lorem ipsum Whereas disregard and contempt for human rights have resulted',
                                    style: GoogleFonts.notoSans(
                                        color: Colors.white, fontSize: 12),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        width: MediaQuery.of(context).size.width * 0.7,
                        height: 280,
                        padding: const EdgeInsets.all(4),
                        decoration: ShapeDecoration(
                          color: const Color.fromARGB(255, 27, 219, 219),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: Column(
                          children: [
                            Container(
                              width:
                                  MediaQuery.of(context).size.width * 0.7 * 0.9,
                              height: 280 * 0.65,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/posyandufoto.jpeg'),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10, left: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Lorem Ipsum',
                                    style: GoogleFonts.montserrat(
                                        color: Colors.white,
                                        fontSize: 15,
                                        
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    'lorem ipsum Whereas disregard and contempt for human rights have resulted',
                                    style: GoogleFonts.notoSans(
                                        color: Colors.white, fontSize: 12),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        width: MediaQuery.of(context).size.width * 0.7,
                        height: 280,
                        padding: const EdgeInsets.all(4),
                        decoration: ShapeDecoration(
                          color: const Color.fromARGB(255, 13, 34, 224),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: Column(
                          children: [
                            Container(
                              width:
                                  MediaQuery.of(context).size.width * 0.7 * 0.9,
                              height: 280 * 0.65,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/konsultasi.jpeg'),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10, left: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Lorem Ipsum',
                                    style: GoogleFonts.montserrat(
                                        color: Colors.white,
                                        fontSize: 15,
                                        
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    'lorem ipsum Whereas disregard and contempt for human rights have resulted',
                                    style: GoogleFonts.notoSans(
                                        color: Colors.white, fontSize: 12),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      top: 20,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 25, bottom: 15),
                          width: MediaQuery.of(context).size.width * 0.9,
                          height: 26,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: SizedBox(
                                  child: Text(
                                    'Bantuan Cepat',
                                    style: TextStyle(
                                      color: Color(0xFF112022),
                                      fontSize: 20,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                      height: 0.07,
                                      letterSpacing: -0.40,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 12),
                              Text('See all',
                                  style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontSize: 15,
                                    
                                    fontWeight: FontWeight.w600,
                                  )),
                            ],
                          ),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(
                                    left: 20, bottom: 15),
                                width: 150,
                                height: 200,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('assets/emergency.jpeg'),
                                    fit: BoxFit.cover,
                                  ),
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.grey[300],
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    margin:
                                        EdgeInsets.only(left: 20, bottom: 15),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'Emergency',
                                        style: GoogleFonts.poppins(
                                            fontSize: 15,
                                            
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 20, right: 20, bottom: 15),
                                width: 150,
                                height: 200,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('assets/melahirkan.jpeg'), // Use your image path
                                    fit: BoxFit.cover, // Makes the image cover the entire container
                                  ),
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.grey[300],
                                      borderRadius: BorderRadius.circular(15)
                                    ),
                                    margin:
                                        EdgeInsets.only(left: 20, bottom: 15),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'Kelahiran',
                                        style: GoogleFonts.poppins(
                                            fontSize: 15,
                                             color: Colors.black),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: 150,
                                height: 200,
                                margin: EdgeInsets.only(right: 20),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('assets/stroke.jpeg'), // Use your image path
                                    fit: BoxFit.cover, // Makes the image cover the entire container
                                  ),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.grey[300],
                                      borderRadius: BorderRadius.circular(15)
                                    ),
                                    margin:
                                        EdgeInsets.only(left: 20, bottom: 15),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'Stroke',
                                        style: GoogleFonts.poppins(
                                            fontSize: 15,
                                             color: Colors.black),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: 150,
                                height: 200,
                                margin: EdgeInsets.only(right: 20),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('assets/operasi.jpeg'), // Use your image path
                                    fit: BoxFit.cover, // Makes the image cover the entire container
                                  ),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.grey[300],
                                      borderRadius: BorderRadius.circular(15)
                                    ),
                                    margin:
                                        EdgeInsets.only(left: 20, bottom: 15),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'Operasi',
                                        style: GoogleFonts.poppins(
                                            fontSize: 15,
                                             color: Colors.black),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: 150,
                                height: 200,
                                margin: EdgeInsets.only(right: 20),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('assets/kecelakaan.jpeg'),
                                    fit: BoxFit.cover
                                  ),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.grey[300],
                                      borderRadius: BorderRadius.circular(15)
                                    ),
                                    margin:
                                        EdgeInsets.only(left: 20, bottom: 15),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'Kecelakaan',
                                        style: GoogleFonts.poppins(
                                            fontSize: 15,
                                             color: Colors.black),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 50,
        scrolledUnderElevation: 10,
        backgroundColor: const Color.fromARGB(20, 20, 70, 0),
        title: Text(
          'Posyandu-Ku',
          style: GoogleFonts.poppins(
            color: Colors.black,
            fontSize: 20,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () => {},
              icon: Icon(
                Icons.circle_notifications,
                size: 30,
              )),
        ],
      ),
    );
  }
}
