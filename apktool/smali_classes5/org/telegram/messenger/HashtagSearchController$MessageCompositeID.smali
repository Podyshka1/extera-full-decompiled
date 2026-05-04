.class final Lorg/telegram/messenger/HashtagSearchController$MessageCompositeID;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/HashtagSearchController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MessageCompositeID"
.end annotation


# instance fields
.field final dialog_id:J

.field final id:I


# direct methods
.method constructor <init>(JI)V
    .locals 0

    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 333
    iput-wide p1, p0, Lorg/telegram/messenger/HashtagSearchController$MessageCompositeID;->dialog_id:J

    .line 334
    iput p3, p0, Lorg/telegram/messenger/HashtagSearchController$MessageCompositeID;->id:I

    return-void
.end method

.method constructor <init>(Lorg/telegram/tgnet/TLRPC$Message;)V
    .locals 2

    .line 329
    invoke-static {p1}, Lorg/telegram/messenger/MessageObject;->getDialogId(Lorg/telegram/tgnet/TLRPC$Message;)J

    move-result-wide v0

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    invoke-direct {p0, v0, v1, p1}, Lorg/telegram/messenger/HashtagSearchController$MessageCompositeID;-><init>(JI)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 340
    const-class v2, Lorg/telegram/messenger/HashtagSearchController$MessageCompositeID;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 341
    :cond_1
    check-cast p1, Lorg/telegram/messenger/HashtagSearchController$MessageCompositeID;

    .line 342
    iget-wide v2, p0, Lorg/telegram/messenger/HashtagSearchController$MessageCompositeID;->dialog_id:J

    iget-wide v4, p1, Lorg/telegram/messenger/HashtagSearchController$MessageCompositeID;->dialog_id:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget v2, p0, Lorg/telegram/messenger/HashtagSearchController$MessageCompositeID;->id:I

    iget p1, p1, Lorg/telegram/messenger/HashtagSearchController$MessageCompositeID;->id:I

    if-ne v2, p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 4

    .line 347
    iget-wide v0, p0, Lorg/telegram/messenger/HashtagSearchController$MessageCompositeID;->dialog_id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget v1, p0, Lorg/telegram/messenger/HashtagSearchController$MessageCompositeID;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {v2}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
