n = gets.to_i
arr = gets.split.map(&:to_i).sort.reverse

alice = arr.select.with_index{|_, key| key.even?}
bob = arr.select.with_index{|_, key| key.odd?}

p alice.sum - bob.sum