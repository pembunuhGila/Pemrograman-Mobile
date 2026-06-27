# Pertemuan 10 — Master Plan (Dasar State dengan Model-View)

Rachmad Zaki Setyawan  
244107060107  
SIB 2D

## Hasil Akhir Praktikum

![Hasil Akhir Praktikum](hasil_praktikum.gif)

Aplikasi Master Plan adalah to-do list sederhana. User bisa tambah task baru pakai tombol `+`, ketik deskripsi tugas, dan centang kalau udah selesai. Keyboard otomatis nutup pas user scroll daftar tugas.

## Soal Praktikum

### 1. Jelaskan maksud dari langkah 4 pada praktikum tersebut! Mengapa dilakukan demikian?

Langkah 4 itu bikin file `data_layer.dart` yang isinya cuma `export 'plan.dart'` dan `export 'task.dart'`. Fungsinya sebagai "pintu masuk" buat semua model — jadi pas mau import model Plan atau Task, cukup import satu file ini aja gak perlu import satu-satu. Lebih rapi dan kalau nanti nambah model baru tinggal tambahin export di satu tempat.

### 2. Mengapa perlu variabel `plan` di langkah 6? Mengapa dibuat konstanta?

Variabel `plan` itu state utama dari halaman — nyimpen semua data rencana dan daftar tugas yang ditampilin di layar. Tiap ada perubahan (tambah task, edit, centang), variabel ini di-update lewat `setState()` biar UI ikut berubah.

Dibuat `const` karena nilai awalnya itu objek Plan kosong (belum ada task). Pakai `const` bikin Dart lebih hemat memori karena objek kosong itu cuma dibuat sekali pas compile dan bisa di-reuse.

### 3. Capture hasil dari Langkah 9 berupa GIF, jelaskan apa yang telah dibuat!

![Hasil Langkah 9](langkah9.gif)

Di langkah 9, kita bikin method `_buildTaskTile()` yang nampilin setiap task sebagai `ListTile`. Di dalamnya ada `Checkbox` buat centang task selesai/belum, dan `TextFormField` buat ngetik deskripsi task. Pas user centang atau ngetik, `setState()` dipanggil biar data dan tampilan langsung ke-update. Dengan langkah ini, app udah bisa tambah task, edit deskripsi, dan tandai selesai.

### 4. Apa kegunaan method pada Langkah 11 dan 13 dalam lifecycle state?

**Langkah 11 — `initState()`:** Method ini dipanggil sekali pas widget pertama kali dibuat. Di sini kita inisialisasi `ScrollController` dan pasang listener yang bikin keyboard otomatis nutup pas user scroll. `initState()` tempat yang tepat buat setup controller karena cuma perlu dilakukan sekali di awal.

**Langkah 13 — `dispose()`:** Method ini dipanggil sekali pas widget dihapus permanen dari layar. Di sini kita panggil `scrollController.dispose()` buat bersihin resource dan listener yang udah gak dipake. Kalau gak di-dispose, bakal terjadi memory leak — controller tetap nempel di memori padahal widget-nya udah gak ada.

Intinya: apa yang dibuat di `initState()` harus dibersihkan di `dispose()`.
