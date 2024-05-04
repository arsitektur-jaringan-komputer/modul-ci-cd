## Introduction to CI/CD

CI/CD merupakan salah satu bagian dari pengembangan perangkat lunak. CI untuk Continuous Integration dan CD untuk Continuous Delivery.

> Apa itu CI/CD?

CI merujuk pada praktik mengintegrasikan perubahan kode secara sering ke dalam repositori bersama, di mana pembangunan dan pengujian otomatis dijalankan. Tujuan utama CI adalah untuk mendeteksi dan mengatasi kesalahan integrasi dengan cepat, memastikan bahwa perangkat lunak tetap berfungsi sepanjang waktu. Pengembang mengintegrasikan perubahan kode mereka secara sering, biasanya beberapa kali sehari, untuk meminimalkan masalah integrasi dan konflik.

CD merujuk pada praktik merilis perangkat lunak ke pelanggan dengan cepat dan aman. Continuous Delivery adalah praktik di mana perangkat lunak dapat dirilis ke pelanggan setiap saat. Continuous Deployment adalah praktik di mana setiap perubahan kode yang lulus semua tahap pengujian dan memenuhi kriteria kualitas secara otomatis diterapkan ke produksi.

> Mengapa perlu CI/CD?

Pada proses pengembangan perangkat lunak sederhana, alur dari pengembangan hingga ke produksi kurang lebih akan seperti berikuut.

1. Developer membuat perubahan pada kode perangkat lunak
2. Developer melakukan testing pada hasil kode yang telah dibuat
3. Developer melakukan push kode ke repository
4. Developer melakukan sinkronisasi kode pada server dengan repository
5. Developer melakukan deployment pada server produksi

Bayangkan jika sering terjadi perubahan atau terdapat banyak developer yang bekerja. Pasti melakukan semua hal di atas secara manual akan sangat menyulitkan. Dengan CI/CD, proses di atas dapat diotomatisasi (kecuali nomor 1).

![image](https://b1286009.smushcdn.com/1286009/wp-content/uploads/2020/04/a-world-with-ci.cd-meme.jpg?lossy=1&strip=1&webp=1)

> Apa saja manfaat dari CI/CD?

1. **Kualitas kode yang lebih baik**: CI/CD memungkinkan developer untuk melakukan testing secara otomatis setiap kali ada perubahan kode. Hal ini akan meminimalisir kesalahan yang terjadi.

2. **Pengiriman yang lebih cepat**: CI/CD memungkinkan developer untuk melakukan deployment secara otomatis. Hal ini akan mempercepat proses pengiriman perangkat lunak.

3. **Peningkatan kolaborasi**: CI/CD memungkinkan developer untuk bekerja secara bersama-sama. Developer dapat melihat perubahan yang dilakukan oleh developer lain dan melakukan integrasi dengan cepat.

4. **Skalabilitas**: CI/CD memungkinkan developer untuk melakukan deployment ke berbagai lingkungan dengan mudah. Hal ini akan mempercepat proses pengembangan perangkat lunak.

> Apa saja tools yang dapat digunakan dalam CI/CD?

1. Github Actions
2. Azure DevOps
3. AWS CodePipeline
4. Jenkins
5. Dan masih banyak lagi

Pada modul ini akan dibahas mengenai Github Actions sebagai salah satu tools CI/CD yang dapat digunakan. Pemilihan Github Actions dikarenakan Github Actions merupakan layanan CI/CD yang disediakan oleh Github. Github Actions memungkinkan kita untuk membuat workflow yang dapat dijalankan ketika terjadi perubahan pada repository.
