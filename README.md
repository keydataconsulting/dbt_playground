# dbt Playground

> **Source:**  
> Original repo copied from  [Migi/dbt_playground](https://github.com/Migi/dbt_playground)
> Merged with repo from [gitpod-samples/template-dbt-snowflake](https://github.com/gitpod-samples/template-dbt-snowflake)


This repository is a self-contained dbt project that you can run with one click in a
Gitpod workspace.

Click the button below to open this repository in a Gitpod:

[![Open in
Gitpod](https://gitpod.io/button/open-in-gitpod.svg)](https://gitpod.io/from-referrer/)


If the above button doesn't work (depends on your browser), use the one below:

[![Open in
Gitpod](https://gitpod.io/button/open-in-gitpod.svg)](https://gitpod.io/#https://github.com/keydataconsulting/dbt_playground/tree/snowflake)

## Features

* A local PostgreSQL instance
* The DBT Power User plugin
* The Jaffle Shop demo dbt project (see https://github.com/dbt-labs/jaffle_shop)

## Things to do

### Prep in Gitpod Project Environment Settings

Setup the following Environment Variables against the Project
(or from the Terminal each time using SET <ENV_NAME> = <ENV-VALUE>)
- DBT_SNOWFLAKE_ACCOUNT     = KEYDATA-TRAIN
- DBT_SNOWFLAKE_USER        = <user specific username>
- DBT_SNOWFLAKE_PASSWORD    = <user specific password>
- DBT_SNOWFLAKE_ROLE        = DBT_TRAINING
- DBT_SNOWFLAKE_WH          = DBT_TRAINING_WH
- DBT_SNOWFLAKE_DB          = TRAINING
- DBT_SNOWFLAKE_SCHEMA      = DBT_<username>

### After Workspace Creation

* Open the repo in Gitpod (see above)
* Run `dbt build`. This is the same as running `dbt seed`, `dbt run` and `dbt test`.
* In the SQLTools extension on the left, check out the table(s) and view(s) that dbt created.
* When editing a model, use the DBT Power User buttons on the top-right, or use shortcuts
like ctrl+enter to run the selected text as a query
* Have fun!
