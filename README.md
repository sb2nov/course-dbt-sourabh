# Analytics engineering with dbt

1. Solutions for the course

## Setup for the repo

Create a `~/.dbt/profiles.yml` as follows:

```
greenery:
  target: dev
  outputs:
    dev:
      type: postgres
      host: localhost
      user: corise
      password: corise
      port: 5432
      database: dbt
      schema: dbt_corise
      threads: 4
```


## License

Apache 2.0
