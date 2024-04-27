## Introduction to CI/CD

CI/CD merupakan salah satu bagian dari pengembangan perangkat lunak. CI untuk Continuous Integration dan CD untuk Continuous Delivery.

> Mengapa perlu CI/CD?

Pada proses pengembangan perangkat lunak sederhana, alur dari pengembangan hingga ke produksi kurang lebih akan seperti berikuut.

1. Developer membuat perubahan pada kode perangkat lunak
2. Developer melakukan testing pada hasil kode yang telah dibuat
3. Developer melakukan push kode ke repository
4. Developer melakukan sinkronisasi kode pada server dengan repository
5. Developer melakukan deployment pada server produksi

Bayangkan jika sering terjadi perubahan atau terdapat banyak developer yang bekerja. Pasti melakukan semua hal di atas secara manual akan sangat menyulitkan. Dengan CI/CD, proses di atas dapat diotomatisasi (kecuali nomor 1).

![image](https://b1286009.smushcdn.com/1286009/wp-content/uploads/2020/04/a-world-with-ci.cd-meme.jpg?lossy=1&strip=1&webp=1)

> Apa saja tools yang dapat digunakan dalam CI/CD?

1. Github Actions
2. Azure DevOps
3. AWS CodePipeline
4. Jenkins
5. Dan masih banyak lagi
