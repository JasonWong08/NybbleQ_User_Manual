# Mind+ 的Python代码模式

如果您熟悉Petoi编码积木块提供的API接口，可以直接用Python语言来编写程序代码，您可以在Mind+中切换到Code模式，如下图所示：

<figure><img src="https://docs.petoi.com/~gitbook/image?url=https%3A%2F%2F201656985-files.gitbook.io%2F%7E%2Ffiles%2Fv0%2Fb%2Fgitbook-x-prod.appspot.com%2Fo%2Fspaces%252F-MQ6a951Q6Jn1Zzt5Ajr-3369173170%252Fuploads%252F5YCa1DGfqNrUU1xQTof9%252Fimage.png%3Falt%3Dmedia%26token%3D2bc3ff9c-c738-4529-b576-8547c3ca768f&#x26;width=768&#x26;dpr=4&#x26;quality=100&#x26;sign=b3fdbc72&#x26;sv=2" alt=""><figcaption></figcaption></figure>

<figure><img src="https://docs.petoi.com/~gitbook/image?url=https%3A%2F%2F201656985-files.gitbook.io%2F%7E%2Ffiles%2Fv0%2Fb%2Fgitbook-x-prod.appspot.com%2Fo%2Fspaces%252F-MQ6a951Q6Jn1Zzt5Ajr-3369173170%252Fuploads%252F6T6abI8sc7ecxWEZfrbw%252Fimage.png%3Falt%3Dmedia%26token%3D4d9752f6-16cb-42f8-a398-8f453b2b2066&#x26;width=768&#x26;dpr=4&#x26;quality=100&#x26;sign=e3efc4dd&#x26;sv=2" alt=""><figcaption></figcaption></figure>

**代码**模式其实是一个Python3语言的开发环境。 您可以在其中使用Python3语言编写任意代码，并且可以调用Mind+导入的PetoiRobot库中的所有API接口。

您可以在以下目录中找到PetoiRobot库，其中包含所有与Petoi机器人相关的API接口定义：

* **Windows** C:\Users\\{username}\AppData\Local\DFScratch\extensions\petoi-robot-thirdex\python\libraries\PetoiRobot.py
* **MacOS** /Users/{username}/Library/DFScratch/extensions/petoi-robot-thirdex/python/libraries/PetoiRobot.py

以下是PetoiRobot库中支持的常用API接口函数。 您可以参考**模块**模式下自动生成的Python代码来了解其调用格式。

Copy

```python
# 用来打印调试信息
def printH(head, value)

# 关闭陀螺仪
def deacGyro()

# 获取当前所有关节的角度值列表
def getAngleList()
    return angleList

# 获取当前某个关节的角度值 
def getCurAng(index)

# 创建一个[关节序号，绝对角度值]组成的列表
def absValList(num1, num2)

# 创建一个[关节序号，符号，相对角度值]组成的列表
# index: 关节序号
# symbol: "+1" 或者 "-1"
# angle: 相对角度值
def relativeValList(index, symbol, angle)

# 依次/同时旋转关节
# token: 'I' 同时旋转, 'M' 依次旋转
# var: absValList(num1, num2) 或者 relativeValList(index, symbol, angle)
def rotateJoints(token, var, delayTime)

# 播放音乐旋律
def play(token, var, delayTime)

# 打开串口
# port: 串口名称
def openPort(port)

# 自动连接并打开串口
def autoConnect()

# 发送技能串口命令
def sendSkillStr(skillStr, delayTime)

# 调用技能文件中的技能
def loadSkill(fileName, delayTime):

# 发送串口指令
def sendCmdStr(cmdStr, delayTime)

# 发送长串口指令
def sendLongCmd(token, var, delayTime)

# 从模拟输入口读值
def readAnalogValue(pin)

# 从数字输入口读值
def readDigitalValue(pin)

# 向模拟输出口写值
def writeAnalogValue(pin, val)
 
# 向数字输出口写值
def writeDigitalValue(pin, val)

# 关闭串口
def closePort()
```

示例代码：

Copy

```python
# 代码从此处开始
from PetoiRobot import *    # 如果使用PetoiRobot库中的API接口，必须使用导入库文件

# 首先连接打开串口
autoConnect()

# 调用API接口控制Petoi机器人
sendSkillStr('ksit', 0.5)
sendCmdStr('T', 0.5)
loadSkill("skillFileName", 0.2)

# 最后关闭串口
closePort()
```

您也可以在**模块**模式下的**自动生成**区域中复制代码，在**代码**模式下将其粘贴到代码文件中。 然后您可以编辑并运行代码程序。
