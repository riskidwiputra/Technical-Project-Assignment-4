CREATE TABLE `users` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `nama_lengkap` varchar(255),
  `email` varchar(255),
  `password` varchar(255),
  `created_at` timestamp,
  `updated_at` timestamp,
  `deleted_at` timestamp
);

CREATE TABLE `produk` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `nama` varchar(255),
  `harga` int,
  `deksripsi` varchar(255),
  `stok` int,
  `created_at` timestamp,
  `updated_at` timestamp,
  `deleted_at` timestamp
);

CREATE TABLE `keranjang` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `id_user` int,
  `total` int,
  `created_at` timestamp,
  `updated_at` timestamp,
  `deleted_at` timestamp
);

CREATE TABLE `keranjang_item` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `id_keranjang` int,
  `id_product` int,
  `jumlah` int,
  `created_at` timestamp,
  `updated_at` timestamp,
  `deleted_at` timestamp
);

CREATE TABLE `order_detail` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `id_user` int,
  `id_detail_p` int,
  `jumlah` int,
  `created_at` timestamp,
  `updated_at` timestamp,
  `deleted_at` timestamp
);

CREATE TABLE `order_item` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `id_order_detail` int,
  `id_product` int,
  `created_at` timestamp,
  `updated_at` timestamp,
  `deleted_at` timestamp
);

CREATE TABLE `detail_pembayaran` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `id_order_detail` int,
  `total` int,
  `status` varchar(255),
  `created_at` timestamp,
  `updated_at` timestamp,
  `deleted_at` timestamp
);

ALTER TABLE `keranjang` ADD FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

CREATE TABLE `keranjang_keranjang_item` (
  `keranjang_id` int,
  `keranjang_item_id_keranjang` int,
  PRIMARY KEY (`keranjang_id`, `keranjang_item_id_keranjang`)
);

ALTER TABLE `keranjang_keranjang_item` ADD FOREIGN KEY (`keranjang_id`) REFERENCES `keranjang` (`id`);

ALTER TABLE `keranjang_keranjang_item` ADD FOREIGN KEY (`keranjang_item_id_keranjang`) REFERENCES `keranjang_item` (`id_keranjang`);


ALTER TABLE `produk` ADD FOREIGN KEY (`id`) REFERENCES `keranjang_item` (`id_product`);

ALTER TABLE `order_detail` ADD FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

ALTER TABLE `detail_pembayaran` ADD FOREIGN KEY (`id`) REFERENCES `order_detail` (`id_detail_p`);

ALTER TABLE `order_item` ADD FOREIGN KEY (`id_order_detail`) REFERENCES `order_detail` (`id`);

ALTER TABLE `order_item` ADD FOREIGN KEY (`id_product`) REFERENCES `produk` (`id`);
