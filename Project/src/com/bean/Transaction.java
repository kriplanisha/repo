package com.bean;



public class Transaction {
long s_cust_id,s_acc_id;
String s_acc_type;
int amount;
long d_cust_id,d_acc_id;
String d_acc_type;
String trans_date;	
String mode;
long transID;
public long getS_cust_id() {
	return s_cust_id;
}
public void setS_cust_id(long s_cust_id) {
	this.s_cust_id = s_cust_id;
}
public long getS_acc_id() {
	return s_acc_id;
}
public void setS_acc_id(long s_acc_id) {
	this.s_acc_id = s_acc_id;
}
public String getS_acc_type() {
	return s_acc_type;
}
public void setS_acc_type(String s_acc_type) {
	this.s_acc_type = s_acc_type;
}
public int getAmount() {
	return amount;
}
public void setAmount(int amount) {
	this.amount = amount;
}
public long getD_cust_id() {
	return d_cust_id;
}
public void setD_cust_id(long d_cust_id) {
	this.d_cust_id = d_cust_id;
}
public long getD_acc_id() {
	return d_acc_id;
}
public void setD_acc_id(long d_acc_id) {
	this.d_acc_id = d_acc_id;
}
public String getD_acc_type() {
	return d_acc_type;
}
public void setD_acc_type(String d_acc_type) {
	this.d_acc_type = d_acc_type;
}
public String getTrans_date() {
	return trans_date;
}
public void setTrans_date(String trans_date) {
	this.trans_date = trans_date;
}
public String getMode() {
	return mode;
}
public void setMode(String mode) {
	this.mode = mode;
}
public long getTransID() {
	return transID;
}
public void setTransID(long transID) {
	this.transID = transID;
}


}
