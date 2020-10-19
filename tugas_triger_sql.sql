DELIMITER $$

CREATE
    /*[DEFINER = { user | CURRENT_USER }]*/
    TRIGGER `day26`.`tugas_tgr` AFTER INSERT
    ON `day26`.`nilai_mahasiswa`
    FOR EACH ROW BEGIN
    INSERT INTO tbl_ipk
    VALUE (new.nim, ROUND((new.semester_1+new.semester_2+new.semester_3)/3,2));
    END$$

DELIMITER ;