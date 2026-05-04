.class public Lorg/telegram/ui/Stories/StoriesController$StoryLimit;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stories/StoriesController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StoryLimit"
.end annotation


# instance fields
.field public remains_count:I

.field public type:I

.field public until:J


# direct methods
.method public constructor <init>(IIJ)V
    .locals 0

    .line 4566
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4567
    iput p1, p0, Lorg/telegram/ui/Stories/StoriesController$StoryLimit;->type:I

    .line 4568
    iput-wide p3, p0, Lorg/telegram/ui/Stories/StoriesController$StoryLimit;->until:J

    .line 4569
    iput p2, p0, Lorg/telegram/ui/Stories/StoriesController$StoryLimit;->remains_count:I

    return-void
.end method


# virtual methods
.method public active(I)Z
    .locals 1

    const/4 v0, 0x1

    .line 4585
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Stories/StoriesController$StoryLimit;->active(II)Z

    move-result p1

    return p1
.end method

.method public active(II)Z
    .locals 5

    .line 4589
    iget v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoryLimit;->type:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 p2, 0x2

    if-eq v0, p2, :cond_0

    const/4 p2, 0x3

    if-eq v0, p2, :cond_0

    return v2

    .line 4592
    :cond_0
    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result p1

    int-to-long p1, p1

    iget-wide v3, p0, Lorg/telegram/ui/Stories/StoriesController$StoryLimit;->until:J

    cmp-long p1, p1, v3

    if-gez p1, :cond_1

    return v2

    :cond_1
    return v1

    .line 4594
    :cond_2
    iget p1, p0, Lorg/telegram/ui/Stories/StoriesController$StoryLimit;->remains_count:I

    if-ge p1, p2, :cond_3

    return v2

    :cond_3
    return v1
.end method

.method public getLimitReachedType()I
    .locals 2

    .line 4573
    iget v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoryLimit;->type:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/16 v0, 0xe

    return v0

    :cond_0
    const/16 v0, 0x10

    return v0

    :cond_1
    const/16 v0, 0xf

    return v0
.end method
