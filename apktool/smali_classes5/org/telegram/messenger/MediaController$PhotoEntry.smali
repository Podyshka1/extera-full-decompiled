.class public Lorg/telegram/messenger/MediaController$PhotoEntry;
.super Lorg/telegram/messenger/MediaController$MediaEditState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/MediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhotoEntry"
.end annotation


# instance fields
.field public bucketId:I

.field public canDeleteAfter:Z

.field public dateTaken:J

.field public duration:I

.field public emoji:Ljava/lang/String;

.field public emojiMarkup:Lorg/telegram/tgnet/TLRPC$VideoSize;

.field public gradientBottomColor:I

.field public gradientTopColor:I

.field public hasSpoiler:Z

.field public height:I

.field public imageId:I

.field public invert:I

.field public isAttachSpoilerRevealed:Z

.field public isChatPreviewSpoilerRevealed:Z

.field public isMuted:Z

.field public isVideo:Z

.field public orientation:I

.field public path:Ljava/lang/String;

.field public size:J

.field public starsAmount:J

.field public thumb:Landroid/graphics/drawable/BitmapDrawable;

.field public videoOrientation:I

.field public width:I


# direct methods
.method public static synthetic $r8$lambda$5JEGqUxH8GAe2Tors2UE8ITYBXk(Lorg/telegram/messenger/MediaController$PhotoEntry;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/MediaController$PhotoEntry;->lambda$rebuildPhoto$0(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(IIJLjava/lang/String;IIZIIJ)V
    .locals 1

    .line 619
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController$MediaEditState;-><init>()V

    const/4 v0, -0x1

    .line 593
    iput v0, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->videoOrientation:I

    .line 620
    iput p1, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->bucketId:I

    .line 621
    iput p2, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    .line 622
    iput-wide p3, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->dateTaken:J

    .line 623
    iput-object p5, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    .line 624
    iput p9, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->width:I

    .line 625
    iput p10, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->height:I

    .line 626
    iput-wide p11, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->size:J

    .line 627
    iput p7, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->duration:I

    .line 628
    iput p6, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->orientation:I

    .line 629
    iput-boolean p8, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    return-void
.end method

.method public constructor <init>(IIJLjava/lang/String;IZIIJ)V
    .locals 1

    .line 603
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController$MediaEditState;-><init>()V

    const/4 v0, -0x1

    .line 593
    iput v0, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->videoOrientation:I

    .line 604
    iput p1, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->bucketId:I

    .line 605
    iput p2, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    .line 606
    iput-wide p3, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->dateTaken:J

    .line 607
    iput-object p5, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    .line 608
    iput p8, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->width:I

    .line 609
    iput p9, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->height:I

    .line 610
    iput-wide p10, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->size:J

    if-eqz p7, :cond_0

    .line 612
    iput p6, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->duration:I

    goto :goto_0

    .line 614
    :cond_0
    iput p6, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->orientation:I

    .line 616
    :goto_0
    iput-boolean p7, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    return-void
.end method

.method private synthetic lambda$rebuildPhoto$0(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1

    .line 721
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$MediaEditState;->filterPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    :goto_0
    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 575
    invoke-virtual {p0}, Lorg/telegram/messenger/MediaController$PhotoEntry;->clone()Lorg/telegram/messenger/MediaController$PhotoEntry;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/telegram/messenger/MediaController$PhotoEntry;
    .locals 13

    .line 652
    new-instance v0, Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget v1, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->bucketId:I

    iget v2, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    iget-wide v3, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->dateTaken:J

    iget-object v5, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    iget v6, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->orientation:I

    iget v7, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->duration:I

    iget-boolean v8, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    iget v9, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->width:I

    iget v10, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->height:I

    iget-wide v11, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->size:J

    invoke-direct/range {v0 .. v12}, Lorg/telegram/messenger/MediaController$PhotoEntry;-><init>(IIJLjava/lang/String;IIZIIJ)V

    .line 653
    iget v1, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->invert:I

    iput v1, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->invert:I

    .line 654
    iget-boolean v1, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->isMuted:Z

    iput-boolean v1, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->isMuted:Z

    .line 655
    iget-boolean v1, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->canDeleteAfter:Z

    iput-boolean v1, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->canDeleteAfter:Z

    .line 656
    iget-boolean v1, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->hasSpoiler:Z

    iput-boolean v1, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->hasSpoiler:Z

    .line 657
    iget-wide v1, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->starsAmount:J

    iput-wide v1, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->starsAmount:J

    .line 658
    iget-boolean v1, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->isChatPreviewSpoilerRevealed:Z

    iput-boolean v1, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->isChatPreviewSpoilerRevealed:Z

    .line 659
    iget-boolean v1, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->isAttachSpoilerRevealed:Z

    iput-boolean v1, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->isAttachSpoilerRevealed:Z

    .line 660
    iget-object v1, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->emojiMarkup:Lorg/telegram/tgnet/TLRPC$VideoSize;

    iput-object v1, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->emojiMarkup:Lorg/telegram/tgnet/TLRPC$VideoSize;

    .line 661
    iget v1, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->gradientTopColor:I

    iput v1, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->gradientTopColor:I

    .line 662
    iget v1, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->gradientBottomColor:I

    iput v1, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->gradientBottomColor:I

    .line 663
    invoke-virtual {v0, p0}, Lorg/telegram/messenger/MediaController$PhotoEntry;->copyFrom(Lorg/telegram/messenger/MediaController$MediaEditState;)V

    return-object v0
.end method

.method public copyFrom(Lorg/telegram/messenger/MediaController$MediaEditState;)V
    .locals 2

    .line 646
    invoke-super {p0, p1}, Lorg/telegram/messenger/MediaController$MediaEditState;->copyFrom(Lorg/telegram/messenger/MediaController$MediaEditState;)V

    .line 647
    instance-of v0, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    if-eqz v0, :cond_0

    move-object v1, p1

    check-cast v1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-boolean v1, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->hasSpoiler:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->hasSpoiler:Z

    if-eqz v0, :cond_1

    .line 648
    check-cast p1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-wide v0, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->starsAmount:J

    goto :goto_1

    :cond_1
    const-wide/16 v0, 0x0

    :goto_1
    iput-wide v0, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->starsAmount:J

    return-void
.end method

.method public deleteAll()V
    .locals 2

    .line 686
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 688
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 691
    :catch_0
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$MediaEditState;->fullPaintPath:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 693
    :try_start_1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/telegram/messenger/MediaController$MediaEditState;->fullPaintPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 696
    :catch_1
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$MediaEditState;->paintPath:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 698
    :try_start_2
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/telegram/messenger/MediaController$MediaEditState;->paintPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 701
    :catch_2
    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$MediaEditState;->imagePath:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 703
    :try_start_3
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/telegram/messenger/MediaController$MediaEditState;->imagePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 706
    :catch_3
    :cond_3
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$MediaEditState;->filterPath:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 708
    :try_start_4
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/telegram/messenger/MediaController$MediaEditState;->filterPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 711
    :catch_4
    :cond_4
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$MediaEditState;->croppedPaintPath:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 713
    :try_start_5
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/telegram/messenger/MediaController$MediaEditState;->croppedPaintPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :cond_5
    return-void
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 669
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    return-object v0
.end method

.method public rebuildPhoto(Z)V
    .locals 18

    move-object/from16 v1, p0

    .line 719
    iget-object v0, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->filterPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->getImageOrientation(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    .line 720
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 721
    new-instance v2, Lorg/telegram/messenger/MediaController$PhotoEntry$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lorg/telegram/messenger/MediaController$PhotoEntry$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/MediaController$PhotoEntry;)V

    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize(Z)I

    move-result v4

    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize(Z)I

    move-result v5

    const/4 v6, 0x0

    const/4 v10, 0x1

    invoke-static {v2, v4, v5, v6, v10}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->getScaledBitmap(Lorg/telegram/ui/Stories/recorder/StoryEntry$DecodeBitmap;IIZZ)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 722
    iget-object v2, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->imagePath:Ljava/lang/String;

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 723
    new-instance v2, Ljava/io/File;

    iget-object v5, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->imagePath:Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    iput-object v4, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->imagePath:Ljava/lang/String;

    .line 727
    :cond_1
    iget-object v2, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->cropState:Lorg/telegram/messenger/MediaController$CropState;

    if-eqz v2, :cond_2

    .line 728
    iget-object v5, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    filled-new-array {v5, v0}, [I

    move-result-object v0

    invoke-static {v11, v2, v0, v10}, Lorg/telegram/ui/PhotoViewer;->createCroppedBitmap(Landroid/graphics/Bitmap;Lorg/telegram/messenger/MediaController$CropState;[IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 729
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->recycleBitmap(Landroid/graphics/Bitmap;)V

    :goto_1
    move-object v2, v0

    goto :goto_3

    .line 731
    :cond_2
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_5

    .line 732
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 733
    iget-object v5, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v2, v5}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 734
    iget-object v5, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, -0x40800000    # -1.0f

    if-ne v5, v10, :cond_3

    .line 735
    invoke-virtual {v2, v8, v7}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_2

    .line 736
    :cond_3
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v5, 0x2

    if-ne v0, v5, :cond_4

    .line 737
    invoke-virtual {v2, v7, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 739
    :cond_4
    :goto_2
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    const/16 v17, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v16, v2

    invoke-static/range {v11 .. v17}, Lorg/telegram/messenger/Bitmaps;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 740
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->recycleBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    :cond_5
    move-object v2, v11

    .line 745
    :goto_3
    iget-object v0, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->fullPaintPath:Ljava/lang/String;

    const/16 v5, 0x57

    const/16 v7, 0x63

    if-nez v0, :cond_7

    .line 746
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize(Z)I

    move-result v0

    int-to-float v4, v0

    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize(Z)I

    move-result v0

    int-to-float v0, v0

    if-eqz p1, :cond_6

    move v6, v7

    goto :goto_4

    :cond_6
    move v6, v5

    :goto_4
    const/16 v8, 0x65

    const/16 v9, 0x65

    const/4 v7, 0x0

    move v5, v0

    invoke-static/range {v2 .. v9}, Lorg/telegram/messenger/ImageLoader;->scaleAndSaveImage(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;FFIZII)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v0

    .line 747
    sget v3, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    invoke-virtual {v3, v0, v10}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->imagePath:Ljava/lang/String;

    goto :goto_7

    .line 750
    :cond_7
    iget-object v8, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->cropState:Lorg/telegram/messenger/MediaController$CropState;

    if-eqz v8, :cond_8

    .line 751
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 752
    iget-object v8, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->cropState:Lorg/telegram/messenger/MediaController$CropState;

    invoke-static {v0, v8, v4, v6}, Lorg/telegram/ui/PhotoViewer;->createCroppedBitmap(Landroid/graphics/Bitmap;Lorg/telegram/messenger/MediaController$CropState;[IZ)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 753
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->recycleBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_5

    .line 755
    :cond_8
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 758
    :goto_5
    :try_start_0
    new-instance v0, Landroid/graphics/Paint;

    const/4 v6, 0x3

    invoke-direct {v0, v6}, Landroid/graphics/Paint;-><init>(I)V

    .line 759
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 760
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v9, 0x0

    .line 762
    invoke-virtual {v8, v2, v9, v9, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 763
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v10, v11

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v11, v12

    invoke-virtual {v8, v10, v11}, Landroid/graphics/Canvas;->scale(FF)V

    .line 764
    invoke-virtual {v8, v4, v9, v9, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 766
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getTempFileAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->imagePath:Ljava/lang/String;

    if-eqz p1, :cond_9

    move v5, v7

    .line 767
    :cond_9
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v7, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->imagePath:Ljava/lang/String;

    invoke-direct {v0, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3, v5, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    .line 769
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_6
    if-eqz v4, :cond_a

    .line 772
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    :cond_a
    :goto_7
    if-eqz v2, :cond_b

    .line 776
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_b
    return-void
.end method

.method public reset()V
    .locals 2

    .line 674
    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    if-eqz v0, :cond_0

    .line 675
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$MediaEditState;->filterPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 676
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/telegram/messenger/MediaController$MediaEditState;->filterPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    const/4 v0, 0x0

    .line 677
    iput-object v0, p0, Lorg/telegram/messenger/MediaController$MediaEditState;->filterPath:Ljava/lang/String;

    :cond_0
    const/4 v0, 0x0

    .line 680
    iput-boolean v0, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->hasSpoiler:Z

    const-wide/16 v0, 0x0

    .line 681
    iput-wide v0, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->starsAmount:J

    .line 682
    invoke-super {p0}, Lorg/telegram/messenger/MediaController$MediaEditState;->reset()V

    return-void
.end method

.method public setOrientation(II)Lorg/telegram/messenger/MediaController$PhotoEntry;
    .locals 0

    .line 639
    iput p1, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->orientation:I

    .line 640
    iput p2, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->invert:I

    return-object p0
.end method

.method public setOrientation(Landroid/util/Pair;)Lorg/telegram/messenger/MediaController$PhotoEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)",
            "Lorg/telegram/messenger/MediaController$PhotoEntry;"
        }
    .end annotation

    .line 633
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->orientation:I

    .line 634
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->invert:I

    return-object p0
.end method
