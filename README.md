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

<img width="202" height="456" alt="image" src="https://github.com/user-attachments/assets/ac920830-7539-48fa-947e-8736f6738e8c" />


Pada project ini, sebagian besar kode yang saya kerjakan terdapat di dalam folder minpro2_mobile. Folder ini berisi struktur project Flutter utama yang saya gunakan untuk mengembangkan aplikasi GlowUp.

<img width="328" height="789" alt="image" src="https://github.com/user-attachments/assets/e650f31c-bd4e-4fd2-98fa-5f9bef57c87c" />



Di dalam folder tersebut terdapat folder lib yang menjadi bagian paling penting, karena di sinilah seluruh kode utama aplikasi ditulis. File main.dart menjadi kode awal ketika aplikasi dijalankan. Dari file ini saya mengatur bagaimana aplikasi dimulai serta halaman pertama yang akan ditampilkan.

<img width="295" height="224" alt="image" src="https://github.com/user-attachments/assets/5315aaab-96cb-44bc-ae9f-5e294d83a80d" />

> Folder models yang saya gunakan untuk menyimpan model data aplikasi. Di dalamnya terdapat file product.dart yang berisi struktur data produk kosmetik yang digunakan dalam aplikasi, seperti nama produk, kategori, harga, serta status checkbox untuk menandai apakah produk sudah dipilih atau belum.
>
> <img width="254" height="50" alt="image" src="https://github.com/user-attachments/assets/2c423ea1-caa7-40b0-8cf0-6da4d844eeee" />

> Selain itu terdapat folder pages yang berisi halaman-halaman utama dalam aplikasi. Di dalam folder ini terdapat beberapa file seperti *welcome_page.dart*, *login_page.dart*, *register_page.dart*, *home_page.dart*, dan *form_page.dart*. File *welcome_page.dart* digunakan untuk menampilkan halaman awal ketika aplikasi pertama kali dibuka. Selanjutnya terdapat *login_page.dart* dan *register_page.dart* yang digunakan untuk proses login serta pendaftaran akun pengguna. Kemudian terdapat *home_page.dart* yang merupakan halaman utama dalam aplikasi, di mana halaman ini menampilkan daftar produk kosmetik yang dimiliki pengguna. Pada halaman ini pengguna juga dapat melihat daftar produk yang tersimpan, melakukan pencarian produk, serta menandai produk menggunakan checkbox. Sedangkan *form_page.dart* digunakan untuk menambahkan produk baru ataupun mengedit data produk yang sudah ada sebelumnya.
>
> <img width="246" height="152" alt="image" src="https://github.com/user-attachments/assets/54b8fb1c-9f32-49f6-9cb2-caaa6d4ff705" />

> File **main.dart** merupakan file utama dalam aplikasi Flutter yang dijalankan pertama kali. Pada file ini saya mengatur konfigurasi awal aplikasi, seperti menghubungkan aplikasi dengan Supabase serta mengatur navigasi ke halaman welcome, login, register, dan home.
>
> <img width="146" height="31" alt="image" src="https://github.com/user-attachments/assets/b8e63438-3715-4c25-9a20-a8c482805b58" />


Selain folder kode program, terdapat juga folder assets yang digunakan untuk menyimpan berbagai file tambahan yang digunakan dalam tampilan aplikasi. Di dalam folder ini terdapat folder *fonts* yang berisi font seperti *CloudLucent* dan *PlayfairDisplay* yang digunakan untuk mempercantik tampilan teks agar sesuai dengan tema aplikasi GlowUp. Selain itu terdapat folder *images* yang berisi gambar-gambar yang saya gunakan dalam aplikasi, seperti gambar pada halaman welcome serta gambar background yang digunakan pada beberapa halaman aplikasi.
>
> <img width="238" height="180" alt="image" src="https://github.com/user-attachments/assets/66132da9-5b54-48b8-b6a8-28a0e4eb2190" />

Selanjutnya terdapat file **pubspec.yaml** yang digunakan untuk mengatur dependency atau library yang digunakan dalam project Flutter. Pada file ini juga didaftarkan berbagai assets seperti font dan gambar agar dapat digunakan di dalam aplikasi.
>
> <img width="176" height="25" alt="image" src="https://github.com/user-attachments/assets/c6f2affd-aced-4fa7-a5b9-d7e81f876f67" />


Karena saya menerapkan nilai tambah dalam pengembangan aplikasi, konfigurasi penting seperti URL dan API Key Supabase saya simpan menggunakan file .env. Hal ini bertujuan untuk menjaga keamanan data sensitif agar tidak langsung dituliskan di dalam source code.
>
> <img width="145" height="29" alt="Screenshot 2026-03-12 091347" src="https://github.com/user-attachments/assets/ddfcacb0-e08e-4996-8383-95a79c4c8cea" />


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

  <img width="1903" height="943" alt="image" src="https://github.com/user-attachments/assets/ed360f9d-f729-4cc7-a999-c1ba5a2748af" />

- **Halaman Login**

  <img width="1903" height="946" alt="image" src="https://github.com/user-attachments/assets/866bb190-1f7a-4a72-ac38-27c53236df4f" />


- **Halaman Register**

  <img width="1906" height="946" alt="image" src="https://github.com/user-attachments/assets/3790ad6c-3552-4447-bb15-934b3d8e7eba" />


- **Halaman Daftar Produk (Home)**

  <img width="1904" height="946" alt="image" src="https://github.com/user-attachments/assets/599a2c88-416e-47a7-8dd3-4c65e07abbc7" />


- **Halaman Tambah Produk**

  <img width="1909" height="950" alt="image" src="https://github.com/user-attachments/assets/15b30943-c361-482a-8cf5-ca49a12fc9aa" />

  > Tombol Back
  >
  > <img width="1906" height="943" alt="image" src="https://github.com/user-attachments/assets/075e2f96-6cc7-4cb7-964d-fe9a6e3adfa0" />



- **Halaman Edit Produk**

  <img width="1906" height="943" alt="image" src="https://github.com/user-attachments/assets/e6f11ab2-725d-4f5b-8645-e0bc1550c813" />

  > Tombol Back
  >
  > <img width="1907" height="942" alt="image" src="https://github.com/user-attachments/assets/89bc387e-2843-424b-a774-5a8223ae658c" />


- **Tampilan Hapus Produk**

  <img width="1908" height="941" alt="image" src="https://github.com/user-attachments/assets/39c7a355-073e-43f7-b6af-66ee6c5c8f9e" />



- **Notifikasi SnackBar**

  a. Produk berhasil dihapus.
  >
  > <img width="1903" height="945" alt="image" src="https://github.com/user-attachments/assets/43484e8c-a0aa-4dd1-b29d-ab7ef5845df9" />



  b. Produk berhasil diperbarui.
  >
  > <img width="1903" height="947" alt="image" src="https://github.com/user-attachments/assets/cc3c5c18-583c-46c6-8746-02a39dcbbe5d" />



  c. Produk berhasil ditambahkan.
  >
  > <img width="1905" height="943" alt="image" src="https://github.com/user-attachments/assets/489d5f17-ff38-4095-b4a2-ec80857e2b9d" />



- **Checkbox (produk dicentang)**

  <img width="1907" height="942" alt="image" src="https://github.com/user-attachments/assets/f6bc60ec-6f61-4741-8f9f-0949a958faa5" />



- **Back**

  <img width="1898" height="943" alt="image" src="https://github.com/user-attachments/assets/757cb2d1-9dae-4475-a84f-25e4f5af4198" />


- **Logout**

  <img width="1907" height="943" alt="image" src="https://github.com/user-attachments/assets/d2ae8e5a-b79e-474f-9308-b24ecf02ed7a" />

---

## Validasi Input pada Aplikasi

1. Halaman Login

   a. Validasi Email
   > Email yang digunakan harus menggunakan domain @gmail.com.
   > 
   > <img width="459" height="88" alt="image" src="https://github.com/user-attachments/assets/bf808c70-2bad-4cbf-a0c0-bf359daefc22" />

   
   b. Validasi Password
   > Password minimal harus terdiri dari 8 karakter.
   > 
   > <img width="452" height="89" alt="image" src="https://github.com/user-attachments/assets/2cd7ca5c-8f38-4d22-a090-1e4c4c252969" />

   
   c. Validasi Password
   > Email atau password yang dimasukkan tidak sesuai dengan data yang tersimpan di sistem
   > 
   > <img width="462" height="196" alt="image" src="https://github.com/user-attachments/assets/703fde2f-8a32-43d9-9ce7-9e33a06befaf" />

   

2. Halaman Register

   a. Validasi Email
   > Email yang digunakan harus menggunakan domain @gmail.com.
   > 
   > <img width="455" height="93" alt="image" src="https://github.com/user-attachments/assets/08bafbdf-9133-47e3-b77b-d6911d2dbb35" />

   
   b. Validasi Password
   > Password minimal harus terdiri dari 8 karakter.
   > 
   > <img width="460" height="82" alt="image" src="https://github.com/user-attachments/assets/45d0985c-904e-4d87-bf58-e401ec23eb92" />

   
   c. Validasi Konfirmasi Password
   > Password dan konfirmasi password harus sama sebelum akun dapat dibuat.
   > 
   > <img width="460" height="251" alt="image" src="https://github.com/user-attachments/assets/b4f05bcd-7c3c-47da-b8c1-cc46c785da95" />


   
3. Halaman Form Produk (Tambah / Edit Produk)

   a. Validasi Kolom Kosong
   > Jika ada kolom yang belum diisi, aplikasi akan menampilkan pesan:
   >
   > <img width="555" height="263" alt="image" src="https://github.com/user-attachments/assets/63580d80-d2b2-4002-8411-b536ee1ca6db" />

   b. Validasi Nama Produk
   > Nama produk hanya boleh berisi huruf. Jika tidak sesuai maka muncul pesan:
   >
   > <img width="562" height="246" alt="image" src="https://github.com/user-attachments/assets/08c2c03b-a144-4d9f-a782-0510d1a3043b" />

   c. Validasi Kategori Produk
   > Kategori produk juga hanya boleh berisi huruf.
   >
   > <img width="564" height="252" alt="image" src="https://github.com/user-attachments/assets/555bf4bf-9dc2-4c02-a50e-6aea6412a77b" />

   d. Validasi Harga Produk
   > Harga produk hanya boleh berupa angka.
   >
   > <img width="561" height="246" alt="image" src="https://github.com/user-attachments/assets/8c8cab60-0fc5-4084-8e2f-419d077f3aee" />

   e. Validasi Tidak Ada Perubahan
   > Jika pengguna menekan tombol simpan tanpa mengubah data apa pun saat edit produk, maka aplikasi akan menampilkan pesan:
   >
   > <img width="443" height="40" alt="image" src="https://github.com/user-attachments/assets/5c23b2ed-5c9d-435d-86c5-be5c26d8580f" />


---

## ★ Alur Aplikasi

1. Saat aplikasi GlowUp pertama kali dijalankan, pengguna akan diarahkan ke halaman Welcome. Pada halaman ini ditampilkan tampilan pembuka aplikasi yang berisi judul aplikasi, tagline, serta tombol Start. Tombol tersebut digunakan oleh pengguna untuk melanjutkan ke halaman berikutnya.
   >
   > <img width="1903" height="943" alt="image" src="https://github.com/user-attachments/assets/ed360f9d-f729-4cc7-a999-c1ba5a2748af" />

---


2. Setelah menekan tombol Start, pengguna akan diarahkan ke halaman Login. Nah di halaman ini pengguna diminta untuk memasukkan email dan password agar dapat masuk ke dalam aplikasi.
   >
   > <img width="1903" height="946" alt="image" src="https://github.com/user-attachments/assets/866bb190-1f7a-4a72-ac38-27c53236df4f" />
   
   Pada contoh di bawah ini, saya mencoba memasukkan email zahra@yahoo.com dan password yang kurang dari 8 karakter. Karena email yang dimasukkan tidak menggunakan domain @gmail.com serta password belum memenuhi minimal 8 karakter, maka aplikasi menampilkan pesan validasi bahwa email harus menggunakan @gmail.com dan password harus memiliki minimal 8 karakter.
   >
   > <img width="1905" height="947" alt="image" src="https://github.com/user-attachments/assets/9afe8957-3729-4cf7-8b79-4e4d29720189" />


   Jika belum memiliki akun, pengguna dapat memilih menu Register yang tersedia pada halaman Login. Menu tersebut akan mengarahkan pengguna ke halaman pendaftaran akun. Pada halaman Register, pengguna dapat membuat akun baru dengan mengisi email, password, dan confirm password. Pada halaman ini terdapat beberapa validasi input untuk memastikan data yang dimasukkan sesuai. Email harus menggunakan domain @gmail.com, password harus memiliki minimal 8 karakter, dan kolom confirm password harus sama dengan password yang telah dimasukkan. Jika data yang diisi tidak sesuai, maka aplikasi akan menampilkan pesan kesalahan pada kolom input seperti pada gambar di bawah ini.
   >
   > <img width="1906" height="947" alt="image" src="https://github.com/user-attachments/assets/405e46bd-8d28-4476-b851-f1fb75920a17" />
   
   Saya mencoba melakukan pendaftaran menggunakan email yang sudah pernah terdaftar sebelumnya. Karena akun dengan email tersebut sudah ada di sistem, maka proses pendaftaran tidak dapat dilakukan. Aplikasi kemudian menampilkan notifikasi di bagian bawah layar yang menyatakan bahwa email sudah terdaftar dan pengguna diminta untuk melakukan login saja. Hal ini bertujuan untuk mencegah pembuatan akun dengan email yang sama lebih dari satu kali.
   >
   > <img width="1909" height="946" alt="image" src="https://github.com/user-attachments/assets/28f51980-3417-4b46-9e8a-beb97355b556" />
   
   Pada gambar di bawah ini ditampilkan tampilan notifikasi ketika pengguna berhasil melakukan login. Setelah email dan password yang dimasukkan sesuai, aplikasi akan menampilkan dialog Selamat Datang sebagai konfirmasi bahwa proses login berhasil. Pengguna kemudian dapat menekan tombol Masuk GlowUp untuk melanjutkan ke halaman utama aplikasi dan mulai mengelola koleksi produk beauty yang dimiliki.
   >
   > <img width="1909" height="945" alt="image" src="https://github.com/user-attachments/assets/9fa35570-d6c1-4e6b-b731-bb647af94f0e" />

   
---
  
3. Setelah proses login berhasil, pengguna akan diarahkan ke halaman utama (Home Page). Pada halaman ini ditampilkan daftar produk kosmetik yang telah disimpan. Setiap produk menampilkan informasi seperti nama produk, kategori, dan harga.

   Di sini juga terdapat fitur checkbox pada setiap produk yang dapat digunakan untuk menandai produk yang dipilih oleh pengguna. Ketika checkbox dicentang, maka produk tersebut akan dianggap sebagai produk yang telah dipilih. Tampilan produk juga akan berubah menjadi berwarna pink sebagai indikator visual bahwa produk tersebut sudah dipilih.
   >
   > <img width="1904" height="946" alt="image" src="https://github.com/user-attachments/assets/599a2c88-416e-47a7-8dd3-4c65e07abbc7" />

   Pada bagian atas halaman utama terdapat progress bar yang menunjukkan jumlah produk yang telah dipilih dibandingkan dengan total produk yang tersedia. Progress bar ini membantu pengguna melihat perkembangan koleksi produk yang sudah ditandai. Jumlah produk yang telah dicentang akan mempengaruhi progress bar yang terdapat di bagian atas halaman. Progress bar ini menunjukkan perbandingan antara jumlah produk yang dipilih dengan total produk yang tersedia, sehingga pengguna dapat melihat perkembangan koleksi produk yang sudah dipilih dengan lebih mudah.
   >
   > <img width="1913" height="250" alt="image" src="https://github.com/user-attachments/assets/b0d78788-5246-481d-8dd3-2d099e93fefc" />

   Pada halaman utama juga terdapat fitur pencarian produk yang dapat digunakan untuk membantu pengguna menemukan produk tertentu dengan lebih cepat. Pengguna dapat mengetikkan nama produk pada kolom pencarian yang tersedia di bagian atas daftar produk. Setelah kata kunci dimasukkan, aplikasi akan secara otomatis menampilkan produk yang sesuai dengan kata kunci tersebut. Disini saya mencoba mencari Sunscreen dan terlihat di bawah sudah ada.
   >
   > <img width="1909" height="947" alt="image" src="https://github.com/user-attachments/assets/f6f7a814-511a-465f-be77-d8a22ab323c8" />

   Jika produk yang dicari tidak ditemukan, maka aplikasi akan menampilkan tampilan informasi di bagian tengah layar dengan pesan “Produk tidak ditemukan”. Pada tampilan ini juga terdapat tombol Reset Pencarian yang dapat digunakan untuk menghapus kata kunci pencarian sehingga daftar produk dapat ditampilkan kembali seperti semula.
   >
   > <img width="1906" height="946" alt="image" src="https://github.com/user-attachments/assets/6bae3d34-297d-448a-9ebe-7aa010904fbc" />

   Selain fitur pencarian, aplikasi juga menyediakan fitur filter kategori yang membantu pengguna melihat produk berdasarkan jenisnya. Filter kategori ditampilkan dalam bentuk beberapa tombol seperti All, Skincare, Makeup, Parfum, Bodycare, dan Haircare. Disini saya menggunakan filter untuk melihat barang-barang dengan kategori Makeup.
   >
   > <img width="1905" height="943" alt="image" src="https://github.com/user-attachments/assets/1997cc9e-f308-4d86-b79a-593bf88a7b8d" />

---

4. Kita juga bisa menambahkan data produk baru melalui tombol tambah (+) yang terdapat di bagian kanan bawah halaman. Ketika tombol tersebut ditekan, pengguna akan diarahkan ke halaman form tambah produk.
   >
   > <img width="1600" height="791" alt="image" src="https://github.com/user-attachments/assets/b9945867-4bd3-4dcb-b687-30ac6a64dc84" />

   Pada halaman ini pengguna diminta untuk mengisi beberapa informasi seperti nama produk, kategori, dan harga. Setelah semua data diisi dengan benar, pengguna dapat menekan tombol Tambah untuk menyimpan produk ke dalam daftar. 
   >
   > <img width="1904" height="944" alt="image" src="https://github.com/user-attachments/assets/0bc673d4-9fe5-42f8-8522-73fe4e36edb9" />
   
   Produk yang berhasil ditambahkan akan langsung muncul notifikasi bahwa produk sudah berhasil ditambahkan dan ada muncul di daftar produk.
   >
   > <img width="1905" height="943" alt="image" src="https://github.com/user-attachments/assets/489d5f17-ff38-4095-b4a2-ec80857e2b9d" />
   
   Pada gambar di bawah terlihat bahwa produk Face Wash yang kita tambahkan tadi akan muncul secara otomatis di tabel products pada Supabase. Data tersebut tersimpan secara dinamis di database sehingga setiap produk yang ditambahkan dari aplikasi akan langsung tercatat di Supabase beserta informasi seperti nama produk, kategori, harga, dan status checkbox.
   >
   > <img width="1275" height="107" alt="image" src="https://github.com/user-attachments/assets/b49d50cd-b230-460a-bd7e-f8077146b032" />
   
   **Validasi Input Halaman Tambah Produk**
   
   Nah gambar dibawah ini ada validasi input pada halaman Tambah Produk. Jika pengguna memasukkan data yang tidak sesuai, maka aplikasi akan menampilkan pesan kesalahan pada kolom input. Pada contoh tersebut, pengguna memasukkan angka pada kolom nama produk dan kategori, sehingga muncul pesan bahwa nama produk dan kategori harus berupa huruf. Selain itu, pada kolom harga pengguna memasukkan teks yang bukan angka, sehingga aplikasi menampilkan pesan bahwa harga harus berupa angka.
   >
   > <img width="1909" height="943" alt="image" src="https://github.com/user-attachments/assets/53aa4992-ac25-497e-97fb-a767b650ccd6" />

   Di sini kolom harus diisi oleh pengguna. Jika pengguna mencoba menambahkan produk tanpa mengisi data pada kolom yang tersedia, maka aplikasi akan menampilkan pesan “Oops.. Kolom tidak boleh kosong.”.
   >
   > <img width="1905" height="942" alt="image" src="https://github.com/user-attachments/assets/7139ca11-7ba9-4f3a-bfbc-387565333b39" />


---

5. Pengguna juga bisa mengedit data produk yang sudah ada. Fitur ini dapat digunakan dengan menekan ikon edit (pensil) yang terdapat pada setiap produk di halaman utama. Setelah tombol tersebut ditekan, pengguna akan diarahkan ke halaman Edit Produk.
   >
   > <img width="1599" height="786" alt="image" src="https://github.com/user-attachments/assets/e164e75d-b863-4933-9c37-fced9c61bbcb" />

   Pada halaman ini, data produk yang sebelumnya sudah tersimpan seperti nama produk, kategori, dan harga akan otomatis muncul pada kolom input. Pengguna dapat mengubah data tersebut sesuai kebutuhan, kemudian menekan tombol Simpan untuk memperbarui data produk.
   >
   > <img width="1905" height="945" alt="image" src="https://github.com/user-attachments/assets/42a3161d-fdb2-4c59-9014-64ac832b3996" />


   Pada gambar di bawah ini saya mengubah harga produk Face Wash yang sebelumnya Rp 75.000 menjadi Rp 90.000. Setelah perubahan dilakukan, pengguna dapat menekan tombol Simpan untuk memperbarui data produk. 
   >
   > <img width="1908" height="943" alt="image" src="https://github.com/user-attachments/assets/b97e5e3c-e06c-4366-9951-6210195d2dd9" />
   
   Produk yang berhasil diperbarui akan langsung muncul notifikasi bahwa produk sudah berhasil diperbarui dan langsung teubah di daftar produk.
   >
   > <img width="1916" height="942" alt="image" src="https://github.com/user-attachments/assets/39e18953-ed9e-4020-ba83-da01e157b51a" />

   
   Setelah produk diedit pada aplikasi, data tersebut juga langsung diperbarui di database Supabase. Pada gambar di atas terlihat bahwa harga Face Wash sudah berubah menjadi 90.000, sesuai dengan perubahan yang dilakukan pada aplikasi.
   >
   > <img width="992" height="67" alt="Screenshot 2026-03-11 150627" src="https://github.com/user-attachments/assets/79968006-ab7f-4c15-83fc-880dfbb10c4d" />

   **Validasi Input**
   
   Pada gambar ini, pengguna membuka halaman Edit Produk tetapi tidak melakukan perubahan pada data yang sudah ada. Ketika tombol Simpan ditekan tanpa mengubah data, aplikasi akan menampilkan notifikasi di bagian bawah layar yang menunjukkan bahwa tidak ada perubahan pada produk. Hal ini memberi tahu pengguna bahwa data yang disimpan masih sama sehingga tidak perlu diperbarui di database.
   >
   > <img width="1907" height="950" alt="Screenshot 2026-03-11 160102" src="https://github.com/user-attachments/assets/fd0284ce-3fd2-47d0-bc66-5e0675bc2749" />
   
   Terlihat bahwa semua kolom pada halaman Edit Produk dikosongkan. Ketika pengguna menekan tombol Simpan, aplikasi akan menampilkan pesan “Oops.. Kolom tidak boleh kosong.”. Pesan ini merupakan bagian dari validasi input yang bertujuan untuk memastikan bahwa semua data produk harus diisi terlebih dahulu sebelum dapat disimpan. Dengan adanya validasi ini, aplikasi dapat mencegah penyimpanan data yang tidak lengkap ke dalam database.
   >
   > <img width="1906" height="941" alt="Screenshot 2026-03-11 160217" src="https://github.com/user-attachments/assets/53aa7c10-3a9a-41b2-b178-fa1b30313944" />
   
   Pada gambar ini terlihat bahwa pengguna memasukkan data yang tidak sesuai dengan format yang ditentukan. Pada kolom Nama Produk dan Kategori, pengguna mengisi dengan angka, padahal kedua kolom tersebut hanya boleh diisi dengan huruf. Oleh karena itu, aplikasi menampilkan pesan kesalahan “Nama produk harus berupa huruf” dan “Kategori harus berupa huruf” di bawah kolom input. Selain itu, pada kolom Harga pengguna memasukkan teks, padahal kolom harga hanya boleh diisi dengan angka. Karena itu aplikasi menampilkan pesan “Harga harus berupa angka.”. Validasi ini bertujuan untuk memastikan bahwa data yang dimasukkan pengguna sesuai dengan format yang benar sebelum data disimpan ke dalam database.
   >
   > <img width="1904" height="943" alt="image" src="https://github.com/user-attachments/assets/389b93b3-608a-4bd7-bfd2-24543305e968" />


---

6. Pada tampilan ini, pengguna dapat menghapus produk dengan menekan ikon tempat sampah yang terdapat di sisi kanan setiap produk.
   >
   > <img width="1599" height="786" alt="image" src="https://github.com/user-attachments/assets/53c1c780-5eee-404c-8cf3-cad53930b8f9" />

   Setelah ikon tersebut ditekan, aplikasi akan menampilkan dialog konfirmasi yang menanyakan apakah pengguna benar-benar ingin menghapus produk tersebut. Jika pengguna memilih Batal, maka proses penghapusan akan dibatalkan dan data produk tetap tersimpan. Namun jika pengguna memilih Hapus, maka produk akan dihapus dari daftar produk yang ada di aplikasi.
   >
   > <img width="1906" height="936" alt="image" src="https://github.com/user-attachments/assets/9e880219-4734-4924-9ba7-65f10ad558f8" />

   Setelah produk berhasil dihapus, aplikasi akan menampilkan notifikasi “Produk berhasil dihapus.” di bagian bawah layar sebagai tanda bahwa proses penghapusan telah berhasil dilakukan.
   >
   > <img width="1907" height="944" alt="image" src="https://github.com/user-attachments/assets/c1419f0b-04d1-43f9-be83-1e77a420ecc6" />

   Setelah produk dihapus dari aplikasi, data tersebut juga akan langsung terhapus dari database Supabase. Hal ini menunjukkan bahwa aplikasi terhubung secara langsung dengan database sehingga setiap perubahan data, seperti menambah, mengedit, maupun menghapus produk, akan otomatis diperbarui pada database.
   >
   > <img width="1295" height="715" alt="image" src="https://github.com/user-attachments/assets/f92134c4-8d0c-4f41-9d71-3d49de55af19" />

---

7. Selanjutnya pengguna bisa keluar aplikasi dengan menekan ikon logout yang terdapat di bagian kanan atas halaman utama.
   >
   > <img width="1599" height="783" alt="image" src="https://github.com/user-attachments/assets/71b9575f-afa8-425b-b740-43af1816edfd" />
   
   Setelah ikon tersebut ditekan, aplikasi akan menampilkan dialog konfirmasi logout. logout yang terdapat di bagian kanan atas halaman utama. Setelah ikon tersebut ditekan, aplikasi akan menampilkan dialog konfirmasi logout.
   >
   >  <img width="1908" height="944" alt="image" src="https://github.com/user-attachments/assets/b5fd0907-49c8-4b8a-9c07-d48a424284f5" />

   Jika pengguna memilih Batal, maka proses logout akan dibatalkan dan pengguna tetap berada di halaman utama aplikasi. Namun jika pengguna memilih Logout, maka pengguna akan keluar dari aplikasi dan diarahkan kembali ke halaman Welcome.
   >
   > <img width="1903" height="943" alt="image" src="https://github.com/user-attachments/assets/ed360f9d-f729-4cc7-a999-c1ba5a2748af" />


---

<p align="center">
💄 MINI PROJECT 2 PAB 💄 <br>
<em>Organize your beauty. Elevate your glow.</em> ✨
</p>
