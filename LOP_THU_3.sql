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

-- CHARINDEX VS PATINDEX VS STUFF
SELECT merchant_id
    , CHARINDEX('-', merchant_id)
    , PATINDEX('AWg%', merchant_id)
    , PATINDEX('%[ABC]%', merchant_id)
    , PATINDEX('%[^ABC]%', merchant_id)
    , STUFF(merchant_id, 1, 5, 'NEWSTRING')
FROM Grab_RawData

-- BTVN
-- BT1: Từ bảng GRAB_RAWDATA và GRAB_JOINDATA, 
-- tính độ dài trung bình các ký tự của user_name theo từng city_id
-- • Với điều kiện chỉ lấy các order_id có GMV > 50.000
SELECT city_id, AVG(LEN([user_name])) AS AVG_LENGTH
FROM Grab_RawData AS A
INNER JOIN GRAB_JOINDATA AS B
    ON A.order_id = B.order_id
WHERE GMV > 50000
GROUP BY city_id 

-- BT2: Từ bảng GRAB_RAWDATA và GRAB_JOINDATA, 
-- tính độ dài trung bình các ký tự của user_name theo từng ký tự đầu tiên của user_name (được hiểu là 2 column)
-- • Ký tự đầu tiên của user_name BẮT BUỘC được viết in
-- • Với điều kiện chỉ lấy các order_id có Time_order trong Tháng 1
SELECT UPPER(LEFT([user_name], 1)) AS KYTU_DAUTIEN
    , AVG(LEN([user_name])) AS AVG_LENGTH
FROM Grab_RawData AS A
INNER JOIN GRAB_JOINDATA AS B
    ON A.order_id = B.order_id
WHERE MONTH(Time_Order) = 1
GROUP BY LEFT([user_name], 1)

SELECT LEFT([user_name], 1) AS KYTU_DAUTIEN
    , AVG(LEN([user_name])) AS AVG_LENGTH
FROM Grab_RawData AS A
INNER JOIN GRAB_JOINDATA AS B
    ON A.order_id = B.order_id
WHERE MONTH(Time_Order) = 1
AND LEFT([user_name], 1) = UPPER(LEFT([user_name], 1)) -- Cách 2: Chỉ lấy những tên viết in, viết thường sẽ bỏ qua
GROUP BY LEFT([user_name], 1)

-- TIME ORDER
SELECT Time_Order
    , DAY(Time_Order)
    , MONTH(Time_Order)
    , YEAR (Time_Order)
FROM Grab_RawData
WHERE MONTH(Time_Order) <=15

-- DATEADD: được dùng để tính tổng thời gian hoặc khoảng ngày tháng tới một ngày tháng được chỉ định, 
-- sau đó trả về ngày tháng đã chỉnh sửa.
SELECT Time_Order
    , DATEADD(DAY, 15, Time_Order) AS DATE_ADD
    , DAY(Time_Order) AS NGÀY
    , MONTH(Time_Order) AS THÁNG
    , YEAR (Time_Order) AS NĂM
FROM Grab_RawData

-- Tìm ra giao dịch trong vòng 30 ngày gần nhất
SELECT order_id, Time_Order
FROM Grab_RawData
WHERE Time_Order >= DATEADD( DAY, -30, CURRENT_TIMESTAMP )

-- Tính tổng GMV theo từng user_id trong vòng 6 tháng gần nhất
SELECT user_id, SUM(GMV) AS TOTAL_GMV
FROM Grab_RawData
WHERE Time_Order >= DATEADD( MONTH, -6, Time_Order)
GROUP BY user_id

-- DATEDIFF

-- SUBQUERY: Subquery thường được sử dụng để trích xuất dữ liệu từ một bảng hoặc nhiều bảng dựa trên kết quả của truy vấn chính

-- Lấy ra tất cả order_id của tất cả users có ít nhất 2 transaction trở lên
-- 1. Xác định những uses có 10 orders trở lên
-- 2. Lấy ra tất cả order của users ở câu (1)
-- (**) ĐỔI SANG CTE BÊN DƯỚI

SELECT order_id, A.user_id
FROM (
    SELECT user_id, COUNT(order_id) AS COUNT_ORDER
    FROM Grab_Rawdata
    GROUP BY user_id
    HAVING COUNT(order_id) >= 10) AS A
INNER JOIN GRAB_JOINDATA AS B
    ON A.user_id = B.user_id

-- Lấy ra tất cả order_id của tất cả users có tên không bắt đầu bằng A hoặc B hoặc C hoặc D
-- (*) ĐỔI CÂU LỆNH SANG CTE BÊN DƯỚI
SELECT order_id, user_id
FROM Grab_RawData
WHERE user_id IN (
    SELECT user_id
    FROM GRAB_JOINDATA
    WHERE user_name NOT LIKE 'A%' AND user_name NOT LIKE 'B%'
        AND user_name NOT LIKE 'C%' AND user_name NOT LIKE 'D%'
    -- LEFT (user_name, 1) <> 'A'
)

-- Phương pháp sử dụng CTE – Common Table Expression
-- CTE có thể được xem như bảng chứa dữ liệu tạm thời
WITH TOTAL_10 AS
(
    SELECT user_id, COUNT(order_id) AS COUNT_ORDER
    FROM Grab_RawData
    GROUP BY user_id
    HAVING COUNT(order_id) >= 10
)
SELECT A.order_id, A.user_id
FROM Grab_RawData AS A
INNER JOIN GRAB_JOINDATA AS B
    ON A.user_id = B.user_id


-- PRACTICE CTE: ĐỔI CÂU LỆNH DƯỚI SANG SỬ DỤNG CTE
-- (*)
WITH ABCD AS
(
    SELECT user_id
    FROM GRAB_JOINDATA
    WHERE user_name NOT LIKE 'A%' AND user_name NOT LIKE 'B%'
        AND user_name NOT LIKE 'C%' AND user_name NOT LIKE 'D%'
)

SELECT DISTINCT order_id, A.user_id
FROM Grab_RawData AS B
INNER JOIN ABCD AS A
    ON A.user_id = B.user_id

--------------------------------------------------------------------
WITH ABCD AS
(
    SELECT user_id
    FROM GRAB_JOINDATA
    WHERE user_name NOT LIKE 'A%' AND user_name NOT LIKE 'B%'
        AND user_name NOT LIKE 'C%' AND user_name NOT LIKE 'D%'
)
-- ,
-- GH AS  -- CÓ THỂ LỒNG THÊM CTE THÔNG QUA DẤU PHẨY
-- (
--     SELECT user_id
--     FROM GRAB_JOINDATA
--     WHERE user_name NOT LIKE 'H%'
-- )

SELECT DISTINCT order_id, A.user_id
FROM Grab_RawData AS B
INNER JOIN ABCD AS A
    ON A.user_id = B.user_id


-- RANKING FUNCTION: dùng để trả về một con số tuần tự gắn với mỗi giá trị của kết quả, 
-- con số được sắp xếp theo thứ tự của cột xác định, bắt đầu từ 1
-- Tìm ra 5 order sớm nhất
SELECT TOP 5 order_id, Time_Order
FROM Grab_RawData
ORDER BY Time_Order ASC

-- Tìm ra order thứ 5
SELECT *
FROM (
    -- Select rows from a Table or View '[TableOrViewName]' in schema '[dbo]'
    SELECT order_id, Time_Order,
            ROW_NUMBER() OVER  (ORDER BY Time_Order ASC) AS ROW_NUM
    FROM Grab_RawData ) AS A
WHERE ROW_NUM = 5

-- PARTITION BY
SELECT *
FROM (
    SELECT order_id, Time_Order, Booking_state_simple,
            ROW_NUMBER() OVER  (PARTITION BY Booking_state_simple ORDER BY Time_Order ASC) AS ROW_NUM
    FROM Grab_RawData ) AS A
WHERE ROW_NUM = 5

-- TÌM RA user THANH TOÁN ĐẦU TIÊN Ở MỖI city_id
WITH CTE AS
(
    SELECT user_id, city_id, Time_Order, order_id
    , ROW_NUMBER() OVER (PARTITION BY city_id ORDER BY Time_Order ASC) AS ROW_NUM
    FROM Grab_RawData
)

SELECT *
FROM CTE
WHERE ROW_NUM = 1 -- ROW NUM: một hàm trong SQL được sử dụng để xếp hạng các bản ghi trong một tập kết quả

-- RANK: dùng để xếp hạng các giá trị của một cột nào đó của 
-- tập kết quả có được từ câu lệnh SELECT theo thứ tự tăng dần hoặc giảm dần các giá trị của cột này.
-- ROW NUM: dùng để xếp hạng tập kết quả một cách tuần tự theo thứ tự bắt đầu từ 1 mà không quan tâm đến các giá trị giống nhau.
-- DENSE RANK: 
SELECT fk_sales_order
    , created_at
    , ROW_NUMBER() OVER (ORDER BY created_at ASC) AS ROW_NUM
    , RANK() OVER (ORDER BY created_at ASC) AS RANK_ 
    , DENSE_RANK() OVER (ORDER BY created_at ASC) AS DE_RA -- Thứ hạng vẫn giữ nguyên theo số thứ tự
FROM ims_sales_order_item
















 

    