.class public abstract Lorg/telegram/ui/Cells/BaseCell;
.super Landroid/view/ViewGroup;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/SizeNotifierFrameLayout$IViewWithInvalidateCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Cells/BaseCell$CheckForLongPress;,
        Lorg/telegram/ui/Cells/BaseCell$CheckForTap;,
        Lorg/telegram/ui/Cells/BaseCell$RippleDrawableSafe;
    }
.end annotation


# instance fields
.field private cachingBottom:Z

.field private cachingTop:Z

.field private checkingForLongPress:Z

.field private forceNotCacheNextFrame:Z

.field protected invalidateCallback:Ljava/lang/Runnable;

.field private pendingCheckForLongPress:Lorg/telegram/ui/Cells/BaseCell$CheckForLongPress;

.field private pendingCheckForTap:Lorg/telegram/ui/Cells/BaseCell$CheckForTap;

.field private pressCount:I

.field private renderNode:Landroid/graphics/RenderNode;

.field protected updatedContent:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetcheckingForLongPress(Lorg/telegram/ui/Cells/BaseCell;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Cells/BaseCell;->checkingForLongPress:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetpendingCheckForLongPress(Lorg/telegram/ui/Cells/BaseCell;)Lorg/telegram/ui/Cells/BaseCell$CheckForLongPress;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Cells/BaseCell;->pendingCheckForLongPress:Lorg/telegram/ui/Cells/BaseCell$CheckForLongPress;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpressCount(Lorg/telegram/ui/Cells/BaseCell;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Cells/BaseCell;->pressCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputcheckingForLongPress(Lorg/telegram/ui/Cells/BaseCell;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/BaseCell;->checkingForLongPress:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputpendingCheckForLongPress(Lorg/telegram/ui/Cells/BaseCell;Lorg/telegram/ui/Cells/BaseCell$CheckForLongPress;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Cells/BaseCell;->pendingCheckForLongPress:Lorg/telegram/ui/Cells/BaseCell$CheckForLongPress;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputpressCount(Lorg/telegram/ui/Cells/BaseCell;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Cells/BaseCell;->pressCount:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 67
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 61
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/BaseCell;->checkingForLongPress:Z

    const/4 v0, 0x0

    .line 62
    iput-object v0, p0, Lorg/telegram/ui/Cells/BaseCell;->pendingCheckForLongPress:Lorg/telegram/ui/Cells/BaseCell$CheckForLongPress;

    .line 63
    iput p1, p0, Lorg/telegram/ui/Cells/BaseCell;->pressCount:I

    .line 64
    iput-object v0, p0, Lorg/telegram/ui/Cells/BaseCell;->pendingCheckForTap:Lorg/telegram/ui/Cells/BaseCell$CheckForTap;

    .line 68
    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    const/4 p1, 0x1

    .line 69
    invoke-virtual {p0, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 70
    invoke-virtual {p0, p1}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    return-void
.end method

.method public static setDrawableBounds(Landroid/graphics/drawable/Drawable;FFF)F
    .locals 2

    .line 82
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p3

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-int p1, p1

    float-to-int p2, p2

    float-to-int v1, v0

    float-to-int p3, p3

    .line 83
    invoke-static {p0, p1, p2, v1, p3}, Lorg/telegram/ui/Cells/BaseCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;IIII)V

    return v0
.end method

.method public static setDrawableBounds(Landroid/graphics/drawable/Drawable;FF)V
    .locals 2

    float-to-int p1, p1

    float-to-int p2, p2

    .line 78
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-static {p0, p1, p2, v0, v1}, Lorg/telegram/ui/Cells/BaseCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;IIII)V

    return-void
.end method

.method public static setDrawableBounds(Landroid/graphics/drawable/Drawable;FFII)V
    .locals 0

    if-eqz p0, :cond_0

    float-to-int p1, p1

    float-to-int p2, p2

    add-int/2addr p3, p1

    add-int/2addr p4, p2

    .line 95
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    return-void
.end method

.method public static setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V
    .locals 2

    .line 74
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-static {p0, p1, p2, v0, v1}, Lorg/telegram/ui/Cells/BaseCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;IIII)V

    return-void
.end method

.method public static setDrawableBounds(Landroid/graphics/drawable/Drawable;IIII)V
    .locals 0

    if-eqz p0, :cond_0

    add-int/2addr p3, p1

    add-int/2addr p4, p2

    .line 89
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected allowCaching()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected cancelCheckLongPress()V
    .locals 1

    const/4 v0, 0x0

    .line 111
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/BaseCell;->checkingForLongPress:Z

    .line 112
    iget-object v0, p0, Lorg/telegram/ui/Cells/BaseCell;->pendingCheckForLongPress:Lorg/telegram/ui/Cells/BaseCell$CheckForLongPress;

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 115
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/BaseCell;->pendingCheckForTap:Lorg/telegram/ui/Cells/BaseCell$CheckForTap;

    if-eqz v0, :cond_1

    .line 116
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 180
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/BaseCell;->cachingTop:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/BaseCell;->cachingBottom:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->useNewBlur:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/BaseCell;->allowCaching()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 181
    :goto_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1d

    if-lt v3, v4, :cond_4

    iget-object v5, p0, Lorg/telegram/ui/Cells/BaseCell;->renderNode:Landroid/graphics/RenderNode;

    if-eqz v5, :cond_2

    move v5, v1

    goto :goto_1

    :cond_2
    move v5, v2

    :goto_1
    if-eq v0, v5, :cond_4

    if-eqz v0, :cond_3

    .line 183
    const-string v0, "basecell"

    invoke-static {v0}, Lorg/telegram/messenger/BotFullscreenButtons$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/String;)Landroid/graphics/RenderNode;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Cells/BaseCell;->renderNode:Landroid/graphics/RenderNode;

    .line 184
    invoke-virtual {v0, v2}, Landroid/graphics/RenderNode;->setClipToBounds(Z)Z

    .line 185
    iput-boolean v1, p0, Lorg/telegram/ui/Cells/BaseCell;->updatedContent:Z

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    .line 187
    iput-object v0, p0, Lorg/telegram/ui/Cells/BaseCell;->renderNode:Landroid/graphics/RenderNode;

    :cond_4
    :goto_2
    if-lt v3, v4, :cond_5

    .line 190
    iget-object v0, p0, Lorg/telegram/ui/Cells/BaseCell;->renderNode:Landroid/graphics/RenderNode;

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/BaseCell;->forceNotCacheNextFrame:Z

    if-nez v0, :cond_5

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 191
    iget-object v0, p0, Lorg/telegram/ui/Cells/BaseCell;->renderNode:Landroid/graphics/RenderNode;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {v0, v2, v2, v1, v3}, Landroid/graphics/RenderNode;->setPosition(IIII)Z

    .line 192
    iget-object v0, p0, Lorg/telegram/ui/Cells/BaseCell;->renderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v0}, Landroid/graphics/RenderNode;->beginRecording()Landroid/graphics/RecordingCanvas;

    move-result-object v0

    .line 193
    invoke-super {p0, v0}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 194
    iget-object v0, p0, Lorg/telegram/ui/Cells/BaseCell;->renderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v0}, Landroid/graphics/RenderNode;->endRecording()V

    .line 195
    iget-object v0, p0, Lorg/telegram/ui/Cells/BaseCell;->renderNode:Landroid/graphics/RenderNode;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawRenderNode(Landroid/graphics/RenderNode;)V

    goto :goto_3

    .line 197
    :cond_5
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 199
    :goto_3
    iput-boolean v2, p0, Lorg/telegram/ui/Cells/BaseCell;->forceNotCacheNextFrame:Z

    .line 200
    iput-boolean v2, p0, Lorg/telegram/ui/Cells/BaseCell;->updatedContent:Z

    return-void
.end method

.method public forceNotCacheNextFrame()V
    .locals 1

    const/4 v0, 0x1

    .line 166
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/BaseCell;->forceNotCacheNextFrame:Z

    return-void
.end method

.method public getBoundsLeft()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBoundsRight()I
    .locals 1

    .line 134
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public invalidate()V
    .locals 1

    .line 148
    iget-object v0, p0, Lorg/telegram/ui/Cells/BaseCell;->invalidateCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 149
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 151
    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public invalidateLite()V
    .locals 0

    .line 144
    invoke-super {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public listenInvalidate(Ljava/lang/Runnable;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lorg/telegram/ui/Cells/BaseCell;->invalidateCallback:Ljava/lang/Runnable;

    return-void
.end method

.method protected onLongPress()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected startCheckLongPress()V
    .locals 3

    .line 100
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/BaseCell;->checkingForLongPress:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 103
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/BaseCell;->checkingForLongPress:Z

    .line 104
    iget-object v0, p0, Lorg/telegram/ui/Cells/BaseCell;->pendingCheckForTap:Lorg/telegram/ui/Cells/BaseCell$CheckForTap;

    if-nez v0, :cond_1

    .line 105
    new-instance v0, Lorg/telegram/ui/Cells/BaseCell$CheckForTap;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Cells/BaseCell$CheckForTap;-><init>(Lorg/telegram/ui/Cells/BaseCell;Lorg/telegram/ui/Cells/BaseCell-IA;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/BaseCell;->pendingCheckForTap:Lorg/telegram/ui/Cells/BaseCell$CheckForTap;

    .line 107
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Cells/BaseCell;->pendingCheckForTap:Lorg/telegram/ui/Cells/BaseCell$CheckForTap;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
