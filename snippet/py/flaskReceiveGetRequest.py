@app.route('/receiveGet', methods=['GET'])
def receiveGet():
    parameter = request.args.get('parameter')
    print(parameter)
    return response, 200;

