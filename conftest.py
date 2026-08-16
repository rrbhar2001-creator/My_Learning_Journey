import pytest
from pathlib import Path
import json
import os
from dotenv import load_dotenv

# Load environment variables
load_dotenv()

@pytest.fixture(scope="session")
def base_url():
    """Base URL for the application"""
    return os.getenv("BASE_URL", "http://localhost:3000")

@pytest.fixture(scope="session")
def api_base_url():
    """Base URL for API"""
    return os.getenv("API_URL", "http://localhost:8000")

@pytest.fixture(scope="function")
def test_data():
    """Load test data from JSON files"""
    data_dir = Path(__file__).parent / "playwright-suite" / "data"
    with open(data_dir / "test_data.json") as f:
        return json.load(f)

@pytest.fixture(autouse=True)
def reset_test_state():
    """Reset test state before each test"""
    yield
    # Cleanup code if needed

def pytest_configure(config):
    """Configure pytest with custom settings"""
    config.addinivalue_line(
        "markers", "integration: mark test as integration test"
    )

def pytest_collection_modifyitems(config, items):
    """Modify test collection"""
    for item in items:
        if "api" in item.nodeid:
            item.add_marker(pytest.mark.api)
        elif "mobile" in item.nodeid:
            item.add_marker(pytest.mark.mobile)