chmod +x /dumps/dump_db.sh
gunzip -c /dumps/"$(date +%Y-%m-%d)".gz | psql -U $POSTGRES_USER $POSTGRES_DB