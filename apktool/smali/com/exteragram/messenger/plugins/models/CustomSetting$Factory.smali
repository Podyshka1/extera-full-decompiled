.class public abstract Lcom/exteragram/messenger/plugins/models/CustomSetting$Factory;
.super Lorg/telegram/ui/Components/UItem$UItemFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/exteragram/messenger/plugins/models/CustomSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Lorg/telegram/ui/Components/UItem$UItemFactory;"
    }
.end annotation


# instance fields
.field public isClickableValue:Z

.field public isShadowValue:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Lorg/telegram/ui/Components/UItem$UItemFactory;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Lcom/exteragram/messenger/plugins/models/CustomSetting$Factory;->isShadowValue:Z

    const/4 v0, 0x1

    .line 57
    iput-boolean v0, p0, Lcom/exteragram/messenger/plugins/models/CustomSetting$Factory;->isClickableValue:Z

    return-void
.end method


# virtual methods
.method public create(Lcom/exteragram/messenger/plugins/Plugin;Lcom/exteragram/messenger/plugins/models/CustomSetting;Lcom/chaquo/python/PyObject;)Lorg/telegram/ui/Components/UItem;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public isClickable()Z
    .locals 1

    .line 72
    iget-boolean v0, p0, Lcom/exteragram/messenger/plugins/models/CustomSetting$Factory;->isClickableValue:Z

    return v0
.end method

.method public isShadow()Z
    .locals 1

    .line 67
    iget-boolean v0, p0, Lcom/exteragram/messenger/plugins/models/CustomSetting$Factory;->isShadowValue:Z

    return v0
.end method

.method public onClick(Lcom/exteragram/messenger/plugins/Plugin;Lorg/telegram/ui/Components/UItem;Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onLongClick(Lcom/exteragram/messenger/plugins/Plugin;Lorg/telegram/ui/Components/UItem;Landroid/view/View;)V
    .locals 0

    return-void
.end method
