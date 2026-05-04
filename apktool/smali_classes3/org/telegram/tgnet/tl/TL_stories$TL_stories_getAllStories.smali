.class public Lorg/telegram/tgnet/tl/TL_stories$TL_stories_getAllStories;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/tl/TL_stories;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_stories_getAllStories"
.end annotation


# static fields
.field public static final constructor:I = -0x114f29db


# instance fields
.field public flags:I

.field public include_hidden:Z

.field public next:Z

.field public state:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 478
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 487
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/tl/TL_stories$stories_AllStories;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_stories$stories_AllStories;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, -0x114f29db

    .line 491
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 492
    iget-boolean v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_getAllStories;->next:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_getAllStories;->flags:I

    or-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_getAllStories;->flags:I

    and-int/lit8 v0, v0, -0x3

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_getAllStories;->flags:I

    .line 493
    iget-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_getAllStories;->include_hidden:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x4

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x5

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_getAllStories;->flags:I

    .line 494
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 495
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_getAllStories;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 496
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_getAllStories;->state:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    :cond_2
    return-void
.end method
