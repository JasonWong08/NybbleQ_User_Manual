# BiBoard V1 用户指南

## 简介

BiBoard V1 是一款基于ESP32 MINI 1高性能模组的开发板，模组采用Xtensa双核32位LX6处理器，内置4 MB Flash、2.4 GHz WiFi + 低功耗蓝牙。具备强大的计算能力和多样的扩展接口，可满足不同项目的个性化需求和复杂嵌入式开发。广泛适用于物联网、工业自动化和教育科研等领域。是每位嵌入式开发人员的理想选择。

## 主要性能

* 实时高负载供电
* 高速串口调试芯片
* 飞控级六轴运动传感器
* 12路大扭矩PWM舵机接口
* 通用型扩展Grove接口
* 双语多词条离线智能语音识别
* 高保真音响喇叭
* 零延迟，高灵敏触摸模块
* 强大的EMC抗干扰和抗辐射性能

## 规格参数

<table><thead><tr><th width="194">项目</th><th>规格</th></tr></thead><tbody><tr><td>处理器</td><td>ESP32-U4WDH</td></tr><tr><td>SRAM</td><td>520KB</td></tr><tr><td>ROM</td><td>448KB</td></tr><tr><td>Flash</td><td>4MB</td></tr><tr><td>外置 EEPROM</td><td>可自定义</td></tr><tr><td>输入电压</td><td>7-9V</td></tr><tr><td>工作电压</td><td>5V</td></tr><tr><td>工作电流</td><td>0.1-0.2A</td></tr><tr><td>串口波特率</td><td>115200</td></tr><tr><td>蓝牙协议</td><td>4.2BR/EDR和低功耗蓝牙标准</td></tr><tr><td>WIFI协议</td><td>802.11b/g/n</td></tr><tr><td>板载Grove扩展接口</td><td>UART2, I2C, 4 x 模拟输入</td></tr><tr><td>树莓派通信接口</td><td>支持树莓派3A+, 4, 5 （需要焊接5-Pin引脚座）</td></tr></tbody></table>

## 功能模块简介

<figure><img src="../.gitbook/assets/image (31).png" alt=""><figcaption></figcaption></figure>

<table><thead><tr><th width="87">序号</th><th>模块及功能</th></tr></thead><tbody><tr><td>1</td><td>可编程LED  【1】</td></tr><tr><td>2</td><td>DC-DC降压芯片</td></tr><tr><td>3</td><td>12路PWM舵机接口  【1】</td></tr><tr><td>4</td><td>MPU6050陀螺仪</td></tr><tr><td>5</td><td>双语离线语音识别模块</td></tr><tr><td>6</td><td>外置EEPROM芯片  【2】</td></tr><tr><td>7</td><td>可扩展Grove接口 (G1: UART2； G2: I2C；G3: 2x模拟输入；G4: 2x模拟输入)</td></tr><tr><td>8</td><td>喇叭</td></tr><tr><td>9</td><td>2.54MM电池接口</td></tr><tr><td>10</td><td>树莓派通信接口</td></tr><tr><td>11</td><td>ESP32 MINI 1模组</td></tr><tr><td>12</td><td>CH343P串口芯片</td></tr><tr><td>13</td><td>BOOT按键  【3】</td></tr><tr><td>14</td><td>复位按键</td></tr><tr><td>15</td><td>电池电源指示灯 （<mark style="color:orange;">黄色</mark>LED）</td></tr><tr><td>16</td><td>5V电源指示灯 （<mark style="color:blue;">蓝色</mark>LED）</td></tr><tr><td>17</td><td>触摸模块接口</td></tr></tbody></table>

{% hint style="info" %}
【1】.  开发板默认支持12路PWM舵机，但若需要读取第12路舵机(Pin 27)反馈角度，请将锡桥“**JP1**”拆掉。此时LED27不可使用。

【2】.  最新固件已通过内置Flash实现了外部 EEPROM 的功能。若有需要, 可自行购买并焊到开发板上，型号：M24C64-FMC6TG。

【3】.  若烧录程序时因外部因素导致烧录中断，可能会引发第二次程序无法烧录，此时需断电后按住BOOT键再给主板上电，使ESP32进入“下载模式”，完成烧录后重新对开发板上电即可。
{% endhint %}
