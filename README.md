Accountant Clerk
================

This is a tool to give [clerk](http://rubyclerks.org/) shop owners the ability to find out how their products are performing. As such it concentrates on the quantity of products sold, ie Items.

What started as a very simple reporting system, is now able to provide quite a host of useful functionality.

Search is provided for either completed Orders, or Purchases.
You can search for (any combination of):

- Product name contains
- Category
- Supplier
- Within a date range
- Properties
- Price range

You can group results, resulting in a stacked bar-graph, but you also get numeric sums for the group. Group results by:

- nothing (just a summary per time interval) 
- Category
- Supplier
- Product
- ProductLine

And show a bar graph for the following time intervals:

- Day
- Week
- Month

The resulting graph may display:

- Price
- Profit
- Amount

Usage scenarios
===============

The general idea is to start with an overview and drill down into interesting weak/strong spots using one of the tools, with the ultimate goal of understanding your sales better and possibly changing the offer as a result or creating promotions.

For example, start with a year view by month, and group by Category. As a result you see which of your Categorys sells best and when it is selling the most. This may help you to create promotions at the right time for example.

Say you have already found your strongest Categories but want to break it down by Supplier. 
So enter the Category, and group by Supplier: Thus you find the best selling supplier in that category and you may want to add a cross-sell for it, or an up-sell for similar products by other suppliers.

Then you could add the supplier name to the search, and then group by Product. You then see the best selling Products of that Supplier in that Category.

Then, if you remove the categoryfrom the search, the best selling Products of that supplier.

In fact I often alternate between two properties. Search by one property, group by another and back and forth. 

Installation
===========

Just add 

gem "accountant_clerk"

to your Gemfile and bundle.

There are no external dependencies and the only javascript file is referenced from the one template. So no further actions is needed.

**Warning**: Do not do silly queries as they will slow down your production environment. For intensive work I suggest to copy your database, ie with fixtures_dump, to your local machine first.

Status
======

This is an old spree extension ported to clerks. As such it has been in use for 4-5 years. 
While that doesn't make it perfect (see below) it does mean it is stable.
The version number (<1) refers more to the code cleanliness than it's functionlity (read help appreciated)

Issues
=======

The metasearch with subsequent ruby code approach has served well to get the project up quick. For larger datasets a more hand crafted sql approach may be needed.

Also it is quite simple to grind your database and server to a halt by grouping by product, and reporting a year by day. All data gets loaded into memory!
  
Plans
=====

This really does everything we ever need by now. So the only thing still rubbing me is the memory issue and lack of tests.
But since it works well for our datasets (3000 Orders per year) on our machine (32GB) , i am in no rush.

Copyright (c) 2010-2014 [Torsten Ruger], released under the MIT License
