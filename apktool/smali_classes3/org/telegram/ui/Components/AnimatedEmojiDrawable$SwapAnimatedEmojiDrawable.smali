.class public Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/AnimatedEmojiSpan$InvalidateHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/AnimatedEmojiDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SwapAnimatedEmojiDrawable"
.end annotation


# instance fields
.field private account:Ljava/lang/Integer;

.field private alpha:I

.field attached:Z

.field private final bounds:Landroid/graphics/Rect;

.field private cacheType:I

.field public center:Z

.field private final changeProgress:Lorg/telegram/ui/Components/AnimatedFloat;

.field private colorFilter:Landroid/graphics/ColorFilter;

.field private colorFilterLastColor:I

.field private final drawables:[Landroid/graphics/drawable/Drawable;

.field private hasParticles:Z

.field private invalidateParent:Z

.field private final invalidateRunnable:Ljava/lang/Runnable;

.field private lastColor:Ljava/lang/Integer;

.field private offsetX:I

.field private offsetY:I

.field private final overshootInterpolator:Landroid/view/animation/OvershootInterpolator;

.field private parentView:Landroid/view/View;

.field private particles:Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;

.field private final particlesAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

.field private secondParent:Landroid/view/View;

.field private size:I


# direct methods
.method public constructor <init>(Landroid/view/View;I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x7

    .line 1107
    invoke-direct {p0, p1, v0, p2, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;-><init>(Landroid/view/View;ZII)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;II)V
    .locals 1

    const/4 v0, 0x0

    .line 1115
    invoke-direct {p0, p1, v0, p2, p3}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;-><init>(Landroid/view/View;ZII)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;ZI)V
    .locals 1

    const/4 v0, 0x7

    .line 1111
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;-><init>(Landroid/view/View;ZII)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;ZII)V
    .locals 6

    .line 1118
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x0

    .line 1091
    iput-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->center:Z

    .line 1094
    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {v0, v1}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->overshootInterpolator:Landroid/view/animation/OvershootInterpolator;

    .line 1095
    new-instance v0, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const/4 v2, 0x0

    const-wide/16 v3, 0x12c

    invoke-direct {v0, v2, v3, v4, v1}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JLandroid/animation/TimeInterpolator;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->changeProgress:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 1096
    new-instance v5, Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-direct {v5, v2, v3, v4, v1}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JLandroid/animation/TimeInterpolator;)V

    iput-object v5, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->particlesAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

    const/4 v1, 0x2

    .line 1097
    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->drawables:[Landroid/graphics/drawable/Drawable;

    const/16 v1, 0xff

    .line 1102
    iput v1, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->alpha:I

    .line 1197
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->bounds:Landroid/graphics/Rect;

    .line 1481
    new-instance v1, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->invalidateRunnable:Ljava/lang/Runnable;

    .line 1119
    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->parentView:Landroid/view/View;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AnimatedFloat;->setParent(Landroid/view/View;)V

    .line 1120
    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->parentView:Landroid/view/View;

    invoke-virtual {v5, p1}, Lorg/telegram/ui/Components/AnimatedFloat;->setParent(Landroid/view/View;)V

    .line 1121
    iput p3, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->size:I

    .line 1122
    iput p4, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->cacheType:I

    .line 1123
    iput-boolean p2, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->invalidateParent:Z

    return-void
.end method


# virtual methods
.method public attach()V
    .locals 3

    .line 1446
    iget-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->attached:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 1449
    iput-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->attached:Z

    .line 1450
    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->drawables:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    instance-of v2, v1, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v2, :cond_1

    .line 1451
    check-cast v1, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {v1, p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->addView(Lorg/telegram/ui/Components/AnimatedEmojiSpan$InvalidateHolder;)V

    .line 1453
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->drawables:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v1, v0

    instance-of v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v1, :cond_2

    .line 1454
    check-cast v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->addView(Lorg/telegram/ui/Components/AnimatedEmojiSpan$InvalidateHolder;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public detach()V
    .locals 2

    .line 1433
    iget-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->attached:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1436
    iput-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->attached:Z

    .line 1437
    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->drawables:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v1, v0

    instance-of v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v1, :cond_1

    .line 1438
    check-cast v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->removeView(Lorg/telegram/ui/Components/AnimatedEmojiSpan$InvalidateHolder;)V

    .line 1440
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->drawables:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    instance-of v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v1, :cond_2

    .line 1441
    check-cast v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->removeView(Lorg/telegram/ui/Components/AnimatedEmojiSpan$InvalidateHolder;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 1200
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->changeProgress:Lorg/telegram/ui/Components/AnimatedFloat;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v0

    .line 1201
    iget-object v2, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->bounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1202
    iget-object v2, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->bounds:Landroid/graphics/Rect;

    iget v3, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->offsetX:I

    iget v4, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->offsetY:I

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 1203
    iget-object v2, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->particlesAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v3, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->hasParticles:Z

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-lez v3, :cond_1

    .line 1204
    iget-object v3, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->particles:Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;

    if-eqz v3, :cond_1

    .line 1205
    iget-object v4, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;->setBounds(Landroid/graphics/Rect;)V

    .line 1206
    iget-object v3, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->particles:Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;

    invoke-virtual {v3}, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;->process()Z

    .line 1207
    iget-object v3, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->particles:Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;

    iget-object v4, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->lastColor:Ljava/lang/Integer;

    if-nez v4, :cond_0

    const/4 v4, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :goto_0
    invoke-static {v4, v2}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v2

    invoke-virtual {v3, p1, v2}, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;->draw(Landroid/graphics/Canvas;I)V

    .line 1208
    iget-object v2, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->invalidateRunnable:Ljava/lang/Runnable;

    const/16 v3, 0xf

    invoke-static {v2, v3}, Lorg/telegram/messenger/utils/FrameTickScheduler;->subscribe(Ljava/lang/Runnable;I)V

    goto :goto_1

    .line 1210
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->invalidateRunnable:Ljava/lang/Runnable;

    invoke-static {v2}, Lorg/telegram/messenger/utils/FrameTickScheduler;->unsubscribe(Ljava/lang/Runnable;)V

    .line 1212
    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->drawables:[Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/4 v4, 0x0

    if-eqz v2, :cond_6

    cmpg-float v5, v0, v1

    if-gez v5, :cond_6

    .line 1213
    iget v5, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->alpha:I

    int-to-float v5, v5

    sub-float v6, v1, v0

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1214
    iget-object v2, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->drawables:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    if-gez v2, :cond_2

    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->getIntrinsicWidth()I

    move-result v2

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->drawables:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 1215
    :goto_2
    iget-object v5, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->drawables:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    if-gez v5, :cond_3

    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->getIntrinsicHeight()I

    move-result v5

    goto :goto_3

    :cond_3
    iget-object v5, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->drawables:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 1216
    :goto_3
    iget-object v6, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->drawables:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v6, v3

    instance-of v7, v6, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v7, :cond_4

    .line 1217
    iget-object v2, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v6, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    goto :goto_4

    .line 1218
    :cond_4
    iget-boolean v7, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->center:Z

    if-eqz v7, :cond_5

    .line 1219
    iget-object v7, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->bounds:Landroid/graphics/Rect;

    .line 1220
    invoke-virtual {v7}, Landroid/graphics/Rect;->centerX()I

    move-result v7

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v7, v2

    iget-object v8, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->bounds:Landroid/graphics/Rect;

    .line 1221
    invoke-virtual {v8}, Landroid/graphics/Rect;->centerY()I

    move-result v8

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v8, v5

    iget-object v9, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->bounds:Landroid/graphics/Rect;

    .line 1222
    invoke-virtual {v9}, Landroid/graphics/Rect;->centerX()I

    move-result v9

    add-int/2addr v9, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->bounds:Landroid/graphics/Rect;

    .line 1223
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    add-int/2addr v2, v5

    .line 1219
    invoke-virtual {v6, v7, v8, v9, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_4

    .line 1226
    :cond_5
    iget-object v7, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->bounds:Landroid/graphics/Rect;

    iget v8, v7, Landroid/graphics/Rect;->left:I

    .line 1228
    invoke-virtual {v7}, Landroid/graphics/Rect;->centerY()I

    move-result v7

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v7, v5

    iget-object v9, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->bounds:Landroid/graphics/Rect;

    iget v10, v9, Landroid/graphics/Rect;->left:I

    add-int/2addr v10, v2

    .line 1230
    invoke-virtual {v9}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    add-int/2addr v2, v5

    .line 1226
    invoke-virtual {v6, v8, v7, v10, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1233
    :goto_4
    iget-object v2, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->drawables:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v3

    iget-object v5, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->colorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1234
    iget-object v2, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->drawables:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v3

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1235
    iget-object v2, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->drawables:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v3

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1237
    :cond_6
    iget-object v2, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->drawables:[Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    if-eqz v2, :cond_f

    .line 1238
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1239
    iget-object v2, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->drawables:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    if-gez v2, :cond_7

    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->getIntrinsicWidth()I

    move-result v2

    goto :goto_5

    :cond_7
    iget-object v2, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->drawables:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 1240
    :goto_5
    iget-object v5, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->drawables:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    if-gez v5, :cond_8

    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->getIntrinsicHeight()I

    move-result v5

    goto :goto_6

    :cond_8
    iget-object v5, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->drawables:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 1241
    :goto_6
    iget-object v6, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->drawables:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v6, v3

    instance-of v7, v6, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v7, :cond_b

    .line 1242
    check-cast v6, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-static {v6}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->-$$Nest$fgetimageReceiver(Lorg/telegram/ui/Components/AnimatedEmojiDrawable;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 1243
    iget-object v2, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->drawables:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v3

    check-cast v2, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-static {v2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->-$$Nest$fgetimageReceiver(Lorg/telegram/ui/Components/AnimatedEmojiDrawable;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    const/high16 v5, 0x40800000    # 4.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v2, v5}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    :cond_9
    cmpg-float v1, v0, v1

    if-gez v1, :cond_a

    .line 1246
    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->overshootInterpolator:Landroid/view/animation/OvershootInterpolator;

    invoke-virtual {v1, v0}, Landroid/view/animation/OvershootInterpolator;->getInterpolation(F)F

    move-result v0

    .line 1247
    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 1249
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->drawables:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v3

    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    goto/16 :goto_7

    .line 1250
    :cond_b
    iget-boolean v6, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->center:Z

    if-eqz v6, :cond_d

    cmpg-float v1, v0, v1

    if-gez v1, :cond_c

    .line 1252
    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->overshootInterpolator:Landroid/view/animation/OvershootInterpolator;

    invoke-virtual {v1, v0}, Landroid/view/animation/OvershootInterpolator;->getInterpolation(F)F

    move-result v0

    .line 1253
    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    iget-object v6, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1, v0, v0, v1, v6}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 1255
    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->drawables:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v3

    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->bounds:Landroid/graphics/Rect;

    .line 1256
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget-object v6, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->bounds:Landroid/graphics/Rect;

    .line 1257
    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v6, v5

    iget-object v7, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->bounds:Landroid/graphics/Rect;

    .line 1258
    invoke-virtual {v7}, Landroid/graphics/Rect;->centerX()I

    move-result v7

    add-int/2addr v7, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->bounds:Landroid/graphics/Rect;

    .line 1259
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    add-int/2addr v2, v5

    .line 1255
    invoke-virtual {v0, v1, v6, v7, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_7

    :cond_d
    cmpg-float v1, v0, v1

    if-gez v1, :cond_e

    .line 1263
    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->overshootInterpolator:Landroid/view/animation/OvershootInterpolator;

    invoke-virtual {v1, v0}, Landroid/view/animation/OvershootInterpolator;->getInterpolation(F)F

    move-result v0

    .line 1264
    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->bounds:Landroid/graphics/Rect;

    iget v6, v1, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    int-to-float v7, v2

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v0, v6, v1}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 1266
    :cond_e
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->drawables:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v3

    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->bounds:Landroid/graphics/Rect;

    iget v6, v1, Landroid/graphics/Rect;->left:I

    .line 1268
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v1, v5

    iget-object v7, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->bounds:Landroid/graphics/Rect;

    iget v8, v7, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, v2

    .line 1270
    invoke-virtual {v7}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    add-int/2addr v2, v5

    .line 1266
    invoke-virtual {v0, v6, v1, v8, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1273
    :goto_7
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->drawables:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v3

    iget v1, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->alpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1274
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->drawables:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v3

    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->colorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1275
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->drawables:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v3

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1276
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->drawables:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v3

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1277
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_f
    return-void
.end method

.method public getColor()Ljava/lang/Integer;
    .locals 1

    .line 1194
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->lastColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1282
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->drawables:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 1465
    iget v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->size:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 1460
    iget v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->size:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public invalidate()V
    .locals 2

    .line 1484
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->parentView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1485
    iget-boolean v1, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->invalidateParent:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1486
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->parentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 1488
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->parentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 1491
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->secondParent:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1492
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 1494
    :cond_2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public isEmpty()Z
    .locals 2

    .line 1301
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->drawables:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public isNotEmpty()F
    .locals 4

    .line 1295
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->drawables:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->changeProgress:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 1296
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->drawables:[Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    aget-object v0, v0, v3

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->changeProgress:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v1

    :cond_1
    add-float/2addr v2, v1

    return v2
.end method

.method public isStable()Z
    .locals 3

    .line 1305
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->drawables:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->changeProgress:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public offset(II)V
    .locals 0

    .line 1189
    iput p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->offsetX:I

    .line 1190
    iput p2, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->offsetY:I

    return-void
.end method

.method public play()V
    .locals 2

    .line 1138
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v0, :cond_0

    .line 1139
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    .line 1140
    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1142
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->-$$Nest$mupdateAutoRepeat(Lorg/telegram/ui/Components/AnimatedEmojiDrawable;Lorg/telegram/messenger/ImageReceiver;)V

    .line 1143
    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->startAnimation()V

    :cond_0
    return-void
.end method

.method public removeOldDrawable()V
    .locals 3

    .line 1349
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->drawables:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    if-eqz v0, :cond_1

    .line 1350
    instance-of v2, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v2, :cond_0

    .line 1351
    check-cast v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->removeView(Lorg/telegram/ui/Components/AnimatedEmojiSpan$InvalidateHolder;)V

    .line 1353
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->drawables:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    aput-object v2, v0, v1

    :cond_1
    return-void
.end method

.method public resetAnimation()V
    .locals 3

    .line 1290
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->changeProgress:Lorg/telegram/ui/Components/AnimatedFloat;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    return-void
.end method

.method public set(Landroid/graphics/drawable/Drawable;Z)V
    .locals 4

    .line 1401
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->drawables:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_3

    .line 1405
    iget-object p2, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->changeProgress:Lorg/telegram/ui/Components/AnimatedFloat;

    const/4 v3, 0x0

    invoke-virtual {p2, v3, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    .line 1406
    iget-object p2, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->drawables:[Landroid/graphics/drawable/Drawable;

    aget-object p2, p2, v2

    if-eqz p2, :cond_2

    .line 1407
    iget-boolean v3, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->attached:Z

    if-eqz v3, :cond_1

    instance-of v3, p2, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v3, :cond_1

    .line 1408
    check-cast p2, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {p2, p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->removeView(Lorg/telegram/ui/Components/AnimatedEmojiSpan$InvalidateHolder;)V

    .line 1410
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->drawables:[Landroid/graphics/drawable/Drawable;

    aput-object v0, p2, v2

    .line 1412
    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->drawables:[Landroid/graphics/drawable/Drawable;

    aget-object v3, p2, v1

    aput-object v3, p2, v2

    .line 1413
    aput-object p1, p2, v1

    goto :goto_0

    .line 1415
    :cond_3
    iget-object p2, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->changeProgress:Lorg/telegram/ui/Components/AnimatedFloat;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p2, v3, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    .line 1416
    iget-boolean p2, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->attached:Z

    if-eqz p2, :cond_4

    .line 1418
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->detach()V

    .line 1420
    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->drawables:[Landroid/graphics/drawable/Drawable;

    aput-object p1, v2, v1

    if-eqz p2, :cond_5

    .line 1422
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->attach()V

    .line 1425
    :cond_5
    :goto_0
    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->lastColor:Ljava/lang/Integer;

    .line 1426
    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->colorFilter:Landroid/graphics/ColorFilter;

    .line 1427
    iput v1, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->colorFilterLastColor:I

    .line 1428
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->play()V

    .line 1429
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->invalidate()V

    return-void
.end method

.method public set(Lorg/telegram/tgnet/TLRPC$Document;IZ)V
    .locals 6

    .line 1358
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->drawables:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    instance-of v2, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    check-cast v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getDocumentId()J

    move-result-wide v2

    iget-wide v4, p1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x1

    if-eqz p3, :cond_5

    .line 1362
    iget-object p3, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->changeProgress:Lorg/telegram/ui/Components/AnimatedFloat;

    const/4 v3, 0x0

    invoke-virtual {p3, v3, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    .line 1363
    iget-object p3, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->drawables:[Landroid/graphics/drawable/Drawable;

    aget-object p3, p3, v2

    if-eqz p3, :cond_2

    .line 1364
    instance-of v3, p3, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v3, :cond_1

    .line 1365
    check-cast p3, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {p3, p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->removeView(Lorg/telegram/ui/Components/AnimatedEmojiSpan$InvalidateHolder;)V

    .line 1367
    :cond_1
    iget-object p3, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->drawables:[Landroid/graphics/drawable/Drawable;

    aput-object v0, p3, v2

    .line 1369
    :cond_2
    iget-object p3, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->drawables:[Landroid/graphics/drawable/Drawable;

    aget-object v3, p3, v1

    aput-object v3, p3, v2

    if-eqz p1, :cond_4

    .line 1371
    iget-object v2, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->account:Ljava/lang/Integer;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    :cond_3
    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    :goto_0
    invoke-static {v2, p2, p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->make(IILorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    move-result-object p1

    aput-object p1, p3, v1

    .line 1372
    iget-boolean p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->attached:Z

    if-eqz p1, :cond_9

    .line 1373
    iget-object p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->drawables:[Landroid/graphics/drawable/Drawable;

    aget-object p1, p1, v1

    check-cast p1, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {p1, p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->addView(Lorg/telegram/ui/Components/AnimatedEmojiSpan$InvalidateHolder;)V

    goto :goto_3

    .line 1376
    :cond_4
    aput-object v0, p3, v1

    goto :goto_3

    .line 1379
    :cond_5
    iget-object p3, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->changeProgress:Lorg/telegram/ui/Components/AnimatedFloat;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p3, v3, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    .line 1380
    iget-boolean p3, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->attached:Z

    if-eqz p3, :cond_6

    .line 1382
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->detach()V

    :cond_6
    if-eqz p1, :cond_8

    .line 1385
    iget-object v2, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->drawables:[Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->account:Ljava/lang/Integer;

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_1

    :cond_7
    sget v3, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    :goto_1
    invoke-static {v3, p2, p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->make(IILorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    move-result-object p1

    aput-object p1, v2, v1

    goto :goto_2

    .line 1387
    :cond_8
    iget-object p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->drawables:[Landroid/graphics/drawable/Drawable;

    aput-object v0, p1, v1

    :goto_2
    if-eqz p3, :cond_9

    .line 1390
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->attach()V

    .line 1393
    :cond_9
    :goto_3
    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->lastColor:Ljava/lang/Integer;

    .line 1394
    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->colorFilter:Landroid/graphics/ColorFilter;

    .line 1395
    iput v1, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->colorFilterLastColor:I

    .line 1396
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->play()V

    .line 1397
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->invalidate()V

    return-void
.end method

.method public set(Lorg/telegram/tgnet/TLRPC$Document;Z)V
    .locals 1

    .line 1345
    iget v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->cacheType:I

    invoke-virtual {p0, p1, v0, p2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(Lorg/telegram/tgnet/TLRPC$Document;IZ)V

    return-void
.end method

.method public set(JIZ)Z
    .locals 5

    .line 1309
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->drawables:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    instance-of v2, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v2, :cond_0

    check-cast v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getDocumentId()J

    move-result-wide v2

    cmp-long v0, v2, p1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x1

    if-eqz p4, :cond_4

    .line 1313
    iget-object p4, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->changeProgress:Lorg/telegram/ui/Components/AnimatedFloat;

    const/4 v3, 0x0

    invoke-virtual {p4, v3, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    .line 1314
    iget-object p4, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->drawables:[Landroid/graphics/drawable/Drawable;

    aget-object p4, p4, v2

    if-eqz p4, :cond_2

    .line 1315
    iget-boolean v3, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->attached:Z

    if-eqz v3, :cond_1

    instance-of v3, p4, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v3, :cond_1

    .line 1316
    check-cast p4, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {p4, p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->removeView(Lorg/telegram/ui/Components/AnimatedEmojiSpan$InvalidateHolder;)V

    .line 1318
    :cond_1
    iget-object p4, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->drawables:[Landroid/graphics/drawable/Drawable;

    aput-object v0, p4, v2

    .line 1320
    :cond_2
    iget-object p4, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->drawables:[Landroid/graphics/drawable/Drawable;

    aget-object v3, p4, v1

    aput-object v3, p4, v2

    .line 1321
    iget-object v3, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->account:Ljava/lang/Integer;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_0

    :cond_3
    sget v3, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    :goto_0
    invoke-static {v3, p3, p1, p2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->make(IIJ)Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    move-result-object p1

    aput-object p1, p4, v1

    .line 1322
    iget-boolean p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->attached:Z

    if-eqz p1, :cond_7

    .line 1323
    iget-object p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->drawables:[Landroid/graphics/drawable/Drawable;

    aget-object p1, p1, v1

    check-cast p1, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {p1, p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->addView(Lorg/telegram/ui/Components/AnimatedEmojiSpan$InvalidateHolder;)V

    goto :goto_2

    .line 1326
    :cond_4
    iget-object p4, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->changeProgress:Lorg/telegram/ui/Components/AnimatedFloat;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p4, v3, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    .line 1327
    iget-boolean p4, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->attached:Z

    if-eqz p4, :cond_5

    .line 1329
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->detach()V

    .line 1331
    :cond_5
    iget-object v3, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->drawables:[Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->account:Ljava/lang/Integer;

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_1

    :cond_6
    sget v4, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    :goto_1
    invoke-static {v4, p3, p1, p2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->make(IIJ)Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    move-result-object p1

    aput-object p1, v3, v1

    if-eqz p4, :cond_7

    .line 1333
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->attach()V

    .line 1336
    :cond_7
    :goto_2
    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->lastColor:Ljava/lang/Integer;

    .line 1337
    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->colorFilter:Landroid/graphics/ColorFilter;

    .line 1338
    iput v1, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->colorFilterLastColor:I

    .line 1339
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->play()V

    .line 1340
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->invalidate()V

    return v2
.end method

.method public set(JZ)Z
    .locals 1

    .line 1286
    iget v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->cacheType:I

    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(JIZ)Z

    move-result p1

    return p1
.end method

.method public setAlpha(I)V
    .locals 0

    .line 1470
    iput p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->alpha:I

    return-void
.end method

.method public setColor(Ljava/lang/Integer;)V
    .locals 2

    .line 1178
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->lastColor:Ljava/lang/Integer;

    if-nez v0, :cond_0

    if-eqz p1, :cond_2

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 1181
    :cond_1
    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->lastColor:Ljava/lang/Integer;

    if-eqz p1, :cond_3

    .line 1182
    iget v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->colorFilterLastColor:I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v0, v1, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    return-void

    :cond_3
    :goto_1
    if-eqz p1, :cond_4

    .line 1183
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->colorFilterLastColor:I

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, p1, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->colorFilter:Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public setCurrentAccount(I)V
    .locals 0

    .line 1128
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->account:Ljava/lang/Integer;

    return-void
.end method

.method public setParentView(Landroid/view/View;)V
    .locals 1

    .line 1132
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->changeProgress:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AnimatedFloat;->setParent(Landroid/view/View;)V

    .line 1133
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->particlesAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AnimatedFloat;->setParent(Landroid/view/View;)V

    .line 1134
    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->parentView:Landroid/view/View;

    return-void
.end method

.method public setParticles(ZZ)V
    .locals 1

    const/16 v0, 0x8

    .line 1151
    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->setParticles(ZZI)V

    return-void
.end method

.method public setParticles(ZZI)V
    .locals 1

    .line 1154
    iget-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->hasParticles:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-eqz p2, :cond_2

    .line 1156
    iget-object p2, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->particles:Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;

    if-nez p2, :cond_1

    .line 1157
    new-instance p2, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;

    invoke-direct {p2, v0, p3}, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;-><init>(II)V

    iput-object p2, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->particles:Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;

    .line 1159
    :cond_1
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->hasParticles:Z

    .line 1160
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->invalidate()V

    return-void

    .line 1162
    :cond_2
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->hasParticles:Z

    if-eqz p1, :cond_3

    .line 1163
    iget-object p2, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->particles:Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;

    if-nez p2, :cond_3

    .line 1164
    new-instance p2, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;

    invoke-direct {p2, v0, p3}, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;-><init>(II)V

    iput-object p2, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->particles:Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;

    goto :goto_0

    :cond_3
    if-nez p1, :cond_4

    .line 1165
    iget-object p2, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->particles:Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;

    if-eqz p2, :cond_4

    const/4 p2, 0x0

    .line 1166
    iput-object p2, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->particles:Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;

    .line 1168
    :cond_4
    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->particlesAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {p2, p1, v0}, Lorg/telegram/ui/Components/AnimatedFloat;->set(ZZ)F

    .line 1169
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->invalidate()V

    return-void
.end method

.method public setSecondParent(Landroid/view/View;)V
    .locals 0

    .line 1498
    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->secondParent:Landroid/view/View;

    return-void
.end method
