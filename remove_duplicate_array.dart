class Solution {
  int removeDuplicates(List<int> nums) {
    int k = 0;
    for (int i = 0; i<nums.length; i++){
        if(nums[k]!=nums[i]){
            k++;
            nums[k]=nums[i];
        }
    }
    k++;
    return k;
  }
}

void main(){
  List<int> nums = [0,1,2,2,3,3,4,4];
  
  int k = Solution().removeDuplicates(nums);

  print(nums.sublist(0, k)); // Output is [0, 1, 2, 3, 4]
}