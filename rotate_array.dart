class Solution {
  void rotate(List<int> nums, int k) {
    List<int> rotated_nums = List<int>.filled(nums.length, 0);
    for (int i=0; i<nums.length; i++){
        int rotated_index = (i+k)%nums.length;
        rotated_nums[rotated_index] = nums[i];
    }
    for (int i=0; i<nums.length; i++){
        nums[i] = rotated_nums[i];
    }
    
  }
}

void main() {
  List<int> nums = [0,1,6,7,3,0,4,2];
  int k = 2;
  Solution().rotate(nums, k);
  print(nums); // Output is [4, 2, 0, 1, 6, 7, 3, 0]

} 