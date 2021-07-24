sudo docker exec -it postgresql  bash

psql -U postgres

create database product;

create user root with encrypted password 'Thaovy24';

grant all privileges on database product to root;

\c product

CREATE TABLE productlist (
  maSanPham int NOT NULL,
  tenSanPham text NOT NULL,
  hinhAnh text NOT NULL,
  soLuong int NOT NULL
);

grant all privileges on table productlist to root;

INSERT INTO productlist (masanPham, tensanPham, hinhanh, soluong) VALUES
(112, 'iPhone 12 Pro Max', 'https://cdn.tgdd.vn/Products/Images/42/213033/iphone-12-pro-max-xanh-duong-new-600x600-200x200.jpg', 30),
(113, 'Samsung Galaxy S21 Ultra 5G', 'https://cdn.tgdd.vn/Products/Images/42/226316/samsung-galaxy-s21-ultra-bac-600x600-1-600x600.jpg', 10),
(114, 'iPhone 12 mini', 'https://cdn.tgdd.vn/Products/Images/42/228741/iphone-mini-do-new-600x600-600x600.jpg', 11),
(115, 'Vivo Y51', 'https://cdn.tgdd.vn/Products/Images/42/228950/vivo-y51-bac-600x600-600x600.jpg', 42),
(116, 'Samsung Galaxy Z Fold2 5G', 'https://cdn.tgdd.vn/Products/Images/42/226099/samsung-galaxy-z-fold-2-vang-dong-600x600.jpg', 2),
(117, 'Xiaomi Redmi Note 10', 'https://cdn.tgdd.vn/Products/Images/42/222758/xiaomi-redmi-note-10-thumb-green-600x600-1-600x600.jpg', 8),
(118, 'OPPO Reno3 Pro', 'https://cdn.tgdd.vn/Products/Images/42/216172/oppo-reno3-pro-den-new-600x600-600x600.jpg', 24),
(119, 'Realme 6 Pro', 'https://cdn.tgdd.vn/Products/Images/42/214645/realme-6-pro-do-new-600x600-600x600.jpg', 5),
(120, 'Samsung Galaxy Note 20 Ultra 5G', 'https://cdn.tgdd.vn/Products/Images/42/225063/sam-sung-note-20-ultra-vang-dong-600x600.jpg', 10),
(121, 'iPhone 12 Pro', 'https://cdn.tgdd.vn/Products/Images/42/213032/iphone-12-pro-bac-new-600x600-600x600.jpg', 18);
