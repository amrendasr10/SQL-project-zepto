Welcome! This document breaks down a real-world SQL project into simple, understandable steps. Whether you're new to data analysis or just curious about how it works, this summary will guide you through the process. We'll use the Indian grocery delivery company, Zepto, as our case study to see how raw data is transformed into valuable business knowledge.

1. The Subject: What is Zepto?

To understand any data project, we first need to understand the company at its heart. Zepto is not just any grocery store; it's a major player in the "quick commerce" space.

Zepto is an Indian quick commerce company that specializes in 10-minute grocery delivery. It operates on a massive scale across 10 cities from a network of over 300 hubs (also known as dark stores) to deliver more than 5,000 different products to its customers.

With an operation this large, understanding performance patterns is critical. This brings us to the project's main goal.

2. The Mission: What Was the Goal?

The project's primary mission was to use the SQL programming language to analyze Zepto's operational data and answer specific business questions from a case study. In short, the core task was to turn raw data—tables of numbers and text—into clear and useful business insights.

To accomplish this mission, the analyst needed the right tools and the right data.

3. The Analyst's Toolkit: Data and Technology

Every data project relies on two key components: the technology used to process the information and the data itself.

3.1 Technology Used

This project used MySQL, a popular and powerful database system designed to store and retrieve data efficiently by writing queries in the SQL language.

3.2 The Data Source

The analysis was performed on a dataset organized into four main tables. Each table held a different piece of the puzzle:

* delivery_partner: Information about the delivery drivers.
* hubs: Details about the local warehouses or "dark stores".
* line_items: Information on the specific products within each order.
* orders: General information about each customer order.

With this data structured in a database, the analyst could begin searching for answers.

4. Uncovering Insights: Answering the Key Questions

This section walks through the specific business questions posed in the project and the key insights that the SQL queries uncovered from the data.

4.1 Question 1: How do orders and revenue change by day of the week?

Insight: The analysis revealed that weekends (specifically Saturdays and Sundays) are the peak days, showing the highest number of orders and the most revenue. This insight allows Zepto to optimize staffing for delivery partners and inventory levels in hubs to meet weekend demand.

4.2 Question 2: How do orders and revenue change month to month?

Insight: The analysis showed that March had the highest orders and revenue, while May had the lowest.

4.3 Question 3: Which cities perform the best and worst?

Insight: Bengaluru generated the maximum number of orders and revenue, while Hyderabad had the minimum. This confirms Bengaluru as a key market, while a city like Hyderabad might require new marketing strategies or operational analysis to improve performance.

4.4 Question 4: Who are the top-performing delivery partners?

Insight: The analysis identified the top five delivery partners based on the total number of orders they successfully delivered.

4.5 Question 5: Which hubs are the most active?

Insight: The data showed that hub H-5 was the top performer, handling the highest number of orders and generating the most revenue. Zepto can now study Hub H-5's operations to understand its success and replicate its best practices across other, lower-performing hubs.

5. Project Summary: The Three Most Important Takeaways

Looking at the individual answers, we can zoom out to see the bigger picture. The analysis produced three high-level takeaways that are crucial for business strategy.

1. Performance Varies by Time: A key lesson here is that business is never flat. This analysis shows activity peaks on weekends, and for a business, this insight is a direct signal for making strategic decisions related to staffing, inventory management, and marketing promotions.
2. Location is Key: Geographic performance differs significantly. Cities like Bengaluru are major drivers of business, highlighting strong markets, while other cities represent opportunities for growth or require operational improvements.
3. Operational Stars Emerge: The data proves that not all assets perform equally. By identifying top-performing hubs and partners, the business can learn what excellence looks like and apply those lessons to optimize the entire network.

This process of moving from raw data to high-level strategy is the core value of data analysis.

6. Conclusion: A Blueprint for Data-Driven Decisions

This Zepto project serves as a perfect blueprint for the data analysis process. It demonstrates how an analyst can start with clear business questions, use the right tools (like SQL) and a well-structured dataset, and arrive at actionable answers. These insights are more than just interesting facts—they are the building blocks for making smarter, faster, and more profitable business decisions.

