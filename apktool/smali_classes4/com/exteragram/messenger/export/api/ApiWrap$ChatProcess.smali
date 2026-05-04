.class public Lcom/exteragram/messenger/export/api/ApiWrap$ChatProcess;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public context:Lcom/exteragram/messenger/export/api/ApiWrap$ParseMediaContext;

.field public done:Ljava/lang/Runnable;

.field public fileIndex:I

.field public fileProgress:Lorg/telegram/messenger/Utilities$CallbackReturn;

.field public handleSlice:Lorg/telegram/messenger/Utilities$CallbackReturn;

.field public info:Lcom/exteragram/messenger/export/api/ApiWrap$DialogInfo;

.field public largestIdPlusOne:I

.field public lastSlice:Z

.field public localSplitIndex:I

.field public requestDone:Lorg/telegram/messenger/Utilities$Callback;

.field public slice:Lcom/exteragram/messenger/export/api/ApiWrap$MessagesSlice;

.field public start:Lorg/telegram/messenger/Utilities$CallbackReturn;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lcom/exteragram/messenger/export/api/ApiWrap$ChatProcess;->localSplitIndex:I

    const/4 v1, 0x1

    .line 41
    iput v1, p0, Lcom/exteragram/messenger/export/api/ApiWrap$ChatProcess;->largestIdPlusOne:I

    .line 43
    new-instance v1, Lcom/exteragram/messenger/export/api/ApiWrap$ParseMediaContext;

    invoke-direct {v1}, Lcom/exteragram/messenger/export/api/ApiWrap$ParseMediaContext;-><init>()V

    iput-object v1, p0, Lcom/exteragram/messenger/export/api/ApiWrap$ChatProcess;->context:Lcom/exteragram/messenger/export/api/ApiWrap$ParseMediaContext;

    .line 45
    iput-boolean v0, p0, Lcom/exteragram/messenger/export/api/ApiWrap$ChatProcess;->lastSlice:Z

    .line 46
    iput v0, p0, Lcom/exteragram/messenger/export/api/ApiWrap$ChatProcess;->fileIndex:I

    return-void
.end method
