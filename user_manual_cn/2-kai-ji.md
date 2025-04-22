---
description: “生活就像一盒巧克狸宝” 🔍
---

# 2 🧩 开机

## 开机前姿态

为了避免舵机卡住，请把机器人的腿转动到正确的姿势，然后再开机。

<figure><img src=".gitbook/assets/image (1).png" alt=""><figcaption></figcaption></figure>

## 使用场景

请先在校准支架上试用，熟悉之后再在稳固的桌面或地上使用

<figure><img src=".gitbook/assets/image (21).png" alt=""><figcaption></figcaption></figure>

{% hint style="warning" %}
当在桌面使用时，要在手的可触及范围内，防止跌落，避免损坏
{% endhint %}

## 开机

只需要打开机器人电池即可体验，如果使用过程中遇到问题，请跳转到下方的其他情况的说明。

### 电池开关

长按电池按钮2到3秒钟打开/关闭电源。您将听到一个短旋律，电池指示灯显示为蓝色。如果指示灯是红色，请往下查看充电方法。

<figure><img src=".gitbook/assets/image (4).png" alt=""><figcaption></figcaption></figure>

{% hint style="info" %}
电池开启后，机器人初始化大约需要5秒，完成后会播放一段旋律；

机器人在存储及运输过程中，电池电量可能会下降，首次使用，请确认电量是否充足；

最好是把机器人放在校准架上面，然后再长按开启电池；

如果是在地板上使用机器人，启动电池后，需要把机器人的身体放正，否则机器人启动后会一直尝试翻身的动作或其他动作；

如果机器人在上电时处于侧放状态，将自动进入校准姿势。
{% endhint %}

### **电量指示**

使用前，请仔细阅读包装盒底部的说明，以确保正确操作电池。

<figure><img src=".gitbook/assets/image (5).png" alt=""><figcaption><p>低电量                                          满电                                                  中间电量</p></figcaption></figure>

长按电池上的蓝色按钮 2～3 秒，可开启或关闭电源。\
充电过程中，指示灯显示红色；充电完成后，指示灯变为绿色\
短按蓝色按钮可查看电池电量状态：

· 满电时，指示灯呈蓝色。

· 低电压时，指示灯呈红色。

· 电量下降过程中，指示灯颜色会从蓝色逐渐变为红色

请注意电池接口使用，充电时使用Type-c接口，给Nybble Q供电时使用2P 2.54MM红黑线端子接口，请勿混淆：

如果机器人检测到电量低会暂停动作并哔哔叫，这时您需要拆下电池，然后用常规的5V USB Type-C接口数据线给电池充电。考虑安全因素，充电时电池会自动停止向机器人供电

### **蜂鸣器声音类型**

| **声音** | **响起时机**   | **表示**      |
| ------ | ---------- | ----------- |
| 短旋律    | 通电或重启      | 程序启动成功      |
| 短哔声    | 使用过程中      | 程序收到指令      |
| 重复旋律   | 在使用或动作暂停期间 | 电池电量低或未连接电池 |

## 其他情况

### 充电

机器人电池座尺寸有限，无法直接插上USB充电，需要拆下电池

{% hint style="info" %}
充电前请关闭电池（长按3秒），接上充电线后电池会自动关闭（停止向外供电）
{% endhint %}

{% hint style="warning" %}
请勿混淆电路板的下载口和电池充电口
{% endhint %}

充电有2种形式

1 仅从身体拆下电池，简单快速

<figure><img src=".gitbook/assets/image (6).png" alt="" width="563"><figcaption></figcaption></figure>

2 同时把侧板拆下，再把电池从电路板上拆下，使得电池完全从身体上离开。适用于有备用电池的用户

<figure><img src=".gitbook/assets/image (7).png" alt="" width="563"><figcaption></figcaption></figure>

<figure><img src=".gitbook/assets/image (8).png" alt="" width="563"><figcaption><p>重新装回电池时，需要让电池的接头穿过图示的小孔，最后连接到身体的电路板上面</p></figcaption></figure>

<figure><img src=".gitbook/assets/image (10).png" alt="" width="563"><figcaption></figcaption></figure>

### 更换电池

操作和上面提到的充电形式2相同

### **死机或者无反应**

2种方法处理：

1\. 观察电池的指示灯，如果电量过低，请及时充电

2\. 如果电量正常，可以拆开背壳，尝试按下主板上位于LED logo旁的复位按钮，重启机器人

<figure><img src=".gitbook/assets/image (66).png" alt=""><figcaption></figcaption></figure>

### 舵机

对于塑料舵机，为了延长舵机使用寿命，我们增加了2种保护机制：

一、受到短时间的外力冲击时，启动保护机制，此时舵机会出现咔咔声音；\
二、舵机长时间受力后，启动保护机制，舵机会卸力。

### **咔咔声**

塑料舵机内部有离合齿轮，可以起到保护作用。

在上电情况下，如果舵机的旋转被外界阻挡，就会产生咔咔的离合声音。比如：

人为去转动舵机，使他不在目标角度；

舵机被身体卡住；

舵机被其他物体卡住；

<figure><img src=".gitbook/assets/舵机离合 (2).gif" alt=""><figcaption></figcaption></figure>

### **舵机突然不动 卸力**

为了使舵机更加耐用，我们增加了舵机的堵转电流检测，当舵机长时间受力，但是并未触发离合齿轮时，舵机会自动进入卸力模式。

当舵机接收到新的角度指令时，舵机返回正常模式。

<figure><img src=".gitbook/assets/舵机卸力.gif" alt=""><figcaption></figcaption></figure>



