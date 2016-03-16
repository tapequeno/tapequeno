insert into user (id, email, password, create_time) values (1,'diegonfernandes@globomail.com', '1234', now());
insert into product values(1, 'Tenis masculino', 'Tenis masculino azul tamanha 18', 15.00, 0, '017988146825',0,1, 'ATIVO', now());
insert into images values (1, 'tenis1.jpg', 1);
insert into images values (2, 'tenis2.jpg', 1);
insert into product values(2, 'Calça masculino', 'Calça masculino azul Nº 2', 15.00, 0, '017988146825',0,1, 'ATIVO', now());
insert into images values (3, 'calca1.jpg', 2);
insert into images values (4, 'calca2.jpg', 2);

insert into user (id, email, password, create_time) values (2, 'teste@globomail.com', '1234', now());
insert into product values(3, 'Capuz masculino', 'Capuz masculino azul', 15.00, 0, '017988146825',0,2, 'ATIVO', now());
insert into images values (5, 'capuz1.jpg', 3);

select * from user;
select * from product;
select * from images;
select * from user left join product on (product.id_user = user.id);

/*DElete from user WHERE ID > 0;