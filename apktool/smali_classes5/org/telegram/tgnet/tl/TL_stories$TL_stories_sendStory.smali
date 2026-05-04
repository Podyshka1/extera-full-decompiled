.class public Lorg/telegram/tgnet/tl/TL_stories$TL_stories_sendStory;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/tl/TL_stories;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_stories_sendStory"
.end annotation


# static fields
.field public static final constructor:I = 0x737fc2ec


# instance fields
.field public albums:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public caption:Ljava/lang/String;

.field public entities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$MessageEntity;",
            ">;"
        }
    .end annotation
.end field

.field public flags:I

.field public fwd_from_id:Lorg/telegram/tgnet/TLRPC$InputPeer;

.field public fwd_from_story:I

.field public fwd_modified:Z

.field public media:Lorg/telegram/tgnet/TLRPC$InputMedia;

.field public media_areas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/tl/TL_stories$MediaArea;",
            ">;"
        }
    .end annotation
.end field

.field public noforwards:Z

.field public peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

.field public period:I

.field public pinned:Z

.field public privacy_rules:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$InputPrivacyRule;",
            ">;"
        }
    .end annotation
.end field

.field public random_id:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 345
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 354
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_sendStory;->media_areas:Ljava/util/ArrayList;

    .line 356
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_sendStory;->entities:Ljava/util/ArrayList;

    .line 357
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_sendStory;->privacy_rules:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 365
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$Updates;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Updates;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 4

    const v0, 0x737fc2ec

    .line 369
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 370
    iget-boolean v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_sendStory;->pinned:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_sendStory;->flags:I

    or-int/lit8 v0, v0, 0x4

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_sendStory;->flags:I

    and-int/lit8 v0, v0, -0x5

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_sendStory;->flags:I

    .line 371
    iget-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_sendStory;->noforwards:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x10

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x11

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_sendStory;->flags:I

    .line 372
    iget-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_sendStory;->fwd_modified:Z

    if-eqz v1, :cond_2

    or-int/lit16 v0, v0, 0x80

    goto :goto_2

    :cond_2
    and-int/lit16 v0, v0, -0x81

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_sendStory;->flags:I

    .line 373
    iget-object v1, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_sendStory;->albums:Ljava/util/ArrayList;

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    move v1, v2

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    const/16 v3, 0x100

    invoke-static {v0, v3, v1}, Lorg/telegram/tgnet/TLObject;->setFlag(IIZ)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_sendStory;->flags:I

    .line 374
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 375
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_sendStory;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 376
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_sendStory;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 377
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_sendStory;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_4

    .line 378
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_sendStory;->media_areas:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    .line 380
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_sendStory;->flags:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_5

    .line 381
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_sendStory;->caption:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 383
    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_sendStory;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_6

    .line 384
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_sendStory;->entities:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    .line 386
    :cond_6
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_sendStory;->privacy_rules:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    .line 387
    iget-wide v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_sendStory;->random_id:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 388
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_sendStory;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_7

    .line 389
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_sendStory;->period:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 391
    :cond_7
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_sendStory;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_8

    .line 392
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_sendStory;->fwd_from_id:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 394
    :cond_8
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_sendStory;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_9

    .line 395
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_sendStory;->fwd_from_story:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 397
    :cond_9
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_sendStory;->flags:I

    invoke-static {v0, v3}, Lorg/telegram/tgnet/TLObject;->hasFlag(II)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 398
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_sendStory;->albums:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serializeInt(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    :cond_a
    return-void
.end method
