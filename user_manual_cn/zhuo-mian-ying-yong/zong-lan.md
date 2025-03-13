# 总览

## \*\* 下载最新版的桌面应用程序 [Petoi Desktop App](https://github.com/PetoiCamp/OpenCat/releases) \*\* <a href="#xia-zai-zui-xin-ban-de-zhuo-mian-ying-yong-cheng-xu-petoi-desktop-app" id="xia-zai-zui-xin-ban-de-zhuo-mian-ying-yong-cheng-xu-petoi-desktop-app"></a>

{% hint style="info" %}
* 下载完成压缩文件（.zip）后，请对其解压缩后再使用。
* Windows用户，请不要将 UI.exe 移动到其他文件目录。
{% endhint %}

Petoi 桌面应用程序为您提供简洁的图形用户界面来配置固件、校准机器人并可以为您的机器人设计自定义动作。 主要功能模块是[固件上载](https://docs.petoi.com/chinese/zhuo-mian-ying-yong/gu-jian-shang-zai)、[关节校准](https://docs.petoi.com/chinese/zhuo-mian-ying-yong/guan-jie-jiao-zhun)和[技能创作坊](https://docs.petoi.com/chinese/zhuo-mian-ying-yong/ji-neng-chuang-zuo-fang)。

源代码主要采用 Python3 中的 Tkinker 模块编写，GitHub 代码仓库地址是： [https://github.com/PetoiCamp/OpenCat/tree/main/pyUI](https://github.com/PetoiCamp/OpenCat/tree/main/pyUI)

其中 UI.py 是所有模块的总入口：

* UI.py 调用：

-> FirmwareUploader.py

-> Calibrator.py

-> SkillComposer.py

<figure><img src="https://docs.petoi.com/~gitbook/image?url=https%3A%2F%2F201656985-files.gitbook.io%2F%7E%2Ffiles%2Fv0%2Fb%2Fgitbook-x-prod.appspot.com%2Fo%2Fspaces%252F-MQ6a951Q6Jn1Zzt5Ajr-3369173170%252Fuploads%252FQQgSvJjjslg464v1hdfS%252Fimage.png%3Falt%3Dmedia%26token%3D6c9f7baa-0126-42f3-a3f8-9ab2418d597c&#x26;width=768&#x26;dpr=4&#x26;quality=100&#x26;sign=e211ad9&#x26;sv=2" alt=""><figcaption></figcaption></figure>

translate.py 为 UI 提供多语言支持。 您可以帮助我们将 UI 翻译成您的语言。 在运行应用程序之前，您必须使用随附的 USB 适配器或蓝牙模块连接到 Petoi 机器人。

## 预编译的可执行程序 <a href="#yu-bian-yi-de-ke-zhi-xing-cheng-xu" id="yu-bian-yi-de-ke-zhi-xing-cheng-xu"></a>

您可以使用预编译的[可执行程序文件](https://github.com/PetoiCamp/OpenCat/releases)，就不需要使用编程界面了。

下载 Mac 版本后，您必须将其拖到 Application 文件夹中。

如果您看到“Petoi Desktop App”由于无法验证开发者而无法打开的错误消息，您可以右键单击该图标，按住 **Shift** 键并单击“**打开**”。

<figure><img src="https://docs.petoi.com/~gitbook/image?url=https%3A%2F%2F201656985-files.gitbook.io%2F%7E%2Ffiles%2Fv0%2Fb%2Fgitbook-x-prod.appspot.com%2Fo%2Fspaces%252F-MQ6a951Q6Jn1Zzt5Ajr-3369173170%252Fuploads%252FItMETy2tWAPs0ULz6ab0%252FMac_right_open.JPG%3Falt%3Dmedia%26token%3D9d165dd9-e5b4-4dcf-bcd1-ff90fb468ee7&#x26;width=768&#x26;dpr=4&#x26;quality=100&#x26;sign=645971b9&#x26;sv=2" alt=""><figcaption></figcaption></figure>

## 在 Terminal 中运行程序 <a href="#zai-terminal-zhong-yun-xing-cheng-xu" id="zai-terminal-zhong-yun-xing-cheng-xu"></a>

如果此应用程序在运行时出现兼容性问题，或者您想修改应用程序的源代码并进行测试，您也可以在Terminal 中运行程序。 Terminal 是 Mac 或 Linux 系统中的内置界面，Windows 系统中的等效环境称为命令行工具 (CMD)。 建议您安装 [Anaconda](https://www.anaconda.com/) 来管理您的 Python 环境，它还可以提供 Powershell 作为旧 Windows 系统中的Terminal 。

根据您现有的 Python 配置，您可能需要升级到 Python3 并安装以下库：

* pyserial
* pillow

您可以通过在Terminal 中输入 `pip3 install pyserial pillow` 或使用 Anaconda 中的包管理器来安装它们。 运行程序步骤如下：

1. 在终端中，使用 `cd` 命令导航到 OpenCat/pyUI/ 文件夹， 其间您可以使用 Tab 键自动补充完成路径名
2. 进入 pyUI/ 文件夹后，输入 `ls` 查看此路径下的所有文件，确保可以看到列出的 UI.py 和其他 python 脚本文件
3. 输入 `python3 UI.py` 即可开始运行Petoi 桌面应用程序

对于Linux系统用户，`如果遇到 python 报错信息`“\_tkinter.TclError: no display name and no $DISPLAY environment variable”，可以尝试安装 python3-tk，tk-dev，以Debian / Ubuntu为例命令如下：

`apt install python3-tk`

`apt install tk-dev`

安装完成后，重启电脑。
