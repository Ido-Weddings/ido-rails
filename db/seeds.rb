# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

    Category.create(name: "Cerimonial")
    Category.create(name: "Fotografia")
    Category.create(name: "Alfaiataria")
    Category.create(name: "Decoração")
    Category.create(name: "Musica")
    Category.create(name: "Buffet")

    enterprise = Enterprise.create(name: "Cerimonial Feliz", description: "Mauris egestas id lacus eu gravida. Integer porttitor, velit ut semper scelerisque, eros dolor suscipit ipsum, vel auctor elit nisi in ipsum. Nulla quis enim mauris. Donec convallis nunc id hendrerit condimentum. Duis elementum, purus eu tempus efficitur, tortor orci iaculis turpis, vel congue nibh metus id dui. Mauris egestas id lacus eu gravida. Integer porttitor, velit ut semper scelerisque, eros dolor suscipit ipsum, vel auctor elit nisi in ipsum. Nulla quis enim mauris. Donec convallis nunc id hendrerit condimentum. Duis elementum, purus eu tempus efficitur, tortor orci iaculis turpis, vel congue nibh metus id dui. Mauris egestas id lacus eu gravida. Integer porttitor, velit ut semper scelerisque, eros dolor suscipit ipsum, vel auctor elit nisi in ipsum. Nulla quis enim mauris. Donec convallis nunc id hendrerit condimentum. Duis elementum, purus eu tempus efficitur, tortor orci iaculis turpis, vel congue nibh metus id dui.", 
    											capacity: "1000", 
    											telephone: "3344-1133", 
    											cellphone: "8112-1212",  
    											base_price: 9000.0)
	enterprise.categories << Category.find(1)

	enterprise = Enterprise.create(name: "Cerimonial Felizes para Sempre", description: "Mauris egestas id lacus eu gravida. Integer porttitor, velit ut semper scelerisque, eros dolor suscipit ipsum, vel auctor elit nisi in ipsum. Nulla quis enim mauris. Donec convallis nunc id hendrerit condimentum. Duis elementum, purus eu tempus efficitur, tortor orci iaculis turpis, vel congue nibh metus id dui. Mauris egestas id lacus eu gravida. Integer porttitor, velit ut semper scelerisque, eros dolor suscipit ipsum, vel auctor elit nisi in ipsum. Nulla quis enim mauris. Donec convallis nunc id hendrerit condimentum. Duis elementum, purus eu tempus efficitur, tortor orci iaculis turpis, vel congue nibh metus id dui. Mauris egestas id lacus eu gravida. Integer porttitor, velit ut semper scelerisque, eros dolor suscipit ipsum, vel auctor elit nisi in ipsum. Nulla quis enim mauris. Donec convallis nunc id hendrerit condimentum. Duis elementum, purus eu tempus efficitur, tortor orci iaculis turpis, vel congue nibh metus id dui.", 
    											capacity: "1000", 
    											telephone: "3344-1133", 
    											cellphone: "8112-1212",  
    											base_price: 22000.0)
	enterprise.categories << Category.find(1)

	enterprise = Enterprise.create(name: "Cerimonial Alto Platinnum", description: "Mauris egestas id lacus eu gravida. Integer porttitor, velit ut semper scelerisque, eros dolor suscipit ipsum, vel auctor elit nisi in ipsum. Nulla quis enim mauris. Donec convallis nunc id hendrerit condimentum. Duis elementum, purus eu tempus efficitur, tortor orci iaculis turpis, vel congue nibh metus id dui. Mauris egestas id lacus eu gravida. Integer porttitor, velit ut semper scelerisque, eros dolor suscipit ipsum, vel auctor elit nisi in ipsum. Nulla quis enim mauris. Donec convallis nunc id hendrerit condimentum. Duis elementum, purus eu tempus efficitur, tortor orci iaculis turpis, vel congue nibh metus id dui. Mauris egestas id lacus eu gravida. Integer porttitor, velit ut semper scelerisque, eros dolor suscipit ipsum, vel auctor elit nisi in ipsum. Nulla quis enim mauris. Donec convallis nunc id hendrerit condimentum. Duis elementum, purus eu tempus efficitur, tortor orci iaculis turpis, vel congue nibh metus id dui.", 
    											capacity: "1000", 
    											telephone: "3344-1133", 
    											cellphone: "8112-1212",  
    											base_price: 9000.0)
	enterprise.categories << Category.find(1)

	enterprise = Enterprise.create(name: "Cerimonial Tudo Perfeito", description: "Mauris egestas id lacus eu gravida. Integer porttitor, velit ut semper scelerisque, eros dolor suscipit ipsum, vel auctor elit nisi in ipsum. Nulla quis enim mauris. Donec convallis nunc id hendrerit condimentum. Duis elementum, purus eu tempus efficitur, tortor orci iaculis turpis, vel congue nibh metus id dui. Mauris egestas id lacus eu gravida.", 
    											capacity: "1000", 
    											telephone: "3344-1133", 
    											cellphone: "8112-1212",  
    											base_price: 2000.0)
	enterprise.categories << Category.find(1)

	enterprise = Enterprise.create(name: "Banda Feras do Baile", description: "Mauris egestas id lacus eu gravida. Integer porttitor, velit ut semper scelerisque, eros dolor suscipit ipsum, vel auctor elit nisi in ipsum. Nulla quis enim mauris. Donec convallis nunc id hendrerit condimentum. Duis elementum, purus eu tempus efficitur, tortor orci iaculis turpis, vel congue nibh metus id dui. Mauris egestas id lacus eu gravida. Integer porttitor, velit ut semper scelerisque, eros dolor suscipit ipsum, vel auctor elit nisi in ipsum. Nulla quis enim mauris. Donec convallis nunc id hendrerit condimentum. Duis elementum, purus eu tempus efficitur, tortor orci iaculis turpis, vel congue nibh metus id dui. Mauris egestas id lacus eu gravida. Integer porttitor, velit ut semper scelerisque, eros dolor suscipit ipsum, vel auctor elit nisi in ipsum. Nulla quis enim mauris. Donec convallis nunc id hendrerit condimentum. Duis elementum, purus eu tempus efficitur, tortor orci iaculis turpis, vel congue nibh metus id dui.", 
    											capacity: "1000", 
    											telephone: "3344-1133", 
    											cellphone: "8112-1212",  
    											base_price: 2300.0)
	enterprise.categories << Category.find(5)

	enterprise = Enterprise.create(name: "Banda Jazz Fusion", description: "Mauris egestas id lacus eu gravida. Integer porttitor, velit ut semper scelerisque, eros dolor suscipit ipsum, vel auctor elit nisi in ipsum. Nulla quis enim mauris. Donec convallis nunc id hendrerit condimentum. Duis elementum, purus eu tempus efficitur, tortor orci iaculis turpis, vel congue nibh metus id dui. Mauris egestas id lacus eu gravida. Integer porttitor, velit ut semper scelerisque, eros dolor suscipit ipsum, vel auctor elit nisi in ipsum. Nulla quis enim mauris. Donec convallis nunc id hendrerit condimentum. Duis elementum, purus eu tempus efficitur, tortor orci iaculis turpis, vel congue nibh metus id dui. Mauris egestas id lacus eu gravida. Integer porttitor, velit ut semper scelerisque, eros dolor suscipit ipsum, vel auctor elit nisi in ipsum. Nulla quis enim mauris. Donec convallis nunc id hendrerit condimentum. Duis elementum, purus eu tempus efficitur, tortor orci iaculis turpis, vel congue nibh metus id dui.", 
    											capacity: "1000", 
    											telephone: "3344-1133", 
    											cellphone: "8112-1212",  
    											base_price: 4000.0)
	enterprise.categories << Category.find(5)
	enterprise = Enterprise.create(name: "Banda Os Marotos", description: "Mauris egestas id lacus eu gravida. Integer porttitor, velit ut semper scelerisque, eros dolor suscipit ipsum, vel auctor elit nisi in ipsum. Nulla quis enim mauris. Donec convallis nunc id hendrerit condimentum. Duis elementum, purus eu tempus efficitur, tortor orci iaculis turpis, vel congue nibh metus id dui. Mauris egestas id lacus eu gravida. Integer porttitor, velit ut semper scelerisque, eros dolor suscipit ipsum, vel auctor elit nisi in ipsum. Nulla quis enim mauris. Donec convallis nunc id hendrerit condimentum. Duis elementum, purus eu tempus efficitur, tortor orci iaculis turpis, vel congue nibh metus id dui. Mauris egestas id lacus eu gravida. Integer porttitor, velit ut semper scelerisque, eros dolor suscipit ipsum, vel auctor elit nisi in ipsum. Nulla quis enim mauris. Donec convallis nunc id hendrerit condimentum. Duis elementum, purus eu tempus efficitur, tortor orci iaculis turpis, vel congue nibh metus id dui.", 
    											capacity: "1000", 
    											telephone: "3344-1133", 
    											cellphone: "8112-1212",  
    											base_price: 2000.0)
	enterprise.categories << Category.find(5)

	enterprise = Enterprise.create(name: "Banda Song Pop", description: "Mauris egestas id lacus eu gravida. Integer porttitor, velit ut semper scelerisque, eros dolor suscipit ipsum, vel auctor elit nisi in ipsum. Nulla quis enim mauris. Donec convallis nunc id hendrerit condimentum. Duis elementum, purus eu tempus efficitur, tortor orci iaculis turpis, vel congue nibh metus id dui. Mauris egestas id lacus eu gravida. Integer porttitor, velit ut semper scelerisque, eros dolor suscipit ipsum, vel auctor elit nisi in ipsum. Nulla quis enim mauris. Donec convallis nunc id hendrerit condimentum. Duis elementum, purus eu tempus efficitur, tortor orci iaculis turpis, vel congue nibh metus id dui. Mauris egestas id lacus eu gravida. Integer porttitor, velit ut semper scelerisque, eros dolor suscipit ipsum, vel auctor elit nisi in ipsum. Nulla quis enim mauris. Donec convallis nunc id hendrerit condimentum. Duis elementum, purus eu tempus efficitur, tortor orci iaculis turpis, vel congue nibh metus id dui.", 
    											capacity: "1000", 
    											telephone: "3344-1133", 
    											cellphone: "8112-1212",  
    											base_price: 2000.0)
	enterprise.categories << Category.find(5)

	enterprise = Enterprise.create(name: "Fotografia Novo Mundo", description: "Mauris egestas id lacus eu gravida. Integer porttitor, velit ut semper scelerisque, eros dolor suscipit ipsum, vel auctor elit nisi in ipsum. Nulla quis enim mauris. Donec convallis nunc id hendrerit condimentum. Duis elementum, purus eu tempus efficitur, tortor orci iaculis turpis, vel congue nibh metus id dui. Mauris egestas id lacus eu gravida. Integer porttitor, velit ut semper scelerisque, eros dolor suscipit ipsum, vel auctor elit nisi in ipsum. Nulla quis enim mauris. Donec convallis nunc id hendrerit condimentum. Duis elementum, purus eu tempus efficitur, tortor orci iaculis turpis, vel congue nibh metus id dui. Mauris egestas id lacus eu gravida. Integer porttitor, velit ut semper scelerisque, eros dolor suscipit ipsum, vel auctor elit nisi in ipsum. Nulla quis enim mauris. Donec convallis nunc id hendrerit condimentum. Duis elementum, purus eu tempus efficitur, tortor orci iaculis turpis, vel congue nibh metus id dui.", 
    											capacity: "1000", 
    											telephone: "3344-1133", 
    											cellphone: "8112-1212",  
    											base_price: 5000.0)
	enterprise.categories << Category.find(2)

	enterprise = Enterprise.create(name: "Arte e Fotografia", description: "Mauris egestas id lacus eu gravida. Integer porttitor, velit ut semper scelerisque, eros dolor suscipit ipsum, vel auctor elit nisi in ipsum. Nulla quis enim mauris. Donec convallis nunc id hendrerit condimentum. Duis elementum, purus eu tempus efficitur, tortor orci iaculis turpis, vel congue nibh metus id dui. Mauris egestas id lacus eu gravida. Integer porttitor, velit ut semper scelerisque, eros dolor suscipit ipsum, vel auctor elit nisi in ipsum. Nulla quis enim mauris. Donec convallis nunc id hendrerit condimentum. Duis elementum, purus eu tempus efficitur, tortor orci iaculis turpis, vel congue nibh metus id dui. Mauris egestas id lacus eu gravida. Integer porttitor, velit ut semper scelerisque, eros dolor suscipit ipsum, vel auctor elit nisi in ipsum. Nulla quis enim mauris. Donec convallis nunc id hendrerit condimentum. Duis elementum, purus eu tempus efficitur, tortor orci iaculis turpis, vel congue nibh metus id dui.", 
    											capacity: "1000", 
    											telephone: "3344-1133", 
    											cellphone: "8112-1212",  
    											base_price: 3000.0)
	enterprise.categories << Category.find(2)

	enterprise = Enterprise.create(name: "Foto e Filmage ltda", description: "Mauris egestas id lacus eu gravida. Integer porttitor, velit ut semper scelerisque, eros dolor suscipit ipsum, vel auctor elit nisi in ipsum. Nulla quis enim mauris. Donec convallis nunc id hendrerit condimentum. Duis elementum, purus eu tempus efficitur, tortor orci iaculis turpis, vel congue nibh metus id dui. Mauris egestas id lacus eu gravida. Integer porttitor, velit ut semper scelerisque, eros dolor suscipit ipsum, vel auctor elit nisi in ipsum. Nulla quis enim mauris. Donec convallis nunc id hendrerit condimentum. Duis elementum, purus eu tempus efficitur, tortor orci iaculis turpis, vel congue nibh metus id dui. Mauris egestas id lacus eu gravida. Integer porttitor, velit ut semper scelerisque, eros dolor suscipit ipsum, vel auctor elit nisi in ipsum. Nulla quis enim mauris. Donec convallis nunc id hendrerit condimentum. Duis elementum, purus eu tempus efficitur, tortor orci iaculis turpis, vel congue nibh metus id dui.", 
    											capacity: "1000", 
    											telephone: "3344-1133", 
    											cellphone: "8112-1212",  
    											base_price: 5000.0)
	enterprise.categories << Category.find(2)

	enterprise = Enterprise.create(name: "Vestidos para Noiva", description: "Mauris egestas id lacus eu gravida. Integer porttitor, velit ut semper scelerisque, eros dolor suscipit ipsum, vel auctor elit nisi in ipsum. Nulla quis enim mauris. Donec convallis nunc id hendrerit condimentum. Duis elementum, purus eu tempus efficitur, tortor orci iaculis turpis, vel congue nibh metus id dui. Mauris egestas id lacus eu gravida. Integer porttitor, velit ut semper scelerisque, eros dolor suscipit ipsum, vel auctor elit nisi in ipsum. Nulla quis enim mauris. Donec convallis nunc id hendrerit condimentum. Duis elementum, purus eu tempus efficitur, tortor orci iaculis turpis, vel congue nibh metus id dui. Mauris egestas id lacus eu gravida. Integer porttitor, velit ut semper scelerisque, eros dolor suscipit ipsum, vel auctor elit nisi in ipsum. Nulla quis enim mauris. Donec convallis nunc id hendrerit condimentum. Duis elementum, purus eu tempus efficitur, tortor orci iaculis turpis, vel congue nibh metus id dui.", 
    											capacity: "1000", 
    											telephone: "3344-1133", 
    											cellphone: "8112-1212",  
    											base_price: 1000.0)
	enterprise.categories << Category.find(3)

	enterprise = Enterprise.create(name: "Vestida de Branco", description: "Mauris egestas id lacus eu gravida. Integer porttitor, velit ut semper scelerisque, eros dolor suscipit ipsum, vel auctor elit nisi in ipsum. Nulla quis enim mauris. Donec convallis nunc id hendrerit condimentum. Duis elementum, purus eu tempus efficitur, tortor orci iaculis turpis, vel congue nibh metus id dui. Mauris egestas id lacus eu gravida. Integer porttitor, velit ut semper scelerisque, eros dolor suscipit ipsum, vel auctor elit nisi in ipsum. Nulla quis enim mauris. Donec convallis nunc id hendrerit condimentum. Duis elementum, purus eu tempus efficitur, tortor orci iaculis turpis, vel congue nibh metus id dui. Mauris egestas id lacus eu gravida. Integer porttitor, velit ut semper scelerisque, eros dolor suscipit ipsum, vel auctor elit nisi in ipsum. Nulla quis enim mauris. Donec convallis nunc id hendrerit condimentum. Duis elementum, purus eu tempus efficitur, tortor orci iaculis turpis, vel congue nibh metus id dui.", 
    											capacity: "1000", 
    											telephone: "3344-1133", 
    											cellphone: "8112-1212",  
    											base_price: 4000.0)
	enterprise.categories << Category.find(3)

	enterprise = Enterprise.create(name: "Fina Estampa", description: "Mauris egestas id lacus eu gravida. Integer porttitor, velit ut semper scelerisque, eros dolor suscipit ipsum, vel auctor elit nisi in ipsum. Nulla quis enim mauris. Donec convallis nunc id hendrerit condimentum. Duis elementum, purus eu tempus efficitur, tortor orci iaculis turpis, vel congue nibh metus id dui. Mauris egestas id lacus eu gravida. Integer porttitor, velit ut semper scelerisque, eros dolor suscipit ipsum, vel auctor elit nisi in ipsum. Nulla quis enim mauris. Donec convallis nunc id hendrerit condimentum. Duis elementum, purus eu tempus efficitur, tortor orci iaculis turpis, vel congue nibh metus id dui. Mauris egestas id lacus eu gravida. Integer porttitor, velit ut semper scelerisque, eros dolor suscipit ipsum, vel auctor elit nisi in ipsum. Nulla quis enim mauris. Donec convallis nunc id hendrerit condimentum. Duis elementum, purus eu tempus efficitur, tortor orci iaculis turpis, vel congue nibh metus id dui.", 
    											capacity: "1000", 
    											telephone: "3344-1133", 
    											cellphone: "8112-1212",  
    											base_price: 2000.0)
	enterprise.categories << Category.find(3)

	enterprise = Enterprise.create(name: "Flores Decoração", description: "Mauris egestas id lacus eu gravida. Integer porttitor, velit ut semper scelerisque, eros dolor suscipit ipsum, vel auctor elit nisi in ipsum. Nulla quis enim mauris. Donec convallis nunc id hendrerit condimentum. Duis elementum, purus eu tempus efficitur, tortor orci iaculis turpis, vel congue nibh metus id dui. Mauris egestas id lacus eu gravida. Integer porttitor, velit ut semper scelerisque, eros dolor suscipit ipsum, vel auctor elit nisi in ipsum. Nulla quis enim mauris. Donec convallis nunc id hendrerit condimentum. Duis elementum, purus eu tempus efficitur, tortor orci iaculis turpis, vel congue nibh metus id dui. Mauris egestas id lacus eu gravida. Integer porttitor, velit ut semper scelerisque, eros dolor suscipit ipsum, vel auctor elit nisi in ipsum. Nulla quis enim mauris. Donec convallis nunc id hendrerit condimentum. Duis elementum, purus eu tempus efficitur, tortor orci iaculis turpis, vel congue nibh metus id dui.", 
    											capacity: "1000", 
    											telephone: "3344-1133", 
    											cellphone: "8112-1212",  
    											base_price: 10300.0)
	enterprise.categories << Category.find(4)

	enterprise = Enterprise.create(name: "Decoração Bela Festa", description: "Mauris egestas id lacus eu gravida. Integer porttitor, velit ut semper scelerisque, eros dolor suscipit ipsum, vel auctor elit nisi in ipsum. Nulla quis enim mauris. Donec convallis nunc id hendrerit condimentum. Duis elementum, purus eu tempus efficitur, tortor orci iaculis turpis, vel congue nibh metus id dui. Mauris egestas id lacus eu gravida. Integer porttitor, velit ut semper scelerisque, eros dolor suscipit ipsum, vel auctor elit nisi in ipsum. Nulla quis enim mauris. Donec convallis nunc id hendrerit condimentum. Duis elementum, purus eu tempus efficitur, tortor orci iaculis turpis, vel congue nibh metus id dui. Mauris egestas id lacus eu gravida. Integer porttitor, velit ut semper scelerisque, eros dolor suscipit ipsum, vel auctor elit nisi in ipsum. Nulla quis enim mauris. Donec convallis nunc id hendrerit condimentum. Duis elementum, purus eu tempus efficitur, tortor orci iaculis turpis, vel congue nibh metus id dui.", 
    											capacity: "1000", 
    											telephone: "3344-1133", 
    											cellphone: "8112-1212",  
    											base_price: 1000.0)
	enterprise.categories << Category.find(4)

	enterprise = Enterprise.create(name: "Marineide Decoração", description: "Mauris egestas id lacus eu gravida. Integer porttitor, velit ut semper scelerisque, eros dolor suscipit ipsum, vel auctor elit nisi in ipsum. Nulla quis enim mauris. Donec convallis nunc id hendrerit condimentum. Duis elementum, purus eu tempus efficitur, tortor orci iaculis turpis, vel congue nibh metus id dui. Mauris egestas id lacus eu gravida. Integer porttitor, velit ut semper scelerisque, eros dolor suscipit ipsum, vel auctor elit nisi in ipsum. Nulla quis enim mauris. Donec convallis nunc id hendrerit condimentum. Duis elementum, purus eu tempus efficitur, tortor orci iaculis turpis, vel congue nibh metus id dui. Mauris egestas id lacus eu gravida. Integer porttitor, velit ut semper scelerisque, eros dolor suscipit ipsum, vel auctor elit nisi in ipsum. Nulla quis enim mauris. Donec convallis nunc id hendrerit condimentum. Duis elementum, purus eu tempus efficitur, tortor orci iaculis turpis, vel congue nibh metus id dui.", 
    											capacity: "1000", 
    											telephone: "3344-1133", 
    											cellphone: "8112-1212",  
    											base_price: 2000.0)
	enterprise.categories << Category.find(4)

    User.create(name: "Jose Antonio", email: "jose@gmail.com", password: "123456", password_confirmation: "123456", phone_number: "8885555512")
    User.create(name: "Felipe Marks", email: "felipe_marks@gmail.com", password: "123456", password_confirmation: "123456", phone_number: "8885551212")
    User.create(name: "Maria Beltrao", email: "maria@gmail.com", password: "123456", password_confirmation: "123456", phone_number: "7075551854")
    User.create(name: "Carla Pereira", email: "carla@gmail.com", password: "123456", password_confirmation: "123456", phone_number: "5555648583")
    User.create(name: "Josefina Antonio", email: "josefina@gmail.com", password: "123456", password_confirmation: "123456", phone_number: "4155553695")
