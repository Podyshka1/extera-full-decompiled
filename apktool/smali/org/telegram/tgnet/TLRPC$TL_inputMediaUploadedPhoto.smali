.class public Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedPhoto;
.super Lorg/telegram/tgnet/TLRPC$InputMedia;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_inputMediaUploadedPhoto"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31042
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$InputMedia;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 2

    .line 31046
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 31047
    :goto_0
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$InputMedia;->spoiler:Z

    .line 31048
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$InputFile;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$InputFile;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$InputMedia;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    .line 31049
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 31050
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedDocument$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedDocument$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$InputMedia;->stickers:Ljava/util/ArrayList;

    .line 31052
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 31053
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$InputMedia;->ttl_seconds:I

    :cond_2
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, 0x1e287d04

    .line 31058
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 31059
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$InputMedia;->spoiler:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I

    or-int/lit8 v0, v0, 0x4

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I

    and-int/lit8 v0, v0, -0x5

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I

    .line 31060
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 31061
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$InputMedia;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 31062
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 31063
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$InputMedia;->stickers:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    .line 31065
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 31066
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$InputMedia;->ttl_seconds:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    :cond_2
    return-void
.end method
