-- Câu lệnh tạo database
-- create database + tên db

CREATE database if not exists wnetflix;
-- Câu lệnh tạo database
-- create database + tên db

-- create database if not exists wnetflix;

-- nguoi_dung
create table if not exists nguoi_dung (
    id int auto_increment primary key,
    ten_dang_nhap varchar(50) not null,
    mat_khau varchar(30) not null,
    email varchar(50) not null,
    so_dien_thoai varchar(10) not null
);

-- phim
create table if not exists phim (
    id int auto_increment primary key,
    ten_phim varchar(100),
    thoi_luong int,
    nam int,
    gioi_thieu varchar(255),
    dao_dien_id int
);

-- phim_dien_vien
create table if not exists phim_dien_vien (
    id int auto_increment primary key,
    phim_id int not null,
    dien_vien_id int not null
);

-- phim_the_loai
create table if not exists phim_the_loai (
    id int auto_increment primary key,
    phim_id int not null,
    the_loai_id int not null
);
-- dao_dien
create table if not exists dao_dien (
    id int auto_increment primary key,
    ten_dao_dien varchar(50)
);
-- dien_vien
create table if not exists dien_vien (
    id int auto_increment primary key,
    ten_dien_vien varchar(50)
);

-- the_loai
create table if not exists the_loai (
    id int auto_increment primary key,
    ten_the_loai varchar(100)
);

-- quoc_gia
create table if not exists quoc_gia (
    id int auto_increment primary key,
    ten_quoc_gia varchar(50)
);

-- dao_dien
INSERT INTO `dao_dien`(`ten_dao_dien`) VALUES ('Mai');
INSERT INTO `dao_dien`(`ten_dao_dien`) VALUES ('ngô ngọc ngà');
INSERT INTO `dao_dien`(`ten_dao_dien`) VALUES ('Mai phương đào');
INSERT INTO `dao_dien`(`ten_dao_dien`) VALUES ('phương linh');
INSERT INTO `dao_dien`(`ten_dao_dien`) VALUES ('thảo linh');

SELECT * FROM `dao_dien` WHERE 1

-- nguoi_dung
INSERT INTO `nguoi_dung`(`ten_dang_nhap`, `mat_khau`, `email`, `so_dien_thoai`) VALUES ('admin','123','admin@example.com','0234567891');
INSERT INTO `nguoi_dung`(`ten_dang_nhap`, `mat_khau`, `email`, `so_dien_thoai`) VALUES ('nguoi1','human1','mot@gmail.com','0345678912');
INSERT INTO `nguoi_dung`(`ten_dang_nhap`, `mat_khau`, `email`, `so_dien_thoai`) VALUES ('nguoi2','human2','hai@gmail.com','0456789123');
INSERT INTO `nguoi_dung`(`ten_dang_nhap`, `mat_khau`, `email`, `so_dien_thoai`) VALUES ('nguoi3','human3','ba@gmail.com','0567891234');
INSERT INTO `nguoi_dung`(`ten_dang_nhap`, `mat_khau`, `email`, `so_dien_thoai`) VALUES ('nguoi4','human4','bon@gmail.com','0678912345');
INSERT INTO `nguoi_dung`(`ten_dang_nhap`, `mat_khau`, `email`, `so_dien_thoai`) VALUES ('nguoi5','human5','nam@gmail.com','0789123456');
INSERT INTO `nguoi_dung`(`ten_dang_nhap`, `mat_khau`, `email`, `so_dien_thoai`) VALUES ('nguoi6','human6','sau@gmail.com','0891234567');

DELETE FROM `nguoi_dung` WHERE 7

-- phim
INSERT INTO `phim`(`ten_phim`, `thoi_luong`, `nam`, `gioi_thieu`, `dao_dien_id`) VALUES ('shin','180','1990','cậu bé shin và gia đình, cuộc sống xung quanh','5');
INSERT INTO `phim`(`ten_phim`, `thoi_luong`, `nam`, `gioi_thieu`, `dao_dien_id`) VALUES ('doraemon','100','1870','mèo máy','4');
INSERT INTO `phim`(`ten_phim`, `thoi_luong`, `nam`, `gioi_thieu`, `dao_dien_id`) VALUES ('chaien','120','1570','hát hay','3');

SELECT * FROM `phim` WHERE 1

-- the_loai
INSERT INTO `the_loai`(`ten_the_loai`) VALUES ('hài');
INSERT INTO `the_loai`(`ten_the_loai`) VALUES ('kinh dị');
INSERT INTO `the_loai`(`ten_the_loai`) VALUES ('đời thường');

SELECT * FROM `the_loai` WHERE 1

-- phim_the_loai
SELECT * FROM phim p
JOIN phim_the_loai ptl 
ON p.id = ptl.phim_id
JOIN the_loai tl
ON ptl.the_loai_id = tl.id
WHERE p.id = 1






