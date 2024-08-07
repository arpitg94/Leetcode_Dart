class Solution {
  void merge(List<int> nums1, int m, List<int> nums2, int n) {
    final merged_list = List<int>.filled(m+n, 0);
    var i=m-1, j=n-1, k=m+n-1;

    while(i>=0 && j>= 0){
        if (nums1[i]>nums2[j]){
            merged_list[k] = nums1[i];
            i--;
        }
        else {
            merged_list[k] = nums2[j];
            j--;
        }
        k--;
    }

    if(i>=0){
        while(i>=0)
        {
            merged_list[k]=nums1[i];
            i--;
            k--;
        }
    }
    else if (j>=0){
        while(j>=0)
        {
            merged_list[k]=nums2[j];
            j--;
            k--;
        }
    }

    for (k=0; k<m+n; k++){
        nums1[k] = merged_list[k];
    }


  }
}
void main() {
  List<int> nums1 = [1, 2, 3, 0, 0, 0];
  int m = 3;
  List<int> nums2 = [2, 5, 6];
  int n = 3;

  Solution().merge(nums1, m, nums2, n);

  print(nums1); // Output is [1, 2, 2, 3, 5, 6]
}