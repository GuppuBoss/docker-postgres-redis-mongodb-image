DO
$do$
BEGIN
   IF NOT EXISTS (
      SELECT                       -- SELECT list can stay empty for this
      FROM   pg_catalog.pg_roles
      WHERE  rolname = 'rhino_management_local') THEN

      CREATE ROLE rhino_management_local WITH SUPERUSER LOGIN;
   END IF;
END
$do$;

DO
$do$
BEGIN
   IF NOT EXISTS (
      SELECT                       -- SELECT list can stay empty for this
      FROM   pg_catalog.pg_roles
      WHERE  rolname = 'rhino_local') THEN

      CREATE ROLE rhino_local WITH SUPERUSER LOGIN;
   END IF;
END
$do$;
