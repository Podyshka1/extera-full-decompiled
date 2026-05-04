.class Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TabPreview"
.end annotation


# instance fields
.field private final backgroundPaint:Landroid/graphics/Paint;

.field private final bitmapPaint:Landroid/graphics/Paint;

.field public final bounce:Lorg/telegram/ui/Components/ButtonBounce;

.field public final clickBounds:Landroid/graphics/RectF;

.field private final clipPath:Landroid/graphics/Path;

.field private dismissAnimator:Landroid/animation/ValueAnimator;

.field public dismissProgress:F

.field private final dst:[F

.field private final gradient:Landroid/graphics/RadialGradient;

.field private final gradientMatrix:Landroid/graphics/Matrix;

.field private final gradientPaint:Landroid/graphics/Paint;

.field private final matrix:Landroid/graphics/Matrix;

.field public final parentView:Landroid/view/View;

.field private final shadowPaint:Landroid/graphics/Paint;

.field private final src:[F

.field private final tabBounds:Landroid/graphics/RectF;

.field public final tabData:Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;

.field public final tabDrawable:Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;

.field public webView:Landroid/webkit/WebView;


# direct methods
.method public static synthetic $r8$lambda$XsrZJvjMTFjNgHkf5b0RznTprJ4(Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->lambda$animateDismiss$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetdst(Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;)[F
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->dst:[F

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmatrix(Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;)Landroid/graphics/Matrix;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->matrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsrc(Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;)[F
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->src:[F

    return-object p0
.end method

.method public constructor <init>(Landroid/view/View;Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;)V
    .locals 11

    .line 995
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 936
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->clickBounds:Landroid/graphics/RectF;

    .line 943
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->backgroundPaint:Landroid/graphics/Paint;

    .line 946
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->matrix:Landroid/graphics/Matrix;

    const/16 v2, 0x8

    .line 947
    new-array v3, v2, [F

    iput-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->src:[F

    .line 948
    new-array v2, v2, [F

    iput-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->dst:[F

    const/4 v2, 0x0

    .line 950
    iput v2, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->dismissProgress:F

    .line 1005
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->shadowPaint:Landroid/graphics/Paint;

    .line 1006
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->tabBounds:Landroid/graphics/RectF;

    .line 1007
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->clipPath:Landroid/graphics/Path;

    .line 1008
    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->bitmapPaint:Landroid/graphics/Paint;

    .line 1010
    new-instance v4, Landroid/graphics/RadialGradient;

    const/4 v2, 0x0

    const/high16 v3, 0x30000000

    filled-new-array {v2, v3}, [I

    move-result-object v8

    const/4 v2, 0x2

    new-array v9, v2, [F

    fill-array-data v9, :array_0

    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x437f0000    # 255.0f

    invoke-direct/range {v4 .. v10}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v4, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->gradient:Landroid/graphics/RadialGradient;

    .line 1011
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->gradientMatrix:Landroid/graphics/Matrix;

    .line 1012
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->gradientPaint:Landroid/graphics/Paint;

    .line 996
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->parentView:Landroid/view/View;

    .line 997
    iput-object p2, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->tabData:Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;

    .line 998
    iput-object p3, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->tabDrawable:Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;

    const/4 p3, 0x0

    .line 999
    iput-object p3, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->webView:Landroid/webkit/WebView;

    .line 1000
    new-instance p3, Lorg/telegram/ui/Components/ButtonBounce;

    invoke-direct {p3, p1}, Lorg/telegram/ui/Components/ButtonBounce;-><init>(Landroid/view/View;)V

    iput-object p3, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    .line 1002
    iget p1, p2, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->backgroundColor:I

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private synthetic lambda$animateDismiss$0(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 961
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->dismissProgress:F

    .line 962
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->parentView:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 963
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method


# virtual methods
.method public animateDismiss(F)V
    .locals 4

    .line 958
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->cancelDismissAnimator()V

    .line 959
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->dismissProgress:F

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x1

    aput p1, v1, v0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->dismissAnimator:Landroid/animation/ValueAnimator;

    .line 960
    new-instance v1, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 966
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->dismissAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview$1;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview$1;-><init>(Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;F)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 975
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const v0, 0x3dcccccd    # 0.1f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    .line 976
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->dismissAnimator:Landroid/animation/ValueAnimator;

    const-wide v0, 0x4071d00000000000L    # 285.0

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    invoke-static {p1, v0, v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->applySpring(Landroid/animation/Animator;DD)V

    goto :goto_0

    .line 978
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->dismissAnimator:Landroid/animation/ValueAnimator;

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 980
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->dismissAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public cancelDismissAnimator()V
    .locals 1

    .line 953
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->dismissAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 954
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;ZFFFF)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v8, p2

    move/from16 v9, p5

    .line 1015
    iget v2, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->dismissProgress:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x3e99999a    # 0.3f

    sub-float/2addr v2, v3

    const v3, 0x3f333333    # 0.7f

    div-float/2addr v2, v3

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float v2, v10, v2

    const/4 v11, 0x0

    invoke-static {v2, v10, v11}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v2

    mul-float v12, p4, v2

    cmpg-float v2, v12, v11

    if-gtz v2, :cond_0

    return-void

    :cond_0
    sub-float v13, v10, p6

    mul-float v2, v9, v13

    const v3, 0x3fa66666    # 1.3f

    .line 1019
    invoke-static {v10, v3, v2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v14

    .line 1021
    sget v3, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v4

    add-int/2addr v3, v4

    const/high16 v15, 0x42480000    # 50.0f

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float v3, v3, p6

    .line 1022
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 1023
    iget v4, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->dismissProgress:F

    const/high16 v5, 0x41a00000    # 20.0f

    mul-float/2addr v4, v5

    invoke-virtual {v8}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    iget v7, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->dismissProgress:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    iget v6, v8, Landroid/graphics/RectF;->bottom:F

    const/high16 v7, 0x43af0000    # 350.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    invoke-virtual {v1, v4, v5, v6}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 1024
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    const v5, 0x3c23d70a    # 0.01f

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/ButtonBounce;->getScale(F)F

    move-result v4

    .line 1025
    invoke-virtual {v8}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    invoke-virtual {v8}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    invoke-virtual {v1, v4, v4, v5, v6}, Landroid/graphics/Canvas;->scale(FFFF)V

    const/high16 v4, 0x41200000    # 10.0f

    .line 1027
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/high16 v6, 0x40c00000    # 6.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static {v5, v6, v9}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x20000000

    const/high16 v7, 0x41f00000    # 30.0f

    move/from16 p4, v4

    const/4 v4, 0x0

    const/high16 v16, 0x437f0000    # 255.0f

    if-eqz p3, :cond_1

    .line 1029
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->shadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 1030
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->shadowPaint:Landroid/graphics/Paint;

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static/range {p4 .. p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    mul-float v7, v12, v9

    mul-float/2addr v7, v13

    invoke-static {v6, v7}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v6

    invoke-virtual {v2, v3, v11, v4, v6}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 1031
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->shadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v8, v5, v5, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1032
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->backgroundPaint:Landroid/graphics/Paint;

    mul-float v12, v12, v16

    float-to-int v3, v12

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1033
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v8, v5, v5, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1034
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :cond_1
    move/from16 p6, v7

    .line 1038
    iget-object v7, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->clipPath:Landroid/graphics/Path;

    invoke-virtual {v7}, Landroid/graphics/Path;->rewind()V

    .line 1039
    iget-object v7, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->clipPath:Landroid/graphics/Path;

    move/from16 v17, v15

    sget-object v15, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v7, v8, v5, v5, v15}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 1040
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 1041
    iget-object v7, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->shadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 1042
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->shadowPaint:Landroid/graphics/Paint;

    invoke-static/range {p6 .. p6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    invoke-static/range {p4 .. p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    int-to-float v15, v15

    mul-float v10, v12, v9

    move/from16 p4, v3

    mul-float v3, v10, v13

    invoke-static {v6, v3}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v3

    invoke-virtual {v4, v7, v11, v15, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 1043
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->clipPath:Landroid/graphics/Path;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->shadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1044
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->clipPath:Landroid/graphics/Path;

    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 1046
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->backgroundPaint:Landroid/graphics/Paint;

    mul-float v4, v12, v16

    mul-float v15, v4, v9

    float-to-int v6, v15

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1047
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v8, v5, v5, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1049
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 1050
    iget v3, v8, Landroid/graphics/RectF;->left:F

    iget v4, v8, Landroid/graphics/RectF;->top:F

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v14

    add-float/2addr v4, v7

    add-float v4, v4, p4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v3, 0x3fa00000    # 1.25f

    const/high16 v4, 0x3f800000    # 1.0f

    .line 1051
    invoke-static {v4, v3, v2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v2

    invoke-virtual {v1, v4, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1052
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->tabData:Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;

    if-eqz v2, :cond_3

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->previewNode:Ljava/lang/Object;

    if-eqz v2, :cond_3

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1d

    if-lt v3, v4, :cond_3

    invoke-static {v2}, Lorg/telegram/messenger/BotFullscreenButtons$$ExternalSyntheticApiModelOutline1;->m(Ljava/lang/Object;)Landroid/graphics/RenderNode;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RenderNode;->hasDisplayList()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1053
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->tabData:Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->previewNode:Ljava/lang/Object;

    invoke-static {v2}, Lorg/telegram/messenger/BotFullscreenButtons$$ExternalSyntheticApiModelOutline1;->m(Ljava/lang/Object;)Landroid/graphics/RenderNode;

    move-result-object v2

    .line 1054
    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/RenderNode;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 1055
    invoke-virtual {v1, v3, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1056
    invoke-virtual {v2, v10}, Landroid/graphics/RenderNode;->setAlpha(F)Z

    .line 1057
    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->drawRenderNode(Landroid/graphics/RenderNode;)V

    :cond_2
    :goto_0
    move/from16 v10, p4

    move/from16 v18, v5

    goto :goto_1

    .line 1058
    :cond_3
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->tabData:Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;

    if-eqz v2, :cond_4

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->previewBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_4

    .line 1059
    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->tabData:Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->previewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 1060
    invoke-virtual {v1, v2, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1061
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1062
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->tabData:Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->previewBitmap:Landroid/graphics/Bitmap;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v11, v11, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 1063
    :cond_4
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->webView:Landroid/webkit/WebView;

    if-eqz v2, :cond_2

    .line 1064
    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->webView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 1065
    invoke-virtual {v1, v2, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1066
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v4, v2

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/16 v7, 0x1f

    move v3, v5

    move v5, v2

    const/4 v2, 0x0

    move v10, v3

    const/4 v3, 0x0

    move/from16 v18, v10

    move/from16 v10, p4

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 1067
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 1068
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 1070
    :goto_1
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 1072
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 1073
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->gradientPaint:Landroid/graphics/Paint;

    mul-float/2addr v15, v13

    float-to-int v3, v15

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1074
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->gradientMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 1075
    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float v2, v2, v16

    .line 1076
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->gradientMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v2, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1077
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->gradientMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v8}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget v4, v8, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1078
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->gradient:Landroid/graphics/RadialGradient;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->gradientMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 1079
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->gradientPaint:Landroid/graphics/Paint;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->gradient:Landroid/graphics/RadialGradient;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1080
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->gradientPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v8, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1081
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 1083
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->tabBounds:Landroid/graphics/RectF;

    invoke-virtual {v2, v8}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 1084
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->tabBounds:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 1085
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->tabBounds:Landroid/graphics/RectF;

    invoke-virtual {v2, v11, v10}, Landroid/graphics/RectF;->offset(FF)V

    .line 1086
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->tabDrawable:Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;

    invoke-virtual {v2, v9}, Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;->setExpandProgress(F)V

    .line 1087
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->tabBounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->tabBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v1, v4, v14, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 1088
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->tabDrawable:Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->tabBounds:Landroid/graphics/RectF;

    mul-float v5, v12, v12

    move-object/from16 v2, p1

    move/from16 v6, p7

    move/from16 v4, v18

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;->draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFF)V

    .line 1090
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 1092
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public isPressed()Z
    .locals 1

    .line 985
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ButtonBounce;->isPressed()Z

    move-result v0

    return v0
.end method

.method public setPressed(Z)V
    .locals 1

    .line 988
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    return-void
.end method
