
INSERT INTO `detail_pembayaran` (`id`, `id_order_detail`, `total`, `status`, `created_at`) VALUES
(1, 1, 10, 'lunas', '2022-11-15 00:14:35'),
(2, 2, 5000, 'lunas', '2022-11-22 00:14:35');

INSERT INTO `keranjang` (`id`, `id_user`, `total`, `created_at`) VALUES
(1, 1, 10, '2022-11-15 00:12:13'),
(2, 2, 11, '2022-11-15 00:12:37');

INSERT INTO `keranjang_item` (`id`, `id_keranjang`, `id_product`, `jumlah`, `created_at`) VALUES
(1, 1, 2, 11, '2022-11-24 00:12:40'),
(2, 3, 4, 1, '2022-11-16 00:12:40');


INSERT INTO `order_detail` (`id`, `id_user`, `id_detail_p`, `jumlah`, `created_at`) VALUES
(1, 2, 1, 11, '2022-11-17 00:13:11'),
(2, 2, 2, 22, '2022-11-25 00:13:11');


INSERT INTO `order_item` (`id`, `id_order_detail`, `id_product`, `created_at`) VALUES
(1, 1, 5, '2022-11-16 00:14:05'),
(2, 2, 1, '2022-11-29 00:14:05');


INSERT INTO `produk` (`id`, `nama`, `harga`, `deksripsi`, `stok`, `created_at`) VALUES
(1, 'hp 1', 1000, 'hp terbaik', 20, '2022-11-15 00:12:01'),
(2, 'hp 2', 2000, 'hp terbaik 2', 25, '2022-11-15 00:12:01'),
(3, 'hp 3', 3000, 'hp terbaik 3', 10, '2022-11-15 00:12:01'),
(4, 'hp 4', 3000, 'hp terbaik 4', 30, '2022-11-15 00:12:01'),
(5, 'hp 5', 4000, 'hp terbaik 5', 40, '2022-11-15 00:12:01'),
(6, 'hp 6', 5000, 'hp terbaik 6', 35, '2022-11-15 00:12:01'),
(7, 'hp 7', 6000, 'hp terbaik 7', 45, '2022-11-15 00:12:01'),
(8, 'hp 8', 7000, 'hp terbaik 8', 80, '2022-11-15 00:12:01'),
(9, 'hp 9', 8000, 'hp terbaik 9', 35, '2022-11-15 00:12:01'),
(10, 'hp 10', 9000, 'hp terbaik 10', 40, '2022-11-15 00:12:01');


INSERT INTO `users` (`id`, `nama_lengkap`, `email`, `password`, `created_at`) VALUES
(1, 'riskidwiputra', 'riskidwiputra@gmail.com', 'password123', '2022-11-16 00:01:37'),
(2, 'daffa', 'daffa@gmail.com', 'password', '2022-11-15 00:01:37');
