declare @user_name varchar(255)
set @user_name  = '[All Users]'

select 
	user0_.user_id, 
	account2_.account_id , 
	user0_.user_name , 
	user0_.external_user_name , 
	user0_.full_name , 
	user0_.email , 
	user0_.notes , 
	user0_.total_jobs , 
	user0_.total_pages , 
	user0_.total_sheets , 
	user0_.reset_by , 
	user0_.reset_date , 
	user0_.deleted , 
	user0_.deleted_date , 
	user0_.created_date , 
	user0_.created_by , 
	user0_.modified_date , 
	user0_.modified_by , 
	user0_.department , 
	user0_.office , 
	user0_.card_number , 
	user0_.disabled_printing , 
	user0_.disabled_printing_until , 
	user0_.net_reset_by , 
	user0_.net_reset_date , 
	user0_.net_total_megabytes , 
	user0_.net_total_time_hours , 
	user0_.disabled_net , 
	user0_.disabled_net_until , 
	user0_.internal , 
	user0_.last_user_activity , 
	user0_.card_number2 , 
	user0_.secondary_user_name , 
	user0_.modified_ticks , 
	user0_.home_directory , 
	account2_.account_type , 
	account2_.account_name , 
	account2_.balance , 
	account2_.restricted , 
	account2_.overdraft , 
	account2_.pin , 
	account2_.use_global_overdraft , 
	account2_.notes , 
	account2_.deleted , 
	account2_.deleted_date , 
	account2_.created_date , 
	account2_.created_by , 
	account2_.modified_date , 
	account2_.modified_by , 
	account2_.parent_id , 
	account2_.account_name_lower , 
	account2_.sub_name , 
	account2_.sub_name_lower , 
	account2_.disabled , 
	account2_.disabled_until , 
	account2_.comments , 
	account2_.invoicing , 
	account2_.sub_pin , 
	account2_.modified_ticks 
from 
	tbl_user user0_ inner join tbl_user_account accountlin1_ on user0_.user_id=accountlin1_.user_id 
	inner join tbl_account account2_ on accountlin1_.account_id=account2_.account_id 
where 
	user0_.deleted='N' 
	and (account2_.account_type in ('USER' , 'USER-001')) 
order by	
	user0_.user_name, 
	account2_.account_type asc 