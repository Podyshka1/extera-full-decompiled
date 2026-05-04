.class public Lorg/telegram/tgnet/TLRPC$TL_webPageAttributeStory_layer162;
.super Lorg/telegram/tgnet/TLRPC$TL_webPageAttributeStory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_webPageAttributeStory_layer162"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10567
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_webPageAttributeStory;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 3

    .line 10571
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$WebPageAttribute;->flags:I

    .line 10572
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    .line 10573
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_webPageAttributeStory;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 10574
    iput-wide v0, v2, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 10575
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPageAttributeStory;->id:I

    .line 10576
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$WebPageAttribute;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 10577
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_webPageAttributeStory;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    :cond_0
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    .line 10582
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPageAttributeStory;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-eqz v0, :cond_0

    .line 10583
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$WebPageAttribute;->flags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$WebPageAttribute;->flags:I

    goto :goto_0

    .line 10585
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$WebPageAttribute;->flags:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$WebPageAttribute;->flags:I

    :goto_0
    const v0, -0x6c65b98f

    .line 10587
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 10588
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$WebPageAttribute;->flags:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 10589
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPageAttributeStory;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 10590
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPageAttributeStory;->id:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 10591
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$WebPageAttribute;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 10592
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPageAttributeStory;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    :cond_1
    return-void
.end method
