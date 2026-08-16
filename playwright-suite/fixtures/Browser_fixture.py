import pytest
from playwright.sync_api    import sync_playwright,Browser

@pytest.fixture(scope="function")
def browser() -> Browser:
    """Create and yield browser instance."""

    with sync_playwright() as p:
        browser = p.chromium.launch(headless=True)

        yield browser

        browser.close()