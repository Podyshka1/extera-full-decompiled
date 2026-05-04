.class public Lorg/telegram/tgnet/TLRPC$TL_userProfilePhoto;
.super Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_userProfilePhoto"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35559
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 4

    .line 35563
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->flags:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 35564
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->has_video:Z

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    move v2, v3

    .line 35565
    :cond_1
    iput-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->personal:Z

    .line 35566
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_id:J

    .line 35567
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 35568
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readByteArray(Z)[B

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->stripped_thumb:[B

    .line 35570
    :cond_2
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->dc_id:I

    .line 35571
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;-><init>()V

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 35572
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_id:J

    neg-long v0, v0

    iput-wide v0, p1, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    const/16 p2, 0x61

    .line 35573
    iput p2, p1, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    .line 35574
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;-><init>()V

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_big:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 35575
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_id:J

    neg-long v0, v0

    iput-wide v0, p1, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    const/16 p2, 0x63

    .line 35576
    iput p2, p1, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    .line 35578
    iget-object p1, p0, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->stripped_thumb:[B

    if-eqz p1, :cond_3

    .line 35580
    :try_start_0
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object p2, p0, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->stripped_thumb:[B

    const-string v0, "b"

    invoke-static {p2, v0}, Lorg/telegram/messenger/ImageLoader;->getStrippedPhotoBitmap([BLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->strippedBitmap:Landroid/graphics/drawable/BitmapDrawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 35582
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_3
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, -0x7d2e08fa

    .line 35588
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 35589
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->has_video:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->flags:I

    .line 35590
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->personal:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x4

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x5

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->flags:I

    .line 35591
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 35592
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_id:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 35593
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 35594
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->stripped_thumb:[B

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeByteArray([B)V

    .line 35596
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->dc_id:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    return-void
.end method
