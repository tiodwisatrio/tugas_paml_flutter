import 'package:flutter/material.dart';

class ForgetPasswordPage extends StatelessWidget {
  const ForgetPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Forget Password'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start, // Posisikan semua widget di tengah
            children: [
              // Judul Reset Password
              Text(
                'Reset Password',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 8), // Spasi antara judul dan pesan

              // Teks Pesan dengan Margin Top
              Padding(
                padding: const EdgeInsets.only(top: 50.0), // Menambahkan margin top pada Pesan
                child: Text(
                  'Pesan',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.brown, // Menyesuaikan warna dengan tema
                  ),
                ),
              ),

              const SizedBox(height: 8), // Spasi antara "Pesan" dan deskripsi

              // Deskripsi Pesan
              Text(
                'Masukkan alamat email Anda untuk mengatur ulang password Anda',
                textAlign: TextAlign.center, // Agar teks terpusat
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black54, // Warna teks deskripsi
                ),
              ),

              const SizedBox(height: 50), // Spasi antara deskripsi dan input email

              // Input Email
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Email', // Teks untuk instruksi
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 8), // Spasi antara label dan text field
                  TextField(
                    keyboardType: TextInputType.emailAddress, // Set input type menjadi email
                    decoration: InputDecoration(
                      hintText: 'Enter your email',
                      contentPadding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 24), // Spasi antara input email dan tombol kirim

              // Kirim Email Button
              ElevatedButton(
                onPressed: () {
                  // Logika untuk mengirimkan email reset password di sini
                  // Misalnya: Kirim permintaan reset ke server
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 50), // Lebar penuh, tinggi 50
                  backgroundColor: Colors.brown, // Warna coklat
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: const Text(
                  'Kirim Email',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
