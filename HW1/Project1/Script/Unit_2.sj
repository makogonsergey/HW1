function Test4()
{
  TestedApps.NOTEPAD.Run();
  Aliases.NOTEPAD.wndNotepad.MainMenu.Click("File|Open...");
  Aliases.NOTEPAD.dlgOpen.OpenFile("C:\\Documents and Settings\\Tester\\Desktop\\doc1.txt", "Text Documents (*.txt)");
  Aliases.NOTEPAD.wndNotepad.Edit.Keys("[Enter]edit");
  Aliases.NOTEPAD.wndNotepad.MainMenu.Click("File|Save");
  Aliases.NOTEPAD.wndNotepad.Close();
  TestedApps.NOTEPAD.Run();
  Aliases.NOTEPAD.wndNotepad.MainMenu.Click("File|Open...");
  Aliases.NOTEPAD.dlgOpen.OpenFile("C:\\Documents and Settings\\Tester\\Desktop\\doc1.txt", "Text Documents (*.txt)");
  aqObject.CompareProperty(Aliases.NOTEPAD.wndNotepad.Edit.wText, 6, "edit", false);
  Aliases.NOTEPAD.wndNotepad.Close();
}
