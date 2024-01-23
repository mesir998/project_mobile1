import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EditMenu extends StatefulWidget {
  const EditMenu({super.key});

  @override
  State<EditMenu> createState() => _EditMenuState();
}

class _EditMenuState extends State<EditMenu> {
  TextEditingController nameController = TextEditingController();
  TextEditingController priceController = TextEditingController();
  TextEditingController stockController = TextEditingController();

  Widget _buildTextField(String label, TextEditingController controller) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16.0,
          ),
        ),
        const SizedBox(height: 4.0),
        Container(
          height: 45.0,
          decoration: myBoxDecoration(),
          child: TextField(
            controller: controller,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
              contentPadding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 12.0),
            ),
          ),
        ),
      ],
    );
  }

  BoxDecoration myBoxDecoration() {
    return BoxDecoration(
      border: Border.all(
        color: const Color(0xffA97932),
        width: 2.0,
      ),
      borderRadius: BorderRadius.circular(10),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Edit Menu',
          style: GoogleFonts.roboto(
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                width: 173,
                height: 150,
                child: Center(
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: 138.47,
                        height: 137,
                        decoration: BoxDecoration(
                          color: const Color(0xffD9D9D9),
                          borderRadius: BorderRadius.circular(68.5),
                          image: const DecorationImage(
                            image: AssetImage("assets/images/avatar.png"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Positioned(
                        right: 0,
                        bottom: 0,
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Color(0xffA97932),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Icon(
                            Icons.edit,
                            size: 24,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildTextField('Nama Menu', nameController),
                    const SizedBox(height: 16.0),
                    _buildTextField('Harga', priceController),
                    const SizedBox(height: 16.0),
                    _buildTextField('Stok Tersedia', stockController),
                    const SizedBox(height: 16.0),
                  ],
                ),
              ),
              Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/pesanan_pickup');
                  },
                  child: Container(
                      width: 305,
                      height: 41,
                      decoration: BoxDecoration(
                          color: Color(0xffA97932),
                          borderRadius:BorderRadius.circular(15)
                      ),
                      child:Center(
                        child:Text(
                          'Simpan',
                          style: GoogleFonts.inter(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color:Colors.white
                          ),
                        ),
                      )
                  ),
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/kelola_menu');
                  },
                  child: Container(
                      width: 305,
                      height: 41,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Color(0xffA97932)
                          ),
                          borderRadius:BorderRadius.circular(15)
                      ),
                      child:Center(
                        child:Text(
                          'Batal',
                          style: GoogleFonts.inter(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color(0xffA97932)
                          ),
                        ),
                      )
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
