##Payments with Stripe

###Epicodus exercise to use Stripe in a Rails app
pairs Josh Fowler and Brentwood Reid

###Objectives
* Create CRUD/L functionality for non-profits.

* Let users choose a non-profit to donate to using the Stripe API.

* Let non-profits have the option to have their donors opt for monthly donations. Use Stripe subscriptions to bill their card for $15 per month if they choose monthly donations.

* Not everyone wants to donate $15/month. Let non-profits create different donation tiers by adding subscriptions. Hint: A non-profit has many subscriptions.

* Use Stripe transfers to pay out the donations to the non-profits.

* Oh, and maybe we should add user auth at this point :)

###Status
* Nonprofit and Contribution CRUD complete

* Form sends request to Stripe and records the stripeToken to the database
