## Inspiration  
Efficient fleet management and accurate cost forecasting are critical for Toyota's internal operations, especially when planning vehicle purchases, assigning resources, and optimizing transportation strategies. We aimed to create a robust tool that would streamline the process of analyzing fuel economy, comparing models, and predicting future trends, ensuring data-driven decisions for internal teams.  

## What it does  
**Toyota Fuel View** is an internal-use application designed to calculate miles per gallon (MPG), gallons per mile (GPM), and estimated annual fuel costs for various Toyota car models. The app enables employees to input specific driving conditions and view detailed fuel economy data. Additionally, it features a **Compare Page**, allowing side-by-side comparisons of two Toyota models, helping teams evaluate and select the best vehicles for operational needs. The app also integrates an AI-powered prediction engine to forecast future fuel economy trends, ensuring proactive planning based on reliable insights.  

## How we built it  
Toyota Fuel View was developed using **Flutter** for its ability to create a consistent, high-performance application for internal use across devices. Fuel economy data was sourced through automated scraping of Toyota’s public and internal datasets using a custom Python script, processed, and stored in **JSON** files. Key calculations and AI-powered predictions were implemented using **Dart files**, integrated directly into the app. The **Compare Page** dynamically pulls and displays relevant data for two selected models, ensuring employees can easily analyze differences.  

## Challenges we ran into  
1. **Data integration**: Merging data from both public and internal Toyota datasets required reconciling discrepancies and ensuring accuracy across sources.  
2. **AI performance optimization**: Ensuring the AI prediction model performed efficiently on mobile devices without compromising accuracy was a major technical hurdle.  
3. **Internal usability**: Designing the interface to meet the specific needs of internal teams, including intuitive navigation and actionable data displays, involved extensive iteration and feedback loops.  
4. **Security concerns**: Implementing robust security measures to ensure the app adhered to internal data privacy and usage policies added complexity.  

## Accomplishments that we're proud of  
- Delivering a tool tailored for Toyota’s internal use that simplifies fuel economy analysis and vehicle comparison.  
- Successfully integrating a lightweight AI prediction engine into the app for accurate future trend forecasting.  
- Developing a secure and high-performing application that aligns with Toyota's internal operational standards.  
- Building a user-friendly Compare Page that streamlines decision-making for fleet management and resource planning.  

## What we learned  
- How to optimize Flutter applications for secure internal use cases.  
- Advanced techniques for managing and integrating diverse datasets to ensure reliability.  
- The importance of designing features specifically tailored to the unique needs of internal teams.  
- Strategies for incorporating predictive models into applications for operational planning.  

## What's next for Toyota Fuel View?  
- Expanding the application’s functionality to include tracking of fleet-wide fuel costs and emissions analysis.  
- Integrating advanced AI models to factor in variables like driving conditions, load, and maintenance schedules for even more accurate forecasts.  
- Enhancing security features to meet evolving internal compliance standards.  
- Offering training sessions and workshops to ensure employees fully leverage Toyota Fuel View’s capabilities.  
