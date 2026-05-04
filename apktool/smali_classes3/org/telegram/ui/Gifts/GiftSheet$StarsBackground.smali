.class Lorg/telegram/ui/Gifts/GiftSheet$StarsBackground;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Gifts/GiftSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StarsBackground"
.end annotation


# instance fields
.field public final backgroundPaint:Landroid/graphics/Paint;

.field private final color:I

.field private invalidateRunnable:Ljava/lang/Runnable;

.field private isAttached:Z

.field private liteModeCallback:Lorg/telegram/messenger/Utilities$Callback;

.field public final particles:Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;

.field private particlesAllowed:Z

.field private final particlesColor:I

.field public final path:Landroid/graphics/Path;

.field public final rectF:Landroid/graphics/RectF;


# direct methods
.method public static synthetic $r8$lambda$U7HXi0Pdhz9hbFt6DT2mJvIHKv8(Lorg/telegram/ui/Gifts/GiftSheet$StarsBackground;Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Gifts/GiftSheet$StarsBackground;->lambda$attach$0(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uJG4HpHzrtmWk0GCxlhI37_rXvI(Lorg/telegram/ui/Gifts/GiftSheet$StarsBackground;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Gifts/GiftSheet$StarsBackground;->invalidateParticles()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/16 v0, 0x80

    .line 2245
    invoke-static {p1, v0}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/Gifts/GiftSheet$StarsBackground;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    .line 2248
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 2260
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$StarsBackground;->rectF:Landroid/graphics/RectF;

    .line 2261
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$StarsBackground;->path:Landroid/graphics/Path;

    .line 2262
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$StarsBackground;->backgroundPaint:Landroid/graphics/Paint;

    .line 2249
    iput p1, p0, Lorg/telegram/ui/Gifts/GiftSheet$StarsBackground;->particlesColor:I

    .line 2250
    iput p2, p0, Lorg/telegram/ui/Gifts/GiftSheet$StarsBackground;->color:I

    .line 2251
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 2253
    invoke-static {}, Lorg/telegram/ui/Components/BatchParticlesDrawHelper;->isAvailable()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2254
    new-instance p1, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;

    const/16 p2, 0x19

    invoke-direct {p1, v1, p2}, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;-><init>(II)V

    iput-object p1, p0, Lorg/telegram/ui/Gifts/GiftSheet$StarsBackground;->particles:Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 2256
    iput-object p1, p0, Lorg/telegram/ui/Gifts/GiftSheet$StarsBackground;->particles:Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;

    return-void
.end method

.method private checkParticlesAllowed()V
    .locals 3

    .line 2292
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$StarsBackground;->particles:Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$StarsBackground;->isAttached:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x20000

    invoke-static {v0}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 2294
    :goto_0
    iget-boolean v2, p0, Lorg/telegram/ui/Gifts/GiftSheet$StarsBackground;->particlesAllowed:Z

    if-ne v2, v0, :cond_1

    return-void

    .line 2297
    :cond_1
    iput-boolean v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$StarsBackground;->particlesAllowed:Z

    if-eqz v0, :cond_2

    const/16 v0, 0xf

    .line 2300
    invoke-static {v0}, Lorg/telegram/messenger/utils/FrameTickScheduler;->getFrameSparseness(I)I

    move-result v0

    .line 2301
    new-instance v2, Lorg/telegram/ui/Gifts/GiftSheet$StarsBackground$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Gifts/GiftSheet$StarsBackground$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Gifts/GiftSheet$StarsBackground;)V

    iput-object v2, p0, Lorg/telegram/ui/Gifts/GiftSheet$StarsBackground;->invalidateRunnable:Ljava/lang/Runnable;

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/utils/FrameTickScheduler;->subscribe(Ljava/lang/Runnable;II)V

    goto :goto_1

    .line 2303
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$StarsBackground;->invalidateRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/utils/FrameTickScheduler;->unsubscribe(Ljava/lang/Runnable;)V

    .line 2305
    :goto_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method private invalidateParticles()V
    .locals 1

    .line 2284
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$StarsBackground;->particles:Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;

    if-eqz v0, :cond_0

    .line 2285
    invoke-virtual {v0}, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;->process()Z

    .line 2286
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$attach$0(Ljava/lang/Boolean;)V
    .locals 0

    .line 2317
    invoke-direct {p0}, Lorg/telegram/ui/Gifts/GiftSheet$StarsBackground;->checkParticlesAllowed()V

    return-void
.end method


# virtual methods
.method public attach()V
    .locals 1

    .line 2314
    iget-boolean v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$StarsBackground;->isAttached:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2315
    iput-boolean v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$StarsBackground;->isAttached:Z

    .line 2316
    invoke-direct {p0}, Lorg/telegram/ui/Gifts/GiftSheet$StarsBackground;->checkParticlesAllowed()V

    .line 2317
    new-instance v0, Lorg/telegram/ui/Gifts/GiftSheet$StarsBackground$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Gifts/GiftSheet$StarsBackground$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Gifts/GiftSheet$StarsBackground;)V

    iput-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$StarsBackground;->liteModeCallback:Lorg/telegram/messenger/Utilities$Callback;

    invoke-static {v0}, Lorg/telegram/messenger/LiteMode;->addOnPowerSaverAppliedListener(Lorg/telegram/messenger/Utilities$Callback;)V

    :cond_0
    return-void
.end method

.method public detach()V
    .locals 1

    .line 2322
    iget-boolean v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$StarsBackground;->isAttached:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2323
    iput-boolean v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$StarsBackground;->isAttached:Z

    .line 2324
    invoke-direct {p0}, Lorg/telegram/ui/Gifts/GiftSheet$StarsBackground;->checkParticlesAllowed()V

    .line 2325
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$StarsBackground;->liteModeCallback:Lorg/telegram/messenger/Utilities$Callback;

    invoke-static {v0}, Lorg/telegram/messenger/LiteMode;->removeOnPowerSaverAppliedListener(Lorg/telegram/messenger/Utilities$Callback;)V

    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 2267
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$StarsBackground;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lorg/telegram/ui/Gifts/GiftSheet$StarsBackground;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 2268
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$StarsBackground;->particles:Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$StarsBackground;->particlesAllowed:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$StarsBackground;->isAttached:Z

    if-nez v0, :cond_2

    .line 2269
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2270
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$StarsBackground;->path:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 2271
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$StarsBackground;->invalidateRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_1

    .line 2272
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$StarsBackground;->particles:Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;

    invoke-virtual {v0}, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;->process()Z

    .line 2274
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$StarsBackground;->particles:Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;

    iget v1, p0, Lorg/telegram/ui/Gifts/GiftSheet$StarsBackground;->particlesColor:I

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;->draw(Landroid/graphics/Canvas;I)V

    .line 2275
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 2277
    iget-object p1, p0, Lorg/telegram/ui/Gifts/GiftSheet$StarsBackground;->invalidateRunnable:Ljava/lang/Runnable;

    if-nez p1, :cond_2

    .line 2278
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_2
    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 3

    .line 2332
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 2334
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 2335
    iget-object v1, p0, Lorg/telegram/ui/Gifts/GiftSheet$StarsBackground;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v1, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 2336
    iget-object p1, p0, Lorg/telegram/ui/Gifts/GiftSheet$StarsBackground;->path:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->rewind()V

    .line 2337
    iget-object p1, p0, Lorg/telegram/ui/Gifts/GiftSheet$StarsBackground;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lorg/telegram/ui/Gifts/GiftSheet$StarsBackground;->rectF:Landroid/graphics/RectF;

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, v1, v0, v0, v2}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 2338
    iget-object p1, p0, Lorg/telegram/ui/Gifts/GiftSheet$StarsBackground;->particles:Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;

    if-eqz p1, :cond_0

    .line 2339
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$StarsBackground;->rectF:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;->setBounds(Landroid/graphics/RectF;)V

    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 2345
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$StarsBackground;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 2350
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$StarsBackground;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method
