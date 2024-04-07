# MEV Data Schemas

## Builder Information List (pubkey, eth address)

[see src/builder/list.json](./src/builder/list.json)

### Raw Unique Pubkeys

This list is generated from the Flashbots S3 Datadump.

- Parsed for unique entries
- Combined into entries for the respective slot range
- All respective slot ranges then combined together
- Re-indexed for unique entries out of combined aggregate findings
- Results produced in [data/csv/builder_pubkey_total.csv](./data/csv/builder_pubkey_total.csv)


## Data Schemas

WIP


## License

UPL-1.0
