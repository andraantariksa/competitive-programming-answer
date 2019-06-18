fn singleNumber(nums: Vec<i32>) -> i32 {
  let mut res = 0;
  for num in nums {
    res ^= num;
  }
  return res;
}
