<h1 align="center">GlowUp 💄</h2>

<p align="center"><em>Organize your beauty. Elevate your glow.</em></p>

<p align="center">
  <img src="https://github.com/user-attachments/assets/4995b0e5-0e61-47c6-86ad-79eafdb80047" width="75%">
</p>

## Disusun Oleh 

| **Nama**                     | **NIM**     | **Kelas**            |
|------------------------------|------------|-------------------|
| Maifariza Aulia Dyas         | 2409116032 | Sistem Informasi A |

## Deskripsi Program

**GlowUp** adalah aplikasi mobile berbasis Flutter yang dibuat untuk membantu mencatat dan mengatur produk kosmetik dalam bentuk _checklist_.

Di aplikasi ini, pengguna bisa menambahkan produk kosmetik yang dimiliki, lalu menandainya dengan _checkbox_ sebagai penanda status produk. Ketika produk dicentang, tampilannya akan berubah warna sebagai indikator bahwa produk tersebut sudah ditandai. Selain itu, pengguna juga bisa mengedit data produk jika ada kesalahan atau ingin diperbarui, serta menghapus produk yang sudah tidak digunakan.

Aplikasi ini menerapkan fitur _Create_, _Read_, _Delete_, serta nilai tambah berupa _Update_ dan navigasi multi halaman.

---

## Struktur Folder & File Project


Struktur program ini mengikuti standar project Flutter seperti biasanya. Folder seperti android, ios, web, linux, macos, dan windows itu adalah folder bawaan dari Flutter untuk mendukung berbagai platform. Jadi di bagian itu saya tidak melakukan perubahan khusus, karena fungsinya memang untuk konfigurasi sistem sesuai platform yang digunakan.

Bagian yang benar-benar saya gunakan ada di dalam folder lib, karena di sanalah semua kode utama aplikasi saya tulis. File main.dart menjadi titik awal aplikasi dijalankan. Dari file ini, saya mengatur tampilan awal aplikasi, menampilkan halaman daftar produk, serta mengatur navigasi ke halaman tambah dan edit produk. Semua logika seperti menambah, mengedit, menghapus, dan mengubah status checkbox juga saya atur di bagian ini.

Selain itu, saya juga menggunakan folder assets, khususnya pada bagian fonts, untuk menyimpan font tambahan yang digunakan agar tampilan aplikasi terlihat lebih menarik dan sesuai dengan tema GlowUp. Font tersebut kemudian saya daftarkan di file pubspec.yaml supaya bisa digunakan di dalam aplikasi.

File pubspec.yaml sendiri saya gunakan untuk mengatur dependency serta mendaftarkan aset seperti font yang dipakai. Sedangkan file README.md saya gunakan untuk menuliskan dokumentasi project, mulai dari penjelasan fitur, alur aplikasi, widget yang digunakan, sampai hasil tampilan aplikasinya.

> <img width="181" height="525" alt="Screenshot 2026-02-24 230756" src="https://github.com/user-attachments/assets/60fd7a96-e5c8-4dd4-9624-b39749af4452" />

---

## Fitur Aplikasi

╰┈➤ Tambah Produk (_Create_)

Aplikasi menyediakan fitur untuk menambahkan data produk baru ke dalam sistem. Pengguna dapat menginput nama produk, kategori, dan harga melalui halaman form. Data yang berhasil disimpan akan langsung masuk ke dalam daftar produk dan tersimpan di dalam state aplikasi.

╰┈➤ Tampilkan Daftar Produk (_Read_)

Aplikasi mampu menampilkan seluruh data produk dalam bentuk daftar yang terstruktur. Setiap item menampilkan informasi utama berupa nama produk, kategori, dan harga. Tampilan daftar ini akan selalu diperbarui secara otomatis setiap kali terjadi perubahan data, seperti penambahan, pengeditan, atau penghapusan produk.

╰┈➤ Hapus Produk (_Delete_)

Aplikasi memungkinkan pengguna untuk menghapus data produk dari daftar. Ketika fitur ini digunakan, sistem akan menghapus data dari state dan memperbarui tampilan daftar secara langsung. Sebagai konfirmasi, aplikasi juga menampilkan notifikasi singkat bahwa proses penghapusan berhasil dilakukan.

╰┈➤ Tandai Status Produk (_Checkbox_)

Setiap produk dilengkapi dengan checkbox yang berfungsi sebagai penanda status. Saat checkbox diaktifkan, tampilan produk akan berubah warna sebagai indikator visual bahwa produk telah ditandai.

**🌟 Nilai Tambah**

╰┈➤ Edit Produk (_Update_)

Aplikasi menyediakan fitur untuk memperbarui data produk yang sudah ada. Data yang ingin diubah akan ditampilkan kembali dalam bentuk form dengan isi sebelumnya, sehingga pengguna dapat melakukan perubahan tanpa perlu menginput ulang dari awal. Setelah diperbarui, sistem akan langsung menampilkan data terbaru pada daftar produk.

╰┈➤ Navigasi Multi Halaman

Aplikasi ini menggunakan navigasi agar tampilan lebih rapi dan mudah digunakan. Halaman daftar produk dipisahkan dengan halaman form tambah atau edit produk. Jadi, pengguna dapat berpindah halaman saat ingin menambah atau mengedit data, lalu kembali lagi ke halaman daftar setelah selesai.

---

## Widget dan Komponen yang Digunakan

| **WIDGET** | **KETERANGAN** |
|--------|------------|
| StatelessWidget | Digunakan untuk struktur dasar aplikasi yang tidak membutuhkan perubahan state. |
| StatefulWidget | Digunakan pada HomePage dan FormPage karena halaman ini membutuhkan perubahan data (tambah, edit, hapus, centang produk). |
| Scaffold | Menyediakan struktur dasar seperti AppBar, body, dan FloatingActionButton. |
| AppBar | Digunakan untuk menampilkan judul aplikasi di bagian atas layar. |
| Text | Digunakan untuk menampilkan informasi seperti nama produk, kategori, dan harga. |
| TextField | Menggunakan controller untuk mengambil dan mengelola input pengguna. |
| ElevatedButton | Digunakan sebagai tombol aksi seperti tambah produk atau simpan data. |
| ListView | Digunakan untuk menampilkan daftar produk secara dinamis. |
| ListTile | Digunakan untuk menyusun isi setiap item produk agar lebih rapi dan terstruktur. |
| Card / Container | Digunakan untuk membungkus setiap produk dalam bentuk box agar tampil lebih clean dan terpisah. |
| Column & Row | Digunakan untuk mengatur tata letak widget secara vertikal dan horizontal. |
| Checkbox | Digunakan untuk menandai status produk, misalnya sudah tersedia atau belum. |
| IconButton | Digunakan sebagai tombol edit dan hapus pada setiap produk. |
| Navigator | Digunakan bersama MaterialPageRoute untuk berpindah halaman dan mengirim data kembali ke halaman sebelumnya. |
| setState() | Digunakan untuk memperbarui tampilan ketika data berubah, misalnya setelah menambah, mengupdate atau menghapus produk. |
| MaterialApp | Digunakan sebagai root widget aplikasi untuk mengatur tema, navigasi, dan struktur dasar aplikasi Flutter. |
| FloatingActionButton | Digunakan sebagai tombol aksi utama untuk menambahkan produk baru ke dalam daftar. |
| SnackBar | Digunakan untuk menampilkan notifikasi sementara kepada pengguna, misalnya ketika produk berhasil dihapus. |
| ScaffoldMessenger | Digunakan untuk menampilkan SnackBar dan mengelola pesan notifikasi pada halaman aplikasi. |

---

## ⋆˚꩜｡ Tampilan Aplikasi 

- **Halaman Daftar Produk (Home)**

  <img width="1919" height="1030" alt="Screenshot 2026-02-24 143537" src="https://github.com/user-attachments/assets/0e27c498-fdde-4abd-9267-82337f6b1c3e" />


- Halaman Tambah Produk

  <img width="1919" height="946" alt="image" src="https://github.com/user-attachments/assets/75716031-06d7-473c-8581-68575f7f218d" />


- Halaman Edit Produk

  <img width="1919" height="940" alt="image" src="https://github.com/user-attachments/assets/bedf7536-87d7-493d-9ee4-c83699d7a497" />


- Notifikasi SnackBar

  <img width="1919" height="948" alt="Screenshot 2026-02-24 145747" src="https://github.com/user-attachments/assets/06d9fe6b-71a8-4015-a5a1-c22299a3662e" />


- Checkbox (produk dicentang)

  <img width="1919" height="944" alt="Screenshot 2026-02-24 150005" src="https://github.com/user-attachments/assets/a7d20d10-f546-4a8c-b2a3-3f252893e3f9" />


---

## Alur Aplikasi

Aplikasi GlowUp ini dipakai untuk mengelola daftar produk kecantikan. Di dalamnya, pengguna bisa melihat daftar produk, menambah produk baru, mengedit produk, menghapus produk, dan menandai produk dengan checkbox.

1. Membuka aplikasi & melihat daftar produk

   Saat aplikasi dijalankan, pengguna akan langsung masuk ke halaman utama yang menampilkan daftar produk **GlowUp** yang sudah tersedia. Produk ditampilkan dalam bentuk list, yang berisi nama produk, kategori, dan harga.
   
   Jika produknya cukup banyak, pengguna bisa scroll ke bawah untuk melihat item lainnya. Halaman ini jadi halaman utama aplikasi, karena semua produk yang ditambahkan, diedit, atau dihapus akan langsung diperbarui dan terlihat di sini juga. Jadi bisa dibilang, semua aktivitas utama ada di halaman ini.

   <img width="1919" height="1030" alt="image" src="https://github.com/user-attachments/assets/5a52096d-0283-4cc2-9f6c-75c922dfbc99" />

---

2. Menambahkan produk baru

   Jika pengguna ingin menambahkan produk baru, cukup menekan tombol tambah (+) yang berada di pojok kanan bawah layar yang saya tandai lingkaran merah ini.

   <img width="1919" height="1029" alt="Screenshot 2026-02-24 143721" src="https://github.com/user-attachments/assets/351ebb89-483e-4185-99fe-a0bdc81dd2b9" />

   Setelah tombol tersebut ditekan, aplikasi akan membuka halaman form. Di halaman ini, pengguna diminta untuk mengisi nama produk, kategori, dan harga. Semua data harus diisi sesuai dengan produk yang ingin ditambahkan. Nah di sini saya mencoba menambahkan produk Cleansing Oil. Saya memasukkan nama produknya, memilih kategorinya, lalu mengisi harga sesuai yang diinginkan.

   <img width="1919" height="937" alt="image" src="https://github.com/user-attachments/assets/5deb615f-f086-4a63-99e0-ce4219070391" />

   Setelah semua data dirasa sudah benar, tinggal tekan tombol “Tambah”. Setelah disimpan, aplikasi akan kembali ke halaman utama dan produk yang baru saja ditambahkan langsung muncul di dalam daftar. Jadi perubahannya bisa langsung terlihat saat itu juga.

   <img width="1919" height="940" alt="image" src="https://github.com/user-attachments/assets/edc39319-f5b0-4c9a-93b1-9f5430afee5d" />

---

3. Mengedit produk

   Untuk mengubah data produk yang sudah ada, pengguna bisa menekan ikon edit (ikon pensil) yang ada di sebelah kanan produk yang ingin diubah. Di sini saya ingin mengedit produk Lip Balm, jadi saya klik tombol edit yang ada di kanan (yang ditandai warna merah).

   <img width="1919" height="944" alt="Screenshot 2026-02-24 144816" src="https://github.com/user-attachments/assets/82a7913c-72b9-4145-bb94-724e37ff527b" />

   Setelah itu, aplikasi akan membuka halaman form yang tampilannya sama seperti saat menambahkan produk, tetapi bedanya data sebelumnya sudah otomatis terisi. Jadi kita tidak perlu mengetik ulang dari awal, cukup mengubah bagian yang memang ingin diperbarui.

   <img width="1918" height="943" alt="image" src="https://github.com/user-attachments/assets/a6da44d0-412c-44b0-a225-f3037729ef9a" />

   Contohnya, di sini saya mengupdate harga Lip Balm yang awalnya 160.000 menjadi 180.000. Setelah selesai mengubah data, saya klik tombol “Simpan”.

   <img width="1919" height="934" alt="image" src="https://github.com/user-attachments/assets/93105179-2b73-48a9-9860-5a922c52be22" />
   
   Setelah itu, aplikasi akan kembali ke halaman utama dan data produk langsung diperbarui sesuai perubahan yang tadi dilakukan.

   <img width="1915" height="940" alt="image" src="https://github.com/user-attachments/assets/3945b5bf-3c70-4ec5-8401-eab3235408bc" />

---

4. Menghapus produk

   Jika pengguna ingin menghapus suatu produk dari daftar, cukup menekan ikon hapus (ikon tempat sampah) yang ada di sebelah kanan produk tersebut.

   <img width="1919" height="941" alt="Screenshot 2026-02-24 145558" src="https://github.com/user-attachments/assets/d1e6ae7b-35be-47b3-a433-e2f9af47ae31" />
   
   Begitu tombol tersebut ditekan, produk akan langsung dihapus dari daftar. Aplikasi juga akan menampilkan notifikasi singkat sebagai tanda bahwa penghapusan berhasil dilakukan. Setelah itu, daftar produk di halaman utama otomatis diperbarui tanpa perlu reload atau membuka ulang aplikasi.

   <img width="1919" height="948" alt="image" src="https://github.com/user-attachments/assets/a5312479-b67a-442e-8847-d4025e5146e8" />

---

5. Menandai produk dengan checkbox

   Pada setiap produk terdapat checkbox di sebelah kiri yang bisa digunakan untuk menandai status tertentu.
   Pengguna bisa mencentang checkbox tersebut sesuai kebutuhan, misalnya sebagai tanda bahwa produk sudah dicek atau sudah tersedia. Jika checkbox ditekan, tampilannya akan langsung berubah, dan perubahan itu langsung terlihat di halaman utama.
   Checkbox ini bisa diaktifkan atau dinonaktifkan kapan saja. Jadi kalau misalnya ingin membatalkan tanda, tinggal klik lagi saja.

   <img width="1919" height="944" alt="image" src="https://github.com/user-attachments/assets/71a17a47-95eb-4c85-9f0a-cb5a0424ada0" />



