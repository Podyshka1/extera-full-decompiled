.class public Lorg/telegram/messenger/NotificationsController$StoryNotification;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/NotificationsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StoryNotification"
.end annotation


# instance fields
.field public date:J

.field final dateByIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field final dialogId:J

.field hidden:Z

.field localName:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;IJ)V
    .locals 11

    const-wide/32 v0, 0x5265c00

    add-long v9, p5, v0

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move v6, p4

    move-wide/from16 v7, p5

    .line 6264
    invoke-direct/range {v2 .. v10}, Lorg/telegram/messenger/NotificationsController$StoryNotification;-><init>(JLjava/lang/String;IJJ)V

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;IJJ)V
    .locals 1

    .line 6267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6258
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/NotificationsController$StoryNotification;->dateByIds:Ljava/util/HashMap;

    .line 6268
    iput-wide p1, p0, Lorg/telegram/messenger/NotificationsController$StoryNotification;->dialogId:J

    .line 6269
    iput-object p3, p0, Lorg/telegram/messenger/NotificationsController$StoryNotification;->localName:Ljava/lang/String;

    .line 6270
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance p2, Landroid/util/Pair;

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-direct {p2, p3, p4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6271
    iput-wide p5, p0, Lorg/telegram/messenger/NotificationsController$StoryNotification;->date:J

    return-void
.end method


# virtual methods
.method public getLeastDate()J
    .locals 8

    .line 6276
    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController$StoryNotification;->dateByIds:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, -0x1

    move-wide v3, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    cmp-long v6, v3, v1

    if-eqz v6, :cond_1

    .line 6277
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v6, v3, v6

    if-lez v6, :cond_0

    .line 6278
    :cond_1
    iget-object v3, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto :goto_0

    :cond_2
    return-wide v3
.end method
