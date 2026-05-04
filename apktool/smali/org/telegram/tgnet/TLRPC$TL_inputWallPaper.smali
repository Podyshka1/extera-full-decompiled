.class public Lorg/telegram/tgnet/TLRPC$TL_inputWallPaper;
.super Lorg/telegram/tgnet/TLRPC$InputWallPaper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_inputWallPaper"
.end annotation


# instance fields
.field public access_hash:J

.field public id:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3157
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$InputWallPaper;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 2

    .line 3164
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputWallPaper;->id:J

    .line 3165
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/telegram/tgnet/TLRPC$TL_inputWallPaper;->access_hash:J

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, -0x19cf4687

    .line 3169
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 3170
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputWallPaper;->id:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 3171
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputWallPaper;->access_hash:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    return-void
.end method
