+++
title = "CORS with Flask"
date = 2021-05-20
+++

[MDN] has a great overview of CORS and when it matters. I was trying to run a
svelte app using `npm run dev` which by default launches on
`http://localhost:5000`. I made a request from svelte using the `fetch` API to
a Python Flask server that ran on `http://localhost:1234`

However, the request failed with the following error

> `Cross-Origin Request Blocked: The Same Origin Policy disallows reading the`
> `remote resource at http://localhost:1234/dimensions. (Reason: CORS header`
> `‘Access-Control-Allow-Origin’ missing).`

Basically, the browser will only allow reading remote resources when the
`Allow-Control-Allow-Origin` is as a part of the server response.

While I could have manually added this header, Flask has a simple extension
that lets us add CORS headers.

```python
from flask import Flask, send_from_directory
from flask_cors import CORS, cross_origin
from time import sleep

app = Flask(__name__)
CORS(app)

@app.route("/dimensions")
def get_dimenisons():
    sleep(5)
    return { "x": 7, "y": 6 }

app.run(debug=True, port=1234)
```

`CORS(app)` enables CORS for all domains on routes.

However, one could also get more specific by annotating specific routes using
`@cross_origin()`

[MDN]: https://developer.mozilla.org/en-US/docs/Web/HTTP/CORS]
