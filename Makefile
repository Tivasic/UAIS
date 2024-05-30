test:
	python -m pytest app/tests/

run-app:
	@echo "Run APP"
	@uvicorn app.main:app --reload

