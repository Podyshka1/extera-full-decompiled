.class public Lorg/telegram/ui/LoginActivity$LoadingTextView;
.super Landroid/widget/TextView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/LoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LoadingTextView"
.end annotation


# instance fields
.field public final loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

.field private final rippleDrawable:Landroid/graphics/drawable/Drawable;

.field final synthetic this$0:Lorg/telegram/ui/LoginActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;)V
    .locals 0

    .line 5217
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$LoadingTextView;->this$0:Lorg/telegram/ui/LoginActivity;

    .line 5218
    invoke-direct {p0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 5214
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteValueText:I

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p1

    const p2, 0x3dcccccd    # 0.1f

    invoke-static {p1, p2}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result p1

    const/4 p2, 0x7

    invoke-static {p1, p2}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$LoadingTextView;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    .line 5215
    new-instance p2, Lorg/telegram/ui/Components/LoadingDrawable;

    invoke-direct {p2}, Lorg/telegram/ui/Components/LoadingDrawable;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/LoginActivity$LoadingTextView;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    .line 5219
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    const/4 p1, 0x1

    .line 5220
    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/LoadingDrawable;->setAppearByGradient(Z)V

    const p1, 0x3f4ccccd    # 0.8f

    .line 5221
    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/LoadingDrawable;->setSpeed(F)V

    return-void
.end method

.method private updateLoadingLayout()V
    .locals 7

    .line 5239
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 5243
    :cond_0
    invoke-virtual {v0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_1

    :goto_0
    return-void

    .line 5247
    :cond_1
    new-instance v2, Lorg/telegram/ui/Components/LinkPath;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lorg/telegram/ui/Components/LinkPath;-><init>(Z)V

    const/high16 v3, 0x40400000    # 3.0f

    .line 5248
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40c00000    # 6.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v2, v3, v5}, Lorg/telegram/ui/Components/LinkPath;->setInset(FF)V

    .line 5250
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 5251
    invoke-virtual {v2, v0, v5, v3}, Lorg/telegram/ui/Components/LinkPath;->setCurrentLayout(Landroid/text/Layout;IF)V

    .line 5252
    invoke-virtual {v0, v5, v1, v2}, Landroid/text/Layout;->getSelectionPath(IILandroid/graphics/Path;)V

    .line 5253
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/LinkPath;->getBounds(Landroid/graphics/RectF;)V

    .line 5254
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoadingTextView;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    iget v3, v0, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    iget v5, v0, Landroid/graphics/RectF;->top:F

    float-to-int v5, v5

    iget v6, v0, Landroid/graphics/RectF;->right:F

    float-to-int v6, v6

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v0, v0

    invoke-virtual {v1, v3, v5, v6, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 5255
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoadingTextView;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/LoadingDrawable;->usePath(Landroid/graphics/Path;)V

    .line 5256
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoadingTextView;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/LoadingDrawable;->setRadiiDp(F)V

    .line 5258
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoadingTextView;->this$0:Lorg/telegram/ui/LoginActivity;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_linkSelectBackground:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v0

    .line 5259
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoadingTextView;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    const v2, 0x3f59999a    # 0.85f

    .line 5260
    invoke-static {v0, v2}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    .line 5261
    invoke-static {v0, v3}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v3

    const/high16 v5, 0x40600000    # 3.5f

    .line 5262
    invoke-static {v0, v5}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v5

    .line 5263
    invoke-static {v0, v4}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v0

    .line 5259
    invoke-virtual {v1, v2, v3, v5, v0}, Lorg/telegram/ui/Components/LoadingDrawable;->setColors(IIII)V

    .line 5266
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoadingTextView;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/LoadingDrawable;->updateBounds()V

    return-void
.end method


# virtual methods
.method protected isResendingCode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected isRippleEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 5275
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 5276
    invoke-virtual {p0}, Landroid/widget/TextView;->getGravity()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    int-to-float v0, v0

    .line 5277
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5278
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoadingTextView;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 5279
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 5281
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 5283
    invoke-virtual {p0}, Lorg/telegram/ui/LoginActivity$LoadingTextView;->isResendingCode()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoadingTextView;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/LoadingDrawable;->isDisappearing()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    return-void

    .line 5284
    :cond_2
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 5285
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5286
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoadingTextView;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/LoadingDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 5287
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 5288
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 5233
    invoke-super/range {p0 .. p5}, Landroid/widget/TextView;->onLayout(ZIIII)V

    .line 5235
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoadingTextView;->updateLoadingLayout()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 5299
    invoke-virtual {p0}, Lorg/telegram/ui/LoginActivity$LoadingTextView;->isRippleEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 5300
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoadingTextView;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 5301
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoadingTextView;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    const v1, 0x101009e

    const v2, 0x10100a7

    filled-new-array {v1, v2}, [I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0

    .line 5302
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 5303
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoadingTextView;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    new-array v1, v1, [I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 5305
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 0

    .line 5226
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 5228
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoadingTextView;->updateLoadingLayout()V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 5294
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoadingTextView;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/TextView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
