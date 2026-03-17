SELECT
    p.prename        AS `คํานําหน้า`,
    p.fname          AS `ชื่อ`,
    p.lname          AS `นามสกุล`,
    p.sex            AS `เพศ`,
    RIGHT(p.birth,2) AS `วันเกิด`,
    MID(p.birth,6,2) AS `เดือนเกิด`,
    YEAR(p.birth)    AS `ปีเกิด`,
    p.idcard         AS `เลขบัตรประชาชน`,
    p.typelive       AS `ประเภทที่อยู่อาศัย`,
    h.villcode       AS `เลขที่อยู่อาศัย`,
    v.villname       AS `ชื่อหมู่บ้าน`,
    p.hnomoi         AS `บ้านเลขที่`,
    h.road           AS `ชื่อถนน`,
    h.xgis           AS `ละติจูด`,
    h.ygis           AS `ลองติจูด`,
    ''               AS `ประเภทผู้ป่วย`,
    ''               AS `หนังสือเดินทาง`
FROM person AS p
INNER JOIN house AS h 
    ON p.hcode = h.hcode
INNER JOIN village AS v 
    ON h.pcucode = v.pcucode
   AND h.villcode = v.villcode
WHERE p.typelive IN (1,3)
  AND p.dischargetype = '9';
