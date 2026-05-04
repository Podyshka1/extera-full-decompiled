.class public Lcom/exteragram/messenger/plugins/models/InputSetting;
.super Lcom/exteragram/messenger/plugins/models/SettingItem;
.source "SourceFile"


# instance fields
.field public defaultValue:Ljava/lang/String;

.field public key:Ljava/lang/String;

.field public onChangeCallback:Lcom/chaquo/python/PyObject;

.field public subtext:Ljava/lang/String;

.field public text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/chaquo/python/PyObject;Lcom/chaquo/python/PyObject;Ljava/lang/String;)V
    .locals 1

    .line 25
    const-string v0, "input"

    invoke-direct {p0, v0, p5, p7, p8}, Lcom/exteragram/messenger/plugins/models/SettingItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/chaquo/python/PyObject;Ljava/lang/String;)V

    .line 26
    iput-object p1, p0, Lcom/exteragram/messenger/plugins/models/InputSetting;->key:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/exteragram/messenger/plugins/models/InputSetting;->text:Ljava/lang/String;

    .line 28
    iput-object p3, p0, Lcom/exteragram/messenger/plugins/models/InputSetting;->defaultValue:Ljava/lang/String;

    .line 29
    iput-object p4, p0, Lcom/exteragram/messenger/plugins/models/InputSetting;->subtext:Ljava/lang/String;

    .line 30
    iput-object p6, p0, Lcom/exteragram/messenger/plugins/models/InputSetting;->onChangeCallback:Lcom/chaquo/python/PyObject;

    return-void
.end method
