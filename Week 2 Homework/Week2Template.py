# Python script to generate your IoT data. Below is a general template. 
# Modify it depending on your chosen industry and data.


import pandas as pd # pip install pandas
import numpy as np  # pip install numpy
from datetime import datetime, timedelta


num_records = 100  # Adjust this number as needed

# Example for Smart Healthcare Monitoring
data = []

for _ in range(num_records):
    record = {
        "timestamp": datetime.now() - timedelta(minutes=np.random.randint(0, 1440)),  # Random timestamp in the last 24 hours
        "patient_id": f"PAT{np.random.randint(100, 999)}",  # Random patient ID
        "heart_rate": np.random.randint(60, 100),  # Normal heart rate range
        "blood_pressure": f"{np.random.randint(100, 140)}/{np.random.randint(60, 90)}",  # Systolic/Diastolic range
        "oxygen_level": np.random.randint(95, 100),  # Oxygen saturation in normal range
        "body_temp": round(np.random.uniform(36.0, 38.0), 1)  # Body temperature in Celsius
    }
    data.append(record)


# Convert to DataFrame
df = pd.DataFrame(data)


# Save dataset
df.to_csv("healthcare_data.csv", index=False)
df.to_json("healthcare_data.json", orient="records")


# Display first few rows
df.head()
