from flask import Flask, request
import predict as p

app = Flask(__name__)

# Flutter 앱에서 이 친구를 호출할 예정 (body 데이터를 가져오려면 http 규칙이 post로 전송)


@app.route('/', methods=['POST'])
def index():
    cmReqDto = request.get_json()
    # {'data1': '1', 'data2': '2'}
    print(cmReqDto)
    result = p.getScore(cmReqDto)
    # Dict 타입을 리턴하면 application/json 이다.
    cmRespDto = {"code": 1, "msg": "성공", "data": result}
    return cmRespDto


if __name__ == "__main__":
    app.run(host="0.0.0.0", debug=True, port=5500)
