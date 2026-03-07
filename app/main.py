from fastapi import FastAPI
from app.api.routes import internal_crawl

app = FastAPI(title="CampusTab Data Service")

app.include_router(internal_crawl.router, prefix='/api/v1')
