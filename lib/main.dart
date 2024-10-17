import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'page1.dart'; // Sesuaikan dengan nama file Anda

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Login Profile',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.purple,
        scaffoldBackgroundColor: Colors.black,
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme.apply(bodyColor: Colors.white, displayColor: Colors.white),
        ),
      ),
      home: const LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _sekolahController = TextEditingController();
  final TextEditingController _deskripsiController = TextEditingController();
  String? _selectedRole;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 60.0, vertical: 40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(height: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Form Profile",
                  style: GoogleFonts.poppins(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    color: Colors.purple, // Set header color to purple
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  "Silahkan untuk mengisi form profile anda",
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.white70,
                  ),
                ),
                const SizedBox(height: 40),
                _buildTextField(_usernameController, 'Nama', 'Input nama anda'),
                const SizedBox(height: 20),
                _buildTextField(_sekolahController, 'Sekolah', 'Input nama sekolah'),
                const SizedBox(height: 20),
                _buildDropdownField(),
                const SizedBox(height: 20),
                _buildTextField(_deskripsiController, 'Deskripsi', 'Input deskripsi singkat tentang anda'),
              ],
            ),
            _buildLoginButton(),
          ],
        ),
      ),
    );
  }

  TextFormField _buildTextField(TextEditingController controller, String label, String hint) {
    return TextFormField(
      controller: controller,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Masukan $label';
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: label,
        hintText: hint,
        hintStyle: GoogleFonts.poppins(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: Colors.white70,
        ),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(color: Colors.purple), // Set border color to purple
        ),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(color: Colors.purple), // Set border color to purple
        ),
      ),
    );
  }

  DropdownButtonFormField<String> _buildDropdownField() {
    return DropdownButtonFormField<String>(
      value: _selectedRole,
      validator: (value) {
        if (value == null) {
          return 'Pilih role';
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: 'Role',
        hintText: 'Pilih role',
        hintStyle: GoogleFonts.poppins(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: Colors.white70,
        ),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(color: Colors.purple), // Set border color to purple
        ),
      ),
      dropdownColor: Colors.black, // Set dropdown background color to black
      items: <String>['Front End', 'Back End'].map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value, style: TextStyle(color: Colors.white)),
        );
      }).toList(),
      onChanged: (String? newValue) {
        setState(() {
          _selectedRole = newValue;
        });
      },
    );
  }

  InkWell _buildLoginButton() {
    return InkWell(
      onTap: () {
        if (_usernameController.text.isEmpty ||
            _sekolahController.text.isEmpty ||
            _deskripsiController.text.isEmpty ||
            _selectedRole == null) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              backgroundColor: Colors.blue,
              content: Text(
                'Isi form login dengan lengkap!',
                style: TextStyle(color: Colors.white),
              ),
            ),
          );
        } else {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Home(), // Ganti ke Home
            ),
          );
        }
      },
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.purple, // Set button color to purple
        ),
        child: Center(
          child: Text(
            "Login",
            style: GoogleFonts.poppins(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.username, required this.sekolah, required this.deskripsi, required this.role});
  
  final String username;
  final String sekolah;
  final String deskripsi;
  final String role;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Welcome back - $username - $sekolah - $role - $deskripsi",
          style: GoogleFonts.poppins(
            fontSize: 24,
            fontWeight: FontWeight.w500,
            color: Colors.purple, // Set welcome text color to purple
          ),
        ),
      ),
    );
  }
}
