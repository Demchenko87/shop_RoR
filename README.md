# README

создал rails приложение 
сгенерировал платформу rails generate scaffold Product title:string description:text image:string price:decimal
rake db:migrate
добавил style scss
позаполнял форму
добавил проверку приемлимости данных на заполнение формы валидны ли значения
добавил форматы подгрузки картинок
добавил каталог товаро на глявную
поправил макет страниц
добавил fancybox подключил gem
добавил корзину rails generate scaffol Cart
связал товары с корзинами
rails generate scafold LineItem product:references cart:belongs_to
добавил кнопку добавить в корзину
настроил добавление 
* ...
