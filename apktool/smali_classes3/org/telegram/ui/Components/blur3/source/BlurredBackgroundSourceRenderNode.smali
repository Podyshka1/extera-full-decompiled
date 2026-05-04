.class public Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSource;


# instance fields
.field private final drawables:Lme/vkryl/core/reference/ReferenceList;

.field private final fallbackSource:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSource;

.field private inRecording:Z

.field private onDrawablesRelativePositionChangeListener:Ljava/lang/Runnable;

.field private recordingCanvas:Landroid/graphics/RecordingCanvas;

.field private final renderNode:Landroid/graphics/RenderNode;

.field private renderNodeWithHash:Lorg/telegram/ui/Components/blur3/RenderNodeWithHash;

.field private scrollableNoiseSuppressor:Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;

.field private scrollableNoiseSuppressorIndex:I

.field public underSource:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSource;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSource;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    new-instance v0, Lme/vkryl/core/reference/ReferenceList;

    invoke-direct {v0}, Lme/vkryl/core/reference/ReferenceList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;->drawables:Lme/vkryl/core/reference/ReferenceList;

    .line 33
    iput-object p1, p0, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;->fallbackSource:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSource;

    const/4 p1, 0x0

    .line 35
    invoke-static {p1}, Lorg/telegram/messenger/BotFullscreenButtons$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/String;)Landroid/graphics/RenderNode;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;->renderNode:Landroid/graphics/RenderNode;

    return-void
.end method


# virtual methods
.method public beginRecording(II)Landroid/graphics/RecordingCanvas;
    .locals 2

    .line 74
    iget-boolean v0, p0, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;->inRecording:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 78
    iput-boolean v0, p0, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;->inRecording:Z

    .line 80
    iget-object v0, p0, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;->renderNode:Landroid/graphics/RenderNode;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/RenderNode;->setPosition(IIII)Z

    .line 81
    iget-object v0, p0, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;->renderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/RenderNode;->beginRecording(II)Landroid/graphics/RecordingCanvas;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;->recordingCanvas:Landroid/graphics/RecordingCanvas;

    return-object p1

    .line 75
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public createDrawable()Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;
    .locals 2

    .line 179
    new-instance v0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawableRenderNode;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawableRenderNode;-><init>(Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSource;)V

    .line 180
    iget-object v1, p0, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;->drawables:Lme/vkryl/core/reference/ReferenceList;

    invoke-virtual {v1, v0}, Lme/vkryl/core/reference/ReferenceList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public dispatchOnDrawablesRelativePositionChange()V
    .locals 1

    .line 166
    iget-object v0, p0, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;->onDrawablesRelativePositionChangeListener:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 167
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;FFFF)V
    .locals 8

    .line 105
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_1

    .line 106
    iget-object v1, p0, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;->fallbackSource:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSource;

    if-eqz v1, :cond_0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 107
    invoke-interface/range {v1 .. v6}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSource;->draw(Landroid/graphics/Canvas;FFFF)V

    :cond_0
    return-void

    :cond_1
    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 112
    iget-boolean p1, p0, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;->inRecording:Z

    if-nez p1, :cond_4

    move v7, v6

    move v6, v5

    move v5, v4

    move v4, v3

    move-object v3, v2

    .line 116
    iget-object v2, p0, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;->underSource:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSource;

    if-eqz v2, :cond_2

    .line 117
    invoke-interface/range {v2 .. v7}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSource;->draw(Landroid/graphics/Canvas;FFFF)V

    :cond_2
    move-object v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    .line 119
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 120
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 121
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1f

    if-lt p1, p2, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;->scrollableNoiseSuppressor:Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;

    if-eqz p1, :cond_3

    .line 122
    iget p2, p0, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;->scrollableNoiseSuppressorIndex:I

    invoke-virtual {p1, v2, p2}, Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;->drawInline(Landroid/graphics/Canvas;I)V

    goto :goto_0

    .line 124
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;->renderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v2, p1}, Landroid/graphics/Canvas;->drawRenderNode(Landroid/graphics/RenderNode;)V

    .line 127
    :goto_0
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    return-void

    .line 113
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public endRecording()V
    .locals 1

    .line 86
    iget-boolean v0, p0, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;->inRecording:Z

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;->renderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v0}, Landroid/graphics/RenderNode;->endRecording()V

    const/4 v0, 0x0

    .line 91
    iput-boolean v0, p0, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;->inRecording:Z

    const/4 v0, 0x0

    .line 92
    iput-object v0, p0, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;->recordingCanvas:Landroid/graphics/RecordingCanvas;

    return-void

    .line 87
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getFallbackSource()Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSource;
    .locals 1

    .line 131
    iget-object v0, p0, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;->fallbackSource:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSource;

    return-object v0
.end method

.method public getVisiblePositions(Ljava/util/List;II)I
    .locals 4

    .line 137
    iget-object v0, p0, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;->drawables:Lme/vkryl/core/reference/ReferenceList;

    invoke-virtual {v0}, Lme/vkryl/core/reference/ReferenceList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawableRenderNode;

    .line 138
    invoke-virtual {v2}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawableRenderNode;->hasDisplayList()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->getAlpha()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {v2}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->getPaddedBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 140
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge p2, v3, :cond_1

    .line 141
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/RectF;

    goto :goto_1

    .line 143
    :cond_1
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    .line 144
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    :goto_1
    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->getPositionRelativeSource(Landroid/graphics/RectF;)V

    neg-int v2, p3

    int-to-float v2, v2

    .line 147
    invoke-virtual {v3, v2, v2}, Landroid/graphics/RectF;->inset(FF)V

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public inRecording()Z
    .locals 1

    .line 100
    iget-boolean v0, p0, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;->inRecording:Z

    return v0
.end method

.method public invalidateDisplayListForDrawables()V
    .locals 2

    .line 172
    iget-object v0, p0, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;->drawables:Lme/vkryl/core/reference/ReferenceList;

    invoke-virtual {v0}, Lme/vkryl/core/reference/ReferenceList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawableRenderNode;

    .line 173
    invoke-virtual {v1}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawableRenderNode;->invalidateDisplayList()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public isRecordingCanvas(Landroid/graphics/Canvas;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 96
    iget-object v0, p0, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;->recordingCanvas:Landroid/graphics/RecordingCanvas;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public needUpdateDisplayList(II)Z
    .locals 1

    .line 70
    iget-object v0, p0, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;->renderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v0}, Landroid/graphics/RenderNode;->hasDisplayList()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;->renderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v0}, Landroid/graphics/RenderNode;->getWidth()I

    move-result v0

    if-ne v0, p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;->renderNode:Landroid/graphics/RenderNode;

    invoke-virtual {p1}, Landroid/graphics/RenderNode;->getHeight()I

    move-result p1

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public setBlur(F)V
    .locals 2

    .line 63
    iget-object v0, p0, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;->renderNode:Landroid/graphics/RenderNode;

    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-static {p1, p1, v1}, Landroid/graphics/RenderEffect;->createBlurEffect(FFLandroid/graphics/Shader$TileMode;)Landroid/graphics/RenderEffect;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/graphics/RenderNode;->setRenderEffect(Landroid/graphics/RenderEffect;)Z

    return-void
.end method

.method public setOnDrawablesRelativePositionChangeListener(Ljava/lang/Runnable;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;->onDrawablesRelativePositionChangeListener:Ljava/lang/Runnable;

    return-void
.end method

.method public setScrollableNoiseSuppressor(Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;I)V
    .locals 0

    .line 53
    iput-object p1, p0, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;->scrollableNoiseSuppressor:Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;

    .line 54
    iput p2, p0, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;->scrollableNoiseSuppressorIndex:I

    return-void
.end method

.method public setSize(II)V
    .locals 2

    .line 49
    iget-object v0, p0, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;->renderNode:Landroid/graphics/RenderNode;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/RenderNode;->setPosition(IIII)Z

    return-void
.end method

.method public setUnderSource(Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSource;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;->underSource:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSource;

    return-void
.end method

.method public setupRenderer(Lorg/telegram/ui/Components/blur3/RenderNodeWithHash$Renderer;)V
    .locals 2

    .line 39
    iget-object v0, p0, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;->renderNodeWithHash:Lorg/telegram/ui/Components/blur3/RenderNodeWithHash;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lorg/telegram/ui/Components/blur3/RenderNodeWithHash;

    iget-object v1, p0, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;->renderNode:Landroid/graphics/RenderNode;

    invoke-direct {v0, v1, p1}, Lorg/telegram/ui/Components/blur3/RenderNodeWithHash;-><init>(Landroid/graphics/RenderNode;Lorg/telegram/ui/Components/blur3/RenderNodeWithHash$Renderer;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;->renderNodeWithHash:Lorg/telegram/ui/Components/blur3/RenderNodeWithHash;

    :cond_0
    return-void
.end method

.method public updateDisplayListIfNeeded()V
    .locals 1

    .line 45
    iget-object v0, p0, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;->renderNodeWithHash:Lorg/telegram/ui/Components/blur3/RenderNodeWithHash;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/blur3/RenderNodeWithHash;->updateDisplayListIfNeeded()V

    return-void
.end method
