import hello_world


def test_lambda_handler():
    # Test event and context
    response = hello_world.lambda_handler({}, None)

    assert response["statusCode"] == 200
    assert response["headers"]["Content-Type"] == "text/plain"
    assert response["body"] == "Hello, World!"


def test_lambda_handler_with_event():
    # Test non-empty event
    event = {"test": "data"}
    response = hello_world.lambda_handler(event, None)

    assert response["statusCode"] == 200
    assert response["headers"]["Content-Type"] == "text/plain"
    assert response["body"] == "Hello, World!"
