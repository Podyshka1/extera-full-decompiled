.class public Lorg/telegram/ui/Components/AnimatedEmojiDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;,
        Lorg/telegram/ui/Components/AnimatedEmojiDrawable$ReceivedDocument;,
        Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;,
        Lorg/telegram/ui/Components/AnimatedEmojiDrawable$WrapSizeDrawable;
    }
.end annotation


# static fields
.field private static LOG_MEMORY_LEAK:Z = false

.field public static attachedCount:I

.field public static attachedDrawable:Ljava/util/ArrayList;

.field private static disabledToggleableAnimations:Z

.field private static dominantColors:Ljava/util/HashMap;

.field private static fetchers:Ljava/util/HashMap;

.field private static globalEmojiCache:Landroid/util/SparseArray;

.field private static liteModeKeyboard:Z

.field private static liteModeReactions:Z


# instance fields
.field private absolutePath:Ljava/lang/String;

.field private alpha:F

.field private attached:Z

.field private cacheType:I

.field private canOverrideColorCached:Ljava/lang/Boolean;

.field private colorFilterToSet:Landroid/graphics/ColorFilter;

.field private currentAccount:I

.field private document:Lorg/telegram/tgnet/TLRPC$Document;

.field private documentId:J

.field private holders:Ljava/util/ArrayList;

.field private imageReceiver:Lorg/telegram/messenger/ImageReceiver;

.field private imageReceiverEmojiThumb:Z

.field private isDefaultStatusEmojiCached:Ljava/lang/Boolean;

.field public preloading:Z

.field public sizedp:I

.field private views:Ljava/util/ArrayList;


# direct methods
.method public static synthetic $r8$lambda$38Fbn7_6zT0EnPnT6cxViuoM8mY(Lorg/telegram/ui/Components/AnimatedEmojiDrawable;Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->lambda$new$1(Lorg/telegram/tgnet/TLRPC$Document;)V

    return-void
.end method

.method public static synthetic $r8$lambda$StO9BqnN4jH_eSHzNAWRB2X05VQ(Lorg/telegram/ui/Components/AnimatedEmojiDrawable;Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->lambda$new$0(Lorg/telegram/tgnet/TLRPC$Document;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetimageReceiver(Lorg/telegram/ui/Components/AnimatedEmojiDrawable;)Lorg/telegram/messenger/ImageReceiver;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdateAttachState(Lorg/telegram/ui/Components/AnimatedEmojiDrawable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->updateAttachState()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateAutoRepeat(Lorg/telegram/ui/Components/AnimatedEmojiDrawable;Lorg/telegram/messenger/ImageReceiver;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->updateAutoRepeat(Lorg/telegram/messenger/ImageReceiver;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smupdateLiteModeValues()V
    .locals 0

    .line 0
    invoke-static {}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->updateLiteModeValues()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 491
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 456
    iput v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->alpha:F

    const/4 v0, 0x0

    .line 931
    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->canOverrideColorCached:Ljava/lang/Boolean;

    .line 946
    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->isDefaultStatusEmojiCached:Ljava/lang/Boolean;

    .line 492
    iput p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->cacheType:I

    .line 493
    iput p2, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->currentAccount:I

    .line 494
    invoke-direct {p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->updateSize()V

    .line 495
    invoke-static {}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->updateLiteModeValues()V

    return-void
.end method

.method public constructor <init>(IIJ)V
    .locals 1

    .line 458
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 456
    iput v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->alpha:F

    const/4 v0, 0x0

    .line 931
    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->canOverrideColorCached:Ljava/lang/Boolean;

    .line 946
    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->isDefaultStatusEmojiCached:Ljava/lang/Boolean;

    .line 459
    iput p2, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->currentAccount:I

    .line 460
    iput p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->cacheType:I

    .line 461
    invoke-direct {p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->updateSize()V

    .line 462
    iput-wide p3, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->documentId:J

    .line 463
    invoke-static {p2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getDocumentFetcher(I)Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/AnimatedEmojiDrawable;)V

    invoke-virtual {p1, p3, p4, p2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;->fetchDocument(JLorg/telegram/ui/Components/AnimatedEmojiDrawable$ReceivedDocument;)V

    return-void
.end method

.method public constructor <init>(IIJLjava/lang/String;)V
    .locals 1

    .line 469
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 456
    iput v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->alpha:F

    const/4 v0, 0x0

    .line 931
    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->canOverrideColorCached:Ljava/lang/Boolean;

    .line 946
    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->isDefaultStatusEmojiCached:Ljava/lang/Boolean;

    .line 470
    iput p2, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->currentAccount:I

    .line 471
    iput p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->cacheType:I

    .line 472
    invoke-direct {p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->updateSize()V

    .line 473
    iput-wide p3, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->documentId:J

    .line 474
    iput-object p5, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->absolutePath:Ljava/lang/String;

    .line 475
    invoke-static {p2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getDocumentFetcher(I)Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/AnimatedEmojiDrawable;)V

    invoke-virtual {p1, p3, p4, p2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;->fetchDocument(JLorg/telegram/ui/Components/AnimatedEmojiDrawable$ReceivedDocument;)V

    return-void
.end method

.method public constructor <init>(IILorg/telegram/tgnet/TLRPC$Document;)V
    .locals 1

    .line 481
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 456
    iput v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->alpha:F

    const/4 v0, 0x0

    .line 931
    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->canOverrideColorCached:Ljava/lang/Boolean;

    .line 946
    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->isDefaultStatusEmojiCached:Ljava/lang/Boolean;

    .line 482
    iput p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->cacheType:I

    .line 483
    iput p2, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->currentAccount:I

    .line 484
    iput-object p3, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 485
    invoke-direct {p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->updateSize()V

    .line 486
    invoke-static {}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->updateLiteModeValues()V

    const/4 p1, 0x0

    .line 487
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->initDocument(Z)V

    return-void
.end method

.method private createImageReceiver()V
    .locals 3

    .line 552
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-nez v0, :cond_0

    .line 553
    new-instance v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$1;-><init>(Lorg/telegram/ui/Components/AnimatedEmojiDrawable;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 571
    iget v1, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->currentAccount:I

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setCurrentAccount(I)V

    .line 572
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setAllowLoadingOnAttachedOnly(Z)V

    .line 573
    iget v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->cacheType:I

    const/16 v2, 0xc

    if-ne v0, v2, :cond_0

    .line 574
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iput-boolean v1, v0, Lorg/telegram/messenger/ImageReceiver;->ignoreNotifications:Z

    :cond_0
    return-void
.end method

.method public static findDocument(IJ)Lorg/telegram/tgnet/TLRPC$Document;
    .locals 1

    .line 427
    invoke-static {p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getDocumentFetcher(I)Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 428
    invoke-static {p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;->-$$Nest$fgetemojiDocumentsCache(Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;)Ljava/util/HashMap;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 431
    :cond_0
    invoke-static {p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;->-$$Nest$fgetemojiDocumentsCache(Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;)Ljava/util/HashMap;

    move-result-object p0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/telegram/tgnet/TLRPC$Document;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static findStickerSet(IJ)Lorg/telegram/tgnet/TLRPC$InputStickerSet;
    .locals 1

    .line 435
    invoke-static {p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getDocumentFetcher(I)Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 436
    invoke-static {p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;->-$$Nest$fgetemojiDocumentsCache(Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;)Ljava/util/HashMap;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 439
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;->findStickerSet(J)Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getCacheTypeForEnterView()I
    .locals 1

    .line 133
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x2

    return v0
.end method

.method public static getDocumentFetcher(I)Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;
    .locals 3

    .line 166
    sget-object v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->fetchers:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 167
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->fetchers:Ljava/util/HashMap;

    .line 169
    :cond_0
    sget-object v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->fetchers:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;

    if-nez v0, :cond_1

    .line 171
    sget-object v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->fetchers:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2

    :cond_1
    return-object v0
.end method

.method public static getDominantColor(Lorg/telegram/ui/Components/AnimatedEmojiDrawable;)I
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1012
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getDocumentId()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_1

    return v0

    .line 1016
    :cond_1
    sget-object v3, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->dominantColors:Ljava/util/HashMap;

    if-nez v3, :cond_2

    .line 1017
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->dominantColors:Ljava/util/HashMap;

    .line 1019
    :cond_2
    sget-object v3, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->dominantColors:Ljava/util/HashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-nez v3, :cond_3

    .line 1021
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 1022
    sget-object v3, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->dominantColors:Ljava/util/HashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->getDominantColor(Landroid/graphics/Bitmap;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v3, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, p0

    :cond_3
    if-nez v3, :cond_4

    return v0

    .line 1025
    :cond_4
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private initDocument(Z)V
    .locals 35

    move-object/from16 v0, p0

    .line 585
    iget-object v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v1, :cond_2f

    iget-object v2, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v2, :cond_0

    iget-boolean v2, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiverEmojiThumb:Z

    if-nez v2, :cond_0

    if-eqz p1, :cond_2f

    :cond_0
    iget v2, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->cacheType:I

    const/16 v3, 0x14

    const/16 v4, 0x15

    if-eq v2, v3, :cond_1

    if-ne v2, v4, :cond_2

    :cond_1
    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_documentEmpty;

    if-eqz v1, :cond_2

    goto/16 :goto_12

    :cond_2
    const/4 v1, 0x0

    .line 588
    iput-boolean v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiverEmojiThumb:Z

    .line 589
    invoke-direct {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->createImageReceiver()V

    .line 590
    iget-object v2, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->colorFilterToSet:Landroid/graphics/ColorFilter;

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->canOverrideColor()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 591
    iget-object v2, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v5, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->colorFilterToSet:Landroid/graphics/ColorFilter;

    invoke-virtual {v2, v5}, Lorg/telegram/messenger/ImageReceiver;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 593
    :cond_3
    iget v2, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->cacheType:I

    const/4 v5, 0x2

    const/16 v6, 0xc

    const-string v7, "_"

    if-eqz v2, :cond_5

    if-ne v2, v6, :cond_4

    move v2, v5

    .line 598
    :cond_4
    iget-object v8, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lorg/telegram/messenger/ImageReceiver;->setUniqKeyPrefix(Ljava/lang/String;)V

    .line 600
    :cond_5
    iget-object v2, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Lorg/telegram/messenger/ImageReceiver;->setVideoThumbIsSame(Z)V

    .line 601
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v2

    const/4 v9, 0x3

    const/16 v10, 0x19

    const/4 v11, 0x5

    if-nez v2, :cond_6

    iget v2, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->cacheType:I

    if-eq v2, v11, :cond_a

    :cond_6
    iget v2, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->cacheType:I

    if-eq v2, v5, :cond_7

    if-ne v2, v10, :cond_8

    :cond_7
    sget-boolean v12, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->liteModeKeyboard:Z

    if-eqz v12, :cond_a

    :cond_8
    if-ne v2, v9, :cond_9

    sget-boolean v2, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->liteModeReactions:Z

    if-nez v2, :cond_9

    goto :goto_0

    :cond_9
    move v2, v1

    goto :goto_1

    :cond_a
    :goto_0
    move v2, v8

    .line 602
    :goto_1
    iget v12, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->cacheType:I

    const/16 v13, 0xd

    const/16 v14, 0x10

    if-eq v12, v13, :cond_b

    if-ne v12, v14, :cond_c

    :cond_b
    move v2, v8

    :cond_c
    const/16 v15, 0x18

    if-ne v12, v15, :cond_d

    move v2, v1

    .line 608
    :cond_d
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->sizedp:I

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->sizedp:I

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 609
    iget v12, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->cacheType:I

    if-ne v12, v6, :cond_e

    .line 610
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_d_nostream"

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 612
    :cond_e
    iget v12, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->cacheType:I

    const/16 v15, 0xf

    const/16 v11, 0xe

    const/16 v9, 0x11

    const/16 v13, 0x8

    if-eq v12, v9, :cond_10

    if-eq v12, v15, :cond_10

    if-eq v12, v11, :cond_10

    if-eq v12, v13, :cond_10

    if-ne v12, v8, :cond_f

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v12

    if-ge v12, v5, :cond_10

    :cond_f
    iget v12, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->cacheType:I

    if-eq v12, v6, :cond_10

    .line 613
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_pcache"

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 615
    :cond_10
    iget v12, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->cacheType:I

    const/16 v6, 0x1a

    if-eq v12, v9, :cond_11

    if-eqz v12, :cond_11

    if-eq v12, v6, :cond_11

    if-eq v12, v8, :cond_11

    if-eq v12, v11, :cond_11

    if-eq v12, v15, :cond_11

    const/16 v15, 0x13

    if-eq v12, v15, :cond_11

    if-eq v12, v3, :cond_11

    if-eq v12, v4, :cond_11

    .line 616
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_compress"

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 618
    :cond_11
    iget v12, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->cacheType:I

    if-ne v12, v13, :cond_12

    .line 619
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "firstframe"

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 625
    :cond_12
    iget-object v12, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v12, v12, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    const/16 v15, 0x5a

    invoke-static {v12, v15}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v12

    .line 626
    iget-object v15, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v15, v15, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    const-string/jumbo v6, "video/webm"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    const v14, 0x3e4ccccd    # 0.2f

    if-eqz v15, :cond_13

    .line 627
    iget-object v5, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v5}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v5

    .line 628
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "g"

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 629
    iget-object v15, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v15, v15, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayIcon:I

    invoke-static {v15, v11, v14, v8}, Lorg/telegram/messenger/DocumentObject;->getSvgThumb(Ljava/util/ArrayList;IFZ)Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    move-result-object v11

    :goto_2
    move-object/from16 v21, v1

    move-object/from16 v20, v5

    goto/16 :goto_6

    .line 631
    :cond_13
    iget-object v11, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    const-string v15, "application/x-tgsticker"

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const/16 v15, 0x200

    if-eqz v11, :cond_19

    .line 632
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget v13, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->cacheType:I

    if-eqz v13, :cond_14

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget v9, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->cacheType:I

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_3

    :cond_14
    const-string v9, ""

    :goto_3
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->documentId:J

    invoke-virtual {v11, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "@"

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 633
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v4

    if-nez v4, :cond_16

    iget v4, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->cacheType:I

    if-eq v4, v5, :cond_16

    if-eq v4, v10, :cond_16

    const/16 v5, 0x16

    if-eq v4, v5, :cond_16

    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/telegram/messenger/ImageLoader;->hasLottieMemCache(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_15

    goto :goto_4

    :cond_15
    const/4 v11, 0x0

    goto :goto_5

    .line 634
    :cond_16
    :goto_4
    iget v3, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->cacheType:I

    const/16 v4, 0x16

    if-ne v3, v4, :cond_17

    const v14, 0x3f4ccccd    # 0.8f

    .line 635
    :cond_17
    iget-object v3, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayIcon:I

    invoke-static {v3, v4, v14}, Lorg/telegram/messenger/DocumentObject;->getSvgThumb(Ljava/util/ArrayList;IF)Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    move-result-object v3

    if-eqz v3, :cond_18

    .line 636
    iget-object v4, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v4, v8}, Lorg/telegram/messenger/MessageObject;->isAnimatedStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;Z)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 637
    invoke-virtual {v3, v15, v15}, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->overrideWidthAndHeight(II)V

    :cond_18
    move-object v11, v3

    .line 641
    :goto_5
    iget-object v3, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v3}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v5

    goto/16 :goto_2

    .line 644
    :cond_19
    iget-object v3, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayIcon:I

    invoke-static {v3, v4, v14, v8}, Lorg/telegram/messenger/DocumentObject;->getSvgThumb(Ljava/util/ArrayList;IFZ)Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    move-result-object v11

    if-eqz v11, :cond_1a

    .line 645
    iget-object v3, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v3, v8}, Lorg/telegram/messenger/MessageObject;->isAnimatedStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;Z)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 646
    invoke-virtual {v11, v15, v15}, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->overrideWidthAndHeight(II)V

    :cond_1a
    move-object/from16 v21, v1

    const/16 v20, 0x0

    .line 652
    :goto_6
    iget v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->cacheType:I

    const/16 v9, 0x14

    if-eq v1, v9, :cond_1c

    const/16 v13, 0x15

    if-ne v1, v13, :cond_1b

    goto :goto_7

    :cond_1b
    const/4 v3, 0x0

    goto :goto_8

    .line 653
    :cond_1c
    :goto_7
    iget-object v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->document:Lorg/telegram/tgnet/TLRPC$Document;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lorg/telegram/messenger/MessageObject;->findAnimatedEmojiEmoticon(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/Emoji;->getEmojiDrawable(Ljava/lang/CharSequence;)Lorg/telegram/messenger/Emoji$EmojiDrawable;

    move-result-object v1

    if-eqz v1, :cond_1d

    move-object/from16 v24, v1

    goto :goto_9

    :cond_1d
    :goto_8
    move-object/from16 v24, v11

    .line 659
    :goto_9
    iget-object v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->absolutePath:Ljava/lang/String;

    if-eqz v1, :cond_1e

    .line 660
    iget-object v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    new-instance v16, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    new-instance v2, Ljava/io/File;

    iget-object v3, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->absolutePath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget v3, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->currentAccount:I

    const/16 v30, 0x200

    const/16 v31, 0x0

    const/16 v18, 0x1

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const-wide/16 v25, 0x0

    const/16 v28, 0x1

    const/16 v29, 0x200

    move-object/from16 v17, v2

    move/from16 v27, v3

    invoke-direct/range {v16 .. v31}, Lorg/telegram/ui/Components/AnimatedFileDrawable;-><init>(Ljava/io/File;ZJILorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/ImageLocation;Ljava/lang/Object;JIZIILorg/telegram/messenger/utils/BitmapsCache$CacheOptions;)V

    move-object/from16 v2, v16

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_d

    .line 661
    :cond_1e
    iget v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->cacheType:I

    const/16 v4, 0x8

    if-ne v1, v4, :cond_1f

    .line 662
    iget-object v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v2, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v3, v2, Lorg/telegram/tgnet/TLRPC$Document;->size:J

    const/16 v27, 0x0

    const/16 v29, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v17, v1

    move-object/from16 v28, v2

    move-wide/from16 v25, v3

    invoke-virtual/range {v17 .. v29}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    goto/16 :goto_d

    :cond_1f
    if-nez v2, :cond_20

    .line 664
    sget-boolean v2, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->liteModeKeyboard:Z

    if-nez v2, :cond_21

    const/16 v2, 0xe

    if-eq v1, v2, :cond_21

    :cond_20
    move-object/from16 v2, v21

    const/16 v4, 0x10

    goto :goto_b

    :cond_21
    const/16 v2, 0x11

    if-ne v1, v2, :cond_22

    .line 679
    iget-object v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v12, v1}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v9

    move-object/from16 v22, v9

    goto :goto_a

    :cond_22
    move-object/from16 v22, v3

    .line 681
    :goto_a
    iget-object v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v2, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v12, v2}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->sizedp:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->sizedp:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v5, v4, Lorg/telegram/tgnet/TLRPC$Document;->size:J

    const/16 v27, 0x0

    const/16 v29, 0x1

    const/16 v23, 0x0

    move-object/from16 v17, v1

    move-object/from16 v28, v4

    move-wide/from16 v25, v5

    move-object/from16 v18, v20

    move-object/from16 v19, v21

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    invoke-virtual/range {v17 .. v29}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    goto/16 :goto_d

    :goto_b
    if-ne v1, v4, :cond_23

    .line 667
    iget-object v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v12, v1}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v9

    move-object/from16 v25, v9

    goto :goto_c

    :cond_23
    move-object/from16 v25, v3

    .line 669
    :goto_c
    iget-object v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 670
    iget-object v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v2, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v12, v2}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->sizedp:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->sizedp:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    iget-object v3, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v4, v3, Lorg/telegram/tgnet/TLRPC$Document;->size:J

    const/16 v32, 0x0

    const/16 v34, 0x1

    const/16 v23, 0x0

    move-object/from16 v27, v24

    const/16 v24, 0x0

    const/16 v28, 0x0

    move-object/from16 v22, v1

    move-object/from16 v33, v3

    move-wide/from16 v30, v4

    move-object/from16 v29, v27

    move-object/from16 v27, v25

    move-object/from16 v25, v2

    invoke-virtual/range {v22 .. v34}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    goto :goto_d

    .line 671
    :cond_24
    iget-object v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v1, v8}, Lorg/telegram/messenger/MessageObject;->isAnimatedStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;Z)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 672
    iget-object v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_firstframe"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v4, v3, Lorg/telegram/tgnet/TLRPC$Document;->size:J

    const/16 v30, 0x0

    const/16 v32, 0x1

    const/16 v26, 0x0

    move-object/from16 v22, v1

    move-object/from16 v31, v3

    move-wide/from16 v28, v4

    move-object/from16 v23, v20

    move-object/from16 v27, v24

    move-object/from16 v24, v2

    invoke-virtual/range {v22 .. v32}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    goto :goto_d

    .line 674
    :cond_25
    iget-object v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v2, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v12, v2}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v23

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->sizedp:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->sizedp:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v4, v3, Lorg/telegram/tgnet/TLRPC$Document;->size:J

    const/16 v30, 0x0

    const/16 v32, 0x1

    const/16 v26, 0x0

    move-object/from16 v22, v1

    move-object/from16 v31, v3

    move-wide/from16 v28, v4

    move-object/from16 v27, v24

    move-object/from16 v24, v2

    invoke-virtual/range {v22 .. v32}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    .line 685
    :goto_d
    iget-object v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->updateAutoRepeat(Lorg/telegram/messenger/ImageReceiver;)V

    .line 687
    iget v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->cacheType:I

    const/16 v2, 0xd

    if-eq v1, v2, :cond_26

    const/16 v4, 0x10

    if-eq v1, v4, :cond_26

    const/4 v2, 0x3

    if-eq v1, v2, :cond_26

    const/4 v2, 0x5

    if-eq v1, v2, :cond_26

    const/4 v2, 0x4

    if-eq v1, v2, :cond_26

    const/16 v2, 0x18

    if-ne v1, v2, :cond_27

    .line 688
    :cond_26
    iget-object v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setLayerNum(I)V

    .line 690
    :cond_27
    iget v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->cacheType:I

    const/16 v2, 0x9

    if-eq v1, v2, :cond_28

    const/16 v13, 0x15

    if-ne v1, v13, :cond_29

    .line 691
    :cond_28
    iget-object v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/16 v2, 0x1a00

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setLayerNum(I)V

    .line 693
    :cond_29
    iget-object v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v8}, Lorg/telegram/messenger/ImageReceiver;->setAspectFit(Z)V

    .line 694
    iget v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->cacheType:I

    const/16 v2, 0xc

    if-eq v1, v2, :cond_2b

    const/16 v2, 0x1a

    if-eq v1, v2, :cond_2b

    const/16 v2, 0x12

    if-eq v1, v2, :cond_2b

    const/16 v4, 0x8

    if-eq v1, v4, :cond_2b

    const/4 v2, 0x6

    if-eq v1, v2, :cond_2b

    const/4 v2, 0x5

    if-eq v1, v2, :cond_2b

    if-ne v1, v10, :cond_2a

    sget-boolean v1, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->disabledToggleableAnimations:Z

    if-eqz v1, :cond_2a

    goto :goto_e

    .line 699
    :cond_2a
    iget-object v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v8}, Lorg/telegram/messenger/ImageReceiver;->setAllowStartLottieAnimation(Z)V

    .line 700
    iget-object v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v8}, Lorg/telegram/messenger/ImageReceiver;->setAllowStartAnimation(Z)V

    .line 701
    iget-object v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v8}, Lorg/telegram/messenger/ImageReceiver;->setAutoRepeat(I)V

    const/4 v2, 0x0

    goto :goto_f

    .line 695
    :cond_2b
    :goto_e
    iget-object v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setAllowStartAnimation(Z)V

    .line 696
    iget-object v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setAllowStartLottieAnimation(Z)V

    .line 697
    iget-object v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setAutoRepeat(I)V

    .line 703
    :goto_f
    iget-object v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v8}, Lorg/telegram/messenger/ImageReceiver;->setAllowDecodeSingleFrame(Z)V

    .line 705
    iget v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->cacheType:I

    const/4 v3, 0x5

    if-eq v1, v3, :cond_2e

    const/4 v3, 0x6

    if-ne v1, v3, :cond_2c

    goto :goto_10

    :cond_2c
    const/16 v3, 0x18

    if-ne v1, v3, :cond_2d

    const/high16 v1, 0x41600000    # 14.0f

    .line 708
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    goto :goto_11

    :cond_2d
    move v1, v2

    goto :goto_11

    :cond_2e
    :goto_10
    const/high16 v1, 0x40c00000    # 6.0f

    .line 706
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    .line 710
    :goto_11
    iget-object v2, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2, v1}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 711
    invoke-direct {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->updateAttachState()V

    .line 712
    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->invalidate()V

    :cond_2f
    :goto_12
    return-void
.end method

.method public static isDefaultStatusEmoji(Lorg/telegram/ui/Components/AnimatedEmojiDrawable;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 970
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->isDefaultStatusEmoji()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$new$0(Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 0

    .line 464
    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->document:Lorg/telegram/tgnet/TLRPC$Document;

    const/4 p1, 0x0

    .line 465
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->initDocument(Z)V

    return-void
.end method

.method private synthetic lambda$new$1(Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 0

    .line 476
    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->document:Lorg/telegram/tgnet/TLRPC$Document;

    const/4 p1, 0x0

    .line 477
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->initDocument(Z)V

    return-void
.end method

.method public static make(IIJ)Lorg/telegram/ui/Components/AnimatedEmojiDrawable;
    .locals 1

    const/4 v0, 0x0

    .line 95
    invoke-static {p0, p1, p2, p3, v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->make(IIJLjava/lang/String;)Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    move-result-object p0

    return-object p0
.end method

.method public static make(IIJLjava/lang/String;)Lorg/telegram/ui/Components/AnimatedEmojiDrawable;
    .locals 8

    .line 100
    sget-object v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->globalEmojiCache:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->globalEmojiCache:Landroid/util/SparseArray;

    .line 103
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {v2}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    .line 104
    sget-object v1, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->globalEmojiCache:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/LongSparseArray;

    if-nez v1, :cond_1

    .line 106
    sget-object v1, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->globalEmojiCache:Landroid/util/SparseArray;

    new-instance v2, Landroid/util/LongSparseArray;

    invoke-direct {v2}, Landroid/util/LongSparseArray;-><init>()V

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v1, v2

    .line 108
    :cond_1
    invoke-virtual {v1, p2, p3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-nez v0, :cond_2

    .line 110
    new-instance v2, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    move v4, p0

    move v3, p1

    move-wide v5, p2

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;-><init>(IIJLjava/lang/String;)V

    invoke-virtual {v1, v5, v6, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    return-object v2

    :cond_2
    return-object v0
.end method

.method public static make(IILorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/ui/Components/AnimatedEmojiDrawable;
    .locals 4

    .line 117
    sget-object v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->globalEmojiCache:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 118
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->globalEmojiCache:Landroid/util/SparseArray;

    .line 120
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {v2}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    .line 121
    sget-object v1, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->globalEmojiCache:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/LongSparseArray;

    if-nez v1, :cond_1

    .line 123
    sget-object v1, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->globalEmojiCache:Landroid/util/SparseArray;

    new-instance v2, Landroid/util/LongSparseArray;

    invoke-direct {v2}, Landroid/util/LongSparseArray;-><init>()V

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v1, v2

    .line 125
    :cond_1
    iget-wide v2, p2, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-nez v0, :cond_2

    .line 127
    iget-wide v2, p2, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    new-instance v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-direct {v0, p1, p0, p2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;-><init>(IILorg/telegram/tgnet/TLRPC$Document;)V

    invoke-virtual {v1, v2, v3, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_2
    return-object v0
.end method

.method public static toggleAnimations(IZ)V
    .locals 5

    .line 717
    sget-boolean v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->disabledToggleableAnimations:Z

    xor-int/lit8 v1, p1, 0x1

    if-ne v0, v1, :cond_0

    goto/16 :goto_2

    :cond_0
    xor-int/lit8 v0, p1, 0x1

    .line 718
    sput-boolean v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->disabledToggleableAnimations:Z

    .line 719
    sget-object v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->globalEmojiCache:Landroid/util/SparseArray;

    if-nez v0, :cond_1

    goto/16 :goto_2

    .line 720
    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/16 v0, 0x19

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object v0, v1, p0

    invoke-static {v1}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    .line 721
    sget-object v1, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->globalEmojiCache:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/LongSparseArray;

    if-eqz v0, :cond_7

    move v1, v2

    .line 723
    :goto_0
    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_7

    .line 724
    invoke-virtual {v0, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-nez v3, :cond_2

    goto :goto_1

    .line 726
    :cond_2
    invoke-virtual {v3}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_5

    .line 729
    invoke-virtual {v3, p0}, Lorg/telegram/messenger/ImageReceiver;->setAllowStartLottieAnimation(Z)V

    .line 730
    invoke-virtual {v3, p0}, Lorg/telegram/messenger/ImageReceiver;->setAllowStartAnimation(Z)V

    .line 731
    invoke-virtual {v3, p0}, Lorg/telegram/messenger/ImageReceiver;->setAutoRepeat(I)V

    .line 732
    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getAnimation()Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 734
    iget-boolean v3, v3, Lorg/telegram/messenger/ImageReceiver;->useSharedAnimationQueue:Z

    invoke-virtual {v4, v3}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->setUseSharedQueue(Z)V

    .line 735
    invoke-virtual {v4}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->start()V

    goto :goto_1

    .line 737
    :cond_4
    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 739
    invoke-virtual {v3}, Lorg/telegram/ui/Components/RLottieDrawable;->start()V

    goto :goto_1

    .line 743
    :cond_5
    invoke-virtual {v3, v2}, Lorg/telegram/messenger/ImageReceiver;->setAllowStartAnimation(Z)V

    .line 744
    invoke-virtual {v3, v2}, Lorg/telegram/messenger/ImageReceiver;->setAllowStartLottieAnimation(Z)V

    .line 745
    invoke-virtual {v3, v2}, Lorg/telegram/messenger/ImageReceiver;->setAutoRepeat(I)V

    .line 746
    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->stopAnimation()V

    :cond_6
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    :goto_2
    return-void
.end method

.method public static updateAll()V
    .locals 8

    .line 1507
    sget-object v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->globalEmojiCache:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    goto :goto_3

    .line 1510
    :cond_0
    invoke-static {}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->updateLiteModeValues()V

    const/4 v0, 0x0

    move v1, v0

    .line 1511
    :goto_0
    sget-object v2, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->globalEmojiCache:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 1512
    sget-object v2, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->globalEmojiCache:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/LongSparseArray;

    move v3, v0

    .line 1513
    :goto_1
    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 1514
    invoke-virtual {v2, v3}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    .line 1515
    invoke-virtual {v2, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v6, :cond_1

    .line 1516
    iget-boolean v7, v6, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->attached:Z

    if-eqz v7, :cond_1

    const/4 v4, 0x1

    .line 1517
    invoke-direct {v6, v4}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->initDocument(Z)V

    goto :goto_2

    .line 1519
    :cond_1
    invoke-virtual {v2, v4, v5}, Landroid/util/LongSparseArray;->remove(J)V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_3
    return-void
.end method

.method private updateAttachState()V
    .locals 3

    .line 897
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 900
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->views:Ljava/util/ArrayList;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->holders:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_3

    :cond_2
    iget-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->preloading:Z

    if-eqz v0, :cond_4

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    .line 901
    :goto_0
    iget-boolean v2, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->attached:Z

    if-eq v0, v2, :cond_8

    .line 902
    iput-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->attached:Z

    if-eqz v0, :cond_5

    .line 904
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    goto :goto_1

    .line 906
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    .line 908
    :goto_1
    sget-boolean v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->LOG_MEMORY_LEAK:Z

    if-eqz v0, :cond_8

    .line 909
    sget-object v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->attachedDrawable:Ljava/util/ArrayList;

    if-nez v0, :cond_6

    .line 910
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->attachedDrawable:Ljava/util/ArrayList;

    .line 912
    :cond_6
    iget-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->attached:Z

    if-eqz v0, :cond_7

    .line 913
    sget v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->attachedCount:I

    add-int/2addr v0, v1

    sput v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->attachedCount:I

    .line 914
    sget-object v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->attachedDrawable:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 916
    :cond_7
    sget v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->attachedCount:I

    sub-int/2addr v0, v1

    sput v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->attachedCount:I

    .line 917
    sget-object v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->attachedDrawable:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 919
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "attached count "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->attachedCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "animatedDrawable"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_3
    return-void
.end method

.method private updateAutoRepeat(Lorg/telegram/messenger/ImageReceiver;)V
    .locals 2

    .line 759
    iget v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->cacheType:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_4

    const/16 v1, 0x9

    if-eq v0, v1, :cond_4

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/16 v1, 0xb

    if-eq v0, v1, :cond_3

    const/16 v1, 0x12

    if-eq v0, v1, :cond_3

    const/16 v1, 0xe

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/16 v1, 0x16

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0x11

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    .line 764
    invoke-virtual {p1, v0}, Lorg/telegram/messenger/ImageReceiver;->setAutoRepeatCount(I)V

    :cond_2
    return-void

    :cond_3
    :goto_0
    const/4 v0, 0x1

    .line 762
    invoke-virtual {p1, v0}, Lorg/telegram/messenger/ImageReceiver;->setAutoRepeatCount(I)V

    return-void

    :cond_4
    :goto_1
    const/4 v0, 0x2

    .line 760
    invoke-virtual {p1, v0}, Lorg/telegram/messenger/ImageReceiver;->setAutoRepeatCount(I)V

    return-void
.end method

.method private static updateLiteModeValues()V
    .locals 1

    const/16 v0, 0x4004

    .line 543
    invoke-static {v0}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result v0

    sput-boolean v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->liteModeKeyboard:Z

    const/16 v0, 0x2008

    .line 544
    invoke-static {v0}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result v0

    sput-boolean v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->liteModeReactions:Z

    return-void
.end method

.method private updateSize()V
    .locals 4

    .line 515
    iget v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->cacheType:I

    const v1, 0x3f933333    # 1.15f

    if-eqz v0, :cond_b

    const/16 v2, 0x1a

    if-ne v0, v2, :cond_0

    goto/16 :goto_2

    .line 517
    :cond_0
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->chat_msgTextPaintEmoji:[Landroid/text/TextPaint;

    if-eqz v2, :cond_2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    const/4 v3, 0x4

    if-eq v0, v3, :cond_1

    const/16 v3, 0x13

    if-eq v0, v3, :cond_1

    const/16 v3, 0x14

    if-ne v0, v3, :cond_2

    :cond_1
    const/4 v0, 0x2

    .line 518
    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/graphics/Paint;->ascent()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->chat_msgTextPaintEmoji:[Landroid/text/TextPaint;

    aget-object v0, v3, v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->descent()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    add-float/2addr v2, v0

    mul-float/2addr v2, v1

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v2, v0

    float-to-int v0, v2

    iput v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->sizedp:I

    return-void

    :cond_2
    if-eqz v2, :cond_3

    const/16 v3, 0x8

    if-ne v0, v3, :cond_3

    const/4 v0, 0x0

    .line 520
    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/graphics/Paint;->ascent()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->chat_msgTextPaintEmoji:[Landroid/text/TextPaint;

    aget-object v0, v3, v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->descent()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    add-float/2addr v2, v0

    mul-float/2addr v2, v1

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v2, v0

    float-to-int v0, v2

    iput v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->sizedp:I

    return-void

    :cond_3
    const/16 v1, 0xe

    if-eq v0, v1, :cond_a

    const/16 v2, 0xf

    if-eq v0, v2, :cond_a

    const/16 v2, 0x11

    if-ne v0, v2, :cond_4

    goto :goto_1

    :cond_4
    const/16 v2, 0xb

    if-eq v0, v2, :cond_9

    const/16 v2, 0x16

    if-ne v0, v2, :cond_5

    goto :goto_0

    :cond_5
    const/16 v2, 0x18

    if-ne v0, v2, :cond_6

    const/16 v0, 0x8c

    .line 526
    iput v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->sizedp:I

    return-void

    :cond_6
    const/16 v2, 0x17

    if-ne v0, v2, :cond_7

    .line 528
    iput v1, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->sizedp:I

    return-void

    :cond_7
    const/16 v1, 0x15

    if-ne v0, v1, :cond_8

    const/16 v0, 0x5a

    .line 530
    iput v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->sizedp:I

    return-void

    :cond_8
    const/16 v0, 0x22

    .line 532
    iput v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->sizedp:I

    return-void

    :cond_9
    :goto_0
    const/16 v0, 0x38

    .line 524
    iput v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->sizedp:I

    return-void

    :cond_a
    :goto_1
    const/16 v0, 0x64

    .line 522
    iput v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->sizedp:I

    return-void

    .line 516
    :cond_b
    :goto_2
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->chat_msgTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->ascent()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->chat_msgTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->descent()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    add-float/2addr v0, v2

    mul-float/2addr v0, v1

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->sizedp:I

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 2

    .line 842
    instance-of v0, p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 845
    iput-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->preloading:Z

    .line 846
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->views:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 847
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->views:Ljava/util/ArrayList;

    .line 849
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->views:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 850
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->views:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 852
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->updateAttachState()V

    return-void

    .line 843
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
.end method

.method public addView(Lorg/telegram/ui/Components/AnimatedEmojiSpan$InvalidateHolder;)V
    .locals 2

    .line 856
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->holders:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 857
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->holders:Ljava/util/ArrayList;

    :cond_0
    const/4 v0, 0x0

    .line 859
    iput-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->preloading:Z

    .line 860
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->holders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 861
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->holders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 863
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->updateAttachState()V

    return-void
.end method

.method public addViewListening(Landroid/view/View;)V
    .locals 1

    .line 828
    new-instance v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$2;-><init>(Lorg/telegram/ui/Components/AnimatedEmojiDrawable;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method public canOverrideColor()Z
    .locals 3

    .line 934
    iget v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->cacheType:I

    const/16 v1, 0x13

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    return v2

    .line 937
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->canOverrideColorCached:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 938
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 940
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->document:Lorg/telegram/tgnet/TLRPC$Document;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 941
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->isDefaultStatusEmoji()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->isTextColorEmoji(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    move v2, v1

    :cond_3
    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->canOverrideColorCached:Ljava/lang/Boolean;

    return v2

    :cond_4
    return v1
.end method

.method public clear()V
    .locals 1

    .line 883
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->holders:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 884
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 886
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->views:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 887
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_1
    const/4 v0, 0x0

    .line 889
    iput-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->preloading:Z

    .line 890
    invoke-direct {p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->updateAttachState()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 802
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-nez v0, :cond_0

    return-void

    .line 805
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(Landroid/graphics/Rect;)V

    .line 806
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget v1, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->alpha:F

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 807
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;F)V
    .locals 1

    .line 811
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-nez v0, :cond_0

    return-void

    .line 814
    :cond_0
    invoke-virtual {v0, p2}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(Landroid/graphics/Rect;)V

    .line 815
    iget-object p2, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p2, p3}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 816
    iget-object p2, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p2, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;Z)V
    .locals 1

    .line 820
    iget-object p3, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-nez p3, :cond_0

    return-void

    .line 823
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->alpha:F

    invoke-virtual {p3, v0}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 824
    iget-object p3, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p3, p1, p2}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)Z

    return-void
.end method

.method public getAlpha()I
    .locals 2

    const/high16 v0, 0x437f0000    # 255.0f

    .line 975
    iget v1, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->alpha:F

    mul-float/2addr v1, v0

    float-to-int v0, v1

    return v0
.end method

.method public getDocument()Lorg/telegram/tgnet/TLRPC$Document;
    .locals 1

    .line 548
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->document:Lorg/telegram/tgnet/TLRPC$Document;

    return-object v0
.end method

.method public getDocumentId()J
    .locals 2

    .line 537
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v0, :cond_0

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    return-wide v0

    :cond_0
    iget-wide v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->documentId:J

    return-wide v0
.end method

.method public getImageReceiver()Lorg/telegram/messenger/ImageReceiver;
    .locals 1

    .line 1003
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    return-object v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method invalidate()V
    .locals 3

    .line 769
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->views:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move v0, v1

    .line 770
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->views:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 771
    iget-object v2, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->views:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_0

    .line 773
    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 777
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->holders:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 778
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->holders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 779
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->holders:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$InvalidateHolder;

    if-eqz v0, :cond_2

    .line 781
    invoke-interface {v0}, Lorg/telegram/ui/Components/AnimatedEmojiSpan$InvalidateHolder;->invalidate()V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public isDefaultStatusEmoji()Z
    .locals 6

    .line 949
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->isDefaultStatusEmojiCached:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 950
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 952
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->document:Lorg/telegram/tgnet/TLRPC$Document;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 953
    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->getInputStickerSet(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    move-result-object v0

    .line 954
    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetEmojiDefaultStatuses;

    if-nez v2, :cond_1

    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;

    if-eqz v2, :cond_2

    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->id:J

    const-wide v4, 0xabd9d560000002cL

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    const-wide v4, 0xa87df0000000fL

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->isDefaultStatusEmojiCached:Ljava/lang/Boolean;

    :cond_3
    return v1
.end method

.method public preload()V
    .locals 1

    const/4 v0, 0x1

    .line 754
    iput-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->preloading:Z

    .line 755
    invoke-direct {p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->updateAttachState()V

    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1

    .line 875
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->views:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 876
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    const/4 p1, 0x0

    .line 878
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->preloading:Z

    .line 879
    invoke-direct {p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->updateAttachState()V

    return-void
.end method

.method public removeView(Lorg/telegram/ui/Components/AnimatedEmojiSpan$InvalidateHolder;)V
    .locals 1

    .line 867
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->holders:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 868
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    const/4 p1, 0x0

    .line 870
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->preloading:Z

    .line 871
    invoke-direct {p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->updateAttachState()V

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    int-to-float p1, p1

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p1, v0

    .line 980
    iput p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->alpha:F

    .line 981
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v0, :cond_0

    .line 982
    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 990
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-nez v0, :cond_0

    goto :goto_0

    .line 992
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->canOverrideColor()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 993
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_1
    return-void

    .line 991
    :cond_2
    :goto_0
    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->colorFilterToSet:Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setTime(J)V
    .locals 3

    .line 137
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v0, :cond_1

    .line 138
    iget v1, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->cacheType:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    const-wide/16 p1, 0x0

    .line 141
    :cond_0
    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/ImageReceiver;->setCurrentTime(J)V

    :cond_1
    return-void
.end method

.method public setupDocument(Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 0

    .line 580
    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->document:Lorg/telegram/tgnet/TLRPC$Document;

    const/4 p1, 0x0

    .line 581
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->initDocument(Z)V

    return-void
.end method

.method public setupEmojiThumb(Ljava/lang/String;)V
    .locals 2

    .line 499
    iget v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->cacheType:I

    const/16 v1, 0x14

    if-eq v0, v1, :cond_0

    const/16 v1, 0x15

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 502
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 505
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v0, :cond_2

    :goto_0
    return-void

    .line 508
    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->createImageReceiver()V

    const/4 v0, 0x1

    .line 509
    iput-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiverEmojiThumb:Z

    .line 510
    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-static {p1}, Lorg/telegram/messenger/Emoji;->getEmojiDrawable(Ljava/lang/CharSequence;)Lorg/telegram/messenger/Emoji$EmojiDrawable;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V

    .line 511
    iget-object p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/ImageReceiver;->setCrossfadeWithOldImage(Z)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 789
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AnimatedEmojiDrawable{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-nez v1, :cond_0

    const-string v1, "null"

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/telegram/messenger/MessageObject;->findAnimatedEmojiEmoticon(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(J)V
    .locals 3

    .line 146
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v0, :cond_2

    .line 147
    iget v1, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->cacheType:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    const-wide/16 p1, 0x0

    .line 150
    :cond_0
    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 151
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    invoke-virtual {v0, p1, p2, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->updateCurrentFrame(JZ)V

    .line 153
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getAnimation()Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 154
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getAnimation()Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-result-object v0

    invoke-virtual {v0, p1, p2, v1}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->updateCurrentFrame(JZ)V

    :cond_2
    return-void
.end method
