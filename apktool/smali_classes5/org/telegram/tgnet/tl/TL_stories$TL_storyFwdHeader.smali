.class public Lorg/telegram/tgnet/tl/TL_stories$TL_storyFwdHeader;
.super Lorg/telegram/tgnet/tl/TL_stories$StoryFwdHeader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/tl/TL_stories;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_storyFwdHeader"
.end annotation


# static fields
.field public static final constructor:I = -0x47d91eb0


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1720
    invoke-direct {p0}, Lorg/telegram/tgnet/tl/TL_stories$StoryFwdHeader;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 3

    .line 1725
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryFwdHeader;->flags:I

    and-int/lit8 v1, v0, 0x8

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1726
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryFwdHeader;->modified:Z

    and-int/2addr v0, v2

    if-eqz v0, :cond_1

    .line 1728
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Peer;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryFwdHeader;->from:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 1730
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryFwdHeader;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 1731
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryFwdHeader;->from_name:Ljava/lang/String;

    .line 1733
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryFwdHeader;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 1734
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryFwdHeader;->story_id:I

    :cond_3
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, -0x47d91eb0

    .line 1740
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 1741
    iget-boolean v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryFwdHeader;->modified:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryFwdHeader;->flags:I

    or-int/lit8 v0, v0, 0x8

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryFwdHeader;->flags:I

    and-int/lit8 v0, v0, -0x9

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryFwdHeader;->flags:I

    .line 1742
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 1743
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryFwdHeader;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 1744
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryFwdHeader;->from:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 1746
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryFwdHeader;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 1747
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryFwdHeader;->from_name:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 1749
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryFwdHeader;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 1750
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryFwdHeader;->story_id:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    :cond_3
    return-void
.end method
