.class public Lorg/telegram/tgnet/TLRPC$TL_upload_getFile;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_upload_getFile"
.end annotation


# instance fields
.field public cdn_supported:Z

.field public flags:I

.field public limit:I

.field public location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

.field public offset:J

.field public precise:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 57048
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 57059
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$upload_File;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$upload_File;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, -0x41acca42

    .line 57063
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 57064
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_upload_getFile;->precise:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_upload_getFile;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_upload_getFile;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_upload_getFile;->flags:I

    .line 57065
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_upload_getFile;->cdn_supported:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x3

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_upload_getFile;->flags:I

    .line 57066
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 57067
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_upload_getFile;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 57068
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_upload_getFile;->offset:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 57069
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_upload_getFile;->limit:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    return-void
.end method
