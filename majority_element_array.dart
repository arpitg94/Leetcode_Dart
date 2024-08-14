// Finding majority Element in an array using Moore's Algorithm
class Solution {
  int majorityElement(List<int> nums) {
    int candidate=0;
    int votes=0;
    for (int i=0; i<nums.length; i++){
        if (votes==0){
            candidate = nums[i];
            votes = 1;
        }
        else if (nums[i]==candidate){
            votes += 1;
        }
        else {
            votes -= 1;
        }
    }
    return candidate;
  }
}

void main() {
  List<int> nums = [1, 2, 2, 0, 2, 2, 2, 0, 0];

  int majorityElement = Solution().majorityElement(nums);

  print(majorityElement); // Output is 2
}
