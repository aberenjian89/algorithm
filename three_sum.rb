require 'byebug'
def three_sum(nums)
    nums.sort!
    i = 0
    l = 0
    res = []
    nums.each_index do |i|
         l = i - (nums.length - 1)
         r = -1
        while l < r
            if (nums[i] + nums[l] + nums[r] == 0)
              res.push([nums[i],nums[l],nums[r]])
              l+=1
              r-=1
            elsif (nums[i] + nums[l] + nums[r] < 0)
              l+=1
            else
              r-=1
            end
        end
    end
    res.uniq
end
