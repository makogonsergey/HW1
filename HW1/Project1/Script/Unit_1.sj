function Main()
{
  try
  {
    // Enter your code here. 
  }
  catch(exception)
  {
    Log.Error("Exception", exception.description);
  }
}

function Test3()
{
  TestedApps.NOTEPAD.Run();
  Aliases.NOTEPAD.wndNotepad.Edit.Click(174, 13);
  Aliases.NOTEPAD.wndNotepad.Edit.Keys("test");
  Aliases.NOTEPAD.wndNotepad.MainMenu.Click("File|Save");
  Aliases.NOTEPAD.dlgSaveAs.SaveFile("C:\\Documents and Settings\\Tester\\Desktop\\doc1.txt", "Text Documents (*.txt)");
  aqObject.CompareProperty(Aliases.NOTEPAD.wndNotepad.Edit.wText, 0, "test", false);
  TestedApps.NOTEPAD.Close();   
}
