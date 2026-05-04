.class public Lorg/telegram/tgnet/TLRPC$TL_chatPhoto;
.super Lorg/telegram/tgnet/TLRPC$ChatPhoto;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_chatPhoto"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 618
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$ChatPhoto;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 1

    const/4 v0, 0x1

    .line 622
    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/tgnet/TLRPC$TL_chatPhoto;->readParams(Lorg/telegram/tgnet/InputSerializedData;ZZ)V

    return-void
.end method

.method public readParams(Lorg/telegram/tgnet/InputSerializedData;ZZ)V
    .locals 2

    .line 626
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 627
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->has_video:Z

    .line 628
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_id:J

    .line 629
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 630
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readByteArray(Z)[B

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->stripped_thumb:[B

    .line 632
    :cond_1
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->dc_id:I

    .line 633
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;-><init>()V

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 634
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_id:J

    neg-long v0, v0

    iput-wide v0, p1, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    const/16 p2, 0x61

    .line 635
    iput p2, p1, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    .line 636
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;-><init>()V

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_big:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 637
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_id:J

    neg-long v0, v0

    iput-wide v0, p1, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    const/16 p2, 0x63

    .line 638
    iput p2, p1, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    if-eqz p3, :cond_2

    .line 640
    iget-object p1, p0, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->stripped_thumb:[B

    if-eqz p1, :cond_2

    .line 642
    :try_start_0
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object p2, p0, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->stripped_thumb:[B

    const-string p3, "b"

    invoke-static {p2, p3}, Lorg/telegram/messenger/ImageLoader;->getStrippedPhotoBitmap([BLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->strippedBitmap:Landroid/graphics/drawable/BitmapDrawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 644
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_2
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, 0x1c6e1c11

    .line 650
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 651
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->has_video:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->flags:I

    .line 652
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 653
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_id:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 654
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 655
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->stripped_thumb:[B

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeByteArray([B)V

    .line 657
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->dc_id:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    return-void
.end method
