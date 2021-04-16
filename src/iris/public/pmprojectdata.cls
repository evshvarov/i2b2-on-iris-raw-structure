/// 
Class public.pmprojectdata Extends %Persistent [ ClassType = persistent, DdlAllowed, Final, Owner = {_SYSTEM}, ProcedureBlock, SqlRowIdPrivate, SqlTableName = pm_project_data ]
{

Property projectid As %Library.String(MAXLEN = 50) [ Required, SqlColumnNumber = 2, SqlFieldName = project_id ];

Property projectname As %Library.String(MAXLEN = 255) [ SqlColumnNumber = 3, SqlFieldName = project_name ];

Property projectwiki As %Library.String(MAXLEN = 255) [ SqlColumnNumber = 4, SqlFieldName = project_wiki ];

Property projectkey As %Library.String(MAXLEN = 255) [ SqlColumnNumber = 5, SqlFieldName = project_key ];

Property projectpath As %Library.String(MAXLEN = 255) [ SqlColumnNumber = 6, SqlFieldName = project_path ];

Property projectdescription As %Library.String(MAXLEN = 2000) [ SqlColumnNumber = 7, SqlFieldName = project_description ];

Property changedate As %Library.TimeStamp [ SqlColumnNumber = 8, SqlFieldName = change_date ];

Property entrydate As %Library.TimeStamp [ SqlColumnNumber = 9, SqlFieldName = entry_date ];

Property changebychar As %Library.String(MAXLEN = 50) [ SqlColumnNumber = 10, SqlFieldName = changeby_char ];

Property statuscd As %Library.String(MAXLEN = 50) [ SqlColumnNumber = 11, SqlFieldName = status_cd ];

/// Bitmap Extent Index auto-generated by DDL CREATE TABLE statement.  Do not edit the SqlName of this index.
Index DDLBEIndex [ Extent, SqlName = "%%DDLBEIndex", Type = bitmap ];

/// DDL Primary Key Specification
Index pmprojectdatapkey On projectid [ PrimaryKey, SqlName = pm_project_data_pkey, Type = index, Unique ];

Parameter USEEXTENTSET = 1;

Storage Default
{
<Data name="pmprojectdataDefaultData">
<Value name="1">
<Value>projectid</Value>
</Value>
<Value name="2">
<Value>projectname</Value>
</Value>
<Value name="3">
<Value>projectwiki</Value>
</Value>
<Value name="4">
<Value>projectkey</Value>
</Value>
<Value name="5">
<Value>projectpath</Value>
</Value>
<Value name="6">
<Value>projectdescription</Value>
</Value>
<Value name="7">
<Value>changedate</Value>
</Value>
<Value name="8">
<Value>entrydate</Value>
</Value>
<Value name="9">
<Value>changebychar</Value>
</Value>
<Value name="10">
<Value>statuscd</Value>
</Value>
</Data>
<DataLocation>^B5ms.TdO2.1</DataLocation>
<DefaultData>pmprojectdataDefaultData</DefaultData>
<ExtentLocation>^B5ms.TdO2</ExtentLocation>
<IdFunction>sequence</IdFunction>
<IdLocation>^B5ms.TdO2.1</IdLocation>
<Index name="DDLBEIndex">
<Location>^B5ms.TdO2.2</Location>
</Index>
<Index name="IDKEY">
<Location>^B5ms.TdO2.1</Location>
</Index>
<Index name="pmprojectdatapkey">
<Location>^B5ms.TdO2.3</Location>
</Index>
<IndexLocation>^B5ms.TdO2.I</IndexLocation>
<StreamLocation>^B5ms.TdO2.S</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}