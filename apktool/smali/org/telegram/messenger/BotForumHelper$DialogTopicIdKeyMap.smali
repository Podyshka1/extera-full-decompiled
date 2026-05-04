.class public Lorg/telegram/messenger/BotForumHelper$DialogTopicIdKeyMap;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/BotForumHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DialogTopicIdKeyMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final map:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Landroid/util/LongSparseArray<",
            "Landroid/util/LongSparseArray<",
            "TT;>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 444
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 445
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/BotForumHelper$DialogTopicIdKeyMap;->map:Landroid/util/LongSparseArray;

    return-void
.end method


# virtual methods
.method public get(JJ)Landroid/util/LongSparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Landroid/util/LongSparseArray<",
            "TT;>;"
        }
    .end annotation

    .line 448
    iget-object v0, p0, Lorg/telegram/messenger/BotForumHelper$DialogTopicIdKeyMap;->map:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/LongSparseArray;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 453
    :cond_0
    invoke-virtual {p1, p3, p4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/LongSparseArray;

    return-object p1
.end method

.method public get(JJJ)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJ)TT;"
        }
    .end annotation

    .line 457
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/BotForumHelper$DialogTopicIdKeyMap;->get(JJ)Landroid/util/LongSparseArray;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 461
    :cond_0
    invoke-virtual {p1, p5, p6}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public put(JJJLjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJTT;)TT;"
        }
    .end annotation

    .line 465
    iget-object v0, p0, Lorg/telegram/messenger/BotForumHelper$DialogTopicIdKeyMap;->map:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/LongSparseArray;

    if-nez v0, :cond_0

    .line 467
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    .line 468
    iget-object v1, p0, Lorg/telegram/messenger/BotForumHelper$DialogTopicIdKeyMap;->map:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1, p2, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 471
    :cond_0
    invoke-virtual {v0, p3, p4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/LongSparseArray;

    if-nez p1, :cond_1

    .line 473
    new-instance p1, Landroid/util/LongSparseArray;

    invoke-direct {p1}, Landroid/util/LongSparseArray;-><init>()V

    .line 474
    invoke-virtual {v0, p3, p4, p1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 477
    :cond_1
    invoke-virtual {p1, p5, p6}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p2

    .line 478
    invoke-virtual {p1, p5, p6, p7}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    return-object p2
.end method

.method public remove(JJJ)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJ)TT;"
        }
    .end annotation

    .line 484
    iget-object v0, p0, Lorg/telegram/messenger/BotForumHelper$DialogTopicIdKeyMap;->map:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/LongSparseArray;

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return-object p2

    .line 489
    :cond_0
    invoke-virtual {p1, p3, p4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/LongSparseArray;

    if-nez p1, :cond_1

    return-object p2

    .line 494
    :cond_1
    invoke-virtual {p1, p5, p6}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p2

    .line 495
    invoke-virtual {p1, p5, p6}, Landroid/util/LongSparseArray;->remove(J)V

    return-object p2
.end method
