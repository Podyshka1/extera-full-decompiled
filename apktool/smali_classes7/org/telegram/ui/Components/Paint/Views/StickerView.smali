.class public Lorg/telegram/ui/Components/Paint/Views/StickerView;
.super Lorg/telegram/ui/Components/Paint/Views/EntityView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/Paint/Views/StickerView$FrameLayoutDrawer;,
        Lorg/telegram/ui/Components/Paint/Views/StickerView$StickerViewSelectionView;
    }
.end annotation


# instance fields
.field private anchor:I

.field private baseSize:Lorg/telegram/ui/Components/Size;

.field public final centerImage:Lorg/telegram/messenger/ImageReceiver;

.field private containerView:Lorg/telegram/ui/Components/Paint/Views/StickerView$FrameLayoutDrawer;

.field private final mirrorT:Lorg/telegram/ui/Components/AnimatedFloat;

.field private mirrored:Z

.field private parentObject:Ljava/lang/Object;

.field private sticker:Lorg/telegram/tgnet/TLRPC$Document;


# direct methods
.method public static synthetic $r8$lambda$-gbYPHfUuQ6vG8h2tRFUyrxOWk4(Lorg/telegram/ui/Components/Paint/Views/StickerView;Lorg/telegram/messenger/ImageReceiver;ZZZ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/Paint/Views/StickerView;->lambda$new$0(Lorg/telegram/messenger/ImageReceiver;ZZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/Components/Paint/Views/StickerView;Lorg/telegram/ui/Components/Point;)V
    .locals 8

    .line 94
    invoke-virtual {p2}, Landroid/view/View;->getRotation()F

    move-result v3

    invoke-virtual {p2}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getScale()F

    move-result v4

    iget-object v5, p2, Lorg/telegram/ui/Components/Paint/Views/StickerView;->baseSize:Lorg/telegram/ui/Components/Size;

    iget-object v6, p2, Lorg/telegram/ui/Components/Paint/Views/StickerView;->sticker:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v7, p2, Lorg/telegram/ui/Components/Paint/Views/StickerView;->parentObject:Ljava/lang/Object;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Components/Paint/Views/StickerView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/Point;FFLorg/telegram/ui/Components/Size;Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;)V

    .line 95
    iget-boolean p1, p2, Lorg/telegram/ui/Components/Paint/Views/StickerView;->mirrored:Z

    if-eqz p1, :cond_0

    .line 96
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/StickerView;->mirror()V

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/Components/Point;FFLorg/telegram/ui/Components/Size;Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;)V
    .locals 8

    .line 53
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Paint/Views/EntityView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/Point;)V

    const/4 p2, -0x1

    .line 40
    iput p2, p0, Lorg/telegram/ui/Components/Paint/Views/StickerView;->anchor:I

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerView;->mirrored:Z

    .line 46
    new-instance v1, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v1}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerView;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    .line 54
    invoke-virtual {p0, p3}, Landroid/view/View;->setRotation(F)V

    .line 55
    invoke-virtual {p0, p4}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->setScale(F)V

    .line 57
    iput-object p6, p0, Lorg/telegram/ui/Components/Paint/Views/StickerView;->sticker:Lorg/telegram/tgnet/TLRPC$Document;

    .line 58
    iput-object p5, p0, Lorg/telegram/ui/Components/Paint/Views/StickerView;->baseSize:Lorg/telegram/ui/Components/Size;

    .line 59
    iput-object p7, p0, Lorg/telegram/ui/Components/Paint/Views/StickerView;->parentObject:Ljava/lang/Object;

    .line 61
    :goto_0
    iget-object p3, p6, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge v0, p3, :cond_1

    .line 62
    iget-object p3, p6, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 63
    instance-of p4, p3, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;

    if-eqz p4, :cond_0

    .line 64
    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->mask_coords:Lorg/telegram/tgnet/TLRPC$TL_maskCoords;

    if-eqz p3, :cond_1

    .line 65
    iget p3, p3, Lorg/telegram/tgnet/TLRPC$TL_maskCoords;->n:I

    iput p3, p0, Lorg/telegram/ui/Components/Paint/Views/StickerView;->anchor:I

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 71
    :cond_1
    :goto_1
    new-instance p3, Lorg/telegram/ui/Components/Paint/Views/StickerView$FrameLayoutDrawer;

    invoke-direct {p3, p0, p1}, Lorg/telegram/ui/Components/Paint/Views/StickerView$FrameLayoutDrawer;-><init>(Lorg/telegram/ui/Components/Paint/Views/StickerView;Landroid/content/Context;)V

    iput-object p3, p0, Lorg/telegram/ui/Components/Paint/Views/StickerView;->containerView:Lorg/telegram/ui/Components/Paint/Views/StickerView$FrameLayoutDrawer;

    const/high16 p1, -0x40800000    # -1.0f

    .line 72
    invoke-static {p2, p1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    new-instance v0, Lorg/telegram/ui/Components/AnimatedFloat;

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerView;->containerView:Lorg/telegram/ui/Components/Paint/Views/StickerView$FrameLayoutDrawer;

    const-wide/16 v4, 0x1f4

    sget-object v6, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v2, 0x0

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerView;->mirrorT:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 76
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerView;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/ImageReceiver;->setAspectFit(Z)V

    .line 77
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerView;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/ImageReceiver;->setInvalidateAll(Z)V

    .line 78
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerView;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/StickerView;->containerView:Lorg/telegram/ui/Components/Paint/Views/StickerView$FrameLayoutDrawer;

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/ImageReceiver;->setParentView(Landroid/view/View;)V

    .line 79
    iget-object p1, p6, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    const/16 p2, 0x5a

    invoke-static {p1, p2}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object p1

    .line 80
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerView;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-static {p6}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v1

    invoke-static {p1, p6}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v3

    const-string v5, "webp"

    const/4 v7, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v6, p7

    invoke-virtual/range {v0 .. v7}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 81
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerView;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    new-instance p2, Lorg/telegram/ui/Components/Paint/Views/StickerView$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/Paint/Views/StickerView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/Paint/Views/StickerView;)V

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/ImageReceiver;->setDelegate(Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;)V

    .line 90
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/StickerView;->updatePosition()V

    return-void
.end method

.method private synthetic lambda$new$0(Lorg/telegram/messenger/ImageReceiver;ZZZ)V
    .locals 0

    if-eqz p2, :cond_0

    if-nez p3, :cond_0

    .line 83
    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 85
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/StickerView;->didSetAnimatedSticker(Lorg/telegram/ui/Components/RLottieDrawable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected createSelectionView()Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;
    .locals 2

    .line 190
    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/StickerView$StickerViewSelectionView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Components/Paint/Views/StickerView$StickerViewSelectionView;-><init>(Lorg/telegram/ui/Components/Paint/Views/StickerView;Landroid/content/Context;)V

    return-object v0
.end method

.method protected didSetAnimatedSticker(Lorg/telegram/ui/Components/RLottieDrawable;)V
    .locals 0

    return-void
.end method

.method public getAnchor()I
    .locals 1

    .line 113
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerView;->anchor:I

    return v0
.end method

.method public getBaseSize()Lorg/telegram/ui/Components/Size;
    .locals 1

    .line 202
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerView;->baseSize:Lorg/telegram/ui/Components/Size;

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .line 159
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerView;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->getDuration()J

    move-result-wide v0

    return-wide v0

    .line 163
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerView;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getAnimation()Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 165
    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getDurationMs()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    :cond_1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getParentObject()Ljava/lang/Object;
    .locals 1

    .line 198
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerView;->parentObject:Ljava/lang/Object;

    return-object v0
.end method

.method public getSelectionBounds()Lorg/telegram/ui/Components/Rect;
    .locals 6

    .line 178
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 180
    new-instance v0, Lorg/telegram/ui/Components/Rect;

    invoke-direct {v0}, Lorg/telegram/ui/Components/Rect;-><init>()V

    return-object v0

    .line 182
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v0

    .line 184
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getScale()F

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    mul-float/2addr v1, v2

    .line 185
    new-instance v2, Lorg/telegram/ui/Components/Rect;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getPositionX()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v1, v4

    sub-float/2addr v3, v4

    mul-float/2addr v3, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getPositionY()F

    move-result v5

    sub-float/2addr v5, v4

    mul-float/2addr v5, v0

    mul-float/2addr v1, v0

    invoke-direct {v2, v3, v5, v1, v1}, Lorg/telegram/ui/Components/Rect;-><init>(FFFF)V

    return-object v2
.end method

.method public getSticker()Lorg/telegram/tgnet/TLRPC$Document;
    .locals 1

    .line 194
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerView;->sticker:Lorg/telegram/tgnet/TLRPC$Document;

    return-object v0
.end method

.method public isMirrored()Z
    .locals 1

    .line 129
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerView;->mirrored:Z

    return v0
.end method

.method public mirror()V
    .locals 1

    const/4 v0, 0x0

    .line 117
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/Paint/Views/StickerView;->mirror(Z)V

    return-void
.end method

.method public mirror(Z)V
    .locals 2

    .line 121
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerView;->mirrored:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerView;->mirrored:Z

    if-nez p1, :cond_0

    .line 123
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerView;->mirrorT:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(ZZ)F

    .line 125
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerView;->containerView:Lorg/telegram/ui/Components/Paint/Views/StickerView$FrameLayoutDrawer;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 108
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 109
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerView;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 102
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 103
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerView;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 173
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerView;->baseSize:Lorg/telegram/ui/Components/Size;

    iget p1, p1, Lorg/telegram/ui/Components/Size;->width:F

    float-to-int p1, p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerView;->baseSize:Lorg/telegram/ui/Components/Size;

    iget v0, v0, Lorg/telegram/ui/Components/Size;->height:F

    float-to-int v0, v0

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method protected stickerDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 145
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerView;->containerView:Lorg/telegram/ui/Components/Paint/Views/StickerView$FrameLayoutDrawer;

    if-nez v0, :cond_0

    return-void

    .line 149
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 150
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerView;->mirrorT:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerView;->mirrored:Z

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v2, v0, v1

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v2, v3, v2

    .line 151
    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/Views/StickerView;->baseSize:Lorg/telegram/ui/Components/Size;

    iget v4, v4, Lorg/telegram/ui/Components/Size;->width:F

    div-float/2addr v4, v1

    const/4 v1, 0x0

    invoke-virtual {p1, v2, v3, v4, v1}, Landroid/graphics/Canvas;->scale(FFFF)V

    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr v2, v0

    sub-float/2addr v3, v0

    mul-float/2addr v2, v3

    const/high16 v0, 0x3e800000    # 0.25f

    mul-float/2addr v2, v0

    .line 152
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->skew(FF)V

    .line 153
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerView;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/StickerView;->baseSize:Lorg/telegram/ui/Components/Size;

    iget v3, v2, Lorg/telegram/ui/Components/Size;->width:F

    float-to-int v3, v3

    int-to-float v3, v3

    iget v2, v2, Lorg/telegram/ui/Components/Size;->height:F

    float-to-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v1, v3, v2}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    .line 154
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerView;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 155
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected updatePosition()V
    .locals 3

    .line 133
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerView;->baseSize:Lorg/telegram/ui/Components/Size;

    iget v1, v0, Lorg/telegram/ui/Components/Size;->width:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 134
    iget v0, v0, Lorg/telegram/ui/Components/Size;->height:F

    div-float/2addr v0, v2

    .line 135
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getPositionX()F

    move-result v2

    sub-float/2addr v2, v1

    invoke-virtual {p0, v2}, Landroid/view/View;->setX(F)V

    .line 136
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getPositionY()F

    move-result v1

    sub-float/2addr v1, v0

    invoke-virtual {p0, v1}, Landroid/view/View;->setY(F)V

    .line 137
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->updateSelectionView()V

    return-void
.end method
