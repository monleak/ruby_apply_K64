class Menu
 attr_accessor :name
 attr_accessor :price
  # get_total_priceメソッドを定義してください
  def get_total_price(n)
    total_price = 0;
    if(n<3 && n >= 0)
      total_price = n*self.price;
    elsif (n>=3)
      total_price = n*self.price-10000;
    end
    return "#{self.name} #{total_price}vnd"
  end
end

menu1 = Menu.new
menu1.name = "Phở"
menu1.price = 30000

# menu1に対してget_total_priceメソッドを呼び出してください
print "Nhap so luong: "
puts menu1.get_total_price(gets.to_i)
