.class public Lorg/telegram/ui/Components/StarRatingView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/StarRatingView$Colors;,
        Lorg/telegram/ui/Components/StarRatingView$Delegate;
    }
.end annotation


# instance fields
.field private final colors:Lorg/telegram/ui/Components/StarRatingView$Colors;

.field private delegate:Lorg/telegram/ui/Components/StarRatingView$Delegate;

.field private final drawable:Lorg/telegram/ui/Components/BadgeLevelDrawable;

.field private isVisible:Z

.field private final isVisibleAnimator:Lorg/telegram/ui/Components/AnimatedFloat;

.field private isVisibleExternal:Z

.field private isVisibleInternal:Z


# direct methods
.method public static synthetic $r8$lambda$DgR0_0vkWpPLzR31oYUi4CXSreY(Lorg/telegram/ui/Components/StarRatingView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/StarRatingView;->lambda$onUpdateVisibilityFactor$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$tf0AziSWudVxZK9-wReoCn9zmMo(Lorg/telegram/ui/Components/StarRatingView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/StarRatingView;->onUpdateVisibilityFactor()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 29
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 21
    new-instance v0, Lorg/telegram/ui/Components/StarRatingView$Colors;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/StarRatingView$Colors;-><init>(Lorg/telegram/ui/Components/StarRatingView-IA;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/StarRatingView;->colors:Lorg/telegram/ui/Components/StarRatingView$Colors;

    .line 23
    new-instance v0, Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance v1, Lorg/telegram/ui/Components/StarRatingView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/StarRatingView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/StarRatingView;)V

    const-wide/16 v2, 0x17c

    sget-object v4, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Ljava/lang/Runnable;JLandroid/animation/TimeInterpolator;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/StarRatingView;->isVisibleAnimator:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 31
    new-instance v1, Lorg/telegram/ui/Components/BadgeLevelDrawable;

    invoke-direct {v1, p1}, Lorg/telegram/ui/Components/BadgeLevelDrawable;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/StarRatingView;->drawable:Lorg/telegram/ui/Components/BadgeLevelDrawable;

    .line 32
    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    const/4 p1, 0x0

    .line 33
    iput-boolean p1, p0, Lorg/telegram/ui/Components/StarRatingView;->isVisible:Z

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    .line 35
    invoke-direct {p0}, Lorg/telegram/ui/Components/StarRatingView;->checkVisibility()V

    return-void
.end method

.method private checkVisibility()V
    .locals 2

    .line 75
    iget-boolean v0, p0, Lorg/telegram/ui/Components/StarRatingView;->isVisibleExternal:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/StarRatingView;->isVisibleInternal:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/ui/Components/StarRatingView;->isVisible:Z

    .line 76
    iget-object v1, p0, Lorg/telegram/ui/Components/StarRatingView;->isVisibleAnimator:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    .line 78
    iget-boolean v0, p0, Lorg/telegram/ui/Components/StarRatingView;->isVisible:Z

    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 79
    iget-boolean v0, p0, Lorg/telegram/ui/Components/StarRatingView;->isVisible:Z

    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    .line 80
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public static getTabsViewBackgroundColor(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;II)I
    .locals 1

    const/high16 v0, 0x3f400000    # 0.75f

    .line 179
    invoke-static {p1, p2, v0}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p1

    .line 180
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result p2

    const v0, 0x3f389375    # 0.721f

    cmpl-float p2, p2, v0

    if-lez p2, :cond_0

    .line 183
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueIcon:I

    invoke-static {p1, p0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p0

    return p0

    :cond_0
    const p0, 0x3da3d70a    # 0.08f

    const p2, -0x425c28f6    # -0.08f

    .line 184
    invoke-static {p1, p0, p2}, Lorg/telegram/ui/ActionBar/Theme;->adaptHSV(IFF)I

    move-result p0

    return p0
.end method

.method private synthetic lambda$onUpdateVisibilityFactor$0()V
    .locals 2

    .line 117
    iget-object v0, p0, Lorg/telegram/ui/Components/StarRatingView;->delegate:Lorg/telegram/ui/Components/StarRatingView$Delegate;

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {p0}, Lorg/telegram/ui/Components/StarRatingView;->getVisibilityFactor()F

    move-result v1

    invoke-interface {v0, v1}, Lorg/telegram/ui/Components/StarRatingView$Delegate;->onUpdateState(F)V

    :cond_0
    return-void
.end method

.method private onUpdateVisibilityFactor()V
    .locals 1

    .line 115
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 116
    new-instance v0, Lorg/telegram/ui/Components/StarRatingView$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/StarRatingView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/StarRatingView;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public getVisibilityFactor()F
    .locals 1

    .line 124
    iget-object v0, p0, Lorg/telegram/ui/Components/StarRatingView;->isVisibleAnimator:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 104
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 105
    iget-object v0, p0, Lorg/telegram/ui/Components/StarRatingView;->drawable:Lorg/telegram/ui/Components/BadgeLevelDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BadgeLevelDrawable;->debugUpdateStart()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 110
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 111
    iget-object v0, p0, Lorg/telegram/ui/Components/StarRatingView;->drawable:Lorg/telegram/ui/Components/BadgeLevelDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BadgeLevelDrawable;->debugUpdateStop()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 85
    iget-object v0, p0, Lorg/telegram/ui/Components/StarRatingView;->isVisibleAnimator:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v1, p0, Lorg/telegram/ui/Components/StarRatingView;->isVisible:Z

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v0

    .line 86
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    const/high16 v2, 0x41c00000    # 24.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    .line 87
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    .line 89
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v1, v1

    int-to-float v3, v3

    .line 90
    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v1, 0x41400000    # 12.0f

    .line 91
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v0, v3, v1}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 93
    iget-object v0, p0, Lorg/telegram/ui/Components/StarRatingView;->drawable:Lorg/telegram/ui/Components/BadgeLevelDrawable;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 94
    iget-object v0, p0, Lorg/telegram/ui/Components/StarRatingView;->drawable:Lorg/telegram/ui/Components/BadgeLevelDrawable;

    iget-object v1, p0, Lorg/telegram/ui/Components/StarRatingView;->colors:Lorg/telegram/ui/Components/StarRatingView$Colors;

    iget v1, v1, Lorg/telegram/ui/Components/StarRatingView$Colors;->backgroundColor:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BadgeLevelDrawable;->setOuterColor(I)V

    .line 95
    iget-object v0, p0, Lorg/telegram/ui/Components/StarRatingView;->drawable:Lorg/telegram/ui/Components/BadgeLevelDrawable;

    iget-object v1, p0, Lorg/telegram/ui/Components/StarRatingView;->colors:Lorg/telegram/ui/Components/StarRatingView$Colors;

    iget v1, v1, Lorg/telegram/ui/Components/StarRatingView$Colors;->fillingColor:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BadgeLevelDrawable;->setInnerColor(I)V

    .line 96
    iget-object v0, p0, Lorg/telegram/ui/Components/StarRatingView;->drawable:Lorg/telegram/ui/Components/BadgeLevelDrawable;

    iget-object v1, p0, Lorg/telegram/ui/Components/StarRatingView;->colors:Lorg/telegram/ui/Components/StarRatingView$Colors;

    iget v1, v1, Lorg/telegram/ui/Components/StarRatingView$Colors;->backgroundColor:I

    const/high16 v2, -0x1000000

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BadgeLevelDrawable;->setTextColor(I)V

    .line 97
    iget-object v0, p0, Lorg/telegram/ui/Components/StarRatingView;->drawable:Lorg/telegram/ui/Components/BadgeLevelDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/BadgeLevelDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 99
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public set(Lorg/telegram/tgnet/tl/TL_stars$Tl_starsRating;)V
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 56
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/ui/Components/StarRatingView;->isVisibleInternal:Z

    .line 57
    invoke-direct {p0}, Lorg/telegram/ui/Components/StarRatingView;->checkVisibility()V

    if-nez p1, :cond_1

    return-void

    .line 62
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/StarRatingView;->drawable:Lorg/telegram/ui/Components/BadgeLevelDrawable;

    iget p1, p1, Lorg/telegram/tgnet/tl/TL_stars$Tl_starsRating;->level:I

    invoke-virtual {v1, p1, v0}, Lorg/telegram/ui/Components/BadgeLevelDrawable;->setBadgeLevel(IZ)V

    .line 63
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Components/StarRatingView$Delegate;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lorg/telegram/ui/Components/StarRatingView;->delegate:Lorg/telegram/ui/Components/StarRatingView$Delegate;

    return-void
.end method

.method public setParentExpanded(F)V
    .locals 1

    .line 136
    iget-object v0, p0, Lorg/telegram/ui/Components/StarRatingView;->colors:Lorg/telegram/ui/Components/StarRatingView$Colors;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/StarRatingView$Colors;->setParentExpanded(F)V

    .line 137
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setResourcesProvider(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 1

    .line 39
    iget-object v0, p0, Lorg/telegram/ui/Components/StarRatingView;->colors:Lorg/telegram/ui/Components/StarRatingView$Colors;

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/StarRatingView$Colors;->-$$Nest$fputresourcesProvider(Lorg/telegram/ui/Components/StarRatingView$Colors;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public setVisibility(Z)V
    .locals 0

    .line 70
    iput-boolean p1, p0, Lorg/telegram/ui/Components/StarRatingView;->isVisibleExternal:Z

    .line 71
    invoke-direct {p0}, Lorg/telegram/ui/Components/StarRatingView;->checkVisibility()V

    return-void
.end method

.method public updateColors(Lorg/telegram/messenger/MessagesController$PeerColor;)V
    .locals 1

    .line 131
    iget-object v0, p0, Lorg/telegram/ui/Components/StarRatingView;->colors:Lorg/telegram/ui/Components/StarRatingView$Colors;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/StarRatingView$Colors;->update(Lorg/telegram/messenger/MessagesController$PeerColor;)V

    .line 132
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 44
    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/StarRatingView;->drawable:Lorg/telegram/ui/Components/BadgeLevelDrawable;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
