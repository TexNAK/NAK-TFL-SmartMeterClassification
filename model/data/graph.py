import pandas as pd
import plotly.express as px
import plotly.graph_objects as go

df = pd.read_csv('/Users/themegatb/Projects/Studies/TFL/NAK-TFL-SmartMeterClassification/model/data/processed/combined.csv', sep=';')

layout = go.Layout(
    autosize=True,
    width=1280,
    height=720  # ,template="plotly_dark"
)
fig = go.Figure(layout=layout)

fig.add_trace(go.Scatter(x=df['time'], y=df['load L1'], name="Load (L1)"))
fig.add_trace(go.Scatter(x=df['time'], y=df['load L2'], name="Load (L2)"))
fig.add_trace(go.Scatter(x=df['time'], y=df['load L3'], name="Load (L3)"))

fig.show()
