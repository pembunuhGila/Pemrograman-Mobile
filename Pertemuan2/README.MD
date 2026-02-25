# Laporan Praktikum #02 - Bahasa Pemrograman Dart - Bagian 1

## Identitas Mahasiswa

| Atribut | Nilai                        |
| ------- | -----                        |
| Nama    | Rachmad Zaki Setyawan        |
| NIM     | 244107060107                 |
| Kelas   | SIB-2D                       |

---

## Tugas Praktikum 2

## Soal 1

Modifikasilah kode pada baris 3 di VS Code atau Editor Code favorit Anda berikut ini agar mendapatkan keluaran (output) sesuai yang diminta!

Jawab:
Berikut adalah hasil modifikasi kode program yang menghasilkan output sesuai dengan yang diminta

![Hasil Modifikasi Kode Program](Pertemuan2.png)

## Soal 2

Mengapa sangat penting untuk memahami bahasa pemrograman Dart sebelum kita menggunakan framework Flutter ? Jelaskan!

Jawab:
Karena Bahasa dart adalah inti dari framework Flutter, Semua pengembangan framework Flutter melibatkan pengetahuan/fitur mendalam dengan bahasa Dart seperti Kode aplikasi, kode plugin, dan manajemen dependensi semuanya menggunakan bahasa Dart beserta fitur-fiturnya.

## Soal 3

Rangkumlah materi dari codelab ini menjadi poin-poin penting yang dapat Anda gunakan untuk membantu proses pengembangan aplikasi mobile menggunakan framework Flutter.

Jawab :
* Dart adalah bahasa inti yang digunakan untuk membangun aplikasi dengan Flutter.
* Dart bersifat modern, object-oriented (OOP), dan type-safe.
* Mendukung garbage collection untuk manajemen memori otomatis.
* Memiliki dua mode eksekusi: JIT (untuk development & hot reload) dan AOT (untuk performa maksimal saat release).
* Bersifat cross-platform (bisa untuk mobile, web, dan desktop).
* Memiliki sintaks yang mirip dengan C/Java sehingga mudah dipelajari.
* Mendukung berbagai operator (aritmatika, logika, relasional) untuk pengolahan data.
* Setiap program Dart dimulai dari fungsi `main()`.
* Memahami Dart sangat penting untuk menjadi developer Flutter yang produktif.

## Soal 4

Buatlah penjelasan dan contoh eksekusi kode tentang perbedaan Null Safety dan Late variabel !

Jawab:

## Null Safety
Null Safety adalah fitur Dart yang mencegah variabel memiliki nilai null secara tidak sengaja.
Secara default, variabel tidak boleh bernilai null kecuali kita menandainya dengan tanda ?.

Tujuan:
- Mengurangi error Null Pointer Exception
- Meningkatkan keamanan kode
- Bug bisa terdeteksi saat compile time

### Tanpa Null Safety

![Hasil](/Pertemuan2/NullSafety/without.png)

Akan error karena variabel nama belum diberi nilai. 
Lalu untuk mengatasinya kita ada 2 cara yaitu

### Dengan Nullable Type (?)

![Hasil](/Pertemuan2/NullSafety/with1.png)

Penjelasan:
String? artinya variabel boleh bernilai null. Program tetap berjalan dan mencetak null.

### Dengan Non-Nullable

![Hasil](/Pertemuan2/NullSafety/with2.png)

Aman karena sudah diberi nilai awal.

## Late Variable

Keyword late digunakan untuk menunda inisialisasi variabel, tetapi programmer berjanji bahwa variabel tersebut akan diisi sebelum digunakan.

Biasanya digunakan:
- Pada variabel yang tidak bisa langsung diinisialisasi
- Pada class (misalnya di Flutter)

### Dengan Late Variable

![Hasil](/Pertemuan2/LateVariable/LateVar.png)

Tidak error karena variabel diisi sebelum digunakan.

### Dengan Late Variable yang salah

![Hasil](/Pertemuan2/LateVariable/!LateVar.png)

Karena variabel belum diberi nilai saat dipanggil.

## Kesimpulan

1. Null Safety mencegah variabel memiliki nilai null secara tidak sengaja.
2. Late digunakan ketika variabel pasti akan diisi, tetapi tidak langsung saat deklarasi.
3. Null safety lebih ke keamanan tipe data, sedangkan late lebih ke waktu inisialisasi.