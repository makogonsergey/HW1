function Test3()
{
  TestedApps.Orders.Run();
  Aliases.Orders.MainForm.MainMenu.Click("Orders|New order...");
  Aliases.Orders.OrderForm.Group.Customer.Click(55, 7);
  Aliases.Orders.OrderForm.Group.Customer.wText = "sd";
  Aliases.Orders.OrderForm.Group.MasterCard.ClickButton();
  Aliases.Orders.OrderForm.ButtonOK.ClickButton();
  Aliases.Orders.MainForm.MainMenu.Click("Orders|New order...");
  Aliases.Orders.OrderForm.Group.Customer.Click(30, 11);
  Aliases.Orders.OrderForm.Group.Customer.wText = "sss";
  Aliases.Orders.OrderForm.Group.AE.ClickButton();
  Aliases.Orders.OrderForm.ButtonOK.ClickButton();
  Aliases.Orders.MainForm.MainMenu.Click("Orders|New order...");
  Aliases.Orders.OrderForm.Group.MasterCard.ClickButton();
  Aliases.Orders.OrderForm.Group.Visa.ClickButton();
  Aliases.Orders.OrderForm.Group.Customer.Click(41, 12);
  Aliases.Orders.OrderForm.Group.Customer.wText = "fff";
  Aliases.Orders.OrderForm.ButtonOK.ClickButton();
}
