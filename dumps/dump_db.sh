# pg_dump -U $POSTGRES_USER $POSTGRES_DB > dumps/"$(date +%Y-%m-%d)".sql
pg_dump -U $POSTGRES_USER $POSTGRES_DB | gzip > /dumps/"$(date +%Y-%m-%d)".gz