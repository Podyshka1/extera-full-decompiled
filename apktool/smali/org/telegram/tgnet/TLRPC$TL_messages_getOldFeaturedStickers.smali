.class public Lorg/telegram/tgnet/TLRPC$TL_messages_getOldFeaturedStickers;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messages_getOldFeaturedStickers"
.end annotation


# instance fields
.field public hash:J

.field public limit:I

.field public offset:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 59503
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 59511
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$messages_FeaturedStickers;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$messages_FeaturedStickers;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, 0x7ed094a1

    .line 59515
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 59516
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getOldFeaturedStickers;->offset:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 59517
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getOldFeaturedStickers;->limit:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 59518
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getOldFeaturedStickers;->hash:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    return-void
.end method
