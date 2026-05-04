.class Lcom/exteragram/messenger/ai/ui/ResponseAlert$LoadingTextView;
.super Landroid/widget/TextView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/exteragram/messenger/ai/ui/ResponseAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoadingTextView"
.end annotation


# instance fields
.field private final loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

.field private final path:Lorg/telegram/ui/Components/LinkPath;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 471
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 467
    new-instance p1, Lorg/telegram/ui/Components/LinkPath;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lorg/telegram/ui/Components/LinkPath;-><init>(Z)V

    iput-object p1, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert$LoadingTextView;->path:Lorg/telegram/ui/Components/LinkPath;

    .line 468
    new-instance v0, Lorg/telegram/ui/Components/LoadingDrawable;

    invoke-direct {v0}, Lorg/telegram/ui/Components/LoadingDrawable;-><init>()V

    iput-object v0, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert$LoadingTextView;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    .line 472
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/LoadingDrawable;->usePath(Landroid/graphics/Path;)V

    const p1, 0x3f266666    # 0.65f

    .line 473
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/LoadingDrawable;->setSpeed(F)V

    const/high16 p1, 0x40800000    # 4.0f

    .line 474
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/LoadingDrawable;->setRadiiDp(F)V

    .line 475
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private updateDrawable()V
    .locals 5

    .line 490
    iget-object v0, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert$LoadingTextView;->path:Lorg/telegram/ui/Components/LinkPath;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert$LoadingTextView;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    if-nez v1, :cond_0

    goto :goto_0

    .line 494
    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/Components/CornerPath;->rewind()V

    .line 495
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 496
    iget-object v0, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert$LoadingTextView;->path:Lorg/telegram/ui/Components/LinkPath;

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Lorg/telegram/ui/Components/LinkPath;->setCurrentLayout(Landroid/text/Layout;IFF)V

    .line 497
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iget-object v2, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert$LoadingTextView;->path:Lorg/telegram/ui/Components/LinkPath;

    invoke-virtual {v0, v4, v1, v2}, Landroid/text/Layout;->getSelectionPath(IILandroid/graphics/Path;)V

    .line 499
    :cond_1
    iget-object v0, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert$LoadingTextView;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/LoadingDrawable;->updateBounds()V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 1

    .line 516
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 517
    iget-object v0, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert$LoadingTextView;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/LoadingDrawable;->reset()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 510
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 511
    invoke-direct {p0}, Lcom/exteragram/messenger/ai/ui/ResponseAlert$LoadingTextView;->updateDrawable()V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 0

    .line 504
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 505
    invoke-direct {p0}, Lcom/exteragram/messenger/ai/ui/ResponseAlert$LoadingTextView;->updateDrawable()V

    return-void
.end method

.method public setTextColor(I)V
    .locals 5

    const v0, 0x3e4ccccd    # 0.2f

    .line 480
    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v1

    invoke-super {p0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 481
    iget-object v1, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert$LoadingTextView;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    const v2, 0x3cf5c28f    # 0.03f

    .line 482
    invoke-static {p1, v2}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v2

    const v3, 0x3e333333    # 0.175f

    .line 483
    invoke-static {p1, v3}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v3

    .line 484
    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v0

    const v4, 0x3ee66666    # 0.45f

    .line 485
    invoke-static {p1, v4}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result p1

    .line 481
    invoke-virtual {v1, v2, v3, v0, p1}, Lorg/telegram/ui/Components/LoadingDrawable;->setColors(IIII)V

    return-void
.end method
