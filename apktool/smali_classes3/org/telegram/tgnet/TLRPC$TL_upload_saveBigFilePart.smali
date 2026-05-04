.class public Lorg/telegram/tgnet/TLRPC$TL_upload_saveBigFilePart;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_upload_saveBigFilePart"
.end annotation


# instance fields
.field public bytes:Lorg/telegram/tgnet/NativeByteBuffer;

.field public file_id:J

.field public file_part:I

.field public file_total_parts:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$Bool;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Bool;

    move-result-object p1

    return-object p1
.end method

.method public freeResources()V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/tgnet/TLObject;->disableFree:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_upload_saveBigFilePart;->bytes:Lorg/telegram/tgnet/NativeByteBuffer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_upload_saveBigFilePart;->bytes:Lorg/telegram/tgnet/NativeByteBuffer;

    :cond_1
    :goto_0
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, -0x218498c3

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_upload_saveBigFilePart;->file_id:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_upload_saveBigFilePart;->file_part:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_upload_saveBigFilePart;->file_total_parts:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_upload_saveBigFilePart;->bytes:Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeByteBuffer(Lorg/telegram/tgnet/NativeByteBuffer;)V

    return-void
.end method
