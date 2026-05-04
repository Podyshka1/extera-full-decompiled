.class public Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;,
        Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SubjectMock;,
        Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$Point;,
        Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;
    }
.end annotation


# instance fields
.field private final actionTextView:Landroid/widget/TextView;

.field private final areaPath:Landroid/graphics/Path;

.field private final bgPaint:Landroid/graphics/Paint;

.field private final bgPath:Landroid/graphics/Path;

.field private final borderPaint:Landroid/graphics/Paint;

.field private bordersAnimator:Landroid/animation/ValueAnimator;

.field private bordersAnimatorValue:F

.field private bordersAnimatorValueStart:F

.field private final bordersPathMeasure:Landroid/graphics/PathMeasure;

.field private containerHeight:I

.field private containerWidth:I

.field public currentAccount:I

.field private final dashPaint:Landroid/graphics/Paint;

.field private final dashPath:Landroid/graphics/Path;

.field public detectedEmoji:Ljava/lang/String;

.field public empty:Z

.field private exclusionRect:Landroid/graphics/Rect;

.field private exclusionRects:Ljava/util/ArrayList;

.field private filteredBitmap:Landroid/graphics/Bitmap;

.field private imageReceiverHeight:F

.field private final imageReceiverMatrix:Landroid/graphics/Matrix;

.field private imageReceiverWidth:F

.field private isSegmentedState:Z

.field public isThanosInProgress:Z

.field private loadingToast:Lorg/telegram/ui/Stories/recorder/DownloadButton$PreparingVideoToast;

.field public objects:[Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;

.field public orientation:I

.field private final outlineAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

.field private final outlineBounds:Landroid/graphics/RectF;

.field private outlineBoundsInnerPath:Landroid/graphics/Path;

.field private outlineBoundsPath:Landroid/graphics/Path;

.field public final outlineMatrix:Landroid/graphics/Matrix;

.field public outlineVisible:Z

.field public outlineWidth:F

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private final screenPath:Landroid/graphics/Path;

.field private final segmentBorderAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

.field private segmentBorderImageHeight:F

.field private segmentBorderImageWidth:F

.field private final segmentBorderPaint:Landroid/graphics/Paint;

.field private volatile segmentingLoaded:Z

.field private volatile segmentingLoading:Z

.field private selectedObject:Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;

.field public setOutlineBounds:Z

.field private volatile sourceBitmap:Landroid/graphics/Bitmap;

.field private stickerCutOutBtn:Lorg/telegram/ui/Components/Paint/Views/StickerCutOutBtn;

.field private stickerUploader:Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;

.field private thanosEffect:Lorg/telegram/ui/Components/ThanosEffect;

.field tx:F

.field ty:F

.field public weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;


# direct methods
.method public static synthetic $r8$lambda$17hkri3t3bkbK5ci6si4jD3CHDU(Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;Lorg/telegram/tgnet/TLObject;ILorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->lambda$afterUploadingMedia$26(Lorg/telegram/tgnet/TLObject;ILorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$1hSqXjaUxTUkJ0aaHgVEGmFHtxg(Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->lambda$uploadMedia$15(Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3O9QmiTmUliSRT9Vf722x0VgBdI(Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->lambda$showLoadingDialog$13()V

    return-void
.end method

.method public static synthetic $r8$lambda$4t4VxzIqhJa8vJrYMQga6xibM9U(Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->lambda$afterUploadingMedia$17(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;)V

    return-void
.end method

.method public static synthetic $r8$lambda$51aX2r11dUyp0CAhNcOtQJFQyw8(Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->lambda$afterUploadingMedia$25(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ElSmAoKChmg9dKo1aU6HKEnqzU8(Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;)V
    .locals 7

    .line 1535
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;->mediaDocument:Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v5, 0x3e8

    div-long/2addr v2, v5

    long-to-int v5, v2

    const/4 v6, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/messenger/MediaDataController;->addRecentSticker(ILjava/lang/Object;Lorg/telegram/tgnet/TLRPC$Document;IZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$GpXe47Svl67EFm1jsUCnec8jXAI(Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->lambda$segment$10(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$H8VUVsP_lRDMjS2diSxKwC2ZdGo(Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;Lorg/telegram/messenger/Utilities$Callback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;ZJLorg/telegram/tgnet/TLRPC$StickerSet;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/VideoEditedInfo;Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback2;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p13}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->lambda$uploadStickerFile$12(Lorg/telegram/messenger/Utilities$Callback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;ZJLorg/telegram/tgnet/TLRPC$StickerSet;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/VideoEditedInfo;Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback2;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KGUANJerxjJzSa71OZWqUYpRG88(Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->lambda$afterUploadingMedia$24(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$N34q7RjOP0nAX0Rvuf8jtIHGY0g(Lorg/telegram/messenger/Utilities$Callback;Lcom/google/mlkit/vision/segmentation/subject/SubjectSegmentationResult;)V
    .locals 3

    .line 951
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 952
    :goto_0
    invoke-virtual {p1}, Lcom/google/mlkit/vision/segmentation/subject/SubjectSegmentationResult;->getSubjects()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 953
    invoke-virtual {p1}, Lcom/google/mlkit/vision/segmentation/subject/SubjectSegmentationResult;->getSubjects()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/mlkit/vision/segmentation/subject/Subject;

    invoke-static {v2}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SubjectMock;->of(Lcom/google/mlkit/vision/segmentation/subject/Subject;)Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SubjectMock;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 955
    :cond_0
    invoke-interface {p0, v0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OtgUm0DQHDsMQSXyXtK-Dgz42J8(Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;ILorg/telegram/messenger/Utilities$Callback;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->lambda$segmentImage$6(ILorg/telegram/messenger/Utilities$Callback;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PsSSzhFuRFQ0x9gxKeb7mkeR1CM(Ljava/lang/Exception;)V
    .locals 0

    .line 0
    return-void
.end method

.method public static synthetic $r8$lambda$QN1HjNvzbbb2Br1OovJIm3cCJWk(Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->lambda$segmentImage$4(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$U_9iQbccptsISVw46jDeyVHiU1Q(Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;Lorg/telegram/messenger/Utilities$Callback;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->lambda$enableClippingMode$1(Lorg/telegram/messenger/Utilities$Callback;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZTjfAhAcnRZPA1QhZkKKJ3X3vAU(Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->lambda$getThanosEffect$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$bwgFaA2Y2xdxKbxNcSw_PMsFC04(Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->lambda$enableClippingMode$2(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eKCtyt-UpTAzCsy5Xij2nFeT5HU(Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;Landroid/graphics/Bitmap;ILorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->lambda$segment$8(Landroid/graphics/Bitmap;ILorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$f8PtxEjTusNedlaxwQGJSV2n6N8(Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;ILorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->lambda$afterUploadingMedia$27(ILorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fBCQPfH91jrG6r4XEgMvfiZ_Ps4(Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->lambda$uploadMedia$14(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$g4nNohWAaVQsfIuXosd7zDqFQ6g(Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;Landroid/graphics/Bitmap;ILorg/telegram/messenger/Utilities$Callback;Lorg/telegram/messenger/Utilities$Callback;Ljava/lang/Exception;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->lambda$segment$9(Landroid/graphics/Bitmap;ILorg/telegram/messenger/Utilities$Callback;Lorg/telegram/messenger/Utilities$Callback;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jvwapija84xeBIaQWvUCTAyaqrE(Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;ILjava/util/List;Ljava/util/ArrayList;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->lambda$segmentImage$5(ILjava/util/List;Ljava/util/ArrayList;Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jzaEKhwAzeww3unXPkKGvW10T18(Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->lambda$afterUploadingMedia$20(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;)V

    return-void
.end method

.method public static synthetic $r8$lambda$l-jsatAdj3eOPCLedWUapRs7p1g(Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;Lorg/telegram/tgnet/TLObject;ILorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->lambda$afterUploadingMedia$18(Lorg/telegram/tgnet/TLObject;ILorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mAO7lvCMRR7hb9vt1uB_UjjzWtc(Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;ILorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->lambda$afterUploadingMedia$22(ILorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$o_w3nLhs16roAMzbWOFmHoE9-Qk(Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;Lorg/telegram/tgnet/TLObject;ILorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->lambda$afterUploadingMedia$21(Lorg/telegram/tgnet/TLObject;ILorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rwHjF8b0pLirbzEHAbbWpY892oA()V
    .locals 3

    .line 1471
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->customStickerCreated:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationNameOnUIThread(I[Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sHVgvvuV1-foC7_wz1bU3Ticp-o(Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;ILorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->lambda$afterUploadingMedia$19(ILorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zrBXvr2sY2G5NYIAa5bYBM8FWms(Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;Ljava/util/ArrayList;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->lambda$segmentImage$3(Ljava/util/ArrayList;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetborderPaint(Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;)Landroid/graphics/Paint;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->borderPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetbordersPathMeasure(Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;)Landroid/graphics/PathMeasure;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->bordersPathMeasure:Landroid/graphics/PathMeasure;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetoutlineBoundsPath(Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;)Landroid/graphics/Path;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->outlineBoundsPath:Landroid/graphics/Path;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsegmentBorderPaint(Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;)Landroid/graphics/Paint;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->segmentBorderPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsourceBitmap(Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;)Landroid/graphics/Bitmap;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->sourceBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 133
    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, -0x1

    .line 87
    iput v2, v0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->currentAccount:I

    .line 88
    new-instance v3, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object v10, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x1a4

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(FLandroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->segmentBorderAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 89
    new-instance v4, Lorg/telegram/ui/Components/AnimatedFloat;

    const-wide/16 v7, 0x0

    move-object v11, v10

    const-wide/16 v9, 0x1a4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(FLandroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v4, v0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->outlineAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 90
    new-instance v3, Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, v0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->dashPaint:Landroid/graphics/Paint;

    .line 91
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v5, v0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->bgPaint:Landroid/graphics/Paint;

    .line 92
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v6, v0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->borderPaint:Landroid/graphics/Paint;

    .line 93
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v7, v0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->segmentBorderPaint:Landroid/graphics/Paint;

    .line 94
    new-instance v8, Landroid/graphics/PathMeasure;

    invoke-direct {v8}, Landroid/graphics/PathMeasure;-><init>()V

    iput-object v8, v0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->bordersPathMeasure:Landroid/graphics/PathMeasure;

    .line 95
    new-instance v8, Landroid/graphics/Path;

    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    iput-object v8, v0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->bgPath:Landroid/graphics/Path;

    .line 96
    new-instance v8, Landroid/graphics/Path;

    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    iput-object v8, v0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->areaPath:Landroid/graphics/Path;

    .line 97
    new-instance v8, Landroid/graphics/Path;

    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    iput-object v8, v0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->screenPath:Landroid/graphics/Path;

    .line 98
    new-instance v8, Landroid/graphics/Path;

    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    iput-object v8, v0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->dashPath:Landroid/graphics/Path;

    const/high16 v8, 0x40000000    # 2.0f

    .line 102
    iput v8, v0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->outlineWidth:F

    .line 127
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    iput-object v9, v0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->imageReceiverMatrix:Landroid/graphics/Matrix;

    .line 511
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    iput-object v9, v0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->outlineMatrix:Landroid/graphics/Matrix;

    .line 513
    new-instance v9, Landroid/graphics/RectF;

    invoke-direct {v9}, Landroid/graphics/RectF;-><init>()V

    iput-object v9, v0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->outlineBounds:Landroid/graphics/RectF;

    .line 646
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->exclusionRects:Ljava/util/ArrayList;

    .line 647
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    iput-object v9, v0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->exclusionRect:Landroid/graphics/Rect;

    move-object/from16 v9, p2

    .line 134
    iput-object v9, v0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 135
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 136
    sget-object v9, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 137
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 138
    sget-object v8, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 139
    new-instance v10, Landroid/graphics/DashPathEffect;

    const/high16 v11, 0x40a00000    # 5.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    const/high16 v12, 0x41200000    # 10.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    int-to-float v13, v13

    const/4 v14, 0x2

    new-array v15, v14, [F

    const/16 v16, 0x0

    aput v11, v15, v16

    aput v13, v15, v4

    const/high16 v11, 0x3f000000    # 0.5f

    invoke-direct {v10, v15, v11}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v3, v10}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    const/high16 v10, 0x3f400000    # 0.75f

    .line 140
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v10

    const/high16 v11, 0x50000000

    const/4 v13, 0x0

    invoke-virtual {v3, v10, v13, v13, v11}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    const/16 v10, 0x8c

    .line 141
    invoke-virtual {v3, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 143
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->actionTextView:Landroid/widget/TextView;

    const/high16 v10, 0x41500000    # 13.0f

    .line 144
    invoke-virtual {v3, v4, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 145
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 146
    invoke-virtual {v3, v13}, Landroid/view/View;->setAlpha(F)V

    const v4, 0x3e99999a    # 0.3f

    .line 147
    invoke-virtual {v3, v4}, Landroid/view/View;->setScaleX(F)V

    .line 148
    invoke-virtual {v3, v4}, Landroid/view/View;->setScaleY(F)V

    const/4 v4, -0x2

    const/16 v10, 0x11

    .line 149
    invoke-static {v4, v4, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 151
    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v3, 0x40400000    # 3.0f

    .line 152
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v6, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 153
    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 154
    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 155
    new-instance v4, Landroid/graphics/CornerPathEffect;

    const/high16 v10, 0x41a00000    # 20.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    invoke-direct {v4, v11}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {v6, v4}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 156
    new-instance v4, Landroid/graphics/BlurMaskFilter;

    const/high16 v11, 0x40800000    # 4.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    int-to-float v15, v15

    move/from16 p2, v3

    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v4, v15, v3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v6, v4}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 158
    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 159
    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v7, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 160
    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 161
    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 162
    new-instance v4, Landroid/graphics/CornerPathEffect;

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    invoke-direct {v4, v6}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {v7, v4}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 163
    new-instance v4, Landroid/graphics/BlurMaskFilter;

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    invoke-direct {v4, v6, v3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v7, v4}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    const/high16 v3, 0x66000000

    .line 165
    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v3, 0x0

    .line 166
    invoke-virtual {v0, v14, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 168
    new-instance v3, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    invoke-direct {v3, v1}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    .line 169
    invoke-virtual {v3, v13}, Landroid/view/View;->setAlpha(F)V

    .line 170
    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    const/high16 v3, 0x41900000    # 18.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 171
    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    const v4, 0x3ea8f5c3    # 0.33f

    invoke-virtual {v1, v4, v12}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->setMinMax(FF)V

    .line 172
    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    iget v4, v0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->outlineWidth:F

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->setBrushWeight(F)V

    .line 173
    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    new-instance v4, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$1;

    invoke-direct {v4, v0}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$1;-><init>(Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;)V

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->setValueOverride(Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;)V

    .line 183
    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 184
    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    invoke-virtual {v1, v13}, Landroid/view/View;->setAlpha(F)V

    .line 185
    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    const/high16 v3, -0x40800000    # -1.0f

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private afterUploadingMedia()V
    .locals 26

    move-object/from16 v0, p0

    .line 1462
    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->stickerUploader:Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;

    if-nez v1, :cond_0

    goto/16 :goto_0

    .line 1466
    :cond_0
    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    const/4 v3, 0x1

    .line 1467
    iput-boolean v3, v1, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;->uploaded:Z

    .line 1468
    iget-object v4, v1, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;->customHandler:Lorg/telegram/messenger/Utilities$Callback2;

    if-eqz v4, :cond_1

    .line 1469
    invoke-direct {v0}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->hideLoadingDialog()V

    .line 1470
    iget-object v2, v1, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;->customHandler:Lorg/telegram/messenger/Utilities$Callback2;

    iget-object v3, v1, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;->finalPath:Ljava/lang/String;

    iget-object v1, v1, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;->tlInputStickerSetItem:Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetItem;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetItem;->document:Lorg/telegram/tgnet/TLRPC$InputDocument;

    invoke-interface {v2, v3, v1}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1471
    new-instance v1, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$$ExternalSyntheticLambda13;

    invoke-direct {v1}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$$ExternalSyntheticLambda13;-><init>()V

    const-wide/16 v2, 0xfa

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void

    .line 1474
    :cond_1
    iget-object v4, v1, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;->replacedSticker:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v4, :cond_2

    .line 1475
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_stickers_replaceSticker;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_stickers_replaceSticker;-><init>()V

    .line 1476
    iget-object v4, v1, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;->replacedSticker:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v5, v1, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;->emoji:Ljava/lang/String;

    invoke-static {v4, v5}, Lorg/telegram/messenger/MediaDataController;->getInputStickerSetItem(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;)Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetItem;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetItem;->document:Lorg/telegram/tgnet/TLRPC$InputDocument;

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_stickers_replaceSticker;->sticker:Lorg/telegram/tgnet/TLRPC$InputDocument;

    .line 1477
    iget-object v4, v1, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;->tlInputStickerSetItem:Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetItem;

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_stickers_replaceSticker;->new_sticker:Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetItem;

    .line 1478
    invoke-static {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$$ExternalSyntheticLambda14;

    invoke-direct {v5, v0, v2, v1}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;ILorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;)V

    invoke-virtual {v4, v3, v5}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void

    .line 1503
    :cond_2
    iget-object v4, v1, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;->stickerPackName:Ljava/lang/CharSequence;

    if-eqz v4, :cond_3

    .line 1504
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_stickers_createStickerSet;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_stickers_createStickerSet;-><init>()V

    .line 1505
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputUserSelf;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputUserSelf;-><init>()V

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_stickers_createStickerSet;->user_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 1506
    iget-object v4, v1, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;->stickerPackName:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_stickers_createStickerSet;->title:Ljava/lang/String;

    .line 1507
    const-string v4, ""

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_stickers_createStickerSet;->short_name:Ljava/lang/String;

    .line 1508
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_stickers_createStickerSet;->stickers:Ljava/util/ArrayList;

    iget-object v5, v1, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;->tlInputStickerSetItem:Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetItem;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1509
    invoke-static {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$$ExternalSyntheticLambda15;

    invoke-direct {v5, v0, v2, v1}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;ILorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;)V

    invoke-virtual {v4, v3, v5}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void

    .line 1532
    :cond_3
    iget-boolean v4, v1, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;->addToFavorite:Z

    if-eqz v4, :cond_4

    .line 1533
    invoke-direct {v0}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->hideLoadingDialog()V

    .line 1534
    invoke-static {v2}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v4, Lorg/telegram/messenger/NotificationCenter;->customStickerCreated:I

    new-array v3, v3, [Ljava/lang/Object;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v6, 0x0

    aput-object v5, v3, v6

    invoke-virtual {v2, v4, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationNameOnUIThread(I[Ljava/lang/Object;)V

    .line 1535
    new-instance v2, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$$ExternalSyntheticLambda16;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;)V

    const-wide/16 v3, 0x15e

    invoke-static {v2, v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 1536
    iget-object v1, v1, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;->whenDone:Lorg/telegram/messenger/Utilities$Callback;

    if-eqz v1, :cond_7

    .line 1537
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1, v2}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void

    .line 1539
    :cond_4
    iget-wide v3, v1, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;->sendToDialogId:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_6

    .line 1540
    invoke-static {v2}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance(I)Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v4

    iget-object v3, v1, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;->mediaDocument:Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v7, v1, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;->sendToDialogId:J

    const-wide/16 v23, 0x0

    const/16 v25, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-wide/16 v21, 0x0

    invoke-virtual/range {v4 .. v25}, Lorg/telegram/messenger/SendMessagesHelper;->sendSticker(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/ChatActivity$ReplyQuote;Lorg/telegram/messenger/MessageObject$SendAnimationData;ZIIZLjava/lang/Object;Ljava/lang/String;IJJLorg/telegram/messenger/MessageSuggestionParams;)V

    .line 1549
    iget-object v3, v0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->loadingToast:Lorg/telegram/ui/Stories/recorder/DownloadButton$PreparingVideoToast;

    if-eqz v3, :cond_5

    const/high16 v4, 0x3f800000    # 1.0f

    .line 1550
    invoke-virtual {v3, v4}, Lorg/telegram/ui/Stories/recorder/DownloadButton$PreparingVideoToast;->setProgress(F)V

    .line 1552
    :cond_5
    new-instance v3, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$$ExternalSyntheticLambda17;

    invoke-direct {v3, v0, v2}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;I)V

    const-wide/16 v4, 0x1c2

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 1556
    iget-object v2, v1, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;->whenDone:Lorg/telegram/messenger/Utilities$Callback;

    if-eqz v2, :cond_7

    .line 1557
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v2, v3}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    const/4 v2, 0x0

    .line 1558
    iput-object v2, v1, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;->whenDone:Lorg/telegram/messenger/Utilities$Callback;

    return-void

    .line 1560
    :cond_6
    iget-object v3, v1, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;->stickerSet:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-eqz v3, :cond_7

    .line 1561
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_stickers_addStickerToSet;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_stickers_addStickerToSet;-><init>()V

    .line 1562
    iget-object v4, v1, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;->stickerSet:Lorg/telegram/tgnet/TLRPC$StickerSet;

    invoke-static {v4}, Lorg/telegram/messenger/MediaDataController;->getInputStickerSet(Lorg/telegram/tgnet/TLRPC$StickerSet;)Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    move-result-object v4

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_stickers_addStickerToSet;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    .line 1563
    iget-object v4, v1, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;->tlInputStickerSetItem:Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetItem;

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_stickers_addStickerToSet;->sticker:Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetItem;

    .line 1564
    invoke-static {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$$ExternalSyntheticLambda18;

    invoke-direct {v5, v0, v2, v1}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;ILorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;)V

    invoke-virtual {v4, v3, v5}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_7
    :goto_0
    return-void
.end method

.method private createSegmentImagePath(Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;II)V
    .locals 25

    move-object/from16 v0, p1

    .line 992
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->getImage()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 993
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->getImage()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 994
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    .line 995
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    const/high16 v4, 0x44000000    # 512.0f

    goto :goto_0

    :cond_0
    const/high16 v4, 0x43c00000    # 384.0f

    :goto_0
    div-float/2addr v3, v4

    .line 997
    iget v4, v0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->orientation:I

    div-int/lit8 v4, v4, 0x5a

    rem-int/2addr v4, v5

    if-eqz v4, :cond_1

    .line 998
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->getImage()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 999
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->getImage()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    :cond_1
    int-to-float v1, v1

    div-float v4, v1, v3

    float-to-int v4, v4

    int-to-float v2, v2

    div-float v3, v2, v3

    float-to-int v3, v3

    .line 1002
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v3, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1003
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1004
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    .line 1005
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    const/4 v9, 0x0

    invoke-virtual {v4, v9, v9, v6, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1006
    iget v6, v0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->orientation:I

    const/4 v8, 0x3

    const/high16 v15, 0x40000000    # 2.0f

    const/4 v9, 0x0

    if-eqz v6, :cond_3

    .line 1007
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 1008
    iget v10, v0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->orientation:I

    int-to-float v10, v10

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->getImage()Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v11, v15

    iget-object v12, v0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v12, v15

    invoke-virtual {v6, v10, v11, v12}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 1009
    iget v10, v0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->orientation:I

    div-int/lit8 v10, v10, 0x5a

    rem-int/2addr v10, v5

    if-eqz v10, :cond_2

    .line 1010
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->getImage()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->getImage()Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    sub-int/2addr v5, v10

    int-to-float v5, v5

    div-float/2addr v5, v15

    neg-float v10, v5

    .line 1011
    invoke-virtual {v6, v5, v10}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1013
    :cond_2
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v5

    div-float/2addr v5, v1

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    div-float/2addr v4, v2

    invoke-virtual {v6, v5, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1014
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->getImage()Landroid/graphics/Bitmap;

    move-result-object v4

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5, v8}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v3, v4, v6, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 1016
    :cond_3
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->getImage()Landroid/graphics/Bitmap;

    move-result-object v5

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6, v8}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v3, v5, v9, v4, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1019
    :goto_1
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    mul-int/2addr v3, v4

    new-array v8, v3, [I

    .line 1020
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    move-object v4, v9

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v14}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 1022
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1023
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move/from16 v9, p2

    int-to-float v9, v9

    .line 1028
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    int-to-float v10, v10

    div-float v10, v9, v10

    move/from16 v11, p3

    int-to-float v11, v11

    .line 1029
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    int-to-float v12, v12

    div-float v12, v11, v12

    .line 1027
    invoke-static {v10, v12}, Ljava/lang/Math;->min(FF)F

    move-result v10

    move-object v13, v4

    move-object v14, v13

    const/4 v4, 0x0

    :goto_2
    const/16 v16, 0x1

    if-ge v4, v3, :cond_11

    .line 1032
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    div-int v12, v4, v17

    .line 1033
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    mul-int v17, v17, v12

    move/from16 v18, v15

    sub-int v15, v4, v17

    .line 1035
    aget v17, v8, v4

    if-eqz v17, :cond_4

    move/from16 v19, v16

    goto :goto_3

    :cond_4
    const/16 v19, 0x0

    :goto_3
    if-nez v17, :cond_8

    add-int/lit8 v17, v4, -0x1

    if-ltz v17, :cond_5

    move/from16 v20, v16

    goto :goto_4

    :cond_5
    const/16 v20, 0x0

    :goto_4
    move/from16 v21, v1

    add-int/lit8 v1, v4, 0x1

    if-ge v1, v3, :cond_6

    move/from16 v22, v16

    goto :goto_5

    :cond_6
    const/16 v22, 0x0

    :goto_5
    if-eqz v20, :cond_7

    .line 1039
    aget v17, v8, v17

    if-eqz v17, :cond_7

    .line 1040
    new-instance v14, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$Point;

    invoke-direct {v14, v15, v12, v10}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$Point;-><init>(IIF)V

    :cond_7
    if-nez v13, :cond_9

    if-eqz v22, :cond_9

    .line 1042
    aget v1, v8, v1

    if-eqz v1, :cond_9

    .line 1043
    new-instance v1, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$Point;

    invoke-direct {v1, v15, v12, v10}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$Point;-><init>(IIF)V

    move-object v13, v1

    goto :goto_6

    :cond_8
    move/from16 v21, v1

    .line 1046
    :cond_9
    :goto_6
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v15, v1, :cond_a

    move/from16 v1, v16

    goto :goto_7

    :cond_a
    const/4 v1, 0x0

    :goto_7
    if-nez v15, :cond_b

    goto :goto_8

    :cond_b
    const/16 v16, 0x0

    :goto_8
    if-eqz v1, :cond_f

    if-eqz v19, :cond_c

    .line 1050
    new-instance v14, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$Point;

    invoke-direct {v14, v15, v12, v10}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$Point;-><init>(IIF)V

    :cond_c
    if-eqz v13, :cond_d

    .line 1052
    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    if-eqz v14, :cond_e

    .line 1053
    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    const/4 v13, 0x0

    const/4 v14, 0x0

    :cond_f
    if-eqz v16, :cond_10

    if-eqz v19, :cond_10

    .line 1059
    new-instance v1, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$Point;

    invoke-direct {v1, v15, v12, v10}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$Point;-><init>(IIF)V

    move-object v13, v1

    :cond_10
    add-int/lit8 v4, v4, 0x1

    move/from16 v15, v18

    move/from16 v1, v21

    goto/16 :goto_2

    :cond_11
    move/from16 v21, v1

    move/from16 v18, v15

    .line 1064
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1065
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_9
    if-ge v14, v3, :cond_1f

    .line 1069
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    div-int v15, v14, v15

    .line 1070
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    mul-int v17, v17, v15

    move/from16 v19, v2

    sub-int v2, v14, v17

    .line 1071
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    mul-int v17, v17, v2

    add-int v17, v15, v17

    aget v17, v8, v17

    if-eqz v17, :cond_12

    move/from16 v17, v16

    goto :goto_a

    :cond_12
    const/16 v17, 0x0

    :goto_a
    if-nez v17, :cond_16

    add-int/lit8 v20, v2, -0x1

    .line 1073
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v22

    mul-int v20, v20, v22

    add-int v20, v15, v20

    add-int/lit8 v22, v2, 0x1

    .line 1074
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v23

    mul-int v22, v22, v23

    move-object/from16 v23, v7

    add-int v7, v15, v22

    if-ltz v20, :cond_13

    move/from16 v22, v16

    goto :goto_b

    :cond_13
    const/16 v22, 0x0

    :goto_b
    if-ge v7, v3, :cond_14

    move/from16 v24, v16

    goto :goto_c

    :cond_14
    const/16 v24, 0x0

    :goto_c
    if-eqz v22, :cond_15

    .line 1077
    aget v20, v8, v20

    if-eqz v20, :cond_15

    .line 1078
    new-instance v13, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$Point;

    invoke-direct {v13, v15, v2, v10}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$Point;-><init>(IIF)V

    :cond_15
    if-nez v12, :cond_17

    if-eqz v24, :cond_17

    .line 1080
    aget v7, v8, v7

    if-eqz v7, :cond_17

    .line 1081
    new-instance v7, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$Point;

    invoke-direct {v7, v15, v2, v10}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$Point;-><init>(IIF)V

    move-object v12, v7

    goto :goto_d

    :cond_16
    move-object/from16 v23, v7

    .line 1084
    :cond_17
    :goto_d
    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ne v2, v7, :cond_18

    move/from16 v7, v16

    goto :goto_e

    :cond_18
    const/4 v7, 0x0

    :goto_e
    if-nez v2, :cond_19

    move/from16 v20, v16

    goto :goto_f

    :cond_19
    const/16 v20, 0x0

    :goto_f
    if-eqz v7, :cond_1d

    if-eqz v17, :cond_1a

    .line 1088
    new-instance v13, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$Point;

    invoke-direct {v13, v15, v2, v10}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$Point;-><init>(IIF)V

    :cond_1a
    if-eqz v12, :cond_1b

    .line 1090
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1b
    if-eqz v13, :cond_1c

    .line 1091
    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1c
    const/4 v12, 0x0

    const/4 v13, 0x0

    :cond_1d
    if-eqz v20, :cond_1e

    if-eqz v17, :cond_1e

    .line 1097
    new-instance v7, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$Point;

    invoke-direct {v7, v15, v2, v10}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$Point;-><init>(IIF)V

    move-object v12, v7

    :cond_1e
    add-int/lit8 v14, v14, 0x1

    move/from16 v2, v19

    move-object/from16 v7, v23

    goto/16 :goto_9

    :cond_1f
    move/from16 v19, v2

    .line 1102
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1103
    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1104
    invoke-static {v6}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 1105
    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 1107
    invoke-virtual {v3, v5}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 1108
    invoke-virtual {v3, v6}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 1110
    invoke-virtual {v2, v4}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 1111
    invoke-virtual {v2, v1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 1113
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->removeUnnecessaryPoints(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 1114
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v2}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->removeUnnecessaryPoints(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 1116
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    const/4 v4, 0x0

    .line 1117
    :goto_10
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_21

    .line 1118
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$Point;

    .line 1119
    invoke-virtual {v3}, Landroid/graphics/Path;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_20

    .line 1120
    iget v6, v5, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    invoke-virtual {v3, v6, v5}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_11

    .line 1122
    :cond_20
    iget v6, v5, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    invoke-virtual {v3, v6, v5}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_11
    add-int/lit8 v4, v4, 0x2

    goto :goto_10

    .line 1126
    :cond_21
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    const/4 v12, 0x0

    .line 1127
    :goto_12
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v12, v4, :cond_23

    .line 1128
    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$Point;

    .line 1129
    invoke-virtual {v2}, Landroid/graphics/Path;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_22

    .line 1130
    iget v5, v4, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    invoke-virtual {v2, v5, v4}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_13

    .line 1132
    :cond_22
    iget v5, v4, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    invoke-virtual {v2, v5, v4}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_13
    add-int/lit8 v12, v12, 0x2

    goto :goto_12

    .line 1136
    :cond_23
    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->-$$Nest$fgetsegmentBorderPath(Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;)Landroid/graphics/Path;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 1137
    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->-$$Nest$fgetsegmentBorderPath(Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;)Landroid/graphics/Path;

    move-result-object v1

    sget-object v4, Landroid/graphics/Path$Op;->INTERSECT:Landroid/graphics/Path$Op;

    invoke-virtual {v1, v3, v2, v4}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    div-float v9, v9, v21

    div-float v11, v11, v19

    .line 1138
    invoke-static {v9, v11}, Ljava/lang/Math;->min(FF)F

    move-result v1

    mul-float v2, v21, v1

    .line 1142
    invoke-static {v0, v2}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->-$$Nest$fputborderImageWidth(Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;F)V

    mul-float v2, v19, v1

    .line 1143
    invoke-static {v0, v2}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->-$$Nest$fputborderImageHeight(Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;F)V

    .line 1144
    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->-$$Nest$fgetsegmentBorderPath(Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;)Landroid/graphics/Path;

    move-result-object v1

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->-$$Nest$fgetborderImageWidth(Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;)F

    move-result v2

    neg-float v2, v2

    div-float v2, v2, v18

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->-$$Nest$fgetborderImageHeight(Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;)F

    move-result v3

    neg-float v3, v3

    div-float v3, v3, v18

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->offset(FF)V

    .line 1145
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->initPoints()V

    return-void
.end method

.method private createSmoothEdgesSegmentedImage(IILandroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .locals 8

    .line 787
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->getSourceBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz p3, :cond_2

    .line 788
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_2

    if-nez v0, :cond_0

    goto :goto_1

    .line 791
    :cond_0
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    .line 792
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 793
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    if-eqz p4, :cond_1

    .line 795
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p4

    int-to-float p4, p4

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr p4, v6

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-virtual {v4, p4, v6}, Landroid/graphics/Canvas;->scale(FF)V

    int-to-float p1, p1

    int-to-float p2, p2

    .line 796
    invoke-virtual {v4, p3, p1, p2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_1
    int-to-float p1, p1

    int-to-float p2, p2

    .line 798
    invoke-virtual {v4, p3, p1, p2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :goto_0
    const/4 p1, 0x5

    .line 800
    invoke-static {v3, p1}, Lorg/telegram/messenger/Utilities;->stackBlurBitmap(Landroid/graphics/Bitmap;I)V

    .line 802
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    invoke-static {p1, p2, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 803
    new-instance p2, Landroid/graphics/Canvas;

    invoke-direct {p2, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 p3, 0x0

    .line 804
    invoke-virtual {p2, v0, p3, p3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 805
    new-instance p4, Landroid/graphics/Paint;

    invoke-direct {p4, v2}, Landroid/graphics/Paint;-><init>(I)V

    .line 806
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 807
    invoke-virtual {p2, v3, p3, p3, p4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 809
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    return-object p1

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private hideLoadingDialog()V
    .locals 1

    .line 1416
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->loadingToast:Lorg/telegram/ui/Stories/recorder/DownloadButton$PreparingVideoToast;

    if-eqz v0, :cond_0

    .line 1417
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/DownloadButton$PreparingVideoToast;->hide()V

    const/4 v0, 0x0

    .line 1418
    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->loadingToast:Lorg/telegram/ui/Stories/recorder/DownloadButton$PreparingVideoToast;

    :cond_0
    return-void
.end method

.method private static isPointOnLine(Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$Point;Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$Point;Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$Point;)Z
    .locals 3

    .line 1169
    iget v0, p1, Landroid/graphics/Point;->x:I

    iget v1, p0, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v1

    iget v2, p2, Landroid/graphics/Point;->y:I

    iget p0, p0, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, p0

    mul-int/2addr v0, v2

    iget p1, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr p1, p0

    iget p0, p2, Landroid/graphics/Point;->x:I

    sub-int/2addr p0, v1

    mul-int/2addr p1, p0

    sub-int/2addr v0, p1

    int-to-float p0, v0

    const/high16 p1, -0x40800000    # -1.0f

    sub-float/2addr p0, p1

    .line 1170
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const p1, 0x3e19999a    # 0.15f

    cmpg-float p0, p0, p1

    if-gez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isWaitingMlKitError(Ljava/lang/Exception;)Z
    .locals 1

    .line 1237
    instance-of v0, p0, Lcom/google/mlkit/common/MlKitException;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "segmentation optional module to be downloaded"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$afterUploadingMedia$17(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;)V
    .locals 6

    .line 1490
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->customStickerCreated:I

    iget-object v2, p2, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;->mediaDocument:Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object p2, p2, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;->thumbPath:Ljava/lang/String;

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 p1, 0x2

    aput-object v2, v3, p1

    const/4 p1, 0x3

    aput-object p2, v3, p1

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 p2, 0x4

    aput-object p1, v3, p2

    invoke-virtual {v0, v1, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationNameOnUIThread(I[Ljava/lang/Object;)V

    .line 1491
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->hideLoadingDialog()V

    return-void
.end method

.method private synthetic lambda$afterUploadingMedia$18(Lorg/telegram/tgnet/TLObject;ILorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 7

    .line 1480
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-eqz v0, :cond_2

    .line 1481
    move-object p4, p1

    check-cast p4, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    .line 1482
    invoke-static {p2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0, p4}, Lorg/telegram/messenger/MediaDataController;->putStickerSet(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V

    .line 1483
    invoke-static {p2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    iget-object p4, p4, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v1, p4, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MediaDataController;->isStickerPackInstalled(J)Z

    move-result p4

    if-nez p4, :cond_0

    .line 1484
    invoke-static {p2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/MediaDataController;->toggleStickerSet(Landroid/content/Context;Lorg/telegram/tgnet/TLObject;ILorg/telegram/ui/ActionBar/BaseFragment;ZZ)V

    goto :goto_0

    :cond_0
    move-object v2, p1

    .line 1486
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->loadingToast:Lorg/telegram/ui/Stories/recorder/DownloadButton$PreparingVideoToast;

    if-eqz p1, :cond_1

    const/high16 p2, 0x3f800000    # 1.0f

    .line 1487
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Stories/recorder/DownloadButton$PreparingVideoToast;->setProgress(F)V

    .line 1489
    :cond_1
    new-instance p1, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$$ExternalSyntheticLambda26;

    invoke-direct {p1, p0, v2, p3}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$$ExternalSyntheticLambda26;-><init>(Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;)V

    const-wide/16 v0, 0x1c2

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    const/4 p1, 0x1

    goto :goto_1

    .line 1495
    :cond_2
    invoke-direct {p0, p4}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->showError(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    .line 1496
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->hideLoadingDialog()V

    const/4 p1, 0x0

    .line 1498
    :goto_1
    iget-object p2, p3, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;->whenDone:Lorg/telegram/messenger/Utilities$Callback;

    if-eqz p2, :cond_3

    .line 1499
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 1500
    iput-object p1, p3, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;->whenDone:Lorg/telegram/messenger/Utilities$Callback;

    :cond_3
    return-void
.end method

.method private synthetic lambda$afterUploadingMedia$19(ILorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 6

    .line 1478
    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$$ExternalSyntheticLambda22;

    move-object v1, p0

    move v3, p1

    move-object v4, p2

    move-object v2, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;Lorg/telegram/tgnet/TLObject;ILorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$afterUploadingMedia$20(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;)V
    .locals 6

    .line 1519
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->customStickerCreated:I

    iget-object v2, p2, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;->mediaDocument:Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object p2, p2, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;->thumbPath:Ljava/lang/String;

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v5, 0x1

    aput-object p1, v3, v5

    const/4 p1, 0x2

    aput-object v2, v3, p1

    const/4 p1, 0x3

    aput-object p2, v3, p1

    const/4 p1, 0x4

    aput-object v4, v3, p1

    invoke-virtual {v0, v1, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationNameOnUIThread(I[Ljava/lang/Object;)V

    .line 1520
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->hideLoadingDialog()V

    return-void
.end method

.method private synthetic lambda$afterUploadingMedia$21(Lorg/telegram/tgnet/TLObject;ILorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 8

    .line 1511
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-eqz v0, :cond_1

    .line 1512
    move-object p4, p1

    check-cast p4, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    .line 1513
    invoke-static {p2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0, p4}, Lorg/telegram/messenger/MediaDataController;->putStickerSet(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V

    .line 1514
    invoke-static {p2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v3, p1

    invoke-virtual/range {v1 .. v7}, Lorg/telegram/messenger/MediaDataController;->toggleStickerSet(Landroid/content/Context;Lorg/telegram/tgnet/TLObject;ILorg/telegram/ui/ActionBar/BaseFragment;ZZ)V

    .line 1515
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->loadingToast:Lorg/telegram/ui/Stories/recorder/DownloadButton$PreparingVideoToast;

    if-eqz p1, :cond_0

    const/high16 p2, 0x3f800000    # 1.0f

    .line 1516
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Stories/recorder/DownloadButton$PreparingVideoToast;->setProgress(F)V

    .line 1518
    :cond_0
    new-instance p1, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$$ExternalSyntheticLambda25;

    invoke-direct {p1, p0, v3, p3}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$$ExternalSyntheticLambda25;-><init>(Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;)V

    const-wide/16 v0, 0xfa

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    const/4 p1, 0x1

    goto :goto_0

    .line 1524
    :cond_1
    invoke-direct {p0, p4}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->showError(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    .line 1525
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->hideLoadingDialog()V

    const/4 p1, 0x0

    .line 1527
    :goto_0
    iget-object p2, p3, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;->whenDone:Lorg/telegram/messenger/Utilities$Callback;

    if-eqz p2, :cond_2

    .line 1528
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 1529
    iput-object p1, p3, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;->whenDone:Lorg/telegram/messenger/Utilities$Callback;

    :cond_2
    return-void
.end method

.method private synthetic lambda$afterUploadingMedia$22(ILorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 6

    .line 1509
    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$$ExternalSyntheticLambda23;

    move-object v1, p0

    move v3, p1

    move-object v4, p2

    move-object v2, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;Lorg/telegram/tgnet/TLObject;ILorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$afterUploadingMedia$24(I)V
    .locals 4

    .line 1553
    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->customStickerCreated:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1554
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->hideLoadingDialog()V

    return-void
.end method

.method private synthetic lambda$afterUploadingMedia$25(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;)V
    .locals 6

    .line 1576
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->customStickerCreated:I

    iget-object v2, p2, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;->mediaDocument:Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object p2, p2, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;->thumbPath:Ljava/lang/String;

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v5, 0x1

    aput-object p1, v3, v5

    const/4 p1, 0x2

    aput-object v2, v3, p1

    const/4 p1, 0x3

    aput-object p2, v3, p1

    const/4 p1, 0x4

    aput-object v4, v3, p1

    invoke-virtual {v0, v1, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationNameOnUIThread(I[Ljava/lang/Object;)V

    .line 1577
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->hideLoadingDialog()V

    return-void
.end method

.method private synthetic lambda$afterUploadingMedia$26(Lorg/telegram/tgnet/TLObject;ILorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 7

    .line 1566
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-eqz v0, :cond_2

    .line 1567
    move-object p4, p1

    check-cast p4, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    .line 1568
    invoke-static {p2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0, p4}, Lorg/telegram/messenger/MediaDataController;->putStickerSet(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V

    .line 1569
    invoke-static {p2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    iget-object p4, p4, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v1, p4, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MediaDataController;->isStickerPackInstalled(J)Z

    move-result p4

    if-nez p4, :cond_0

    .line 1570
    invoke-static {p2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/MediaDataController;->toggleStickerSet(Landroid/content/Context;Lorg/telegram/tgnet/TLObject;ILorg/telegram/ui/ActionBar/BaseFragment;ZZ)V

    goto :goto_0

    :cond_0
    move-object v2, p1

    .line 1572
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->loadingToast:Lorg/telegram/ui/Stories/recorder/DownloadButton$PreparingVideoToast;

    if-eqz p1, :cond_1

    const/high16 p2, 0x3f800000    # 1.0f

    .line 1573
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Stories/recorder/DownloadButton$PreparingVideoToast;->setProgress(F)V

    .line 1575
    :cond_1
    new-instance p1, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$$ExternalSyntheticLambda27;

    invoke-direct {p1, p0, v2, p3}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$$ExternalSyntheticLambda27;-><init>(Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;)V

    const-wide/16 v0, 0x1c2

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    const/4 p1, 0x1

    goto :goto_1

    .line 1581
    :cond_2
    invoke-direct {p0, p4}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->showError(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    .line 1582
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->hideLoadingDialog()V

    const/4 p1, 0x0

    .line 1584
    :goto_1
    iget-object p2, p3, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;->whenDone:Lorg/telegram/messenger/Utilities$Callback;

    if-eqz p2, :cond_3

    .line 1585
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 1586
    iput-object p1, p3, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;->whenDone:Lorg/telegram/messenger/Utilities$Callback;

    :cond_3
    return-void
.end method

.method private synthetic lambda$afterUploadingMedia$27(ILorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 6

    .line 1564
    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$$ExternalSyntheticLambda24;

    move-object v1, p0

    move v3, p1

    move-object v4, p2

    move-object v2, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$$ExternalSyntheticLambda24;-><init>(Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;Lorg/telegram/tgnet/TLObject;ILorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$enableClippingMode$1(Lorg/telegram/messenger/Utilities$Callback;Landroid/view/View;)V
    .locals 1

    .line 558
    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->objects:[Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;

    if-eqz p2, :cond_1

    array-length p2, p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->sourceBitmap:Landroid/graphics/Bitmap;

    if-nez p2, :cond_0

    goto :goto_0

    .line 562
    :cond_0
    iget p2, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->tx:F

    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->ty:F

    invoke-virtual {p0, p2, v0}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->objectBehind(FF)Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 564
    invoke-interface {p1, p2}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$enableClippingMode$2(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 577
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->bordersAnimatorValue:F

    return-void
.end method

.method private synthetic lambda$getThanosEffect$0()V
    .locals 2

    .line 206
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->thanosEffect:Lorg/telegram/ui/Components/ThanosEffect;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 208
    iput-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->thanosEffect:Lorg/telegram/ui/Components/ThanosEffect;

    .line 209
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$segment$10(Ljava/util/List;)V
    .locals 4

    .line 972
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 973
    const-string p1, "objimg: no objects"

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 976
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/mlkit/vision/label/ImageLabel;

    invoke-virtual {v1}, Lcom/google/mlkit/vision/label/ImageLabel;->getIndex()I

    move-result v1

    invoke-static {v1}, Lorg/telegram/ui/Components/Paint/ObjectDetectionEmojis;->labelToEmoji(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->detectedEmoji:Ljava/lang/String;

    .line 977
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "objimg: detected #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/mlkit/vision/label/ImageLabel;

    invoke-virtual {v2}, Lcom/google/mlkit/vision/label/ImageLabel;->getIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->detectedEmoji:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/mlkit/vision/label/ImageLabel;

    invoke-virtual {p1}, Lcom/google/mlkit/vision/label/ImageLabel;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 978
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->detectedEmoji:Ljava/lang/String;

    invoke-static {p1}, Lorg/telegram/messenger/Emoji;->getEmojiDrawable(Ljava/lang/CharSequence;)Lorg/telegram/messenger/Emoji$EmojiDrawable;

    return-void
.end method

.method private synthetic lambda$segment$8(Landroid/graphics/Bitmap;ILorg/telegram/messenger/Utilities$Callback;)V
    .locals 6

    .line 961
    iget v3, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->containerWidth:I

    iget v4, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->containerHeight:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->segmentImage(Landroid/graphics/Bitmap;IIILorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method private synthetic lambda$segment$9(Landroid/graphics/Bitmap;ILorg/telegram/messenger/Utilities$Callback;Lorg/telegram/messenger/Utilities$Callback;Ljava/lang/Exception;)V
    .locals 1

    const/4 v0, 0x0

    .line 958
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->segmentingLoading:Z

    .line 959
    invoke-static {p5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 960
    invoke-static {p5}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->isWaitingMlKitError(Ljava/lang/Exception;)Z

    move-result p5

    if-eqz p5, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p5

    if-eqz p5, :cond_0

    .line 961
    new-instance p4, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$$ExternalSyntheticLambda21;

    invoke-direct {p4, p0, p1, p2, p3}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;Landroid/graphics/Bitmap;ILorg/telegram/messenger/Utilities$Callback;)V

    const-wide/16 p1, 0x7d0

    invoke-static {p4, p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void

    .line 963
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p4, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$segmentImage$3(Ljava/util/ArrayList;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;)V
    .locals 1

    const/4 v0, 0x1

    .line 863
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->empty:Z

    const/4 v0, 0x0

    .line 864
    new-array v0, v0, [Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->objects:[Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;

    .line 865
    invoke-interface {p2, p3}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$segmentImage$4(Ljava/util/ArrayList;)V
    .locals 2

    const/4 v0, 0x0

    .line 894
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->empty:Z

    .line 895
    new-array v0, v0, [Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->objects:[Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;

    .line 896
    array-length p1, p1

    if-lez p1, :cond_0

    .line 897
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->stickerCutOutBtn:Lorg/telegram/ui/Components/Paint/Views/StickerCutOutBtn;

    const v0, 0x3e99999a    # 0.3f

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 898
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->stickerCutOutBtn:Lorg/telegram/ui/Components/Paint/Views/StickerCutOutBtn;

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 899
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->stickerCutOutBtn:Lorg/telegram/ui/Components/Paint/Views/StickerCutOutBtn;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Paint/Views/StickerCutOutBtn;->setAlpha(F)V

    .line 900
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->stickerCutOutBtn:Lorg/telegram/ui/Components/Paint/Views/StickerCutOutBtn;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0xfa

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$segmentImage$5(ILjava/util/List;Ljava/util/ArrayList;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 11

    .line 834
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->sourceBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->segmentingLoaded:Z

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 835
    :cond_0
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 836
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->sourceBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    div-float v1, v2, v1

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->sourceBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/high16 v1, -0x41000000    # -0.5f

    .line 837
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    int-to-float v1, p1

    .line 838
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/high16 v1, 0x3f000000    # 0.5f

    .line 839
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 840
    div-int/lit8 v1, p1, 0x5a

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 841
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->sourceBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->sourceBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_0

    .line 843
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->sourceBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->sourceBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 845
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 846
    new-instance p2, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;-><init>(Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;)V

    .line 847
    iget-object v1, p2, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->bounds:Landroid/graphics/RectF;

    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->sourceBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->sourceBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-virtual {v1, v6, v6, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 848
    iget-object v1, p2, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->rotatedBounds:Landroid/graphics/RectF;

    iget-object v4, p2, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v1, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 849
    iget-object v1, p2, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->rotatedBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 850
    iput p1, p2, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->orientation:I

    .line 851
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->sourceBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v3, v3, p1, v3}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->createSmoothEdgesSegmentedImage(IILandroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p2, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->image:Landroid/graphics/Bitmap;

    if-nez p1, :cond_2

    .line 853
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "createSmoothEdgesSegmentedImage failed on empty image"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void

    .line 856
    :cond_2
    invoke-virtual {p2}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->makeDarkMaskImage()Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p2, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->darkMaskImage:Landroid/graphics/Bitmap;

    .line 857
    iget p1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->containerWidth:I

    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->containerHeight:I

    invoke-direct {p0, p2, p1, v0}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->createSegmentImagePath(Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;II)V

    .line 858
    invoke-static {p2}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->-$$Nest$fgetborderImageWidth(Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;)F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->segmentBorderImageWidth:F

    .line 859
    invoke-static {p2}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->-$$Nest$fgetborderImageHeight(Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;)F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->segmentBorderImageHeight:F

    .line 861
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 862
    new-instance p1, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$$ExternalSyntheticLambda19;

    invoke-direct {p1, p0, p3, p4, p2}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;Ljava/util/ArrayList;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 867
    iput-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->selectedObject:Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;

    .line 868
    iput-boolean v2, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->segmentingLoaded:Z

    .line 869
    iput-boolean v3, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->segmentingLoading:Z

    return-void

    :cond_3
    move p4, v3

    .line 872
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p4, v1, :cond_5

    .line 873
    invoke-interface {p2, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SubjectMock;

    .line 874
    new-instance v4, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;-><init>(Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;)V

    .line 875
    iget-object v5, v4, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->bounds:Landroid/graphics/RectF;

    iget v6, v1, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SubjectMock;->startX:I

    int-to-float v7, v6

    iget v8, v1, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SubjectMock;->startY:I

    int-to-float v9, v8

    iget v10, v1, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SubjectMock;->width:I

    add-int/2addr v6, v10

    int-to-float v6, v6

    iget v10, v1, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SubjectMock;->height:I

    add-int/2addr v8, v10

    int-to-float v8, v8

    invoke-virtual {v5, v7, v9, v6, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 876
    iget-object v5, v4, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->rotatedBounds:Landroid/graphics/RectF;

    iget-object v6, v4, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v5, v6}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 877
    iget-object v5, v4, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->rotatedBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, v5}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 878
    iput p1, v4, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->orientation:I

    .line 879
    iget v5, v1, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SubjectMock;->startX:I

    iget v6, v1, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SubjectMock;->startY:I

    iget-object v1, v1, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SubjectMock;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v5, v6, v1, v3}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->createSmoothEdgesSegmentedImage(IILandroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v4, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->image:Landroid/graphics/Bitmap;

    if-nez v1, :cond_4

    goto :goto_2

    .line 881
    :cond_4
    invoke-virtual {v4}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->makeDarkMaskImage()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v4, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->darkMaskImage:Landroid/graphics/Bitmap;

    .line 882
    iget v1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->containerWidth:I

    iget v5, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->containerHeight:I

    invoke-direct {p0, v4, v1, v5}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->createSegmentImagePath(Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;II)V

    .line 883
    invoke-static {v4}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->-$$Nest$fgetborderImageWidth(Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;)F

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->segmentBorderImageWidth:F

    .line 884
    invoke-static {v4}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->-$$Nest$fgetborderImageHeight(Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;)F

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->segmentBorderImageHeight:F

    .line 886
    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    .line 889
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->selectedObject:Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;

    .line 891
    iput-boolean v2, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->segmentingLoaded:Z

    .line 892
    iput-boolean v3, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->segmentingLoading:Z

    .line 893
    new-instance p1, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$$ExternalSyntheticLambda20;

    invoke-direct {p1, p0, p3}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;Ljava/util/ArrayList;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_6
    :goto_3
    return-void
.end method

.method private synthetic lambda$segmentImage$6(ILorg/telegram/messenger/Utilities$Callback;Ljava/util/List;)V
    .locals 7

    .line 831
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 833
    sget-object v6, Lorg/telegram/messenger/Utilities;->themeQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$$ExternalSyntheticLambda11;

    move-object v1, p0

    move v2, p1

    move-object v5, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;ILjava/util/List;Ljava/util/ArrayList;Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-virtual {v6, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$showLoadingDialog$13()V
    .locals 5

    .line 1395
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->stickerUploader:Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1396
    iget-object v0, v0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;->messageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 1397
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->stickerUploader:Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;

    iget-object v3, v3, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/MediaController;->cancelVideoConvert(Lorg/telegram/messenger/MessageObject;)V

    .line 1398
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->stickerUploader:Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;

    iget-object v3, v3, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;->finalPath:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lorg/telegram/messenger/FileLoader;->cancelFileUpload(Ljava/lang/String;Z)V

    .line 1399
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->stickerUploader:Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;

    iget v0, v0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;->reqId:I

    if-eqz v0, :cond_0

    .line 1400
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->stickerUploader:Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;

    iget v3, v3, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;->reqId:I

    invoke-virtual {v0, v3, v2}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 1403
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->stickerUploader:Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;->destroy(Z)V

    .line 1404
    iput-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->stickerUploader:Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;

    .line 1406
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->loadingToast:Lorg/telegram/ui/Stories/recorder/DownloadButton$PreparingVideoToast;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/DownloadButton$PreparingVideoToast;->hide()V

    .line 1407
    iput-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->loadingToast:Lorg/telegram/ui/Stories/recorder/DownloadButton$PreparingVideoToast;

    return-void
.end method

.method private synthetic lambda$uploadMedia$14(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 1440
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz v0, :cond_0

    .line 1441
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    .line 1442
    iget-object p3, p1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v0, p2, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;->emoji:Ljava/lang/String;

    invoke-static {p3, v0}, Lorg/telegram/messenger/MediaDataController;->getInputStickerSetItem(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;)Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetItem;

    move-result-object p3

    iput-object p3, p2, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;->tlInputStickerSetItem:Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetItem;

    .line 1443
    iput-object p1, p2, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;->mediaDocument:Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    .line 1444
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->afterUploadingMedia()V

    return-void

    .line 1446
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->hideLoadingDialog()V

    .line 1447
    invoke-direct {p0, p3}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->showError(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method private synthetic lambda$uploadMedia$15(Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 1439
    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0, p2, p1, p3}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$uploadStickerFile$12(Lorg/telegram/messenger/Utilities$Callback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;ZJLorg/telegram/tgnet/TLRPC$StickerSet;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/VideoEditedInfo;Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback2;)V
    .locals 6

    move-object/from16 v0, p10

    move-object/from16 v1, p11

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    .line 1346
    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->stickerUploader:Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;

    if-eqz v4, :cond_1

    iget-boolean v4, v4, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;->uploaded:Z

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v2

    :goto_1
    if-eqz v4, :cond_3

    .line 1348
    iget-object v5, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->stickerUploader:Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;

    if-eqz v5, :cond_2

    .line 1349
    invoke-virtual {v5, v2}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;->destroy(Z)V

    .line 1351
    :cond_2
    new-instance v5, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;

    invoke-direct {v5}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;-><init>()V

    iput-object v5, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->stickerUploader:Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;

    .line 1353
    :cond_3
    iget-object v5, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->stickerUploader:Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;

    iput-object p2, v5, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;->emoji:Ljava/lang/String;

    .line 1354
    iput-object p3, v5, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;->finalPath:Ljava/lang/String;

    iput-object p3, v5, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;->path:Ljava/lang/String;

    .line 1355
    iput-object p4, v5, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;->stickerPackName:Ljava/lang/CharSequence;

    .line 1356
    iput-boolean p5, v5, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;->addToFavorite:Z

    .line 1357
    iput-wide p6, v5, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;->sendToDialogId:J

    .line 1358
    iput-object p8, v5, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;->stickerSet:Lorg/telegram/tgnet/TLRPC$StickerSet;

    .line 1359
    iput-object p9, v5, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;->replacedSticker:Lorg/telegram/tgnet/TLRPC$Document;

    .line 1360
    iput-object v0, v5, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;->uploadedSticker:Lorg/telegram/tgnet/TLRPC$Document;

    .line 1361
    iput-object v1, v5, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    move-object/from16 p2, p12

    .line 1362
    iput-object p2, v5, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;->thumbPath:Ljava/lang/String;

    .line 1363
    iput-object p1, v5, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;->whenDone:Lorg/telegram/messenger/Utilities$Callback;

    move-object/from16 p2, p13

    .line 1364
    iput-object p2, v5, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;->customHandler:Lorg/telegram/messenger/Utilities$Callback2;

    .line 1365
    invoke-virtual {v5}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;->setupFiles()V

    if-nez v4, :cond_4

    .line 1367
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->afterUploadingMedia()V

    goto :goto_2

    :cond_4
    if-eqz v0, :cond_5

    .line 1369
    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->stickerUploader:Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;

    iget-object p4, p2, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;->emoji:Ljava/lang/String;

    invoke-static {v0, p4}, Lorg/telegram/messenger/MediaDataController;->getInputStickerSetItem(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;)Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetItem;

    move-result-object p4

    iput-object p4, p2, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;->tlInputStickerSetItem:Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetItem;

    .line 1370
    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->stickerUploader:Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;

    new-instance p4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    invoke-direct {p4}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;-><init>()V

    iput-object p4, p2, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;->mediaDocument:Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    .line 1371
    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->stickerUploader:Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;

    iget-object p2, p2, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;->mediaDocument:Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    iget p4, p2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    or-int/2addr p4, v2

    iput p4, p2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    .line 1372
    iput-object v0, p2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 1373
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->afterUploadingMedia()V

    :cond_5
    :goto_2
    if-eqz v1, :cond_6

    .line 1375
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    .line 1376
    iput v2, p2, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 1377
    iget-object p3, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->stickerUploader:Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;

    sget p4, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    const-string/jumbo p5, "webm"

    invoke-static {p4, p5}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->makeCacheFile(ILjava/lang/String;)Ljava/io/File;

    move-result-object p4

    invoke-virtual {p4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p4

    iput-object p4, p2, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    iput-object p4, p3, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;->finalPath:Ljava/lang/String;

    .line 1378
    iget-object p3, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->stickerUploader:Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;

    new-instance p5, Lorg/telegram/messenger/MessageObject;

    sget p4, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object p7, p2

    move p6, p4

    move p9, v0

    move/from16 p10, v2

    move-object p8, v4

    invoke-direct/range {p5 .. p10}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/messenger/MessageObject;ZZ)V

    iput-object p5, p3, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;->messageObject:Lorg/telegram/messenger/MessageObject;

    .line 1379
    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->stickerUploader:Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;

    iget-object p2, p2, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;->messageObject:Lorg/telegram/messenger/MessageObject;

    iput-object v1, p2, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    .line 1380
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p2

    iget-object p3, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->stickerUploader:Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;

    iget-object p3, p3, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p2, p3, v3, v3, v3}, Lorg/telegram/messenger/MediaController;->scheduleVideoConvert(Lorg/telegram/messenger/MessageObject;ZZZ)Z

    goto :goto_3

    .line 1382
    :cond_6
    iget p2, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object p2

    const/high16 p4, 0x4000000

    invoke-virtual {p2, p3, v3, v2, p4}, Lorg/telegram/messenger/FileLoader;->uploadFile(Ljava/lang/String;ZZI)V

    :goto_3
    if-nez p1, :cond_7

    .line 1385
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->showLoadingDialog()V

    :cond_7
    return-void
.end method

.method public static removeUnnecessaryPoints(Ljava/util/List;)Ljava/util/List;
    .locals 6

    .line 1149
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    return-object p0

    .line 1151
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 1152
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$Point;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    move v2, v1

    .line 1154
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v1

    if-ge v2, v3, :cond_2

    add-int/lit8 v3, v2, -0x1

    .line 1155
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$Point;

    .line 1156
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$Point;

    add-int/lit8 v2, v2, 0x1

    .line 1157
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$Point;

    .line 1159
    invoke-static {v3, v4, v5}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->isPointOnLine(Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$Point;Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$Point;Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$Point;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1160
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1164
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$Point;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private segment(Landroid/graphics/Bitmap;ILorg/telegram/messenger/Utilities$Callback;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 8

    const/4 v0, 0x1

    .line 932
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->segmentingLoading:Z

    .line 933
    new-instance v0, Lcom/google/mlkit/vision/segmentation/subject/SubjectSegmenterOptions$Builder;

    invoke-direct {v0}, Lcom/google/mlkit/vision/segmentation/subject/SubjectSegmenterOptions$Builder;-><init>()V

    new-instance v1, Lcom/google/mlkit/vision/segmentation/subject/SubjectSegmenterOptions$SubjectResultOptions$Builder;

    invoke-direct {v1}, Lcom/google/mlkit/vision/segmentation/subject/SubjectSegmenterOptions$SubjectResultOptions$Builder;-><init>()V

    .line 937
    invoke-virtual {v1}, Lcom/google/mlkit/vision/segmentation/subject/SubjectSegmenterOptions$SubjectResultOptions$Builder;->enableSubjectBitmap()Lcom/google/mlkit/vision/segmentation/subject/SubjectSegmenterOptions$SubjectResultOptions$Builder;

    move-result-object v1

    .line 938
    invoke-virtual {v1}, Lcom/google/mlkit/vision/segmentation/subject/SubjectSegmenterOptions$SubjectResultOptions$Builder;->build()Lcom/google/mlkit/vision/segmentation/subject/SubjectSegmenterOptions$SubjectResultOptions;

    move-result-object v1

    .line 935
    invoke-virtual {v0, v1}, Lcom/google/mlkit/vision/segmentation/subject/SubjectSegmenterOptions$Builder;->enableMultipleSubjects(Lcom/google/mlkit/vision/segmentation/subject/SubjectSegmenterOptions$SubjectResultOptions;)Lcom/google/mlkit/vision/segmentation/subject/SubjectSegmenterOptions$Builder;

    move-result-object v0

    .line 940
    invoke-virtual {v0}, Lcom/google/mlkit/vision/segmentation/subject/SubjectSegmenterOptions$Builder;->build()Lcom/google/mlkit/vision/segmentation/subject/SubjectSegmenterOptions;

    move-result-object v0

    .line 933
    invoke-static {v0}, Lcom/google/mlkit/vision/segmentation/subject/SubjectSegmentation;->getClient(Lcom/google/mlkit/vision/segmentation/subject/SubjectSegmenterOptions;)Lcom/google/mlkit/vision/segmentation/subject/SubjectSegmenter;

    move-result-object v0

    .line 942
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/EmuDetector;->with(Landroid/content/Context;)Lorg/telegram/messenger/EmuDetector;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/EmuDetector;->detect()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 943
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 944
    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->sourceBitmap:Landroid/graphics/Bitmap;

    invoke-static {p2}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SubjectMock;->mock(Landroid/graphics/Bitmap;)Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SubjectMock;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 945
    invoke-interface {p3, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void

    .line 948
    :cond_0
    invoke-static {p1, p2}, Lcom/google/mlkit/vision/common/InputImage;->fromBitmap(Landroid/graphics/Bitmap;I)Lcom/google/mlkit/vision/common/InputImage;

    move-result-object v1

    .line 949
    invoke-interface {v0, v1}, Lcom/google/mlkit/vision/segmentation/subject/SubjectSegmenter;->process(Lcom/google/mlkit/vision/common/InputImage;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$$ExternalSyntheticLambda6;

    invoke-direct {v2, p3}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/messenger/Utilities$Callback;)V

    .line 950
    invoke-virtual {v0, v2}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$$ExternalSyntheticLambda7;

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move-object v7, p3

    move-object v6, p4

    invoke-direct/range {v2 .. v7}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;Landroid/graphics/Bitmap;ILorg/telegram/messenger/Utilities$Callback;Lorg/telegram/messenger/Utilities$Callback;)V

    .line 957
    invoke-virtual {v0, v2}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    .line 968
    iget-object p1, v3, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->detectedEmoji:Ljava/lang/String;

    if-nez p1, :cond_1

    .line 969
    sget-object p1, Lcom/google/mlkit/vision/label/defaults/ImageLabelerOptions;->DEFAULT_OPTIONS:Lcom/google/mlkit/vision/label/defaults/ImageLabelerOptions;

    invoke-static {p1}, Lcom/google/mlkit/vision/label/ImageLabeling;->getClient(Lcom/google/mlkit/vision/label/ImageLabelerOptionsBase;)Lcom/google/mlkit/vision/label/ImageLabeler;

    move-result-object p1

    .line 970
    invoke-interface {p1, v1}, Lcom/google/mlkit/vision/label/ImageLabeler;->process(Lcom/google/mlkit/vision/common/InputImage;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$$ExternalSyntheticLambda8;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;)V

    .line 971
    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$$ExternalSyntheticLambda9;

    invoke-direct {p2}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$$ExternalSyntheticLambda9;-><init>()V

    .line 980
    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    .line 985
    :cond_1
    iget p1, v3, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MediaDataController;->getEnabledReactionsList()Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    .line 986
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    const/16 p4, 0x9

    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    move-result p3

    if-ge p2, p3, :cond_2

    .line 987
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;

    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->reaction:Ljava/lang/String;

    invoke-static {p3}, Lorg/telegram/messenger/Emoji;->getEmojiDrawable(Ljava/lang/CharSequence;)Lorg/telegram/messenger/Emoji$EmojiDrawable;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private showError(Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 1454
    const-string v0, "PACK_TITLE_INVALID"

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1457
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->createErrorBulletin(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    :cond_1
    :goto_0
    return-void
.end method

.method private showLoadingDialog()V
    .locals 3

    .line 1391
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->loadingToast:Lorg/telegram/ui/Stories/recorder/DownloadButton$PreparingVideoToast;

    if-nez v0, :cond_0

    .line 1392
    new-instance v0, Lorg/telegram/ui/Stories/recorder/DownloadButton$PreparingVideoToast;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->PreparingSticker:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/DownloadButton$PreparingVideoToast;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->loadingToast:Lorg/telegram/ui/Stories/recorder/DownloadButton$PreparingVideoToast;

    .line 1394
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->loadingToast:Lorg/telegram/ui/Stories/recorder/DownloadButton$PreparingVideoToast;

    new-instance v1, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/DownloadButton$PreparingVideoToast;->setOnCancelListener(Ljava/lang/Runnable;)V

    .line 1409
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->loadingToast:Lorg/telegram/ui/Stories/recorder/DownloadButton$PreparingVideoToast;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1410
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->loadingToast:Lorg/telegram/ui/Stories/recorder/DownloadButton$PreparingVideoToast;

    const/16 v1, 0x11

    const/4 v2, -0x1

    invoke-static {v2, v2, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1412
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->loadingToast:Lorg/telegram/ui/Stories/recorder/DownloadButton$PreparingVideoToast;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/DownloadButton$PreparingVideoToast;->show()V

    return-void
.end method

.method private uploadMedia()V
    .locals 4

    .line 1423
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->stickerUploader:Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;

    if-nez v0, :cond_0

    return-void

    .line 1426
    :cond_0
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messages_uploadMedia;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messages_uploadMedia;-><init>()V

    .line 1427
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputPeerSelf;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerSelf;-><init>()V

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_uploadMedia;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 1428
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedDocument;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedDocument;-><init>()V

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_uploadMedia;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    .line 1429
    iget-object v3, v0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$InputMedia;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    .line 1430
    iget-object v3, v0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    if-eqz v3, :cond_1

    .line 1431
    const-string/jumbo v3, "video/webm"

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$InputMedia;->mime_type:Ljava/lang/String;

    goto :goto_0

    .line 1433
    :cond_1
    const-string v3, "image/webp"

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$InputMedia;->mime_type:Ljava/lang/String;

    .line 1435
    :goto_0
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;-><init>()V

    .line 1436
    iget-object v3, v0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;->emoji:Ljava/lang/String;

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->alt:Ljava/lang/String;

    .line 1437
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetEmpty;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetEmpty;-><init>()V

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    .line 1438
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_uploadMedia;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$InputMedia;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1439
    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0, v0}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;)V

    const/4 v0, 0x2

    invoke-virtual {v2, v1, v3, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    return-void
.end method


# virtual methods
.method public clean()V
    .locals 5

    .line 1208
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->bordersAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1209
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1210
    iput-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->bordersAnimator:Landroid/animation/ValueAnimator;

    .line 1212
    :cond_0
    iput-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->sourceBitmap:Landroid/graphics/Bitmap;

    .line 1213
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->objects:[Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    move v0, v2

    .line 1214
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->objects:[Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;

    array-length v4, v3

    if-ge v0, v4, :cond_2

    .line 1215
    aget-object v3, v3, v0

    if-eqz v3, :cond_1

    .line 1216
    invoke-virtual {v3}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->recycle()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1219
    :cond_2
    iput-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->objects:[Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;

    .line 1221
    :cond_3
    iput-boolean v2, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->segmentingLoaded:Z

    .line 1222
    iput-boolean v2, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->segmentingLoading:Z

    .line 1223
    iput-boolean v2, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->isSegmentedState:Z

    .line 1224
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->actionTextView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 1225
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->actionTextView:Landroid/widget/TextView;

    const v3, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleX(F)V

    .line 1226
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->actionTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleY(F)V

    .line 1227
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->stickerUploader:Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;

    if-eqz v0, :cond_5

    .line 1228
    iget-boolean v3, v0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;->uploaded:Z

    if-nez v3, :cond_4

    const/4 v3, 0x1

    .line 1229
    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;->destroy(Z)V

    .line 1230
    :cond_4
    iput-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->stickerUploader:Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;

    .line 1232
    :cond_5
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->hideLoadingDialog()V

    .line 1233
    iput-boolean v2, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->isThanosInProgress:Z

    return-void
.end method

.method public cutSegmentInFilteredBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return-object p2

    .line 1177
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->selectedObject:Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;

    if-nez v0, :cond_1

    goto/16 :goto_0

    .line 1180
    :cond_1
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->filteredBitmap:Landroid/graphics/Bitmap;

    .line 1181
    iget-object v0, v0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->darkMaskImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->isSegmentedState:Z

    if-nez v0, :cond_2

    goto/16 :goto_0

    .line 1184
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1185
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1186
    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    .line 1187
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4, v3}, Landroid/graphics/Paint;-><init>(I)V

    .line 1188
    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/4 v3, 0x0

    .line 1189
    invoke-virtual {v1, p1, v3, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1190
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 1191
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 1192
    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->selectedObject:Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;

    iget v5, v4, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->orientation:I

    if-eqz v5, :cond_4

    .line 1193
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    .line 1194
    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->selectedObject:Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;

    iget v4, v3, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->orientation:I

    int-to-float v4, v4

    invoke-virtual {v3}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->getDarkMaskImage()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    iget-object v6, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->selectedObject:Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->getDarkMaskImage()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v5

    invoke-virtual {p2, v4, v3, v6}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 1195
    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->selectedObject:Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;

    iget v4, v3, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->orientation:I

    div-int/lit8 v4, v4, 0x5a

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_3

    .line 1196
    invoke-virtual {v3}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->getImage()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->selectedObject:Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->getImage()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v3, v5

    neg-float v4, v3

    .line 1197
    invoke-virtual {p2, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1199
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->selectedObject:Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->getDarkMaskImage()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    int-to-float p1, p1

    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->selectedObject:Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->getDarkMaskImage()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr p1, v4

    invoke-virtual {p2, v3, p1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1200
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->selectedObject:Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->getDarkMaskImage()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v1, p1, p2, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    return-object v0

    .line 1202
    :cond_4
    invoke-virtual {v4}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->getDarkMaskImage()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v1, p1, p2, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-object v0

    :cond_5
    :goto_0
    return-object p1
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 11

    .line 1291
    sget p2, Lorg/telegram/messenger/NotificationCenter;->fileUploaded:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p2, :cond_0

    .line 1292
    aget-object p1, p3, v1

    check-cast p1, Ljava/lang/String;

    .line 1293
    aget-object p2, p3, v0

    check-cast p2, Lorg/telegram/tgnet/TLRPC$InputFile;

    .line 1294
    iget-object p3, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->stickerUploader:Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;

    if-eqz p3, :cond_8

    iget-object p3, p3, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;->finalPath:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 1295
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->stickerUploader:Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;

    iput-object p2, p1, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    .line 1296
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->uploadMedia()V

    return-void

    .line 1298
    :cond_0
    sget p2, Lorg/telegram/messenger/NotificationCenter;->fileUploadProgressChanged:I

    const/4 v2, 0x2

    if-ne p1, p2, :cond_1

    .line 1299
    aget-object p1, p3, v1

    check-cast p1, Ljava/lang/String;

    .line 1300
    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->stickerUploader:Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;

    if-eqz p2, :cond_8

    iget-object p2, p2, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;->finalPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 1301
    aget-object p1, p3, v0

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 1302
    aget-object p3, p3, v2

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p3, v0, v2

    if-lez p3, :cond_8

    .line 1304
    iget-object p3, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->stickerUploader:Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;

    long-to-float p1, p1

    long-to-float p2, v0

    div-float/2addr p1, p2

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {p3}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;->-$$Nest$fgetuploadProgress(Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;)F

    move-result v0

    invoke-static {p1, p2, v0}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result p1

    invoke-static {p3, p1}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;->-$$Nest$fputuploadProgress(Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;F)V

    .line 1305
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->loadingToast:Lorg/telegram/ui/Stories/recorder/DownloadButton$PreparingVideoToast;

    if-eqz p1, :cond_8

    .line 1306
    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->stickerUploader:Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;->getProgress()F

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Stories/recorder/DownloadButton$PreparingVideoToast;->setProgress(F)V

    return-void

    .line 1310
    :cond_1
    sget p2, Lorg/telegram/messenger/NotificationCenter;->fileUploadFailed:I

    if-ne p1, p2, :cond_2

    .line 1311
    aget-object p1, p3, v1

    check-cast p1, Ljava/lang/String;

    .line 1312
    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->stickerUploader:Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;

    if-eqz p2, :cond_8

    iget-object p2, p2, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;->finalPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 1313
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->hideLoadingDialog()V

    return-void

    .line 1315
    :cond_2
    sget p2, Lorg/telegram/messenger/NotificationCenter;->filePreparingStarted:I

    if-ne p1, p2, :cond_4

    .line 1316
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->stickerUploader:Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;

    if-nez p1, :cond_3

    goto/16 :goto_0

    .line 1317
    :cond_3
    aget-object p2, p3, v1

    iget-object p1, p1, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;->messageObject:Lorg/telegram/messenger/MessageObject;

    if-ne p2, p1, :cond_8

    .line 1318
    sget p1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->stickerUploader:Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;

    iget-object p2, p2, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;->finalPath:Ljava/lang/String;

    const/high16 p3, 0x4000000

    invoke-virtual {p1, p2, v1, v0, p3}, Lorg/telegram/messenger/FileLoader;->uploadFile(Ljava/lang/String;ZZI)V

    return-void

    .line 1320
    :cond_4
    sget p2, Lorg/telegram/messenger/NotificationCenter;->fileNewChunkAvailable:I

    if-ne p1, p2, :cond_6

    .line 1321
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->stickerUploader:Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;

    if-nez p1, :cond_5

    goto :goto_0

    .line 1322
    :cond_5
    aget-object p2, p3, v1

    iget-object p1, p1, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;->messageObject:Lorg/telegram/messenger/MessageObject;

    if-ne p2, p1, :cond_8

    .line 1323
    aget-object p1, p3, v0

    move-object v4, p1

    check-cast v4, Ljava/lang/String;

    .line 1324
    aget-object p1, p3, v2

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    const/4 v1, 0x3

    .line 1325
    aget-object v1, p3, v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const/4 v1, 0x4

    .line 1326
    aget-object p3, p3, v1

    move-object v10, p3

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result p3

    .line 1328
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->stickerUploader:Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;

    iget-object v1, v1, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iput-boolean v0, v1, Lorg/telegram/messenger/VideoEditedInfo;->needUpdateProgress:Z

    .line 1329
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    const-wide/16 v0, 0x1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    const/4 v5, 0x0

    invoke-virtual/range {v3 .. v10}, Lorg/telegram/messenger/FileLoader;->checkUploadNewDataAvailable(Ljava/lang/String;ZJJLjava/lang/Float;)V

    .line 1331
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->stickerUploader:Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;

    invoke-static {p1}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;->-$$Nest$fgetconvertingProgress(Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;)F

    move-result p2

    invoke-static {p2, p3}, Ljava/lang/Math;->max(FF)F

    move-result p2

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;->-$$Nest$fputconvertingProgress(Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;F)V

    .line 1332
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->loadingToast:Lorg/telegram/ui/Stories/recorder/DownloadButton$PreparingVideoToast;

    if-eqz p1, :cond_8

    .line 1333
    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->stickerUploader:Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;->getProgress()F

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Stories/recorder/DownloadButton$PreparingVideoToast;->setProgress(F)V

    return-void

    .line 1336
    :cond_6
    sget p2, Lorg/telegram/messenger/NotificationCenter;->filePreparingFailed:I

    if-ne p1, p2, :cond_8

    .line 1337
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->stickerUploader:Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;

    if-nez p1, :cond_7

    goto :goto_0

    .line 1338
    :cond_7
    aget-object p2, p3, v1

    iget-object p1, p1, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$StickerUploader;->messageObject:Lorg/telegram/messenger/MessageObject;

    if-ne p2, p1, :cond_8

    .line 1339
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->hideLoadingDialog()V

    :cond_8
    :goto_0
    return-void
.end method

.method public disableClippingMode()V
    .locals 3

    .line 635
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->segmentBorderAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    .line 636
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->bordersAnimator:Landroid/animation/ValueAnimator;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 637
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 638
    iput-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->bordersAnimator:Landroid/animation/ValueAnimator;

    .line 640
    :cond_0
    invoke-virtual {p0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x0

    .line 641
    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    .line 642
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->actionTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 643
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->actionTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const v1, 0x3f333333    # 0.7f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xf0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 781
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 782
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->screenPath:Landroid/graphics/Path;

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->bgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 783
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->dashPath:Landroid/graphics/Path;

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->dashPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 589
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->tx:F

    .line 590
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->ty:F

    .line 591
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->objects:[Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->bordersAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_3

    .line 592
    iget v1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->tx:F

    invoke-virtual {p0, v1, v0}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->objectBehind(FF)Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 593
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->objects:[Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;

    array-length v4, v3

    if-ge v2, v4, :cond_2

    .line 594
    aget-object v3, v3, v2

    if-ne v3, v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    goto :goto_1

    :cond_0
    move v4, v1

    :goto_1
    if-eqz v4, :cond_1

    .line 595
    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->objects:[Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;

    aget-object v3, v3, v2

    iget-boolean v3, v3, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->hover:Z

    if-nez v3, :cond_1

    .line 596
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->vibrateCursor(Landroid/view/View;)V

    .line 598
    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->objects:[Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;

    aget-object v3, v3, v2

    iput-boolean v4, v3, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->hover:Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 600
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_3

    .line 601
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 604
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public drawOutline(Landroid/graphics/Canvas;ZLandroid/view/ViewGroup;Z)V
    .locals 6

    .line 494
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->outlineAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v0, p3}, Lorg/telegram/ui/Components/AnimatedFloat;->setParent(Landroid/view/View;)V

    .line 495
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->outlineVisible:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->outlineAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    goto :goto_3

    :cond_0
    const/4 v0, 0x0

    if-nez p3, :cond_1

    const/high16 p3, 0x3f800000    # 1.0f

    goto :goto_1

    .line 499
    :cond_1
    iget-object p3, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->outlineAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v2, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->outlineVisible:Z

    if-eqz v2, :cond_2

    if-nez p4, :cond_2

    const/4 p4, 0x1

    goto :goto_0

    :cond_2
    move p4, v0

    :goto_0
    invoke-virtual {p3, p4}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result p3

    .line 500
    :goto_1
    iget-object p4, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->objects:[Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;

    if-eqz p4, :cond_4

    .line 501
    array-length v2, p4

    :goto_2
    if-ge v0, v2, :cond_4

    aget-object v3, p4, v0

    if-eqz v3, :cond_3

    .line 502
    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->selectedObject:Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;

    if-ne v3, v4, :cond_3

    iget v4, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->outlineWidth:F

    cmpl-float v5, v4, v1

    if-lez v5, :cond_3

    .line 503
    invoke-virtual {v3, p1, p2, v4, p3}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->drawOutline(Landroid/graphics/Canvas;ZFF)V

    return-void

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    return-void
.end method

.method public drawSegmentBorderPath(Landroid/graphics/Canvas;Lorg/telegram/messenger/ImageReceiver;Landroid/graphics/Matrix;Landroid/view/ViewGroup;)V
    .locals 4

    .line 533
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->segmentBorderAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v0, p4}, Lorg/telegram/ui/Components/AnimatedFloat;->setParent(Landroid/view/View;)V

    .line 534
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->bordersAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->segmentBorderAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-lez v0, :cond_1

    :cond_0
    if-nez p4, :cond_2

    :cond_1
    return-void

    .line 538
    :cond_2
    invoke-virtual {p2}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->imageReceiverWidth:F

    .line 539
    invoke-virtual {p2}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()F

    move-result p2

    iput p2, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->imageReceiverHeight:F

    .line 540
    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->imageReceiverMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p2, p3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 542
    iget p2, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->bordersAnimatorValueStart:F

    iget p3, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->bordersAnimatorValue:F

    add-float/2addr p2, p3

    const/high16 p3, 0x3f800000    # 1.0f

    rem-float/2addr p2, p3

    .line 543
    iget-object p3, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->segmentBorderAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->bordersAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    invoke-virtual {p3, v0}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result p3

    const/high16 v0, 0x50000000

    .line 545
    invoke-static {v0, p3}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 546
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->objects:[Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;

    if-eqz v0, :cond_5

    .line 547
    array-length v2, v0

    :goto_1
    if-ge v1, v2, :cond_5

    aget-object v3, v0, v1

    if-nez v3, :cond_4

    goto :goto_2

    .line 549
    :cond_4
    invoke-virtual {v3, p1, p2, p3, p4}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->drawAnimationBorders(Landroid/graphics/Canvas;FFLandroid/view/View;)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 553
    :cond_5
    invoke-virtual {p4}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public enableClippingMode(Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 2

    .line 557
    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 568
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->actionTextView:Landroid/widget/TextView;

    sget v0, Lorg/telegram/messenger/R$string;->SegmentationTabToCrop:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 569
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->actionTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 570
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->actionTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0xf0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 571
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->bordersAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_0

    .line 572
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 574
    :cond_0
    iget p1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->bordersAnimatorValue:F

    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->bordersAnimatorValueStart:F

    const/4 p1, 0x2

    .line 575
    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->bordersAnimator:Landroid/animation/ValueAnimator;

    .line 576
    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 579
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->bordersAnimator:Landroid/animation/ValueAnimator;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 580
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->bordersAnimator:Landroid/animation/ValueAnimator;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 581
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->bordersAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x960

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 582
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->bordersAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 583
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->bordersAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public getSegmentBorderImageHeight()F
    .locals 1

    .line 193
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->segmentBorderImageHeight:F

    return v0
.end method

.method public getSegmentBorderImageWidth()F
    .locals 1

    .line 197
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->segmentBorderImageWidth:F

    return v0
.end method

.method public getSegmentedDarkMaskImage()Landroid/graphics/Bitmap;
    .locals 1

    .line 674
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->isSegmentedState:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->selectedObject:Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->getDarkMaskImage()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSegmentedImage(Landroid/graphics/Bitmap;ZI)Landroid/graphics/Bitmap;
    .locals 1

    .line 693
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->selectedObject:Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;

    if-nez v0, :cond_0

    .line 694
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->sourceBitmap:Landroid/graphics/Bitmap;

    return-object p1

    :cond_0
    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    .line 697
    invoke-virtual {p0, p1, p3}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->cutSegmentInFilteredBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 699
    :cond_1
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->getImage()Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public getSourceBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 682
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->sourceBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getSourceBitmap(Z)Landroid/graphics/Bitmap;
    .locals 0

    if-eqz p1, :cond_0

    .line 686
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->filteredBitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    return-object p1

    .line 689
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->sourceBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public getThanosEffect()Lorg/telegram/ui/Components/ThanosEffect;
    .locals 3

    .line 201
    invoke-static {}, Lorg/telegram/ui/Components/ThanosEffect;->supports()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 204
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->thanosEffect:Lorg/telegram/ui/Components/ThanosEffect;

    if-nez v0, :cond_1

    .line 205
    new-instance v0, Lorg/telegram/ui/Components/ThanosEffect;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;)V

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/ThanosEffect;-><init>(Landroid/content/Context;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->thanosEffect:Lorg/telegram/ui/Components/ThanosEffect;

    const/4 v1, -0x1

    const/high16 v2, -0x40800000    # -1.0f

    .line 211
    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    .line 205
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 213
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->thanosEffect:Lorg/telegram/ui/Components/ThanosEffect;

    return-object v0
.end method

.method public getThanosImage(Lorg/telegram/messenger/MediaController$PhotoEntry;I)Landroid/graphics/Bitmap;
    .locals 12

    .line 704
    iget-object p2, p1, Lorg/telegram/messenger/MediaController$MediaEditState;->filterPath:Ljava/lang/String;

    if-eqz p2, :cond_0

    invoke-static {p2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->getSourceBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    .line 705
    :goto_0
    iget-object v0, p1, Lorg/telegram/messenger/MediaController$MediaEditState;->paintPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 707
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 708
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 709
    new-instance v3, Landroid/graphics/Paint;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    .line 710
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5, v4}, Landroid/graphics/Paint;-><init>(I)V

    .line 711
    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/4 v4, 0x0

    .line 712
    invoke-virtual {v2, p2, v4, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 714
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 715
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v4, v7, v7, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 717
    iget-object v5, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->selectedObject:Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;

    if-nez v5, :cond_1

    .line 718
    iget-object v6, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->objects:[Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;

    array-length v8, v6

    if-lez v8, :cond_1

    .line 719
    aget-object v5, v6, v7

    :cond_1
    const/4 v6, 0x0

    if-nez v5, :cond_2

    return-object v6

    .line 724
    :cond_2
    iget v7, v5, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->orientation:I

    const/high16 v8, 0x40000000    # 2.0f

    if-eqz v7, :cond_4

    iget-boolean v7, p1, Lorg/telegram/messenger/MediaController$MediaEditState;->isFiltered:Z

    if-eqz v7, :cond_4

    .line 725
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 726
    iget v9, v5, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->orientation:I

    int-to-float v9, v9

    invoke-virtual {v5}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->getDarkMaskImage()Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v10, v8

    invoke-virtual {v5}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->getDarkMaskImage()Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v11, v8

    invoke-virtual {v7, v9, v10, v11}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 727
    iget v9, v5, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->orientation:I

    div-int/lit8 v9, v9, 0x5a

    rem-int/lit8 v9, v9, 0x2

    if-eqz v9, :cond_3

    .line 728
    invoke-virtual {v5}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->getDarkMaskImage()Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-virtual {v5}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->getDarkMaskImage()Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    sub-int/2addr v9, v10

    int-to-float v9, v9

    div-float/2addr v9, v8

    neg-float v10, v9

    .line 729
    invoke-virtual {v7, v9, v10}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 731
    :cond_3
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v5}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->getDarkMaskImage()Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v5}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->getDarkMaskImage()Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v10, v11

    invoke-virtual {v7, v9, v10}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 732
    invoke-virtual {v5}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->getDarkMaskImage()Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v2, v9, v7, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 734
    :cond_4
    invoke-virtual {v5}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->getDarkMaskImage()Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v2, v7, v6, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :goto_1
    if-eqz v0, :cond_7

    .line 738
    new-instance v7, Landroid/graphics/PorterDuffXfermode;

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v9}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 739
    iget v7, v5, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->orientation:I

    if-eqz v7, :cond_6

    iget-boolean p1, p1, Lorg/telegram/messenger/MediaController$MediaEditState;->isFiltered:Z

    if-nez p1, :cond_6

    .line 740
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    .line 741
    iget v4, v5, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->orientation:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v8

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v8

    invoke-virtual {p1, v4, v6, v7}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 742
    iget v4, v5, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->orientation:I

    div-int/lit8 v4, v4, 0x5a

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_5

    .line 743
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v4, v8

    neg-float v5, v4

    .line 744
    invoke-virtual {p1, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 746
    :cond_5
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr p2, v5

    invoke-virtual {p1, v4, p2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 747
    invoke-virtual {v2, v0, p1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    return-object v1

    .line 749
    :cond_6
    invoke-virtual {v2, v0, v6, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_7
    return-object v1
.end method

.method public hasSegmentedBitmap()Z
    .locals 1

    .line 678
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->segmentingLoaded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->objects:[Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;

    if-eqz v0, :cond_0

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSegmentedState()Z
    .locals 1

    .line 665
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->isSegmentedState:Z

    return v0
.end method

.method public objectBehind(FF)Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;
    .locals 12

    .line 608
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->sourceBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    .line 609
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->objects:[Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;

    array-length v3, v2

    if-ge v0, v3, :cond_4

    .line 610
    aget-object v2, v2, v0

    if-nez v2, :cond_1

    goto :goto_2

    .line 613
    :cond_1
    iget v3, v2, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->orientation:I

    div-int/lit8 v3, v3, 0x5a

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_2

    .line 614
    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->sourceBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 615
    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->sourceBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    goto :goto_1

    .line 617
    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->sourceBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 618
    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->sourceBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 620
    :goto_1
    sget-object v5, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget-object v6, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->objects:[Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;

    aget-object v6, v6, v0

    iget-object v6, v6, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->rotatedBounds:Landroid/graphics/RectF;

    iget v7, v6, Landroid/graphics/RectF;->left:F

    int-to-float v3, v3

    div-float/2addr v7, v3

    iget v8, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->imageReceiverWidth:F

    mul-float/2addr v7, v8

    iget v9, v6, Landroid/graphics/RectF;->top:F

    int-to-float v4, v4

    div-float/2addr v9, v4

    iget v10, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->imageReceiverHeight:F

    mul-float/2addr v9, v10

    iget v11, v6, Landroid/graphics/RectF;->right:F

    div-float/2addr v11, v3

    mul-float/2addr v11, v8

    iget v3, v6, Landroid/graphics/RectF;->bottom:F

    div-float/2addr v3, v4

    mul-float/2addr v3, v10

    invoke-virtual {v5, v7, v9, v11, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 626
    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->imageReceiverMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v5}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 627
    invoke-virtual {v5, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v3

    if-eqz v3, :cond_3

    return-object v2

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-object v1
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 1279
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 1281
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->fileUploaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1282
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->fileUploadProgressChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1283
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->fileUploadFailed:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1284
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->filePreparingFailed:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1285
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->filePreparingStarted:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1286
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->fileNewChunkAvailable:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 1266
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 1267
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->currentAccount:I

    if-ltz v0, :cond_0

    .line 1268
    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->fileUploaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1269
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->fileUploadProgressChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1270
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->fileUploadFailed:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1271
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->filePreparingFailed:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1272
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->filePreparingStarted:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1273
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->fileNewChunkAvailable:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 8

    .line 757
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    move-object p1, p0

    const/high16 p2, 0x41200000    # 10.0f

    .line 759
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    .line 760
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    int-to-float p3, p3

    const/high16 p4, 0x40000000    # 2.0f

    mul-float p5, p2, p4

    sub-float/2addr p3, p5

    .line 761
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, p5

    const/high16 p5, 0x41000000    # 8.0f

    div-float p5, p3, p5

    .line 764
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    add-float/2addr p3, p2

    invoke-virtual {v1, p2, p2, p3, p3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 765
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result p2

    sub-float/2addr v0, p2

    div-float/2addr v0, p4

    const/4 p2, 0x0

    invoke-virtual {v1, p2, v0}, Landroid/graphics/RectF;->offset(FF)V

    .line 766
    iget-object p2, p1, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->areaPath:Landroid/graphics/Path;

    invoke-virtual {p2}, Landroid/graphics/Path;->rewind()V

    .line 767
    iget-object p2, p1, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->areaPath:Landroid/graphics/Path;

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p2, v1, p5, p5, v7}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 769
    iget-object p2, p1, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->bgPath:Landroid/graphics/Path;

    invoke-virtual {p2}, Landroid/graphics/Path;->rewind()V

    .line 770
    iget-object v2, p1, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->bgPath:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    int-to-float v5, p2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    int-to-float v6, p2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 772
    iget-object p2, p1, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->screenPath:Landroid/graphics/Path;

    invoke-virtual {p2}, Landroid/graphics/Path;->reset()V

    .line 773
    iget-object p2, p1, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->screenPath:Landroid/graphics/Path;

    iget-object p3, p1, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->bgPath:Landroid/graphics/Path;

    iget-object p4, p1, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->areaPath:Landroid/graphics/Path;

    sget-object v0, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    invoke-virtual {p2, p3, p4, v0}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 774
    iget-object p2, p1, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->dashPath:Landroid/graphics/Path;

    invoke-virtual {p2}, Landroid/graphics/Path;->rewind()V

    const/high16 p2, -0x40800000    # -1.0f

    .line 775
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    int-to-float p3, p3

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {v1, p3, p2}, Landroid/graphics/RectF;->inset(FF)V

    .line 776
    iget-object p2, p1, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->dashPath:Landroid/graphics/Path;

    invoke-virtual {p2, v1, p5, p5, v7}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 651
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 652
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->actionTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    int-to-float p2, p2

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p2, v0

    neg-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 653
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1d

    if-lt p1, p2, :cond_1

    .line 654
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->exclusionRects:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 655
    iget-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->outlineVisible:Z

    if-eqz p1, :cond_0

    .line 656
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->exclusionRects:Ljava/util/ArrayList;

    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->exclusionRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 657
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    const p2, 0x3e99999a    # 0.3f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    .line 658
    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->exclusionRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x2

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, p1

    div-int/lit8 v2, v2, 0x2

    const/4 p1, 0x0

    invoke-virtual {p2, p1, v0, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 660
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->exclusionRects:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setSystemGestureExclusionRects(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public overriddenPaths()Z
    .locals 5

    .line 448
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->objects:[Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 449
    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    if-eqz v4, :cond_0

    .line 450
    iget-object v4, v4, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->overrideImage:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public resetPaths()V
    .locals 6

    .line 459
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->objects:[Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;

    if-eqz v0, :cond_2

    .line 460
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    if-eqz v3, :cond_1

    .line 461
    iget-object v4, v3, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->overrideImage:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_1

    .line 462
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v4, 0x0

    .line 463
    iput-object v4, v3, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->overrideImage:Landroid/graphics/Bitmap;

    .line 464
    iget-object v5, v3, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->overrideDarkMaskImage:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_0

    .line 465
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 466
    iput-object v4, v3, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->overrideDarkMaskImage:Landroid/graphics/Bitmap;

    .line 468
    :cond_0
    iget v4, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->containerWidth:I

    iget v5, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->containerHeight:I

    invoke-direct {p0, v3, v4, v5}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->createSegmentImagePath(Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;II)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public segmentImage(Landroid/graphics/Bitmap;IIILorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    if-gtz p3, :cond_0

    .line 815
    sget-object p3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget p3, p3, Landroid/graphics/Point;->x:I

    :cond_0
    if-gtz p4, :cond_1

    .line 818
    sget-object p4, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget p4, p4, Landroid/graphics/Point;->y:I

    .line 820
    :cond_1
    iput p3, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->containerWidth:I

    .line 821
    iput p4, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->containerHeight:I

    .line 822
    iget-boolean p3, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->segmentingLoaded:Z

    if-eqz p3, :cond_2

    goto :goto_0

    .line 825
    :cond_2
    iget-boolean p3, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->segmentingLoading:Z

    if-nez p3, :cond_5

    if-nez p1, :cond_3

    goto :goto_0

    .line 826
    :cond_3
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p4, 0x18

    if-ge p3, p4, :cond_4

    goto :goto_0

    .line 827
    :cond_4
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->sourceBitmap:Landroid/graphics/Bitmap;

    .line 828
    iput p2, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->orientation:I

    const/4 p3, 0x0

    .line 829
    iput-object p3, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->detectedEmoji:Ljava/lang/String;

    .line 830
    new-instance p3, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0, p2, p5}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;ILorg/telegram/messenger/Utilities$Callback;)V

    invoke-direct {p0, p1, p2, p3, p5}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->segment(Landroid/graphics/Bitmap;ILorg/telegram/messenger/Utilities$Callback;Lorg/telegram/messenger/Utilities$Callback;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public setCurrentAccount(I)V
    .locals 2

    .line 1241
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->currentAccount:I

    if-eq v0, p1, :cond_1

    if-ltz v0, :cond_0

    .line 1242
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1243
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->fileUploaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1244
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->fileUploadProgressChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1245
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->fileUploadFailed:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1246
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->filePreparingFailed:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1247
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->filePreparingStarted:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1248
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->fileNewChunkAvailable:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1251
    :cond_0
    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->currentAccount:I

    if-ltz p1, :cond_1

    .line 1253
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1254
    iget p1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->fileUploaded:I

    invoke-virtual {p1, p0, v0}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1255
    iget p1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->fileUploadProgressChanged:I

    invoke-virtual {p1, p0, v0}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1256
    iget p1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->fileUploadFailed:I

    invoke-virtual {p1, p0, v0}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1257
    iget p1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->filePreparingFailed:I

    invoke-virtual {p1, p0, v0}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1258
    iget p1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->filePreparingStarted:I

    invoke-virtual {p1, p0, v0}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1259
    iget p1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->fileNewChunkAvailable:I

    invoke-virtual {p1, p0, v0}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    :cond_1
    return-void
.end method

.method public setOutlineVisible(Z)V
    .locals 4

    .line 476
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->outlineVisible:Z

    if-ne v0, p1, :cond_0

    goto/16 :goto_2

    .line 477
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->outlineVisible:Z

    .line 478
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/high16 p1, -0x3e700000    # -18.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float v1, p1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x140

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 479
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/View;

    if-eqz p1, :cond_3

    .line 480
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 482
    :cond_3
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    if-lt p1, v0, :cond_5

    .line 483
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->exclusionRects:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 484
    iget-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->outlineVisible:Z

    if-eqz p1, :cond_4

    .line 485
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->exclusionRects:Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->exclusionRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 486
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    const v0, 0x3e99999a    # 0.3f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    .line 487
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->exclusionRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x2

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, p1

    div-int/lit8 v3, v3, 0x2

    const/4 p1, 0x0

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 489
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->exclusionRects:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setSystemGestureExclusionRects(Ljava/util/List;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public setOutlineWidth(F)V
    .locals 0

    .line 434
    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->outlineWidth:F

    .line 435
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/View;

    if-eqz p1, :cond_0

    .line 436
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setSegmentedState(ZLorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;)V
    .locals 0

    .line 669
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->isSegmentedState:Z

    .line 670
    iput-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->selectedObject:Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;

    return-void
.end method

.method public setStickerCutOutBtn(Lorg/telegram/ui/Components/Paint/Views/StickerCutOutBtn;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->stickerCutOutBtn:Lorg/telegram/ui/Components/Paint/Views/StickerCutOutBtn;

    return-void
.end method

.method public updateOutlineBounds(Z)V
    .locals 4

    .line 515
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->setOutlineBounds:Z

    if-eqz p1, :cond_2

    .line 517
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->outlineBoundsPath:Landroid/graphics/Path;

    if-nez p1, :cond_0

    .line 518
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->outlineBoundsPath:Landroid/graphics/Path;

    goto :goto_0

    .line 520
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Path;->rewind()V

    .line 522
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->outlineBoundsInnerPath:Landroid/graphics/Path;

    if-nez p1, :cond_1

    .line 523
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->outlineBoundsInnerPath:Landroid/graphics/Path;

    .line 524
    sget-object p1, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v0, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 525
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->outlineBoundsInnerPath:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    const v2, 0x3df5c28f    # 0.12f

    mul-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v3

    mul-float/2addr v3, v2

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, p1, v1, v3, v2}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 527
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->outlineBoundsPath:Landroid/graphics/Path;

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->outlineBoundsInnerPath:Landroid/graphics/Path;

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->outlineMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 528
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->outlineBoundsPath:Landroid/graphics/Path;

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->outlineBounds:Landroid/graphics/RectF;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    :cond_2
    return-void
.end method

.method public updateOutlinePath(Landroid/graphics/Bitmap;)V
    .locals 3

    .line 441
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->selectedObject:Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 442
    invoke-direct {p0, v2, v2, p1, v1}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->createSmoothEdgesSegmentedImage(IILandroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, v0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->overrideImage:Landroid/graphics/Bitmap;

    .line 443
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->selectedObject:Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->makeDarkMaskImage()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p1, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->overrideDarkMaskImage:Landroid/graphics/Bitmap;

    .line 444
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->selectedObject:Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;

    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->containerWidth:I

    iget v1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->containerHeight:I

    invoke-direct {p0, p1, v0, v1}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->createSegmentImagePath(Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;II)V

    return-void
.end method

.method public uploadStickerFile(Ljava/lang/String;Lorg/telegram/messenger/VideoEditedInfo;Ljava/lang/String;Ljava/lang/CharSequence;ZJLorg/telegram/tgnet/TLRPC$StickerSet;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/messenger/Utilities$Callback2;)V
    .locals 15

    .line 1345
    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$$ExternalSyntheticLambda5;

    move-object v1, p0

    move-object/from16 v4, p1

    move-object/from16 v12, p2

    move-object/from16 v3, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-wide/from16 v7, p6

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v13, p11

    move-object/from16 v2, p12

    move-object/from16 v14, p13

    invoke-direct/range {v0 .. v14}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;Lorg/telegram/messenger/Utilities$Callback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;ZJLorg/telegram/tgnet/TLRPC$StickerSet;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/VideoEditedInfo;Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback2;)V

    const-wide/16 v1, 0x12c

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method
