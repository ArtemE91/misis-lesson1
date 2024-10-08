from fastapi import FastAPI
import uvicorn


app = FastAPI()


@app.get("/")
async def welcome() -> dict:
    return {"message": "Hello World!!!"}


if __name__ == "__main__":
	uvicorn.run("api:app", host="127.0.0.1", port=8000, log_level="info", reload=True)
