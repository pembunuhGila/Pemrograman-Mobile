# Laporan Praktikum #04 - Bahasa Pemrograman Dart - Bagian 3

## Identitas Mahasiswa

| Atribut | Nilai                        |
| ------- | -----                        |
| Nama    | Rachmad Zaki Setyawan        |
| NIM     | 244107060107                 |
| Kelas   | SIB-2D                       |

---

## Tugas Praktikum 

#### - Praktikum 1 

- Langkah 1

Ketik atau salin kode program berikut ke dalam void main().

- Langkah 2

Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan!
Jawab

Saat kode dijalankan, program membuat sebuah list yang berisi tiga angka yaitu [1, 2, 3]. Program kemudian mengecek apakah panjang list benar-benar 3 dan apakah nilai pada index ke-1 adalah 2 menggunakan assert. Setelah itu program menampilkan panjang list dan nilai pada index tersebut. Selanjutnya nilai pada index ke-1 diubah menjadi 1, sehingga saat dicetak kembali nilai yang muncul adalah 1.

- Langkah 3

Ubah kode pada langkah 1 menjadi variabel final yang mempunyai index = 5 dengan default value = null. Isilah nama dan NIM Anda pada elemen index ke-1 dan ke-2. Lalu print dan capture hasilnya.

Apa yang terjadi ? Jika terjadi error, silakan perbaiki.

Indeks 0, 3, dan 4 masih bernilai `null` sebagai nilai awal, sementara indeks 1 berisi "Rachmad Zaki Setyawan" dan indeks 2 berisi "244107060107", di mana `print(list)` menampilkan seluruh isi array, sedangkan `print(list[1])` dan `print(list[2])` hanya menampilkan elemen pada indeks tertentu.

#### - Praktikum 2

- Langkah 2

Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! Lalu perbaiki jika terjadi error.
Jawab

Kode berjalan sukses tanpa error. Set halogens berhasil dibuat dengan 5 elemen unik dan urutannya acak karena sifat Set yang tidak terurut. Tidak perlu perbaikan apapun.

- Langkah 3

Apa yang terjadi ? Jika terjadi error, silakan perbaiki namun tetap menggunakan ketiga variabel tersebut. Tambahkan elemen nama dan NIM Anda pada kedua variabel Set tersebut dengan dua fungsi berbeda yaitu .add() dan .addAll(). Untuk variabel Map dihapus, nanti kita coba di praktikum selanjutnya.

Dokumentasikan code dan hasil di console, lalu buat laporannya.

Jawab

![Hasil Modifikasi Kode Program](/Pertemuan4/Praktikum2/2.1.png)
![Hasil Modifikasi Kode Program](/Pertemuan4/Praktikum2/2.2.png)
![Hasil Modifikasi Kode Program](/Pertemuan4/Praktikum2/2.3.png)

Kode tersebut membuat struktur data Set untuk menyimpan data tanpa duplikasi, di mana names1 menggunakan metode .add() untuk menambahkan elemen satu per satu, sedangkan names2 menggunakan .addAll() untuk menambahkan beberapa elemen sekaligus dalam bentuk list, sementara variabel names3 dihapus karena secara default {} akan dianggap sebagai Map, bukan Set.   

#### - Praktikum 3

- Langkah 2

Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! Lalu perbaiki jika terjadi error.
Jawab

Kode berjalan sukses tanpa eror.

- Langkah 3

Tambahkan kode program berikut di dalam for-loop, lalu coba eksekusi (Run) kode Anda.

![Hasil Modifikasi Kode Program](/Pertemuan4/Praktikum3/3.2.png.png)

Apa yang terjadi ? Jika terjadi error, silakan perbaiki.

Tambahkan elemen nama dan NIM Anda pada tiap variabel di atas (gifts, nobleGases, mhs1, dan mhs2). Dokumentasikan hasilnya dan buat laporannya!

Jawab

Program tersebut berhasil dijalankan tanpa error dan menampilkan isi dari dua Map, yaitu gifts dan nobleGases. Map gifts berisi pasangan key bertipe String dengan value campuran (String dan integer), sedangkan nobleGases berisi key integer dengan value juga campuran. Setelah itu, kode membuat Map baru (mhs1 dan mhs2), tetapi tidak digunakan lebih lanjut. Perubahan nilai yang dilakukan tetap terjadi pada Map awal

Menambahkan nama dan nim
![alt text](/Pertemuan4/Praktikum3/3.3.png)
![alt text](/Pertemuan4/Praktikum3/output3.png)

#### - Praktikum 4

- Langkah 2

Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! Lalu perbaiki jika terjadi error.
Jawab

![alt text](/Pertemuan4/Praktikum4/4.1.png)

Program ini membuat dua list. list berisi angka 1, 2, dan 3. Lalu list2 dibuat dengan menambahkan angka 0 di depan, dan isi dari list dimasukkan menggunakan spread operator (...). Jadi isi list2 adalah gabungan dari 0 dan semua isi list. Panjang list2 jadi 4 karena ada 4 elemen.

- Langkah 3

Apa yang terjadi ? Jika terjadi error, silakan perbaiki.

Tambahkan variabel list berisi NIM Anda menggunakan Spread Operators. Dokumentasikan hasilnya dan buat laporannya!

Jawab

 Di sini list berisi nilai null di dalamnya. Saat dimasukkan ke list3, digunakan ...?list. Tanda ...? ini artinya spread operator yang aman terhadap null. Jadi kalau list itu null, program tidak error. Tapi karena list di sini tidak null (hanya isinya ada null), maka semua isi tetap dimasukkan ke list3. Hasilnya list3 berisi 0, 1, 2, dan null dengan panjang 4.

![Hasil Modifikasi Kode Program](/Pertemuan4/Praktikum4/4.2.png)

Menambahkan nama dan nim
![alt text](/Pertemuan4/Praktikum4/4.3.png)

- Langkah 4

Apa yang terjadi ? Jika terjadi error, silakan perbaiki.

Apa yang terjadi ? Jika terjadi error, silakan perbaiki. Tunjukkan hasilnya jika variabel login mempunyai kondisi lain

Jawab

 Di sini list berisi nilai null di dalamnya. Saat dimasukkan ke list3, digunakan ...?list. Tanda ...? ini artinya spread operator yang aman terhadap null. Jadi kalau list itu null, program tidak error. Tapi karena list di sini tidak null (hanya isinya ada null), maka semua isi tetap dimasukkan ke list3. Hasilnya list3 berisi 0, 1, 2, dan null dengan panjang 4.

![Hasil Modifikasi Kode Program](/Pertemuan4/Praktikum4/4.2.png)

Menambahkan nama dan nim
![alt text](/Pertemuan4/Praktikum4/4.3.png)

- Langkah 3

Apa yang terjadi ? Jika terjadi error, silakan perbaiki.

Tambahkan variabel list berisi NIM Anda menggunakan Spread Operators. Dokumentasikan hasilnya dan buat laporannya!

Jawab

 Di sini list berisi nilai null di dalamnya. Saat dimasukkan ke list3, digunakan ...?list. Tanda ...? ini artinya spread operator yang aman terhadap null. Jadi kalau list itu null, program tidak error. Tapi karena list di sini tidak null (hanya isinya ada null), maka semua isi tetap dimasukkan ke list3. Hasilnya list3 berisi 0, 1, 2, dan null dengan panjang 4.

![Hasil Modifikasi Kode Program](/Pertemuan4/Praktikum4/4.2.png)

Menambahkan nama dan nim
![alt text](/Pertemuan4/Praktikum4/4.3.png)

- Langkah 3

Apa yang terjadi ? Jika terjadi error, silakan perbaiki.

Tambahkan variabel list berisi NIM Anda menggunakan Spread Operators. Dokumentasikan hasilnya dan buat laporannya!

Jawab

 Di sini list berisi nilai null di dalamnya. Saat dimasukkan ke list3, digunakan ...?list. Tanda ...? ini artinya spread operator yang aman terhadap null. Jadi kalau list itu null, program tidak error. Tapi karena list di sini tidak null (hanya isinya ada null), maka semua isi tetap dimasukkan ke list3. Hasilnya list3 berisi 0, 1, 2, dan null dengan panjang 4.

![Hasil Modifikasi Kode Program](/Pertemuan4/Praktikum4/4.2.png)

Menambahkan nama dan nim
![alt text](/Pertemuan4/Praktikum4/4.3.png)

#### - Praktikum 3

- Langkah 2

Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! Lalu perbaiki jika terjadi error.
Jawab

Kode berjalan sukses tanpa eror.

- Langkah 3

Tambahkan kode program berikut di dalam for-loop, lalu coba eksekusi (Run) kode Anda.

![Hasil Modifikasi Kode Program](/Pertemuan4/Praktikum3/3.2.png.png)

Apa yang terjadi ? Jika terjadi error, silakan perbaiki.

Tambahkan elemen nama dan NIM Anda pada tiap variabel di atas (gifts, nobleGases, mhs1, dan mhs2). Dokumentasikan hasilnya dan buat laporannya!

Jawab

Program tersebut berhasil dijalankan tanpa error dan menampilkan isi dari dua Map, yaitu gifts dan nobleGases. Map gifts berisi pasangan key bertipe String dengan value campuran (String dan integer), sedangkan nobleGases berisi key integer dengan value juga campuran. Setelah itu, kode membuat Map baru (mhs1 dan mhs2), tetapi tidak digunakan lebih lanjut. Perubahan nilai yang dilakukan tetap terjadi pada Map awal

Menambahkan nama dan nim
![alt text](/Pertemuan4/Praktikum3/3.3.png)
![alt text](/Pertemuan4/Praktikum3/output3.png)


### Soal 2

Buatlah sebuah program yang dapat menampilkan bilangan prima dari angka 0 sampai 201 menggunakan Dart. Ketika bilangan prima ditemukan, maka tampilkan nama lengkap dan NIM Anda.

Jawab

Kodingan

![alt text](Soal2.png)

Output

![alt text](hasilsoal2.png)

Program melakukan perulangan dari 2 sampai 201.
Setiap angka dicek apakah habis dibagi oleh angka lain selain 1 dan dirinya sendiri. Jika tidak habis dibagi, maka angka tersebut adalah bilangan prima, lalu program akan menampilkan angka tersebut beserta nama dan NIM.

