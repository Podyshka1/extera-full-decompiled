.class public Lorg/telegram/ui/Components/SenderSelectView;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field private static final MENU_PROGRESS:Landroidx/dynamicanimation/animation/FloatPropertyCompat;


# instance fields
.field private avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

.field private avatarImage:Lorg/telegram/messenger/ImageReceiver;

.field private backgroundPaint:Landroid/graphics/Paint;

.field private menuAnimator:Landroid/animation/ValueAnimator;

.field private menuPaint:Landroid/graphics/Paint;

.field private menuProgress:F

.field private menuSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private scaleIn:Z

.field private scaleOut:Z

.field private selectorDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public static synthetic $r8$lambda$K-0kIe8gi8ce3Pl7QoAyAgwuavA(Lorg/telegram/ui/Components/SenderSelectView;F)V
    .locals 0

    .line 32
    iput p1, p0, Lorg/telegram/ui/Components/SenderSelectView;->menuProgress:F

    .line 33
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public static synthetic $r8$lambda$PWdSLJbNnGXVrUJByDRFSoShm-M(Lorg/telegram/ui/Components/SenderSelectView;)F
    .locals 0

    .line 31
    iget p0, p0, Lorg/telegram/ui/Components/SenderSelectView;->menuProgress:F

    return p0
.end method

.method public static synthetic $r8$lambda$TAa0Dv9xwsh-B4spXs7S47ZhaEs(Lorg/telegram/ui/Components/SenderSelectView;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/SenderSelectView;->lambda$setProgress$3(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$uSX8Keztwrz4qkYHmIqcffUdGHY(Lorg/telegram/ui/Components/SenderSelectView;ZFFLandroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/Components/SenderSelectView;->lambda$setProgress$2(ZFFLandroidx/dynamicanimation/animation/DynamicAnimation;FF)V

    return-void
.end method

.method public static synthetic $r8$lambda$ywn_DLV5zslnPs5iBwiIhVgq8y0(Lorg/telegram/ui/Components/SenderSelectView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SenderSelectView;->lambda$setProgress$4(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmenuAnimator(Lorg/telegram/ui/Components/SenderSelectView;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/SenderSelectView;->menuAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmenuAnimator(Lorg/telegram/ui/Components/SenderSelectView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/SenderSelectView;->menuAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 31
    new-instance v0, Lorg/telegram/ui/Components/SimpleFloatPropertyCompat;

    new-instance v1, Lorg/telegram/ui/Components/SenderSelectView$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/telegram/ui/Components/SenderSelectView$$ExternalSyntheticLambda0;-><init>()V

    new-instance v2, Lorg/telegram/ui/Components/SenderSelectView$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lorg/telegram/ui/Components/SenderSelectView$$ExternalSyntheticLambda1;-><init>()V

    const-string v3, "menuProgress"

    invoke-direct {v0, v3, v1, v2}, Lorg/telegram/ui/Components/SimpleFloatPropertyCompat;-><init>(Ljava/lang/String;Lorg/telegram/ui/Components/SimpleFloatPropertyCompat$Getter;Lorg/telegram/ui/Components/SimpleFloatPropertyCompat$Setter;)V

    const/high16 v1, 0x42c80000    # 100.0f

    .line 34
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/SimpleFloatPropertyCompat;->setMultiplier(F)Lorg/telegram/ui/Components/SimpleFloatPropertyCompat;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Components/SenderSelectView;->MENU_PROGRESS:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 49
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 36
    new-instance p1, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {p1, p0}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/SenderSelectView;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    .line 37
    new-instance p1, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {p1}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/SenderSelectView;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    .line 39
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/SenderSelectView;->backgroundPaint:Landroid/graphics/Paint;

    .line 40
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/SenderSelectView;->menuPaint:Landroid/graphics/Paint;

    .line 50
    iget-object p1, p0, Lorg/telegram/ui/Components/SenderSelectView;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    const/high16 v1, 0x42000000    # 32.0f

    invoke-static {v1}, Lcom/exteragram/messenger/ExteraConfig;->getAvatarCorners(F)I

    move-result v1

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 51
    iget-object p1, p0, Lorg/telegram/ui/Components/SenderSelectView;->menuPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 52
    iget-object p1, p0, Lorg/telegram/ui/Components/SenderSelectView;->menuPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 53
    iget-object p1, p0, Lorg/telegram/ui/Components/SenderSelectView;->menuPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 54
    invoke-direct {p0}, Lorg/telegram/ui/Components/SenderSelectView;->updateColors()V

    .line 55
    sget p1, Lorg/telegram/messenger/R$string;->AccDescrSendAsPeer:I

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, ""

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "AccDescrSendAsPeer"

    invoke-static {v1, p1, v0}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic lambda$setProgress$2(ZFFLandroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    const/high16 p4, 0x40000000    # 2.0f

    if-eqz p1, :cond_0

    div-float/2addr p2, p4

    cmpg-float p2, p5, p2

    if-gtz p2, :cond_1

    .line 186
    iget-boolean p2, p0, Lorg/telegram/ui/Components/SenderSelectView;->scaleIn:Z

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_0
    div-float/2addr p3, p4

    cmpl-float p2, p5, p3

    if-ltz p2, :cond_1

    iget-boolean p2, p0, Lorg/telegram/ui/Components/SenderSelectView;->scaleOut:Z

    if-eqz p2, :cond_1

    :goto_0
    xor-int/lit8 p2, p1, 0x1

    .line 187
    iput-boolean p2, p0, Lorg/telegram/ui/Components/SenderSelectView;->scaleIn:Z

    .line 188
    iput-boolean p1, p0, Lorg/telegram/ui/Components/SenderSelectView;->scaleOut:Z

    :cond_1
    return-void
.end method

.method private synthetic lambda$setProgress$3(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    const/4 p3, 0x0

    .line 192
    iput-boolean p3, p0, Lorg/telegram/ui/Components/SenderSelectView;->scaleIn:Z

    .line 193
    iput-boolean p3, p0, Lorg/telegram/ui/Components/SenderSelectView;->scaleOut:Z

    if-nez p2, :cond_0

    .line 196
    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    .line 198
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Components/SenderSelectView;->menuSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-ne p1, p2, :cond_1

    const/4 p1, 0x0

    .line 199
    iput-object p1, p0, Lorg/telegram/ui/Components/SenderSelectView;->menuSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    :cond_1
    return-void
.end method

.method private synthetic lambda$setProgress$4(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 207
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/SenderSelectView;->menuProgress:F

    .line 208
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private updateColors()V
    .locals 3

    .line 59
    iget-object v0, p0, Lorg/telegram/ui/Components/SenderSelectView;->backgroundPaint:Landroid/graphics/Paint;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelVoiceBackground:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 60
    iget-object v0, p0, Lorg/telegram/ui/Components/SenderSelectView;->menuPaint:Landroid/graphics/Paint;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelVoicePressed:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v0, 0x42000000    # 32.0f

    .line 61
    invoke-static {v0}, Lcom/exteragram/messenger/ExteraConfig;->getAvatarCorners(F)I

    move-result v0

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/SenderSelectView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    .line 62
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .line 240
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 241
    iget-object v0, p0, Lorg/telegram/ui/Components/SenderSelectView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    return-void
.end method

.method public getProgress()F
    .locals 1

    .line 230
    iget v0, p0, Lorg/telegram/ui/Components/SenderSelectView;->menuProgress:F

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .line 246
    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 247
    iget-object v0, p0, Lorg/telegram/ui/Components/SenderSelectView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 67
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 69
    iget-object v0, p0, Lorg/telegram/ui/Components/SenderSelectView;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 74
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 76
    iget-object v0, p0, Lorg/telegram/ui/Components/SenderSelectView;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 87
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 89
    iget-boolean v1, p0, Lorg/telegram/ui/Components/SenderSelectView;->scaleOut:Z

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_0

    .line 90
    iget v1, p0, Lorg/telegram/ui/Components/SenderSelectView;->menuProgress:F

    sub-float/2addr v2, v1

    goto :goto_0

    .line 91
    :cond_0
    iget-boolean v1, p0, Lorg/telegram/ui/Components/SenderSelectView;->scaleIn:Z

    if-eqz v1, :cond_1

    .line 92
    iget v2, p0, Lorg/telegram/ui/Components/SenderSelectView;->menuProgress:F

    .line 96
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    invoke-virtual {p1, v2, v2, v1, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 98
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 100
    iget-object v1, p0, Lorg/telegram/ui/Components/SenderSelectView;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 102
    iget v1, p0, Lorg/telegram/ui/Components/SenderSelectView;->menuProgress:F

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v8, v1

    .line 103
    iget-object v1, p0, Lorg/telegram/ui/Components/SenderSelectView;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 104
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v3, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/exteragram/messenger/ExteraConfig;->getAvatarCorners(FZ)I

    move-result v1

    int-to-float v5, v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1, v2}, Lcom/exteragram/messenger/ExteraConfig;->getAvatarCorners(FZ)I

    move-result v1

    int-to-float v6, v1

    iget-object v7, p0, Lorg/telegram/ui/Components/SenderSelectView;->backgroundPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 106
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 107
    iget-object v0, p0, Lorg/telegram/ui/Components/SenderSelectView;->menuPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    const/high16 v0, 0x41100000    # 9.0f

    .line 108
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Components/SenderSelectView;->menuPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    add-float/2addr v1, v0

    .line 109
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sub-float v3, v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    sub-float v4, v0, v1

    iget-object v5, p0, Lorg/telegram/ui/Components/SenderSelectView;->menuPaint:Landroid/graphics/Paint;

    move v2, v1

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 110
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    sub-float v2, v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sub-float v3, v0, v1

    iget-object v5, p0, Lorg/telegram/ui/Components/SenderSelectView;->menuPaint:Landroid/graphics/Paint;

    move v4, v1

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 111
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 113
    iget-object v1, p0, Lorg/telegram/ui/Components/SenderSelectView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 114
    iget-object v1, p0, Lorg/telegram/ui/Components/SenderSelectView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 116
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 81
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 82
    iget-object p1, p0, Lorg/telegram/ui/Components/SenderSelectView;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, p2, v0}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    return-void
.end method

.method public setAvatar(Lorg/telegram/tgnet/TLObject;)V
    .locals 4

    .line 125
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_0

    .line 126
    move-object v0, p1

    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 127
    :cond_0
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_1

    .line 128
    move-object v0, p1

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    goto :goto_0

    .line 129
    :cond_1
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$ChatInvite;

    if-eqz v0, :cond_2

    .line 130
    move-object v0, p1

    check-cast v0, Lorg/telegram/tgnet/TLRPC$ChatInvite;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->title:Ljava/lang/String;

    goto :goto_0

    .line 129
    :cond_2
    const-string v0, ""

    .line 132
    :goto_0
    sget v1, Lorg/telegram/messenger/R$string;->AccDescrSendAsPeer:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v0, "AccDescrSendAsPeer"

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v0, p0, Lorg/telegram/ui/Components/SenderSelectView;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLObject;)V

    .line 134
    iget-object v0, p0, Lorg/telegram/ui/Components/SenderSelectView;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v1, p0, Lorg/telegram/ui/Components/SenderSelectView;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0, p1, v1}, Lorg/telegram/messenger/ImageReceiver;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setProgress(F)V
    .locals 1

    const/4 v0, 0x1

    .line 142
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/SenderSelectView;->setProgress(FZ)V

    return-void
.end method

.method public setProgress(FZ)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 151
    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/ui/Components/SenderSelectView;->setProgress(FZZ)V

    return-void
.end method

.method public setProgress(FZZ)V
    .locals 4

    if-eqz p2, :cond_4

    .line 162
    iget-object p2, p0, Lorg/telegram/ui/Components/SenderSelectView;->menuSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz p2, :cond_0

    .line 163
    invoke-virtual {p2}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    .line 165
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Components/SenderSelectView;->menuAnimator:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_1

    .line 166
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    const/4 p2, 0x0

    .line 168
    iput-boolean p2, p0, Lorg/telegram/ui/Components/SenderSelectView;->scaleIn:Z

    .line 169
    iput-boolean p2, p0, Lorg/telegram/ui/Components/SenderSelectView;->scaleOut:Z

    const/4 v0, 0x1

    if-eqz p3, :cond_3

    .line 173
    iget p3, p0, Lorg/telegram/ui/Components/SenderSelectView;->menuProgress:F

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr p3, v1

    .line 174
    new-instance v2, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v3, Lorg/telegram/ui/Components/SenderSelectView;->MENU_PROGRESS:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    invoke-direct {v2, p0, v3}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    invoke-virtual {v2, p3}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v2

    check-cast v2, Landroidx/dynamicanimation/animation/SpringAnimation;

    iput-object v2, p0, Lorg/telegram/ui/Components/SenderSelectView;->menuSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 175
    iget v3, p0, Lorg/telegram/ui/Components/SenderSelectView;->menuProgress:F

    cmpg-float v3, p1, v3

    if-gez v3, :cond_2

    move p2, v0

    :cond_2
    mul-float/2addr p1, v1

    .line 178
    iput-boolean p2, p0, Lorg/telegram/ui/Components/SenderSelectView;->scaleIn:Z

    xor-int/lit8 v0, p2, 0x1

    .line 179
    iput-boolean v0, p0, Lorg/telegram/ui/Components/SenderSelectView;->scaleOut:Z

    .line 181
    new-instance v0, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v0, p1}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    .line 182
    invoke-virtual {v0, p1}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    const/high16 v1, 0x43e10000    # 450.0f

    .line 183
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 184
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    .line 181
    invoke-virtual {v2, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 185
    iget-object v0, p0, Lorg/telegram/ui/Components/SenderSelectView;->menuSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v1, Lorg/telegram/ui/Components/SenderSelectView$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p2, p3, p1}, Lorg/telegram/ui/Components/SenderSelectView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/SenderSelectView;ZFF)V

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 191
    iget-object p1, p0, Lorg/telegram/ui/Components/SenderSelectView;->menuSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance p2, Lorg/telegram/ui/Components/SenderSelectView$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/SenderSelectView$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/SenderSelectView;)V

    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 202
    iget-object p1, p0, Lorg/telegram/ui/Components/SenderSelectView;->menuSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    return-void

    .line 204
    :cond_3
    iget p3, p0, Lorg/telegram/ui/Components/SenderSelectView;->menuProgress:F

    const/4 v1, 0x2

    new-array v1, v1, [F

    aput p3, v1, p2

    aput p1, v1, v0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 p2, 0xc8

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/SenderSelectView;->menuAnimator:Landroid/animation/ValueAnimator;

    .line 205
    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 206
    iget-object p1, p0, Lorg/telegram/ui/Components/SenderSelectView;->menuAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lorg/telegram/ui/Components/SenderSelectView$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/SenderSelectView$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/SenderSelectView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 210
    iget-object p1, p0, Lorg/telegram/ui/Components/SenderSelectView;->menuAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lorg/telegram/ui/Components/SenderSelectView$1;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/SenderSelectView$1;-><init>(Lorg/telegram/ui/Components/SenderSelectView;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 218
    iget-object p1, p0, Lorg/telegram/ui/Components/SenderSelectView;->menuAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    .line 221
    :cond_4
    iput p1, p0, Lorg/telegram/ui/Components/SenderSelectView;->menuProgress:F

    .line 222
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 235
    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/SenderSelectView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
