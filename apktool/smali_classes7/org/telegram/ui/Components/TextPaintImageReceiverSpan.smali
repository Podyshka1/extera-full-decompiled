.class public Lorg/telegram/ui/Components/TextPaintImageReceiverSpan;
.super Landroid/text/style/ReplacementSpan;
.source "SourceFile"


# instance fields
.field private alignTop:Z

.field private height:I

.field private imageReceiver:Lorg/telegram/messenger/ImageReceiver;

.field private width:I


# direct methods
.method public static synthetic $r8$lambda$4MMEUN7lGItDcmEJ4PJPQuQdpRk(Lorg/telegram/messenger/ImageReceiver;ZZZ)V
    .locals 0

    .line 41
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->canInvertBitmap()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/16 p1, 0x14

    .line 44
    new-array p1, p1, [F

    fill-array-data p1, :array_0

    .line 50
    new-instance p2, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {p2, p1}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    invoke-virtual {p0, p2}, Lorg/telegram/messenger/ImageReceiver;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void

    nop

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x437f0000    # 255.0f
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        0x437f0000    # 255.0f
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x437f0000    # 255.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public static synthetic $r8$lambda$hL00ZSraoBvcqklhxroC5of8_Ck(Lorg/telegram/messenger/ImageReceiver;ZZZ)V
    .locals 0

    .line 66
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->canInvertBitmap()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/16 p1, 0x14

    .line 69
    new-array p1, p1, [F

    fill-array-data p1, :array_0

    .line 75
    new-instance p2, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {p2, p1}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    invoke-virtual {p0, p2}, Lorg/telegram/messenger/ImageReceiver;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void

    nop

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x437f0000    # 255.0f
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        0x437f0000    # 255.0f
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x437f0000    # 255.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public static synthetic $r8$lambda$njb1CVCkH53R0cVT72Kh89O4uj4()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;IIZZ)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 33
    invoke-direct {v0}, Landroid/text/style/ReplacementSpan;-><init>()V

    .line 34
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v3, 0x1

    aput-object v4, v5, v3

    const-string v4, "%d_%d_i"

    invoke-static {v2, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    move/from16 v2, p4

    .line 35
    iput v2, v0, Lorg/telegram/ui/Components/TextPaintImageReceiverSpan;->width:I

    move/from16 v2, p5

    .line 36
    iput v2, v0, Lorg/telegram/ui/Components/TextPaintImageReceiverSpan;->height:I

    .line 37
    new-instance v2, Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v4, p1

    invoke-direct {v2, v4}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/TextPaintImageReceiverSpan;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 38
    invoke-virtual {v2, v3}, Lorg/telegram/messenger/ImageReceiver;->setInvalidateAll(Z)V

    if-eqz p7, :cond_0

    .line 40
    iget-object v2, v0, Lorg/telegram/ui/Components/TextPaintImageReceiverSpan;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    new-instance v3, Lorg/telegram/ui/Components/TextPaintImageReceiverSpan$$ExternalSyntheticLambda2;

    invoke-direct {v3}, Lorg/telegram/ui/Components/TextPaintImageReceiverSpan$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/ImageReceiver;->setDelegate(Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;)V

    .line 53
    :cond_0
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    const/16 v3, 0x5a

    invoke-static {v2, v3}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v2

    .line 54
    iget-object v6, v0, Lorg/telegram/ui/Components/TextPaintImageReceiverSpan;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-static {v1}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v7

    invoke-static {v2, v1}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v9

    const/4 v13, 0x0

    const/4 v15, 0x1

    const-wide/16 v11, -0x1

    move-object v10, v8

    move-object/from16 v14, p3

    invoke-virtual/range {v6 .. v15}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Object;I)V

    move/from16 v1, p6

    .line 55
    iput-boolean v1, v0, Lorg/telegram/ui/Components/TextPaintImageReceiverSpan;->alignTop:Z

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lorg/telegram/ui/web/WebInstantView$WebPhoto;Ljava/lang/Object;IIZZ)V
    .locals 4

    .line 58
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    .line 59
    sget-object p3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "%d_%d_i"

    invoke-static {p3, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 60
    iput p4, p0, Lorg/telegram/ui/Components/TextPaintImageReceiverSpan;->width:I

    .line 61
    iput p5, p0, Lorg/telegram/ui/Components/TextPaintImageReceiverSpan;->height:I

    .line 62
    new-instance p3, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {p3, p1}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    iput-object p3, p0, Lorg/telegram/ui/Components/TextPaintImageReceiverSpan;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 63
    invoke-virtual {p3, v0}, Lorg/telegram/messenger/ImageReceiver;->setInvalidateAll(Z)V

    if-eqz p7, :cond_0

    .line 65
    iget-object p1, p0, Lorg/telegram/ui/Components/TextPaintImageReceiverSpan;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    new-instance p3, Lorg/telegram/ui/Components/TextPaintImageReceiverSpan$$ExternalSyntheticLambda0;

    invoke-direct {p3}, Lorg/telegram/ui/Components/TextPaintImageReceiverSpan$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p1, p3}, Lorg/telegram/messenger/ImageReceiver;->setDelegate(Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;)V

    .line 78
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/TextPaintImageReceiverSpan;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    new-instance p3, Lorg/telegram/ui/Components/TextPaintImageReceiverSpan$$ExternalSyntheticLambda1;

    invoke-direct {p3}, Lorg/telegram/ui/Components/TextPaintImageReceiverSpan$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p2, p1, p3}, Lorg/telegram/ui/web/WebInstantView;->loadPhoto(Lorg/telegram/ui/web/WebInstantView$WebPhoto;Lorg/telegram/messenger/ImageReceiver;Ljava/lang/Runnable;)V

    .line 79
    iput-boolean p6, p0, Lorg/telegram/ui/Components/TextPaintImageReceiverSpan;->alignTop:Z

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 0

    .line 99
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 100
    iget-boolean p2, p0, Lorg/telegram/ui/Components/TextPaintImageReceiverSpan;->alignTop:Z

    if-eqz p2, :cond_0

    .line 101
    iget-object p2, p0, Lorg/telegram/ui/Components/TextPaintImageReceiverSpan;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    float-to-int p3, p5

    int-to-float p3, p3

    add-int/lit8 p6, p6, -0x1

    int-to-float p4, p6

    iget p5, p0, Lorg/telegram/ui/Components/TextPaintImageReceiverSpan;->width:I

    int-to-float p5, p5

    iget p6, p0, Lorg/telegram/ui/Components/TextPaintImageReceiverSpan;->height:I

    int-to-float p6, p6

    invoke-virtual {p2, p3, p4, p5, p6}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    goto :goto_0

    :cond_0
    const/high16 p2, 0x40800000    # 4.0f

    .line 103
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    sub-int/2addr p8, p2

    sub-int/2addr p8, p6

    .line 104
    iget-object p2, p0, Lorg/telegram/ui/Components/TextPaintImageReceiverSpan;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    float-to-int p3, p5

    int-to-float p3, p3

    iget p4, p0, Lorg/telegram/ui/Components/TextPaintImageReceiverSpan;->height:I

    sub-int/2addr p8, p4

    div-int/lit8 p8, p8, 0x2

    add-int/2addr p6, p8

    int-to-float p5, p6

    iget p6, p0, Lorg/telegram/ui/Components/TextPaintImageReceiverSpan;->width:I

    int-to-float p6, p6

    int-to-float p4, p4

    invoke-virtual {p2, p3, p5, p6, p4}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    .line 106
    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/Components/TextPaintImageReceiverSpan;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p2, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 107
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 0

    if-eqz p5, :cond_1

    .line 85
    iget-boolean p1, p0, Lorg/telegram/ui/Components/TextPaintImageReceiverSpan;->alignTop:Z

    const/high16 p2, 0x40800000    # 4.0f

    if-eqz p1, :cond_0

    .line 86
    iget p1, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget p3, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr p1, p3

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    sub-int/2addr p1, p2

    .line 87
    iget p2, p0, Lorg/telegram/ui/Components/TextPaintImageReceiverSpan;->height:I

    sub-int/2addr p2, p1

    iput p2, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iput p2, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    rsub-int/lit8 p1, p1, 0x0

    .line 88
    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    goto :goto_0

    .line 90
    :cond_0
    iget p1, p0, Lorg/telegram/ui/Components/TextPaintImageReceiverSpan;->height:I

    neg-int p1, p1

    div-int/lit8 p1, p1, 0x2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    sub-int/2addr p1, p3

    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 91
    iget p1, p0, Lorg/telegram/ui/Components/TextPaintImageReceiverSpan;->height:I

    div-int/lit8 p3, p1, 0x2

    sub-int/2addr p1, p3

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 94
    :cond_1
    :goto_0
    iget p1, p0, Lorg/telegram/ui/Components/TextPaintImageReceiverSpan;->width:I

    return p1
.end method
