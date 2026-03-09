# Laporan Praktikum #03 - Bahasa Pemrograman Dart - Bagian 2

## Identitas Mahasiswa

| Atribut | Nilai                        |
| ------- | -----                        |
| Nama    | Rachmad Zaki Setyawan        |
| NIM     | 244107060107                 |
| Kelas   | SIB-2D                       |

---

## Tugas Praktikum 

## Soal 1

1. Silakan selesaikan Praktikum 1 sampai 3, lalu dokumentasikan berupa screenshot hasil pekerjaan beserta penjelasannya!

Jawab:

### Praktikum 1 
Langkah 1
![Hasil Modifikasi Kode Program](/Pertemuan3/Praktikum1/langkah1.png)

Langkah 2
Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan!
Jawab

Kode yang kamu tulis error karena penulisan keyword if dan else di Dart harus huruf kecil semua. Bahasa Dart case-sensitive (membedakan huruf besar dan kecil). Error yang muncul dapat dilihat pada hasil berikut.

![Hasil Modifikasi Kode Program](/Pertemuan3/Praktikum1/hasil1.png)

Langkah 3
![Hasil Modifikasi Kode Program](/Pertemuan3/Praktikum1/langkah3.png)
Apa yang terjadi ? Jika terjadi error, silakan perbaiki namun tetap menggunakan if/else.
Jawab

Program mengalami error karena variabel test dideklarasikan dua kali dalam satu scope yang sama dan kondisi if (test) menggunakan tipe data String, padahal pernyataan if di Dart hanya dapat menggunakan nilai bertipe boolean (true atau false).

Perbaikannya adalah tidak mendeklarasikan variabel test dua kali dalam satu scope dan mengganti kondisi if agar menggunakan tipe data boolean (bool), bukan String.

![Hasil Modifikasi Kode Program](/Pertemuan3/Praktikum1/hasil3.png)

### Praktikum 2