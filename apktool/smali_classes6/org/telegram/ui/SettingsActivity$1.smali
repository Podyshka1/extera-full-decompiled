.class Lorg/telegram/ui/SettingsActivity$1;
.super Lorg/telegram/ui/Components/SizeNotifierFrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/SettingsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/SettingsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/SettingsActivity;Landroid/content/Context;)V
    .locals 0

    .line 271
    iput-object p1, p0, Lorg/telegram/ui/SettingsActivity$1;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 274
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity$1;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SettingsActivity;->-$$Nest$fgetscrollableViewNoiseSuppressor(Lorg/telegram/ui/SettingsActivity;)Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 275
    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity$1;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SettingsActivity;->-$$Nest$mblur3_InvalidateBlur(Lorg/telegram/ui/SettingsActivity;)V

    .line 277
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 278
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 279
    iget-object v2, p0, Lorg/telegram/ui/SettingsActivity$1;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/SettingsActivity;->-$$Nest$fgetiBlur3SourceGlassFrosted(Lorg/telegram/ui/SettingsActivity;)Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/SettingsActivity$1;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/SettingsActivity;->-$$Nest$fgetiBlur3SourceGlassFrosted(Lorg/telegram/ui/SettingsActivity;)Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;->inRecording()Z

    move-result v2

    if-nez v2, :cond_1

    .line 281
    iget-object v2, p0, Lorg/telegram/ui/SettingsActivity$1;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/SettingsActivity;->-$$Nest$fgetiBlur3SourceGlassFrosted(Lorg/telegram/ui/SettingsActivity;)Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;->beginRecording(II)Landroid/graphics/RecordingCanvas;

    move-result-object v2

    .line 282
    iget-object v3, p0, Lorg/telegram/ui/SettingsActivity$1;->this$0:Lorg/telegram/ui/SettingsActivity;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 283
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->chatBlurEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 284
    iget-object v3, p0, Lorg/telegram/ui/SettingsActivity$1;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/SettingsActivity;->-$$Nest$fgetscrollableViewNoiseSuppressor(Lorg/telegram/ui/SettingsActivity;)Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;

    move-result-object v3

    const/4 v4, -0x3

    invoke-virtual {v3, v2, v4}, Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;->draw(Landroid/graphics/Canvas;I)V

    .line 286
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/SettingsActivity$1;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/SettingsActivity;->-$$Nest$fgetiBlur3SourceGlassFrosted(Lorg/telegram/ui/SettingsActivity;)Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;->endRecording()V

    .line 289
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/SettingsActivity$1;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/SettingsActivity;->-$$Nest$fgetiBlur3SourceGlass(Lorg/telegram/ui/SettingsActivity;)Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/SettingsActivity$1;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/SettingsActivity;->-$$Nest$fgetiBlur3SourceGlass(Lorg/telegram/ui/SettingsActivity;)Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;->inRecording()Z

    move-result v2

    if-nez v2, :cond_3

    .line 291
    iget-object v2, p0, Lorg/telegram/ui/SettingsActivity$1;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/SettingsActivity;->-$$Nest$fgetiBlur3SourceGlass(Lorg/telegram/ui/SettingsActivity;)Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;->beginRecording(II)Landroid/graphics/RecordingCanvas;

    move-result-object v0

    .line 292
    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$1;->this$0:Lorg/telegram/ui/SettingsActivity;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 293
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->chatBlurEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 294
    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$1;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->-$$Nest$fgetscrollableViewNoiseSuppressor(Lorg/telegram/ui/SettingsActivity;)Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;

    move-result-object v1

    const/4 v2, -0x2

    invoke-virtual {v1, v0, v2}, Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;->draw(Landroid/graphics/Canvas;I)V

    .line 296
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity$1;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SettingsActivity;->-$$Nest$fgetiBlur3SourceGlass(Lorg/telegram/ui/SettingsActivity;)Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;->endRecording()V

    .line 299
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity$1;->this$0:Lorg/telegram/ui/SettingsActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/SettingsActivity;->-$$Nest$fputiBlur3Invalidated(Lorg/telegram/ui/SettingsActivity;Z)V

    .line 301
    :cond_4
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 302
    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity$1;->this$0:Lorg/telegram/ui/SettingsActivity;

    iget-boolean v1, v0, Lorg/telegram/ui/SettingsActivity;->hasMainTabs:Z

    if-nez v1, :cond_5

    .line 303
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$1;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->-$$Nest$fgetnavigationBarHeight(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    invoke-static {p1, p0, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->drawNavigationBarProtection(Landroid/graphics/Canvas;Landroid/view/View;II)V

    :cond_5
    return-void
.end method

.method public drawBlurRect(Landroid/graphics/Canvas;FLandroid/graphics/Rect;Landroid/graphics/Paint;Z)V
    .locals 6

    .line 309
    sget p5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    if-lt p5, v0, :cond_0

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->chatBlurEnabled()Z

    move-result p5

    if-eqz p5, :cond_0

    iget-object p5, p0, Lorg/telegram/ui/SettingsActivity$1;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {p5}, Lorg/telegram/ui/SettingsActivity;->-$$Nest$fgetiBlur3SourceGlassFrosted(Lorg/telegram/ui/SettingsActivity;)Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    move-result-object p5

    if-nez p5, :cond_1

    :cond_0
    move-object v1, p1

    goto :goto_0

    .line 314
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/4 p5, 0x0

    neg-float v0, p2

    .line 315
    invoke-virtual {p1, p5, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 316
    iget-object p5, p0, Lorg/telegram/ui/SettingsActivity$1;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {p5}, Lorg/telegram/ui/SettingsActivity;->-$$Nest$fgetiBlur3SourceGlassFrosted(Lorg/telegram/ui/SettingsActivity;)Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    move-result-object v0

    iget p5, p3, Landroid/graphics/Rect;->left:I

    int-to-float v2, p5

    iget p5, p3, Landroid/graphics/Rect;->top:I

    int-to-float p5, p5

    add-float v3, p5, p2

    iget p5, p3, Landroid/graphics/Rect;->right:I

    int-to-float v4, p5

    iget p5, p3, Landroid/graphics/Rect;->bottom:I

    int-to-float p5, p5

    add-float v5, p5, p2

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;->draw(Landroid/graphics/Canvas;FFFF)V

    .line 317
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 319
    invoke-virtual {p4}, Landroid/graphics/Paint;->getAlpha()I

    move-result p1

    const/16 p2, 0xb2

    .line 320
    invoke-virtual {p4, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 321
    invoke-virtual {v1, p3, p4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 322
    invoke-virtual {p4, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void

    .line 310
    :goto_0
    invoke-virtual {v1, p3, p4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method public updateColors()V
    .locals 1

    .line 327
    invoke-super {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->updateColors()V

    .line 328
    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity$1;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/SettingsActivity;->updateColors()V

    return-void
.end method
