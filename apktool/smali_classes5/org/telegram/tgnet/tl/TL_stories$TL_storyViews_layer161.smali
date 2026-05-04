.class public Lorg/telegram/tgnet/tl/TL_stories$TL_storyViews_layer161;
.super Lorg/telegram/tgnet/tl/TL_stories$StoryViews;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/tl/TL_stories;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_storyViews_layer161"
.end annotation


# static fields
.field public static final constructor:I = -0x39b3f469


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1619
    invoke-direct {p0}, Lorg/telegram/tgnet/tl/TL_stories$StoryViews;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 1

    .line 1623
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryViews;->flags:I

    .line 1624
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryViews;->views_count:I

    .line 1625
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryViews;->reactions_count:I

    .line 1626
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryViews;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1627
    invoke-static {p1, p2}, Lorg/telegram/tgnet/Vector;->deserializeLong(Lorg/telegram/tgnet/InputSerializedData;Z)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryViews;->recent_viewers:Ljava/util/ArrayList;

    :cond_0
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, -0x39b3f469

    .line 1632
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 1633
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryViews;->flags:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 1634
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryViews;->views_count:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 1635
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryViews;->reactions_count:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 1636
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryViews;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1637
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryViews;->recent_viewers:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serializeLong(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method
