# SoCal Housing Market Analysis

## Overview
This project analyzes the Southern California real estate market using SQL. 
The goal was to explore how home prices vary across cities, property types, 
and bedroom/bathroom combinations to uncover patterns in the SoCal housing market.

## Dataset
- **Source:** Kaggle — SoCal Housing Dataset
- **Rows:** 15,474 listings
- **Columns:** street, city, bedrooms, bathrooms, square footage, price

## Questions Analyzed
1. Which cities have the highest average home prices?
2. Which cities have the most listings?
3. How are listings distributed across price tiers (Luxury, Mid-range, Affordable)?
4. Which cities have the highest price per square foot?
5. How does price change as bedroom count increases?
6. What are the most common bedroom/bathroom combinations?

## Key Findings
- Newport Coast has the highest average home price in SoCal at $1.8M, beating out Beverly Hills
- The most common property type is 3 bed/2 bath with 3,087 listings
- San Diego has the most listings of any city with 707, nearly double Los Angeles at 388
- 42 cities have more than 100 listings, showing how spread out the SoCal market is
- Mid-range homes ($400k-$800k) make up the largest share of listings at 6,214

## Tools Used
- PostgreSQL 18
- pgAdmin
- VS Code with SQLTools extension

## Dashboard
View the interactive Tableau dashboard here:
[SoCal Housing Market Analysis](https://public.tableau.com/app/profile/uriel.bailon/viz/SoCalHousingMarketAnalysis/Dashboard1)