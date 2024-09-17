/* */

/* Muốn đổi tên order_id thành mã đơn hàng dùng AS */
SELECT order_id AS Ma_donhang
, user_id  
, merchant_id
FROM [GRAB_RAWDATA]

/* Lấy dữ liệu không trùng lặp dùng DISTINCT */
SELECT DISTINCT order_id
, user_id  
FROM [GRAB_RAWDATA]


CREATE TABLE STAFF_INFOR
(
 STT INT,
 STAFF_NAME VARCHAR(25),
 STAFF_ID NVARCHAR(50),
 SALARY FLOAT
);

/* Thêm cột Status kiểu dữ liệu nvarchar 
có độ rộng 25 ký tự vào bảng staff_infor */
ALTER TABLE STAFF_INFOR
ADD status_id NVARCHAR(25);

/* Hiển thị danh sách unique cột merchant_id trong bảng GRAB_RAWDATA */
SELECT DISTINCT merchant_id FROM [GRAB_RAWDATA]


/* Hiển thị danh sách unique cột city_id và đổi tên thành Mã thành phố */
/* Hiển thị kết quả trong [] hệ thống sẽ hiểu được là một bí danh, tên */
SELECT DISTINCT CITY_ID AS [MÃ THÀNH PHỐ] 
FROM [GRAB_RAWDATA]

/* TOP: LIMIT LẠI SỐ DÒNG, DỰA VÀO SỐ DÒNG NHÂN VỚI TỈ LỆ PERCENT */
SELECT TOP 10 PERCENT order_id, user_id
FROM [GRAB_RAWDATA]

/* Hiển thị 50% dòng đầu tiên các cột order_id, user_id, time_order, trading_value, GMV trong bảng */
SELECT TOP 50 PERCENT order_id, user_id, time_order,trading_value, GMV
FROM GRAB_RAWDATA

/* Hiển thị một cột mới có  */
SELECT TOP 50 PERCENT order_id, user_id, time_order,trading_value, GMV, GMV - trading value AS DOANHTHU
FROM GRAB_RAWDATA

/* WHERE: Trả về kết quả theo 1 điều kiện xác định trong 1 cột  */
/* Trả kết quả cột Booking thành công  */
SELECT order_id, user_id,BOOKING_STATE_SIMPLE
FROM GRAB_RAWDATA
WHERE BOOKING_STATE_SIMPLE = 'COMPLETED'

/* Trả kết quả cột Booking có hoặc không thành công  */
SELECT order_id, user_id,BOOKING_STATE_SIMPLE
FROM GRAB_RAWDATA
WHERE BOOKING_STATE_SIMPLE <> 'COMPLETED'


/* DÙNG IN ĐỂ LỌC VÀ TRẢ KQ VỀ CÁC GIÁ TRỊ ĐỂ TRONG NGOẶC */
SELECT order_id, user_id,BOOKING_STATE_SIMPLE
FROM GRAB_RAWDATA
WHERE BOOKING_STATE_SIMPLE IN ('COMPLETED', 'CANCELLED_DRIVER')

/* NOT IN */
SELECT order_id, user_id,BOOKING_STATE_SIMPLE
FROM GRAB_RAWDATA
WHERE BOOKING_STATE_SIMPLE NOT IN ('COMPLETED', 'CANCELLED_DRIVER')

/* AND */
/* Lưu ý: Nếu kiểu dữ liệu của column là ký tự (varchar, nvarchar, ...) 
thì value phải được để trong dấu nháy đơn. Ngược lại, nếu kiểu dữ liệu số thì không cần */
SELECT order_id, user_id,BOOKING_STATE_SIMPLE
FROM GRAB_RAWDATA
WHERE BOOKING_STATE_SIMPLE IN ('COMPLETED') AND city_id = 9

SELECT order_id, user_id,BOOKING_STATE_SIMPLE, merchant_id
FROM GRAB_RAWDATA
WHERE BOOKING_STATE_SIMPLE IN ('COMPLETED')

/*  Lấy ra 10 dòng kết quả đầu tiên ở cột order_id tương ứng với cột merchant_id có chứa ký tự C2 
Lưu ý: Pattern được define như sau:
%a: Kết thúc với ký tự a
%a%: Chứa ký tự a
a%:Bắt đầu với ký tự a
*/
SELECT TOP 10 order_id, merchant_id
FROM GRAB_RAWDATA
WHERE merchant_id LIKE '%C2%'

/* Lấy ra các kí tự bắt đầu bằng C và kí tự thứ 2 có chứa O hoặc A */
SELECT Booking_state_simple
FROM GRAB_RAWDATA
WHERE Booking_state_simple LIKE ('C[O,A]%')

/* Lấy ra các kí tự bắt đầu bằng C và kí tự thứ 2 không chứa N hoặc A */
SELECT Booking_state_simple
FROM GRAB_RAWDATA
WHERE Booking_state_simple LIKE ('C[^N,A]%')


SELECT DISTINCT BOOKING_STATE_SIMPLE
FROM GRAB_RAWDATA

-- Filter theo điều kiện null
SELECT order_id, merchant_id
FROM GRAB_RAWDATA
WHERE order_id IS NULL

-- BETWEEN: Filter theo điều kiện nằm trong range, 1 khoảng nào đó
SELECT order_id, merchant_id, GMV
FROM GRAB_RAWDATA
WHERE GMV BETWEEN 100000 AND 300000
-- BETWEEN 100000 AND 300000 tương đương GMV >100000 AND GMV<300000

-- HÀM TỔNG, GIÁ TRỊ LỚN & NHỎ NHẤT, TRUNG BÌNH
SELECT SUM(GMV) AS TONG_GMV, MIN(GMV) AS [GIÁ TRỊ NHỎ NHẤT], MAX(GMV) AS [GIÁ TRỊ LỚN NHẤT], AVG(GMV) AS [GIÁ TRỊ TRUNG BÌNH]
FROM GRAB_RAWDATA


-- GROUP BY được hiểu là DISTINCT
SELECT user_id, SUM(GMV) AS TONG_GMV
FROM GRAB_RAWDATA
GROUP BY user_id 

-- THỨ TỰ VIẾT: SELECT - FROM - WHERE - GROUP BY

-- Bài tập về nhà
-- 1. Viếu câu lệnh lấy ra các cột không trùng lặp order_id, user_id, merchant_id và tạo thêm cột mới 
-- • Đặt tên là earning_merchant với công thức = basket_size – commission_from_merchant

SELECT DISTINCT order_id, user_id, merchant_id, (basket_size - commission_from_merchant) AS earning_merchant
FROM GRAB_RAWDATA

/* Từ bảng GRAB_RAWDATA, viết các câu lệnh theo các điều kiện sau ( mỗi bullet point là 1 câu lệnh ):*/
-- Taxi_type_id = 1510
SELECT order_id,taxi_type_id
FROM GRAB_RAWDATA
WHERE taxi_type_id = 1510
-- Booking_state_simple không bao gồm UNALLOCATED
SELECT Booking_state_simple
FROM GRAB_RAWDATA
WHERE Booking_state_simple NOT IN ('UNALLOCATED')
-- CÁCH 2: WHERE Booking_state_simple <> 'UNALLOCATED'
-- City_id = 9 HOẶC city_id = 14 và basket_size nằm trong khoảng 200.000 và 300.000
SELECT city_id, basket_size
FROM GRAB_RAWDATA
WHERE city_id BETWEEN 9 AND 14 AND basket_size BETWEEN 200000 AND 300000

-- CÁCH 2
SELECT city_id, basket_size
FROM GRAB_RAWDATA
WHERE (city_id = 9 OR city_id = 14) 
AND basket_size BETWEEN 200000 AND 300000
-- Merchant_id bắt đầu bằng VNG
SELECT merchant_id
FROM GRAB_RAWDATA
WHERE merchant_id LIKE 'VNG%'
-- Merchant_id có chứa CJ và GMV > 150.000 và city_id khác 14
SELECT city_id, merchant_id, GMV
FROM GRAB_RAWDATA
WHERE merchant_id LIKE '%CJ%' AND GMV > 150000 AND city_id NOT IN (14)

/* [ASC | DESC] là kiểu sắp xếp, 
nếu bạn chọn ASC thì tăng dần, còn DESC là giảm dần */
SELECT city_id 
FROM GRAB_RAWDATA  
ORDER BY city_id ASC

-- CÂU THỨ 3 HOMEWORK
SELECT TOP 10 user_id, SUM(GMV) AS KH_GMV_CAO_NHAT
FROM GRAB_RAWDATA
WHERE city_id = 9
GROUP BY user_id
ORDER BY SUM(GMV) DESC

SELECT city_id
FROM GRAB_RAWDATA











