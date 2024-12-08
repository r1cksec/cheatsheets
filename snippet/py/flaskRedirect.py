from flask import Flask, redirect

app = Flask(__name__)

@app.before_request
def redirect_all():
    # redirect to a different website
    return redirect("https://domain.com", code=302)

