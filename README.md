# Postgres Backup Experiment
This is a small experiment to see how to dump and load databases in POstgres.

1. Placed `data.sql` in `./initdb/` (volume-mapped to container entrypoint executed at container's start) used to create tables in the first place;
2. Run `/dumps/dump_db.sh` from within running container to dump database to `./dumps/{%Y-%m-%d}.gz` (volume-mapped on dev machine);
3. Replaced `initdb/` content on dev machine with `load_db.sh` to load database from .gz file at restart;
4. Restarted container, got into container, run `psql -U $POSTGRES_USER $POSTGRES_DB` to see if we get expected results.