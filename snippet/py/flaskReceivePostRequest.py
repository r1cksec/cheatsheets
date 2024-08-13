@app.route('/receivePost', methods=['POST'])
def receivePost():
    incomingJson = request.get_json()
    return jsonify({"message": "Data successfully received"}), 20

