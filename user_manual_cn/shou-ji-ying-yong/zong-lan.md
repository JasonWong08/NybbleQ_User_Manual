# 总览

感谢您选择 Petoi 的Nybble Q机器猫产品。 本操作指南将帮助您设置机器宠物，并提供更简单的 UI 来对机器宠物进行校准、控制和编程。 对于高级用户，我们建议您使用 Github 上的 [OpenCat 固件](https://github.com/PetoiCamp/OpenCat)更新机器宠物，以获得最佳兼容性和最新功能。

### 下载与安装 <a href="#xia-zai-yu-an-zhuang" id="xia-zai-yu-an-zhuang"></a>

该应用程序适用于 iOS 和 Android 设备。

* ​[iOS 11+](https://apps.apple.com/us/app/petoi/id1581548095)​
* ​[Android 4.4+](https://play.google.com/store/apps/details?id=com.petoi.petoiapp)​

**APK**

如果在国内无法访问 Google Play，您可以用下面的 apk文件直接安装。安装前需要解压缩。



{% file src="../.gitbook/assets/Petoi-app-release-v1.1.1-23-1.zip" %}

如果app 中的蓝牙设备扫描列表为空，首先检查是否已打开了App 的蓝牙和位置权限，如果仍搜索不到设备，可以尝试安装前一稳定版本。

{% file src="../.gitbook/assets/Petoi-app-release-v1.0.7-20-21.apk.zip" %}

<figure><img src="https://docs.petoi.com/~gitbook/image?url=https%3A%2F%2F201656985-files.gitbook.io%2F%7E%2Ffiles%2Fv0%2Fb%2Fgitbook-x-prod.appspot.com%2Fo%2Fspaces%252F-MQ6a951Q6Jn1Zzt5Ajr-3369173170%252Fuploads%252Fk98va4WtCOgjyLYXBlZN%252Fapp_image.png%3Falt%3Dmedia%26token%3Db79fbbcb-80e3-4319-b926-5ef3c2691779&#x26;width=768&#x26;dpr=4&#x26;quality=100&#x26;sign=659c0f9a&#x26;sv=2" alt=""><figcaption></figcaption></figure>

### 连接 <a href="#lian-jie" id="lian-jie"></a>

在机器宠物启动后或者使用过程中，如果蜂鸣器重复发出短鸣音乐，说明电池电量不足，请及时充电。充电口位于电池的一端。

。 打开应用程序 **Petoi** 并扫描以连接名称为 Nybble 的设备。**不要在手机系统设置中的蓝牙连接设置界面连接机器人！** 请记住打开蓝牙服务并授予应用程序访问该服务的权限。

请记住打开蓝牙服务并授予应用程序访问该服务的权限。 在某些设备上，您可能还需要允许应用程序的位置服务，尽管我们没有使用任何这些信息。

{% hint style="warning" %}
应用程序将向蓝牙设备发送问候语，并期待 OpenCat 固件的响应。 在连接到应用程序之前，您需要在机器人上上传完整的 OpenCat 固件。 否则应用程序会认为它“不是 Petoi 设备”。 预组装的机器人应该已经上传了固件。 否则，您需要使用 Arduino IDE 或桌面应用程序对其进行上传固件。
{% endhint %}

<figure><img src="https://docs.petoi.com/~gitbook/image?url=https%3A%2F%2F96307915-files.gitbook.io%2F%7E%2Ffiles%2Fv0%2Fb%2Fgitbook-x-prod.appspot.com%2Fo%2Fspaces%252F-MQ6a951Q6Jn1Zzt5Ajr-3369173170%252Fuploads%252Fi8lBx7YuAEm4e1ZxKpuo%252FconnectModel_cn.png%3Falt%3Dmedia%26token%3Db7fd52d5-8f47-4649-9b10-8dceb4577b5c&#x26;width=768&#x26;dpr=4&#x26;quality=100&#x26;sign=c87c2149&#x26;sv=2" alt=""><figcaption></figcaption></figure>

如果蓝牙已连接， 机器宠物将演奏三音旋律。 如果稍后机器宠物没有响应或出现故障，请按 BiBoard 上的复位按钮重新启动 BiBoard 上的程序。

该应用程序会自动检测到使用了最新的 OpenCat 固件的 Nybble 。 否则，它将显示出 Nybble 的选项供用户选择。 当然也可以在控制面板中点击打开右上角菜单，点击“**选择宠物**”重新访问该选项页面。

<figure><img src="https://docs.petoi.com/~gitbook/image?url=https%3A%2F%2F201656985-files.gitbook.io%2F%7E%2Ffiles%2Fv0%2Fb%2Fgitbook-x-prod.appspot.com%2Fo%2Fspaces%252F-MQ6a951Q6Jn1Zzt5Ajr-3369173170%252Fuploads%252FWirOMvPmIVZJUz0DL5X2%252FControl_Cali_cn.jpg%3Falt%3Dmedia%26token%3Da2d45d83-3592-485e-b7b6-ff017206b5c1&#x26;width=768&#x26;dpr=4&#x26;quality=100&#x26;sign=4cf88ff9&#x26;sv=2" alt=""><figcaption></figcaption></figure>
