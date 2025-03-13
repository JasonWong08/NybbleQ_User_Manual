---
description: 介绍如何在Mind+中使用我们专门为Petoi机器人开发的扩展库
---

# Petoi 编程积木

## 准备 Mind+ <a href="#zhun-bei-mind" id="zhun-bei-mind"></a>

* 从Mind+官网下载最新版本（**不低于V1.7.0**）[https://mindplus.cc/download.html](https://mindplus.cc/download.html)
  * Windows: **>=** **V1.7.0**
  * Mac: **>=** **V1.7.3 RC2.0**
* 安装教程及如果出现问题可以参考Mind+官方文档： [安装教程](https://mindplus.dfrobot.com.cn/zhunbei)
* 安装完成后即可打开Mind+

## 准备 Petoi 机器人 <a href="#zhun-bei-petoi-ji-qi-ren" id="zhun-bei-petoi-ji-qi-ren"></a>

### BiBoard <a href="#biboard" id="biboard"></a>

* 对于使用 [BiBoard](https://docs.petoi.com/v/chinese/kuai-su-shang-shou-zhi-nan) 的产品, 不需要修改任何软件代码，默认支持Mind+内所有功能积木块，同时陀螺仪功能处于开启状态，即机器人可以保持自平衡，摔倒后可以自动翻身起立。

#### **通讯连接方式**

* **有线连接：** 套件包含一条USB Type-C数据线，用于将机器人的主板连接到计算机。
* **无线连接（蓝牙）：** 主板内置[蓝牙通信](https://docs.petoi.com/chinese/lan-ya-lian-jie)模块，可实现机器人主板与计算机之间的蓝牙无线连接。

## 导入Petoi Mind+扩展库 <a href="#dao-ru-petoi-mind-kuo-zhan-ku" id="dao-ru-petoi-mind-kuo-zhan-ku"></a>

<figure><img src="https://docs.petoi.com/~gitbook/image?url=https%3A%2F%2F201656985-files.gitbook.io%2F%7E%2Ffiles%2Fv0%2Fb%2Fgitbook-x-prod.appspot.com%2Fo%2Fspaces%252F-MQ6a951Q6Jn1Zzt5Ajr-3369173170%252Fuploads%252FHQKZ4D8vhPEboqZKHACV%252Fimage.png%3Falt%3Dmedia%26token%3D1e81d355-53a3-4c28-919f-f1a0fe9b945c&#x26;width=768&#x26;dpr=4&#x26;quality=100&#x26;sign=1ea2c1aa&#x26;sv=2" alt=""><figcaption></figcaption></figure>

在导入用户库界面的文本框中粘贴GitHub网址：[https://github.com/PetoiCamp/Petoi\_MindPlusLib](https://github.com/PetoiCamp/Petoi_MindPlusLib)

<figure><img src="https://docs.petoi.com/~gitbook/image?url=https%3A%2F%2F201656985-files.gitbook.io%2F%7E%2Ffiles%2Fv0%2Fb%2Fgitbook-x-prod.appspot.com%2Fo%2Fspaces%252F-MQ6a951Q6Jn1Zzt5Ajr-3369173170%252Fuploads%252Fv0M3SN7T9ugA1GWZ3Oad%252Fimage.png%3Falt%3Dmedia%26token%3D2e2615d5-72a7-4eea-862c-8729043a083e&#x26;width=768&#x26;dpr=4&#x26;quality=100&#x26;sign=3f0a6694&#x26;sv=2" alt=""><figcaption></figcaption></figure>

<figure><img src="https://docs.petoi.com/~gitbook/image?url=https%3A%2F%2F201656985-files.gitbook.io%2F%7E%2Ffiles%2Fv0%2Fb%2Fgitbook-x-prod.appspot.com%2Fo%2Fspaces%252F-MQ6a951Q6Jn1Zzt5Ajr-3369173170%252Fuploads%252FO5yy6DpQuYyxYIXPsEVO%252Fimage.png%3Falt%3Dmedia%26token%3D6acede4f-056f-4d47-8c4f-41f9b65688a9&#x26;width=768&#x26;dpr=4&#x26;quality=100&#x26;sign=df954514&#x26;sv=2" alt=""><figcaption></figcaption></figure>

{% hint style="info" %}
对于macOS旧版本Mind+(**<=V1.7.2 RC3.0**)，使用macOS导入扩展库后，请先下载[PetoiRobot.zip](https://github.com/PetoiCamp/Petoi_MindPlusLib/raw/main/PetoiRobot.zip)解压出来的文件夹（PetoiRobot）拷贝到/Users/{your username}/Documents/mindplus-py/environment/Python3.6.5-64/lib/python3.6/site-packages/中。

![](https://docs.petoi.com/~gitbook/image?url=https%3A%2F%2F201656985-files.gitbook.io%2F%7E%2Ffiles%2Fv0%2Fb%2Fgitbook-x-prod.appspot.com%2Fo%2Fspaces%252F-MQ6a951Q6Jn1Zzt5Ajr-3369173170%252Fuploads%252F0B5bN6LcV6lsa7kQq1a1%252Fimage.png%3Falt%3Dmedia%26token%3De2a4aa5e-d09a-4a3d-90fa-ea746521a05e\&width=300\&dpr=4\&quality=100\&sign=7ab4dcc4\&sv=2)
{% endhint %}

## 编写程序并运行 <a href="#bian-xie-cheng-xu-bing-yun-xing" id="bian-xie-cheng-xu-bing-yun-xing"></a>

<figure><img src="https://docs.petoi.com/~gitbook/image?url=https%3A%2F%2F201656985-files.gitbook.io%2F%7E%2Ffiles%2Fv0%2Fb%2Fgitbook-x-prod.appspot.com%2Fo%2Fspaces%252F-MQ6a951Q6Jn1Zzt5Ajr-3369173170%252Fuploads%252FVeCOqlr8LOIqxKr6miiK%252Fimage.png%3Falt%3Dmedia%26token%3Db80e0b7e-3fa1-4b08-b76d-d6e6b33d0acd&#x26;width=768&#x26;dpr=4&#x26;quality=100&#x26;sign=fc77fe8f&#x26;sv=2" alt=""><figcaption></figcaption></figure>

{% hint style="warning" %}
Petoi 编程积木是 Mind+的用户扩展库。

如果您是通过双击图标![](https://docs.petoi.com/~gitbook/image?url=https%3A%2F%2F201656985-files.gitbook.io%2F%7E%2Ffiles%2Fv0%2Fb%2Fgitbook-x-prod.appspot.com%2Fo%2Fspaces%252F-MQ6a951Q6Jn1Zzt5Ajr-3369173170%252Fuploads%252FJPqy5Mam92Y63B2t1eXt%252Fimage.png%3Falt%3Dmedia%26token%3D936304c1-f249-4392-9784-547bafa74bf7\&width=300\&dpr=4\&quality=100\&sign=c564a048\&sv=2)打开 Mind+，它不会自动加载此扩展库 ，每次打开应用后都需要重新手动加载。

如果您是通过双击使用了此扩展库的代码存档（后缀为mp或sb3）打开Mind+，或者在打开 Mind+后导入这些代码存档，则 Mind+会自动加载此扩展库。
{% endhint %}

## 程序运行原理及流程 <a href="#cheng-xu-yun-xing-yuan-li-ji-liu-cheng" id="cheng-xu-yun-xing-yuan-li-ji-liu-cheng"></a>

使用此扩展库编写完成控制机器人的程序代码后，无需编译上传程序代码到机器人主板上。直接点击“运行”按钮即可运行程序代码。如需在程序运行过程中中止程序，可随时点击“停止”按钮。程序运行流程可分为三个步骤：

1. 打开串口
2. 控制机器人
3. 关闭串口

## 积木块使用说明 <a href="#ji-mu-kuai-shi-yong-shuo-ming" id="ji-mu-kuai-shi-yong-shuo-ming"></a>

### 打开串口 <a href="#da-kai-chuan-kou" id="da-kai-chuan-kou"></a>

打开串口有两种方式：

* 自动识别并打开串口

&#x20;![](https://docs.petoi.com/~gitbook/image?url=https%3A%2F%2F201656985-files.gitbook.io%2F%7E%2Ffiles%2Fv0%2Fb%2Fgitbook-x-prod.appspot.com%2Fo%2Fspaces%252F-MQ6a951Q6Jn1Zzt5Ajr-3369173170%252Fuploads%252FpYjtm0zjjynDmG1WEcqf%252Fimage.png%3Falt%3Dmedia%26token%3Defa71822-e661-4fee-86d3-c481b769560e\&width=300\&dpr=4\&quality=100\&sign=e4442bf2\&sv=2)

* 输入串口名称打开串口

&#x20;![](https://docs.petoi.com/~gitbook/image?url=https%3A%2F%2F201656985-files.gitbook.io%2F%7E%2Ffiles%2Fv0%2Fb%2Fgitbook-x-prod.appspot.com%2Fo%2Fspaces%252F-MQ6a951Q6Jn1Zzt5Ajr-3369173170%252Fuploads%252FonnmBRB1LugiFAJvNCYe%252Fimage.png%3Falt%3Dmedia%26token%3D9ab03bae-2fe0-4efd-a88d-1c3bbed1af9d\&width=300\&dpr=4\&quality=100\&sign=fba7ba00\&sv=2)

{% hint style="info" %}
如果串口打开失败，可以参考终端窗口中的打印信息，更换串口名称：

![](https://docs.petoi.com/~gitbook/image?url=https%3A%2F%2F201656985-files.gitbook.io%2F%7E%2Ffiles%2Fv0%2Fb%2Fgitbook-x-prod.appspot.com%2Fo%2Fspaces%252F-MQ6a951Q6Jn1Zzt5Ajr-3369173170%252Fuploads%252FYp7vMKSNB7UUCrmTzXv7%252Fimage.png%3Falt%3Dmedia%26token%3D0795a746-5111-4742-9e08-1f0be7c3bbaf\&width=300\&dpr=4\&quality=100\&sign=b18f7996\&sv=2)
{% endhint %}

### 关闭陀螺仪 <a href="#guan-bi-tuo-luo-yi" id="guan-bi-tuo-luo-yi"></a>

![](https://docs.petoi.com/~gitbook/image?url=https%3A%2F%2F201656985-files.gitbook.io%2F%7E%2Ffiles%2Fv0%2Fb%2Fgitbook-x-prod.appspot.com%2Fo%2Fspaces%252F-MQ6a951Q6Jn1Zzt5Ajr-3369173170%252Fuploads%252FxDInIePv7dfbMhBKe4VV%252Fimage.png%3Falt%3Dmedia%26token%3Daf4dc1ab-0920-4550-8a18-70de8ee4f2e2\&width=300\&dpr=4\&quality=100\&sign=3cd04952\&sv=2)

当开启陀螺仪功能时，机器人可以实时保持自身身体平衡，可能会看到机器人在做预设动作（尤其是执行比较剧烈的动作）时，身体会来回晃动，甚至会发生身体倾翻，这时机器人自动会做复原的动作，这样可能会打乱您预设的执行步骤。

如果上传的固件是Mind+模式程序固件（**`#define GROVE_SERIAL_PASS_THROUGH`** 此行代码被激活），机器人启动时默认是关闭陀螺仪功能 (机器人将不能保持自平衡，摔倒后不会自动翻身起立)，就不需要添加此积木块了。

{% hint style="info" %}
如果上传的是[标准模式](https://docs.petoi.com/v/chinese/arduino-ide/wei-nyboard-shang-chuan-cheng-xu#11.-dai-ma-zhong-de-mo-kuai-hong)程序固件，建议您在设计动作时，在程序打开串口后添加此积木块关闭陀螺仪， 机器人就不会实时做平衡反馈动作了。如下图所示：

![](https://docs.petoi.com/~gitbook/image?url=https%3A%2F%2F201656985-files.gitbook.io%2F%7E%2Ffiles%2Fv0%2Fb%2Fgitbook-x-prod.appspot.com%2Fo%2Fspaces%252F-MQ6a951Q6Jn1Zzt5Ajr-3369173170%252Fuploads%252FPqXJppmWgyCRwA3oohja%252Fimage.png%3Falt%3Dmedia%26token%3D012bab6a-dce2-4a81-a5e2-9a7d5072a658\&width=300\&dpr=4\&quality=100\&sign=e6f9cf8e\&sv=2)
{% endhint %}

### 执行固有技能动作 <a href="#zhi-xing-gu-you-ji-neng-dong-zuo" id="zhi-xing-gu-you-ji-neng-dong-zuo"></a>

![](https://docs.petoi.com/~gitbook/image?url=https%3A%2F%2F201656985-files.gitbook.io%2F%7E%2Ffiles%2Fv0%2Fb%2Fgitbook-x-prod.appspot.com%2Fo%2Fspaces%252F-MQ6a951Q6Jn1Zzt5Ajr-3369173170%252Fuploads%252FVq4hyA2gHK4csFi4zcEK%252Fimage.png%3Falt%3Dmedia%26token%3Da27f54e9-3371-4d4b-a788-b872862a59a0\&width=300\&dpr=4\&quality=100\&sign=d21cbafa\&sv=2)

使用此积木块可以让机器人执行烧录到机器人主板中技能动作。其中从“坐下”到“零位”，属于**姿势**（只包含一个动作帧）；从“拳击”到“闻一闻”，属于**行为**（包含多个连贯的动作帧，其中一部分连续动作帧可以循环执行多次，但所有动作帧按照顺序只执行一轮）；从“原地踏步”到“向右跑”，属于**步态**（包含多个连贯的动作帧，这些动作帧按照顺序循环不断重复执行）。配合使用积木块中延时设置，可以控制机器人在做完技能动作延迟预设时间后执行下一个积木块程序。

### 执行从技能创作坊中最新导出的一个技能 <a href="#zhi-xing-cong-ji-neng-chuang-zuo-fang-zhong-zui-xin-dao-chu-de-yi-ge-ji-neng" id="zhi-xing-cong-ji-neng-chuang-zuo-fang-zhong-zui-xin-dao-chu-de-yi-ge-ji-neng"></a>

<div align="left"><figure><img src="https://docs.petoi.com/~gitbook/image?url=https%3A%2F%2F201656985-files.gitbook.io%2F%7E%2Ffiles%2Fv0%2Fb%2Fgitbook-x-prod.appspot.com%2Fo%2Fspaces%252F-MQ6a951Q6Jn1Zzt5Ajr-3369173170%252Fuploads%252FZ5XYnFvnawNLtgl9kAHo%252Fimage.png%3Falt%3Dmedia%26token%3D3a434794-1c12-48f5-94f4-69154881a829&#x26;width=768&#x26;dpr=4&#x26;quality=100&#x26;sign=5db9ca58&#x26;sv=2" alt=""><figcaption></figcaption></figure></div>

使用此积木块可以让机器人执行从[技能创作坊](https://docs.petoi.com/v/chinese/zhuo-mian-ying-yong/ji-neng-chuang-zuo-fang#dao-chu-dong-zuo)中最新导出的一个技能。配合使用积木块中延时设置，可以控制机器人在做完技能动作延迟预设时间后执行下一个积木块程序。

{% hint style="info" %}
相当于执行串口命令“**T**”，然后延迟预设时间执行后面的程序。
{% endhint %}

### 执行技能文件中的技能 <a href="#zhi-xing-ji-neng-wen-jian-zhong-de-ji-neng" id="zhi-xing-ji-neng-wen-jian-zhong-de-ji-neng"></a>

<div align="left"><figure><img src="https://docs.petoi.com/~gitbook/image?url=https%3A%2F%2F201656985-files.gitbook.io%2F%7E%2Ffiles%2Fv0%2Fb%2Fgitbook-x-prod.appspot.com%2Fo%2Fspaces%252F-MQ6a951Q6Jn1Zzt5Ajr-3369173170%252Fuploads%252F6rZOKwZU1J62kigYn5ut%252Fimage.png%3Falt%3Dmedia%26token%3Dcfc96ccb-d00f-4f4a-80d3-9f0c41731ee8&#x26;width=768&#x26;dpr=4&#x26;quality=100&#x26;sign=5dede3f&#x26;sv=2" alt=""><figcaption></figcaption></figure></div>

使用此积木块可以让机器人执行技能文件中的技能，技能文件位于以下目录中：

* **Windows**: C:\Users\\{your user name}\\.config\Petoi\SkillLibrary\\{model}
* **MacOS** : /Users/{your user name}/.config/Petoi/SkillLibrary/{model}
* **Linux**: /home/{your user name}/.config/Petoi/SkillLibrary/{model}

目录中文件夹名称 {**model**} 为 Bittle 或者 Nybble。 从[技能创作坊](https://docs.petoi.com/v/chinese/zhuo-mian-ying-yong/ji-neng-chuang-zuo-fang#dao-chu-dong-zuo)导出技能文件时，程序会自动将技能文件保存到该目录中。

{% hint style="info" %}
小技巧：您可以将GitHub上OpenCat项目源代码中的[SkillLibrary文件夹](https://github.com/PetoiCamp/OpenCat/tree/main/SkillLibrary)复制并粘贴到 _**.config/Petoi**_ 目录中。 这样您就可以在Mind+程序中使用这些示例技能文件。

![](https://docs.petoi.com/~gitbook/image?url=https%3A%2F%2F201656985-files.gitbook.io%2F%7E%2Ffiles%2Fv0%2Fb%2Fgitbook-x-prod.appspot.com%2Fo%2Fspaces%252F-MQ6a951Q6Jn1Zzt5Ajr-3369173170%252Fuploads%252FSLRzNCZVUwEbvGwDKoVz%252FSkillLibrary.png%3Falt%3Dmedia%26token%3D36bc3e21-dfb4-4dfc-84cd-e921f45baa8f\&width=300\&dpr=4\&quality=100\&sign=cece6b0e\&sv=2)

文件夹 **.config** 在MacOS/Linux 中是隐藏文件夹，但可以在终端中或通过特定的视图设置访问：

*   **MacOS** 在 Finder 中打开目录 /Users/{用户名}，然后同时按“Command”+“Shift”+“.” （句号）键即可显示隐藏文件夹。

    ![](https://docs.petoi.com/~gitbook/image?url=https%3A%2F%2F201656985-files.gitbook.io%2F%7E%2Ffiles%2Fv0%2Fb%2Fgitbook-x-prod.appspot.com%2Fo%2Fspaces%252F-MQ6a951Q6Jn1Zzt5Ajr-3369173170%252Fuploads%252FrypOyJTByJlR5WB52zZo%252Fimage.png%3Falt%3Dmedia%26token%3Da8d49ecf-a06d-496a-9b66-07c179017874\&width=768\&dpr=4\&quality=100\&sign=7b9a41f1\&sv=2)
{% endhint %}

### 依次旋转关节 <a href="#yi-ci-xuan-zhuan-guan-jie" id="yi-ci-xuan-zhuan-guan-jie"></a>

<div align="left"><figure><img src="https://docs.petoi.com/~gitbook/image?url=https%3A%2F%2F201656985-files.gitbook.io%2F%7E%2Ffiles%2Fv0%2Fb%2Fgitbook-x-prod.appspot.com%2Fo%2Fspaces%252F-MQ6a951Q6Jn1Zzt5Ajr-3369173170%252Fuploads%252FMiNGwVrjsNXKrG1hJGvn%252Fimage.png%3Falt%3Dmedia%26token%3Dc91cba9a-9074-4fa4-b5e4-d0a48fd622c6&#x26;width=300&#x26;dpr=4&#x26;quality=100&#x26;sign=b6b4232c&#x26;sv=2" alt=""><figcaption></figcaption></figure></div>

使用此积木块可以控制一个关节或多个关节按顺序依次旋转，有以下几种积木块搭配使用方式供参考：

*   控制单个关节旋转到绝对角度值



    <div align="left"><figure><img src="https://docs.petoi.com/~gitbook/image?url=https%3A%2F%2F201656985-files.gitbook.io%2F%7E%2Ffiles%2Fv0%2Fb%2Fgitbook-x-prod.appspot.com%2Fo%2Fspaces%252F-MQ6a951Q6Jn1Zzt5Ajr-3369173170%252Fuploads%252FBW9p7eCK1wy0eXTsxb9h%252Fimage.png%3Falt%3Dmedia%26token%3De0aa446d-a57e-4265-8a9a-86d75394addb&#x26;width=768&#x26;dpr=4&#x26;quality=100&#x26;sign=5ab67a41&#x26;sv=2" alt=""><figcaption></figcaption></figure></div>
*   控制单个关节旋转到相对角度值



    <div align="left"><figure><img src="https://docs.petoi.com/~gitbook/image?url=https%3A%2F%2F201656985-files.gitbook.io%2F%7E%2Ffiles%2Fv0%2Fb%2Fgitbook-x-prod.appspot.com%2Fo%2Fspaces%252F-MQ6a951Q6Jn1Zzt5Ajr-3369173170%252Fuploads%252FKV42tdYEdX54VnEKpeIB%252Fimage.png%3Falt%3Dmedia%26token%3D4c06521b-8269-46cf-8fe2-9490784c5f59&#x26;width=768&#x26;dpr=4&#x26;quality=100&#x26;sign=ff43b62c&#x26;sv=2" alt=""><figcaption></figcaption></figure></div>
*   控制多个关节依次旋转到绝对角度值或相对角度值



    <div align="left"><figure><img src="https://docs.petoi.com/~gitbook/image?url=https%3A%2F%2F201656985-files.gitbook.io%2F%7E%2Ffiles%2Fv0%2Fb%2Fgitbook-x-prod.appspot.com%2Fo%2Fspaces%252F-MQ6a951Q6Jn1Zzt5Ajr-3369173170%252Fuploads%252FLvQYpvxpjqoU3eF0Z5Pt%252Fimage.png%3Falt%3Dmedia%26token%3D351afd7b-77b6-4876-a2da-80cb06fcecd5&#x26;width=768&#x26;dpr=4&#x26;quality=100&#x26;sign=7f9eee10&#x26;sv=2" alt=""><figcaption></figcaption></figure></div>
*   使用关节角度列表来控制多个关节依次旋转到绝对角度



    <div align="left"><figure><img src="https://docs.petoi.com/~gitbook/image?url=https%3A%2F%2F201656985-files.gitbook.io%2F%7E%2Ffiles%2Fv0%2Fb%2Fgitbook-x-prod.appspot.com%2Fo%2Fspaces%252F-MQ6a951Q6Jn1Zzt5Ajr-3369173170%252Fuploads%252FMm98hIzkdjejma36FZkB%252Fimage.png%3Falt%3Dmedia%26token%3D74c1f907-b611-4e36-85cc-4d0b1316547a&#x26;width=768&#x26;dpr=4&#x26;quality=100&#x26;sign=6d91b159&#x26;sv=2" alt=""><figcaption></figcaption></figure></div>

配合使用积木块中延时设置，可以控制机器人在做完动作延迟预设时间后执行下一个积木块程序。

{% hint style="info" %}
* ![](https://docs.petoi.com/~gitbook/image?url=https%3A%2F%2F201656985-files.gitbook.io%2F%7E%2Ffiles%2Fv0%2Fb%2Fgitbook-x-prod.appspot.com%2Fo%2Fspaces%252F-MQ6a951Q6Jn1Zzt5Ajr-3369173170%252Fuploads%252FCXY6U9rZq2TQysQvu1aO%252Fimage.png%3Falt%3Dmedia%26token%3D038ed709-75d6-4cbc-a8a6-73f9f0a7a3a1\&width=300\&dpr=4\&quality=100\&sign=ab66d9e1\&sv=2)，![](https://docs.petoi.com/~gitbook/image?url=https%3A%2F%2F201656985-files.gitbook.io%2F%7E%2Ffiles%2Fv0%2Fb%2Fgitbook-x-prod.appspot.com%2Fo%2Fspaces%252F-MQ6a951Q6Jn1Zzt5Ajr-3369173170%252Fuploads%252FQMz3yO1ZO4VduBsQs5FG%252Fimage.png%3Falt%3Dmedia%26token%3D54175950-9696-4cc6-b1b3-6cfd4d0cec3a\&width=300\&dpr=4\&quality=100\&sign=896384c\&sv=2) 代表由一个[关节序号](https://app.gitbook.com/o/-M-_eWZUjFA4usjshHcZ/s/-MQ6a951Q6Jn1Zzt5Ajr-3369173170/~/changes/235/petoi-ji-qi-ren-guan-jie-xu-hao)和一个角度值组成的列表。 比如示例中【头偏转角到30度】代表的是列表 `[0, 30]。`
*   ![](https://docs.petoi.com/~gitbook/image?url=https%3A%2F%2F201656985-files.gitbook.io%2F%7E%2Ffiles%2Fv0%2Fb%2Fgitbook-x-prod.appspot.com%2Fo%2Fspaces%252F-MQ6a951Q6Jn1Zzt5Ajr-3369173170%252Fuploads%252FCSUFTXpE40PVxx5hAz8A%252Fimage.png%3Falt%3Dmedia%26token%3D43875f59-3a25-48df-863c-4097712629c1\&width=300\&dpr=4\&quality=100\&sign=cc2f1dcf\&sv=2) 由一对或多对 [关节序号](https://app.gitbook.com/o/-M-_eWZUjFA4usjshHcZ/s/-MQ6a951Q6Jn1Zzt5Ajr-3369173170/~/changes/235/petoi-ji-qi-ren-guan-jie-xu-hao) + 角度值 组成，具体格式如下：

    `[关节序号，角度值，关节序号，角度值 ......]`
{% endhint %}

### 同时旋转关节 <a href="#tong-shi-xuan-zhuan-guan-jie" id="tong-shi-xuan-zhuan-guan-jie"></a>

![](https://docs.petoi.com/~gitbook/image?url=https%3A%2F%2F201656985-files.gitbook.io%2F%7E%2Ffiles%2Fv0%2Fb%2Fgitbook-x-prod.appspot.com%2Fo%2Fspaces%252F-MQ6a951Q6Jn1Zzt5Ajr-3369173170%252Fuploads%252FeOuvCsQ2i4qEGW3XiVlw%252Fimage.png%3Falt%3Dmedia%26token%3D1a8e385e-3d19-4dee-b308-6f2412fd0514\&width=300\&dpr=4\&quality=100\&sign=c9c05072\&sv=2)

使用此积木块可以控制多个关节同时旋转，有以下几种积木块搭配使用方式供参考：

*   控制多个关节同时旋转到绝对角度值或相对角度值



    <figure><img src="https://docs.petoi.com/~gitbook/image?url=https%3A%2F%2F201656985-files.gitbook.io%2F%7E%2Ffiles%2Fv0%2Fb%2Fgitbook-x-prod.appspot.com%2Fo%2Fspaces%252F-MQ6a951Q6Jn1Zzt5Ajr-3369173170%252Fuploads%252F0RmSK9oiHboQoztkTIVv%252Fimage.png%3Falt%3Dmedia%26token%3Df5bce898-0eed-47d4-827c-6042f79a2e76&#x26;width=768&#x26;dpr=4&#x26;quality=100&#x26;sign=13230b54&#x26;sv=2" alt=""><figcaption></figcaption></figure>
*   使用关节角度列表来控制多个关节同时旋转到绝对角度值



    <figure><img src="https://docs.petoi.com/~gitbook/image?url=https%3A%2F%2F201656985-files.gitbook.io%2F%7E%2Ffiles%2Fv0%2Fb%2Fgitbook-x-prod.appspot.com%2Fo%2Fspaces%252F-MQ6a951Q6Jn1Zzt5Ajr-3369173170%252Fuploads%252FXB5yLmr9s9FZOhmu4KrW%252Fimage.png%3Falt%3Dmedia%26token%3De94a19c5-1261-4f12-852b-356f076dc672&#x26;width=768&#x26;dpr=4&#x26;quality=100&#x26;sign=b5e3e254&#x26;sv=2" alt=""><figcaption></figcaption></figure>

配合使用积木块中延时设置，可以控制机器人在做完动作延迟预设时间后执行下一个积木块程序。

### 获取关节当前角度值 <a href="#huo-qu-guan-jie-dang-qian-jiao-du-zhi" id="huo-qu-guan-jie-dang-qian-jiao-du-zhi"></a>

![](https://docs.petoi.com/~gitbook/image?url=https%3A%2F%2F201656985-files.gitbook.io%2F%7E%2Ffiles%2Fv0%2Fb%2Fgitbook-x-prod.appspot.com%2Fo%2Fspaces%252F-MQ6a951Q6Jn1Zzt5Ajr-3369173170%252Fuploads%252Fi450NJlBZiiN3TjfQ7rY%252Fimage.png%3Falt%3Dmedia%26token%3D9c892f57-14d7-4af8-8be8-f50d2ead0600\&width=300\&dpr=4\&quality=100\&sign=1ef91fb7\&sv=2)

使用此积木块可以获取到所选关节的当前角度值，建议可以先将其赋值给一个变量，然后可以通过使用变量及逻辑算法，控制其他的关节旋转。

{% hint style="info" %}
此积木块的返回值只是一个角度值，不能单独将其填入“依次旋转”，‘’同时旋转“积木块中使用。
{% endhint %}

使用示例：

{% file src="../.gitbook/assets/DemoCn.mp" %}

<figure><img src="https://docs.petoi.com/~gitbook/image?url=https%3A%2F%2F201656985-files.gitbook.io%2F%7E%2Ffiles%2Fv0%2Fb%2Fgitbook-x-prod.appspot.com%2Fo%2Fspaces%252F-MQ6a951Q6Jn1Zzt5Ajr-3369173170%252Fuploads%252FbTBUDF59f5KcVLLkcZnR%252Fimage.png%3Falt%3Dmedia%26token%3Da6feee4b-c531-458c-8e88-4a6307f8b142&#x26;width=768&#x26;dpr=4&#x26;quality=100&#x26;sign=1197df66&#x26;sv=2" alt=""><figcaption></figcaption></figure>

### 转换到动作帧 <a href="#zhuan-huan-dao-dong-zuo-zhen" id="zhuan-huan-dao-dong-zuo-zhen"></a>

![](https://docs.petoi.com/~gitbook/image?url=https%3A%2F%2F201656985-files.gitbook.io%2F%7E%2Ffiles%2Fv0%2Fb%2Fgitbook-x-prod.appspot.com%2Fo%2Fspaces%252F-MQ6a951Q6Jn1Zzt5Ajr-3369173170%252Fuploads%252FTiGbSqcCOqSCrCiShtgt%252Fimage.png%3Falt%3Dmedia%26token%3Dc5364780-d918-436b-8c13-d735d0ca3d46\&width=300\&dpr=4\&quality=100\&sign=e45619b7\&sv=2)

使用此积木块可以控制所有关节同时旋转，请与”动作帧“积木块搭配使用。如下图所示：

<figure><img src="https://docs.petoi.com/~gitbook/image?url=https%3A%2F%2F201656985-files.gitbook.io%2F%7E%2Ffiles%2Fv0%2Fb%2Fgitbook-x-prod.appspot.com%2Fo%2Fspaces%252F-MQ6a951Q6Jn1Zzt5Ajr-3369173170%252Fuploads%252F7IfPlqd5LUvhHFVSuGpr%252Fimage.png%3Falt%3Dmedia%26token%3D2fec0c71-bdaf-4082-bad4-5d104ef768fe&#x26;width=768&#x26;dpr=4&#x26;quality=100&#x26;sign=ff0dbfdd&#x26;sv=2" alt=""><figcaption></figcaption></figure>

{% hint style="info" %}
”动作帧“积木块代表由16个角度值组成的一个列表。其中每个角度值对应于相应[关节序号](https://app.gitbook.com/o/-M-_eWZUjFA4usjshHcZ/s/-MQ6a951Q6Jn1Zzt5Ajr-3369173170/~/changes/235/petoi-ji-qi-ren-guan-jie-xu-hao)舵机旋转到的绝对角度值。
{% endhint %}

配合使用积木块中延时设置，可以控制机器人在做完动作延迟预设时间后执行下一个积木块程序。

### 播放旋律 <a href="#bo-fang-xuan-l" id="bo-fang-xuan-l"></a>

![](https://docs.petoi.com/~gitbook/image?url=https%3A%2F%2F201656985-files.gitbook.io%2F%7E%2Ffiles%2Fv0%2Fb%2Fgitbook-x-prod.appspot.com%2Fo%2Fspaces%252F-MQ6a951Q6Jn1Zzt5Ajr-3369173170%252Fuploads%252FP3EVFofPVfsTwKeMhalr%252Fimage.png%3Falt%3Dmedia%26token%3D6e6a6511-e6e2-420a-a787-bc5ab9cbad7c\&width=300\&dpr=4\&quality=100\&sign=3038d725\&sv=2)

使用此积木块可以控制主板播放音乐。有以下几种积木块搭配使用方式供参考：

*   使用多个“音符+时值”积木块组成的列表



    <figure><img src="https://docs.petoi.com/~gitbook/image?url=https%3A%2F%2F201656985-files.gitbook.io%2F%7E%2Ffiles%2Fv0%2Fb%2Fgitbook-x-prod.appspot.com%2Fo%2Fspaces%252F-MQ6a951Q6Jn1Zzt5Ajr-3369173170%252Fuploads%252FbvB5rJQIuJlBlAhBJchp%252Fimage.png%3Falt%3Dmedia%26token%3Dc32d3f95-af0b-4c10-b2fd-850cd2fe5a81&#x26;width=768&#x26;dpr=4&#x26;quality=100&#x26;sign=51f4d2cb&#x26;sv=2" alt=""><figcaption></figcaption></figure>
*   使用音符及时值列表



    <figure><img src="https://docs.petoi.com/~gitbook/image?url=https%3A%2F%2F201656985-files.gitbook.io%2F%7E%2Ffiles%2Fv0%2Fb%2Fgitbook-x-prod.appspot.com%2Fo%2Fspaces%252F-MQ6a951Q6Jn1Zzt5Ajr-3369173170%252Fuploads%252F2jqnYvNEfti8D9Fwzh4a%252Fimage.png%3Falt%3Dmedia%26token%3D3ce23108-2ab7-491b-8337-f7a859e08834&#x26;width=768&#x26;dpr=4&#x26;quality=100&#x26;sign=4c215f30&#x26;sv=2" alt=""><figcaption></figcaption></figure>

{% hint style="info" %}
![](https://docs.petoi.com/~gitbook/image?url=https%3A%2F%2F201656985-files.gitbook.io%2F%7E%2Ffiles%2Fv0%2Fb%2Fgitbook-x-prod.appspot.com%2Fo%2Fspaces%252F-MQ6a951Q6Jn1Zzt5Ajr-3369173170%252Fuploads%252FbVfpTBZyDeOqgGKzoyGi%252Fimage.png%3Falt%3Dmedia%26token%3Df045873b-7984-4e54-aa3d-e012d9866a3b\&width=300\&dpr=4\&quality=100\&sign=cd2988e9\&sv=2)

由一对或多对 音符 + 时值 组成，具体格式如下：

`[`音符，时值，音符，时值，音符，时值`......]`
{% endhint %}

配合使用积木块中延时设置，可以控制机器人在播放完音乐延迟预设时间后执行下一个积木块程序。

### 执行串口命令 <a href="#zhi-xing-chuan-kou-ming-ling" id="zhi-xing-chuan-kou-ming-ling"></a>

![](https://docs.petoi.com/~gitbook/image?url=https%3A%2F%2F201656985-files.gitbook.io%2F%7E%2Ffiles%2Fv0%2Fb%2Fgitbook-x-prod.appspot.com%2Fo%2Fspaces%252F-MQ6a951Q6Jn1Zzt5Ajr-3369173170%252Fuploads%252Foo7pcP4B13uY6UoxcrC3%252Fimage.png%3Falt%3Dmedia%26token%3D9a6005c7-a403-419c-bf7e-c45c9742280b\&width=300\&dpr=4\&quality=100\&sign=6ee2e14f\&sv=2)

使用此积木块可以给机器人发送串口命令，这样可以给您提供更多，更灵活的控制方式。比如可以输入“**kkcL**”（踢左前腿）， “**khiR**”(举右前腿打招呼)。更多串口命令请参考[串口协议](https://docs.petoi.com/v/chinese/api/chuan-kou-xie-yi)。

配合使用积木块中延时设置，可以控制机器人在执行完串口命令延迟预设时间后执行下一个积木块程序。

### 写模拟值 <a href="#xie-mo-ni-zhi" id="xie-mo-ni-zhi"></a>

![](https://docs.petoi.com/~gitbook/image?url=https%3A%2F%2F201656985-files.gitbook.io%2F%7E%2Ffiles%2Fv0%2Fb%2Fgitbook-x-prod.appspot.com%2Fo%2Fspaces%252F-MQ6a951Q6Jn1Zzt5Ajr-3369173170%252Fuploads%252FxbKn5BeSBLJfrthb2eFE%252Fimage.png%3Falt%3Dmedia%26token%3D4b5d1726-a481-4342-ae3c-1b96c288f7ba\&width=300\&dpr=4\&quality=100\&sign=60df184e\&sv=2)

使用此积木块可以给指定引脚写入模拟值。模拟值范围：0\~255

### 读模拟值 <a href="#du-mo-ni-zhi" id="du-mo-ni-zhi"></a>

![](https://docs.petoi.com/~gitbook/image?url=https%3A%2F%2F201656985-files.gitbook.io%2F%7E%2Ffiles%2Fv0%2Fb%2Fgitbook-x-prod.appspot.com%2Fo%2Fspaces%252F-MQ6a951Q6Jn1Zzt5Ajr-3369173170%252Fuploads%252FLVOwdzvzbofO0OvdM42G%252Fimage.png%3Falt%3Dmedia%26token%3D4ada6e16-43c1-4521-8fd9-b678b395405e\&width=300\&dpr=4\&quality=100\&sign=875549a4\&sv=2)

使用此积木块可以读取指定引脚的模拟值。

### 写数字值 <a href="#xie-shu-zi-zhi" id="xie-shu-zi-zhi"></a>

![](https://docs.petoi.com/~gitbook/image?url=https%3A%2F%2F201656985-files.gitbook.io%2F%7E%2Ffiles%2Fv0%2Fb%2Fgitbook-x-prod.appspot.com%2Fo%2Fspaces%252F-MQ6a951Q6Jn1Zzt5Ajr-3369173170%252Fuploads%252F8lXkXlhAoSxdRhRxhkuu%252Fimage.png%3Falt%3Dmedia%26token%3D5ce7ad8e-20b5-4fb1-9e08-63b81f348fc5\&width=300\&dpr=4\&quality=100\&sign=8a500845\&sv=2)

使用此积木块可以给指定引脚写入高低电平值。高电平: 1；低电平：0。

### 读数字值 <a href="#du-shu-zi-zhi" id="du-shu-zi-zhi"></a>

![](https://docs.petoi.com/~gitbook/image?url=https%3A%2F%2F201656985-files.gitbook.io%2F%7E%2Ffiles%2Fv0%2Fb%2Fgitbook-x-prod.appspot.com%2Fo%2Fspaces%252F-MQ6a951Q6Jn1Zzt5Ajr-3369173170%252Fuploads%252F7iRFc8HVD4QcuRVergu7%252Fimage.png%3Falt%3Dmedia%26token%3D0784a2c8-703a-45ea-841d-7cdd8672e8a6\&width=300\&dpr=4\&quality=100\&sign=a19103e8\&sv=2)

使用此积木块可以读取指定引脚的高/低电平值。高电平: 1；低电平：0。

### 关闭串口 <a href="#guan-bi-chuan-kou" id="guan-bi-chuan-kou"></a>

![](https://docs.petoi.com/~gitbook/image?url=https%3A%2F%2F201656985-files.gitbook.io%2F%7E%2Ffiles%2Fv0%2Fb%2Fgitbook-x-prod.appspot.com%2Fo%2Fspaces%252F-MQ6a951Q6Jn1Zzt5Ajr-3369173170%252Fuploads%252ForciysaxoZZN1aaMpHpP%252Fimage.png%3Falt%3Dmedia%26token%3D847f41a3-2026-4d33-a91c-3532a7d5a735\&width=300\&dpr=4\&quality=100\&sign=29c4a07c\&sv=2)

一般在控制程序的结尾，建议使用此积木块关闭串口通讯。

### 示例程序 <a href="#shi-li-cheng-xu" id="shi-li-cheng-xu"></a>

在GitHub仓库中([Petoi\_MindPlusLib/examples](https://github.com/PetoiCamp/Petoi_MindPlusLib/tree/main/examples))我们提供了一些相关示例程序，可供您下载参考。

<figure><img src="https://docs.petoi.com/~gitbook/image?url=https%3A%2F%2F201656985-files.gitbook.io%2F%7E%2Ffiles%2Fv0%2Fb%2Fgitbook-x-prod.appspot.com%2Fo%2Fspaces%252F-MQ6a951Q6Jn1Zzt5Ajr-3369173170%252Fuploads%252FD4ALWeQ8qC7dSlsN6nPl%252Fimage.png%3Falt%3Dmedia%26token%3Dbba94896-05b0-40ad-9faa-74473c0d02ed&#x26;width=768&#x26;dpr=4&#x26;quality=100&#x26;sign=8bbc30ed&#x26;sv=2" alt=""><figcaption></figcaption></figure>
