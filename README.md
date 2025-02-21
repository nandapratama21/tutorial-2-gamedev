# Tutorial 2 Game Development

**Nama:** Muhammad Nanda Pratama  
**NPM:** 2206081654

### 1. Apa saja pesan log yang dicetak pada panel Output?  
**Jawaban:**
- Platform initialized 
- Reached objective!


### 2. Coba gerakkan landasan ke batas area bawah, lalu gerakkan kembali ke atas hingga hampir menyentuh batas atas. Apa saja pesan log yang dicetak pada panel Output?  
**Jawaban:** Reached objective!

### 3. Buka scene MainLevel dengan tampilan workspace 2D. Apakah lokasi scene ObjectiveArea memiliki kaitan dengan pesan log yang dicetak pada panel Output pada percobaan sebelumnya?  
**Jawaban:**
Ya, lokasi ObjectiveArea memiliki kaitan langsung dengan pesan "Reached objective!" yang muncul di log Output. ObjectiveArea ditempatkan di bagian atas area permainan. Ketika pesawat (BlueShip) mencapai dan bersentuhan dengan area ini, sistem akan mengeluarkan pesan "Reached objective!" di log Output.


### 4. Scene BlueShip dan StonePlatform sama-sama memiliki sebuah child node bertipe Sprite. Apa fungsi dari node bertipe Sprite?  
**Jawaban:** 
Node bertipe Sprite berfungsi untuk menampilkan gambar 2D dalam game. Pada BlueShip dan StonePlatform, node Sprite digunakan untuk:
- Menampilkan representasi visual dari objek tersebut di dalam game
- Menentukan tampilan grafis dari pesawat (BlueShip) dan StonePlatform
- Mengatur properti visual seperti texture, warna, dan skala dari gambar yang ditampilkan

### 5. Root node dari scene BlueShip dan StonePlatform menggunakan tipe yang berbeda. BlueShip menggunakan tipe RigidBody2D, sedangkan StonePlatform menggunakan tipe StaticBody2D. Apa perbedaan dari masing-masing tipe node?  
**Jawaban:**  
- RigidBody2D:
  - Dipengaruhi oleh physics engine seperti gravitasi dan momentum, yang disesuaikan pada penerapan fisika 2 dimensi.
  - Dapat bergerak secara dinamis
  - Cocok untuk objek yang bergerak dan berinteraksi dengan lingkungan seperti BlueShip

- StaticBody2D:
  - Tidak dipengaruhi oleh physics engine
  - Posisinya tetap dan tidak bergerak kecuali diubah melalui kode
  - Cocok untuk objek statis seperti platform, dinding, atau landasan (StonePlatform)


### 6. Ubah nilai atribut Mass pada tipe RigidBody2D secara bebas di scene BlueShip, lalu coba jalankan scene MainLevel. Apa yang terjadi?  
**Jawaban:**  
Tidak ada perubahan yang signifikan dalam kecepatan dan percepatan jatuh, karena hukum gravitasi menyatakan bahwa percepatan jatuh tidak bergantung pada massa. Namun pengaruhnya akan terlihat jika kita membuat tabrakan antara 2 RigidBody2D.


### 7. Ubah nilai atribut Disabled pada tipe CollisionShape2D di scene StonePlatform, lalu coba jalankan scene MainLevel. Apa yang terjadi?  
**Jawaban:**
Ketika atribut Disabled pada CollisionShape2D diaktifkan, maka hal tersebut menyebabkan BlueShip akan jatuh menembus platform karena collision/tumbukan dinonaktifkan, sehingga tidak ada lagi interaksi fisika antara BlueShip dengan StonePlatform. Platform tidak dapat menahan atau mengangkat BlueShip seperti sebelumnya.

### 8. Pada scene MainLevel, coba manipulasi atribut Position, Rotation, dan Scale milik node BlueShip secara bebas. Apa yang terjadi pada visualisasi BlueShip di Viewport?  
**Jawaban:**  
- Position: Mengubah posisi BlueShip di dalam area permainan (koordinat x,y), jika x dinaikkan, maka BlueShip akan berpindah posisi ke kanan, begitu pula sebaliknya. Dan jika y dinakkan, maka maka BlueShip akan berpindah posisi ke bawah, begitu pula sebaliknya
- Rotation: Memutar/merotasi sprite BlueShip sesuai dengan nilai derajat yang diberikan
- Scale: Memperbesar atau memperkecil ukuran visual BlueShip, namun jika kita langsung mengubahnya di inspector, akan error karena overriden dari physics engine


### 9. Pada scene MainLevel, perhatikan nilai atribut Position node PlatformBlue, StonePlatform, dan StonePlatform2. Mengapa nilai Position node StonePlatform dan StonePlatform2 tidak sesuai dengan posisinya di dalam scene (menurut Inspector) namun visualisasinya berada di posisi yang tepat?  
**Jawaban:** 
Hal ini terjadi karena StonePlatform dan StonePlatform2 merupakan child nodes dari PlatformBlue. Dalam struktur node Godot, posisi child nodes dihitung secara relatif terhadap posisi parent node-nya. Nilai Position yang terlihat di Inspector untuk StonePlatform dan StonePlatform2 sebenarnya merupakan offset atau jarak relatif dari posisi PlatformBlue. Posisi akhir dari platform-platform tersebut merupakan hasil penjumlahan dari posisi parent node (PlatformBlue) dengan offset posisi masing-masing child node (StonePlatform dan StonePlatform2), sehingga menghasilkan visualisasi yang tepat di dalam scene.