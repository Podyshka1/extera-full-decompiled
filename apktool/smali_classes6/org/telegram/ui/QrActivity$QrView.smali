.class Lorg/telegram/ui/QrActivity$QrView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/QrActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QrView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/QrActivity$QrView$QrCenterChangedListener;
    }
.end annotation


# static fields
.field private static final RADIUS:F

.field private static final SHADOW_SIZE:F


# instance fields
.field private backgroundBitmap:Landroid/graphics/Bitmap;

.field private final bitmapGradientPaint:Landroid/graphics/Paint;

.field private centerChangedListener:Lorg/telegram/ui/QrActivity$QrView$QrCenterChangedListener;

.field private checkTimerToken:Ljava/lang/Runnable;

.field private contentBitmap:Landroid/graphics/Bitmap;

.field private contentBitmapAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

.field private crossfadeFromPaint:Landroid/graphics/Paint;

.field private crossfadeToPaint:Landroid/graphics/Paint;

.field private final crossfadeWidthDp:I

.field private firstPrepare:Z

.field private final gradientDrawable:Lorg/telegram/ui/Components/MotionBackgroundDrawable;

.field private final gradientShader:Landroid/graphics/BitmapShader;

.field private final gradientTextShader:Landroid/graphics/BitmapShader;

.field private hadHeight:Ljava/lang/Integer;

.field private hadLink:Ljava/lang/String;

.field private hadUserText:Ljava/lang/String;

.field private hadWidth:Ljava/lang/Integer;

.field private hasTimer:Z

.field private isPhone:Z

.field private link:Ljava/lang/String;

.field private linkExpires:I

.field private loadingMatrix:Lorg/telegram/ui/Components/RLottieDrawable;

.field private logoCenterSet:Z

.field private oldContentBitmap:Landroid/graphics/Bitmap;

.field private radii:[F

.field private setData:Z

.field private shareUsernameLayout:Landroid/text/StaticLayout;

.field private shareUsernameLayoutPaint:Landroid/text/TextPaint;

.field private timerTextDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

.field private username:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$2iYc8CXhdvukKCE5VgAq2hDUf8Y(Lorg/telegram/ui/QrActivity$QrView;II)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/QrActivity$QrView;->lambda$new$2(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$BLO4PV5UKhvXpwEBxWy_NosgeCc(Lorg/telegram/ui/QrActivity$QrView;Landroid/graphics/Bitmap;FIF)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/QrActivity$QrView;->lambda$prepareContent$7(Landroid/graphics/Bitmap;FIF)V

    return-void
.end method

.method public static synthetic $r8$lambda$Fc2RMLSwrHIJfapUtWpARCLC_yw(Lorg/telegram/ui/QrActivity$QrView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/QrActivity$QrView;->lambda$new$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$YbTSJvzn4fMm4qc9mX0pMZwswrE(Lorg/telegram/ui/QrActivity$QrView;Lorg/telegram/tgnet/TLRPC$TL_exportedContactToken;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/QrActivity$QrView;->lambda$new$3(Lorg/telegram/tgnet/TLRPC$TL_exportedContactToken;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aiQpmDA-nQfH-mwODqgCF38RvsI(Lorg/telegram/ui/QrActivity$QrView;Lorg/telegram/tgnet/TLRPC$TL_exportedContactToken;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/QrActivity$QrView;->lambda$new$4(Lorg/telegram/tgnet/TLRPC$TL_exportedContactToken;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mLqYLUERoFGwZbpv6prQUBi_FM4(Lorg/telegram/ui/QrActivity$QrView;II)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/QrActivity$QrView;->lambda$onSizeChanged$0(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$s-Bkkl7SlQjn6RLC0cCFMMH2x94(Lorg/telegram/ui/QrActivity$QrView;II)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/QrActivity$QrView;->lambda$setData$1(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$ykciF7qhVmTN8Mxt5x4x2aMzxbA(Lorg/telegram/ui/QrActivity$QrView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/QrActivity$QrView;->lambda$prepareContent$6()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x40000000    # 2.0f

    .line 882
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lorg/telegram/ui/QrActivity$QrView;->SHADOW_SIZE:F

    const/high16 v0, 0x41a00000    # 20.0f

    .line 883
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lorg/telegram/ui/QrActivity$QrView;->RADIUS:F

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 24

    move-object/from16 v2, p0

    .line 911
    invoke-direct/range {p0 .. p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 885
    new-instance v8, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    invoke-direct {v8}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;-><init>()V

    iput-object v8, v2, Lorg/telegram/ui/QrActivity$QrView;->gradientDrawable:Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    .line 886
    new-instance v9, Landroid/graphics/Paint;

    const/4 v10, 0x1

    invoke-direct {v9, v10}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v9, v2, Lorg/telegram/ui/QrActivity$QrView;->bitmapGradientPaint:Landroid/graphics/Paint;

    .line 896
    new-instance v0, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object v7, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x7d0

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(FLandroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    move-object v1, v0

    move-object v0, v2

    iput-object v1, v0, Lorg/telegram/ui/QrActivity$QrView;->contentBitmapAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 897
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v10}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v0, Lorg/telegram/ui/QrActivity$QrView;->crossfadeFromPaint:Landroid/graphics/Paint;

    .line 898
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v10}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v0, Lorg/telegram/ui/QrActivity$QrView;->crossfadeToPaint:Landroid/graphics/Paint;

    const/16 v1, 0x78

    .line 900
    iput v1, v0, Lorg/telegram/ui/QrActivity$QrView;->crossfadeWidthDp:I

    const/16 v1, 0x8

    .line 907
    new-array v1, v1, [F

    iput-object v1, v0, Lorg/telegram/ui/QrActivity$QrView;->radii:[F

    .line 1110
    new-instance v1, Lorg/telegram/ui/QrActivity$QrView$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lorg/telegram/ui/QrActivity$QrView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/QrActivity$QrView;)V

    iput-object v1, v0, Lorg/telegram/ui/QrActivity$QrView;->checkTimerToken:Ljava/lang/Runnable;

    .line 1167
    iput-boolean v10, v0, Lorg/telegram/ui/QrActivity$QrView;->firstPrepare:Z

    .line 912
    invoke-virtual {v8, v10}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setIndeterminateAnimation(Z)V

    .line 913
    invoke-virtual {v8, v0}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setParentView(Landroid/view/View;)V

    .line 914
    new-instance v1, Landroid/graphics/BitmapShader;

    invoke-virtual {v8}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    sget-object v3, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, v2, v3, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v1, v0, Lorg/telegram/ui/QrActivity$QrView;->gradientShader:Landroid/graphics/BitmapShader;

    .line 915
    new-instance v11, Landroid/graphics/BitmapShader;

    invoke-virtual {v8}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v11, v2, v3, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v11, v0, Lorg/telegram/ui/QrActivity$QrView;->gradientTextShader:Landroid/graphics/BitmapShader;

    .line 916
    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 917
    new-instance v1, Lorg/telegram/ui/QrActivity$QrView$1;

    const/4 v8, 0x0

    invoke-direct {v1, v0, v8, v10, v8}, Lorg/telegram/ui/QrActivity$QrView$1;-><init>(Lorg/telegram/ui/QrActivity$QrView;ZZZ)V

    iput-object v1, v0, Lorg/telegram/ui/QrActivity$QrView;->timerTextDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x12c

    const v2, 0x3eb33333    # 0.35f

    .line 923
    invoke-virtual/range {v1 .. v7}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setAnimationProperties(FJJLandroid/animation/TimeInterpolator;)V

    .line 924
    iget-object v1, v0, Lorg/telegram/ui/QrActivity$QrView;->timerTextDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 925
    iget-object v1, v0, Lorg/telegram/ui/QrActivity$QrView;->timerTextDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const-string v2, "fonts/rcondensedbold.ttf"

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTypeface(Landroid/graphics/Typeface;)V

    .line 926
    iget-object v1, v0, Lorg/telegram/ui/QrActivity$QrView;->timerTextDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 927
    iget-object v1, v0, Lorg/telegram/ui/QrActivity$QrView;->timerTextDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setGravity(I)V

    .line 928
    iget-object v1, v0, Lorg/telegram/ui/QrActivity$QrView;->timerTextDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const/high16 v2, 0x420c0000    # 35.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextSize(F)V

    .line 929
    iget-object v1, v0, Lorg/telegram/ui/QrActivity$QrView;->timerTextDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;)V

    .line 930
    iget-object v1, v0, Lorg/telegram/ui/QrActivity$QrView;->crossfadeFromPaint:Landroid/graphics/Paint;

    new-instance v9, Landroid/graphics/LinearGradient;

    const/high16 v2, 0x42f00000    # 120.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v13, v3

    const/4 v3, -0x1

    filled-new-array {v3, v8}, [I

    move-result-object v14

    const/4 v4, 0x2

    new-array v15, v4, [F

    fill-array-data v15, :array_0

    sget-object v16, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v9 .. v16}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 931
    iget-object v1, v0, Lorg/telegram/ui/QrActivity$QrView;->crossfadeFromPaint:Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 932
    iget-object v1, v0, Lorg/telegram/ui/QrActivity$QrView;->crossfadeToPaint:Landroid/graphics/Paint;

    move-object/from16 v23, v16

    new-instance v16, Landroid/graphics/LinearGradient;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    filled-new-array {v8, v3}, [I

    move-result-object v21

    new-array v3, v4, [F

    fill-array-data v3, :array_1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v20, v2

    move-object/from16 v22, v3

    invoke-direct/range {v16 .. v23}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    move-object/from16 v2, v16

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 933
    iget-object v1, v0, Lorg/telegram/ui/QrActivity$QrView;->crossfadeToPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    invoke-direct {v2, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void

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
.end method

.method private drawLoading(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 989
    iget-object v2, v0, Lorg/telegram/ui/QrActivity$QrView;->loadingMatrix:Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz v2, :cond_1

    .line 991
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    const/high16 v3, 0x42700000    # 60.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v7, v2, 0x21

    mul-int/lit8 v8, v7, 0x21

    add-int/lit8 v9, v8, 0x20

    .line 993
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v2, v9

    div-int/lit8 v10, v2, 0x2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3e19999a    # 0.15f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 994
    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v4, v3, Landroid/graphics/Point;->x:I

    iget v3, v3, Landroid/graphics/Point;->y:I

    if-le v4, v3, :cond_0

    .line 995
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3db851ec    # 0.09f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    :cond_0
    move v11, v2

    .line 997
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    const/16 v3, 0xff

    const/16 v4, 0x1f

    .line 998
    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    add-int/lit8 v12, v10, 0x10

    int-to-float v2, v12

    add-int/lit8 v13, v11, 0x10

    int-to-float v3, v13

    .line 999
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    sub-int/2addr v4, v10

    add-int/lit8 v4, v4, -0x10

    int-to-float v4, v4

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v5, v11

    sub-int/2addr v5, v10

    sub-int/2addr v5, v10

    add-int/lit8 v5, v5, -0x10

    int-to-float v5, v5

    iget-object v6, v0, Lorg/telegram/ui/QrActivity$QrView;->bitmapGradientPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1000
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 1001
    iget-object v2, v0, Lorg/telegram/ui/QrActivity$QrView;->loadingMatrix:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v3, v10

    add-int/lit8 v3, v3, -0x10

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v4, v11

    sub-int/2addr v4, v10

    sub-int/2addr v4, v10

    add-int/lit8 v4, v4, -0x10

    invoke-virtual {v2, v12, v13, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1002
    iget-object v2, v0, Lorg/telegram/ui/QrActivity$QrView;->loadingMatrix:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1003
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 1004
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 1005
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float v12, v2, v3

    int-to-float v2, v11

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    add-float/2addr v4, v2

    int-to-float v3, v10

    sub-float v13, v4, v3

    int-to-float v4, v8

    const v5, 0x4094cccd    # 4.65f

    div-float/2addr v4, v5

    int-to-float v6, v7

    div-float/2addr v4, v6

    .line 1006
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    mul-int/2addr v4, v7

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    const/high16 v5, 0x3f400000    # 0.75f

    mul-float v14, v4, v5

    .line 1007
    iget-object v4, v0, Lorg/telegram/ui/QrActivity$QrView;->bitmapGradientPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v12, v13, v14, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1008
    iget-object v4, v0, Lorg/telegram/ui/QrActivity$QrView;->bitmapGradientPaint:Landroid/graphics/Paint;

    int-to-float v8, v9

    iget-object v10, v0, Lorg/telegram/ui/QrActivity$QrView;->radii:[F

    const/4 v11, 0x1

    const/high16 v5, 0x40e00000    # 7.0f

    const/16 v7, 0x10

    const/high16 v9, 0x3f400000    # 0.75f

    move v15, v3

    move v3, v2

    move v2, v15

    invoke-static/range {v1 .. v11}, Lcom/google/zxing/qrcode/QRCodeWriter;->drawSideQuads(Landroid/graphics/Canvas;FFLandroid/graphics/Paint;FFIFF[FZ)V

    .line 1009
    iget-boolean v1, v0, Lorg/telegram/ui/QrActivity$QrView;->logoCenterSet:Z

    if-nez v1, :cond_1

    iget-object v1, v0, Lorg/telegram/ui/QrActivity$QrView;->centerChangedListener:Lorg/telegram/ui/QrActivity$QrView$QrCenterChangedListener;

    if-eqz v1, :cond_1

    sub-float v2, v12, v14

    float-to-int v2, v2

    sub-float v3, v13, v14

    float-to-int v3, v3

    add-float/2addr v12, v14

    float-to-int v4, v12

    add-float/2addr v13, v14

    float-to-int v5, v13

    .line 1010
    invoke-interface {v1, v2, v3, v4, v5}, Lorg/telegram/ui/QrActivity$QrView$QrCenterChangedListener;->onCenterChanged(IIII)V

    const/4 v1, 0x1

    .line 1011
    iput-boolean v1, v0, Lorg/telegram/ui/QrActivity$QrView;->logoCenterSet:Z

    :cond_1
    return-void
.end method

.method private synthetic lambda$new$2(II)V
    .locals 0

    .line 1126
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/QrActivity$QrView;->prepareContent(II)V

    return-void
.end method

.method private synthetic lambda$new$3(Lorg/telegram/tgnet/TLRPC$TL_exportedContactToken;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1134
    :cond_0
    iget v0, p0, Lorg/telegram/ui/QrActivity$QrView;->linkExpires:I

    if-eqz v0, :cond_1

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$TL_exportedContactToken;->expires:I

    if-ge v0, v1, :cond_1

    const-wide/16 v0, 0x64

    .line 1135
    invoke-static {v0, v1}, Lcom/exteragram/messenger/utils/system/VibratorUtils;->vibrate(J)V

    .line 1137
    :cond_1
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$TL_exportedContactToken;->expires:I

    iput v0, p0, Lorg/telegram/ui/QrActivity$QrView;->linkExpires:I

    .line 1138
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_exportedContactToken;->url:Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v0, v1}, Lorg/telegram/ui/QrActivity$QrView;->setData(Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method private synthetic lambda$new$4(Lorg/telegram/tgnet/TLRPC$TL_exportedContactToken;)V
    .locals 1

    .line 1130
    new-instance v0, Lorg/telegram/ui/QrActivity$QrView$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/QrActivity$QrView$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/QrActivity$QrView;Lorg/telegram/tgnet/TLRPC$TL_exportedContactToken;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$new$5()V
    .locals 11

    .line 1111
    iget-object v0, p0, Lorg/telegram/ui/QrActivity$QrView;->checkTimerToken:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1112
    iget-boolean v0, p0, Lorg/telegram/ui/QrActivity$QrView;->hasTimer:Z

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 1115
    iget-object v0, p0, Lorg/telegram/ui/QrActivity$QrView;->loadingMatrix:Lorg/telegram/ui/Components/RLottieDrawable;

    if-nez v0, :cond_1

    .line 1116
    new-instance v0, Lorg/telegram/ui/Components/RLottieDrawable;

    sget v2, Lorg/telegram/messenger/R$raw;->qr_matrix:I

    const/high16 v3, 0x43480000    # 200.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const-string v5, "qr_matrix"

    invoke-direct {v0, v2, v5, v4, v3}, Lorg/telegram/ui/Components/RLottieDrawable;-><init>(ILjava/lang/String;II)V

    iput-object v0, p0, Lorg/telegram/ui/QrActivity$QrView;->loadingMatrix:Lorg/telegram/ui/Components/RLottieDrawable;

    .line 1117
    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/RLottieDrawable;->setMasterParent(Landroid/view/View;)V

    .line 1118
    iget-object v0, p0, Lorg/telegram/ui/QrActivity$QrView;->loadingMatrix:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1119
    iget-object v0, p0, Lorg/telegram/ui/QrActivity$QrView;->loadingMatrix:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setAutoRepeat(I)V

    .line 1120
    iget-object v0, p0, Lorg/telegram/ui/QrActivity$QrView;->loadingMatrix:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->start()V

    .line 1122
    :cond_1
    iget v0, p0, Lorg/telegram/ui/QrActivity$QrView;->linkExpires:I

    const-string v2, ""

    const-wide/16 v3, 0x3e8

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    div-long/2addr v5, v3

    iget v0, p0, Lorg/telegram/ui/QrActivity$QrView;->linkExpires:I

    int-to-long v7, v0

    cmp-long v0, v5, v7

    if-ltz v0, :cond_5

    .line 1123
    :cond_2
    iget v0, p0, Lorg/telegram/ui/QrActivity$QrView;->linkExpires:I

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 1124
    iput-object v0, p0, Lorg/telegram/ui/QrActivity$QrView;->link:Ljava/lang/String;

    .line 1125
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    .line 1126
    sget-object v6, Lorg/telegram/messenger/Utilities;->themeQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v7, Lorg/telegram/ui/QrActivity$QrView$$ExternalSyntheticLambda5;

    invoke-direct {v7, p0, v0, v5}, Lorg/telegram/ui/QrActivity$QrView$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/QrActivity$QrView;II)V

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 1127
    iget-object v0, p0, Lorg/telegram/ui/QrActivity$QrView;->timerTextDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;)V

    .line 1129
    :cond_3
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v5, p0, Lorg/telegram/ui/QrActivity$QrView;->linkExpires:I

    if-nez v5, :cond_4

    const-wide/16 v5, 0x2ee

    goto :goto_0

    :cond_4
    const-wide/16 v5, 0x6d6

    :goto_0
    new-instance v7, Lorg/telegram/ui/QrActivity$QrView$$ExternalSyntheticLambda6;

    invoke-direct {v7, p0}, Lorg/telegram/ui/QrActivity$QrView$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/QrActivity$QrView;)V

    invoke-virtual {v0, v5, v6, v7}, Lorg/telegram/messenger/MessagesController;->requestContactToken(JLorg/telegram/messenger/Utilities$Callback;)V

    .line 1142
    :cond_5
    iget v0, p0, Lorg/telegram/ui/QrActivity$QrView;->linkExpires:I

    if-lez v0, :cond_8

    iget-object v5, p0, Lorg/telegram/ui/QrActivity$QrView;->link:Ljava/lang/String;

    if-eqz v5, :cond_8

    int-to-long v5, v0

    .line 1143
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    div-long/2addr v7, v3

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x1

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x0

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    const-wide/16 v7, 0x3c

    .line 1144
    rem-long v9, v5, v7

    long-to-int v0, v9

    div-long/2addr v5, v7

    long-to-int v5, v5

    const/16 v6, 0x63

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1145
    iget-object v6, p0, Lorg/telegram/ui/QrActivity$QrView;->timerTextDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1146
    const-string v8, "0"

    const/16 v9, 0xa

    if-ge v5, v9, :cond_6

    move-object v10, v8

    goto :goto_1

    :cond_6
    move-object v10, v2

    :goto_1
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ge v0, v9, :cond_7

    move-object v2, v8

    :cond_7
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    .line 1145
    invoke-virtual {v6, v0, v1, v2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;ZZ)V

    .line 1151
    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1152
    iget-object v0, p0, Lorg/telegram/ui/QrActivity$QrView;->checkTimerToken:Ljava/lang/Runnable;

    invoke-static {v0, v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_9
    :goto_2
    return-void
.end method

.method private synthetic lambda$onSizeChanged$0(II)V
    .locals 0

    .line 971
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/QrActivity$QrView;->prepareContent(II)V

    return-void
.end method

.method private synthetic lambda$prepareContent$6()V
    .locals 4

    const/4 v0, 0x0

    .line 1175
    iput-boolean v0, p0, Lorg/telegram/ui/QrActivity$QrView;->firstPrepare:Z

    .line 1176
    iget-object v0, p0, Lorg/telegram/ui/QrActivity$QrView;->contentBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 1178
    iput-object v1, p0, Lorg/telegram/ui/QrActivity$QrView;->contentBitmap:Landroid/graphics/Bitmap;

    .line 1179
    iget-object v1, p0, Lorg/telegram/ui/QrActivity$QrView;->contentBitmapAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    .line 1180
    iget-object v1, p0, Lorg/telegram/ui/QrActivity$QrView;->oldContentBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 1181
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1183
    :cond_0
    iput-object v0, p0, Lorg/telegram/ui/QrActivity$QrView;->oldContentBitmap:Landroid/graphics/Bitmap;

    .line 1184
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$prepareContent$7(Landroid/graphics/Bitmap;FIF)V
    .locals 3

    .line 1309
    iget-object v0, p0, Lorg/telegram/ui/QrActivity$QrView;->contentBitmap:Landroid/graphics/Bitmap;

    .line 1310
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/QrActivity$QrView;->contentBitmap:Landroid/graphics/Bitmap;

    .line 1311
    iget-boolean p1, p0, Lorg/telegram/ui/QrActivity$QrView;->firstPrepare:Z

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 1312
    iget-object p1, p0, Lorg/telegram/ui/QrActivity$QrView;->contentBitmapAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    :cond_0
    const/4 p1, 0x0

    .line 1314
    iput-boolean p1, p0, Lorg/telegram/ui/QrActivity$QrView;->firstPrepare:Z

    .line 1315
    iget-object p1, p0, Lorg/telegram/ui/QrActivity$QrView;->oldContentBitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_1

    .line 1316
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1318
    :cond_1
    iput-object v0, p0, Lorg/telegram/ui/QrActivity$QrView;->oldContentBitmap:Landroid/graphics/Bitmap;

    .line 1320
    iget-object p1, p0, Lorg/telegram/ui/QrActivity$QrView;->centerChangedListener:Lorg/telegram/ui/QrActivity$QrView$QrCenterChangedListener;

    if-eqz p1, :cond_2

    int-to-float p3, p3

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr p3, v0

    sub-float v0, p2, p3

    float-to-int v0, v0

    sub-float v2, p4, p3

    float-to-int v2, v2

    add-float/2addr p2, p3

    float-to-int p2, p2

    add-float/2addr p4, p3

    float-to-int p3, p4

    .line 1321
    invoke-interface {p1, v0, v2, p2, p3}, Lorg/telegram/ui/QrActivity$QrView$QrCenterChangedListener;->onCenterChanged(IIII)V

    .line 1322
    iput-boolean v1, p0, Lorg/telegram/ui/QrActivity$QrView;->logoCenterSet:Z

    .line 1324
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$setData$1(II)V
    .locals 0

    .line 1104
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/QrActivity$QrView;->prepareContent(II)V

    return-void
.end method

.method private prepareContent(II)V
    .locals 24

    move-object/from16 v1, p0

    move/from16 v0, p1

    move/from16 v2, p2

    if-eqz v0, :cond_17

    if-nez v2, :cond_0

    goto/16 :goto_e

    .line 1173
    :cond_0
    iget-object v3, v1, Lorg/telegram/ui/QrActivity$QrView;->username:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, v1, Lorg/telegram/ui/QrActivity$QrView;->hasTimer:Z

    if-eqz v3, :cond_2

    :cond_1
    iget-object v3, v1, Lorg/telegram/ui/QrActivity$QrView;->link:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1174
    :cond_2
    new-instance v0, Lorg/telegram/ui/QrActivity$QrView$$ExternalSyntheticLambda3;

    invoke-direct {v0, v1}, Lorg/telegram/ui/QrActivity$QrView$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/QrActivity$QrView;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    .line 1190
    :cond_3
    iget-boolean v3, v1, Lorg/telegram/ui/QrActivity$QrView;->hasTimer:Z

    if-eqz v3, :cond_4

    const/4 v3, 0x0

    goto :goto_0

    :cond_4
    iget-boolean v3, v1, Lorg/telegram/ui/QrActivity$QrView;->isPhone:Z

    if-eqz v3, :cond_5

    iget-object v3, v1, Lorg/telegram/ui/QrActivity$QrView;->username:Ljava/lang/String;

    goto :goto_0

    :cond_5
    iget-object v3, v1, Lorg/telegram/ui/QrActivity$QrView;->username:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    .line 1191
    :goto_0
    iget-object v5, v1, Lorg/telegram/ui/QrActivity$QrView;->hadUserText:Ljava/lang/String;

    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, v1, Lorg/telegram/ui/QrActivity$QrView;->link:Ljava/lang/String;

    iget-object v6, v1, Lorg/telegram/ui/QrActivity$QrView;->hadLink:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, v1, Lorg/telegram/ui/QrActivity$QrView;->hadWidth:Ljava/lang/Integer;

    if-eqz v5, :cond_6

    iget-object v6, v1, Lorg/telegram/ui/QrActivity$QrView;->hadHeight:Ljava/lang/Integer;

    if-eqz v6, :cond_6

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v0, :cond_6

    iget-object v5, v1, Lorg/telegram/ui/QrActivity$QrView;->hadHeight:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v2, :cond_6

    goto/16 :goto_e

    .line 1195
    :cond_6
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 1199
    new-instance v7, Landroid/text/TextPaint;

    const/16 v6, 0x41

    invoke-direct {v7, v6}, Landroid/text/TextPaint;-><init>(I)V

    const/high16 v6, -0x1000000

    .line 1200
    invoke-virtual {v7, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 1201
    const-string v8, "fonts/rcondensedbold.ttf"

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1205
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    const/high16 v9, 0x41a00000    # 20.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    const/4 v10, 0x2

    mul-int/2addr v9, v10

    sub-int/2addr v8, v9

    .line 1206
    iget-boolean v9, v1, Lorg/telegram/ui/QrActivity$QrView;->hasTimer:Z

    const/high16 v17, 0x40800000    # 4.0f

    const/high16 v18, 0x40000000    # 2.0f

    const/high16 v16, 0x41f00000    # 30.0f

    const/4 v11, 0x3

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-nez v9, :cond_f

    move v9, v12

    :goto_1
    if-gt v9, v10, :cond_f

    if-nez v9, :cond_7

    .line 1209
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v14

    sget v15, Lorg/telegram/messenger/R$drawable;->qr_at_large:I

    invoke-static {v14, v15}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .line 1210
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    int-to-float v15, v15

    invoke-virtual {v7, v15}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_2

    :cond_7
    if-ne v9, v13, :cond_8

    .line 1212
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v14

    sget v15, Lorg/telegram/messenger/R$drawable;->qr_at_medium:I

    invoke-static {v14, v15}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    const/high16 v15, 0x41c80000    # 25.0f

    .line 1213
    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    int-to-float v15, v15

    invoke-virtual {v7, v15}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_2

    .line 1215
    :cond_8
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v14

    sget v15, Lorg/telegram/messenger/R$drawable;->qr_at_small:I

    invoke-static {v14, v15}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    const/high16 v15, 0x41980000    # 19.0f

    .line 1216
    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    int-to-float v15, v15

    invoke-virtual {v7, v15}, Landroid/graphics/Paint;->setTextSize(F)V

    :goto_2
    if-eqz v14, :cond_9

    .line 1219
    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v15

    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {v14, v12, v12, v15, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1220
    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    sget-object v15, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v6, v15}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v14, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_9
    move v4, v6

    .line 1223
    new-instance v6, Landroid/text/SpannableStringBuilder;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1224
    iget-boolean v4, v1, Lorg/telegram/ui/QrActivity$QrView;->isPhone:Z

    if-nez v4, :cond_a

    .line 1225
    new-instance v4, Lcom/exteragram/messenger/components/VerticalImageSpan;

    invoke-direct {v4, v14}, Lcom/exteragram/messenger/components/VerticalImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/16 v15, 0x21

    invoke-virtual {v6, v4, v12, v13, v15}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1227
    :cond_a
    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-virtual {v7, v6, v13, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v4

    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v15

    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v15

    int-to-float v15, v15

    add-float/2addr v4, v15

    if-gt v9, v13, :cond_b

    int-to-float v15, v8

    cmpl-float v15, v4, v15

    if-lez v15, :cond_b

    add-int/lit8 v9, v9, 0x1

    const/high16 v6, -0x1000000

    goto/16 :goto_1

    :cond_b
    int-to-float v9, v8

    cmpl-float v9, v4, v9

    if-lez v9, :cond_c

    move v9, v10

    goto :goto_3

    :cond_c
    move v9, v13

    :goto_3
    if-le v9, v13, :cond_d

    .line 1234
    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v15

    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v15

    int-to-float v15, v15

    add-float/2addr v15, v4

    float-to-int v15, v15

    div-int/2addr v15, v10

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v21

    add-int v15, v15, v21

    goto :goto_4

    :cond_d
    move v15, v8

    :goto_4
    if-le v15, v8, :cond_e

    .line 1238
    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v4, v8

    float-to-int v4, v4

    div-int/2addr v4, v11

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    add-int v15, v4, v8

    move v8, v15

    move v15, v11

    goto :goto_5

    :cond_e
    move v8, v15

    move v15, v9

    .line 1240
    :goto_5
    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v4, v8

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    invoke-static {v4, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    move v4, v10

    const/high16 v10, 0x3f800000    # 1.0f

    move/from16 v21, v11

    const/4 v11, 0x0

    move/from16 v22, v12

    const/4 v12, 0x0

    move/from16 v23, v13

    const/4 v13, 0x0

    move/from16 v20, v4

    move/from16 v4, v21

    move/from16 v21, v16

    const/high16 v16, -0x1000000

    invoke-static/range {v6 .. v15}, Lorg/telegram/ui/Components/StaticLayoutEx;->createStaticLayout(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;II)Landroid/text/StaticLayout;

    move-result-object v6

    goto :goto_6

    :cond_f
    move/from16 v20, v10

    move v4, v11

    move/from16 v22, v12

    move/from16 v21, v16

    move/from16 v16, v6

    const/4 v6, 0x0

    .line 1245
    :goto_6
    invoke-virtual {v7}, Landroid/graphics/Paint;->descent()F

    move-result v8

    invoke-virtual {v7}, Landroid/graphics/Paint;->ascent()F

    move-result v7

    sub-float/2addr v8, v7

    if-nez v6, :cond_10

    move/from16 v12, v22

    goto :goto_7

    .line 1246
    :cond_10
    invoke-virtual {v6}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v12

    :goto_7
    int-to-float v7, v12

    mul-float/2addr v7, v8

    .line 1250
    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    sub-int v10, v0, v8

    .line 1251
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 1252
    sget-object v8, Lcom/google/zxing/EncodeHintType;->ERROR_CORRECTION:Lcom/google/zxing/EncodeHintType;

    sget-object v9, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->M:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    invoke-virtual {v12, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1253
    sget-object v8, Lcom/google/zxing/EncodeHintType;->MARGIN:Lcom/google/zxing/EncodeHintType;

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v12, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1254
    new-instance v8, Lcom/google/zxing/qrcode/QRCodeWriter;

    invoke-direct {v8}, Lcom/google/zxing/qrcode/QRCodeWriter;-><init>()V

    move v9, v4

    const/16 v19, 0x0

    :goto_8
    const/4 v11, 0x5

    const v15, 0xffffff

    if-ge v9, v11, :cond_12

    .line 1258
    :try_start_0
    sget-object v11, Lcom/google/zxing/EncodeHintType;->QR_VERSION:Lcom/google/zxing/EncodeHintType;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v11, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move v11, v9

    .line 1259
    :try_start_1
    iget-object v9, v1, Lorg/telegram/ui/QrActivity$QrView;->link:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v13, 0x0

    const/high16 v14, 0x3f400000    # 0.75f

    move/from16 v20, v11

    move v11, v10

    :try_start_2
    invoke-virtual/range {v8 .. v16}, Lcom/google/zxing/qrcode/QRCodeWriter;->encode(Ljava/lang/String;IILjava/util/Map;Landroid/graphics/Bitmap;FII)Landroid/graphics/Bitmap;

    move-result-object v19
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move/from16 v9, v16

    .line 1260
    :try_start_3
    invoke-virtual {v8}, Lcom/google/zxing/qrcode/QRCodeWriter;->getImageSize()I

    move-result v11
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move/from16 v22, v11

    goto :goto_a

    :catch_0
    :goto_9
    move/from16 v9, v16

    goto :goto_a

    :catch_1
    move/from16 v20, v11

    goto :goto_9

    :catch_2
    move/from16 v20, v9

    goto :goto_9

    :catch_3
    :goto_a
    if-eqz v19, :cond_11

    :goto_b
    move-object/from16 v8, v19

    move/from16 v10, v22

    goto :goto_c

    :cond_11
    add-int/lit8 v11, v20, 0x1

    move/from16 v16, v9

    move v9, v11

    goto :goto_8

    :cond_12
    move/from16 v9, v16

    goto :goto_b

    :goto_c
    if-nez v8, :cond_13

    goto/16 :goto_e

    .line 1272
    :cond_13
    new-instance v11, Landroid/graphics/Canvas;

    invoke-direct {v11, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1273
    invoke-virtual {v11, v15}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 1275
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    sub-int v12, v0, v12

    int-to-float v12, v12

    div-float v12, v12, v18

    int-to-float v13, v2

    const v14, 0x3e19999a    # 0.15f

    mul-float/2addr v14, v13

    if-eqz v6, :cond_14

    .line 1277
    invoke-virtual {v6}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v15

    if-ne v15, v4, :cond_14

    const v14, 0x3e051eb8    # 0.13f

    mul-float/2addr v14, v13

    .line 1280
    :cond_14
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v15

    check-cast v15, Landroid/view/ViewGroup;

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v16

    check-cast v16, Landroid/view/ViewGroup;

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    if-ge v15, v9, :cond_15

    goto :goto_d

    :cond_15
    const v9, 0x3db851ec    # 0.09f

    mul-float v14, v13, v9

    .line 1284
    :goto_d
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9, v4}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v11, v8, v12, v14, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1286
    new-instance v4, Landroid/graphics/Paint;

    const/4 v9, 0x1

    invoke-direct {v4, v9}, Landroid/graphics/Paint;-><init>(I)V

    const/high16 v9, -0x1000000

    .line 1287
    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 1288
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    int-to-float v9, v9

    const/high16 v13, 0x3f000000    # 0.5f

    mul-float/2addr v9, v13

    add-float/2addr v12, v9

    .line 1289
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v13

    add-float/2addr v9, v14

    int-to-float v15, v10

    mul-float/2addr v15, v13

    .line 1290
    invoke-virtual {v11, v12, v9, v15, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    if-eqz v6, :cond_16

    .line 1294
    invoke-virtual {v11}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    invoke-virtual {v6}, Landroid/text/Layout;->getWidth()I

    move-result v15

    sub-int/2addr v4, v15

    int-to-float v4, v4

    mul-float/2addr v4, v13

    .line 1295
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    int-to-float v15, v15

    add-float/2addr v15, v14

    move/from16 v16, v13

    invoke-virtual {v11}, Landroid/graphics/Canvas;->getHeight()I

    move-result v13

    int-to-float v13, v13

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v14, v0

    sub-float/2addr v13, v14

    sub-float/2addr v13, v7

    mul-float v13, v13, v16

    add-float/2addr v15, v13

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v15, v0

    .line 1296
    invoke-virtual {v11}, Landroid/graphics/Canvas;->save()I

    .line 1297
    invoke-virtual {v11, v4, v15}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1298
    invoke-virtual {v6, v11}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 1299
    invoke-virtual {v11}, Landroid/graphics/Canvas;->restore()V

    .line 1300
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 1303
    :cond_16
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/QrActivity$QrView;->hadWidth:Ljava/lang/Integer;

    .line 1304
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/QrActivity$QrView;->hadHeight:Ljava/lang/Integer;

    .line 1305
    iput-object v3, v1, Lorg/telegram/ui/QrActivity$QrView;->hadUserText:Ljava/lang/String;

    .line 1306
    iget-object v0, v1, Lorg/telegram/ui/QrActivity$QrView;->link:Ljava/lang/String;

    iput-object v0, v1, Lorg/telegram/ui/QrActivity$QrView;->hadLink:Ljava/lang/String;

    .line 1308
    new-instance v0, Lorg/telegram/ui/QrActivity$QrView$$ExternalSyntheticLambda4;

    move-object v2, v5

    move v5, v9

    move v4, v10

    move v3, v12

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/QrActivity$QrView$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/QrActivity$QrView;Landroid/graphics/Bitmap;FIF)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_17
    :goto_e
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .line 1334
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 1335
    iget-object v0, p0, Lorg/telegram/ui/QrActivity$QrView;->checkTimerToken:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 1340
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 1341
    iget-object v0, p0, Lorg/telegram/ui/QrActivity$QrView;->loadingMatrix:Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz v0, :cond_0

    .line 1342
    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->stop()V

    .line 1343
    iget-object v0, p0, Lorg/telegram/ui/QrActivity$QrView;->loadingMatrix:Lorg/telegram/ui/Components/RLottieDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->recycle(Z)V

    const/4 v0, 0x0

    .line 1344
    iput-object v0, p0, Lorg/telegram/ui/QrActivity$QrView;->loadingMatrix:Lorg/telegram/ui/Components/RLottieDrawable;

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1018
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 1019
    iget-object v2, v0, Lorg/telegram/ui/QrActivity$QrView;->backgroundBitmap:Landroid/graphics/Bitmap;

    const/4 v7, 0x0

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    .line 1020
    invoke-virtual {v1, v2, v7, v7, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1023
    :cond_0
    iget-object v2, v0, Lorg/telegram/ui/QrActivity$QrView;->contentBitmapAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v2, v8}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v9

    cmpl-float v10, v9, v7

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-lez v10, :cond_1

    cmpg-float v2, v9, v8

    if-gez v2, :cond_1

    move v13, v12

    goto :goto_0

    :cond_1
    move v13, v11

    :goto_0
    cmpg-float v2, v9, v8

    const/high16 v14, 0x42f00000    # 120.0f

    const/16 v15, 0x1f

    const/16 v3, 0xff

    if-gez v2, :cond_4

    if-eqz v13, :cond_2

    .line 1028
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v2, v7, v7, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1029
    invoke-virtual {v1, v2, v3, v15}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    .line 1031
    :cond_2
    iget-object v2, v0, Lorg/telegram/ui/QrActivity$QrView;->oldContentBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_3

    .line 1032
    iget-object v4, v0, Lorg/telegram/ui/QrActivity$QrView;->bitmapGradientPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v7, v7, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 1034
    :cond_3
    invoke-direct/range {p0 .. p1}, Lorg/telegram/ui/QrActivity$QrView;->drawLoading(Landroid/graphics/Canvas;)V

    :goto_1
    if-eqz v13, :cond_4

    .line 1037
    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    .line 1038
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    neg-float v4, v2

    .line 1039
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v2

    sub-float v6, v8, v9

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {v1, v7, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1040
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v2

    iget-object v6, v0, Lorg/telegram/ui/QrActivity$QrView;->crossfadeToPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    move/from16 v16, v3

    const/4 v3, 0x0

    move/from16 v17, v8

    move/from16 v8, v16

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1041
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 1042
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_2

    :cond_4
    move/from16 v17, v8

    move v8, v3

    :goto_2
    if-lez v10, :cond_7

    if-eqz v13, :cond_5

    .line 1047
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v7, v7, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1048
    invoke-virtual {v1, v2, v8, v15}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    .line 1050
    :cond_5
    iget-object v2, v0, Lorg/telegram/ui/QrActivity$QrView;->contentBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_6

    .line 1051
    iget-object v3, v0, Lorg/telegram/ui/QrActivity$QrView;->bitmapGradientPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v7, v7, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1052
    iget-object v2, v0, Lorg/telegram/ui/QrActivity$QrView;->gradientDrawable:Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    invoke-virtual {v2, v12}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->updateAnimation(Z)V

    goto :goto_3

    .line 1054
    :cond_6
    invoke-direct/range {p0 .. p1}, Lorg/telegram/ui/QrActivity$QrView;->drawLoading(Landroid/graphics/Canvas;)V

    :goto_3
    if-eqz v13, :cond_7

    .line 1057
    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    .line 1058
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    neg-float v3, v2

    .line 1059
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v2

    sub-float v8, v17, v9

    mul-float/2addr v4, v8

    add-float/2addr v4, v3

    invoke-virtual {v1, v7, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1060
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v2

    iget-object v6, v0, Lorg/telegram/ui/QrActivity$QrView;->crossfadeFromPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1061
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 1062
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 1066
    :cond_7
    iget-boolean v2, v0, Lorg/telegram/ui/QrActivity$QrView;->hasTimer:Z

    if-eqz v2, :cond_a

    .line 1067
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    const/high16 v3, 0x40c00000    # 6.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    .line 1068
    iget-object v3, v0, Lorg/telegram/ui/QrActivity$QrView;->shareUsernameLayout:Landroid/text/StaticLayout;

    if-eqz v3, :cond_9

    .line 1069
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 1070
    invoke-virtual {v1, v7, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1071
    iget-object v2, v0, Lorg/telegram/ui/QrActivity$QrView;->shareUsernameLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/Layout;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    if-eq v2, v3, :cond_8

    .line 1072
    invoke-virtual {v0, v12}, Lorg/telegram/ui/QrActivity$QrView;->setForShare(Z)V

    .line 1074
    :cond_8
    iget-object v2, v0, Lorg/telegram/ui/QrActivity$QrView;->shareUsernameLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, v1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 1075
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    return-void

    .line 1077
    :cond_9
    iget-object v3, v0, Lorg/telegram/ui/QrActivity$QrView;->timerTextDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    float-to-int v2, v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    const/high16 v5, 0x42200000    # 40.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v3, v11, v2, v4, v5}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setBounds(IIII)V

    .line 1078
    iget-object v2, v0, Lorg/telegram/ui/QrActivity$QrView;->timerTextDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_a
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 5

    .line 957
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    if-ne p1, p3, :cond_1

    if-eq p2, p4, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 959
    :cond_1
    :goto_0
    iget-object p3, p0, Lorg/telegram/ui/QrActivity$QrView;->backgroundBitmap:Landroid/graphics/Bitmap;

    if-eqz p3, :cond_2

    .line 960
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->recycle()V

    const/4 p3, 0x0

    .line 961
    iput-object p3, p0, Lorg/telegram/ui/QrActivity$QrView;->backgroundBitmap:Landroid/graphics/Bitmap;

    .line 963
    :cond_2
    new-instance p3, Landroid/graphics/Paint;

    const/4 p4, 0x1

    invoke-direct {p3, p4}, Landroid/graphics/Paint;-><init>(I)V

    const/4 p4, -0x1

    .line 964
    invoke-virtual {p3, p4}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 p4, 0x40800000    # 4.0f

    .line 965
    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p4

    int-to-float p4, p4

    sget v0, Lorg/telegram/ui/QrActivity$QrView;->SHADOW_SIZE:F

    const/high16 v1, 0xf000000

    const/4 v2, 0x0

    invoke-virtual {p3, p4, v2, v0, v1}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 966
    sget-object p4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, p4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p4

    iput-object p4, p0, Lorg/telegram/ui/QrActivity$QrView;->backgroundBitmap:Landroid/graphics/Bitmap;

    .line 967
    new-instance p4, Landroid/graphics/Canvas;

    iget-object v1, p0, Lorg/telegram/ui/QrActivity$QrView;->backgroundBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p4, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 968
    new-instance v1, Landroid/graphics/RectF;

    int-to-float v2, p1

    sub-float v3, v2, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v0

    invoke-direct {v1, v0, v0, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 969
    sget v0, Lorg/telegram/ui/QrActivity$QrView;->RADIUS:F

    invoke-virtual {p4, v1, v0, v0, p3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 970
    iget-boolean p3, p0, Lorg/telegram/ui/QrActivity$QrView;->setData:Z

    if-eqz p3, :cond_3

    .line 971
    sget-object p3, Lorg/telegram/messenger/Utilities;->themeQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance p4, Lorg/telegram/ui/QrActivity$QrView$$ExternalSyntheticLambda2;

    invoke-direct {p4, p0, p1, p2}, Lorg/telegram/ui/QrActivity$QrView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/QrActivity$QrView;II)V

    invoke-virtual {p3, p4}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 974
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x3f800000    # 1.0f

    mul-float/2addr p1, p2

    iget-object p3, p0, Lorg/telegram/ui/QrActivity$QrView;->gradientDrawable:Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    invoke-virtual {p3}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p1, p3

    .line 975
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p3, p2

    iget-object p2, p0, Lorg/telegram/ui/QrActivity$QrView;->gradientDrawable:Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p3, p2

    .line 976
    invoke-static {p1, p3}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 977
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    .line 978
    invoke-virtual {p2, p1, p1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 979
    iget-object p3, p0, Lorg/telegram/ui/QrActivity$QrView;->gradientShader:Landroid/graphics/BitmapShader;

    invoke-virtual {p3, p2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 981
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    .line 982
    invoke-virtual {p2, p1, p1}, Landroid/graphics/Matrix;->setScale(FF)V

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr v2, p1

    .line 983
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    const/high16 p3, 0x40c00000    # 6.0f

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    add-int/2addr p1, p3

    int-to-float p1, p1

    invoke-virtual {p2, v2, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 984
    iget-object p1, p0, Lorg/telegram/ui/QrActivity$QrView;->gradientTextShader:Landroid/graphics/BitmapShader;

    invoke-virtual {p1, p2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method setCenterChangedListener(Lorg/telegram/ui/QrActivity$QrView$QrCenterChangedListener;)V
    .locals 0

    .line 1084
    iput-object p1, p0, Lorg/telegram/ui/QrActivity$QrView;->centerChangedListener:Lorg/telegram/ui/QrActivity$QrView$QrCenterChangedListener;

    return-void
.end method

.method setColors(IIII)V
    .locals 1

    .line 1157
    iget-object v0, p0, Lorg/telegram/ui/QrActivity$QrView;->gradientDrawable:Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setColors(IIII)V

    .line 1158
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method setData(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 1

    const/4 v0, 0x1

    .line 1088
    iput-boolean v0, p0, Lorg/telegram/ui/QrActivity$QrView;->setData:Z

    .line 1089
    iput-object p2, p0, Lorg/telegram/ui/QrActivity$QrView;->username:Ljava/lang/String;

    .line 1090
    iput-boolean p3, p0, Lorg/telegram/ui/QrActivity$QrView;->isPhone:Z

    if-eqz p4, :cond_1

    .line 1092
    sget p1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->getCachedContactToken()Lorg/telegram/tgnet/TLRPC$TL_exportedContactToken;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1094
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_exportedContactToken;->url:Ljava/lang/String;

    iput-object p2, p0, Lorg/telegram/ui/QrActivity$QrView;->link:Ljava/lang/String;

    .line 1095
    iget p1, p1, Lorg/telegram/tgnet/TLRPC$TL_exportedContactToken;->expires:I

    iput p1, p0, Lorg/telegram/ui/QrActivity$QrView;->linkExpires:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1097
    iput-object p1, p0, Lorg/telegram/ui/QrActivity$QrView;->link:Ljava/lang/String;

    goto :goto_0

    .line 1100
    :cond_1
    iput-object p1, p0, Lorg/telegram/ui/QrActivity$QrView;->link:Ljava/lang/String;

    .line 1102
    :goto_0
    iput-boolean p4, p0, Lorg/telegram/ui/QrActivity$QrView;->hasTimer:Z

    .line 1103
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p2

    .line 1104
    sget-object p3, Lorg/telegram/messenger/Utilities;->themeQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance p4, Lorg/telegram/ui/QrActivity$QrView$$ExternalSyntheticLambda1;

    invoke-direct {p4, p0, p1, p2}, Lorg/telegram/ui/QrActivity$QrView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/QrActivity$QrView;II)V

    invoke-virtual {p3, p4}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 1105
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 1107
    iget-object p1, p0, Lorg/telegram/ui/QrActivity$QrView;->checkTimerToken:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public setForShare(Z)V
    .locals 12

    .line 937
    iget-boolean v0, p0, Lorg/telegram/ui/QrActivity$QrView;->hasTimer:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_3

    .line 941
    iget-object p1, p0, Lorg/telegram/ui/QrActivity$QrView;->shareUsernameLayoutPaint:Landroid/text/TextPaint;

    if-nez p1, :cond_1

    .line 942
    new-instance p1, Landroid/text/TextPaint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/QrActivity$QrView;->shareUsernameLayoutPaint:Landroid/text/TextPaint;

    .line 944
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/QrActivity$QrView;->shareUsernameLayoutPaint:Landroid/text/TextPaint;

    iget-object v0, p0, Lorg/telegram/ui/QrActivity$QrView;->gradientTextShader:Landroid/graphics/BitmapShader;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 945
    iget-object p1, p0, Lorg/telegram/ui/QrActivity$QrView;->shareUsernameLayoutPaint:Landroid/text/TextPaint;

    const-string v0, "fonts/rcondensedbold.ttf"

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 946
    iget-object p1, p0, Lorg/telegram/ui/QrActivity$QrView;->shareUsernameLayoutPaint:Landroid/text/TextPaint;

    const/high16 v0, 0x41c80000    # 25.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 947
    iget-object p1, p0, Lorg/telegram/ui/QrActivity$QrView;->username:Ljava/lang/String;

    if-nez p1, :cond_2

    const-string p1, ""

    .line 948
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/QrActivity$QrView;->shareUsernameLayoutPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object v2

    .line 949
    iget-object v3, p0, Lorg/telegram/ui/QrActivity$QrView;->shareUsernameLayoutPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    sget-object v9, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    const/high16 v0, 0x42700000    # 60.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int v10, p1, v0

    const/4 v11, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v11}, Lorg/telegram/ui/Components/StaticLayoutEx;->createStaticLayout(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;II)Landroid/text/StaticLayout;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/QrActivity$QrView;->shareUsernameLayout:Landroid/text/StaticLayout;

    return-void

    :cond_3
    const/4 p1, 0x0

    .line 951
    iput-object p1, p0, Lorg/telegram/ui/QrActivity$QrView;->shareUsernameLayout:Landroid/text/StaticLayout;

    return-void
.end method

.method setPosAnimationProgress(F)V
    .locals 1

    .line 1162
    iget-object v0, p0, Lorg/telegram/ui/QrActivity$QrView;->gradientDrawable:Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    iput p1, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->posAnimationProgress:F

    return-void
.end method
