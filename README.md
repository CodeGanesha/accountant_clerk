Accountant Clerk
=================

This is a tool to give shop owners the ability to find out how their products are performing. As such it concentrates on the quantity of products sold, ie Items.

What started as a very simple reporting system (visually it still is), is now able to provide quite a host of useful functionality.

Search by (any combination of):

- Product name contains
- Category name contains
- Supplier name contains
- Within a date range

You can group results, resulting in a stacked bar-graph, but you can also get numeric sums for the group. Group results by:

- nothing (just a summary) 
- Product
- ProductLine
- Supplier
- Category


And show a bar graph for the following time intervals:

- Day
- Week
- Month

The resulting number may be:

- Price
- Amount

Usage scenarios
===============

The general idea is to start with an overview and drill down into interesting weak/strong spots using one of the tools, with the ultimate goal of understanding your sales better and possibly changing the offer as a result or creating promotions.

For example, start with a year view by month, and group by Taxon. As a result you see which of your Taxons sells best and when it is selling the most. This may help you to create promotions at the right time for example.

Say you have already found your strongest Taxons but want to break it down by whatever properties you use. We have e.g. Supplier. So enter the category name into the category field, and group by the property: Thus you find the best selling supplier in that category and you may want to add a cross-sell for it, or an up-sell for similar products by other suppliers.

Then you could add the supplier name to the property search field, and then group by ::Product. You then see the best selling Products of that Supplier in that Taxon, or if you remove the category name from the search, the best selling Products of that supplier.

In fact I often alternate between two properties. Search by one property, group by another and back and forth. 

Also, if you have products with many Variants, you can search by that Product Name. If you then group by Variant you find the strongest, but also the weakest which you may wan to remove from your offer. . . . 

Installation
===========

I'm not releasing gems now. It's not really beta yet, but may still be useful to some. So the well known gem line is:

gem 'accountant_clerk_', :git => 'git://github.com/rubyclerks/accountant_clerk_.git'

There are no external dependencies and the only javascript file is referenced from the one template. So no further actions should be needed.

Warning: Do not do silly queries as they will slow down your production environment. For intensive work I suggest to copy your database, ie with yaml_db, to your local machine first.

Issues
=======

The metasearch with subsequent ruby code approach has served well to get the project up quick. For larger datasets a more hand crafted sql approach may be needed.

As the search searches Items , items that are in non completed orders are included. Quite trivial fix, just never got around to it as we don't have that problem.

Also it is quite simple to grind your database and server to a halt by grouping by variant, and reporting a year by day.
  
Plans
=====

Vague Plans exist to introduce also:

- Reports about inventory
- Reports about Order numbers
- Grouping by customer


Copyright (c) 2011-14 [Torsten Ruger], released under the New BSD License
