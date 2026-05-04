.class public Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lcom/exteragram/messenger/preferences/components/CustomPreferenceCell;


# static fields
.field private static final ICON_WIDTH:[I


# instance fields
.field private final actionIcon:[I

.field private final animator:[Landroid/animation/ValueAnimator;

.field private final circleAnimator:[Landroid/animation/ValueAnimator;

.field private final circleOutlinePaint:[Landroid/graphics/Paint;

.field private final circleProgress:[F

.field private final circleSizeAnimator:[Landroid/animation/ValueAnimator;

.field private final circleSizeProgress:[F

.field private final iconChangingProgress:[F

.field private final messages:[Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

.field private final outlinePaint:Landroid/graphics/Paint;

.field private final preview:Landroid/widget/FrameLayout;

.field private final rect:Landroid/graphics/RectF;


# direct methods
.method public static synthetic $r8$lambda$2P0xLMkAvokLxJ-FZqsk7B_gT1g(Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell;ILandroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell;->lambda$updateIcons$2(ILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$a0o09FFBmrEEmm2bwUyXlaXr8vU(Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell;IILandroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell;->lambda$updateIcons$0(IILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$j-iI6StPq77gH7HAoun4fNQuY3w(Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell;IILandroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell;->lambda$updateIcons$1(IILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetactionIcon(Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell;)[I
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell;->actionIcon:[I

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetanimator(Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell;)[Landroid/animation/ValueAnimator;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell;->animator:[Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcircleAnimator(Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell;)[Landroid/animation/ValueAnimator;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell;->circleAnimator:[Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcircleOutlinePaint(Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell;)[Landroid/graphics/Paint;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell;->circleOutlinePaint:[Landroid/graphics/Paint;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcircleProgress(Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell;)[F
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell;->circleProgress:[F

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcircleSizeProgress(Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell;)[F
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell;->circleSizeProgress:[F

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgeticonChangingProgress(Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell;)[F
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell;->iconChangingProgress:[F

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmessages(Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell;)[Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell;->messages:[Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetoutlinePaint(Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell;)Landroid/graphics/Paint;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell;->outlinePaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetrect(Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell;)Landroid/graphics/RectF;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell;->rect:Landroid/graphics/RectF;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetICON_WIDTH()[I
    .locals 1

    .line 0
    sget-object v0, Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell;->ICON_WIDTH:[I

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    const/high16 v0, 0x41400000    # 12.0f

    .line 47
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    filled-new-array {v1, v0}, [I

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell;->ICON_WIDTH:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 66
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 48
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell;->rect:Landroid/graphics/RectF;

    .line 49
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell;->outlinePaint:Landroid/graphics/Paint;

    const/4 v2, 0x2

    .line 50
    new-array v3, v2, [Landroid/graphics/Paint;

    iput-object v3, p0, Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell;->circleOutlinePaint:[Landroid/graphics/Paint;

    .line 51
    new-instance v3, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v4, v4}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;-><init>(IZZ)V

    new-instance v5, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    invoke-direct {v5, v4, v1, v4}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;-><init>(IZZ)V

    new-array v6, v2, [Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    aput-object v3, v6, v4

    aput-object v5, v6, v1

    iput-object v6, p0, Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell;->messages:[Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    .line 55
    new-array v3, v2, [Landroid/animation/ValueAnimator;

    iput-object v3, p0, Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell;->animator:[Landroid/animation/ValueAnimator;

    .line 56
    new-array v3, v2, [Landroid/animation/ValueAnimator;

    iput-object v3, p0, Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell;->circleAnimator:[Landroid/animation/ValueAnimator;

    .line 57
    new-array v3, v2, [Landroid/animation/ValueAnimator;

    iput-object v3, p0, Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell;->circleSizeAnimator:[Landroid/animation/ValueAnimator;

    const/4 v3, 0x4

    .line 58
    new-array v5, v3, [F

    iput-object v5, p0, Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell;->circleSizeProgress:[F

    .line 59
    new-array v5, v2, [F

    iput-object v5, p0, Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell;->iconChangingProgress:[F

    .line 60
    new-array v3, v3, [F

    iput-object v3, p0, Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell;->circleProgress:[F

    .line 61
    new-array v2, v2, [I

    iput-object v2, p0, Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell;->actionIcon:[I

    .line 67
    invoke-virtual {p0, v4}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 68
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 69
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    const/high16 v1, 0x41500000    # 13.0f

    .line 70
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {p0, v2, v4, v1, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 72
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 73
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 74
    invoke-static {}, Lcom/exteragram/messenger/preferences/components/PreviewColors;->getOutlineColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 76
    new-instance v0, Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell$1;

    invoke-direct {v0, p0, p1, p1}, Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell$1;-><init>(Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell;Landroid/content/Context;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell;->preview:Landroid/widget/FrameLayout;

    .line 122
    invoke-virtual {v0, v4}, Landroid/view/View;->setWillNotDraw(Z)V

    const/4 p1, -0x1

    const/high16 v1, -0x40800000    # -1.0f

    .line 123
    invoke-static {p1, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    invoke-virtual {p0, v4, v4}, Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell;->updateIcons(IZ)V

    return-void
.end method

.method private synthetic lambda$updateIcons$0(IILandroid/animation/ValueAnimator;)V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell;->circleSizeProgress:[F

    mul-int/lit8 p1, p1, 0x2

    add-int/2addr p1, p2

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    aput p2, v0, p1

    .line 141
    invoke-virtual {p0}, Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell;->invalidate()V

    return-void
.end method

.method private synthetic lambda$updateIcons$1(IILandroid/animation/ValueAnimator;)V
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell;->circleProgress:[F

    mul-int/lit8 p1, p1, 0x2

    add-int/2addr p1, p2

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    aput p2, v0, p1

    .line 149
    invoke-virtual {p0}, Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell;->invalidate()V

    return-void
.end method

.method private synthetic lambda$updateIcons$2(ILandroid/animation/ValueAnimator;)V
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell;->iconChangingProgress:[F

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    aput p2, v0, p1

    .line 169
    invoke-virtual {p0}, Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell;->invalidate()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 219
    :cond_0
    instance-of v1, p1, Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell;

    .line 220
    iget-object v1, p0, Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell;->actionIcon:[I

    iget-object p1, p1, Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell;->actionIcon:[I

    if-ne v1, p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public invalidate()V
    .locals 1

    .line 201
    invoke-super {p0}, Landroid/widget/LinearLayout;->invalidate()V

    .line 202
    iget-object v0, p0, Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell;->preview:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 207
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 208
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v3, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v5, v0

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 213
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/high16 v0, 0x432a0000    # 170.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public updateIcons(IZ)V
    .locals 12

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_7

    if-nez v1, :cond_0

    if-eq p1, v2, :cond_6

    :cond_0
    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    if-ne p1, v3, :cond_1

    goto/16 :goto_4

    :cond_1
    if-ne v1, v3, :cond_2

    goto :goto_1

    :cond_2
    move v3, v0

    .line 131
    :goto_1
    invoke-static {v3}, Lcom/exteragram/messenger/utils/chats/DoubleTapUtils;->getDoubleTapIcons(Z)[I

    move-result-object v3

    if-eqz p2, :cond_4

    move v4, v0

    :goto_2
    if-ge v4, v2, :cond_3

    .line 136
    iget-object v5, p0, Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell;->circleSizeAnimator:[Landroid/animation/ValueAnimator;

    new-array v6, v2, [F

    fill-array-data v6, :array_0

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v6

    const-wide/16 v7, 0x514

    invoke-virtual {v6, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v6

    aput-object v6, v5, v4

    .line 137
    iget-object v5, p0, Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell;->circleSizeAnimator:[Landroid/animation/ValueAnimator;

    aget-object v5, v5, v4

    int-to-long v6, v4

    const-wide/16 v8, 0x3c

    mul-long/2addr v8, v6

    invoke-virtual {v5, v8, v9}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 138
    iget-object v5, p0, Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell;->circleSizeAnimator:[Landroid/animation/ValueAnimator;

    aget-object v5, v5, v4

    sget-object v8, Lorg/telegram/ui/Components/Easings;->easeInOutQuad:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v8}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 139
    iget-object v5, p0, Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell;->circleSizeAnimator:[Landroid/animation/ValueAnimator;

    aget-object v5, v5, v4

    new-instance v9, Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell$$ExternalSyntheticLambda0;

    invoke-direct {v9, p0, v4, v1}, Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell$$ExternalSyntheticLambda0;-><init>(Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell;II)V

    invoke-virtual {v5, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 144
    iget-object v5, p0, Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell;->circleAnimator:[Landroid/animation/ValueAnimator;

    new-array v9, v2, [F

    fill-array-data v9, :array_1

    invoke-static {v9}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v9

    const-wide/16 v10, 0x2bc

    invoke-virtual {v9, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v9

    aput-object v9, v5, v4

    .line 145
    iget-object v5, p0, Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell;->circleAnimator:[Landroid/animation/ValueAnimator;

    aget-object v5, v5, v4

    const-wide/16 v9, 0x50

    mul-long/2addr v6, v9

    const-wide/16 v9, 0x96

    add-long/2addr v6, v9

    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 146
    iget-object v5, p0, Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell;->circleAnimator:[Landroid/animation/ValueAnimator;

    aget-object v5, v5, v4

    invoke-virtual {v5, v8}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 147
    iget-object v5, p0, Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell;->circleAnimator:[Landroid/animation/ValueAnimator;

    aget-object v5, v5, v4

    new-instance v6, Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell$$ExternalSyntheticLambda1;

    invoke-direct {v6, p0, v4, v1}, Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell$$ExternalSyntheticLambda1;-><init>(Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell;II)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 151
    iget-object v5, p0, Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell;->circleAnimator:[Landroid/animation/ValueAnimator;

    aget-object v5, v5, v4

    new-instance v6, Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell$2;

    invoke-direct {v6, p0, v4}, Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell$2;-><init>(Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell;I)V

    invoke-virtual {v5, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 161
    iget-object v5, p0, Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell;->circleSizeAnimator:[Landroid/animation/ValueAnimator;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->start()V

    .line 162
    iget-object v5, p0, Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell;->circleAnimator:[Landroid/animation/ValueAnimator;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->start()V

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    .line 165
    :cond_3
    iget-object v4, p0, Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell;->animator:[Landroid/animation/ValueAnimator;

    new-array v2, v2, [F

    fill-array-data v2, :array_2

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    const-wide/16 v5, 0xfa

    invoke-virtual {v2, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v2

    aput-object v2, v4, v1

    .line 166
    iget-object v2, p0, Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell;->animator:[Landroid/animation/ValueAnimator;

    aget-object v2, v2, v1

    sget-object v4, Lorg/telegram/ui/Components/Easings;->easeInOutQuad:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 167
    iget-object v2, p0, Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell;->animator:[Landroid/animation/ValueAnimator;

    aget-object v2, v2, v1

    new-instance v4, Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0, v1}, Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell$$ExternalSyntheticLambda2;-><init>(Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell;I)V

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 171
    iget-object v2, p0, Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell;->animator:[Landroid/animation/ValueAnimator;

    aget-object v2, v2, v1

    new-instance v4, Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell$3;

    invoke-direct {v4, p0, v1, v3}, Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell$3;-><init>(Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell;I[I)V

    invoke-virtual {v2, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 188
    iget-object v2, p0, Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell;->animator:[Landroid/animation/ValueAnimator;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_4

    .line 190
    :cond_4
    iget-object v2, p0, Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell;->circleSizeProgress:[F

    const/4 v4, 0x0

    aput v4, v2, v1

    .line 191
    iget-object v2, p0, Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell;->circleProgress:[F

    aput v4, v2, v1

    .line 192
    iget-object v2, p0, Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell;->iconChangingProgress:[F

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v2, v1

    .line 193
    iget-object v2, p0, Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell;->actionIcon:[I

    if-nez v1, :cond_5

    sget v4, Lcom/exteragram/messenger/ExteraConfig;->doubleTapAction:I

    aget v3, v3, v4

    goto :goto_3

    :cond_5
    sget v4, Lcom/exteragram/messenger/ExteraConfig;->doubleTapActionOutOwner:I

    aget v3, v3, v4

    :goto_3
    aput v3, v2, v1

    .line 194
    invoke-virtual {p0}, Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell;->invalidate()V

    :cond_6
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_7
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method
