.class public Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ColorButton"
.end annotation


# instance fields
.field private final bounce:Lorg/telegram/ui/Components/ButtonBounce;

.field private final bounds:Landroid/graphics/RectF;

.field private final circlePath:Landroid/graphics/Path;

.field public final clickBounds:Landroid/graphics/RectF;

.field private closePaint:Landroid/graphics/Paint;

.field private closePath:Landroid/graphics/Path;

.field private final color2Path:Landroid/graphics/Path;

.field private hasClose:Z

.field private hasColor2:Z

.field private hasColor3:Z

.field public id:I

.field private lockDrawable:Landroid/graphics/drawable/Drawable;

.field private final paint1:Landroid/graphics/Paint;

.field private final paint2:Landroid/graphics/Paint;

.field private final paint3:Landroid/graphics/Paint;

.field private pressed:Z

.field private selected:Z

.field private final selectedT:Lorg/telegram/ui/Components/AnimatedFloat;

.field final synthetic this$0:Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;)V
    .locals 8

    .line 2379
    iput-object p1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->this$0:Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2365
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->paint1:Landroid/graphics/Paint;

    .line 2366
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->paint2:Landroid/graphics/Paint;

    .line 2367
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->paint3:Landroid/graphics/Paint;

    .line 2368
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->circlePath:Landroid/graphics/Path;

    .line 2369
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->color2Path:Landroid/graphics/Path;

    .line 2377
    new-instance v0, Lorg/telegram/ui/Components/ButtonBounce;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/ButtonBounce;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    .line 2422
    new-instance v1, Lorg/telegram/ui/Components/AnimatedFloat;

    const-wide/16 v5, 0x140

    sget-object v7, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v3, 0x0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->selectedT:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 2432
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->bounds:Landroid/graphics/RectF;

    .line 2433
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->clickBounds:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method protected draw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 2442
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2443
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    const v1, 0x3d4ccccd    # 0.05f

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ButtonBounce;->getScale(F)F

    move-result v0

    .line 2444
    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 2446
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2447
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->circlePath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 2448
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->circlePath:Landroid/graphics/Path;

    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget-object v5, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    div-float/2addr v5, v4

    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 2449
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->circlePath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 2450
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->paint1:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 2451
    iget-boolean v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->hasColor2:Z

    if-eqz v0, :cond_0

    .line 2452
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->color2Path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 2453
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->color2Path:Landroid/graphics/Path;

    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->bounds:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->right:F

    iget v1, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 2454
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->color2Path:Landroid/graphics/Path;

    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->bounds:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->right:F

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 2455
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->color2Path:Landroid/graphics/Path;

    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->bounds:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 2456
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->color2Path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 2457
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->color2Path:Landroid/graphics/Path;

    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->paint2:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 2459
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 2461
    iget-boolean v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->hasColor3:Z

    if-eqz v0, :cond_1

    .line 2462
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2463
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const v1, 0x3ea147ae    # 0.315f

    mul-float/2addr v0, v1

    .line 2464
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget-object v2, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->bounds:Landroid/graphics/RectF;

    .line 2465
    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    div-float/2addr v0, v4

    sub-float/2addr v2, v0

    iget-object v3, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->bounds:Landroid/graphics/RectF;

    .line 2466
    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    sub-float/2addr v3, v0

    iget-object v5, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->bounds:Landroid/graphics/RectF;

    .line 2467
    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    add-float/2addr v5, v0

    iget-object v6, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->bounds:Landroid/graphics/RectF;

    .line 2468
    invoke-virtual {v6}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    add-float/2addr v6, v0

    .line 2464
    invoke-virtual {v1, v2, v3, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 2470
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    const/high16 v3, 0x42340000    # 45.0f

    invoke-virtual {p1, v3, v0, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    const v0, 0x40151eb8    # 2.33f

    .line 2471
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    iget-object v3, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->paint3:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 2472
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 2475
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->selectedT:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->selected:Z

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_2

    .line 2478
    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->this$0:Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;

    invoke-static {v1}, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->-$$Nest$fgetbackgroundPaint(Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;)Landroid/graphics/Paint;

    move-result-object v1

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2479
    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->this$0:Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;

    invoke-static {v1}, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->-$$Nest$fgetbackgroundPaint(Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;)Landroid/graphics/Paint;

    move-result-object v1

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    iget-object v3, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->this$0:Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;

    invoke-static {v3}, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 2480
    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->bounds:Landroid/graphics/RectF;

    .line 2481
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->bounds:Landroid/graphics/RectF;

    .line 2482
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v3, v4

    iget-object v5, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    div-float/2addr v5, v4

    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iget-object v5, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->this$0:Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;

    invoke-static {v5}, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->-$$Nest$fgetbackgroundPaint(Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;)Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v5

    const/high16 v6, 0x3f000000    # 0.5f

    const/high16 v7, -0x40000000    # -2.0f

    invoke-static {v6, v7, v0}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v6

    mul-float/2addr v5, v6

    add-float/2addr v3, v5

    iget-object v5, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->this$0:Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;

    invoke-static {v5}, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->-$$Nest$fgetbackgroundPaint(Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;)Landroid/graphics/Paint;

    move-result-object v5

    .line 2480
    invoke-virtual {p1, v1, v2, v3, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 2487
    :cond_2
    iget-boolean v1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->hasClose:Z

    if-eqz v1, :cond_7

    .line 2488
    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->this$0:Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;

    invoke-static {v1}, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->-$$Nest$fgetlock(Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_4

    .line 2489
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->lockDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_3

    .line 2490
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->this$0:Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_mini_lock3:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->lockDrawable:Landroid/graphics/drawable/Drawable;

    .line 2491
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 2493
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->lockDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->bounds:Landroid/graphics/RectF;

    .line 2494
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->lockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    const v3, 0x3f99999a    # 1.2f

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->bounds:Landroid/graphics/RectF;

    .line 2495
    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    iget-object v5, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->lockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v4

    mul-float/2addr v5, v3

    sub-float/2addr v2, v5

    float-to-int v2, v2

    iget-object v5, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->bounds:Landroid/graphics/RectF;

    .line 2496
    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    iget-object v6, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->lockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v4

    mul-float/2addr v6, v3

    add-float/2addr v5, v6

    float-to-int v5, v5

    iget-object v6, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->bounds:Landroid/graphics/RectF;

    .line 2497
    invoke-virtual {v6}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    iget-object v7, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->lockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v4

    mul-float/2addr v7, v3

    add-float/2addr v6, v7

    float-to-int v3, v6

    .line 2493
    invoke-virtual {v0, v1, v2, v5, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2499
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->lockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    .line 2501
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->closePath:Landroid/graphics/Path;

    if-nez v1, :cond_5

    .line 2502
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->closePath:Landroid/graphics/Path;

    .line 2504
    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->closePaint:Landroid/graphics/Paint;

    if-nez v1, :cond_6

    .line 2505
    new-instance v1, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->closePaint:Landroid/graphics/Paint;

    .line 2506
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 2507
    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->closePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2508
    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->closePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 2510
    :cond_6
    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->closePaint:Landroid/graphics/Paint;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2511
    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->closePath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->rewind()V

    const/high16 v1, 0x40a00000    # 5.0f

    .line 2512
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v1, v2, v0}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v0

    int-to-float v0, v0

    .line 2513
    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->closePath:Landroid/graphics/Path;

    iget-object v2, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    sub-float/2addr v2, v0

    iget-object v3, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    sub-float/2addr v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 2514
    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->closePath:Landroid/graphics/Path;

    iget-object v2, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    add-float/2addr v2, v0

    iget-object v3, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    add-float/2addr v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 2515
    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->closePath:Landroid/graphics/Path;

    iget-object v2, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    add-float/2addr v2, v0

    iget-object v3, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    sub-float/2addr v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 2516
    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->closePath:Landroid/graphics/Path;

    iget-object v2, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    sub-float/2addr v2, v0

    iget-object v3, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    add-float/2addr v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 2517
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->closePath:Landroid/graphics/Path;

    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->closePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 2521
    :cond_7
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public layout(Landroid/graphics/RectF;)V
    .locals 1

    .line 2435
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    return-void
.end method

.method public layoutClickBounds(Landroid/graphics/RectF;)V
    .locals 1

    .line 2438
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->clickBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    return-void
.end method

.method public set(I)V
    .locals 1

    const/4 v0, 0x0

    .line 2382
    iput-boolean v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->hasColor3:Z

    iput-boolean v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->hasColor2:Z

    .line 2383
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->paint1:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public set(Lorg/telegram/messenger/MessagesController$PeerColor;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 2401
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->this$0:Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;

    invoke-static {v0}, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->this$0:Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;

    invoke-static {v0}, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->isDark()Z

    move-result v0

    .line 2402
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->this$0:Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;

    invoke-static {v1}, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->-$$Nest$fgettype(Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_3

    if-eqz v0, :cond_2

    .line 2403
    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController$PeerColor;->hasColor2()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController$PeerColor;->hasColor3()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2404
    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->paint1:Landroid/graphics/Paint;

    iget-object v4, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->this$0:Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;

    invoke-static {v4}, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v4

    invoke-virtual {p1, v2, v4}, Lorg/telegram/messenger/MessagesController$PeerColor;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 2405
    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->paint2:Landroid/graphics/Paint;

    iget-object v2, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->this$0:Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;

    invoke-static {v2}, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-virtual {p1, v3, v2}, Lorg/telegram/messenger/MessagesController$PeerColor;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 2407
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->paint1:Landroid/graphics/Paint;

    iget-object v4, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->this$0:Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;

    invoke-static {v4}, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lorg/telegram/messenger/MessagesController$PeerColor;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 2408
    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->paint2:Landroid/graphics/Paint;

    iget-object v3, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->this$0:Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;

    invoke-static {v3}, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lorg/telegram/messenger/MessagesController$PeerColor;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 2410
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->paint3:Landroid/graphics/Paint;

    iget-object v2, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->this$0:Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;

    invoke-static {v2}, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Lorg/telegram/messenger/MessagesController$PeerColor;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 2411
    invoke-virtual {p1, v0}, Lorg/telegram/messenger/MessagesController$PeerColor;->hasColor2(Z)Z

    move-result v1

    iput-boolean v1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->hasColor2:Z

    .line 2412
    invoke-virtual {p1, v0}, Lorg/telegram/messenger/MessagesController$PeerColor;->hasColor3(Z)Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->hasColor3:Z

    return-void

    .line 2414
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->paint1:Landroid/graphics/Paint;

    iget-object v4, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->this$0:Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;

    invoke-static {v4}, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lorg/telegram/messenger/MessagesController$PeerColor;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 2415
    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->paint2:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/MessagesController$PeerColor;->hasColor6(Z)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->this$0:Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;

    invoke-static {v4}, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v4

    invoke-virtual {p1, v2, v4}, Lorg/telegram/messenger/MessagesController$PeerColor;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->this$0:Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;

    invoke-static {v2}, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-virtual {p1, v3, v2}, Lorg/telegram/messenger/MessagesController$PeerColor;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    :goto_2
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 2416
    invoke-virtual {p1, v0}, Lorg/telegram/messenger/MessagesController$PeerColor;->hasColor6(Z)Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->hasColor2:Z

    .line 2417
    iput-boolean v3, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->hasColor3:Z

    return-void
.end method

.method public setClose(Z)V
    .locals 0

    .line 2394
    iput-boolean p1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->hasClose:Z

    return-void
.end method

.method public setPressed(Z)V
    .locals 1

    .line 2530
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    iput-boolean p1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->pressed:Z

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    return-void
.end method

.method public setSelected(ZZ)V
    .locals 1

    .line 2424
    iput-boolean p1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->selected:Z

    if-nez p2, :cond_0

    .line 2426
    iget-object p2, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->selectedT:Lorg/telegram/ui/Components/AnimatedFloat;

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lorg/telegram/ui/Components/AnimatedFloat;->set(ZZ)F

    .line 2428
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->this$0:Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
