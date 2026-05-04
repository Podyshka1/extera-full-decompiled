.class public Lorg/telegram/tgnet/TLRPC$TL_messages_getMyStickers;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messages_getMyStickers"
.end annotation


# instance fields
.field public limit:I

.field public offset_id:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 61149
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 61156
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$TL_messages_myStickers;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_messages_myStickers;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, -0x2f4a1e04

    .line 61160
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 61161
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getMyStickers;->offset_id:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 61162
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getMyStickers;->limit:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    return-void
.end method
