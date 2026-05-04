.class public Lorg/telegram/tgnet/TLRPC$TL_messages_getDhConfig;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messages_getDhConfig"
.end annotation


# instance fields
.field public random_length:I

.field public version:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 57194
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 57201
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$messages_DhConfig;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$messages_DhConfig;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, 0x26cf8950

    .line 57205
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 57206
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getDhConfig;->version:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 57207
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getDhConfig;->random_length:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    return-void
.end method
