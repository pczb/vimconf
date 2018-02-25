from aip import AipOcr

""" 你的 APPID AK SK """
APP_ID = ''
API_KEY = 'Vfoayf6ZuupEesUXDEygLbPQ'
SECRET_KEY = '50kwhTnPZok7KPu2yF8HXVub6fzIqOXK'

client = AipOcr(APP_ID, API_KEY, SECRET_KEY)

def get_file_content(filePath):
    with open(filePath, 'rb') as fp:
        return fp.read()

image = get_file_content('/Users/tigerzhang/Downloads/huafei.JPG')

""" 调用通用文字识别（高精度版） """
client.basicAccurate(image);

""" 如果有可选参数 """
options = {}
options["detect_direction"] = "true"
options["probability"] = "true"


""" 带参数调用通用文字识别（高精度版） """
resp = client.basicAccurate(image, options)
for word in resp['words_result']:
    if word['words'].startswith('充值卡密码'):
        print(word['words'])
