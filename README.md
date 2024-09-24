1.	login_page.dart
Halaman untuk login pengguna.
Komponen Utama:
a.	Controller:
-	_usernameController dan _passwordController:
-	Dua objek `TextEditingController` ini digunakan untuk menangkap input dari pengguna.
-	Mereka memungkinkan akses ke teks yang dimasukkan dalam `TextField`, memudahkan untuk mengambil dan memproses data login.
b.	_saveUsername():
-	Fungsi ini menginisialisasi `SharedPreferences` untuk menyimpan username yang dimasukkan oleh pengguna ke dalam penyimpanan lokal.
-	Ini memungkinkan aplikasi mengingat username pengguna bahkan setelah aplikasi ditutup, memberikan pengalaman pengguna yang lebih baik.
c.	_showInput():
-	Membuat widget `TextField` untuk mengambil input pengguna.
-	Parameter:
-	`namacontroller`: Kontroler untuk input.
-	`placeholder`: Teks yang muncul ketika input kosong.
-	`isPassword`: Boolean yang menentukan apakah teks harus disembunyikan (obscure) untuk password.
d.	_showDialog():
-	Menampilkan dialog alert dengan pesan yang disesuaikan dan tombol "OK".
-	Tombol tersebut akan membawa pengguna ke halaman yang ditentukan.
-	Memudahkan untuk memberikan umpan balik kepada pengguna, baik untuk kesuksesan login maupun kesalahan.
e.	build():
-	Mengatur tampilan UI dengan komponen yang tersusun rapi.
-	Menampilkan `AppBar` dengan judul "Login" dan kontainer yang berisi dua `TextField` dan tombol login.
-	Ketika tombol diklik, aplikasi memverifikasi username dan password, kemudian menampilkan dialog berdasarkan hasil verifikasi.

2.	home_page.dart
Menampilkan halaman setelah login berhasil.
Komponen Utama:
a.	_loadUsername():
-	Mengambil username yang disimpan di `SharedPreferences`.
-	Menggunakan `setState` untuk memperbarui UI setelah username diambil, memastikan perubahan terlihat oleh pengguna.
b.	build():
-	Mengatur tampilan UI halaman home.
-	Menampilkan `AppBar` dengan judul "Home".
-	Kontainer di tengah menampilkan pesan selamat datang yang mencakup username yang diambil.
-	Menyertakan `Drawer` (sidemenu) untuk navigasi ke halaman lain.

3.	sidemenu.dart
Menu samping untuk navigasi.
Komponen Utama:
a.	ListTile:
-	Digunakan untuk membuat item menu di dalam drawer.
-	Setiap `ListTile` memiliki ikon dan judul, memberikan petunjuk visual kepada pengguna mengenai fungsionalitas menu.
b.	build():
-	Mengatur tampilan `Drawer`, yang berisi:
-	DrawerHeader: Bagian atas drawer yang dapat menunjukkan judul atau informasi dasar.
-	Daftar item menu untuk navigasi ke halaman Home dan About.
-	Fungsi `onTap` untuk setiap `ListTile` menggunakan `Navigator.push()` untuk berpindah halaman.

4.	about_page.dart
Halaman informasi tentang aplikasi.
Komponen Utama:
a.	build():
-	Mengatur tampilan halaman About.
-	Menampilkan `AppBar` dengan judul "About".
-	Kontainer dengan warna latar belakang dan teks informasi yang menjelaskan tentang aplikasi.
-	Menyertakan `Drawer` untuk menjaga konsistensi navigasi dengan halaman lain.
#   L a b M o b i l e 3 _ D e a A f n i A z i z a h _ S h i f t C  
 