use OnlineShop;


-- 1 pelanggan membeli 3 barang yang berbeda
select *
from order_detail inner join users
on order_detail.id_user = users.id
inner join produk
on transaksi.id_brg = produk.id
where id = 1;


-- Melihat 3 produk yang paling sering dibeli oleh pelanggan
select * from order_detail order by jumlah desc limit 3 ;

-- Melihat Kategori barang yang paling banyak barangnya
select nama_brg, id_ktgr, nama_ktgr, max(stok_brg)
from produk inner join kategori
on barang.id_ktgr = kategori.id;

-- Melihat pendapat rata-rata tiap bulan terakhir
select AVG(order_detail.jumlah*produk.harga) as rata_rata_transaksi
FROM order_detail inner join produk
on order_detail.id = barang.id_product
GROUP BY YEAR(order_detail.created_at), MONTH(order_detail.created_at);