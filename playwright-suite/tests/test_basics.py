from fixtures.Browser_fixture import browser_name
def test_check():
    assert  10>5

def test_check_ans():
    assert 1==4


def test_browser(browser_name):
    assert browser_name == "chromium"