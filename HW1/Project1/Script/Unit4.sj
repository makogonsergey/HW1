function Test3()
{
  TestedApps.NOTEPAD.Run();
  Aliases.NOTEPAD.wndNotepad.MainMenu.Click("File|Open...");
  Aliases.NOTEPAD.dlgOpen.OpenFile("C:\\Documents and Settings\\Tester\\Desktop\\doc1.txt", "Text Documents (*.txt)");
}
