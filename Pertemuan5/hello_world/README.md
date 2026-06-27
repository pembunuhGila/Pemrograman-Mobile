# Pertemuan 5 Widget Dasar Flutter

![Screenshot hello_world](images/01.png)

## Praktikum 3 — Menerapkan Widget Dasar

### Langkah 1: Text Widget
Buat folder `basic_widgets` di dalam folder `lib`, lalu buat file `text_widget.dart`. Di sini kita bikin widget teks sederhana yang nampilin nama kita dengan warna merah, ukuran font 14, dan posisi teks di tengah. Pakai `StatelessWidget` karena teksnya statis gak berubah-ubah. Setelah itu import file ini ke `main.dart` dan ganti widget text-nya.

![Screenshot text](images/langkah1text.png)

### Langkah 2: Image Widget
Buat file `image_widget.dart` di folder `basic_widgets`. Widget ini nampilin gambar logo dari file lokal pakai `AssetImage`. Supaya gambar bisa dimuat, kita perlu daftarkan file gambarnya di `pubspec.yaml` bagian `flutter > assets`. Jangan lupa taruh file gambarnya di folder project dan sesuaikan import di `main.dart`.

![Screenshot img](images/langkah2img.png)

## Praktikum 4 — Menerapkan Widget Material Design dan iOS Cupertino

### Langkah 1: Cupertino Button dan Loading Bar
Buat file `loading_cupertino.dart` di folder `basic_widgets`. Di sini kita bikin tampilan dengan gaya iOS (Cupertino) — ada `CupertinoButton` (tombol bergaya iOS) dan `CupertinoActivityIndicator` (loading spinner gaya iOS). Keduanya ditaruh di dalam `Column` supaya tersusun vertikal. Perlu import `package:flutter/cupertino.dart` selain material.

### Langkah 2: Floating Action Button (FAB)
Buat file `fab_widget.dart` di folder `basic_widgets`. FAB itu tombol bulat melayang yang biasanya ada di pojok kanan bawah layar. Di sini kita bikin FAB dengan ikon jempol (`Icons.thumb_up`) dan warna pink. FAB ditaruh di dalam `Scaffold` supaya posisinya otomatis di kanan bawah.

### Langkah 3: Scaffold Widget
Scaffold itu kerangka dasar halaman material design — dia nyediain tempat buat AppBar (bar atas), body (isi tengah), FAB (tombol melayang), dan BottomNavigationBar (bar bawah). Di sini kita bikin `StatefulWidget` karena ada state `_counter` yang berubah tiap tombol ditekan. Method `setState()` dipanggil buat kasih tau Flutter bahwa ada data yang berubah dan UI perlu di-rebuild. FAB-nya ditaruh di tengah bawah pakai `FloatingActionButtonLocation.centerDocked`.

![Screenshot img](images/ScaffoldWidget.png)

### Langkah 4: Dialog Widget
Dialog widget pada Flutter punya dua jenis: `AlertDialog` dan `SimpleDialog`. `AlertDialog` itu popup yang muncul di tengah layar, biasanya buat konfirmasi atau kasih info ke user. Cara munculinnya pakai fungsi `showDialog()`. Di sini kita bikin tombol "Show alert" — pas ditekan, muncul dialog dengan judul, pesan, dan tombol OK. Tombol OK dipasang `Navigator.pop(context)` buat nutup dialog-nya.

![Screenshot img](images/DialogWidget.png)

### Langkah 5: Input dan Selection Widget
Flutter nyediain banyak widget input, kayak Checkbox, Radio Button, Slider, Switch, dan TextField. Di sini kita coba `TextField` — kotak input buat user ngetik sesuatu. `obscureText: false` artinya teks yang diketik keliatan (bukan password). `InputDecoration` dipake buat kasih border kotak dan label "Nama" di dalamnya.

![Screenshot img](images/Input.png)

### Langkah 6: Date and Time Pickers
Date and Time Pickers termasuk kategori input widget. Pakai `StatefulWidget` karena tanggal yang dipilih user berubah-ubah (disimpan di variabel `selectedDate`). Pas tombol "Pilih Tanggal" ditekan, muncul kalender bawaan Flutter (`showDatePicker`). User pilih tanggal, lalu tanggal yang dipilih di-update pakai `setState()` dan langsung keliatan di layar.

![Screenshot img](images/Date.png)