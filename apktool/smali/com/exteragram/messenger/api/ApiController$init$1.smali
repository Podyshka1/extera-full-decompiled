.class public final Lcom/exteragram/messenger/api/ApiController$init$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/ForegroundDetector$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/exteragram/messenger/api/ApiController;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBecameBackground()V
    .locals 0

    return-void
.end method

.method public onBecameForeground()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 44
    invoke-static {v2, v0, v1, v2}, Lcom/exteragram/messenger/api/ApiController;->sync$default(Landroid/content/SharedPreferences;ZILjava/lang/Object;)V

    return-void
.end method
