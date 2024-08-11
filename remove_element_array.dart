class Solution {
  int removeElement(List<int> nums, int val) {
    var k=0;
    for (int i=0; i<nums.length; i++){
        if(nums[i]!=val){
            nums[k]=nums[i];
            k++;
        }
    }
    return k;    
  }
}

void main() {
  List<int> nums = [0,1,2,2,3,0,4,2];
  int val = 2;

  int k = Solution().removeElement(nums, val);

  print(nums); // Output is [0, 1, 3, 0, 4, 0, 4, 2]
  print(k);
} 