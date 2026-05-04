.class public Lorg/telegram/messenger/BotForumHelper$BotDraftAnimationsPool;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/BotForumHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BotDraftAnimationsPool"
.end annotation


# instance fields
.field private final animators:Lorg/telegram/messenger/BotForumHelper$DialogTopicIdKeyMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/telegram/messenger/BotForumHelper$DialogTopicIdKeyMap<",
            "Lorg/telegram/ui/MultiLayoutTypingAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private final ids:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 410
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 411
    new-instance v0, Lorg/telegram/messenger/BotForumHelper$DialogTopicIdKeyMap;

    invoke-direct {v0}, Lorg/telegram/messenger/BotForumHelper$DialogTopicIdKeyMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/BotForumHelper$BotDraftAnimationsPool;->animators:Lorg/telegram/messenger/BotForumHelper$DialogTopicIdKeyMap;

    .line 412
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/BotForumHelper$BotDraftAnimationsPool;->ids:Landroid/util/SparseIntArray;

    return-void
.end method


# virtual methods
.method public bind(II)V
    .locals 1

    .line 431
    iget-object v0, p0, Lorg/telegram/messenger/BotForumHelper$BotDraftAnimationsPool;->ids:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public getAnimator(JIZ)Lorg/telegram/ui/MultiLayoutTypingAnimator;
    .locals 9

    if-lez p3, :cond_0

    .line 416
    iget-object v0, p0, Lorg/telegram/messenger/BotForumHelper$BotDraftAnimationsPool;->ids:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p3

    :cond_0
    if-nez p3, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 421
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/BotForumHelper$BotDraftAnimationsPool;->animators:Lorg/telegram/messenger/BotForumHelper$DialogTopicIdKeyMap;

    int-to-long v5, p3

    const-wide/16 v3, 0x0

    move-wide v1, p1

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/BotForumHelper$DialogTopicIdKeyMap;->get(JJJ)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/MultiLayoutTypingAnimator;

    if-nez p1, :cond_2

    if-eqz p4, :cond_2

    .line 423
    new-instance v8, Lorg/telegram/ui/MultiLayoutTypingAnimator;

    invoke-direct {v8}, Lorg/telegram/ui/MultiLayoutTypingAnimator;-><init>()V

    move-wide v2, v1

    .line 424
    iget-object v1, p0, Lorg/telegram/messenger/BotForumHelper$BotDraftAnimationsPool;->animators:Lorg/telegram/messenger/BotForumHelper$DialogTopicIdKeyMap;

    move-wide v6, v5

    const-wide/16 v4, 0x0

    invoke-virtual/range {v1 .. v8}, Lorg/telegram/messenger/BotForumHelper$DialogTopicIdKeyMap;->put(JJJLjava/lang/Object;)Ljava/lang/Object;

    return-object v8

    :cond_2
    return-object p1
.end method

.method public removeAnimator(JI)V
    .locals 7

    if-lez p3, :cond_0

    .line 435
    iget-object v0, p0, Lorg/telegram/messenger/BotForumHelper$BotDraftAnimationsPool;->ids:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p3

    :cond_0
    if-nez p3, :cond_1

    return-void

    .line 440
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/BotForumHelper$BotDraftAnimationsPool;->animators:Lorg/telegram/messenger/BotForumHelper$DialogTopicIdKeyMap;

    const-wide/16 v3, 0x0

    int-to-long v5, p3

    move-wide v1, p1

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/BotForumHelper$DialogTopicIdKeyMap;->remove(JJJ)Ljava/lang/Object;

    return-void
.end method
