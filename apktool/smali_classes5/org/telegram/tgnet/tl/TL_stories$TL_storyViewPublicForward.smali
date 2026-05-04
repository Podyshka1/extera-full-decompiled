.class public Lorg/telegram/tgnet/tl/TL_stories$TL_storyViewPublicForward;
.super Lorg/telegram/tgnet/tl/TL_stories$StoryView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/tl/TL_stories;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_storyViewPublicForward"
.end annotation


# static fields
.field public static final constructor:I = -0x6f7c98f5


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 99
    invoke-direct {p0}, Lorg/telegram/tgnet/tl/TL_stories$StoryView;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 4

    .line 103
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

    .line 104
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryView;->blocked:Z

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    move v2, v3

    .line 105
    :cond_1
    iput-boolean v2, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryView;->blocked_my_stories_from:Z

    .line 106
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Message;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Message;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryView;->message:Lorg/telegram/tgnet/TLRPC$Message;

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, -0x6f7c98f5

    .line 110
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 111
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

    .line 112
    iget-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryView;->blocked_my_stories_from:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x3

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryView;->flags:I

    .line 113
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 114
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryView;->message:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    return-void
.end method
