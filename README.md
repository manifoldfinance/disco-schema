# MEV Data Schemas

> [!IMPORTANT]
> Schemas not guaranteed to be stable until a versioned release   

## Builder Information List (pubkey, eth address)

[see src/builder/list.json](./src/builder/list.json)

### Data Quality Issue


428 Pubkeys == 141 Unique


For example, take the 'rsync-builder' list of pubkeys, which there are listed 3 unique entries

However 'rsync-builder' publishes the following:

> [!NOTE]
> The entries marked with + are not found in the builder-list.json file

```diff
- 0x978a35c39c41aadbe35ea29712bccffb117cc6ebcad4d86ea463d712af1dc80131d0c650dc29ba29ef27c881f43bd587
- 0x83d3495a2951065cf19c4d282afca0a635a39f6504bd76282ed0138fe28680ec60fa3fd149e6d27a94a7d90e7b1fb640
- 0x945fc51bf63613257792926c9155d7ae32db73155dc13bdfe61cd476f1fd2297b66601e8721b723cef11e4e6682e9d87
+ 0x8e6df6e0a9ca3fd89db2aa2f3daf77722dc4fbcd15e285ed7d9560fdf07b7d69ba504add4cc12ac999b8094ff30ed06c
+ 0x8aab0ed724d2c7f94af139bd2249ab511f08474ac69e761e56918403c81c358f5f8a6d61c62a86dc4cd7bcad935f49d9
+ 0xacfdcf458829f4693168a57d0659253069d687682bc64ec130d935ecb6e05ccfb80c138bd3cf53546c86715696612ec8
```

## Data Processing

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
 
Licensed under either of

* [Universal Permissive License, Version 1.0](https://spdx.org/licenses/UPL-1.0.html) <br /> 
  [SPDX-License-Identifier: UPL-1.0 ](https://opensource.org/licenses/UPL) 
 <br />
 
* [Apache License, Version 2.0](https://spdx.org/licenses/Apache-2.0.html) <br /> 
  [SPDX-License-Identifier: APACHE 2.0](http://www.apache.org/licenses/LICENSE-2.0) 
 <br />
at your option.

 ### Contribution

Unless you explicitly state otherwise, any contribution intentionally submitted
for inclusion in the work by you, as defined in the Universal Permissive License v 1.0 
license, shall be dual licensed as above, without any additional terms or conditions.
