.class public Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private isLiquidGlassEffectAllowed:Z

.field private linkedViews:Lme/vkryl/core/reference/ReferenceList;

.field private parent:Landroid/view/ViewGroup;

.field private final source:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSource;

.field private viewPositionWatcher:Lorg/telegram/ui/Components/chat/ViewPositionWatcher;


# direct methods
.method public static synthetic $r8$lambda$KlkDkPNqm1NlPxDBLpOPdS98yZM(Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;Landroid/view/View;Landroid/view/View;Landroid/graphics/RectF;)V
    .locals 0

    .line 73
    iget p2, p3, Landroid/graphics/RectF;->left:F

    iget p3, p3, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0, p2, p3}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->setSourceOffset(FF)V

    .line 74
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSource;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;->source:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSource;

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/chat/ViewPositionWatcher;Landroid/view/ViewGroup;Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSource;)V
    .locals 0

    .line 26
    invoke-direct {p0, p3}, Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;-><init>(Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSource;)V

    .line 27
    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;->setSourceRootView(Lorg/telegram/ui/Components/chat/ViewPositionWatcher;Landroid/view/ViewGroup;)V

    return-void
.end method


# virtual methods
.method public create(Landroid/view/View;)Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;
    .locals 1

    const/4 v0, 0x0

    .line 54
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;->create(Landroid/view/View;Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProvider;)Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    move-result-object p1

    return-object p1
.end method

.method public create(Landroid/view/View;Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProvider;)Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;
    .locals 3

    .line 58
    iget-object v0, p0, Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;->source:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSource;

    invoke-interface {v0}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSource;->createDrawable()Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    move-result-object v0

    .line 59
    iget-boolean v1, p0, Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;->isLiquidGlassEffectAllowed:Z

    if-eqz v1, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-lt v1, v2, :cond_0

    .line 60
    instance-of v1, v0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawableRenderNode;

    if-eqz v1, :cond_0

    .line 61
    move-object v1, v0

    check-cast v1, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawableRenderNode;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawableRenderNode;->setLiquidGlassEffectAllowed()V

    .line 65
    :cond_0
    invoke-virtual {v0, p2}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->setColorProvider(Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProvider;)Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    .line 67
    iget-object p2, p0, Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;->linkedViews:Lme/vkryl/core/reference/ReferenceList;

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    .line 68
    invoke-virtual {p2, p1}, Lme/vkryl/core/reference/ReferenceList;->add(Ljava/lang/Object;)Z

    .line 71
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;->viewPositionWatcher:Lorg/telegram/ui/Components/chat/ViewPositionWatcher;

    if-eqz p2, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;->parent:Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    .line 72
    new-instance v2, Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, p1}, Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;Landroid/view/View;)V

    invoke-virtual {p2, p1, v1, v2}, Lorg/telegram/ui/Components/chat/ViewPositionWatcher;->subscribe(Landroid/view/View;Landroid/view/ViewGroup;Lorg/telegram/ui/Components/chat/ViewPositionWatcher$OnChangedListener;)V

    :cond_2
    return-object v0
.end method

.method public setLinkedViewsRef(Lme/vkryl/core/reference/ReferenceList;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;->linkedViews:Lme/vkryl/core/reference/ReferenceList;

    return-void
.end method

.method public setLiquidGlassEffectAllowed(Z)V
    .locals 0

    .line 46
    iput-boolean p1, p0, Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;->isLiquidGlassEffectAllowed:Z

    return-void
.end method

.method public setSourceRootView(Lorg/telegram/ui/Components/chat/ViewPositionWatcher;Landroid/view/ViewGroup;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;->viewPositionWatcher:Lorg/telegram/ui/Components/chat/ViewPositionWatcher;

    .line 32
    iput-object p2, p0, Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;->parent:Landroid/view/ViewGroup;

    return-void
.end method
