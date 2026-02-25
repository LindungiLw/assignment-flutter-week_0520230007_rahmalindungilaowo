KRS Flutter — Week 4
Reflection
1. What confused me this week
   Saya sempat bingung kenapa UI tidak berubah saat nilai variabel diganti. Ternyata perubahan harus dibungkus dengan setState() agar Flutter me-rebuild tampilan.

2. How state changed UI behavior
   State membuat UI menjadi dinamis. Saat selectedCredits berubah di dalam setState(), teks otomatis ikut berubah tanpa reload manual.

3. Errors I faced and solutions
   Susah untuk password dan UI dan juga untuk memanaged uinya akhirnya aku pakai safe area

4. Differences between Stateful and Stateless
   StatelessWidget digunakan untuk tampilan yang tidak berubah. StatefulWidget digunakan jika data bisa berubah dan membutuhkan setState() untuk update UI.