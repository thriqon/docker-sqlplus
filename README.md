
SQLPlus dockerized
==================

expects to be linked to an Oracle XE like so:

```bash
docker run --interactive --link orcl:oracle thriqon/sqlplus
```

Uses `system/oracle` as default credentials, may be overridden with
`-e USERNAME=username` and `-e PASSWORD=password`.

(based on guywithnose/docker-sqlplus)
