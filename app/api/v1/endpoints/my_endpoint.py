from fastapi import APIRouter

router = APIRouter()

@router.get("/")
def get_my_endpoint():
    return {"message": "My Endpoint!"}