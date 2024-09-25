-- SELECT ==> FROM ==> WHERE ==> GROUP BY ==> HAVING ==> ORDER BY

-- Từ bảng GRAB_RAWDATA, tính 
-- tổng basket_size theo city_id. Lọc các kết quả có tổng basket_size bé hơn 100.000

-- HAVING: SỬ DỤNG CHO HÀM TÍNH TOÁN
SELECT city_id, SUM(basket_size) AS TOTAL_BASKET
FROM Grab_Rawdata
GROUP BY city_id
HAVING SUM(basket_size) < 100000

-- INNER JOIN: trả về kết quả có giá trị khớp Ở CẢ 2 BẢNG

-- Từ bảng GRAB_RAWDATA và GRAB_JOINDATA
-- lấy ra những order_id trùng khớp ở cả 2 bảng, có trạng thái đơn (booking_state_simple) COMPLETED
-- cột city_id, city_name, GMV tương ứng
SELECT A.order_id, BOOKING_STATE_SIMPLE, city_id, city_name, GMV
FROM Grab_Rawdata AS A
INNER JOIN GRAB_JOINDATA AS B
    ON A.order_id = B.order_id
WHERE BOOKING_STATE_SIMPLE = 'COMPLETED'

-- LEFT JOIN: 

-- Từ bảng GRAB_RAWDATA và GRAB_JOINDATA, lấy ra những order_id và các thông tin sau:
-- User_id , user_name , city_id, city_name, GMV
SELECT A.order_id, B.order_id, A.user_id, user_name, city_id, city_name, GMV
FROM Grab_Rawdata AS A
LEFT JOIN GRAB_JOINDATA AS B
    ON A.order_id = B.order_id

SELECT *
FROM GRAB_JOINDATA
WHERE order_id = 65198405

-- HOMEWORK
-- Từ bảng GRAB_RAWDATA và GRAB_JOINDATA, lấy ra những order_id và các thông tin sau:
-- User_id , user_name , city_id, city_name, GMV
SELECT B.user_id, A.user_id, B.order_id, user_name, city_id, city_name, GMV
FROM GRAB_JOINDATA AS A 
RIGHT JOIN Grab_Rawdata AS B
    ON B.order_id = A.order_id 

-- BT3: Từ bảng GRAB_RAWDATA và GRAB_JOINDATA, 
-- kết hợp theo chiều dọc 2 cột order_id, user_id với nhau và LOẠI BỎ GIÁ TRỊ TRỦNG LẶP
-- • Sắp xếp thứ tự theo cột order_id tăng dần
SELECT order_id, user_id
FROM Grab_Rawdata 
UNION
SELECT order_id, user_id
FROM GRAB_JOINDATA
ORDER BY 2

-- Tách giá trị trước và sau dấu gạch ngang của cột merchant_id
SELECT merchant_id
    , LEFT(merchant_id, CHARINDEX('-', merchant_id) - 1) AS TRUOC_DAU
    , RIGHT(merchant_id, LEN(merchant_id) - CHARINDEX('-', merchant_id)) AS SAU_DAU
FROM Grab_RawData
WHERE CHARINDEX('-', merchant_id) <> 0

-- CHARINDEX VS PATINDEX
SELECT merchant_id
    , CHARINDEX('-', merchant_id)
    , PATINDEX('AWg%', merchant_id)
    , PATINDEX('%[ABC]%', merchant_id)
    , PATINDEX('%[^ABC]%', merchant_id)
    , STUFF(merchant_id, 1, 5, 'NEWSTRING')
FROM Grab_RawData






 

    