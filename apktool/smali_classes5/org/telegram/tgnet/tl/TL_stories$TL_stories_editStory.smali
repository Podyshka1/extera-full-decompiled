.class public Lorg/telegram/tgnet/tl/TL_stories$TL_stories_editStory;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/tl/TL_stories;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_stories_editStory"
.end annotation


# static fields
.field public static final constructor:I = -0x4a7c45ba


# instance fields
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

.field public id:I

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

.field public peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

.field public privacy_rules:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$InputPrivacyRule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 439
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 446
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_editStory;->media_areas:Ljava/util/ArrayList;

    .line 448
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_editStory;->entities:Ljava/util/ArrayList;

    .line 449
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_editStory;->privacy_rules:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 452
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$Updates;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Updates;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, -0x4a7c45ba

    .line 456
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 457
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_editStory;->flags:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 458
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_editStory;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 459
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_editStory;->id:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 460
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_editStory;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 461
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_editStory;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 463
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_editStory;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1

    .line 464
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_editStory;->media_areas:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    .line 466
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_editStory;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 467
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_editStory;->caption:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 469
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_editStory;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    .line 470
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_editStory;->entities:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    .line 472
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_editStory;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_4

    .line 473
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_editStory;->privacy_rules:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    :cond_4
    return-void
.end method
