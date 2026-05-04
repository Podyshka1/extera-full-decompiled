.class public Lorg/telegram/tgnet/TLRPC$TL_messages_toggleStickerSets;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messages_toggleStickerSets"
.end annotation


# instance fields
.field public archive:Z

.field public flags:I

.field public stickersets:Ljava/util/ArrayList;

.field public unarchive:Z

.field public uninstall:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 60028
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 60035
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_toggleStickerSets;->stickersets:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 60038
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$Bool;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Bool;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, -0x4afad016

    .line 60042
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 60043
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_toggleStickerSets;->uninstall:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_toggleStickerSets;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_toggleStickerSets;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_toggleStickerSets;->flags:I

    .line 60044
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_toggleStickerSets;->archive:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x3

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_toggleStickerSets;->flags:I

    .line 60045
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_toggleStickerSets;->unarchive:Z

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x4

    goto :goto_2

    :cond_2
    and-int/lit8 v0, v0, -0x5

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_toggleStickerSets;->flags:I

    .line 60046
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 60047
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_toggleStickerSets;->stickersets:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    return-void
.end method
