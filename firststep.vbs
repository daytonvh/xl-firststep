Sub An_Subroutine()
' what this fn does
  
    'copy to a new working sheet to preserve raw data
    Sheets(1).Name = "raw"
    Sheets(1).Copy After:=Sheets(1)
    Sheets(2).Select
    Sheets(2).Name = "ws"
    
    'move columns around, filter/delete unwanted rows, etc.
    
    'if you need to copy-paste, this selects everything in preparation for that
    Range("A1").Select
    Range(Selection, Selection.End(xlToRight)).Select
    Range(Selection, Selection.End(xlDown)).Select
  
    'save so you don't get prompted to when you close Excel
    ActiveWorkbook.Save
    
End Sub
