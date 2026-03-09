# Laporan Praktikum #03 - Bahasa Pemrograman Dart - Bagian 2

## Identitas Mahasiswa

| Atribut | Nilai                        |
| ------- | -----                        |
| Nama    | Rachmad Zaki Setyawan        |
| NIM     | 244107060107                 |
| Kelas   | SIB-2D                       |

---

## Tugas Praktikum 

### Soal 1

1. Silakan selesaikan Praktikum 1 sampai 3, lalu dokumentasikan berupa screenshot hasil pekerjaan beserta penjelasannya!

Jawab:

#### - Praktikum 1 
- Langkah 1

Ketik atau salin kode program berikut ke dalam fungsi main().

![Hasil Modifikasi Kode Program](/Pertemuan3/Praktikum1/langkah1.png)

- Langkah 2

Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan!
Jawab

Kode yang kamu tulis error karena penulisan keyword if dan else di Dart harus huruf kecil semua. Bahasa Dart case-sensitive (membedakan huruf besar dan kecil). Error yang muncul dapat dilihat pada hasil berikut.

![Hasil Modifikasi Kode Program](/Pertemuan3/Praktikum1/hasil1.png)

- Langkah 3

![Hasil Modifikasi Kode Program](/Pertemuan3/Praktikum1/langkah3.png)
Apa yang terjadi ? Jika terjadi error, silakan perbaiki namun tetap menggunakan if/else.
Jawab

Program mengalami error karena variabel test dideklarasikan dua kali dalam satu scope yang sama dan kondisi if (test) menggunakan tipe data String, padahal pernyataan if di Dart hanya dapat menggunakan nilai bertipe boolean (true atau false).

Perbaikannya adalah tidak mendeklarasikan variabel test dua kali dalam satu scope dan mengganti kondisi if agar menggunakan tipe data boolean (bool), bukan String.

![Hasil Modifikasi Kode Program](/Pertemuan3/Praktikum1/hasil3.png)

#### - Praktikum 2
- Langkah 1

Ketik atau salin kode program berikut ke dalam fungsi main().

![Hasil Modifikasi Kode Program](/Pertemuan3/Praktikum2/langkah1.png)

- Langkah 2

Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! Lalu perbaiki jika terjadi error.
Jawab

![Hasil Modifikasi Kode Program](/Pertemuan3/Praktikum2/langkah2.png)

Saat kode dijalankan akan terjadi error karena variabel counter dipakai di dalam perulangan while, tetapi variabel tersebut belum dibuat atau belum diberi nilai awal, sehingga Dart tidak mengetahui nilai dari counter.

Perbaikannya adalah mendeklarasikan variabel counter terlebih dahulu dan memberi nilai awal sebelum digunakan pada perulangan.

![Hasil Modifikasi Kode Program](/Pertemuan3/Praktikum2/hasil2.png)

Setelah diperbaiki, program akan menampilkan angka 0 sampai 32 karena perulangan akan terus berjalan selama nilai counter masih kurang dari 33 dan setiap perulangan nilai counter akan bertambah 1.

- Langkah 3

Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.

![Hasil Modifikasi Kode Program](/Pertemuan3/Praktikum2/langkah3.png)

Jawab

![Hasil Modifikasi Kode Program](/Pertemuan3/Praktikum2/hasil3.png)

Ketika kode dijalankan tidak terjadi error. Program akan menjalankan perulangan while terlebih dahulu yang menampilkan nilai counter dari 0 sampai 32 karena kondisi yang digunakan adalah counter < 33. Setelah perulangan tersebut selesai, nilai counter menjadi 33. 

Kemudian program menjalankan perulangan do-while yang akan mencetak nilai counter dari 33 sampai 76, karena kondisi perulangannya adalah counter < 77. Perulangan do-while akan terus berjalan selama kondisi masih terpenuhi dan nilai counter selalu bertambah 1 setiap iterasi.