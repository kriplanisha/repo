/**
 * 
 */

function digitnumeric()
{
	var digit = document.table.name.value;
	
	 var phoneno = /^\d{9}$/; 
	
	if(digit==" " ||digit==""  )
		{
		alert("Customer_id can not be empty \n please enter the Customer_id ");
		return false;
		}
	else{
	if(!(digit.match(phoneno)))
		{
		if(digit<0)
		{
		alert("Customer_id should  not contain negative values");
		return false;
		}
		else
		alert("Customer_id should contain nine digit numerics");
		return false;
		}
	}
	
}
   function deposit()
	{
		//var money= ;
	   if(documemt.table.deposits.value==" " ||documemt.table.deposits.value==""  )
		{
		alert("deposit can not be empty ");
		return false;
		}
		
		if(documemt.table.deposits.value < 0)
		{
		alert("Customer_id should  not contain negative values");
		return false;
		}
		
	}
  
	