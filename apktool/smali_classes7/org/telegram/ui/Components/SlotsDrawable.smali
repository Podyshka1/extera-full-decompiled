.class public Lorg/telegram/ui/Components/SlotsDrawable;
.super Lorg/telegram/ui/Components/RLottieDrawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/SlotsDrawable$ReelValue;
    }
.end annotation


# instance fields
.field private center:Lorg/telegram/ui/Components/SlotsDrawable$ReelValue;

.field private frameCounts:[I

.field private frameNums:[I

.field private left:Lorg/telegram/ui/Components/SlotsDrawable$ReelValue;

.field private nativePtrs:[J

.field private playWinAnimation:Z

.field private right:Lorg/telegram/ui/Components/SlotsDrawable$ReelValue;

.field private secondFrameCounts:[I

.field private secondFrameNums:[I

.field private secondNativePtrs:[J


# direct methods
.method public static synthetic $r8$lambda$0qDCVgg1DlTtfTd4Ipf2lkYKkEg(Lorg/telegram/ui/Components/SlotsDrawable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/SlotsDrawable;->lambda$setBaseDice$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$5UvxyCjhDQqIkvOWk06OuvFfr84(Ljava/util/ArrayList;)V
    .locals 4

    .line 417
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Ljava/lang/Long;

    .line 418
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/RLottieDrawable;->destroy(J)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$6VD9PJpFDerOaKgcp_6n-JBEcoc(Lorg/telegram/ui/Components/SlotsDrawable;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;ILorg/telegram/messenger/MessageObject;Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/SlotsDrawable;->lambda$setBaseDice$5(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;ILorg/telegram/messenger/MessageObject;Lorg/telegram/ui/Cells/ChatMessageCell;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8O05U10i4cYNDSyhRyCvKA40VHg(Lorg/telegram/ui/Components/SlotsDrawable;ZILorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/SlotsDrawable;->lambda$setDiceNumber$9(ZILorg/telegram/ui/Cells/ChatMessageCell;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CRSx3-qZRDIU7oRxYGW02aqy5aI(Lorg/telegram/tgnet/TLRPC$Document;ILorg/telegram/messenger/MessageObject;Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V
    .locals 2

    .line 230
    invoke-static {p0}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v0

    .line 231
    invoke-static {p1}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v1

    invoke-virtual {v1, v0, p2, p3}, Lorg/telegram/messenger/DownloadController;->addLoadingFileObserver(Ljava/lang/String;Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/DownloadController$FileDownloadProgressListener;)V

    .line 232
    invoke-static {p1}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p0, p4, p2, p2}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;II)V

    return-void
.end method

.method public static synthetic $r8$lambda$KKMxOg1MHv3uKuLslUMcw3IoTfk(Lorg/telegram/ui/Components/SlotsDrawable;ILorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/SlotsDrawable;->lambda$setBaseDice$4(ILorg/telegram/ui/Cells/ChatMessageCell;)V

    return-void
.end method

.method public static synthetic $r8$lambda$N2tcjS7KPP9kh0KL5Carrb9HSd0(Lorg/telegram/ui/Components/SlotsDrawable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/SlotsDrawable;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$TgyIJqnaCdMkKIU4wGSPv4bS8hw(Lorg/telegram/ui/Components/SlotsDrawable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/SlotsDrawable;->lambda$setDiceNumber$8()V

    return-void
.end method

.method public static synthetic $r8$lambda$Yg_MDHEUZB4uUAqj0XSfaUkN5tg(Lorg/telegram/ui/Components/SlotsDrawable;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;ILorg/telegram/messenger/MessageObject;Lorg/telegram/ui/Cells/ChatMessageCell;Z)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Components/SlotsDrawable;->lambda$setDiceNumber$10(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;ILorg/telegram/messenger/MessageObject;Lorg/telegram/ui/Cells/ChatMessageCell;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZYxgmNDDlVk3oJdARYRskdjkdWc(Lorg/telegram/ui/Components/SlotsDrawable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/SlotsDrawable;->lambda$setDiceNumber$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$v9j9XcI5TcfNL8uE2UypDmLKDxI(Lorg/telegram/tgnet/TLRPC$Document;ILorg/telegram/messenger/MessageObject;Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V
    .locals 2

    .line 340
    invoke-static {p0}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v0

    .line 341
    invoke-static {p1}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v1

    invoke-virtual {v1, v0, p2, p3}, Lorg/telegram/messenger/DownloadController;->addLoadingFileObserver(Ljava/lang/String;Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/DownloadController$FileDownloadProgressListener;)V

    .line 342
    invoke-static {p1}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p0, p4, p2, p2}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;II)V

    return-void
.end method

.method public static synthetic $r8$lambda$vv8pnupXyaTopumncJsq-EHQz5s(Lorg/telegram/ui/Components/SlotsDrawable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/SlotsDrawable;->lambda$setBaseDice$1()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/RLottieDrawable;-><init>(Ljava/lang/String;II)V

    const/4 p1, 0x5

    .line 35
    new-array p2, p1, [J

    iput-object p2, p0, Lorg/telegram/ui/Components/SlotsDrawable;->nativePtrs:[J

    .line 36
    new-array p2, p1, [I

    iput-object p2, p0, Lorg/telegram/ui/Components/SlotsDrawable;->frameCounts:[I

    .line 37
    new-array p1, p1, [I

    iput-object p1, p0, Lorg/telegram/ui/Components/SlotsDrawable;->frameNums:[I

    const/4 p1, 0x3

    .line 38
    new-array p2, p1, [J

    iput-object p2, p0, Lorg/telegram/ui/Components/SlotsDrawable;->secondNativePtrs:[J

    .line 39
    new-array p2, p1, [I

    iput-object p2, p0, Lorg/telegram/ui/Components/SlotsDrawable;->secondFrameCounts:[I

    .line 40
    new-array p1, p1, [I

    iput-object p1, p0, Lorg/telegram/ui/Components/SlotsDrawable;->secondFrameNums:[I

    .line 47
    new-instance p1, Lorg/telegram/ui/Components/SlotsDrawable$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/SlotsDrawable$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/SlotsDrawable;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->loadFrameRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private init(I)V
    .locals 3

    add-int/lit8 p1, p1, -0x1

    and-int/lit8 v0, p1, 0x3

    shr-int/lit8 v1, p1, 0x2

    and-int/lit8 v1, v1, 0x3

    shr-int/lit8 p1, p1, 0x4

    .line 171
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/SlotsDrawable;->reelValue(I)Lorg/telegram/ui/Components/SlotsDrawable$ReelValue;

    move-result-object v0

    .line 172
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/SlotsDrawable;->reelValue(I)Lorg/telegram/ui/Components/SlotsDrawable$ReelValue;

    move-result-object v1

    .line 173
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SlotsDrawable;->reelValue(I)Lorg/telegram/ui/Components/SlotsDrawable$ReelValue;

    move-result-object p1

    .line 175
    sget-object v2, Lorg/telegram/ui/Components/SlotsDrawable$ReelValue;->seven:Lorg/telegram/ui/Components/SlotsDrawable$ReelValue;

    if-ne v0, v2, :cond_0

    if-ne v1, v2, :cond_0

    if-ne p1, v2, :cond_0

    .line 176
    sget-object v0, Lorg/telegram/ui/Components/SlotsDrawable$ReelValue;->sevenWin:Lorg/telegram/ui/Components/SlotsDrawable$ReelValue;

    move-object p1, v0

    move-object v1, p1

    .line 181
    :cond_0
    iput-object v0, p0, Lorg/telegram/ui/Components/SlotsDrawable;->left:Lorg/telegram/ui/Components/SlotsDrawable$ReelValue;

    .line 182
    iput-object v1, p0, Lorg/telegram/ui/Components/SlotsDrawable;->center:Lorg/telegram/ui/Components/SlotsDrawable$ReelValue;

    .line 183
    iput-object p1, p0, Lorg/telegram/ui/Components/SlotsDrawable;->right:Lorg/telegram/ui/Components/SlotsDrawable$ReelValue;

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 20

    move-object/from16 v1, p0

    .line 48
    iget-boolean v0, v1, Lorg/telegram/ui/Components/RLottieDrawable;->isRecycled:Z

    if-eqz v0, :cond_0

    goto/16 :goto_f

    .line 51
    :cond_0
    iget-wide v2, v1, Lorg/telegram/ui/Components/RLottieDrawable;->nativePtr:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_17

    iget v0, v1, Lorg/telegram/ui/Components/RLottieDrawable;->isDice:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    iget-wide v6, v1, Lorg/telegram/ui/Components/RLottieDrawable;->secondNativePtr:J

    cmp-long v0, v6, v4

    if-nez v0, :cond_1

    goto/16 :goto_10

    .line 58
    :cond_1
    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable;->backgroundBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    .line 60
    :try_start_0
    iget v0, v1, Lorg/telegram/ui/Components/RLottieDrawable;->width:I

    iget v3, v1, Lorg/telegram/ui/Components/RLottieDrawable;->height:I

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v3, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable;->backgroundBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 62
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 65
    :cond_2
    :goto_0
    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable;->backgroundBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_15

    .line 68
    :try_start_1
    iget v0, v1, Lorg/telegram/ui/Components/RLottieDrawable;->isDice:I

    const/4 v3, 0x4

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ne v0, v8, :cond_7

    move v9, v6

    move v0, v7

    .line 70
    :goto_1
    iget-object v10, v1, Lorg/telegram/ui/Components/SlotsDrawable;->nativePtrs:[J

    array-length v11, v10

    if-ge v0, v11, :cond_13

    .line 71
    aget-wide v12, v10, v0

    iget-object v9, v1, Lorg/telegram/ui/Components/SlotsDrawable;->frameNums:[I

    aget v14, v9, v0

    iget-object v15, v1, Lorg/telegram/ui/Components/RLottieDrawable;->backgroundBitmap:Landroid/graphics/Bitmap;

    iget v9, v1, Lorg/telegram/ui/Components/RLottieDrawable;->width:I

    iget v10, v1, Lorg/telegram/ui/Components/RLottieDrawable;->height:I

    iget-object v11, v1, Lorg/telegram/ui/Components/RLottieDrawable;->backgroundBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v18

    if-nez v0, :cond_3

    move/from16 v19, v8

    :goto_2
    move/from16 v16, v9

    move/from16 v17, v10

    goto :goto_3

    :cond_3
    move/from16 v19, v7

    goto :goto_2

    :goto_3
    invoke-static/range {v12 .. v19}, Lorg/telegram/ui/Components/RLottieDrawable;->getFrame(JILandroid/graphics/Bitmap;IIIZ)I

    move-result v9

    if-nez v0, :cond_4

    goto :goto_4

    .line 75
    :cond_4
    iget-object v10, v1, Lorg/telegram/ui/Components/SlotsDrawable;->frameNums:[I

    aget v11, v10, v0

    add-int/lit8 v12, v11, 0x1

    iget-object v13, v1, Lorg/telegram/ui/Components/SlotsDrawable;->frameCounts:[I

    aget v13, v13, v0

    if-ge v12, v13, :cond_5

    add-int/lit8 v11, v11, 0x1

    .line 76
    aput v11, v10, v0

    goto :goto_4

    :catch_0
    move-exception v0

    goto/16 :goto_d

    :cond_5
    if-eq v0, v3, :cond_6

    .line 78
    aput v7, v10, v0

    .line 79
    iput-boolean v7, v1, Lorg/telegram/ui/Components/RLottieDrawable;->nextFrameIsLast:Z

    .line 80
    iget-wide v10, v1, Lorg/telegram/ui/Components/RLottieDrawable;->secondNativePtr:J

    cmp-long v10, v10, v4

    if-eqz v10, :cond_6

    .line 81
    iput v2, v1, Lorg/telegram/ui/Components/RLottieDrawable;->isDice:I

    :cond_6
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 86
    :cond_7
    iget-boolean v0, v1, Lorg/telegram/ui/Components/RLottieDrawable;->setLastFrame:Z

    if-eqz v0, :cond_8

    move v0, v7

    .line 87
    :goto_5
    iget-object v4, v1, Lorg/telegram/ui/Components/SlotsDrawable;->secondFrameNums:[I

    array-length v5, v4

    if-ge v0, v5, :cond_8

    .line 88
    iget-object v5, v1, Lorg/telegram/ui/Components/SlotsDrawable;->secondFrameCounts:[I

    aget v5, v5, v0

    sub-int/2addr v5, v8

    aput v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 91
    :cond_8
    iget-boolean v0, v1, Lorg/telegram/ui/Components/SlotsDrawable;->playWinAnimation:Z

    if-eqz v0, :cond_a

    .line 92
    iget-object v0, v1, Lorg/telegram/ui/Components/SlotsDrawable;->frameNums:[I

    aget v4, v0, v7

    add-int/lit8 v5, v4, 0x1

    iget-object v9, v1, Lorg/telegram/ui/Components/SlotsDrawable;->frameCounts:[I

    aget v9, v9, v7

    if-ge v5, v9, :cond_9

    add-int/2addr v4, v8

    .line 93
    aput v4, v0, v7

    goto :goto_6

    .line 95
    :cond_9
    aput v6, v0, v7

    .line 98
    :cond_a
    :goto_6
    iget-object v0, v1, Lorg/telegram/ui/Components/SlotsDrawable;->nativePtrs:[J

    aget-wide v9, v0, v7

    iget-object v0, v1, Lorg/telegram/ui/Components/SlotsDrawable;->frameNums:[I

    aget v0, v0, v7

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v11

    iget-object v12, v1, Lorg/telegram/ui/Components/RLottieDrawable;->backgroundBitmap:Landroid/graphics/Bitmap;

    iget v13, v1, Lorg/telegram/ui/Components/RLottieDrawable;->width:I

    iget v14, v1, Lorg/telegram/ui/Components/RLottieDrawable;->height:I

    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable;->backgroundBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v15

    const/16 v16, 0x1

    invoke-static/range {v9 .. v16}, Lorg/telegram/ui/Components/RLottieDrawable;->getFrame(JILandroid/graphics/Bitmap;IIIZ)I

    move v0, v7

    .line 99
    :goto_7
    iget-object v4, v1, Lorg/telegram/ui/Components/SlotsDrawable;->secondNativePtrs:[J

    array-length v5, v4

    if-ge v0, v5, :cond_e

    .line 100
    aget-wide v9, v4, v0

    iget-object v4, v1, Lorg/telegram/ui/Components/SlotsDrawable;->secondFrameNums:[I

    aget v4, v4, v0

    if-ltz v4, :cond_b

    :goto_8
    move v11, v4

    goto :goto_9

    :cond_b
    iget-object v4, v1, Lorg/telegram/ui/Components/SlotsDrawable;->secondFrameCounts:[I

    aget v4, v4, v0

    sub-int/2addr v4, v8

    goto :goto_8

    :goto_9
    iget-object v12, v1, Lorg/telegram/ui/Components/RLottieDrawable;->backgroundBitmap:Landroid/graphics/Bitmap;

    iget v13, v1, Lorg/telegram/ui/Components/RLottieDrawable;->width:I

    iget v14, v1, Lorg/telegram/ui/Components/RLottieDrawable;->height:I

    iget-object v4, v1, Lorg/telegram/ui/Components/RLottieDrawable;->backgroundBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v15

    const/16 v16, 0x0

    invoke-static/range {v9 .. v16}, Lorg/telegram/ui/Components/RLottieDrawable;->getFrame(JILandroid/graphics/Bitmap;IIIZ)I

    .line 101
    iget-boolean v4, v1, Lorg/telegram/ui/Components/RLottieDrawable;->nextFrameIsLast:Z

    if-nez v4, :cond_d

    .line 102
    iget-object v4, v1, Lorg/telegram/ui/Components/SlotsDrawable;->secondFrameNums:[I

    aget v5, v4, v0

    add-int/lit8 v9, v5, 0x1

    iget-object v10, v1, Lorg/telegram/ui/Components/SlotsDrawable;->secondFrameCounts:[I

    aget v10, v10, v0

    if-ge v9, v10, :cond_c

    add-int/lit8 v5, v5, 0x1

    .line 103
    aput v5, v4, v0

    goto :goto_a

    .line 105
    :cond_c
    aput v6, v4, v0

    :cond_d
    :goto_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 109
    :cond_e
    iget-object v0, v1, Lorg/telegram/ui/Components/SlotsDrawable;->nativePtrs:[J

    aget-wide v9, v0, v3

    iget-object v0, v1, Lorg/telegram/ui/Components/SlotsDrawable;->frameNums:[I

    aget v11, v0, v3

    iget-object v12, v1, Lorg/telegram/ui/Components/RLottieDrawable;->backgroundBitmap:Landroid/graphics/Bitmap;

    iget v13, v1, Lorg/telegram/ui/Components/RLottieDrawable;->width:I

    iget v14, v1, Lorg/telegram/ui/Components/RLottieDrawable;->height:I

    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable;->backgroundBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v15

    const/16 v16, 0x0

    invoke-static/range {v9 .. v16}, Lorg/telegram/ui/Components/RLottieDrawable;->getFrame(JILandroid/graphics/Bitmap;IIIZ)I

    move-result v9

    .line 110
    iget-object v0, v1, Lorg/telegram/ui/Components/SlotsDrawable;->frameNums:[I

    aget v4, v0, v3

    add-int/lit8 v5, v4, 0x1

    iget-object v10, v1, Lorg/telegram/ui/Components/SlotsDrawable;->frameCounts:[I

    aget v10, v10, v3

    if-ge v5, v10, :cond_f

    add-int/2addr v4, v8

    .line 111
    aput v4, v0, v3

    .line 113
    :cond_f
    iget-object v0, v1, Lorg/telegram/ui/Components/SlotsDrawable;->secondFrameNums:[I

    aget v3, v0, v7

    if-ne v3, v6, :cond_10

    aget v3, v0, v8

    if-ne v3, v6, :cond_10

    aget v0, v0, v2

    if-ne v0, v6, :cond_10

    .line 114
    iput-boolean v8, v1, Lorg/telegram/ui/Components/RLottieDrawable;->nextFrameIsLast:Z

    .line 115
    iget v0, v1, Lorg/telegram/ui/Components/RLottieDrawable;->autoRepeatPlayCount:I

    add-int/2addr v0, v8

    iput v0, v1, Lorg/telegram/ui/Components/RLottieDrawable;->autoRepeatPlayCount:I

    .line 117
    :cond_10
    iget-object v0, v1, Lorg/telegram/ui/Components/SlotsDrawable;->left:Lorg/telegram/ui/Components/SlotsDrawable$ReelValue;

    iget-object v2, v1, Lorg/telegram/ui/Components/SlotsDrawable;->right:Lorg/telegram/ui/Components/SlotsDrawable$ReelValue;

    if-ne v0, v2, :cond_12

    iget-object v3, v1, Lorg/telegram/ui/Components/SlotsDrawable;->center:Lorg/telegram/ui/Components/SlotsDrawable$ReelValue;

    if-ne v2, v3, :cond_12

    .line 118
    iget-object v2, v1, Lorg/telegram/ui/Components/SlotsDrawable;->secondFrameNums:[I

    aget v2, v2, v7

    iget-object v3, v1, Lorg/telegram/ui/Components/SlotsDrawable;->secondFrameCounts:[I

    aget v3, v3, v7

    add-int/lit8 v3, v3, -0x64

    if-ne v2, v3, :cond_13

    .line 119
    iput-boolean v8, v1, Lorg/telegram/ui/Components/SlotsDrawable;->playWinAnimation:Z

    .line 120
    sget-object v2, Lorg/telegram/ui/Components/SlotsDrawable$ReelValue;->sevenWin:Lorg/telegram/ui/Components/SlotsDrawable$ReelValue;

    if-ne v0, v2, :cond_13

    .line 121
    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable;->onFinishCallback:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_11

    const/4 v0, 0x0

    goto :goto_b

    :cond_11
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    :goto_b
    if-eqz v0, :cond_13

    .line 123
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_c

    .line 128
    :cond_12
    iget-object v0, v1, Lorg/telegram/ui/Components/SlotsDrawable;->frameNums:[I

    aput v6, v0, v7

    :cond_13
    :goto_c
    if-ne v9, v6, :cond_14

    .line 132
    sget-object v0, Lorg/telegram/ui/Components/RLottieDrawable;->uiHandler:Landroid/os/Handler;

    iget-object v2, v1, Lorg/telegram/ui/Components/RLottieDrawable;->uiRunnableNoFrame:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 133
    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable;->frameWaitSync:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_16

    .line 134
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_f

    .line 138
    :cond_14
    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable;->backgroundBitmap:Landroid/graphics/Bitmap;

    iput-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable;->nextRenderingBitmap:Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_e

    .line 140
    :goto_d
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 143
    :cond_15
    :goto_e
    sget-object v0, Lorg/telegram/ui/Components/RLottieDrawable;->uiHandler:Landroid/os/Handler;

    iget-object v2, v1, Lorg/telegram/ui/Components/RLottieDrawable;->uiRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 144
    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable;->frameWaitSync:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_16

    .line 145
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_16
    :goto_f
    return-void

    .line 52
    :cond_17
    :goto_10
    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable;->frameWaitSync:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_18

    .line 53
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 55
    :cond_18
    sget-object v0, Lorg/telegram/ui/Components/RLottieDrawable;->uiHandler:Landroid/os/Handler;

    iget-object v2, v1, Lorg/telegram/ui/Components/RLottieDrawable;->uiRunnableNoFrame:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$setBaseDice$1()V
    .locals 1

    const/4 v0, 0x0

    .line 200
    iput-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->loadingInBackground:Z

    .line 201
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->secondLoadingInBackground:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->destroyAfterLoading:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 202
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/SlotsDrawable;->recycle(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$setBaseDice$3()V
    .locals 1

    const/4 v0, 0x0

    .line 240
    iput-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->loadingInBackground:Z

    return-void
.end method

.method private synthetic lambda$setBaseDice$4(ILorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 3

    const/4 v0, 0x0

    .line 244
    iput-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->loadingInBackground:Z

    .line 245
    iget-boolean v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->secondLoadingInBackground:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->destroyAfterLoading:Z

    if-eqz v1, :cond_0

    .line 246
    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/SlotsDrawable;->recycle(Z)V

    return-void

    .line 249
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/SlotsDrawable;->nativePtrs:[J

    aget-wide v0, v1, v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->nativePtr:J

    .line 250
    invoke-static {p1}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/DownloadController;->removeLoadingFileObserver(Lorg/telegram/messenger/DownloadController$FileDownloadProgressListener;)V

    .line 251
    iget-object p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->metaData:[I

    aget p1, p1, v2

    int-to-float p1, p1

    const/high16 p2, 0x447a0000    # 1000.0f

    div-float/2addr p2, p1

    float-to-int p1, p2

    const/16 p2, 0x10

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->timeBetweenFrames:I

    .line 252
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RLottieDrawable;->scheduleNextGetFrame()Z

    .line 253
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RLottieDrawable;->invalidateInternal()V

    return-void
.end method

.method private synthetic lambda$setBaseDice$5(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;ILorg/telegram/messenger/MessageObject;Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 11

    .line 198
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->destroyAfterLoading:Z

    if-eqz v0, :cond_0

    .line 199
    new-instance p1, Lorg/telegram/ui/Components/SlotsDrawable$$ExternalSyntheticLambda8;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/SlotsDrawable$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Components/SlotsDrawable;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 208
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Components/SlotsDrawable;->nativePtrs:[J

    array-length v4, v3

    if-ge v1, v4, :cond_7

    .line 209
    aget-wide v4, v3, v1

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_1

    move-object v10, p1

    move v7, p2

    move-object v8, p3

    move-object v9, p4

    goto :goto_2

    :cond_1
    const/4 v3, 0x1

    if-nez v1, :cond_2

    move v4, v3

    goto :goto_1

    :cond_2
    if-ne v1, v3, :cond_3

    const/16 v4, 0x8

    goto :goto_1

    :cond_3
    const/4 v4, 0x2

    if-ne v1, v4, :cond_4

    const/16 v4, 0xe

    goto :goto_1

    :cond_4
    const/4 v5, 0x3

    if-ne v1, v5, :cond_5

    const/16 v4, 0x14

    .line 224
    :cond_5
    :goto_1
    iget-object v5, p1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lorg/telegram/tgnet/TLRPC$Document;

    .line 225
    sget v4, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    invoke-virtual {v4, v6, v3}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v4

    .line 226
    invoke-static {v4, v0}, Lorg/telegram/messenger/AndroidUtilities;->readRes(Ljava/io/File;I)Ljava/lang/String;

    move-result-object v4

    .line 227
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 229
    new-instance v5, Lorg/telegram/ui/Components/SlotsDrawable$$ExternalSyntheticLambda9;

    move-object v10, p1

    move v7, p2

    move-object v8, p3

    move-object v9, p4

    invoke-direct/range {v5 .. v10}, Lorg/telegram/ui/Components/SlotsDrawable$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/tgnet/TLRPC$Document;ILorg/telegram/messenger/MessageObject;Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    move v2, v3

    goto :goto_2

    :cond_6
    move-object v10, p1

    move v7, p2

    move-object v8, p3

    move-object v9, p4

    .line 235
    iget-object p1, p0, Lorg/telegram/ui/Components/SlotsDrawable;->nativePtrs:[J

    iget-object p2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->metaData:[I

    const/4 p3, 0x0

    const-string p4, "dice"

    invoke-static {v4, p4, p2, p3}, Lorg/telegram/ui/Components/RLottieDrawable;->createWithJson(Ljava/lang/String;Ljava/lang/String;[I[I)J

    move-result-wide p2

    aput-wide p2, p1, v1

    .line 236
    iget-object p1, p0, Lorg/telegram/ui/Components/SlotsDrawable;->frameCounts:[I

    iget-object p2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->metaData:[I

    aget p2, p2, v0

    aput p2, p1, v1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    move p2, v7

    move-object p3, v8

    move-object p4, v9

    move-object p1, v10

    goto :goto_0

    :cond_7
    move v7, p2

    move-object v9, p4

    if-eqz v2, :cond_8

    .line 240
    new-instance p1, Lorg/telegram/ui/Components/SlotsDrawable$$ExternalSyntheticLambda10;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/SlotsDrawable$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Components/SlotsDrawable;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    .line 243
    :cond_8
    new-instance p1, Lorg/telegram/ui/Components/SlotsDrawable$$ExternalSyntheticLambda11;

    invoke-direct {p1, p0, v7, v9}, Lorg/telegram/ui/Components/SlotsDrawable$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/Components/SlotsDrawable;ILorg/telegram/ui/Cells/ChatMessageCell;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$setDiceNumber$10(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;ILorg/telegram/messenger/MessageObject;Lorg/telegram/ui/Cells/ChatMessageCell;Z)V
    .locals 17

    move-object/from16 v0, p0

    .line 270
    iget-boolean v1, v0, Lorg/telegram/ui/Components/RLottieDrawable;->destroyAfterLoading:Z

    if-eqz v1, :cond_0

    .line 271
    new-instance v1, Lorg/telegram/ui/Components/SlotsDrawable$$ExternalSyntheticLambda4;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/SlotsDrawable$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/SlotsDrawable;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 281
    :goto_0
    iget-object v4, v0, Lorg/telegram/ui/Components/SlotsDrawable;->secondNativePtrs:[J

    array-length v5, v4

    const/4 v6, 0x2

    add-int/2addr v5, v6

    if-ge v2, v5, :cond_17

    const-wide/16 v7, 0x0

    const/4 v5, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x1

    if-gt v2, v6, :cond_10

    .line 284
    aget-wide v11, v4, v2

    cmp-long v4, v11, v7

    if-eqz v4, :cond_1

    goto/16 :goto_4

    :cond_1
    if-nez v2, :cond_6

    .line 288
    iget-object v4, v0, Lorg/telegram/ui/Components/SlotsDrawable;->left:Lorg/telegram/ui/Components/SlotsDrawable$ReelValue;

    sget-object v7, Lorg/telegram/ui/Components/SlotsDrawable$ReelValue;->bar:Lorg/telegram/ui/Components/SlotsDrawable$ReelValue;

    if-ne v4, v7, :cond_2

    const/4 v4, 0x5

    :goto_1
    move-object/from16 v7, p1

    goto/16 :goto_2

    .line 290
    :cond_2
    sget-object v7, Lorg/telegram/ui/Components/SlotsDrawable$ReelValue;->berries:Lorg/telegram/ui/Components/SlotsDrawable$ReelValue;

    if-ne v4, v7, :cond_3

    const/4 v4, 0x6

    goto :goto_1

    .line 292
    :cond_3
    sget-object v7, Lorg/telegram/ui/Components/SlotsDrawable$ReelValue;->lemon:Lorg/telegram/ui/Components/SlotsDrawable$ReelValue;

    if-ne v4, v7, :cond_4

    const/4 v4, 0x7

    goto :goto_1

    .line 294
    :cond_4
    sget-object v7, Lorg/telegram/ui/Components/SlotsDrawable$ReelValue;->seven:Lorg/telegram/ui/Components/SlotsDrawable$ReelValue;

    if-ne v4, v7, :cond_5

    move-object/from16 v7, p1

    move v4, v5

    goto/16 :goto_2

    :cond_5
    move-object/from16 v7, p1

    move v4, v9

    goto/16 :goto_2

    :cond_6
    if-ne v2, v10, :cond_b

    .line 300
    iget-object v4, v0, Lorg/telegram/ui/Components/SlotsDrawable;->center:Lorg/telegram/ui/Components/SlotsDrawable$ReelValue;

    sget-object v7, Lorg/telegram/ui/Components/SlotsDrawable$ReelValue;->bar:Lorg/telegram/ui/Components/SlotsDrawable$ReelValue;

    if-ne v4, v7, :cond_7

    const/16 v4, 0xb

    goto :goto_1

    .line 302
    :cond_7
    sget-object v7, Lorg/telegram/ui/Components/SlotsDrawable$ReelValue;->berries:Lorg/telegram/ui/Components/SlotsDrawable$ReelValue;

    if-ne v4, v7, :cond_8

    const/16 v4, 0xc

    goto :goto_1

    .line 304
    :cond_8
    sget-object v7, Lorg/telegram/ui/Components/SlotsDrawable$ReelValue;->lemon:Lorg/telegram/ui/Components/SlotsDrawable$ReelValue;

    if-ne v4, v7, :cond_9

    const/16 v4, 0xd

    goto :goto_1

    .line 306
    :cond_9
    sget-object v7, Lorg/telegram/ui/Components/SlotsDrawable$ReelValue;->seven:Lorg/telegram/ui/Components/SlotsDrawable$ReelValue;

    if-ne v4, v7, :cond_a

    const/16 v4, 0xa

    goto :goto_1

    :cond_a
    const/16 v4, 0x9

    goto :goto_1

    .line 312
    :cond_b
    iget-object v4, v0, Lorg/telegram/ui/Components/SlotsDrawable;->right:Lorg/telegram/ui/Components/SlotsDrawable$ReelValue;

    sget-object v7, Lorg/telegram/ui/Components/SlotsDrawable$ReelValue;->bar:Lorg/telegram/ui/Components/SlotsDrawable$ReelValue;

    if-ne v4, v7, :cond_c

    const/16 v4, 0x11

    goto :goto_1

    .line 314
    :cond_c
    sget-object v7, Lorg/telegram/ui/Components/SlotsDrawable$ReelValue;->berries:Lorg/telegram/ui/Components/SlotsDrawable$ReelValue;

    if-ne v4, v7, :cond_d

    const/16 v4, 0x12

    goto :goto_1

    .line 316
    :cond_d
    sget-object v7, Lorg/telegram/ui/Components/SlotsDrawable$ReelValue;->lemon:Lorg/telegram/ui/Components/SlotsDrawable$ReelValue;

    if-ne v4, v7, :cond_e

    const/16 v4, 0x13

    goto :goto_1

    .line 318
    :cond_e
    sget-object v7, Lorg/telegram/ui/Components/SlotsDrawable$ReelValue;->seven:Lorg/telegram/ui/Components/SlotsDrawable$ReelValue;

    if-ne v4, v7, :cond_f

    const/16 v4, 0x10

    goto :goto_1

    :cond_f
    const/16 v4, 0xf

    goto :goto_1

    .line 325
    :cond_10
    iget-object v4, v0, Lorg/telegram/ui/Components/SlotsDrawable;->nativePtrs:[J

    aget-wide v11, v4, v2

    cmp-long v4, v11, v7

    if-eqz v4, :cond_11

    goto/16 :goto_4

    :cond_11
    if-ne v2, v9, :cond_12

    move-object/from16 v7, p1

    move v4, v10

    goto :goto_2

    :cond_12
    move-object/from16 v7, p1

    move v4, v6

    .line 334
    :goto_2
    iget-object v8, v7, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v12, v4

    check-cast v12, Lorg/telegram/tgnet/TLRPC$Document;

    .line 335
    sget v4, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    invoke-virtual {v4, v12, v10}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v4

    .line 336
    invoke-static {v4, v1}, Lorg/telegram/messenger/AndroidUtilities;->readRes(Ljava/io/File;I)Ljava/lang/String;

    move-result-object v4

    .line 337
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 339
    new-instance v11, Lorg/telegram/ui/Components/SlotsDrawable$$ExternalSyntheticLambda5;

    move/from16 v13, p2

    move-object/from16 v14, p3

    move-object/from16 v15, p4

    move-object/from16 v16, v7

    invoke-direct/range {v11 .. v16}, Lorg/telegram/ui/Components/SlotsDrawable$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/tgnet/TLRPC$Document;ILorg/telegram/messenger/MessageObject;Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    move v3, v10

    goto :goto_4

    :cond_13
    const/4 v7, 0x0

    .line 345
    const-string v8, "dice"

    if-gt v2, v6, :cond_14

    .line 346
    iget-object v5, v0, Lorg/telegram/ui/Components/SlotsDrawable;->secondNativePtrs:[J

    iget-object v6, v0, Lorg/telegram/ui/Components/RLottieDrawable;->metaData:[I

    invoke-static {v4, v8, v6, v7}, Lorg/telegram/ui/Components/RLottieDrawable;->createWithJson(Ljava/lang/String;Ljava/lang/String;[I[I)J

    move-result-wide v6

    aput-wide v6, v5, v2

    .line 347
    iget-object v4, v0, Lorg/telegram/ui/Components/SlotsDrawable;->secondFrameCounts:[I

    iget-object v5, v0, Lorg/telegram/ui/Components/RLottieDrawable;->metaData:[I

    aget v5, v5, v1

    aput v5, v4, v2

    goto :goto_4

    .line 349
    :cond_14
    iget-object v6, v0, Lorg/telegram/ui/Components/SlotsDrawable;->nativePtrs:[J

    if-ne v2, v9, :cond_15

    move v10, v1

    goto :goto_3

    :cond_15
    move v10, v5

    :goto_3
    iget-object v11, v0, Lorg/telegram/ui/Components/RLottieDrawable;->metaData:[I

    invoke-static {v4, v8, v11, v7}, Lorg/telegram/ui/Components/RLottieDrawable;->createWithJson(Ljava/lang/String;Ljava/lang/String;[I[I)J

    move-result-wide v7

    aput-wide v7, v6, v10

    .line 350
    iget-object v4, v0, Lorg/telegram/ui/Components/SlotsDrawable;->frameCounts:[I

    if-ne v2, v9, :cond_16

    move v5, v1

    :cond_16
    iget-object v6, v0, Lorg/telegram/ui/Components/RLottieDrawable;->metaData:[I

    aget v6, v6, v1

    aput v6, v4, v5

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_17
    if-eqz v3, :cond_18

    .line 355
    new-instance v1, Lorg/telegram/ui/Components/SlotsDrawable$$ExternalSyntheticLambda6;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/SlotsDrawable$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/SlotsDrawable;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    .line 358
    :cond_18
    new-instance v1, Lorg/telegram/ui/Components/SlotsDrawable$$ExternalSyntheticLambda7;

    move/from16 v13, p2

    move-object/from16 v15, p4

    move/from16 v2, p5

    invoke-direct {v1, v0, v2, v13, v15}, Lorg/telegram/ui/Components/SlotsDrawable$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/SlotsDrawable;ZILorg/telegram/ui/Cells/ChatMessageCell;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$setDiceNumber$6()V
    .locals 1

    const/4 v0, 0x0

    .line 272
    iput-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->secondLoadingInBackground:Z

    .line 273
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->loadingInBackground:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->destroyAfterLoading:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 274
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/SlotsDrawable;->recycle(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$setDiceNumber$8()V
    .locals 1

    const/4 v0, 0x0

    .line 355
    iput-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->secondLoadingInBackground:Z

    return-void
.end method

.method private synthetic lambda$setDiceNumber$9(ZILorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 4

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 359
    iget-object p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->nextRenderingBitmap:Landroid/graphics/Bitmap;

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->loadFrameTask:Ljava/lang/Runnable;

    if-nez p1, :cond_0

    const/4 p1, 0x2

    .line 360
    iput p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->isDice:I

    .line 361
    iput-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->setLastFrame:Z

    :cond_0
    const/4 p1, 0x0

    .line 363
    iput-boolean p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->secondLoadingInBackground:Z

    .line 364
    iget-boolean v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->loadingInBackground:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->destroyAfterLoading:Z

    if-eqz v1, :cond_1

    .line 365
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/SlotsDrawable;->recycle(Z)V

    return-void

    .line 368
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/SlotsDrawable;->secondNativePtrs:[J

    aget-wide v2, v1, p1

    iput-wide v2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->secondNativePtr:J

    .line 369
    invoke-static {p2}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object p1

    invoke-virtual {p1, p3}, Lorg/telegram/messenger/DownloadController;->removeLoadingFileObserver(Lorg/telegram/messenger/DownloadController$FileDownloadProgressListener;)V

    .line 370
    iget-object p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->metaData:[I

    aget p1, p1, v0

    int-to-float p1, p1

    const/high16 p2, 0x447a0000    # 1000.0f

    div-float/2addr p2, p1

    float-to-int p1, p2

    const/16 p2, 0x10

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->timeBetweenFrames:I

    .line 371
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RLottieDrawable;->scheduleNextGetFrame()Z

    .line 372
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RLottieDrawable;->invalidateInternal()V

    return-void
.end method

.method private reelValue(I)Lorg/telegram/ui/Components/SlotsDrawable$ReelValue;
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 160
    sget-object p1, Lorg/telegram/ui/Components/SlotsDrawable$ReelValue;->seven:Lorg/telegram/ui/Components/SlotsDrawable$ReelValue;

    return-object p1

    .line 157
    :cond_0
    sget-object p1, Lorg/telegram/ui/Components/SlotsDrawable$ReelValue;->lemon:Lorg/telegram/ui/Components/SlotsDrawable$ReelValue;

    return-object p1

    .line 155
    :cond_1
    sget-object p1, Lorg/telegram/ui/Components/SlotsDrawable$ReelValue;->berries:Lorg/telegram/ui/Components/SlotsDrawable$ReelValue;

    return-object p1

    .line 153
    :cond_2
    sget-object p1, Lorg/telegram/ui/Components/SlotsDrawable$ReelValue;->bar:Lorg/telegram/ui/Components/SlotsDrawable$ReelValue;

    return-object p1
.end method


# virtual methods
.method protected decodeFrameFinishedInternal()V
    .locals 7

    .line 435
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->destroyWhenDone:Z

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_3

    .line 436
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RLottieDrawable;->checkRunningTasks()V

    .line 437
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->loadFrameTask:Ljava/lang/Runnable;

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->cacheGenerateTask:Ljava/lang/Runnable;

    if-nez v0, :cond_3

    const/4 v0, 0x0

    move v3, v0

    .line 438
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/Components/SlotsDrawable;->nativePtrs:[J

    array-length v5, v4

    if-ge v3, v5, :cond_1

    .line 439
    aget-wide v5, v4, v3

    cmp-long v4, v5, v1

    if-eqz v4, :cond_0

    .line 440
    invoke-static {v5, v6}, Lorg/telegram/ui/Components/RLottieDrawable;->destroy(J)V

    .line 441
    iget-object v4, p0, Lorg/telegram/ui/Components/SlotsDrawable;->nativePtrs:[J

    aput-wide v1, v4, v3

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 444
    :cond_1
    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/Components/SlotsDrawable;->secondNativePtrs:[J

    array-length v4, v3

    if-ge v0, v4, :cond_3

    .line 445
    aget-wide v4, v3, v0

    cmp-long v3, v4, v1

    if-eqz v3, :cond_2

    .line 446
    invoke-static {v4, v5}, Lorg/telegram/ui/Components/RLottieDrawable;->destroy(J)V

    .line 447
    iget-object v3, p0, Lorg/telegram/ui/Components/SlotsDrawable;->secondNativePtrs:[J

    aput-wide v1, v3, v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 452
    :cond_3
    iget-wide v3, p0, Lorg/telegram/ui/Components/RLottieDrawable;->nativePtr:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_4

    iget-wide v3, p0, Lorg/telegram/ui/Components/RLottieDrawable;->secondNativePtr:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_4

    .line 453
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RLottieDrawable;->recycleResources()V

    return-void

    :cond_4
    const/4 v0, 0x1

    .line 456
    iput-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->waitingForNextTask:Z

    .line 457
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RLottieDrawable;->hasParentView()Z

    move-result v0

    if-nez v0, :cond_5

    .line 458
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RLottieDrawable;->stop()V

    .line 460
    :cond_5
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RLottieDrawable;->scheduleNextGetFrame()Z

    return-void
.end method

.method public recycle(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 380
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/SlotsDrawable;->recycle(ZZ)V

    return-void
.end method

.method public recycle(ZZ)V
    .locals 8

    const/4 v0, 0x0

    .line 385
    iput-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->isRunning:Z

    const/4 v1, 0x1

    .line 386
    iput-boolean v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->isRecycled:Z

    if-eqz p2, :cond_0

    .line 389
    iput-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->loadingInBackground:Z

    .line 390
    iput-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->secondLoadingInBackground:Z

    .line 393
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RLottieDrawable;->checkRunningTasks()V

    .line 394
    iget-boolean p2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->loadingInBackground:Z

    if-nez p2, :cond_9

    iget-boolean p2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->secondLoadingInBackground:Z

    if-eqz p2, :cond_1

    goto :goto_3

    .line 396
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->loadFrameTask:Ljava/lang/Runnable;

    if-nez p2, :cond_8

    iget-object p2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->cacheGenerateTask:Ljava/lang/Runnable;

    if-nez p2, :cond_8

    .line 397
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    move v1, v0

    .line 399
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/SlotsDrawable;->nativePtrs:[J

    array-length v3, v2

    const-wide/16 v4, 0x0

    if-ge v1, v3, :cond_3

    .line 400
    aget-wide v6, v2, v1

    cmp-long v2, v6, v4

    if-eqz v2, :cond_2

    .line 401
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    iget-object v2, p0, Lorg/telegram/ui/Components/SlotsDrawable;->nativePtrs:[J

    aput-wide v4, v2, v1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 405
    :cond_3
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Components/SlotsDrawable;->secondNativePtrs:[J

    array-length v2, v1

    if-ge v0, v2, :cond_5

    .line 406
    aget-wide v2, v1, v0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_4

    .line 407
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 408
    iget-object v1, p0, Lorg/telegram/ui/Components/SlotsDrawable;->secondNativePtrs:[J

    aput-wide v4, v1, v0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 412
    :cond_5
    iput-wide v4, p0, Lorg/telegram/ui/Components/RLottieDrawable;->nativePtr:J

    .line 413
    iput-wide v4, p0, Lorg/telegram/ui/Components/RLottieDrawable;->secondNativePtr:J

    .line 415
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 416
    new-instance v0, Lorg/telegram/ui/Components/SlotsDrawable$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2}, Lorg/telegram/ui/Components/SlotsDrawable$$ExternalSyntheticLambda0;-><init>(Ljava/util/ArrayList;)V

    if-eqz p1, :cond_6

    .line 422
    invoke-static {v0}, Lorg/telegram/messenger/DispatchQueuePoolBackground;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 424
    :cond_6
    sget-object p1, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 427
    :cond_7
    :goto_2
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RLottieDrawable;->recycleResources()V

    return-void

    .line 429
    :cond_8
    iput-boolean v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->destroyWhenDone:Z

    return-void

    .line 395
    :cond_9
    :goto_3
    iput-boolean v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->destroyAfterLoading:Z

    return-void
.end method

.method public setBaseDice(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)Z
    .locals 8

    .line 191
    iget-wide v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->nativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->loadingInBackground:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 194
    :cond_0
    iput-boolean v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->loadingInBackground:Z

    .line 195
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v6

    .line 196
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    iget v5, v0, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    .line 197
    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/ui/Components/SlotsDrawable$$ExternalSyntheticLambda1;

    move-object v3, p0

    move-object v7, p1

    move-object v4, p2

    invoke-direct/range {v2 .. v7}, Lorg/telegram/ui/Components/SlotsDrawable$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/SlotsDrawable;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;ILorg/telegram/messenger/MessageObject;Lorg/telegram/ui/Cells/ChatMessageCell;)V

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return v1
.end method

.method public setDiceNumber(Lorg/telegram/ui/Cells/ChatMessageCell;ILorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;Z)Z
    .locals 9

    .line 261
    iget-wide v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->secondNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->secondLoadingInBackground:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 264
    :cond_0
    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/SlotsDrawable;->init(I)V

    .line 265
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v6

    .line 266
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p2

    iget v5, p2, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    .line 268
    iput-boolean v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->secondLoadingInBackground:Z

    .line 269
    sget-object p2, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/ui/Components/SlotsDrawable$$ExternalSyntheticLambda3;

    move-object v3, p0

    move-object v7, p1

    move-object v4, p3

    move v8, p4

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/SlotsDrawable$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/SlotsDrawable;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;ILorg/telegram/messenger/MessageObject;Lorg/telegram/ui/Cells/ChatMessageCell;Z)V

    invoke-virtual {p2, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return v1
.end method
