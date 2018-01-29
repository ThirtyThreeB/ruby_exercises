def caeser(str, n)
  arr = str.split("")
  newArr = []
  arr.each do |x|
    if (x.ord+n).between?(65,90) | (x.ord+n).between?(97,122)
    newArr << (x.ord+n).chr
  elsif (x.ord == 32) | (x.ord == 33)
    newArr << x.ord.chr
  else
    newArr << (x.ord+n-26).chr
  end
  end
  p newArr.join
end

caeser("What a string!", 5)
