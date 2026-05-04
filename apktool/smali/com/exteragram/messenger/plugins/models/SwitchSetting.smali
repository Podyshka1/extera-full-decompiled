.class public Lcom/exteragram/messenger/plugins/models/SwitchSetting;
.super Lcom/exteragram/messenger/plugins/models/SettingItem;
.source "SourceFile"


# instance fields
.field public defaultValue:Z

.field public key:Ljava/lang/String;

.field public onChangeCallback:Lcom/chaquo/python/PyObject;

.field public subtext:Ljava/lang/String;

.field public text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/chaquo/python/PyObject;Lcom/chaquo/python/PyObject;Ljava/lang/String;)V
    .locals 1

    .line 25
    const-string/jumbo v0, "switch"

    invoke-direct {p0, v0, p5, p7, p8}, Lcom/exteragram/messenger/plugins/models/SettingItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/chaquo/python/PyObject;Ljava/lang/String;)V

    .line 26
    iput-object p1, p0, Lcom/exteragram/messenger/plugins/models/SwitchSetting;->key:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/exteragram/messenger/plugins/models/SwitchSetting;->text:Ljava/lang/String;

    .line 28
    iput-boolean p3, p0, Lcom/exteragram/messenger/plugins/models/SwitchSetting;->defaultValue:Z

    .line 29
    iput-object p4, p0, Lcom/exteragram/messenger/plugins/models/SwitchSetting;->subtext:Ljava/lang/String;

    .line 30
    iput-object p6, p0, Lcom/exteragram/messenger/plugins/models/SwitchSetting;->onChangeCallback:Lcom/chaquo/python/PyObject;

    return-void
.end method
