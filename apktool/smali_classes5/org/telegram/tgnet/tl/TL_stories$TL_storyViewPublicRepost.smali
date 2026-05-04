.class public Lorg/telegram/tgnet/tl/TL_stories$TL_storyViewPublicRepost;
.super Lorg/telegram/tgnet/tl/TL_stories$StoryView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/tl/TL_stories;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_storyViewPublicRepost"
.end annotation


# static fields
.field public static final constructor:I = -0x428b30b7


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 118
    invoke-direct {p0}, Lorg/telegram/tgnet/tl/TL_stories$StoryView;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 4

    .line 122
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryView;->flags:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 123
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryView;->blocked:Z

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    move v2, v3

    .line 124
    :cond_1
    iput-boolean v2, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryView;->blocked_my_stories_from:Z

    .line 125
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Peer;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryView;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 126
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryView;->story:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, -0x428b30b7

    .line 130
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 131
    iget-boolean v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryView;->blocked:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryView;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryView;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryView;->flags:I

    .line 132
    iget-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryView;->blocked_my_stories_from:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x3

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryView;->flags:I

    .line 133
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 134
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryView;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 135
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryView;->story:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    return-void
.end method
