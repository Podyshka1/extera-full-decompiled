.class public Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Business/QuickRepliesController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "QuickReply"
.end annotation


# instance fields
.field public id:I

.field public local:Z

.field public localIds:Ljava/util/HashSet;

.field public messagesCount:I

.field public name:Ljava/lang/String;

.field public order:I

.field final synthetic this$0:Lorg/telegram/ui/Business/QuickRepliesController;

.field public topMessage:Lorg/telegram/messenger/MessageObject;

.field public topMessageId:I


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Business/QuickRepliesController;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->this$0:Lorg/telegram/ui/Business/QuickRepliesController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->localIds:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public getMessagesCount()I
    .locals 1

    .line 75
    iget-boolean v0, p0, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->local:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->localIds:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    return v0

    .line 76
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->messagesCount:I

    return v0
.end method

.method public getTopMessageId()I
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->topMessage:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v0

    return v0

    .line 72
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->topMessageId:I

    return v0
.end method

.method public isSpecial()Z
    .locals 1

    .line 79
    iget-object v0, p0, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->name:Ljava/lang/String;

    invoke-static {v0}, Lorg/telegram/ui/Business/QuickRepliesController;->isSpecial(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
