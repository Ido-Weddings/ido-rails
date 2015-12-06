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
    											base_price: 9000.0,
                                                password: "12345678",
                                                password_confirmation: "12345678")
	enterprise.categories << Category.find(1)

	enterprise = Enterprise.create(name: "Cerimonial Felizes para Sempre", description: "Mauris egestas id lacus eu gravida. Integer porttitor, velit ut semper scelerisque, eros dolor suscipit ipsum, vel auctor elit nisi in ipsum. Nulla quis enim mauris. Donec convallis nunc id hendrerit condimentum. Duis elementum, purus eu tempus efficitur, tortor orci iaculis turpis, vel congue nibh metus id dui. Mauris egestas id lacus eu gravida. Integer porttitor, velit ut semper scelerisque, eros dolor suscipit ipsum, vel auctor elit nisi in ipsum. Nulla quis enim mauris. Donec convallis nunc id hendrerit condimentum. Duis elementum, purus eu tempus efficitur, tortor orci iaculis turpis, vel congue nibh metus id dui. Mauris egestas id lacus eu gravida. Integer porttitor, velit ut semper scelerisque, eros dolor suscipit ipsum, vel auctor elit nisi in ipsum. Nulla quis enim mauris. Donec convallis nunc id hendrerit condimentum. Duis elementum, purus eu tempus efficitur, tortor orci iaculis turpis, vel congue nibh metus id dui.", 
    											capacity: "1000", 
    											telephone: "3344-1133", 
    											cellphone: "8112-1212",  
    											base_price: 22000.0,
                                                password: "12345678",
                                                password_confirmation: "12345678")
	enterprise.categories << Category.find(1)

	enterprise = Enterprise.create(name: "Cerimonial Alto Platinnum", description: "Mauris egestas id lacus eu gravida. Integer porttitor, velit ut semper scelerisque, eros dolor suscipit ipsum, vel auctor elit nisi in ipsum. Nulla quis enim mauris. Donec convallis nunc id hendrerit condimentum. Duis elementum, purus eu tempus efficitur, tortor orci iaculis turpis, vel congue nibh metus id dui. Mauris egestas id lacus eu gravida. Integer porttitor, velit ut semper scelerisque, eros dolor suscipit ipsum, vel auctor elit nisi in ipsum. Nulla quis enim mauris. Donec convallis nunc id hendrerit condimentum. Duis elementum, purus eu tempus efficitur, tortor orci iaculis turpis, vel congue nibh metus id dui. Mauris egestas id lacus eu gravida. Integer porttitor, velit ut semper scelerisque, eros dolor suscipit ipsum, vel auctor elit nisi in ipsum. Nulla quis enim mauris. Donec convallis nunc id hendrerit condimentum. Duis elementum, purus eu tempus efficitur, tortor orci iaculis turpis, vel congue nibh metus id dui.", 
    											capacity: "1000", 
    											telephone: "3344-1133", 
    											cellphone: "8112-1212",  
    											base_price: 9000.0,
                                                password: "12345678",
                                                password_confirmation: "12345678")
	enterprise.categories << Category.find(1)

	enterprise = Enterprise.create(name: "Cerimonial Tudo Perfeito", description: "Mauris egestas id lacus eu gravida. Integer porttitor, velit ut semper scelerisque, eros dolor suscipit ipsum, vel auctor elit nisi in ipsum. Nulla quis enim mauris. Donec convallis nunc id hendrerit condimentum. Duis elementum, purus eu tempus efficitur, tortor orci iaculis turpis, vel congue nibh metus id dui. Mauris egestas id lacus eu gravida.", 
    											capacity: "1000", 
    											telephone: "3344-1133", 
    											cellphone: "8112-1212",  
    											base_price: 2000.0,
                                                password: "12345678",
                                                password_confirmation: "12345678")
	enterprise.categories << Category.find(1)

	enterprise = Enterprise.create(name: "Banda Feras do Baile", description: "Mauris egestas id lacus eu gravida. Integer porttitor, velit ut semper scelerisque, eros dolor suscipit ipsum, vel auctor elit nisi in ipsum. Nulla quis enim mauris. Donec convallis nunc id hendrerit condimentum. Duis elementum, purus eu tempus efficitur, tortor orci iaculis turpis, vel congue nibh metus id dui. Mauris egestas id lacus eu gravida. Integer porttitor, velit ut semper scelerisque, eros dolor suscipit ipsum, vel auctor elit nisi in ipsum. Nulla quis enim mauris. Donec convallis nunc id hendrerit condimentum. Duis elementum, purus eu tempus efficitur, tortor orci iaculis turpis, vel congue nibh metus id dui. Mauris egestas id lacus eu gravida. Integer porttitor, velit ut semper scelerisque, eros dolor suscipit ipsum, vel auctor elit nisi in ipsum. Nulla quis enim mauris. Donec convallis nunc id hendrerit condimentum. Duis elementum, purus eu tempus efficitur, tortor orci iaculis turpis, vel congue nibh metus id dui.", 
    											capacity: "1000", 
    											telephone: "3344-1133", 
    											cellphone: "8112-1212",  
    											base_price: 2300.0,
                                                password: "12345678",
                                                password_confirmation: "12345678")
	enterprise.categories << Category.find(5)

	enterprise = Enterprise.create(name: "Banda Jazz Fusion", description: "Mauris egestas id lacus eu gravida. Integer porttitor, velit ut semper scelerisque, eros dolor suscipit ipsum, vel auctor elit nisi in ipsum. Nulla quis enim mauris. Donec convallis nunc id hendrerit condimentum. Duis elementum, purus eu tempus efficitur, tortor orci iaculis turpis, vel congue nibh metus id dui. Mauris egestas id lacus eu gravida. Integer porttitor, velit ut semper scelerisque, eros dolor suscipit ipsum, vel auctor elit nisi in ipsum. Nulla quis enim mauris. Donec convallis nunc id hendrerit condimentum. Duis elementum, purus eu tempus efficitur, tortor orci iaculis turpis, vel congue nibh metus id dui. Mauris egestas id lacus eu gravida. Integer porttitor, velit ut semper scelerisque, eros dolor suscipit ipsum, vel auctor elit nisi in ipsum. Nulla quis enim mauris. Donec convallis nunc id hendrerit condimentum. Duis elementum, purus eu tempus efficitur, tortor orci iaculis turpis, vel congue nibh metus id dui.", 
    											capacity: "1000", 
    											telephone: "3344-1133", 
    											cellphone: "8112-1212",  
    											base_price: 4000.0,
                                                password: "12345678",
                                                password_confirmation: "12345678")
	enterprise.categories << Category.find(5)
	enterprise = Enterprise.create(name: "Banda Os Marotos", description: "Mauris egestas id lacus eu gravida. Integer porttitor, velit ut semper scelerisque, eros dolor suscipit ipsum, vel auctor elit nisi in ipsum. Nulla quis enim mauris. Donec convallis nunc id hendrerit condimentum. Duis elementum, purus eu tempus efficitur, tortor orci iaculis turpis, vel congue nibh metus id dui. Mauris egestas id lacus eu gravida. Integer porttitor, velit ut semper scelerisque, eros dolor suscipit ipsum, vel auctor elit nisi in ipsum. Nulla quis enim mauris. Donec convallis nunc id hendrerit condimentum. Duis elementum, purus eu tempus efficitur, tortor orci iaculis turpis, vel congue nibh metus id dui. Mauris egestas id lacus eu gravida. Integer porttitor, velit ut semper scelerisque, eros dolor suscipit ipsum, vel auctor elit nisi in ipsum. Nulla quis enim mauris. Donec convallis nunc id hendrerit condimentum. Duis elementum, purus eu tempus efficitur, tortor orci iaculis turpis, vel congue nibh metus id dui.", 
    											capacity: "1000", 
    											telephone: "3344-1133", 
    											cellphone: "8112-1212",  
    											base_price: 2000.0,
                                                password: "12345678",
                                                password_confirmation: "12345678")
	enterprise.categories << Category.find(5)

	enterprise = Enterprise.create(name: "Banda Song Pop", description: "Mauris egestas id lacus eu gravida. Integer porttitor, velit ut semper scelerisque, eros dolor suscipit ipsum, vel auctor elit nisi in ipsum. Nulla quis enim mauris. Donec convallis nunc id hendrerit condimentum. Duis elementum, purus eu tempus efficitur, tortor orci iaculis turpis, vel congue nibh metus id dui. Mauris egestas id lacus eu gravida. Integer porttitor, velit ut semper scelerisque, eros dolor suscipit ipsum, vel auctor elit nisi in ipsum. Nulla quis enim mauris. Donec convallis nunc id hendrerit condimentum. Duis elementum, purus eu tempus efficitur, tortor orci iaculis turpis, vel congue nibh metus id dui. Mauris egestas id lacus eu gravida. Integer porttitor, velit ut semper scelerisque, eros dolor suscipit ipsum, vel auctor elit nisi in ipsum. Nulla quis enim mauris. Donec convallis nunc id hendrerit condimentum. Duis elementum, purus eu tempus efficitur, tortor orci iaculis turpis, vel congue nibh metus id dui.", 
    											capacity: "1000", 
    											telephone: "3344-1133", 
    											cellphone: "8112-1212",  
    											base_price: 2000.0,
                                                password: "12345678",
                                                password_confirmation: "12345678")
	enterprise.categories << Category.find(5)

	enterprise = Enterprise.create(name: "Fotografia Novo Mundo", description: "Mauris egestas id lacus eu gravida. Integer porttitor, velit ut semper scelerisque, eros dolor suscipit ipsum, vel auctor elit nisi in ipsum. Nulla quis enim mauris. Donec convallis nunc id hendrerit condimentum. Duis elementum, purus eu tempus efficitur, tortor orci iaculis turpis, vel congue nibh metus id dui. Mauris egestas id lacus eu gravida. Integer porttitor, velit ut semper scelerisque, eros dolor suscipit ipsum, vel auctor elit nisi in ipsum. Nulla quis enim mauris. Donec convallis nunc id hendrerit condimentum. Duis elementum, purus eu tempus efficitur, tortor orci iaculis turpis, vel congue nibh metus id dui. Mauris egestas id lacus eu gravida. Integer porttitor, velit ut semper scelerisque, eros dolor suscipit ipsum, vel auctor elit nisi in ipsum. Nulla quis enim mauris. Donec convallis nunc id hendrerit condimentum. Duis elementum, purus eu tempus efficitur, tortor orci iaculis turpis, vel congue nibh metus id dui.", 
    											capacity: "1000", 
    											telephone: "3344-1133", 
    											cellphone: "8112-1212",  
    											base_price: 5000.0,
                                                password: "12345678",
                                                password_confirmation: "12345678")
	enterprise.categories << Category.find(2)

	enterprise = Enterprise.create(name: "Arte e Fotografia", description: "Mauris egestas id lacus eu gravida. Integer porttitor, velit ut semper scelerisque, eros dolor suscipit ipsum, vel auctor elit nisi in ipsum. Nulla quis enim mauris. Donec convallis nunc id hendrerit condimentum. Duis elementum, purus eu tempus efficitur, tortor orci iaculis turpis, vel congue nibh metus id dui. Mauris egestas id lacus eu gravida. Integer porttitor, velit ut semper scelerisque, eros dolor suscipit ipsum, vel auctor elit nisi in ipsum. Nulla quis enim mauris. Donec convallis nunc id hendrerit condimentum. Duis elementum, purus eu tempus efficitur, tortor orci iaculis turpis, vel congue nibh metus id dui. Mauris egestas id lacus eu gravida. Integer porttitor, velit ut semper scelerisque, eros dolor suscipit ipsum, vel auctor elit nisi in ipsum. Nulla quis enim mauris. Donec convallis nunc id hendrerit condimentum. Duis elementum, purus eu tempus efficitur, tortor orci iaculis turpis, vel congue nibh metus id dui.", 
    											capacity: "1000", 
    											telephone: "3344-1133", 
    											cellphone: "8112-1212",  
    											base_price: 3000.0,
                                                password: "12345678",
                                                password_confirmation: "12345678")
	enterprise.categories << Category.find(2)

	enterprise = Enterprise.create(name: "Foto e Filmage ltda", description: "Mauris egestas id lacus eu gravida. Integer porttitor, velit ut semper scelerisque, eros dolor suscipit ipsum, vel auctor elit nisi in ipsum. Nulla quis enim mauris. Donec convallis nunc id hendrerit condimentum. Duis elementum, purus eu tempus efficitur, tortor orci iaculis turpis, vel congue nibh metus id dui. Mauris egestas id lacus eu gravida. Integer porttitor, velit ut semper scelerisque, eros dolor suscipit ipsum, vel auctor elit nisi in ipsum. Nulla quis enim mauris. Donec convallis nunc id hendrerit condimentum. Duis elementum, purus eu tempus efficitur, tortor orci iaculis turpis, vel congue nibh metus id dui. Mauris egestas id lacus eu gravida. Integer porttitor, velit ut semper scelerisque, eros dolor suscipit ipsum, vel auctor elit nisi in ipsum. Nulla quis enim mauris. Donec convallis nunc id hendrerit condimentum. Duis elementum, purus eu tempus efficitur, tortor orci iaculis turpis, vel congue nibh metus id dui.", 
    											capacity: "1000", 
    											telephone: "3344-1133", 
    											cellphone: "8112-1212",  
    											base_price: 5000.0,
                                                password: "12345678",
                                                password_confirmation: "12345678")
	enterprise.categories << Category.find(2)

	enterprise = Enterprise.create(name: "Vestidos para Noiva", description: "Mauris egestas id lacus eu gravida. Integer porttitor, velit ut semper scelerisque, eros dolor suscipit ipsum, vel auctor elit nisi in ipsum. Nulla quis enim mauris. Donec convallis nunc id hendrerit condimentum. Duis elementum, purus eu tempus efficitur, tortor orci iaculis turpis, vel congue nibh metus id dui. Mauris egestas id lacus eu gravida. Integer porttitor, velit ut semper scelerisque, eros dolor suscipit ipsum, vel auctor elit nisi in ipsum. Nulla quis enim mauris. Donec convallis nunc id hendrerit condimentum. Duis elementum, purus eu tempus efficitur, tortor orci iaculis turpis, vel congue nibh metus id dui. Mauris egestas id lacus eu gravida. Integer porttitor, velit ut semper scelerisque, eros dolor suscipit ipsum, vel auctor elit nisi in ipsum. Nulla quis enim mauris. Donec convallis nunc id hendrerit condimentum. Duis elementum, purus eu tempus efficitur, tortor orci iaculis turpis, vel congue nibh metus id dui.", 
    											capacity: "1000", 
    											telephone: "3344-1133", 
    											cellphone: "8112-1212",  
    											base_price: 1000.0,
                                                password: "12345678",
                                                password_confirmation: "12345678")
	enterprise.categories << Category.find(3)

	enterprise = Enterprise.create(name: "Vestida de Branco", description: "Mauris egestas id lacus eu gravida. Integer porttitor, velit ut semper scelerisque, eros dolor suscipit ipsum, vel auctor elit nisi in ipsum. Nulla quis enim mauris. Donec convallis nunc id hendrerit condimentum. Duis elementum, purus eu tempus efficitur, tortor orci iaculis turpis, vel congue nibh metus id dui. Mauris egestas id lacus eu gravida. Integer porttitor, velit ut semper scelerisque, eros dolor suscipit ipsum, vel auctor elit nisi in ipsum. Nulla quis enim mauris. Donec convallis nunc id hendrerit condimentum. Duis elementum, purus eu tempus efficitur, tortor orci iaculis turpis, vel congue nibh metus id dui. Mauris egestas id lacus eu gravida. Integer porttitor, velit ut semper scelerisque, eros dolor suscipit ipsum, vel auctor elit nisi in ipsum. Nulla quis enim mauris. Donec convallis nunc id hendrerit condimentum. Duis elementum, purus eu tempus efficitur, tortor orci iaculis turpis, vel congue nibh metus id dui.", 
    											capacity: "1000", 
    											telephone: "3344-1133", 
    											cellphone: "8112-1212",  
    											base_price: 4000.0,
                                                password: "12345678",
                                                password_confirmation: "12345678")
	enterprise.categories << Category.find(3)

	enterprise = Enterprise.create(name: "Fina Estampa", description: "Mauris egestas id lacus eu gravida. Integer porttitor, velit ut semper scelerisque, eros dolor suscipit ipsum, vel auctor elit nisi in ipsum. Nulla quis enim mauris. Donec convallis nunc id hendrerit condimentum. Duis elementum, purus eu tempus efficitur, tortor orci iaculis turpis, vel congue nibh metus id dui. Mauris egestas id lacus eu gravida. Integer porttitor, velit ut semper scelerisque, eros dolor suscipit ipsum, vel auctor elit nisi in ipsum. Nulla quis enim mauris. Donec convallis nunc id hendrerit condimentum. Duis elementum, purus eu tempus efficitur, tortor orci iaculis turpis, vel congue nibh metus id dui. Mauris egestas id lacus eu gravida. Integer porttitor, velit ut semper scelerisque, eros dolor suscipit ipsum, vel auctor elit nisi in ipsum. Nulla quis enim mauris. Donec convallis nunc id hendrerit condimentum. Duis elementum, purus eu tempus efficitur, tortor orci iaculis turpis, vel congue nibh metus id dui.", 
    											capacity: "1000", 
    											telephone: "3344-1133", 
    											cellphone: "8112-1212",  
    											base_price: 2000.0,
                                                password: "12345678",
                                                password_confirmation: "12345678")
	enterprise.categories << Category.find(3)

	enterprise = Enterprise.create(name: "Flores Decoração", description: "Mauris egestas id lacus eu gravida. Integer porttitor, velit ut semper scelerisque, eros dolor suscipit ipsum, vel auctor elit nisi in ipsum. Nulla quis enim mauris. Donec convallis nunc id hendrerit condimentum. Duis elementum, purus eu tempus efficitur, tortor orci iaculis turpis, vel congue nibh metus id dui. Mauris egestas id lacus eu gravida. Integer porttitor, velit ut semper scelerisque, eros dolor suscipit ipsum, vel auctor elit nisi in ipsum. Nulla quis enim mauris. Donec convallis nunc id hendrerit condimentum. Duis elementum, purus eu tempus efficitur, tortor orci iaculis turpis, vel congue nibh metus id dui. Mauris egestas id lacus eu gravida. Integer porttitor, velit ut semper scelerisque, eros dolor suscipit ipsum, vel auctor elit nisi in ipsum. Nulla quis enim mauris. Donec convallis nunc id hendrerit condimentum. Duis elementum, purus eu tempus efficitur, tortor orci iaculis turpis, vel congue nibh metus id dui.", 
    											capacity: "1000", 
    											telephone: "3344-1133", 
    											cellphone: "8112-1212",  
    											base_price: 10300.0,
                                                password: "12345678",
                                                password_confirmation: "12345678")
	enterprise.categories << Category.find(4)

	enterprise = Enterprise.create(name: "Decoração Bela Festa", description: "Mauris egestas id lacus eu gravida. Integer porttitor, velit ut semper scelerisque, eros dolor suscipit ipsum, vel auctor elit nisi in ipsum. Nulla quis enim mauris. Donec convallis nunc id hendrerit condimentum. Duis elementum, purus eu tempus efficitur, tortor orci iaculis turpis, vel congue nibh metus id dui. Mauris egestas id lacus eu gravida. Integer porttitor, velit ut semper scelerisque, eros dolor suscipit ipsum, vel auctor elit nisi in ipsum. Nulla quis enim mauris. Donec convallis nunc id hendrerit condimentum. Duis elementum, purus eu tempus efficitur, tortor orci iaculis turpis, vel congue nibh metus id dui. Mauris egestas id lacus eu gravida. Integer porttitor, velit ut semper scelerisque, eros dolor suscipit ipsum, vel auctor elit nisi in ipsum. Nulla quis enim mauris. Donec convallis nunc id hendrerit condimentum. Duis elementum, purus eu tempus efficitur, tortor orci iaculis turpis, vel congue nibh metus id dui.", 
    											capacity: "1000", 
    											telephone: "3344-1133", 
    											cellphone: "8112-1212",  
    											base_price: 1000.0,
                                                password: "12345678",
                                                password_confirmation: "12345678")
	enterprise.categories << Category.find(4)

	enterprise = Enterprise.create(name: "Marineide Decoração", description: "Mauris egestas id lacus eu gravida. Integer porttitor, velit ut semper scelerisque, eros dolor suscipit ipsum, vel auctor elit nisi in ipsum. Nulla quis enim mauris. Donec convallis nunc id hendrerit condimentum. Duis elementum, purus eu tempus efficitur, tortor orci iaculis turpis, vel congue nibh metus id dui. Mauris egestas id lacus eu gravida. Integer porttitor, velit ut semper scelerisque, eros dolor suscipit ipsum, vel auctor elit nisi in ipsum. Nulla quis enim mauris. Donec convallis nunc id hendrerit condimentum. Duis elementum, purus eu tempus efficitur, tortor orci iaculis turpis, vel congue nibh metus id dui. Mauris egestas id lacus eu gravida. Integer porttitor, velit ut semper scelerisque, eros dolor suscipit ipsum, vel auctor elit nisi in ipsum. Nulla quis enim mauris. Donec convallis nunc id hendrerit condimentum. Duis elementum, purus eu tempus efficitur, tortor orci iaculis turpis, vel congue nibh metus id dui.", 
    											capacity: "1000", 
    											telephone: "3344-1133", 
    											cellphone: "8112-1212",  
    											base_price: 2000.0,
                                                password: "12345678",
                                                password_confirmation: "12345678")
	enterprise.categories << Category.find(4)

    User.create(name: "Jose Antonio", email: "jose@gmail.com", password: "123456", password_confirmation: "123456", phone_number: "8885555512", fb_picture_url: "https://scontent-gru1-1.xx.fbcdn.net/hphotos-xpt1/v/t1.0-9/12096418_1874958149473217_4034503172278688112_n.jpg?oh=a7183db26f8632290ffb1aac0b567051&oe=56DDFA3E")
    User.create(name: "Felipe Marks", email: "felipe_marks@gmail.com", password: "123456", password_confirmation: "123456", phone_number: "8885551212", fb_picture_url: "https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xtp1/v/t1.0-1/12141791_1706434589580255_5599652143324961705_n.jpg?oh=605436b83c43058d7a5a6db4403ffde5&oe=56F034FB&__gda__=1458131061_97b4510888dc3822c07c99a298d96b07")
    User.create(name: "Maria Beltrao", email: "maria@gmail.com", password: "123456", password_confirmation: "123456", phone_number: "7075551854", fb_picture_url: "https://fbcdn-sphotos-e-a.akamaihd.net/hphotos-ak-ash2/v/t1.0-9/10428647_765192140224790_285166654980918408_n.jpg?oh=4fd319a80cb68ce4375a7eb381c322c3&oe=56F23010&__gda__=1458146193_87efab93e26259e98036cd3fddd002e7")
    User.create(name: "Carla Pereira", email: "carla@gmail.com", password: "123456", password_confirmation: "123456", phone_number: "5555648583", fb_picture_url: "https://fbcdn-sphotos-e-a.akamaihd.net/hphotos-ak-ash2/v/t1.0-9/10428647_765192140224790_285166654980918408_n.jpg?oh=4fd319a80cb68ce4375a7eb381c322c3&oe=56F23010&__gda__=1458146193_87efab93e26259e98036cd3fddd002e7")
    User.create(name: "Josefina Antonio", email: "josefina@gmail.com", password: "123456", password_confirmation: "123456", phone_number: "4155553695", fb_picture_url: "https://fbcdn-sphotos-g-a.akamaihd.net/hphotos-ak-xaf1/t31.0-8/170044_10150142624069899_1437708_o.jpg")
