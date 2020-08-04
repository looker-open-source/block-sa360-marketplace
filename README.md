# What does this Looker Block do for me?
- Quickly understand the state of your search ad campaigns across all engines with the SA360 Overview. Slice metrics like cost per acquisition and click through rate by variables like engine, advertiser, campaign and keyword. 

- Go deep on the details of any campaign from the Campaign Performance Dashboard. Understand the trends over time for an individual campaign’s performance based on the metrics that matter to you across all engines driving the campaign. Seamlessly switch between your Goal Metric and compare performance between customizable time periods. 

- Understand the performance of individual keywords with the Keyword Performance Dashboard. Analyze your profitability overtime to optimize your spend strategy and increase revenue. With the ability to compare keyword performance between two periods of your choosing, you can determine how modifications in strategy have impacted keyword performance pre- and post-change. Whether you care about clicks, conversions, CPA or ROAS, Looker provides the ability to easily toggle between metrics so that you can analyze keyword performance curated around what matters most to your business. 

- Compare Product performance with the Product Analytics Dashboard. Quickly understand which products are your highest earners to optimize your spend and increase ROI. Furthermore, understand how individual or groups of products are performing across a variety of KPIs; from clicks to click through rate, conversions to cost per acquisition.

- Enterprise Data Platform - Take advantage of Looker's data platform functionality, including data actions, scheduling, permissions, alerting, parameterization (each user can only see their own data), and more.

- Usable / Shareable Dashboards - create centralized dashboards for the entire team, and departmental or individual dashboards for each user, and rest easy knowing everyone is looking at the same information at all times. Then schedule the dashboard for emails or alerts, campaign-end reporting, or whatever else serves your use-case.
 
## Search Ads 360 Data Structure


- Prior to installing the block, you will need to use the BigQuery Data Transfer Service to load your data into BigQuery. The BigQuery Data Transfer Service for Search Ads 360 (formerly known as Doubleclick Search) allows you to automatically schedule and manage recurring load jobs for Search Ads 360 reporting data. More details can be found [here](https://slack-redir.net/link?url=https%3A%2F%2Fcloud.google.com%2Fbigquery-transfer%2Fdocs%2Fsa360-transfer).

- When your Search Ads 360 (SA360) data is exported (in this case, through Transfer Services), the data is written to ingestion-time partitioned tables. 
- Google's documentation on the data included in the export can be found [here](https://cloud.google.com/bigquery-transfer/docs/sa360-transformation).
- You can also find a cookbook of SQL queries for common questions in Google's documentation.


## Block Structure

Core project: [block-sa360](https://github.com/llooker/block-sa360) is the read-only project where the block’s base Explores, views, and dashboards are defined. The core project’s initial views and Explores are defined in the core project and extended in the config project, where they can be modified. Then the config project and its files are imported into the core project. Finally, the core project defines the block’s content layer, or the dashboards and Explores that are surfaced in the Looker UI.


Config project: [block-sa360-config](https://github.com/llooker/block-sa360-config) is the project that can be modified by LookML developers. This project extends the core project. Its files are also imported into the core project and extended in the core project’s content layer, so that changes made to files in the config project are brought into the core project. You can read more about customizing the block here. 

Each explore within this block contains a similar structure. 
Highest in the hierarchy with the most aggregated data  is 
- Advertiser Events, containing a dimensional view for advertiser information and joined event views for advertiser-level event metrics. 
- Second in the hierarchy is Campaign Events, containing Advertiser and Campaign dimensional views and joined event views for campaign-level event metrics. 
- Third in the hierarchy is Ad Group Events, containing Advertiser, Campaign and Ad Group dimensional views,  as well as  joined event views for ad group-level event metrics. 
- Lowest in the hierarchy and most granular is (4) Keyword Events, containing an Advertiser, Campaign, Ad Group and Keyword dimensional views,  as well as  joined event views for keyword-level event metrics. This explore additionally contains Floodlight Activity data. 
Tangentially, the last explore is Product Events, containing Advertiser and Product dimensional views, as well as joined event views for product-level event metrics.
 
## What if I find an error? Suggestions for improvements?
Great! Blocks were designed for continuous improvement through the help of the entire Looker community, and we'd love your input. To log an error or improvement recommendations, simply create a "New Issue" in the corresponding Github repo for this Block. Please be as detailed as possible in your explanation, and we'll address it as quickly as we can.

## Notes and Other Known Issues
Be prepared with your advertiser ID prior to installing. Upon installation, you will be prompted to specify the ID.  The value for advertiser ID is your Search Ads 360 Advertiser ID. 

