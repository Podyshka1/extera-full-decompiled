.class public Lorg/telegram/tgnet/tl/TL_stories$TL_storyViews;
.super Lorg/telegram/tgnet/tl/TL_stories$StoryViews;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/tl/TL_stories;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_storyViews"
.end annotation


# static fields
.field public static final constructor:I = -0x72a6a32a


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1642
    invoke-direct {p0}, Lorg/telegram/tgnet/tl/TL_stories$StoryViews;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 2

    .line 1646
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryViews;->flags:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1647
    :goto_0
    iput-boolean v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryViews;->has_viewers:Z

    .line 1648
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryViews;->views_count:I

    .line 1649
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryViews;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 1650
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryViews;->forwards_count:I

    .line 1652
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryViews;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_2

    .line 1653
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageReactions$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageReactions$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryViews;->reactions:Ljava/util/ArrayList;

    .line 1655
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryViews;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_3

    .line 1656
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryViews;->reactions_count:I

    .line 1658
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryViews;->flags:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_4

    .line 1659
    invoke-static {p1, p2}, Lorg/telegram/tgnet/Vector;->deserializeLong(Lorg/telegram/tgnet/InputSerializedData;Z)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryViews;->recent_viewers:Ljava/util/ArrayList;

    :cond_4
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, -0x72a6a32a

    .line 1664
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 1665
    iget-boolean v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryViews;->has_viewers:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryViews;->flags:I

    or-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryViews;->flags:I

    and-int/lit8 v0, v0, -0x3

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryViews;->flags:I

    .line 1666
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 1667
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryViews;->views_count:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 1668
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryViews;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 1669
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryViews;->forwards_count:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 1671
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryViews;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_2

    .line 1672
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryViews;->reactions:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    .line 1674
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryViews;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_3

    .line 1675
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryViews;->reactions_count:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 1677
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryViews;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    .line 1678
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryViews;->recent_viewers:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serializeLong(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    :cond_4
    return-void
.end method
