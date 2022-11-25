alter table "login" add column if not exists id_real_user uuid null references "user" (id);
