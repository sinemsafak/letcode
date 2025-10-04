class Solution {
  // twoSum fonksiyonu: nums listesindeki iki sayının toplamı target olunca, o sayıların indekslerini döndürür.
  List<int> twoSum(List<int> nums, int target) {
    // 'seen' adında bir Map tanımlıyoruz. Burada:
    // key   -> sayının değeri
    // value -> o sayının bulunduğu index
    final Map<int, int> seen = {};

    // nums listesini indexleriyle beraber dolaşıyoruz
    for (int i = 0; i < nums.length; i++) {
      final int diff = target - nums[i]; // aradığımız eksik sayı

      // Eğer eksik sayı daha önce görülmüşse, eşleşmeyi bulduk demektir
      if (seen.containsKey(diff)) {
        // Daha önce kaydedilen index + şu anki index döndürülür
        return [seen[diff]!, i];
      }

      // Henüz eşleşme bulunmadıysa, bu sayıyı map'e ekliyoruz
      // yani nums[i] -> i şeklinde kaydediyoruz
      seen[nums[i]] = i;
    }

    // Problemde mutlaka çözüm olduğu garantilense de,
    // güvenlik için boş liste döndürmek iyi bir alışkanlık
    return [];
  }
}

