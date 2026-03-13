<h1 align="center">GlowUp 💄</h2>

<p align="center"><em>Organize your beauty. Elevate your glow.</em></p>

<p align="center">
  <img src="https://github.com/user-attachments/assets/4995b0e5-0e61-47c6-86ad-79eafdb80047" width="75%">
</p>

### Disusun Oleh 

| **Nama**                     | **NIM**     | **Kelas**            |
|------------------------------|------------|-------------------|
| Maifariza Aulia Dyas         | 2409116032 | Sistem Informasi A |

## Deskripsi Aplikasi

**GlowUp** merupakan aplikasi mobile berbasis Flutter yang dikembangkan untuk membantu pengguna mencatat, mengelola, dan mengorganisir koleksi produk kosmetik yang dimiliki secara praktis. Aplikasi ini dirancang sebagai _beauty organizer_ sederhana yang memungkinkan pengguna menyimpan daftar produk kosmetik dalam bentuk _checklist_ sehingga lebih mudah memantau produk yang dimiliki.

Melalui aplikasi GlowUp, pengguna dapat menambahkan data produk kosmetik yang dimiliki seperti nama produk, kategori produk, serta harga produk. Data tersebut kemudian disimpan ke dalam database menggunakan Supabase sehingga informasi dapat dikelola secara dinamis melalui operasi CRUD (_Create, Read, Update, Delete_).

Fitur utama dari aplikasi ini yaitu kemampuan untuk menambahkan produk kosmetik baru ke dalam daftar, menampilkan seluruh produk yang telah tersimpan, mengedit data produk apabila terdapat perubahan atau kesalahan input, serta menghapus produk yang sudah tidak digunakan. Selain itu, setiap produk dapat ditandai menggunakan _checkbox_ sebagai indikator bahwa produk tersebut telah dipilih atau digunakan oleh pengguna.

Aplikasi GlowUp juga dilengkapi dengan fitur pencarian dan filter kategori sehingga pengguna dapat dengan mudah menemukan produk tertentu berdasarkan nama atau kategori seperti skincare, makeup, parfum, bodycare, dan haircare. Dengan adanya fitur-fitur tadi, pengguna bisa mengatur koleksi produk kosmetik mereka dengan lebih rapi, terorganisir, dan mudah dipantau dalam satu aplikasi mobile.

---

## Struktur Folder & File Project

Struktur project yang saya gunakan mengikuti struktur standar dari Flutter. Karena itu, di dalam project ini terdapat beberapa folder bawaan seperti android, ios, web, linux, macos, dan windows. Folder-folder ini otomatis dibuat oleh Flutter saat project dibuat dan digunakan untuk mendukung aplikasi agar bisa dijalankan di berbagai platform. Pada bagian ini saya tidak melakukan perubahan khusus karena lebih berfungsi untuk konfigurasi sistem.

<img width="205" height="536" alt="image" src="https://github.com/user-attachments/assets/c6777429-40fb-432a-a97b-2757bdc44703" />



Pada project ini, sebagian besar kode yang saya kerjakan terdapat di dalam folder minpro2_mobile. Folder ini berisi struktur project Flutter utama yang saya gunakan untuk mengembangkan aplikasi GlowUp.

<img width="193" height="643" alt="image" src="https://github.com/user-attachments/assets/4080c89d-9038-457f-97bb-d42f522d7737" />




Di dalam folder tersebut terdapat folder lib yang menjadi bagian paling penting, karena di sinilah seluruh kode utama aplikasi ditulis. File main.dart menjadi kode awal ketika aplikasi dijalankan. Dari file ini saya mengatur bagaimana aplikasi dimulai serta halaman pertama yang akan ditampilkan.

<img width="183" height="224" alt="image" src="https://github.com/user-attachments/assets/1a7597f6-be36-40f0-beea-1aa5e2c8cb42" />


> Folder models yang saya gunakan untuk menyimpan model data aplikasi. Di dalamnya terdapat file product.dart yang berisi struktur data produk kosmetik yang digunakan dalam aplikasi, seperti nama produk, kategori, harga, serta status checkbox untuk menandai apakah produk sudah dipilih atau belum.
>
> <img width="188" height="54" alt="image" src="https://github.com/user-attachments/assets/67ade51c-2b09-41e5-a871-b248201832ec" />


> Selain itu terdapat folder pages yang berisi halaman-halaman utama dalam aplikasi. Di dalam folder ini terdapat beberapa file seperti *welcome_page.dart*, *login_page.dart*, *register_page.dart*, *home_page.dart*, dan *form_page.dart*. File *welcome_page.dart* digunakan untuk menampilkan halaman awal ketika aplikasi pertama kali dibuka. Selanjutnya terdapat *login_page.dart* dan *register_page.dart* yang digunakan untuk proses login serta pendaftaran akun pengguna. Kemudian terdapat *home_page.dart* yang merupakan halaman utama dalam aplikasi, di mana halaman ini menampilkan daftar produk kosmetik yang dimiliki pengguna. Pada halaman ini pengguna juga dapat melihat daftar produk yang tersimpan, melakukan pencarian produk, serta menandai produk menggunakan checkbox. Sedangkan *form_page.dart* digunakan untuk menambahkan produk baru ataupun mengedit data produk yang sudah ada sebelumnya.
>
> <img width="167" height="138" alt="image" src="https://github.com/user-attachments/assets/6c2a236c-a987-4fca-9b77-48c82eed8e6a" />


> File **main.dart** merupakan file utama dalam aplikasi Flutter yang dijalankan pertama kali. Pada file ini saya mengatur konfigurasi awal aplikasi, seperti menghubungkan aplikasi dengan Supabase serta mengatur navigasi ke halaman welcome, login, register, dan home.
>
> <img width="184" height="30" alt="image" src="https://github.com/user-attachments/assets/1c71a1fd-f010-48c0-90e8-e39a421284eb" />



Selain folder kode program, terdapat juga folder assets yang digunakan untuk menyimpan berbagai file tambahan yang digunakan dalam tampilan aplikasi. Di dalam folder ini terdapat folder *fonts* yang berisi font seperti *CloudLucent* dan *PlayfairDisplay* yang digunakan untuk mempercantik tampilan teks agar sesuai dengan tema aplikasi GlowUp. Selain itu terdapat folder *images* yang berisi gambar-gambar yang saya gunakan dalam aplikasi, seperti gambar pada halaman welcome serta gambar background yang digunakan pada beberapa halaman aplikasi.
>
> <img width="273" height="180" alt="image" src="https://github.com/user-attachments/assets/946e2bef-1347-4bdd-a3fb-4f5e09998441" />


Selanjutnya terdapat file **pubspec.yaml** yang digunakan untuk mengatur dependency atau library yang digunakan dalam project Flutter. Pada file ini juga didaftarkan berbagai assets seperti font dan gambar agar dapat digunakan di dalam aplikasi.
>
> <img width="173" height="29" alt="image" src="https://github.com/user-attachments/assets/46993fef-158a-43d1-a791-c0e32caee651" />



Karena saya menerapkan nilai tambah dalam pengembangan aplikasi, konfigurasi penting seperti URL dan API Key Supabase saya simpan menggunakan file .env. Hal ini bertujuan untuk menjaga keamanan data sensitif agar tidak langsung dituliskan di dalam source code.
>
> <img width="165" height="29" alt="image" src="https://github.com/user-attachments/assets/0a4fb22e-1f1e-4199-85f2-8fead42ebbb2" />


---

## ⭑.ᐟ Fitur Aplikasi

1. Halaman Welcome (_Welcome Screen_)

   Aplikasi ini memiliki halaman awal berupa _welcome screen_ yang ditampilkan sebelum pengguna masuk ke halaman utama. Halaman ini menampilkan judul aplikasi GlowUp, tagline, serta tombol Start untuk masuk ke dalam aplikasi. Halaman ini dibuat untuk memberikan tampilan pembuka sebelum pengguna mulai menggunakan aplikasi.
  
2. Tambah Produk (Create)
  
   Aplikasi menyediakan fitur untuk menambahkan data produk baru ke dalam daftar. Pengguna dapat mengisi informasi seperti nama produk, kategori, dan harga melalui halaman form yang telah disediakan. Setelah data disimpan, produk akan langsung muncul di halaman daftar produk.

3. Tampilkan Daftar Produk (Read)
  
   Aplikasi dapat menampilkan seluruh data produk dalam bentuk daftar pada halaman utama (_Home Page_). Setiap produk akan menampilkan informasi seperti nama produk, kategori, dan harga sehingga pengguna dapat melihat semua produk yang telah disimpan.
   
4. Hapus Produk (_Delete_)
   
    Aplikasi juga menyediakan fitur untuk menghapus produk dari daftar. Ketika pengguna memilih tombol hapus, aplikasi akan menampilkan notifikasi konfirmasi terlebih dahulu agar tidak terjadi kesalahan penghapusan secara tidak sengaja. Jika pengguna menyetujui, produk akan langsung dihapus dari daftar. Dan jika tidak, pengguna akan diarahkan ke halaman utama kembali.
   
5. Tandai Status Produk (_Checkbox_)
   
    Setiap produk memiliki _checkbox_ yang dapat digunakan untuk menandai produk tertentu. Ketika _checkbox_ diaktifkan, tampilan produk akan berubah warna yang semulanya hitam menjadi pink, sebagai indikator visual bahwa produk tersebut sudah ditandai atau dipilih oleh pengguna.
   
6. Progress Koleksi Produk
   
    Pada halaman utama aplikasi terdapat progress bar yang menunjukkan jumlah produk yang telah ditandai dibandingkan dengan total produk yang ada. Fitur ini membantu pengguna melihat sejauh mana produk yang sudah dipilih dari seluruh koleksi produk yang tersedia.
   
7. Cari Produk (_Search_)
   
    Aplikasi ini juga menyediakan fitur pencarian untuk memudahkan pengguna menemukan produk tertentu dengan lebih cepat. Pengguna cukup mengetik nama produk pada kolom pencarian yang tersedia di halaman utama. Setelah kata kunci dimasukkan, aplikasi akan langsung menampilkan produk yang sesuai tanpa perlu membuka halaman kembali.
   
    Jika produk yang dicari tidak ditemukan, aplikasi akan menampilkan pesan bahwa produk tidak tersedia serta menyediakan tombol untuk kembali menampilkan semua produk. Dengan ini, pengguna bisa langsung mencoba mencari kembali tanpa perlu melakukan pengaturan ulang secara manual.
   
8. Filter Kategori Produk (_Filter Category_)
   
    Selain fitur pencarian, aplikasi juga dilengkapi dengan filter kategori yang membantu pengguna melihat produk berdasarkan jenisnya. Pengguna dapat memilih kategori seperti Skincare, Makeup, Parfum, Bodycare, atau Haircare untuk menampilkan produk yang sesuai dengan kategori tersebut. Jika ingin kembali melihat semua produk, pengguna dapat memilih opsi All.
   
9. Edit Produk (_Update_)
   
    Pengguna juga dapat memperbarui data produk yang sudah ada. Ketika tombol edit ditekan, data produk akan ditampilkan kembali di halaman form dengan informasi sebelumnya. Dengan begitu, pengguna hanya perlu mengubah bagian yang diperlukan tanpa harus menginput ulang seluruh data.
   
10. Navigasi Multi Halaman
   
    Aplikasi ini menggunakan sistem navigasi antar halaman agar tampilan aplikasi lebih terstruktur. Pengguna dapat berpindah dari halaman welcome, ke halaman daftar produk, lalu ke halaman form untuk menambah atau mengedit produk. Setelah selesai, pengguna dapat kembali ke halaman utama untuk melihat daftar produk yang sudah diperbarui.

**✮⋆˙ Nilai Tambah**

1. Login dan Register menggunakan Supabase Auth
   
   Aplikasi GlowUp dilengkapi dengan fitur autentikasi pengguna menggunakan Supabase Auth. Pengguna bisa membuat akun baru melalui halaman register dan masuk ke aplikasi melalui halaman login sebelum mengakses fitur utama aplikasi.
   
2. Menggunakan file .env untuk menyimpan konfigurasi Supabase

   Aplikasi menggunakan file .env untuk menyimpan informasi penting seperti Supabase URL dan Supabase API Key. Dengan cara ini, data sensitif tidak langsung ditulis di dalam kode program sehingga lebih aman ketika project diunggah ke GitHub.

---

## Teknologi yang Digunakan

```

┌─────────────────────────────┬──────────────────────────────┐
│        Teknologi            │          Keterangan          │
├─────────────────────────────┼──────────────────────────────┤
│ Flutter                     │ Framework yang digunakan     │
│                             │ untuk membangun tampilan     │
│                             │ aplikasi mobile (UI).        │
├─────────────────────────────┼──────────────────────────────┤
│ Dart                        │ Bahasa pemrograman yang      │
│                             │ digunakan dalam pengembangan │
│                             │ aplikasi Flutter.            │
├─────────────────────────────┼──────────────────────────────┤
│ Supabase                    │ Backend dan database yang    │
│                             │ digunakan untuk menyimpan    │
│                             │ data produk aplikasi.        │
├─────────────────────────────┼──────────────────────────────┤
│ GitHub                      │ Digunakan untuk menyimpan    │
│                             │ dan mengelola source code    │
│                             │ project secara online.       │
├─────────────────────────────┼──────────────────────────────┤
│ Environment Variables (.env)│ Digunakan untuk menyimpan    │
│                             │ konfigurasi sensitif seperti │
│                             │ API Key dan URL Supabase     │
│                             │ agar lebih aman.             │
└─────────────────────────────┴──────────────────────────────┘

```
---
## Struktur Database
```
┌─────────────────────────────┬──────────────────────────────┐
│        Kolom Database       │          Keterangan          │
├─────────────────────────────┼──────────────────────────────┤
│ id (uuid)                   │ ID unik yang digunakan       │
│                             │ untuk mengidentifikasi       │
│                             │ setiap data produk.          │
├─────────────────────────────┼──────────────────────────────┤
│ nama (text)                 │ Menyimpan nama produk        │
│                             │ kosmetik yang ditambahkan    │
│                             │ oleh pengguna.               │
├─────────────────────────────┼──────────────────────────────┤
│ kategori (text)             │ Menyimpan kategori produk    │
│                             │ seperti Skincare, Makeup,    │
│                             │ Haircare, dan lainnya.       │
├─────────────────────────────┼──────────────────────────────┤
│ harga (int8)                │ Menyimpan harga produk       │
│                             │ dalam bentuk angka.          │
├─────────────────────────────┼──────────────────────────────┤
│ dipilih (boolean)           │ Menandakan apakah produk     │
│                             │ sudah dipilih oleh pengguna  │
│                             │ atau belum.                  │
├─────────────────────────────┼──────────────────────────────┤
│ created_at (timestamptz)    │ Menyimpan waktu saat data    │
│                             │ produk dibuat di database.   │
└─────────────────────────────┴──────────────────────────────┘
```
---

## Widget dan Komponen yang Digunakan

| **WIDGET** | **KETERANGAN** |
|--------|------------|
| StatelessWidget | Digunakan untuk struktur dasar aplikasi yang tidak membutuhkan perubahan state. |
| StatefulWidget | Digunakan pada HomePage dan FormPage karena halaman ini membutuhkan perubahan data (tambah, edit, hapus, centang produk). |
| Scaffold | Menyediakan struktur dasar seperti AppBar, body, dan FloatingActionButton. |
| AppBar | Digunakan untuk menampilkan judul aplikasi di bagian atas layar. |
| MaterialApp | Digunakan sebagai root widget aplikasi untuk mengatur tema, navigasi, dan struktur dasar aplikasi Flutter. |
| Text | Digunakan untuk menampilkan informasi seperti nama produk, kategori, dan harga. |
| TextField | Menggunakan controller untuk mengambil dan mengelola input pengguna. |
| TextFormField | Digunakan pada halaman form untuk menerima input seperti nama produk, kategori, dan harga. |
| ElevatedButton | Digunakan sebagai tombol aksi seperti tambah produk atau simpan data. |
| FloatingActionButton | Digunakan sebagai tombol aksi utama untuk menambahkan produk baru ke dalam daftar. |
| ListView | Digunakan untuk menampilkan daftar produk secara dinamis. |
| ListTile | Digunakan untuk menyusun isi setiap item produk agar lebih rapi dan terstruktur. |
| Card / Container | Digunakan untuk membungkus setiap produk dalam bentuk box agar tampil lebih clean dan terpisah. |
| Column & Row | Digunakan untuk mengatur tata letak widget secara vertikal dan horizontal. |
| SizedBox | Digunakan untuk memberikan jarak antar widget agar tampilan lebih rapi. |
| Checkbox | Digunakan untuk menandai status produk, misalnya sudah tersedia atau belum. |
| IconButton | Digunakan sebagai tombol edit dan hapus pada setiap produk. |
| ChoiceChip | Digunakan untuk membuat filter kategori produk seperti Skincare, Makeup, Parfum, Bodycare, dan Haircare. |
| LinearProgressIndicator | Digunakan untuk menampilkan progress jumlah produk yang telah dipilih dibandingkan dengan total produk. |
| Stack | Digunakan untuk menumpuk beberapa widget, misalnya untuk membuat background gambar dan overlay pada halaman form. |
| Dialog / AlertDialog | Digunakan untuk menampilkan konfirmasi ketika pengguna ingin menghapus produk. |
| Navigator | Digunakan bersama MaterialPageRoute untuk berpindah halaman dan mengirim data kembali ke halaman sebelumnya. |
| setState() | Digunakan untuk memperbarui tampilan ketika data berubah, misalnya setelah menambah, mengupdate atau menghapus produk. |
| SnackBar | Digunakan untuk menampilkan notifikasi sementara kepada pengguna, misalnya ketika produk berhasil dihapus. |
| ScaffoldMessenger | Digunakan untuk menampilkan SnackBar dan mengelola pesan notifikasi pada halaman aplikasi. |

---

## ⋆˚꩜｡ Tampilan Aplikasi 

- **Halaman Welcome (_Welcome Screen_)**

  <img width="1906" height="944" alt="image" src="https://github.com/user-attachments/assets/dda4d161-b965-496a-b7e5-989248c47b6b" />


- **Halaman Login**

  <img width="1906" height="945" alt="image" src="https://github.com/user-attachments/assets/a2f1ae27-8d25-4b6f-861d-ac90f5fec359" />



- **Halaman Register**

  <img width="1909" height="947" alt="image" src="https://github.com/user-attachments/assets/fdc0bc90-57ff-4afa-83e8-82ecdc5d052e" />



- **Halaman Daftar Produk (Home)**

  <img width="1904" height="946" alt="image" src="https://github.com/user-attachments/assets/513c17d3-7233-4464-8145-7c95f32a4d8a" />



- **Halaman Tambah Produk**

  <img width="1907" height="946" alt="image" src="https://github.com/user-attachments/assets/e6761a91-e671-4f72-a871-80d530eeb107" />


  > Tombol Back
  >
  > <img width="1912" height="945" alt="image" src="https://github.com/user-attachments/assets/b9a62838-7145-4d46-841a-e8bf6f5e92fa" />




- **Halaman Edit Produk**

  <img width="1905" height="944" alt="image" src="https://github.com/user-attachments/assets/14563661-6325-4b90-ba02-5c21e18f9bcb" />


  > Tombol Back
  >
  > <img width="1902" height="944" alt="image" src="https://github.com/user-attachments/assets/4a6b841d-fd15-4092-a485-275d466ec6ba" />



- **Tampilan Hapus Produk**

  <img width="1902" height="945" alt="image" src="https://github.com/user-attachments/assets/c52a67c9-ecb8-4193-a6e6-e29efdee509f" />




- **Notifikasi SnackBar**

  a. Produk berhasil dihapus.
  >
  > <img width="1902" height="945" alt="image" src="https://github.com/user-attachments/assets/e7803848-da30-49bd-8680-1cb0d4413eb3" />




  b. Produk berhasil diperbarui.
  >
  > <img width="1906" height="946" alt="image" src="https://github.com/user-attachments/assets/a718f164-3b6f-4780-abe3-4b824cdfedeb" />




  c. Produk berhasil ditambahkan.
  >
  > <img width="1902" height="946" alt="image" src="https://github.com/user-attachments/assets/73e54259-6026-4f0a-9bd2-11b93560b562" />




- **Checkbox (produk dicentang)**

  <img width="1911" height="946" alt="image" src="https://github.com/user-attachments/assets/c4c84a86-911a-4e5b-94ef-cee07665603b" />




- **Back**

  <img width="1906" height="942" alt="image" src="https://github.com/user-attachments/assets/89c866f5-988b-4d4f-956e-c5fcf4e135d9" />



- **Logout**

  <img width="1905" height="944" alt="image" src="https://github.com/user-attachments/assets/be442976-a5af-4026-aa0f-11cb4d7415e4" />


---

## Validasi Input pada Aplikasi

1. Halaman Login

   a. Validasi Email
   > Email yang digunakan harus menggunakan domain @gmail.com.
   > 
   > <img width="454" height="101" alt="image" src="https://github.com/user-attachments/assets/ebe90c21-deed-4b40-83f3-72e32eea4bbc" />


   
   b. Validasi Password
   > Password minimal harus terdiri dari 8 karakter.
   > 
   > <img width="450" height="89" alt="image" src="https://github.com/user-attachments/assets/8ac5a1f2-e9bb-4fba-9c04-13cd30901b05" />


   
   c. Validasi Password
   > Email atau password yang dimasukkan tidak sesuai dengan data yang tersimpan di sistem
   > 
   > <img width="455" height="185" alt="image" src="https://github.com/user-attachments/assets/d1204f7b-394a-4733-ab43-7856b7cff3f3" />


   

2. Halaman Register

   a. Validasi Email
   > Email yang digunakan harus menggunakan domain @gmail.com.
   > 
   > <img width="454" height="101" alt="image" src="https://github.com/user-attachments/assets/ebe90c21-deed-4b40-83f3-72e32eea4bbc" />

   
   b. Validasi Password
   > Password minimal harus terdiri dari 8 karakter.
   > 
   > <img width="450" height="89" alt="image" src="https://github.com/user-attachments/assets/8ac5a1f2-e9bb-4fba-9c04-13cd30901b05" />

   
   c. Validasi Konfirmasi Password
   > Password dan konfirmasi password harus sama sebelum akun dapat dibuat.
   > 
   > <img width="471" height="247" alt="image" src="https://github.com/user-attachments/assets/46a2ba26-ea31-491a-8dfe-5f75e470fe9d" />

   d. Register dengan Email yang sudah terdaftar
   > Jika pengguna register dengan akun Email yang sudah terdaftar.
   >
   > <img width="1909" height="948" alt="image" src="https://github.com/user-attachments/assets/59424db9-faa2-49f7-8af9-04a46ecf0d27" />


   
4. Halaman Form Produk (Tambah / Edit Produk)

   a. Validasi Kolom Kosong
   > Jika ada kolom yang belum diisi, aplikasi akan menampilkan pesan:
   >
   > <img width="566" height="257" alt="image" src="https://github.com/user-attachments/assets/d10cdab4-b9da-4e5e-8606-2e60a3332f78" />


   b. Validasi Nama Produk
   > Nama produk hanya boleh berisi huruf. Jika tidak sesuai maka muncul pesan:
   >
   > <img width="559" height="94" alt="image" src="https://github.com/user-attachments/assets/524f427e-3ac8-4ced-960a-1c791769106e" />


   c. Validasi Kategori Produk
   > Kategori produk juga hanya boleh berisi huruf.
   >
   > <img width="563" height="93" alt="image" src="https://github.com/user-attachments/assets/4780e266-f009-4184-abd3-178662ac7b4f" />


   d. Validasi Harga Produk
   > Harga produk hanya boleh berupa angka.
   >
   > <img width="559" height="97" alt="image" src="https://github.com/user-attachments/assets/b5c585f9-aa6e-4c70-8275-980bbbc6379c" />


   e. Validasi Tidak Ada Perubahan
   > Jika pengguna menekan tombol simpan tanpa mengubah data apa pun saat edit produk, maka aplikasi akan menampilkan pesan:
   >
   > <img width="1908" height="947" alt="image" src="https://github.com/user-attachments/assets/466f4ac9-8140-465a-8342-06b7eecf5942" />



---

## ★ Alur Aplikasi

1. Saat aplikasi GlowUp pertama kali dijalankan, pengguna akan diarahkan ke halaman Welcome. Pada halaman ini ditampilkan tampilan pembuka aplikasi yang berisi judul aplikasi, tagline, serta tombol Start. Tombol tersebut digunakan oleh pengguna untuk melanjutkan ke halaman berikutnya.
   >
   > <img width="1906" height="944" alt="image" src="https://github.com/user-attachments/assets/dda4d161-b965-496a-b7e5-989248c47b6b" />

---


2. Setelah menekan tombol Start, pengguna akan diarahkan ke halaman Login. Nah di halaman ini pengguna diminta untuk memasukkan email dan password agar dapat masuk ke dalam aplikasi.
   >
   > <img width="1906" height="945" alt="image" src="https://github.com/user-attachments/assets/a2f1ae27-8d25-4b6f-861d-ac90f5fec359" />
   
   Pada contoh di bawah ini, saya mencoba memasukkan email zahra@yahoo.com dan password yang kurang dari 8 karakter. Karena email yang dimasukkan tidak menggunakan domain @gmail.com serta password belum memenuhi minimal 8 karakter, maka aplikasi menampilkan pesan validasi bahwa email harus menggunakan @gmail.com dan password harus memiliki minimal 8 karakter.
   >
   > <img width="1909" height="945" alt="image" src="https://github.com/user-attachments/assets/d21e1d0b-7249-49a5-a5d7-bb54985794d3" />



   Jika belum memiliki akun, pengguna dapat memilih menu Register yang tersedia pada halaman Login. Menu tersebut akan mengarahkan pengguna ke halaman pendaftaran akun. Pada halaman Register, pengguna dapat membuat akun baru dengan mengisi email, password, dan confirm password. Pada halaman ini terdapat beberapa validasi input untuk memastikan data yang dimasukkan sesuai. Email harus menggunakan domain @gmail.com, password harus memiliki minimal 8 karakter, dan kolom confirm password harus sama dengan password yang telah dimasukkan. Jika data yang diisi tidak sesuai, maka aplikasi akan menampilkan pesan kesalahan pada kolom input seperti pada gambar di bawah ini.
   >
   > <img width="1908" height="949" alt="image" src="https://github.com/user-attachments/assets/e2cdfbd9-bcc7-4dda-a23d-09b4801e99f7" />

   
   Saya mencoba melakukan pendaftaran menggunakan email yang sudah pernah terdaftar sebelumnya. Karena akun dengan email tersebut sudah ada di sistem, maka proses pendaftaran tidak dapat dilakukan. Aplikasi kemudian menampilkan notifikasi di bagian bawah layar yang menyatakan bahwa email sudah terdaftar dan pengguna diminta untuk melakukan login saja. Hal ini bertujuan untuk mencegah pembuatan akun dengan email yang sama lebih dari satu kali.
   >
   > <img width="1909" height="948" alt="image" src="https://github.com/user-attachments/assets/59424db9-faa2-49f7-8af9-04a46ecf0d27" />
   
   Pada gambar di bawah ini ditampilkan tampilan notifikasi ketika pengguna berhasil melakukan login. Setelah email dan password yang dimasukkan sesuai, aplikasi akan menampilkan dialog Selamat Datang sebagai konfirmasi bahwa proses login berhasil. Pengguna kemudian dapat menekan tombol Masuk GlowUp untuk melanjutkan ke halaman utama aplikasi dan mulai mengelola koleksi produk beauty yang dimiliki.
   >
   > <img width="1909" height="947" alt="image" src="https://github.com/user-attachments/assets/2e1fc6a4-6456-4895-884e-e7b3d06a7549" />


   
---
  
3. Setelah proses login berhasil, pengguna akan diarahkan ke halaman utama (Home Page). Pada halaman ini ditampilkan daftar produk kosmetik yang telah disimpan. Setiap produk menampilkan informasi seperti nama produk, kategori, dan harga.

   Di sini juga terdapat fitur checkbox pada setiap produk yang dapat digunakan untuk menandai produk yang dipilih oleh pengguna. Ketika checkbox dicentang, maka produk tersebut akan dianggap sebagai produk yang telah dipilih. Tampilan produk juga akan berubah menjadi berwarna pink sebagai indikator visual bahwa produk tersebut sudah dipilih.
   >
   > <img width="1907" height="946" alt="image" src="https://github.com/user-attachments/assets/b780ecc4-69ca-4efa-91eb-50173e101fad" />


   Pada bagian atas halaman utama terdapat progress bar yang menunjukkan jumlah produk yang telah dipilih dibandingkan dengan total produk yang tersedia. Progress bar ini membantu pengguna melihat perkembangan koleksi produk yang sudah ditandai. Jumlah produk yang telah dicentang akan mempengaruhi progress bar yang terdapat di bagian atas halaman. Progress bar ini menunjukkan perbandingan antara jumlah produk yang dipilih dengan total produk yang tersedia, sehingga pengguna dapat melihat perkembangan koleksi produk yang sudah dipilih dengan lebih mudah.
   >
   > <img width="1912" height="254" alt="image" src="https://github.com/user-attachments/assets/35854c3a-60a9-45f0-ad62-014a81f50d4e" />


   Pada halaman utama juga terdapat fitur pencarian produk yang dapat digunakan untuk membantu pengguna menemukan produk tertentu dengan lebih cepat. Pengguna dapat mengetikkan nama produk pada kolom pencarian yang tersedia di bagian atas daftar produk. Setelah kata kunci dimasukkan, aplikasi akan secara otomatis menampilkan produk yang sesuai dengan kata kunci tersebut. Disini saya mencoba mencari Sunscreen dan terlihat di bawah sudah ada.
   >
   > <img width="1908" height="944" alt="image" src="https://github.com/user-attachments/assets/93c37531-c72e-4a8f-9f6c-3d002f31ff48" />


   Jika produk yang dicari tidak ditemukan, maka aplikasi akan menampilkan tampilan informasi di bagian tengah layar dengan pesan “Produk tidak ditemukan”. Pada tampilan ini juga terdapat tombol Reset Pencarian yang dapat digunakan untuk menghapus kata kunci pencarian sehingga daftar produk dapat ditampilkan kembali seperti semula.
   >
   > <img width="1908" height="943" alt="image" src="https://github.com/user-attachments/assets/2da9f7a3-3df8-4882-ab81-2810f84032d2" />


   Selain fitur pencarian, aplikasi juga menyediakan fitur filter kategori yang membantu pengguna melihat produk berdasarkan jenisnya. Filter kategori ditampilkan dalam bentuk beberapa tombol seperti All, Skincare, Makeup, Parfum, Bodycare, dan Haircare. Disini saya menggunakan filter untuk melihat barang-barang dengan kategori Makeup.
   >
   > <img width="1905" height="948" alt="image" src="https://github.com/user-attachments/assets/aa4598b2-bc80-4c88-b67e-898a257b7065" />


---

4. Kita juga bisa menambahkan data produk baru melalui tombol tambah (+) yang terdapat di bagian kanan bawah halaman. Ketika tombol tersebut ditekan, pengguna akan diarahkan ke halaman form tambah produk.
   >
   > <img width="1599" height="796" alt="image" src="https://github.com/user-attachments/assets/b55c0067-efd8-4ac7-976e-d19a2aee4295" />


   Pada halaman ini pengguna diminta untuk mengisi beberapa informasi seperti nama produk, kategori, dan harga. Setelah semua data diisi dengan benar, pengguna dapat menekan tombol Tambah untuk menyimpan produk ke dalam daftar. 
   >
   > <img width="1909" height="947" alt="image" src="https://github.com/user-attachments/assets/8512a80e-1538-41ac-b079-891e1b9b0022" />

   
   Produk yang berhasil ditambahkan akan langsung muncul notifikasi bahwa produk sudah berhasil ditambahkan dan ada muncul di daftar produk.
   >
   > <img width="1907" height="947" alt="image" src="https://github.com/user-attachments/assets/71708209-f4dc-457a-b7f3-7c262b9d73bf" />

   
   Pada gambar di bawah terlihat bahwa produk Serum Bulu Mata yang kita tambahkan tadi akan muncul secara otomatis di tabel products pada Supabase. Data tersebut tersimpan secara dinamis di database sehingga setiap produk yang ditambahkan dari aplikasi akan langsung tercatat di Supabase beserta informasi seperti nama produk, kategori, harga, dan status checkbox.
   >
   > <img width="1275" height="774" alt="image" src="https://github.com/user-attachments/assets/6c9f2080-029f-4969-8e74-5bf0cf8904c3" />

   
   **Validasi Input Halaman Tambah Produk**
   
   Nah gambar dibawah ini ada validasi input pada halaman Tambah Produk. Jika pengguna memasukkan data yang tidak sesuai, maka aplikasi akan menampilkan pesan kesalahan pada kolom input. Pada contoh tersebut, pengguna memasukkan angka pada kolom nama produk dan kategori, sehingga muncul pesan bahwa nama produk dan kategori harus berupa huruf. Selain itu, pada kolom harga pengguna memasukkan teks yang bukan angka, sehingga aplikasi menampilkan pesan bahwa harga harus berupa angka.
   >
   > <img width="1907" height="945" alt="image" src="https://github.com/user-attachments/assets/1310ce67-5cbe-46ac-b90d-982b7bd8fc60" />


   Di sini kolom harus diisi oleh pengguna. Jika pengguna mencoba menambahkan produk tanpa mengisi data pada kolom yang tersedia, maka aplikasi akan menampilkan pesan “Oops.. Kolom tidak boleh kosong.”.
   >
   > <img width="1908" height="945" alt="image" src="https://github.com/user-attachments/assets/12bf14af-82dc-4e42-995f-04fefdb613ba" />



---

5. Pengguna juga bisa mengedit data produk yang sudah ada. Fitur ini dapat digunakan dengan menekan ikon edit (pensil) yang terdapat pada setiap produk di halaman utama. Setelah tombol tersebut ditekan, pengguna akan diarahkan ke halaman Edit Produk.
   >
   > ![WhatsApp Image 2026-03-13 at 11 38 52](https://github.com/user-attachments/assets/dd4471f4-185c-42f8-82fa-b6cb68d69f89)


   Pada halaman ini, data produk yang sebelumnya sudah tersimpan seperti nama produk, kategori, dan harga akan otomatis muncul pada kolom input. Pengguna dapat mengubah data tersebut sesuai kebutuhan, kemudian menekan tombol Simpan untuk memperbarui data produk.
   >
   > <img width="1908" height="942" alt="image" src="https://github.com/user-attachments/assets/229355d4-71fb-4503-ac4b-602163682376" />


   Pada gambar di bawah ini saya mengubah harga produk Face Wash yang sebelumnya Rp 75.000 menjadi Rp 90.000. Setelah perubahan dilakukan, pengguna dapat menekan tombol Simpan untuk memperbarui data produk. 
   >
   > <img width="1906" height="944" alt="image" src="https://github.com/user-attachments/assets/2af9cdba-dc43-4406-b3f6-06b4919ca821" />

   
   Produk yang berhasil diperbarui akan langsung muncul notifikasi bahwa produk sudah berhasil diperbarui dan langsung teubah di daftar produk.
   >
   > <img width="1911" height="945" alt="image" src="https://github.com/user-attachments/assets/c76bbab0-f6fe-4154-aea9-fcb2b74710ec" />


   
   Setelah produk diedit pada aplikasi, data tersebut juga langsung diperbarui di database Supabase. Pada gambar di atas yang sudah saya tandai terlihat bahwa harga Face Wash sudah berubah menjadi 90.000, sesuai dengan perubahan yang dilakukan pada aplikasi.
   >
   > <img width="1290" height="774" alt="image" src="https://github.com/user-attachments/assets/ce6dfc0a-ba56-40cf-9532-08d81683ffb0" />


   **Validasi Input**
   
   Pada gambar ini, pengguna membuka halaman Edit Produk tetapi tidak melakukan perubahan pada data yang sudah ada. Ketika tombol Simpan ditekan tanpa mengubah data, aplikasi akan menampilkan notifikasi di bagian bawah layar yang menunjukkan bahwa tidak ada perubahan pada produk. Hal ini memberi tahu pengguna bahwa data yang disimpan masih sama sehingga tidak perlu diperbarui di database.
   >
   > <img width="1909" height="943" alt="image" src="https://github.com/user-attachments/assets/b5833ad1-24d0-4264-8114-bc359b8bd3a8" />

   
   Terlihat bahwa semua kolom pada halaman Edit Produk dikosongkan. Ketika pengguna menekan tombol Simpan, aplikasi akan menampilkan pesan “Oops.. Kolom tidak boleh kosong.”. Pesan ini merupakan bagian dari validasi input yang bertujuan untuk memastikan bahwa semua data produk harus diisi terlebih dahulu sebelum dapat disimpan. Dengan adanya validasi ini, aplikasi dapat mencegah penyimpanan data yang tidak lengkap ke dalam database.
   >
   > <<img width="1907" height="944" alt="image" src="https://github.com/user-attachments/assets/ddc2b04e-30e9-4da4-bbac-d5d1ff4b093f" />

   
   Pada gambar ini terlihat bahwa pengguna memasukkan data yang tidak sesuai dengan format yang ditentukan. Pada kolom Nama Produk dan Kategori, pengguna mengisi dengan angka, padahal kedua kolom tersebut hanya boleh diisi dengan huruf. Oleh karena itu, aplikasi menampilkan pesan kesalahan “Nama produk harus berupa huruf” dan “Kategori harus berupa huruf” di bawah kolom input. Selain itu, pada kolom Harga pengguna memasukkan teks, padahal kolom harga hanya boleh diisi dengan angka. Karena itu aplikasi menampilkan pesan “Harga harus berupa angka.”. Validasi ini bertujuan untuk memastikan bahwa data yang dimasukkan pengguna sesuai dengan format yang benar sebelum data disimpan ke dalam database.
   >
   > <img width="1905" height="946" alt="image" src="https://github.com/user-attachments/assets/a5590758-94ba-47ca-be92-09a25f27f992" />



---

6. Pada tampilan ini, pengguna dapat menghapus produk dengan menekan ikon tempat sampah yang terdapat di sisi kanan setiap produk.
   >
   > ![WhatsApp Image 2026-03-13 at 11 43 48](https://github.com/user-attachments/assets/c7860d6d-1e45-48e4-80cb-4bed4c4b890f)


   Setelah ikon tersebut ditekan, aplikasi akan menampilkan dialog konfirmasi yang menanyakan apakah pengguna benar-benar ingin menghapus produk tersebut. Jika pengguna memilih Batal, maka proses penghapusan akan dibatalkan dan data produk tetap tersimpan. Namun jika pengguna memilih Hapus, maka produk akan dihapus dari daftar produk yang ada di aplikasi.
   >
   > <<img width="1905" height="948" alt="image" src="https://github.com/user-attachments/assets/71f6899e-235d-4215-9abd-4d1aecaeddef" />


   Setelah produk berhasil dihapus, aplikasi akan menampilkan notifikasi “Produk berhasil dihapus.” di bagian bawah layar sebagai tanda bahwa proses penghapusan telah berhasil dilakukan.
   >
   > <img width="1906" height="941" alt="image" src="https://github.com/user-attachments/assets/aa62bafc-7ebd-41ca-a36f-6eeb63a99607" />


   Setelah produk dihapus dari aplikasi, data tersebut juga akan langsung terhapus dari database Supabase. Sudah terlihat Face Wash tadi sudah hilang dari daftar produk di Supabase. Hal ini menunjukkan bahwa aplikasi terhubung secara langsung dengan database sehingga setiap perubahan data, seperti menambah, mengedit, maupun menghapus produk, akan otomatis diperbarui pada database.
   >
   > <img width="1249" height="775" alt="image" src="https://github.com/user-attachments/assets/8c18e5be-b1fd-4cd4-9a58-315fa65e2d60" />


---

7. Selanjutnya pengguna bisa keluar aplikasi dengan menekan ikon logout yang terdapat di bagian kanan atas halaman utama.
   >
   > ![WhatsApp Image 2026-03-13 at 11 47 49](https://github.com/user-attachments/assets/0c6f6764-f0cb-4e88-98e6-25ec3f320bfc)



   Setelah ikon tersebut ditekan, aplikasi akan menampilkan dialog konfirmasi logout. logout yang terdapat di bagian kanan atas halaman utama. Setelah ikon tersebut ditekan, aplikasi akan menampilkan dialog konfirmasi logout.
   >
   >  <img width="1909" height="943" alt="image" src="https://github.com/user-attachments/assets/d4809e07-7b9d-4251-b366-8d842ccf05ab" />


   Jika pengguna memilih Batal, maka proses logout akan dibatalkan dan pengguna tetap berada di halaman utama aplikasi. Namun jika pengguna memilih Logout, maka pengguna akan keluar dari aplikasi dan diarahkan kembali ke halaman Welcome.
   >
   > <img width="1906" height="944" alt="image" src="https://github.com/user-attachments/assets/dda4d161-b965-496a-b7e5-989248c47b6b" />

---

<p align="center">
💄 MINI PROJECT 2 PAB 💄 <br>
<em>Organize your beauty. Elevate your glow.</em> ✨
</p>
