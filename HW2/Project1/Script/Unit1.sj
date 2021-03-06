var orders = Aliases.Orders;
var mainForm = Aliases.Orders.MainForm;
var orderForm = Aliases.Orders.OrderForm.Group;

function main()
{
  preparation();
  newOrder();
  deleteOrder();
  cleanup();
}

function preparation()
{
  TestedApps.Orders.Run();                                                
}

function newOrder()
{
  var driver = DDT.CSVDriver(Files.FileNameByName(Project.Variables.data));            
  while (!driver.EOF())
   {                                                                       
      mainForm.MainMenu.Click("Orders|New order...");    
      orderForm.ProductNames.ClickItem(driver.Value(0));  
      orderForm.Quantity.wValue = driver.Value(1);
      orderForm.Date.wDate = driver.Value(2);
      orderForm.Customer.wText = driver.Value(3);
      orderForm.Street.wText = driver.Value(4); 
      orderForm.City.wText = driver.Value(5);
      orderForm.State.wText = driver.Value(6);
      orderForm.Zip.wText = driver.Value(7);                               
      switch (driver.Value(8))                       // type of card validation                      
        {
        case "Visa":             orderForm.Visa.ClickButton(); break;
        case "MC":
        case "MasterCard":
        case "Master Card":      orderForm.MasterCard.ClickButton(); break; 
        case "AE":
        case "AmericanExpress":
        case "American Express": orderForm.AE.ClickButton(); break;
        default: Log.Warning("Invalid card type: " + driver.Value(8) + ". Set to Visa."); orderForm.Visa.ClickButton();
        }
      orderForm.CardNo.wText = String(driver.Value(9));
      orderForm.ExpDate.wDate = driver.Value(10);
      Aliases.Orders.OrderForm.ButtonOK.ClickButton();
      driver.Next();
    }
 DDT.CloseDriver("driver");
}
                                                                      
function deleteOrder()                                                   
{
  while (mainForm.OrdersView.wItemCount>0) {  
  mainForm.OrdersView.SelectItem(0)
  mainForm.MainMenu.Click("Orders|Delete order");
  orders.dlgConfirmation.btnYes.ClickButton();
  }
}      

function cleanup()
{
  mainForm.MainMenu.Click("File|Exit");
  Aliases.Orders.dlgConfirmation.btnNo.ClickButton();
}