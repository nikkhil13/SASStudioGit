cas casauto;
caslib _all_ assign;

proc cas;
  
   table.save result=r /                                          /* 2*/
      name="disk_table.csv" /* name of the table to be created on disk, it will save in CSV format*/
      replace=TRUE
      table={name="CLAIMS_DETAILS" caslib="PUBLIC"};  /* 'name' is in-memory table name and caslib is the name of the input caslib */
run;

cas casauto terminate;

/* You will find the table in the path of the default caslib */