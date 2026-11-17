create table penjualan(
  id serial primary key,
  produk_id INT,
  kelas varchar(5),
  jumlah INT check (jumlah>0),
  tanggal DATE,

  constraint fk_produk_penjualan
    foreign key(produk_id)
    references produk(id)
    on delete set null
);