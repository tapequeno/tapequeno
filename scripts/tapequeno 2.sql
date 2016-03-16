/*1. Open Services (services.msc) and restart MySQL57 service.
2. Execute the following commands in MySQL.*/
   use tapequeno;
   set global optimizer_switch='derived_merge=OFF';
/*3. Update the .edmx.*/