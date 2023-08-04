import google.generativeai as palm
import os
from dotenv import load_dotenv

load_dotenv()

palm.configure(api_key=os.environ["API_KEY"]) # API_KEY='
rs=palm.generate_text(prompt="hello bard")
print(rs)