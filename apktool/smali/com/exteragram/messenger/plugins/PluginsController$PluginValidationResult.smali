.class public Lcom/exteragram/messenger/plugins/PluginsController$PluginValidationResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/exteragram/messenger/plugins/PluginsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PluginValidationResult"
.end annotation


# instance fields
.field public error:Ljava/lang/String;

.field public plugin:Lcom/exteragram/messenger/plugins/Plugin;


# direct methods
.method public constructor <init>(Lcom/exteragram/messenger/plugins/Plugin;Ljava/lang/String;)V
    .locals 0

    .line 958
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 959
    iput-object p1, p0, Lcom/exteragram/messenger/plugins/PluginsController$PluginValidationResult;->plugin:Lcom/exteragram/messenger/plugins/Plugin;

    .line 960
    iput-object p2, p0, Lcom/exteragram/messenger/plugins/PluginsController$PluginValidationResult;->error:Ljava/lang/String;

    return-void
.end method
