function Test4()
{
  // this variable conteins additional text that will be added to existed text
  var textEdit = "additional text";
  
  TestedApps.NOTEPAD.Run();
  Aliases.NOTEPAD.wndNotepad.MainMenu.Click("File|Open...");
  Aliases.NOTEPAD.dlgOpen.OpenFile("C:\\Documents and Settings\\Tester\\Desktop\\doc1.txt", "Text Documents (*.txt)");
  Aliases.NOTEPAD.wndNotepad.Edit.Click(4, 8);
  Aliases.NOTEPAD.wndNotepad.Edit.Keys("[Enter]");
  Aliases.NOTEPAD.wndNotepad.Edit.Click(4, 8);
  Aliases.NOTEPAD.wndNotepad.Edit.Keys(textEdit);
  Aliases.NOTEPAD.wndNotepad.MainMenu.Click("File|Save");
  TestedApps.NOTEPAD.Close(); 
  TestedApps.NOTEPAD.Run();
  Aliases.NOTEPAD.wndNotepad.MainMenu.Click("File|Open...");
  Aliases.NOTEPAD.dlgOpen.OpenFile("C:\\Documents and Settings\\Tester\\Desktop\\doc1.txt", "Text Documents (*.txt)");
  aqObject.CompareProperty(Aliases.NOTEPAD.wndNotepad.Edit.wText, 6, textEdit, false);
  TestedApps.NOTEPAD.Close(); 
}
