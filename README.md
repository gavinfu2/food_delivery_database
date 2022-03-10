# food_delivery_database
This is a final project of database manegement.
##[1] sp_GetRestaurant  
1.	透過sp_GetRestaurant 取得跟會員(user_id) ,相差20個單位距離以內的店家和顯示其外送費
2.	input : user_id (int)
3.	output: number of rows in the result set (int)

##[2] sp_RegisterUser
1.	透過sp_RegisterUser(會員的帳號 ,salt, 姓名, 地址, 電話, loc_x, loc_y,加密後的 password)將Input輸入後於Member進行會員註冊。並顯示此次新增的Row number。
2.	input: account(varchar(64)),salt(char(64)),name(varchar(64)),phone(varchar(64)), address(varchar(64)),loc_x(int),loc_y(int), hashedPwd(varchar(200))
3.	output: affected_row_num (int) →被影響的列，為了確認store procedure有效的執行
註:userID-->auto_increment

##[3] sp_ResetNewPassword
1.	透過sp_ResetNewPassword(會員的id,salt,雜湊後的密碼)更改會員密碼
2.	input: user_id(int),  salt(char(64)) ,hashedPwd(varchar(200))
3.	output: affected_row_num (int) →被影響的列，為了確認store procedure有效的執行

##[4] sp_Login
1.	 透過sp_Login(會員account、會員hashedpwd)登入會員
2.	input: user_id(int),account(varchar(64)),hashedpwd(varchar(200))
3.	output: affected_row_num (int) →被影響的列，為了確認store procedure有效的執行 

##[5] sp_SearchMealsOfRestaurant
1.	透過sp_SearchMealsOfRestaurant(餐點meals)找出所有含有此餐點的餐廳(沒有限制在20公里以內)
2.	input: meals(varchar(64))
3.	output: number of rows in the result set (int)

result: (以"壽司"為例)
name	meals_name	price
爭鮮迴轉壽司	鮭魚壽司	40
壽司郎	鮪魚壽司	40
壽司郎	豆皮壽司	30

##[6] sp_UpdateOrderStatus
1.	透過sp_UpdateOrderStatus(order_id)更改訂單狀態
2.	input: order_id(int),order_status(int)
3.	output: affected_row_num(int)→被影響的列，為了確認store procedure有效的執行	

result:  (以order_id=1 為例)
order_id	order_status
1	3

##[7] sp_HistoryOrder
1.	透過sp_HistoryOrder(user_id)查詢使用者歷史紀錄
2.	input: user_id(int)
3.	output: number of rows in the result set (int)

result: (以user_id=2 為例)
user_id	order_id	deliveryman_id	order_status	total_price
2	1	1	2	130

##[8] sp_CancelOrder
1.	透過sp_CancelOrder(order_id)取消訂單
2.	input: order_id(int)
3.	output:  affected_row_num (int) →被影響的列，為了確認store procedure有效的執行		

##[9] sp_CreateNewOrder
1.	透過sp_CreateNewOrder(會員id、外送員id、餐廳id、選取的兩個餐點)建立新訂單
2.	input: user_id(int),deliveryman_id(int),restaurant_id(int),meals_1(int),meals_1_count(int),meals_2(int),meals_2_count(int)
3.	output: affected_row_num (int) →被影響的列，為了確認store procedure有效的執行

result: (以user_id = 6並在restaurant_id = 3為例) 
user_id	order_id	restaurant_id	meals_id	unit_price	count
6	8	3	17	120	1
6	8	3	19	100	2

##[10] sp_SearchStarRestaurant

1.	透過sp_SearchStarRestaurant(餐廳id)列出擁有 x 星評價以上(restaurant_rating)的所有餐廳 (餐廳得到的restaurant_rating所有評價之平均有x星以上，沒有限制在20公里以內)
2.	input: x (int)
3.	output: number of rows in the result set (int)

result: (以x=4為例) 
restaurant_id	name	restaurant_rating
2	摩斯漢堡	5
8	九大雞魯飯	4
10	路易莎咖啡	4

