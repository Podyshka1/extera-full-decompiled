.class Lorg/telegram/ui/ProfileActivity$TopView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ProfileActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TopView"
.end annotation


# instance fields
.field private actionsTextColor:I

.field public backgroundGradient:Landroid/graphics/RadialGradient;

.field private backgroundGradientColor1:I

.field private backgroundGradientColor2:I

.field public final backgroundGradientMatrix:Landroid/graphics/Matrix;

.field public backgroundGradientRadius:F

.field private backgroundGradientX:I

.field public backgroundGradientY:F

.field private final backgroundPaint:Landroid/graphics/Paint;

.field private blurBounds:Landroid/graphics/Rect;

.field private btnColor:I

.field public color1:I

.field private final color1Animated:Lorg/telegram/ui/Components/AnimatedColor;

.field public color2:I

.field private final color2Animated:Lorg/telegram/ui/Components/AnimatedColor;

.field private currentColor:I

.field private final emoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

.field private emojiColor:I

.field public final emojiFullT:Lorg/telegram/ui/Components/AnimatedFloat;

.field private emojiIsCollectible:Z

.field private emojiLoaded:Z

.field public final emojiLoadedT:Lorg/telegram/ui/Components/AnimatedFloat;

.field private final hasColorAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

.field private hasColorById:Z

.field public hasEmoji:Z

.field private paint:Landroid/graphics/Paint;

.field final synthetic this$0:Lorg/telegram/ui/ProfileActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ProfileActivity;Landroid/content/Context;)V
    .locals 8

    .line 1243
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$TopView;->this$0:Lorg/telegram/ui/ProfileActivity;

    .line 1244
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1241
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$TopView;->paint:Landroid/graphics/Paint;

    .line 1261
    new-instance p1, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object v6, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v0, 0x15e

    invoke-direct {p1, p0, v0, v1, v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JLandroid/animation/TimeInterpolator;)V

    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$TopView;->hasColorAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 1263
    new-instance p1, Lorg/telegram/ui/Components/AnimatedColor;

    invoke-direct {p1, p0, v0, v1, v6}, Lorg/telegram/ui/Components/AnimatedColor;-><init>(Landroid/view/View;JLandroid/animation/TimeInterpolator;)V

    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$TopView;->color1Animated:Lorg/telegram/ui/Components/AnimatedColor;

    .line 1264
    new-instance p1, Lorg/telegram/ui/Components/AnimatedColor;

    invoke-direct {p1, p0, v0, v1, v6}, Lorg/telegram/ui/Components/AnimatedColor;-><init>(Landroid/view/View;JLandroid/animation/TimeInterpolator;)V

    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$TopView;->color2Animated:Lorg/telegram/ui/Components/AnimatedColor;

    .line 1269
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$TopView;->backgroundGradientMatrix:Landroid/graphics/Matrix;

    .line 1270
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$TopView;->backgroundPaint:Landroid/graphics/Paint;

    const/4 p1, -0x1

    .line 1311
    iput p1, p0, Lorg/telegram/ui/ProfileActivity$TopView;->actionsTextColor:I

    .line 1312
    new-instance p1, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    const/high16 p2, 0x41a00000    # 20.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    const/16 v0, 0xd

    const/4 v7, 0x0

    invoke-direct {p1, p0, v7, p2, v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;-><init>(Landroid/view/View;ZII)V

    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$TopView;->emoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    .line 1326
    new-instance v0, Lorg/telegram/ui/Components/AnimatedFloat;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1b8

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v0, v1, Lorg/telegram/ui/ProfileActivity$TopView;->emojiLoadedT:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 1327
    new-instance v0, Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v0, v1, Lorg/telegram/ui/ProfileActivity$TopView;->emojiFullT:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 1445
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, v1, Lorg/telegram/ui/ProfileActivity$TopView;->blurBounds:Landroid/graphics/Rect;

    .line 1245
    invoke-virtual {p0, v7}, Landroid/view/View;->setWillNotDraw(Z)V

    return-void
.end method

.method private isEmojiLoaded()Z
    .locals 3

    .line 1346
    iget-boolean v0, p0, Lorg/telegram/ui/ProfileActivity$TopView;->emojiLoaded:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 1349
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$TopView;->emoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v0, :cond_1

    .line 1350
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$TopView;->emoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    .line 1351
    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->hasImageLoaded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1352
    iput-boolean v1, p0, Lorg/telegram/ui/ProfileActivity$TopView;->emojiLoaded:Z

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private updateBackgroundPaint()V
    .locals 12

    .line 1359
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$TopView;->color1Animated:Lorg/telegram/ui/Components/AnimatedColor;

    iget v1, p0, Lorg/telegram/ui/ProfileActivity$TopView;->color1:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedColor;->set(I)I

    move-result v0

    .line 1360
    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$TopView;->color2Animated:Lorg/telegram/ui/Components/AnimatedColor;

    iget v2, p0, Lorg/telegram/ui/ProfileActivity$TopView;->color2:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedColor;->set(I)I

    move-result v1

    .line 1361
    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$TopView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetactionsView(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/ProfileActionsView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1362
    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$TopView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetactionsView(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/ProfileActionsView;

    move-result-object v2

    iget v3, p0, Lorg/telegram/ui/ProfileActivity$TopView;->btnColor:I

    iget v4, p0, Lorg/telegram/ui/ProfileActivity$TopView;->actionsTextColor:I

    iget-boolean v5, p0, Lorg/telegram/ui/ProfileActivity$TopView;->hasColorById:Z

    invoke-virtual {v2, v3, v4, v5}, Lorg/telegram/ui/Components/ProfileActionsView;->setActionsColor(IIZ)V

    .line 1365
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    const/4 v3, 0x2

    div-int/2addr v2, v3

    .line 1366
    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$TopView;->backgroundGradient:Landroid/graphics/RadialGradient;

    if-eqz v4, :cond_2

    iget v4, p0, Lorg/telegram/ui/ProfileActivity$TopView;->backgroundGradientColor1:I

    if-ne v4, v0, :cond_2

    iget v4, p0, Lorg/telegram/ui/ProfileActivity$TopView;->backgroundGradientColor2:I

    if-ne v4, v1, :cond_2

    iget v4, p0, Lorg/telegram/ui/ProfileActivity$TopView;->backgroundGradientX:I

    if-eq v4, v2, :cond_1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_0
    const/high16 v4, 0x42c00000    # 96.0f

    .line 1367
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    mul-int/2addr v4, v3

    int-to-float v4, v4

    iput v4, p0, Lorg/telegram/ui/ProfileActivity$TopView;->backgroundGradientRadius:F

    .line 1368
    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$TopView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProfileActivity;->access$000(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBar;->getOccupyStatusBar()Z

    move-result v4

    if-eqz v4, :cond_3

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    .line 1369
    :goto_1
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    const/high16 v5, 0x41a80000    # 21.0f

    sget v6, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float/2addr v6, v5

    sub-float/2addr v4, v6

    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity$TopView;->this$0:Lorg/telegram/ui/ProfileActivity;

    .line 1371
    invoke-static {v5}, Lorg/telegram/ui/ProfileActivity;->access$100(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTranslationY()F

    move-result v5

    add-float/2addr v4, v5

    iput v4, p0, Lorg/telegram/ui/ProfileActivity$TopView;->backgroundGradientY:F

    .line 1372
    new-instance v5, Landroid/graphics/RadialGradient;

    iput v2, p0, Lorg/telegram/ui/ProfileActivity$TopView;->backgroundGradientX:I

    int-to-float v6, v2

    iget v2, p0, Lorg/telegram/ui/ProfileActivity$TopView;->backgroundGradientY:F

    iget v8, p0, Lorg/telegram/ui/ProfileActivity$TopView;->backgroundGradientRadius:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v8, v4

    add-float v7, v2, v4

    iput v1, p0, Lorg/telegram/ui/ProfileActivity$TopView;->backgroundGradientColor2:I

    iput v0, p0, Lorg/telegram/ui/ProfileActivity$TopView;->backgroundGradientColor1:I

    filled-new-array {v1, v0}, [I

    move-result-object v9

    new-array v10, v3, [F

    fill-array-data v10, :array_0

    sget-object v11, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v5 .. v11}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v5, p0, Lorg/telegram/ui/ProfileActivity$TopView;->backgroundGradient:Landroid/graphics/RadialGradient;

    .line 1373
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$TopView;->backgroundGradientMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v0}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 1374
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$TopView;->backgroundPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$TopView;->backgroundGradient:Landroid/graphics/RadialGradient;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1375
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$TopView;->backgroundPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .line 1316
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 1317
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$TopView;->emoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->attach()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1322
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 1323
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$TopView;->emoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->detach()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1381
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/ProfileActivity$TopView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBar;->getOccupyStatusBar()Z

    move-result v3

    const/4 v8, 0x0

    if-eqz v3, :cond_0

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto :goto_0

    :cond_0
    move v3, v8

    :goto_0
    add-int/2addr v2, v3

    int-to-float v2, v2

    .line 1382
    iget-object v3, v0, Lorg/telegram/ui/ProfileActivity$TopView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetextraHeight(Lorg/telegram/ui/ProfileActivity;)F

    move-result v3

    add-float/2addr v2, v3

    iget-object v3, v0, Lorg/telegram/ui/ProfileActivity$TopView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetsearchTransitionOffset(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    int-to-float v3, v3

    add-float v9, v2, v3

    .line 1384
    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity$TopView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetmediaHeaderAnimationProgress(Lorg/telegram/ui/ProfileActivity;)F

    move-result v2

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float v2, v10, v2

    mul-float/2addr v2, v9

    float-to-int v11, v2

    if-eqz v11, :cond_a

    .line 1387
    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity$TopView;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-object v2, v2, Lorg/telegram/ui/ProfileActivity;->previousTransitionFragment:Lorg/telegram/ui/Components/ChatActivityInterface;

    if-eqz v2, :cond_3

    invoke-interface {v2}, Lorg/telegram/ui/Components/ChatActivityInterface;->getContentView()Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1388
    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity$TopView;->blurBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v2, v8, v8, v3, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 1389
    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity$TopView;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-object v2, v2, Lorg/telegram/ui/ProfileActivity;->previousTransitionFragment:Lorg/telegram/ui/Components/ChatActivityInterface;

    invoke-interface {v2}, Lorg/telegram/ui/Components/ChatActivityInterface;->getActionBar()Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity$TopView;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-object v2, v2, Lorg/telegram/ui/ProfileActivity;->previousTransitionFragment:Lorg/telegram/ui/Components/ChatActivityInterface;

    invoke-interface {v2}, Lorg/telegram/ui/Components/ChatActivityInterface;->getContentView()Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurWasDrawn()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity$TopView;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-object v2, v2, Lorg/telegram/ui/ProfileActivity;->previousTransitionFragment:Lorg/telegram/ui/Components/ChatActivityInterface;

    invoke-interface {v2}, Lorg/telegram/ui/Components/ChatActivityInterface;->getActionBar()Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1390
    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity$TopView;->paint:Landroid/graphics/Paint;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    iget-object v4, v0, Lorg/telegram/ui/ProfileActivity$TopView;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-object v4, v4, Lorg/telegram/ui/ProfileActivity;->previousTransitionFragment:Lorg/telegram/ui/Components/ChatActivityInterface;

    invoke-interface {v4}, Lorg/telegram/ui/Components/ChatActivityInterface;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1391
    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity$TopView;->blurBounds:Landroid/graphics/Rect;

    iget-object v3, v0, Lorg/telegram/ui/ProfileActivity$TopView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 1392
    :cond_1
    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity$TopView;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-object v2, v2, Lorg/telegram/ui/ProfileActivity;->previousTransitionMainFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v2, :cond_2

    instance-of v3, v2, Lorg/telegram/ui/DialogsActivity;

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    if-eqz v2, :cond_2

    .line 1393
    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity$TopView;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-object v2, v2, Lorg/telegram/ui/ProfileActivity;->previousTransitionMainFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getActionBar()Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBar;->blurScrimPaint:Landroid/graphics/Paint;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    iget-object v4, v0, Lorg/telegram/ui/ProfileActivity$TopView;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-object v4, v4, Lorg/telegram/ui/ProfileActivity;->previousTransitionMainFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1394
    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity$TopView;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-object v2, v2, Lorg/telegram/ui/ProfileActivity;->previousTransitionMainFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v3

    iget-object v4, v0, Lorg/telegram/ui/ProfileActivity$TopView;->blurBounds:Landroid/graphics/Rect;

    iget-object v5, v0, Lorg/telegram/ui/ProfileActivity$TopView;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-object v5, v5, Lorg/telegram/ui/ProfileActivity;->previousTransitionMainFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getActionBar()Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/ui/ActionBar/ActionBar;->blurScrimPaint:Landroid/graphics/Paint;

    const/4 v6, 0x1

    move-object v15, v2

    move-object v2, v1

    move-object v1, v15

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->drawBlurRect(Landroid/graphics/Canvas;FLandroid/graphics/Rect;Landroid/graphics/Paint;Z)V

    goto :goto_1

    .line 1396
    :cond_2
    iget-object v1, v0, Lorg/telegram/ui/ProfileActivity$TopView;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-object v1, v1, Lorg/telegram/ui/ProfileActivity;->previousTransitionFragment:Lorg/telegram/ui/Components/ChatActivityInterface;

    invoke-interface {v1}, Lorg/telegram/ui/Components/ChatActivityInterface;->getContentView()Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v3

    iget-object v4, v0, Lorg/telegram/ui/ProfileActivity$TopView;->blurBounds:Landroid/graphics/Rect;

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity$TopView;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-object v2, v2, Lorg/telegram/ui/ProfileActivity;->previousTransitionFragment:Lorg/telegram/ui/Components/ChatActivityInterface;

    invoke-interface {v2}, Lorg/telegram/ui/Components/ChatActivityInterface;->getActionBar()Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v2

    iget-object v5, v2, Lorg/telegram/ui/ActionBar/ActionBar;->blurScrimPaint:Landroid/graphics/Paint;

    const/4 v6, 0x1

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->drawBlurRect(Landroid/graphics/Canvas;FLandroid/graphics/Rect;Landroid/graphics/Paint;Z)V

    .line 1399
    :cond_3
    :goto_1
    iget-object v1, v0, Lorg/telegram/ui/ProfileActivity$TopView;->paint:Landroid/graphics/Paint;

    iget v2, v0, Lorg/telegram/ui/ProfileActivity$TopView;->currentColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1400
    invoke-direct {v0}, Lorg/telegram/ui/ProfileActivity$TopView;->updateBackgroundPaint()V

    .line 1401
    iget-object v1, v0, Lorg/telegram/ui/ProfileActivity$TopView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetplayProfileAnimation(Lorg/telegram/ui/ProfileActivity;)I

    move-result v1

    if-nez v1, :cond_4

    move v1, v10

    goto :goto_2

    :cond_4
    iget-object v1, v0, Lorg/telegram/ui/ProfileActivity$TopView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetavatarAnimationProgress(Lorg/telegram/ui/ProfileActivity;)F

    move-result v1

    :goto_2
    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity$TopView;->hasColorAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v3, v0, Lorg/telegram/ui/ProfileActivity$TopView;->hasColorById:Z

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v2

    mul-float v7, v1, v2

    cmpg-float v1, v7, v10

    if-gez v1, :cond_5

    .line 1403
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v4, v1

    int-to-float v5, v11

    iget-object v6, v0, Lorg/telegram/ui/ProfileActivity$TopView;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_5
    const/4 v12, 0x0

    cmpl-float v1, v7, v12

    const/high16 v13, 0x437f0000    # 255.0f

    if-lez v1, :cond_6

    .line 1406
    iget-object v1, v0, Lorg/telegram/ui/ProfileActivity$TopView;->backgroundPaint:Landroid/graphics/Paint;

    mul-float/2addr v7, v13

    float-to-int v2, v7

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1407
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v4, v1

    int-to-float v5, v11

    iget-object v6, v0, Lorg/telegram/ui/ProfileActivity$TopView;->backgroundPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_3

    :cond_6
    move-object/from16 v1, p1

    .line 1409
    :goto_3
    iget-boolean v2, v0, Lorg/telegram/ui/ProfileActivity$TopView;->hasEmoji:Z

    if-eqz v2, :cond_9

    .line 1410
    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity$TopView;->emojiLoadedT:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-direct {v0}, Lorg/telegram/ui/ProfileActivity$TopView;->isEmojiLoaded()Z

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v2

    .line 1411
    iget-object v3, v0, Lorg/telegram/ui/ProfileActivity$TopView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetopenAnimationInProgress(Lorg/telegram/ui/ProfileActivity;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, v0, Lorg/telegram/ui/ProfileActivity$TopView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetplayProfileAnimation(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_7

    goto :goto_4

    :cond_7
    cmpl-float v2, v2, v12

    if-lez v2, :cond_9

    .line 1412
    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity$TopView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetavatarContainer(Lorg/telegram/ui/ProfileActivity;)Landroid/widget/FrameLayout;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 1413
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 1414
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v1, v8, v8, v2, v11}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 1415
    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity$TopView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$300(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBar;->getOccupyStatusBar()Z

    move-result v2

    if-eqz v2, :cond_8

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    int-to-float v12, v2

    .line 1416
    :cond_8
    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity$TopView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$mgetHeaderOnlyExtraHeight(Lorg/telegram/ui/ProfileActivity;)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v12

    iget-object v3, v0, Lorg/telegram/ui/ProfileActivity$TopView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$400(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v12

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float v4, v2, v3

    .line 1417
    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity$TopView;->emoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget-object v5, v0, Lorg/telegram/ui/ProfileActivity$TopView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v5}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$mcalculateHeaderExtraDiff(Lorg/telegram/ui/ProfileActivity;)F

    move-result v5

    iget-object v6, v0, Lorg/telegram/ui/ProfileActivity$TopView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v6}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetavatarContainer(Lorg/telegram/ui/ProfileActivity;)Landroid/widget/FrameLayout;

    move-result-object v6

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Stars/StarGiftPatterns;->drawProfileAnimatedPattern(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IFFLandroid/view/View;F)V

    .line 1418
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 1421
    :cond_9
    :goto_4
    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity$TopView;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-object v2, v2, Lorg/telegram/ui/ProfileActivity;->previousTransitionFragment:Lorg/telegram/ui/Components/ChatActivityInterface;

    if-eqz v2, :cond_a

    .line 1422
    invoke-interface {v2}, Lorg/telegram/ui/Components/ChatActivityInterface;->getActionBar()Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v2

    .line 1423
    iget-object v12, v2, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz v12, :cond_a

    .line 1425
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    move-result v14

    .line 1426
    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v3

    invoke-virtual {v12}, Landroid/view/View;->getX()F

    move-result v4

    add-float/2addr v3, v4

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    invoke-virtual {v12}, Landroid/view/View;->getY()F

    move-result v4

    add-float/2addr v2, v4

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1427
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v4, v2

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v5, v2

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity$TopView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetavatarAnimationProgress(Lorg/telegram/ui/ProfileActivity;)F

    move-result v2

    sub-float v2, v10, v2

    mul-float/2addr v2, v13

    float-to-int v6, v2

    const/16 v7, 0x1f

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 1428
    invoke-virtual {v12, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 1429
    invoke-virtual {v1, v14}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_a
    int-to-float v7, v11

    cmpl-float v2, v7, v9

    if-eqz v2, :cond_b

    .line 1434
    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity$TopView;->this$0:Lorg/telegram/ui/ProfileActivity;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ProfileActivity;->getThemedColor(I)I

    move-result v2

    .line 1435
    iget-object v3, v0, Lorg/telegram/ui/ProfileActivity$TopView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1436
    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity$TopView;->blurBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    float-to-int v4, v9

    invoke-virtual {v2, v8, v11, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1437
    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity$TopView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetcontentView(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ProfileActivity$NestedFrameLayout;

    move-result-object v2

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v3

    iget-object v4, v0, Lorg/telegram/ui/ProfileActivity$TopView;->blurBounds:Landroid/graphics/Rect;

    iget-object v5, v0, Lorg/telegram/ui/ProfileActivity$TopView;->paint:Landroid/graphics/Paint;

    const/4 v6, 0x1

    move-object v15, v2

    move-object v2, v1

    move-object v1, v15

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->drawBlurRect(Landroid/graphics/Canvas;FLandroid/graphics/Rect;Landroid/graphics/Paint;Z)V

    :cond_b
    if-lez v11, :cond_c

    .line 1440
    iget-object v1, v0, Lorg/telegram/ui/ProfileActivity$TopView;->paint:Landroid/graphics/Paint;

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity$TopView;->this$0:Lorg/telegram/ui/ProfileActivity;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ProfileActivity;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1441
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v11, v1

    invoke-static {v8, v11}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v3, v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v4, v1

    iget-object v6, v0, Lorg/telegram/ui/ProfileActivity$TopView;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    move-object/from16 v1, p1

    move v5, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_c
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .line 1250
    iget v0, p0, Lorg/telegram/ui/ProfileActivity$TopView;->currentColor:I

    if-eq p1, v0, :cond_0

    .line 1251
    iput p1, p0, Lorg/telegram/ui/ProfileActivity$TopView;->currentColor:I

    .line 1252
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$TopView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1253
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 1254
    iget-boolean p1, p0, Lorg/telegram/ui/ProfileActivity$TopView;->hasColorById:Z

    if-nez p1, :cond_0

    .line 1255
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$TopView;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget v0, p0, Lorg/telegram/ui/ProfileActivity$TopView;->currentColor:I

    invoke-static {p1, v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fputactionBarBackgroundColor(Lorg/telegram/ui/ProfileActivity;I)V

    :cond_0
    return-void
.end method

.method public setBackgroundColorId(Lorg/telegram/messenger/MessagesController$PeerColor;Z)V
    .locals 7

    const v0, 0x3e19999a    # 0.15f

    const/high16 v1, 0x3e800000    # 0.25f

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eqz p1, :cond_1

    .line 1274
    iput-boolean v2, p0, Lorg/telegram/ui/ProfileActivity$TopView;->hasColorById:Z

    .line 1275
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v4

    invoke-virtual {p1, v4}, Lorg/telegram/messenger/MessagesController$PeerColor;->getBgColor1(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/ui/ProfileActivity$TopView;->color1:I

    .line 1276
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v4

    invoke-virtual {p1, v4}, Lorg/telegram/messenger/MessagesController$PeerColor;->getBgColor2(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/ui/ProfileActivity$TopView;->color2:I

    .line 1277
    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity$TopView;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget v6, p0, Lorg/telegram/ui/ProfileActivity$TopView;->color1:I

    invoke-static {v6, v4, v1}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v1

    invoke-static {v5, v1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fputactionBarBackgroundColor(Lorg/telegram/ui/ProfileActivity;I)V

    .line 1278
    iget p1, p1, Lorg/telegram/messenger/MessagesController$PeerColor;->patternColor:I

    if-eqz p1, :cond_0

    .line 1279
    iput p1, p0, Lorg/telegram/ui/ProfileActivity$TopView;->emojiColor:I

    const v0, 0x3ee66666    # 0.45f

    .line 1280
    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ProfileActivity$TopView;->btnColor:I

    goto :goto_0

    .line 1282
    :cond_0
    iget p1, p0, Lorg/telegram/ui/ProfileActivity$TopView;->color1:I

    invoke-static {p1}, Lorg/telegram/ui/PeerColorActivity;->adaptProfileEmojiColor(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ProfileActivity$TopView;->emojiColor:I

    .line 1283
    iget p1, p0, Lorg/telegram/ui/ProfileActivity$TopView;->color1:I

    invoke-static {p1}, Lorg/telegram/ui/PeerColorActivity;->adaptProfileEmojiColor(I)I

    move-result p1

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ProfileActivity$TopView;->btnColor:I

    .line 1285
    :goto_0
    iput v3, p0, Lorg/telegram/ui/ProfileActivity$TopView;->actionsTextColor:I

    goto/16 :goto_1

    .line 1287
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$TopView;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget v4, p0, Lorg/telegram/ui/ProfileActivity$TopView;->currentColor:I

    invoke-static {p1, v4}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fputactionBarBackgroundColor(Lorg/telegram/ui/ProfileActivity;I)V

    const/4 p1, 0x0

    .line 1288
    iput-boolean p1, p0, Lorg/telegram/ui/ProfileActivity$TopView;->hasColorById:Z

    .line 1289
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$TopView;->this$0:Lorg/telegram/ui/ProfileActivity;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    invoke-virtual {p1, v4}, Lorg/telegram/ui/ProfileActivity;->getThemedColor(I)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result p1

    const v5, 0x3f4ccccd    # 0.8f

    cmpl-float p1, p1, v5

    if-lez p1, :cond_2

    .line 1290
    iput v3, p0, Lorg/telegram/ui/ProfileActivity$TopView;->emojiColor:I

    .line 1291
    iput v3, p0, Lorg/telegram/ui/ProfileActivity$TopView;->btnColor:I

    goto :goto_1

    .line 1292
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$TopView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {p1, v4}, Lorg/telegram/ui/ProfileActivity;->getThemedColor(I)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result p1

    const v5, 0x3e4ccccd    # 0.2f

    cmpg-float p1, p1, v5

    if-gez p1, :cond_3

    .line 1293
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$TopView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {p1, v4}, Lorg/telegram/ui/ProfileActivity;->getThemedColor(I)I

    move-result p1

    const v0, 0x3ca3d70a    # 0.02f

    invoke-static {p1, v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->adaptHSV(IFF)I

    move-result p1

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-static {p1, v5}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ProfileActivity$TopView;->emojiColor:I

    .line 1294
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$TopView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {p1, v4}, Lorg/telegram/ui/ProfileActivity;->getThemedColor(I)I

    move-result p1

    invoke-static {p1, v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->adaptHSV(IFF)I

    move-result p1

    const v0, 0x3eb33333    # 0.35f

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ProfileActivity$TopView;->btnColor:I

    .line 1295
    iput v3, p0, Lorg/telegram/ui/ProfileActivity$TopView;->actionsTextColor:I

    goto :goto_1

    .line 1297
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$TopView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {p1, v4}, Lorg/telegram/ui/ProfileActivity;->getThemedColor(I)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/ui/PeerColorActivity;->adaptProfileEmojiColor(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ProfileActivity$TopView;->emojiColor:I

    .line 1298
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$TopView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {p1, v4}, Lorg/telegram/ui/ProfileActivity;->getThemedColor(I)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/ui/PeerColorActivity;->adaptProfileEmojiColor(I)I

    move-result p1

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ProfileActivity$TopView;->btnColor:I

    .line 1299
    iput v3, p0, Lorg/telegram/ui/ProfileActivity$TopView;->actionsTextColor:I

    :goto_1
    if-nez p2, :cond_4

    .line 1303
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$TopView;->color1Animated:Lorg/telegram/ui/Components/AnimatedColor;

    iget p2, p0, Lorg/telegram/ui/ProfileActivity$TopView;->color1:I

    invoke-virtual {p1, p2, v2}, Lorg/telegram/ui/Components/AnimatedColor;->set(IZ)I

    .line 1304
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$TopView;->color2Animated:Lorg/telegram/ui/Components/AnimatedColor;

    iget p2, p0, Lorg/telegram/ui/ProfileActivity$TopView;->color2:I

    invoke-virtual {p1, p2, v2}, Lorg/telegram/ui/Components/AnimatedColor;->set(IZ)I

    .line 1306
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setBackgroundEmojiId(JZZ)V
    .locals 2

    .line 1333
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$TopView;->emoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v0, p1, p2, p4}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(JZ)Z

    .line 1334
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$TopView;->emoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    iget v1, p0, Lorg/telegram/ui/ProfileActivity$TopView;->emojiColor:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->setColor(Ljava/lang/Integer;)V

    .line 1335
    iput-boolean p3, p0, Lorg/telegram/ui/ProfileActivity$TopView;->emojiIsCollectible:Z

    if-nez p4, :cond_0

    .line 1337
    iget-object p4, p0, Lorg/telegram/ui/ProfileActivity$TopView;->emojiFullT:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {p4, p3}, Lorg/telegram/ui/Components/AnimatedFloat;->force(Z)V

    .line 1339
    :cond_0
    iget-boolean p3, p0, Lorg/telegram/ui/ProfileActivity$TopView;->hasEmoji:Z

    if-nez p3, :cond_2

    const-wide/16 p3, 0x0

    cmp-long p3, p1, p3

    if-eqz p3, :cond_1

    const-wide/16 p3, -0x1

    cmp-long p1, p1, p3

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lorg/telegram/ui/ProfileActivity$TopView;->hasEmoji:Z

    .line 1340
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
