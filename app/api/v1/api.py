from fastapi import APIRouter

from .endpoints import my_endpoint

router = APIRouter()
router.include_router(my_endpoint.router, prefix="/my_endpoint", tags=["tag_name"])