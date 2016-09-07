object dmTourData: TdmTourData
  OldCreateOrder = False
  Height = 89
  Width = 261
  object conTourData: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=admin;Data Source=D:\AA' +
      'AA Skool Delphi\Delphi-Gr11\Learning\DB\TourData.mdb;Mode=ReadWr' +
      'ite;Persist Security Info=False;Jet OLEDB:System database="";Jet' +
      ' OLEDB:Registry Path="";Jet OLEDB:Database Password="";Jet OLEDB' +
      ':Engine Type=5;Jet OLEDB:Database Locking Mode=1;Jet OLEDB:Globa' +
      'l Partial Bulk Ops=2;Jet OLEDB:Global Bulk Transactions=1;Jet OL' +
      'EDB:New Database Password="";Jet OLEDB:Create System Database=Fa' +
      'lse;Jet OLEDB:Encrypt Database=False;Jet OLEDB:Don'#39't Copy Locale' +
      ' on Compact=False;Jet OLEDB:Compact Without Replica Repair=False' +
      ';Jet OLEDB:SFP=False'
    Mode = cmReadWrite
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 32
    Top = 16
  end
  object tblLearners: TADOTable
    Active = True
    Connection = conTourData
    CursorType = ctStatic
    TableName = 'Learners'
    Left = 112
    Top = 16
  end
  object dsrLearners: TDataSource
    DataSet = tblLearners
    Left = 176
    Top = 16
  end
end
