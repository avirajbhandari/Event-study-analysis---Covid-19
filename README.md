# **COVID-19 Impact on GICS Sectors: An Empirical Analysis Through Event Study Approach**

## Contributors

- **Ameesh Upadhyay**: Provided critical insights and guidance on the methodology and data analysis.  
- **Keith Maskus**: Offered expertise on economic frameworks and event study approaches.

## **Abstract**
This research investigates the impact of the COVID-19 pandemic on different sectors of the stock market using the event study methodology. It focuses on the S&P sector indices that align with the Global Industry Classification Standard (GICS). By analyzing abnormal returns and investor sentiment before and after key COVID-19-related events, this study sheds light on the pandemic's varied effects across industries. The findings provide insights into how sectors responded to the outbreak and how investor expectations aligned with market outcomes.

## **Purpose**
The primary objective is to analyze the effects of COVID-19 on various GICS sectors to better understand the dynamics of sector-specific market responses during a black swan event.

---

## **Technical Details**

### **Methods**
The research employs the **event study methodology**, a robust approach for assessing the economic impact of significant events on security prices. Key steps include:

1. **Event Definition**: January 23, 2020, was chosen as the event date, marking the announcement of the first global lockdown measures.
2. **Abnormal Returns Calculation**: Abnormal returns (\( AR \)) were computed using the market model:
   \[
   AR_{i,t} = R_{i,t} - (\alpha_{i} + \beta_{i} R_{m,t})
   \]
   where:
   - \( R_{i,t} \): Actual return of sector \( i \) at time \( t \)
   - \( R_{m,t} \): Market return at time \( t \)
   - \( \alpha_{i}, \beta_{i} \): Parameters estimated via OLS regression.
3. **Cumulative Abnormal Returns (CAR)**: Aggregated abnormal returns over the event window to capture overall sector performance.
4. **Event and Estimation Windows**: Defined distinct event and estimation windows to prevent overlap and ensure unbiased parameter estimation.

### **Technologies/Tools**
- **STATA**: For data cleaning, analysis, and visualization.

### **Data Sources**
- **Investing.com**: Used for stock prices and market indices data.
- Sectors analyzed were aligned with GICS standards and included:
  - **Energy** (SPNY)
  - **Materials** (SPLRCM)
  - **Industrials** (SPLRCI)
  - **Consumer Discretionary** (SPLRCD)
  - **Consumer Staples**, among others.

---

## **Findings and Results**
The pandemic had a differential impact across sectors:
- **Negatively Affected Sectors**: Energy, Financials, and Industrials experienced significant adverse effects.
- **Positively Affected Sectors**: Consumer Staples, Information Technology, and Healthcare exhibited resilience and statistically significant positive responses.
- **Volatility**: Increased volatility due to panic selling highlighted investor uncertainty.

These results underscore the importance of tailored mitigation measures and strategic decision-making during black swan events like COVID-19.

---

## **Visualization**
The repository includes:
- **Tables and Charts**: PNG files showcasing abnormal returns, cumulative abnormal returns, and sector-specific responses.
- **Appendix Figures**: Highlighting the difference between actual and expected returns.

---

## **Usage**

### **Setup**
1. Download the repository and ensure STATA is installed.
2. Navigate to the directory containing the `.do` files.

### **Execution**
1. Use the **data cleaning `.do` file** to preprocess the raw data.
2. Run the **event study `.do` file** to calculate abnormal returns and generate visualizations.

---

## **Repository Structure**
```plaintext
├── data/                 # Raw and processed datasets
├── scripts/              # STATA `.do` files
│   ├── data_cleaning.do  # Script to clean data
│   ├── event_study.do    # Script to run event study analysis
├── visuals/              # PNG files for tables and charts
├── results/              # Generated results and CAR tables
├── README.md             # Project documentation
```
---

## **License**
This research and its associated code are made available under the MIT License. Feel free to use, modify, and share, provided proper attribution is given.

## **Acknowledgments**
Special thanks to the authors of previous studies, such as Ji et al., MacKinlay, and Singh, whose work provided foundational insights into event study methodologies and COVID-19 market impacts.

## **Contact**
For questions or collaboration, please reach out at:
Email: avi.rajbhandari.joshi@gmail.com
Email: rajbhandariabhyudaya@gmail.com
