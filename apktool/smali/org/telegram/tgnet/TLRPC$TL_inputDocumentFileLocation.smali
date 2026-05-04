.class public Lorg/telegram/tgnet/TLRPC$TL_inputDocumentFileLocation;
.super Lorg/telegram/tgnet/TLRPC$InputFileLocation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_inputDocumentFileLocation"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21792
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$InputFileLocation;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 2

    .line 21796
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    .line 21797
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->access_hash:J

    .line 21798
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readByteArray(Z)[B

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->file_reference:[B

    .line 21799
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->thumb_size:Ljava/lang/String;

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, -0x452f8a7c

    .line 21803
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 21804
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 21805
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->access_hash:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 21806
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->file_reference:[B

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeByteArray([B)V

    .line 21807
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->thumb_size:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    return-void
.end method
