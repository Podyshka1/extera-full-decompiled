.class public Lorg/telegram/tgnet/TLRPC$TL_fileHash;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_fileHash"
.end annotation


# instance fields
.field public hash:[B

.field public limit:I

.field public offset:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 54754
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_fileHash;
    .locals 2

    const v0, -0xc64fca4

    if-eq v0, p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 54762
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_fileHash;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_fileHash;-><init>()V

    .line 54763
    :goto_0
    const-class v1, Lorg/telegram/tgnet/TLRPC$TL_fileHash;

    invoke-static {v1, v0, p0, p1, p2}, Lorg/telegram/tgnet/TLObject;->TLdeserialize(Ljava/lang/Class;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;

    move-result-object p0

    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_fileHash;

    return-object p0
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 2

    .line 54767
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_fileHash;->offset:J

    .line 54768
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_fileHash;->limit:I

    .line 54769
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readByteArray(Z)[B

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_fileHash;->hash:[B

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, -0xc64fca4

    .line 54773
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 54774
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_fileHash;->offset:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 54775
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_fileHash;->limit:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 54776
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_fileHash;->hash:[B

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeByteArray([B)V

    return-void
.end method
