## Overview

The task is to build a RESTful API based on data we have in our AWS S3 bucket. Download [this JSON](https://mvf-devtest-s3api.s3-eu-west-1.amazonaws.com/a4a06bb0-3fbe-40bd-9db2-f68354ba742f.json) and expose data within your app.

This contains a json file named with the pattern "<guid>.json", e.g.: https://mvf-devtest-s3api.s3-eu-west-1.amazonaws.com/a4a06bb0-3fbe-40bd-9db2-f68354ba742f.json

Each guid (globally unique identifier) represents a customer with access to the API and the data listed within the file represent the accounts they have access to, each of these accounts also being identified by a guid.

Your API should expose the data according to the following rules:
- Users with knowledge of a customer guid (Customers) may search the json file named with the guid and may have access to all it's contents.
- Users with knowledge of an account guid (Account Holders) may have access to any of the data for that account, but not anything else within the same file.


## User Stories

1.1 As an account holder, I want to check my balance, so that I know how much money I have.

1.2 As an account holder, I want to check the details being held about me, so that I can make sure the correct details are being stored.
- Outputs: First name, Last name, Email, Telephone

1.3 As the customer, I want to get a list of accounts in debt, so that I can assess them for overdraft interest.
- Outputs: account guid

1.4 As the customer, I want to get the name, email address, telephone and balance for an account, so that I can contact them and talk about their account.
