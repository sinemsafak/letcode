class Solution {
  bool isPalindrome(int x) {
    // Eğer sayı negatifse (-121 gibi), başındaki '-' işareti ters çevrildiğinde sona gider.                  
    // Ayrıca sonu 0 ile biten sayılar (10, 100 gibi) palindrom olamaz
    // çünkü tersten yazıldığında başında 0 olur (01, 001).
    // Ama tek istisna: sayı 0’ın kendisi.
    if (x < 0 || (x % 10 == 0 && x != 0)) {
      return false;
    }

    int reversedHalf = 0; // sayının sondan aldığımız basamaklarını ters çevrilmiş şekilde tutacak

    // Bu döngü, sayının yarısını ters çevirmemize kadar devam eder.
    // Örn: x = 1221 → döngü sonunda x = 12, reversedHalf = 12 olur.
    //      x = 12321 → döngü sonunda x = 12, reversedHalf = 123 (ortadaki 3 fark etmez).
    while (x > reversedHalf) {
      // Sayının son basamağını reversedHalf’ın sonuna ekliyoruz
      reversedHalf = reversedHalf * 10 + x % 10;

      // Sayıyı bir basamak küçültüyoruz (tam böldüğümüz için son basamak düşüyor)
      x ~/= 10;
    }

    // Eğer sayı çift haneliyse (1221 gibi), x ve reversedHalf eşit olur.
    // Eğer sayı tek haneliyse (12321 gibi), ortadaki basamak reversedHalf’ta fazla kalır.
    // Bu durumda reversedHalf ~/ 10 yaparak ortadaki basamağı atarız.
    return x == reversedHalf || x == reversedHalf ~/ 10;
  }
}
