class Enterprise < ActiveRecord::Base

  has_secure_password

  has_many :ratings
  has_many :messages

  has_many :advises
  has_many :users, -> { distinct }, through: :advises

  has_many :pictures
  has_many :categories, through: :pictures

  has_and_belongs_to_many :users
  #has_and_belongs_to_many :categories
  # has_many :enterprise_category_pictures
  # has_many :categories, through: :enterprise_category_pictures
   def self.search(query)
    where("name like ?", "%#{query}%")
  end

  def self.createData

      self.createCategories

            enterprise = Enterprise.new
            enterprise.name = "Cerimonial Feliz"
            enterprise.description = "Mauris egestas id lacus eu gravida. Integer porttitor, velit ut semper scelerisque, eros dolor suscipit ipsum, vel auctor elit nisi in ipsum. Nulla quis enim mauris. Donec convallis nunc id hendrerit condimentum. Duis elementum, purus eu tempus efficitur, tortor orci iaculis turpis, vel congue nibh metus id dui. Mauris egestas id lacus eu gravida. Integer porttitor, velit ut semper scelerisque, eros dolor suscipit ipsum, vel auctor elit nisi in ipsum. Nulla quis enim mauris. Donec convallis nunc id hendrerit condimentum. Duis elementum, purus eu tempus efficitur, tortor orci iaculis turpis, vel congue nibh metus id dui. Mauris egestas id lacus eu gravida. Integer porttitor, velit ut semper scelerisque, eros dolor suscipit ipsum, vel auctor elit nisi in ipsum. Nulla quis enim mauris. Donec convallis nunc id hendrerit condimentum. Duis elementum, purus eu tempus efficitur, tortor orci iaculis turpis, vel congue nibh metus id dui."
            enterprise.capacity = "1000"
            enterprise.telephone = "3344-1133"
            enterprise.cellphone = "8112-1212"
            enterprise.cellphone = "9112-1212"
            enterprise.base_price = 2000.0
            enterprise.categories << Category.find(1)
            enterprise.save
            Picture.find(1).update(url: "https://tecnoblog.net/wp-content/uploads/2011/08/apple-campus-1.png")

            enterprise = Enterprise.new
            enterprise.name = "Cerimonial Felizes para Sempre"
            enterprise.description = "Mauris egestas id lacus eu gravida. Integer porttitor, velit ut semper scelerisque, eros dolor suscipit ipsum, vel auctor elit nisi in ipsum. Nulla quis enim mauris. Donec convallis nunc id hendrerit condimentum. Duis elementum, purus eu tempus efficitur, tortor orci iaculis turpis, vel congue nibh metus id dui."
            enterprise.capacity = "1200"
            enterprise.telephone = "3344-1133"
            enterprise.cellphone = "8112-1212"
            enterprise.cellphone = "9112-1212"
            enterprise.base_price = 5000.0
            enterprise.categories << Category.find(1)
            enterprise.save
            Picture.find(2).update(url: "https://tecnoblog.net/wp-content/uploads/2011/08/apple-campus-1.png")

            enterprise = Enterprise.new
            enterprise.name = "Cerimonial Alto Platinnum"
            enterprise.description = "Mauris egestas id lacus eu gravida. Integer porttitor, velit ut semper scelerisque, eros dolor suscipit ipsum, vel auctor elit nisi in ipsum. Nulla quis enim mauris. Donec convallis nunc id hendrerit condimentum. Duis elementum, purus eu tempus efficitur, tortor orci iaculis turpis, vel congue nibh metus id dui."
            enterprise.capacity = "800"
            enterprise.telephone = "3344-1133"
            enterprise.cellphone = "8112-1212"
            enterprise.cellphone = "9112-1212"
            enterprise.base_price = 8000.0
            enterprise.categories << Category.find(1)
            enterprise.save
            Picture.find(3).update(url: "https://tecnoblog.net/wp-content/uploads/2011/08/apple-campus-1.png")

            enterprise = Enterprise.new
            enterprise.name = "Cerimonial Tudo Perfeito"
            enterprise.description = "Mauris egestas id lacus eu gravida. Integer porttitor, velit ut semper scelerisque, eros dolor suscipit ipsum, vel auctor elit nisi in ipsum. Nulla quis enim mauris. Donec convallis nunc id hendrerit condimentum. Duis elementum, purus eu tempus efficitur, tortor orci iaculis turpis, vel congue nibh metus id dui."
            enterprise.capacity = "100"
            enterprise.telephone = "3344-1133"
            enterprise.cellphone = "8112-1212"
            enterprise.cellphone = "9112-1212"
            enterprise.base_price = 1000.0
            enterprise.categories << Category.find(1)
            enterprise.save
            Picture.find(4).update(url: "https://tecnoblog.net/wp-content/uploads/2011/08/apple-campus-1.png")

            enterprise = Enterprise.new
            enterprise.name = "Banda Feras do Baile"
            enterprise.description = "Mauris egestas id lacus eu gravida. Integer porttitor, velit ut semper scelerisque, eros dolor suscipit ipsum, vel auctor elit nisi in ipsum. Nulla quis enim mauris. Donec convallis nunc id hendrerit condimentum. Duis elementum, purus eu tempus efficitur, tortor orci iaculis turpis, vel congue nibh metus id dui."
            enterprise.capacity = "1000"
            enterprise.telephone = "3344-1133"
            enterprise.cellphone = "8112-1212"
            enterprise.cellphone = "9112-1212"
            enterprise.base_price = 3000.0
            enterprise.categories << Category.find(4)
            enterprise.save
            Picture.find(5).update(url: "https://tecnoblog.net/wp-content/uploads/2011/08/apple-campus-1.png")

            enterprise = Enterprise.new
            enterprise.name = "Banda Jazz Fusion"
            enterprise.description = "Mauris egestas id lacus eu gravida. Integer porttitor, velit ut semper scelerisque, eros dolor suscipit ipsum, vel auctor elit nisi in ipsum. Nulla quis enim mauris. Donec convallis nunc id hendrerit condimentum. Duis elementum, purus eu tempus efficitur, tortor orci iaculis turpis, vel congue nibh metus id dui."
            enterprise.capacity = "900"
            enterprise.telephone = "3344-1133"
            enterprise.cellphone = "8112-1212"
            enterprise.cellphone = "9112-1212"
            enterprise.base_price = 2500.0
            enterprise.categories << Category.find(4)
            enterprise.save
            Picture.find(6).update(url: "https://tecnoblog.net/wp-content/uploads/2011/08/apple-campus-1.png")

            enterprise = Enterprise.new
            enterprise.name = "Jamiroquai"
            enterprise.description = "Mauris egestas id lacus eu gravida. Integer porttitor, velit ut semper scelerisque, eros dolor suscipit ipsum, vel auctor elit nisi in ipsum. Nulla quis enim mauris. Donec convallis nunc id hendrerit condimentum. Duis elementum, purus eu tempus efficitur, tortor orci iaculis turpis, vel congue nibh metus id dui."
            enterprise.capacity = "300"
            enterprise.telephone = "3344-1133"
            enterprise.cellphone = "8112-1212"
            enterprise.cellphone = "9112-1212"
            enterprise.base_price = 2800.0
            enterprise.categories << Category.find(4)
            enterprise.save
            Picture.find(7).update(url: "https://tecnoblog.net/wp-content/uploads/2011/08/apple-campus-1.png")

            enterprise = Enterprise.new
            enterprise.name = "Maroon Cinco"
            enterprise.description = "Mauris egestas id lacus eu gravida. Integer porttitor, velit ut semper scelerisque, eros dolor suscipit ipsum, vel auctor elit nisi in ipsum. Nulla quis enim mauris. Donec convallis nunc id hendrerit condimentum. Duis elementum, purus eu tempus efficitur, tortor orci iaculis turpis, vel congue nibh metus id dui."
            enterprise.capacity = "1000"
            enterprise.telephone = "3344-1133"
            enterprise.cellphone = "8112-1212"
            enterprise.cellphone = "9112-1212"
            enterprise.base_price = 10000.0
            enterprise.categories << Category.find(4)
            enterprise.save
            Picture.find(8).update(url: "https://tecnoblog.net/wp-content/uploads/2011/08/apple-campus-1.png")

            enterprise = Enterprise.new
            enterprise.name = "Fotografia Novo Mundo"
            enterprise.description = "Mauris egestas id lacus eu gravida. Integer porttitor, velit ut semper scelerisque, eros dolor suscipit ipsum, vel auctor elit nisi in ipsum. Nulla quis enim mauris. Donec convallis nunc id hendrerit condimentum. Duis elementum, purus eu tempus efficitur, tortor orci iaculis turpis, vel congue nibh metus id dui."
            enterprise.capacity = "1000"
            enterprise.telephone = "3344-1133"
            enterprise.cellphone = "8112-1212"
            enterprise.cellphone = "9112-1212"
            enterprise.base_price = 9000.0
            enterprise.categories << Category.find(2)
            enterprise.save
            Picture.find(9).update(url: "https://tecnoblog.net/wp-content/uploads/2011/08/apple-campus-1.png")

            enterprise = Enterprise.new
            enterprise.name = "Arte e Foto Filmagem"
            enterprise.description = "Mauris egestas id lacus eu gravida. Integer porttitor, velit ut semper scelerisque, eros dolor suscipit ipsum, vel auctor elit nisi in ipsum. Nulla quis enim mauris. Donec convallis nunc id hendrerit condimentum. Duis elementum, purus eu tempus efficitur, tortor orci iaculis turpis, vel congue nibh metus id dui."
            enterprise.capacity = "1000"
            enterprise.telephone = "3344-1133"
            enterprise.cellphone = "8112-1212"
            enterprise.cellphone = "9112-1212"
            enterprise.base_price = 4300.0
            enterprise.categories << Category.find(2)
            enterprise.save
            Picture.find(10).update(url: "https://tecnoblog.net/wp-content/uploads/2011/08/apple-campus-1.png")

            enterprise = Enterprise.new
            enterprise.name = "Julian Motoya ltda"
            enterprise.description = "Mauris egestas id lacus eu gravida. Integer porttitor, velit ut semper scelerisque, eros dolor suscipit ipsum, vel auctor elit nisi in ipsum. Nulla quis enim mauris. Donec convallis nunc id hendrerit condimentum. Duis elementum, purus eu tempus efficitur, tortor orci iaculis turpis, vel congue nibh metus id dui."
            enterprise.capacity = "1000"
            enterprise.telephone = "3344-1133"
            enterprise.cellphone = "8112-1212"
            enterprise.cellphone = "9112-1212"
            enterprise.base_price = 9000.0
            enterprise.categories << Category.find(2)
            enterprise.save
            Picture.find(11).update(url: "https://tecnoblog.net/wp-content/uploads/2011/08/apple-campus-1.png")

            enterprise = Enterprise.new
            enterprise.name = "Cerimonial Festas todo Dia"
            enterprise.description = "Mauris egestas id lacus eu gravida. Integer porttitor, velit ut semper scelerisque, eros dolor suscipit ipsum, vel auctor elit nisi in ipsum. Nulla quis enim mauris. Donec convallis nunc id hendrerit condimentum. Duis elementum, purus eu tempus efficitur, tortor orci iaculis turpis, vel congue nibh metus id dui."
            enterprise.capacity = "1000"
            enterprise.telephone = "3344-1133"
            enterprise.cellphone = "8112-1212"
            enterprise.cellphone = "9112-1212"
            enterprise.base_price = 12000.0
            enterprise.categories << Category.find(1)
            enterprise.save
            Picture.find(12).update(url: "https://tecnoblog.net/wp-content/uploads/2011/08/apple-campus-1.png")

            enterprise = Enterprise.new
            enterprise.name = "Cerimonial Juntos até o Fim"
            enterprise.description = "Mauris egestas id lacus eu gravida. Integer porttitor, velit ut semper scelerisque, eros dolor suscipit ipsum, vel auctor elit nisi in ipsum. Nulla quis enim mauris. Donec convallis nunc id hendrerit condimentum. Duis elementum, purus eu tempus efficitur, tortor orci iaculis turpis, vel congue nibh metus id dui."
            enterprise.capacity = "1000"
            enterprise.telephone = "3344-1133"
            enterprise.cellphone = "8112-1212"
            enterprise.cellphone = "9112-1212"
            enterprise.base_price = 8400.0
            enterprise.categories << Category.find(1)
            enterprise.save
            Picture.find(13).update(url: "https://tecnoblog.net/wp-content/uploads/2011/08/apple-campus-1.png")

            enterprise = Enterprise.new
            enterprise.name = "Cerimonial ABCDE"
            enterprise.description = "Mauris egestas id lacus eu gravida. Integer porttitor, velit ut semper scelerisque, eros dolor suscipit ipsum, vel auctor elit nisi in ipsum. Nulla quis enim mauris. Donec convallis nunc id hendrerit condimentum. Duis elementum, purus eu tempus efficitur, tortor orci iaculis turpis, vel congue nibh metus id dui."
            enterprise.capacity = "1000"
            enterprise.telephone = "3344-1133"
            enterprise.cellphone = "8112-1212"
            enterprise.cellphone = "9112-1212"
            enterprise.base_price = 20000.0
            enterprise.categories << Category.find(1)
            enterprise.save
            Picture.find(14).update(url: "https://tecnoblog.net/wp-content/uploads/2011/08/apple-campus-1.png")

            enterprise = Enterprise.new
            enterprise.name = "JJKK"
            enterprise.description = "Mauris egestas id lacus eu gravida. Integer porttitor, velit ut semper scelerisque, eros dolor suscipit ipsum, vel auctor elit nisi in ipsum. Nulla quis enim mauris. Donec convallis nunc id hendrerit condimentum. Duis elementum, purus eu tempus efficitur, tortor orci iaculis turpis, vel congue nibh metus id dui."
            enterprise.capacity = "1000"
            enterprise.telephone = "3344-1133"
            enterprise.cellphone = "8112-1212"
            enterprise.cellphone = "9112-1212"
            enterprise.base_price = 7400.0
            enterprise.categories << Category.find(1)
            enterprise.save
            Picture.find(15).update(url: "https://tecnoblog.net/wp-content/uploads/2011/08/apple-campus-1.png")

            enterprise = Enterprise.new
            enterprise.name = "Cerimonial Casa Grande"
            enterprise.description = "Mauris egestas id lacus eu gravida. Integer porttitor, velit ut semper scelerisque, eros dolor suscipit ipsum, vel auctor elit nisi in ipsum. Nulla quis enim mauris. Donec convallis nunc id hendrerit condimentum. Duis elementum, purus eu tempus efficitur, tortor orci iaculis turpis, vel congue nibh metus id dui."
            enterprise.capacity = "400"
            enterprise.telephone = "3344-1133"
            enterprise.cellphone = "8112-1212"
            enterprise.cellphone = "9112-1212"
            enterprise.base_price = 9300.0
            enterprise.categories << Category.find(1)
            enterprise.save
            Picture.find(16).update(url: "https://tecnoblog.net/wp-content/uploads/2011/08/apple-campus-1.png")
    end

    def self.createCategories
        category = Category.new
        category.name = "Cerimonial"
        category.save

        category = Category.new
        category.name = "Fotografia"
        category.save

        category = Category.new
        category.name = "Alfaiataria"
        category.save

        category = Category.new
        category.name = "Decoração"
        category.save

        category = Category.new
        category.name = "Musica"
        category.save

        category = Category.new
        category.name = "Buffet"
        category.save
    end

end
