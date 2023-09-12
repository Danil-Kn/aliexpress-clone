Запуск проекта

npm i
npx prisma generate
npx prisma migrate dev --name init
npm run dev


npm i && npx prisma generate && npx prisma migrate dev --name init && npm run dev

Работает следующим образом:
1) npx prisma generate - подтягивает файл seed.js из ./prisma, который тянет ручки supabase (postgres db) для создания таблицы Products.
2) npx prisma migrate - синхронизирует (на всякий случай) схему описанную в ./prisma/schema.prisma для всех таблиц и создает историю .sql файлов миграции.

Дальше просто из компонентов обращаемся в Node (реализуя трехуровневую архитектуру) frontapp <-> node <-> supabase.

Авторизация на OAuth с использованием api google и github