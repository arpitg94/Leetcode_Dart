class Solution {
  int removeDuplicates(List<int> nums) {
    int k=0;
    int prev_i=0;
    for (int i = 0; i<nums.length; i++){
        if(nums[prev_i]!=nums[i]){
            if(i-prev_i>1){
                k=k+2;
                nums[k-1]=nums[prev_i];
                nums[k-2]=nums[prev_i];
            }
            else{
                k++;
                nums[k-1]=nums[prev_i];
            }
            prev_i = i;
        }
    }
    if(nums.length-prev_i>1)
    {
        k=k+2;
        nums[k-1]=nums[prev_i];
        nums[k-2]=nums[prev_i];
    }
    else{
        k++;
        nums[k-1]=nums[prev_i];
    }
    
    return k;
  }
}

void main(){
  List<int> nums = [0,1,2,2,3,3,4,4];
  
  int k = Solution().removeDuplicates(nums);

  print(nums.sublist(0, k)); // Output is [0, 1, 2, 2, 3, 3, 4, 4]
}