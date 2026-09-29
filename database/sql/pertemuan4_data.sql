USE praktikum_web_2401020042;

INSERT INTO program_studi (nama_prodi) VALUES
    ('Teknik Informatika'),
    ('Sistem Informasi');

INSERT INTO mahasiswa
    (nim, nama, email, usia, program_studi_id)
VALUES
    ('2401020042', 'Alya Noviyani', 'alya@example.com', 20, 1),
    ('2401020043', 'Finkan Salsa', 'finkan@example.com', 21, 1),
    ('2401030050', 'Ahmad Syukron', 'ahmad@example.com', 19, 2),
    ('2401030090', 'Caca Amelia', 'caca@example.com', 18, 2);

UPDATE mahasiswa
SET email = 'alyacomel@example.com'
WHERE nim = '2401020042';

DELETE FROM mahasiswa
WHERE nim = '2401030050';

SELECT m.nim, m.nama, m.email, m.usia,
    p.nama_prodi
FROM mahasiswa AS m
JOIN program_studi AS p
    ON p.id = m.program_studi_id
ORDER BY m.nim;