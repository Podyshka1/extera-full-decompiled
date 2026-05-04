.class public Lcom/exteragram/messenger/plugins/models/TextSetting;
.super Lcom/exteragram/messenger/plugins/models/SettingItem;
.source "SourceFile"


# instance fields
.field public accent:Z

.field public createSubFragmentCallback:Lcom/chaquo/python/PyObject;

.field public onClickCallback:Lcom/chaquo/python/PyObject;

.field public red:Z

.field public subtext:Ljava/lang/String;

.field public text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcom/chaquo/python/PyObject;Lcom/chaquo/python/PyObject;Lcom/chaquo/python/PyObject;Ljava/lang/String;)V
    .locals 1

    .line 26
    const-string/jumbo v0, "text"

    invoke-direct {p0, v0, p3, p8, p9}, Lcom/exteragram/messenger/plugins/models/SettingItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/chaquo/python/PyObject;Ljava/lang/String;)V

    .line 27
    iput-object p1, p0, Lcom/exteragram/messenger/plugins/models/TextSetting;->text:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/exteragram/messenger/plugins/models/TextSetting;->subtext:Ljava/lang/String;

    .line 29
    iput-boolean p4, p0, Lcom/exteragram/messenger/plugins/models/TextSetting;->accent:Z

    .line 30
    iput-boolean p5, p0, Lcom/exteragram/messenger/plugins/models/TextSetting;->red:Z

    .line 31
    iput-object p6, p0, Lcom/exteragram/messenger/plugins/models/TextSetting;->onClickCallback:Lcom/chaquo/python/PyObject;

    .line 32
    iput-object p7, p0, Lcom/exteragram/messenger/plugins/models/TextSetting;->createSubFragmentCallback:Lcom/chaquo/python/PyObject;

    return-void
.end method
