.class public Lorg/telegram/tgnet/TLRPC$TL_messages_reorderStickerSets;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messages_reorderStickerSets"
.end annotation


# instance fields
.field public emojis:Z

.field public flags:I

.field public masks:Z

.field public order:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 60172
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 60178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_reorderStickerSets;->order:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 60181
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$Bool;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Bool;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, 0x78337739

    .line 60185
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 60186
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_reorderStickerSets;->masks:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_reorderStickerSets;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_reorderStickerSets;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_reorderStickerSets;->flags:I

    .line 60187
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_reorderStickerSets;->emojis:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x3

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_reorderStickerSets;->flags:I

    .line 60188
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 60189
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_reorderStickerSets;->order:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serializeLong(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    return-void
.end method
