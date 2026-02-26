from fastapi import FastAPI

app = FastAPI(title="CampusTab Data Service")

@app.get("/")
def read_root():
    return {"message": "Welcome to CampusTab Data Service!"}
