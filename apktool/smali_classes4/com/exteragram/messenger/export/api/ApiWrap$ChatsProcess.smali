.class public abstract Lcom/exteragram/messenger/export/api/ApiWrap$ChatsProcess;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public done:Lorg/telegram/messenger/Utilities$Callback;

.field public indexByPeer:Ljava/util/Map;

.field public info:Lcom/exteragram/messenger/export/api/ApiWrap$DialogsInfo;

.field public processedCount:I

.field public progress:Lorg/telegram/messenger/Utilities$CallbackReturn;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/exteragram/messenger/export/api/ApiWrap$DialogsInfo;

    invoke-direct {v0}, Lcom/exteragram/messenger/export/api/ApiWrap$DialogsInfo;-><init>()V

    iput-object v0, p0, Lcom/exteragram/messenger/export/api/ApiWrap$ChatsProcess;->info:Lcom/exteragram/messenger/export/api/ApiWrap$DialogsInfo;

    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lcom/exteragram/messenger/export/api/ApiWrap$ChatsProcess;->processedCount:I

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/exteragram/messenger/export/api/ApiWrap$ChatsProcess;->indexByPeer:Ljava/util/Map;

    return-void
.end method
