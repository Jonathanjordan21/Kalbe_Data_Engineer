create database Universitas;

use Universitas;

create table mahasiswa(
	NIM VARCHAR(10) PRIMARY KEY,
    NAMA VARCHAR(255),
    IPK DECIMAL(3, 2)
);

select * from mahasiswa;