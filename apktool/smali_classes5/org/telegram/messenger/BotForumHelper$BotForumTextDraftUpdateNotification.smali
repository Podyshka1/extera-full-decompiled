.class public Lorg/telegram/messenger/BotForumHelper$BotForumTextDraftUpdateNotification;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/BotForumHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BotForumTextDraftUpdateNotification"
.end annotation


# instance fields
.field public final botTopicId:J

.field public final botUserId:J

.field public final isNew:Z

.field public final messageObject:Lorg/telegram/messenger/MessageObject;


# direct methods
.method public constructor <init>(JJLorg/telegram/messenger/MessageObject;Z)V
    .locals 0

    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 355
    iput-wide p1, p0, Lorg/telegram/messenger/BotForumHelper$BotForumTextDraftUpdateNotification;->botUserId:J

    .line 356
    iput-wide p3, p0, Lorg/telegram/messenger/BotForumHelper$BotForumTextDraftUpdateNotification;->botTopicId:J

    .line 357
    iput-object p5, p0, Lorg/telegram/messenger/BotForumHelper$BotForumTextDraftUpdateNotification;->messageObject:Lorg/telegram/messenger/MessageObject;

    .line 358
    iput-boolean p6, p0, Lorg/telegram/messenger/BotForumHelper$BotForumTextDraftUpdateNotification;->isNew:Z

    return-void
.end method
