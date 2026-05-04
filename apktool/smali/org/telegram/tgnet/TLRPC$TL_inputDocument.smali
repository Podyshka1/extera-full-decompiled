.class public Lorg/telegram/tgnet/TLRPC$TL_inputDocument;
.super Lorg/telegram/tgnet/TLRPC$InputDocument;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_inputDocument"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28968
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$InputDocument;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 2

    .line 28972
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$InputDocument;->id:J

    .line 28973
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$InputDocument;->access_hash:J

    .line 28974
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readByteArray(Z)[B

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$InputDocument;->file_reference:[B

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, 0x1abfb575

    .line 28978
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 28979
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$InputDocument;->id:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 28980
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$InputDocument;->access_hash:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 28981
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$InputDocument;->file_reference:[B

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeByteArray([B)V

    return-void
.end method
