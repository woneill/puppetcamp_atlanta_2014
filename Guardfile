guard :shell do
  watch(/^slides\.\S{2,7}$/) do |m|
    puts "Matched with '#{m}'"
    `reveal-ck generate`
  end
  watch(/^config\.yml$/) do |m|
    puts "Matched with '#{m}'"
    `reveal-ck generate`
  end
end
