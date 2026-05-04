.class public abstract Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/EmojiView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ChooseStickerActionTracker"
.end annotation


# instance fields
.field private final currentAccount:I

.field private final dialogId:J

.field lastActionTime:J

.field private final threadId:J

.field typingWasSent:Z

.field visible:Z


# direct methods
.method static bridge synthetic -$$Nest$mreset(Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;->reset()V

    return-void
.end method

.method public constructor <init>(IJJ)V
    .locals 2

    .line 9493
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9499
    iput-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;->visible:Z

    const-wide/16 v0, -0x1

    .line 9501
    iput-wide v0, p0, Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;->lastActionTime:J

    .line 9494
    iput p1, p0, Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;->currentAccount:I

    .line 9495
    iput-wide p2, p0, Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;->dialogId:J

    .line 9496
    iput-wide p4, p0, Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;->threadId:J

    return-void
.end method

.method private reset()V
    .locals 8

    .line 9518
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;->typingWasSent:Z

    if-eqz v0, :cond_0

    .line 9519
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;->dialogId:J

    iget-wide v4, p0, Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;->threadId:J

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lorg/telegram/messenger/MessagesController;->sendTyping(JJII)Z

    :cond_0
    const-wide/16 v0, -0x1

    .line 9521
    iput-wide v0, p0, Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;->lastActionTime:J

    return-void
.end method


# virtual methods
.method public checkVisibility()V
    .locals 1

    .line 9525
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;->isShown()Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;->visible:Z

    if-nez v0, :cond_0

    .line 9527
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;->reset()V

    :cond_0
    return-void
.end method

.method public doSomeAction()V
    .locals 8

    .line 9504
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;->visible:Z

    if-eqz v0, :cond_1

    .line 9505
    iget-wide v0, p0, Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;->lastActionTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 9506
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;->lastActionTime:J

    return-void

    .line 9509
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;->lastActionTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, 0x1

    .line 9510
    iput-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;->typingWasSent:Z

    .line 9511
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;->lastActionTime:J

    .line 9512
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;->dialogId:J

    iget-wide v4, p0, Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;->threadId:J

    const/16 v6, 0xa

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lorg/telegram/messenger/MessagesController;->sendTyping(JJII)Z

    :cond_1
    return-void
.end method

.method public abstract isShown()Z
.end method
