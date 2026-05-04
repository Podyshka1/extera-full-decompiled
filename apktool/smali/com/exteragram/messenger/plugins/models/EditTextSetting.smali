.class public Lcom/exteragram/messenger/plugins/models/EditTextSetting;
.super Lcom/exteragram/messenger/plugins/models/SettingItem;
.source "SourceFile"


# instance fields
.field public defaultValue:Ljava/lang/String;

.field public hint:Ljava/lang/String;

.field public key:Ljava/lang/String;

.field public mask:Ljava/lang/String;

.field public maxLength:I

.field public multiline:Z

.field public onChangeCallback:Lcom/chaquo/python/PyObject;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;Lcom/chaquo/python/PyObject;)V
    .locals 1

    .line 27
    const-string v0, "edit_text"

    invoke-direct {p0, v0}, Lcom/exteragram/messenger/plugins/models/SettingItem;-><init>(Ljava/lang/String;)V

    .line 28
    iput-object p1, p0, Lcom/exteragram/messenger/plugins/models/EditTextSetting;->key:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/exteragram/messenger/plugins/models/EditTextSetting;->hint:Ljava/lang/String;

    .line 30
    iput-object p3, p0, Lcom/exteragram/messenger/plugins/models/EditTextSetting;->defaultValue:Ljava/lang/String;

    .line 31
    iput-boolean p4, p0, Lcom/exteragram/messenger/plugins/models/EditTextSetting;->multiline:Z

    .line 32
    iput p5, p0, Lcom/exteragram/messenger/plugins/models/EditTextSetting;->maxLength:I

    .line 33
    iput-object p6, p0, Lcom/exteragram/messenger/plugins/models/EditTextSetting;->mask:Ljava/lang/String;

    .line 34
    iput-object p7, p0, Lcom/exteragram/messenger/plugins/models/EditTextSetting;->onChangeCallback:Lcom/chaquo/python/PyObject;

    return-void
.end method
