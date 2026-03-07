from fastapi import APIRouter

router = APIRouter()

@router.post('/internal/crawl')
def trigger_crawl():
    # TODO: Implement crawl trigger
    return {'status': 'queued/success', 'job_id': 'temporary-id'}
