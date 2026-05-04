.class public Lcom/exteragram/messenger/plugins/models/CustomSetting;
.super Lcom/exteragram/messenger/plugins/models/SettingItem;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/exteragram/messenger/plugins/models/CustomSetting$Factory;
    }
.end annotation


# instance fields
.field public createSubFragmentCallback:Lcom/chaquo/python/PyObject;

.field public factory:Lcom/exteragram/messenger/plugins/models/CustomSetting$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/exteragram/messenger/plugins/models/CustomSetting$Factory<",
            "*>;"
        }
    .end annotation
.end field

.field public factoryArgs:Lcom/chaquo/python/PyObject;

.field public item:Lorg/telegram/ui/Components/UItem;

.field public onClickCallback:Lcom/chaquo/python/PyObject;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/chaquo/python/PyObject;Lcom/chaquo/python/PyObject;Lcom/chaquo/python/PyObject;Ljava/lang/String;)V
    .locals 6

    .line 52
    invoke-static {p1}, Lorg/telegram/ui/Components/UItem;->asCustom(Landroid/view/View;)Lorg/telegram/ui/Components/UItem;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/exteragram/messenger/plugins/models/CustomSetting;-><init>(Lorg/telegram/ui/Components/UItem;Lcom/chaquo/python/PyObject;Lcom/chaquo/python/PyObject;Lcom/chaquo/python/PyObject;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Lcom/chaquo/python/PyObject;Lcom/chaquo/python/PyObject;Lcom/chaquo/python/PyObject;Ljava/lang/String;)V
    .locals 2

    .line 30
    const-string v0, "custom"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p3, p4}, Lcom/exteragram/messenger/plugins/models/SettingItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/chaquo/python/PyObject;Ljava/lang/String;)V

    .line 23
    iput-object v1, p0, Lcom/exteragram/messenger/plugins/models/CustomSetting;->item:Lorg/telegram/ui/Components/UItem;

    .line 24
    iput-object v1, p0, Lcom/exteragram/messenger/plugins/models/CustomSetting;->factory:Lcom/exteragram/messenger/plugins/models/CustomSetting$Factory;

    .line 25
    iput-object v1, p0, Lcom/exteragram/messenger/plugins/models/CustomSetting;->factoryArgs:Lcom/chaquo/python/PyObject;

    .line 31
    iput-object p1, p0, Lcom/exteragram/messenger/plugins/models/CustomSetting;->onClickCallback:Lcom/chaquo/python/PyObject;

    .line 32
    iput-object p2, p0, Lcom/exteragram/messenger/plugins/models/CustomSetting;->createSubFragmentCallback:Lcom/chaquo/python/PyObject;

    return-void
.end method

.method public constructor <init>(Lcom/exteragram/messenger/plugins/models/CustomSetting$Factory;Lcom/chaquo/python/PyObject;Lcom/chaquo/python/PyObject;Lcom/chaquo/python/PyObject;Lcom/chaquo/python/PyObject;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/exteragram/messenger/plugins/models/CustomSetting$Factory<",
            "*>;",
            "Lcom/chaquo/python/PyObject;",
            "Lcom/chaquo/python/PyObject;",
            "Lcom/chaquo/python/PyObject;",
            "Lcom/chaquo/python/PyObject;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 47
    invoke-direct/range {v0 .. v5}, Lcom/exteragram/messenger/plugins/models/CustomSetting;-><init>(Lcom/exteragram/messenger/plugins/models/CustomSetting$Factory;Lcom/chaquo/python/PyObject;Lcom/chaquo/python/PyObject;Lcom/chaquo/python/PyObject;Ljava/lang/String;)V

    .line 48
    iput-object p2, v0, Lcom/exteragram/messenger/plugins/models/CustomSetting;->factoryArgs:Lcom/chaquo/python/PyObject;

    return-void
.end method

.method public constructor <init>(Lcom/exteragram/messenger/plugins/models/CustomSetting$Factory;Lcom/chaquo/python/PyObject;Lcom/chaquo/python/PyObject;Lcom/chaquo/python/PyObject;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/exteragram/messenger/plugins/models/CustomSetting$Factory<",
            "*>;",
            "Lcom/chaquo/python/PyObject;",
            "Lcom/chaquo/python/PyObject;",
            "Lcom/chaquo/python/PyObject;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 42
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/exteragram/messenger/plugins/models/CustomSetting;-><init>(Lcom/chaquo/python/PyObject;Lcom/chaquo/python/PyObject;Lcom/chaquo/python/PyObject;Ljava/lang/String;)V

    .line 43
    iput-object p1, p0, Lcom/exteragram/messenger/plugins/models/CustomSetting;->factory:Lcom/exteragram/messenger/plugins/models/CustomSetting$Factory;

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/UItem;Lcom/chaquo/python/PyObject;Lcom/chaquo/python/PyObject;Lcom/chaquo/python/PyObject;Ljava/lang/String;)V
    .locals 0

    .line 36
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/exteragram/messenger/plugins/models/CustomSetting;-><init>(Lcom/chaquo/python/PyObject;Lcom/chaquo/python/PyObject;Lcom/chaquo/python/PyObject;Ljava/lang/String;)V

    .line 37
    iput-object p1, p0, Lcom/exteragram/messenger/plugins/models/CustomSetting;->item:Lorg/telegram/ui/Components/UItem;

    .line 38
    iput-object p0, p1, Lorg/telegram/ui/Components/UItem;->settingItem:Lcom/exteragram/messenger/plugins/models/SettingItem;

    return-void
.end method
