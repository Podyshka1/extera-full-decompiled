.class public Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetDice_layer111;
.super Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetDice;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_inputStickerSetDice_layer111"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31615
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetDice;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 0

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, 0x79e21a53

    .line 31622
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    return-void
.end method
