require 'ecpay_invoice'

class YOURCONTROLLER < ApplicationController
	# 作廢折讓
	def InvAllowaceInvalid
		## 參數值為[PLEASE MODIFY]者，請每次測試時給予獨特值
		inv_allowance_invalid_dict = {
			"InvoiceNo"=>"TQ00000182", # 發票號碼，長度為10字元
			"AllowanceNo"=>"2017032311407421", # 折讓號碼，長度為16字元
			"Reason"=>"test" # 作廢原因，長度為20字元
		}
		
		inv_allowance_invalid = ECpayInvoice::InvoiceClientECPay.new # 將模組中的class實例化
		res = inv_allowance_invalid.ecpay_invoice_allowance_invalid(inv_allowance_invalid_dict) # 對class中的對應的method傳入位置參數
		
		render :text => res # 將回傳結果列印出來
	end