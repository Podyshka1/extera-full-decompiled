.class public Lcom/exteragram/messenger/plugins/models/HeaderSetting;
.super Lcom/exteragram/messenger/plugins/models/SettingItem;
.source "SourceFile"


# instance fields
.field public text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 20
    const-string v0, "header"

    invoke-direct {p0, v0}, Lcom/exteragram/messenger/plugins/models/SettingItem;-><init>(Ljava/lang/String;)V

    .line 21
    iput-object p1, p0, Lcom/exteragram/messenger/plugins/models/HeaderSetting;->text:Ljava/lang/String;

    return-void
.end method
