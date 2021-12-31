@echo off
cd "D:\Program Files\PostgreSQL\13\bin"
psql -U postgres -f "D:\PESU\3rd year\5th semester\Database Management Systems\The Lab\Week 7\companyddl.sql"
psql -U postgres -f "D:\PESU\3rd year\5th semester\Database Management Systems\The Lab\Week 7\company_insert.sql"
psql -U postgres -f "D:\PESU\3rd year\5th semester\Database Management Systems\The Lab\Week 7\company_ops.sql"
cd "D:\PESU\3rd year\5th semester\Database Management Systems\The Lab\Week 7"