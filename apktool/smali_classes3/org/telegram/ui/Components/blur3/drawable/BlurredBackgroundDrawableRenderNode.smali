.class public Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawableRenderNode;
.super Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;
.source "SourceFile"


# instance fields
.field private liquidGlassEffect:Lorg/telegram/ui/Components/blur3/LiquidGlassEffect;

.field private final outline:Landroid/graphics/Outline;

.field private final outlineRect:Landroid/graphics/Rect;

.field private final paintShadow:Landroid/graphics/Paint;

.field private final paintStrokeBottom:Landroid/graphics/Paint;

.field private final paintStrokeTop:Landroid/graphics/Paint;

.field private final renderNode:Landroid/graphics/RenderNode;

.field private final renderNodeFill:Landroid/graphics/RenderNode;

.field private renderNodeInvalidated:Z

.field private final source:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSource;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSource;)V
    .locals 6

    .line 36
    invoke-direct {p0}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;-><init>()V

    .line 24
    new-instance v0, Landroid/graphics/Outline;

    invoke-direct {v0}, Landroid/graphics/Outline;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawableRenderNode;->outline:Landroid/graphics/Outline;

    .line 25
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawableRenderNode;->outlineRect:Landroid/graphics/Rect;

    .line 30
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawableRenderNode;->paintShadow:Landroid/graphics/Paint;

    .line 31
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawableRenderNode;->paintStrokeTop:Landroid/graphics/Paint;

    .line 32
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawableRenderNode;->paintStrokeBottom:Landroid/graphics/Paint;

    .line 37
    const-string v4, "BlurredNode"

    invoke-static {v4}, Lorg/telegram/messenger/BotFullscreenButtons$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/String;)Landroid/graphics/RenderNode;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawableRenderNode;->renderNode:Landroid/graphics/RenderNode;

    .line 38
    const-string v5, "BlurredFill"

    invoke-static {v5}, Lorg/telegram/messenger/BotFullscreenButtons$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/String;)Landroid/graphics/RenderNode;

    move-result-object v5

    iput-object v5, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawableRenderNode;->renderNodeFill:Landroid/graphics/RenderNode;

    .line 39
    invoke-virtual {v4, v1}, Landroid/graphics/RenderNode;->setClipToOutline(Z)Z

    .line 40
    invoke-virtual {v4, v1}, Landroid/graphics/RenderNode;->setClipToBounds(Z)Z

    .line 42
    iput-object p1, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawableRenderNode;->source:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSource;

    const/4 p1, 0x0

    .line 44
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 45
    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 46
    invoke-virtual {v3, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method private updateDisplayList()V
    .locals 24

    move-object/from16 v0, p0

    .line 106
    iget v1, v0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->sourceOffsetX:F

    .line 107
    iget v2, v0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->sourceOffsetY:F

    .line 111
    iget-object v3, v0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->boundProps:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;

    iget-object v3, v3, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;->boundsWithPadding:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    add-float v7, v4, v1

    .line 112
    iget v4, v3, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    add-float v8, v4, v2

    .line 113
    iget v4, v3, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    add-float v9, v4, v1

    .line 114
    iget v1, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    add-float v10, v1, v2

    .line 116
    iget-object v1, v0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawableRenderNode;->renderNodeFill:Landroid/graphics/RenderNode;

    invoke-virtual {v1}, Landroid/graphics/RenderNode;->beginRecording()Landroid/graphics/RecordingCanvas;

    move-result-object v6

    .line 117
    invoke-virtual {v6}, Landroid/graphics/Canvas;->save()I

    neg-float v1, v7

    neg-float v2, v8

    .line 118
    invoke-virtual {v6, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 119
    iget-object v11, v0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawableRenderNode;->liquidGlassEffect:Lorg/telegram/ui/Components/blur3/LiquidGlassEffect;

    const/4 v1, 0x0

    if-eqz v11, :cond_1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x21

    if-lt v2, v3, :cond_1

    .line 120
    iget-object v2, v0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->boundProps:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;

    iget-object v2, v2, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;->boundsWithPadding:Landroid/graphics/Rect;

    .line 121
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v14, v2

    iget-object v2, v0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->boundProps:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;

    iget-object v2, v2, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;->boundsWithPadding:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v15, v2

    iget-object v2, v0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->boundProps:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;

    iget-object v3, v2, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;->shaderRadii:[F

    aget v16, v3, v1

    const/4 v4, 0x2

    aget v17, v3, v4

    const/4 v4, 0x4

    aget v18, v3, v4

    const/4 v4, 0x6

    aget v19, v3, v4

    .line 123
    iget v2, v2, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;->liquidThickness:I

    if-gtz v2, :cond_0

    const/high16 v2, 0x41300000    # 11.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    :cond_0
    int-to-float v2, v2

    move/from16 v20, v2

    iget-object v2, v0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->boundProps:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;

    iget v3, v2, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;->liquidIntensity:F

    iget v2, v2, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;->liquidIndex:F

    iget v4, v0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->backgroundColor:I

    const/4 v12, 0x0

    const/4 v13, 0x0

    move/from16 v22, v2

    move/from16 v21, v3

    move/from16 v23, v4

    .line 120
    invoke-virtual/range {v11 .. v23}, Lorg/telegram/ui/Components/blur3/LiquidGlassEffect;->update(FFFFFFFFFFFI)V

    .line 129
    :cond_1
    iget-object v5, v0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawableRenderNode;->source:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSource;

    invoke-interface/range {v5 .. v10}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSource;->draw(Landroid/graphics/Canvas;FFFF)V

    .line 130
    invoke-virtual {v6}, Landroid/graphics/Canvas;->save()I

    .line 131
    iget-object v2, v0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawableRenderNode;->renderNodeFill:Landroid/graphics/RenderNode;

    invoke-virtual {v2}, Landroid/graphics/RenderNode;->endRecording()V

    .line 134
    iget-object v2, v0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->boundProps:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;

    iget-boolean v2, v2, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;->useFullStroke:Z

    if-eqz v2, :cond_3

    .line 135
    iget v2, v0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->strokeColorFull:I

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    return-void

    .line 137
    :cond_3
    iget v2, v0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->strokeColorTop:I

    if-nez v2, :cond_5

    iget v2, v0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->strokeColorBottom:I

    if-eqz v2, :cond_4

    goto :goto_0

    :cond_4
    return-void

    .line 140
    :cond_5
    :goto_0
    iget-object v2, v0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawableRenderNode;->renderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v2}, Landroid/graphics/RenderNode;->beginRecording()Landroid/graphics/RecordingCanvas;

    move-result-object v3

    .line 141
    iget v2, v0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->backgroundColor:I

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    const/16 v4, 0xff

    if-ne v2, v4, :cond_6

    .line 142
    iget v2, v0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->backgroundColor:I

    invoke-virtual {v3, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_1

    .line 144
    :cond_6
    iget-object v2, v0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawableRenderNode;->renderNodeFill:Landroid/graphics/RenderNode;

    invoke-virtual {v3, v2}, Landroid/graphics/Canvas;->drawRenderNode(Landroid/graphics/RenderNode;)V

    .line 145
    iget-object v2, v0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawableRenderNode;->liquidGlassEffect:Lorg/telegram/ui/Components/blur3/LiquidGlassEffect;

    if-nez v2, :cond_7

    iget v2, v0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->backgroundColor:I

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    if-eqz v2, :cond_7

    .line 146
    iget v2, v0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->backgroundColor:I

    invoke-virtual {v3, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 149
    :cond_7
    :goto_1
    iget-object v2, v0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->boundProps:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;

    iget-boolean v4, v2, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;->useFullStroke:Z

    if-eqz v4, :cond_9

    .line 150
    iget-boolean v4, v2, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;->radiiAreSame:Z

    if-eqz v4, :cond_8

    .line 151
    iget v4, v2, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;->strokeWidthFull:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    .line 152
    iget-object v2, v2, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;->boundsWithPadding:Landroid/graphics/Rect;

    .line 155
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    sub-float v6, v2, v4

    iget-object v2, v0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->boundProps:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;

    iget-object v2, v2, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;->boundsWithPadding:Landroid/graphics/Rect;

    .line 156
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    sub-float v7, v2, v4

    iget-object v2, v0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->boundProps:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;

    iget-object v2, v2, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;->radii:[F

    aget v8, v2, v1

    iget-object v10, v0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawableRenderNode;->paintStrokeTop:Landroid/graphics/Paint;

    move v5, v4

    move v9, v8

    .line 152
    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 162
    :cond_8
    iget-object v1, v2, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;->strokePathTop:Landroid/graphics/Path;

    iget-object v2, v0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawableRenderNode;->paintStrokeTop:Landroid/graphics/Paint;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_2

    .line 165
    :cond_9
    iget v1, v0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->strokeColorTop:I

    if-eqz v1, :cond_a

    .line 166
    iget-object v1, v2, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;->boundsWithPadding:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v6, v1

    iget-object v1, v0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->boundProps:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;

    iget-object v1, v1, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;->boundsWithPadding:Landroid/graphics/Rect;

    .line 167
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v7, v1

    iget-object v1, v0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->boundProps:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;

    iget-object v8, v1, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;->radii:[F

    iget v9, v1, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;->strokeWidthTop:F

    const/4 v10, 0x1

    iget-object v11, v0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawableRenderNode;->paintStrokeTop:Landroid/graphics/Paint;

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 166
    invoke-static/range {v3 .. v11}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->drawStroke(Landroid/graphics/Canvas;FFFF[FFZLandroid/graphics/Paint;)V

    .line 170
    :cond_a
    iget v1, v0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->strokeColorBottom:I

    if-eqz v1, :cond_b

    .line 171
    iget-object v1, v0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->boundProps:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;

    iget-object v1, v1, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;->boundsWithPadding:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v6, v1

    iget-object v1, v0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->boundProps:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;

    iget-object v1, v1, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;->boundsWithPadding:Landroid/graphics/Rect;

    .line 172
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v7, v1

    iget-object v1, v0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->boundProps:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;

    iget-object v8, v1, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;->radii:[F

    iget v9, v1, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;->strokeWidthBottom:F

    const/4 v10, 0x0

    iget-object v11, v0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawableRenderNode;->paintStrokeBottom:Landroid/graphics/Paint;

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 171
    invoke-static/range {v3 .. v11}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->drawStroke(Landroid/graphics/Canvas;FFFF[FFZLandroid/graphics/Paint;)V

    .line 176
    :cond_b
    :goto_2
    iget-object v1, v0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawableRenderNode;->renderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v1}, Landroid/graphics/RenderNode;->endRecording()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 198
    iget-object v0, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->boundProps:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;

    iget-object v0, v0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;->boundsWithPadding:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 202
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_1

    .line 203
    iget-object v0, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawableRenderNode;->source:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSource;

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->drawSource(Landroid/graphics/Canvas;Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSource;)V

    return-void

    .line 207
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawableRenderNode;->renderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v0}, Landroid/graphics/RenderNode;->hasDisplayList()Z

    move-result v0

    if-nez v0, :cond_2

    .line 208
    iget-object v0, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawableRenderNode;->source:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSource;

    invoke-interface {v0}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSource;->dispatchOnDrawablesRelativePositionChange()V

    .line 209
    invoke-direct {p0}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawableRenderNode;->updateDisplayList()V

    goto :goto_0

    .line 210
    :cond_2
    iget-boolean v0, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawableRenderNode;->renderNodeInvalidated:Z

    if-eqz v0, :cond_3

    .line 211
    invoke-direct {p0}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawableRenderNode;->updateDisplayList()V

    :cond_3
    :goto_0
    const/4 v0, 0x0

    .line 213
    iput-boolean v0, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawableRenderNode;->renderNodeInvalidated:Z

    .line 215
    iget v0, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->shadowColor:I

    iget-object v1, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawableRenderNode;->renderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v1}, Landroid/graphics/RenderNode;->getAlpha()F

    move-result v1

    iget v2, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->shadowAlpha:F

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v0

    .line 216
    iget v1, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->shadowLayerRadius:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-eqz v1, :cond_4

    .line 217
    iget-object v1, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawableRenderNode;->paintShadow:Landroid/graphics/Paint;

    iget v2, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->shadowLayerRadius:F

    iget v3, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->shadowLayerDx:F

    iget v4, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->shadowLayerDy:F

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 218
    iget-object v0, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->boundProps:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;

    iget-object v1, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawableRenderNode;->paintShadow:Landroid/graphics/Paint;

    iget-boolean v2, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->inAppKeyboardOptimization:Z

    invoke-virtual {v0, p1, v1, v2}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;->drawShadows(Landroid/graphics/Canvas;Landroid/graphics/Paint;Z)V

    .line 221
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 222
    iget-object v0, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->boundProps:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;

    iget-object v0, v0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;->boundsWithPadding:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 223
    iget-object v0, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawableRenderNode;->renderNode:Landroid/graphics/RenderNode;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawRenderNode(Landroid/graphics/RenderNode;)V

    .line 224
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getSource()Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSource;
    .locals 1

    .line 65
    iget-object v0, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawableRenderNode;->source:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSource;

    return-object v0
.end method

.method public hasDisplayList()Z
    .locals 1

    .line 102
    iget-object v0, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawableRenderNode;->renderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v0}, Landroid/graphics/RenderNode;->hasDisplayList()Z

    move-result v0

    return v0
.end method

.method public invalidateDisplayList()V
    .locals 1

    const/4 v0, 0x1

    .line 228
    iput-boolean v0, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawableRenderNode;->renderNodeInvalidated:Z

    return-void
.end method

.method protected onBoundPropsChanged()V
    .locals 4

    .line 70
    invoke-super {p0}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->onBoundPropsChanged()V

    .line 72
    iget-object v0, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->boundProps:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;

    iget-boolean v1, v0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;->useFullStroke:Z

    if-eqz v1, :cond_0

    .line 73
    iget-object v1, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawableRenderNode;->paintStrokeTop:Landroid/graphics/Paint;

    iget v0, v0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;->strokeWidthFull:F

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto :goto_0

    .line 75
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawableRenderNode;->paintStrokeTop:Landroid/graphics/Paint;

    iget v0, v0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;->strokeWidthTop:F

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 76
    iget-object v0, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawableRenderNode;->paintStrokeBottom:Landroid/graphics/Paint;

    iget-object v1, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->boundProps:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;

    iget v1, v1, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;->strokeWidthBottom:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 79
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawableRenderNode;->outlineRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->boundProps:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;

    iget-object v1, v1, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;->boundsWithPadding:Landroid/graphics/Rect;

    .line 80
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->boundProps:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;

    iget-object v2, v2, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;->boundsWithPadding:Landroid/graphics/Rect;

    .line 81
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    const/4 v3, 0x0

    .line 79
    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 83
    iget-object v0, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawableRenderNode;->outline:Landroid/graphics/Outline;

    iget-object v1, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawableRenderNode;->outlineRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->boundProps:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;

    iget-object v2, v2, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;->radii:[F

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->getOutline(Landroid/graphics/Outline;Landroid/graphics/Rect;[F)V

    .line 84
    iget-object v0, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawableRenderNode;->outline:Landroid/graphics/Outline;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Outline;->setAlpha(F)V

    .line 86
    iget-object v0, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->boundProps:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;

    iget-object v0, v0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;->boundsWithPadding:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 87
    iget-object v0, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawableRenderNode;->renderNodeFill:Landroid/graphics/RenderNode;

    iget-object v1, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->boundProps:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;

    iget-object v1, v1, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;->boundsWithPadding:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->boundProps:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;

    iget-object v2, v2, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;->boundsWithPadding:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RenderNode;->setPosition(IIII)Z

    .line 88
    iget-object v0, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawableRenderNode;->renderNode:Landroid/graphics/RenderNode;

    iget-object v1, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->boundProps:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;

    iget-object v1, v1, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;->boundsWithPadding:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->boundProps:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;

    iget-object v2, v2, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;->boundsWithPadding:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RenderNode;->setPosition(IIII)Z

    .line 89
    iget-object v0, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawableRenderNode;->renderNode:Landroid/graphics/RenderNode;

    iget-object v1, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawableRenderNode;->outline:Landroid/graphics/Outline;

    invoke-virtual {v0, v1}, Landroid/graphics/RenderNode;->setOutline(Landroid/graphics/Outline;)Z

    const/4 v0, 0x1

    .line 91
    iput-boolean v0, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawableRenderNode;->renderNodeInvalidated:Z

    :cond_1
    return-void
.end method

.method protected onSourceOffsetChange(FF)V
    .locals 0

    .line 97
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->onSourceOffsetChange(FF)V

    const/4 p1, 0x1

    .line 98
    iput-boolean p1, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawableRenderNode;->renderNodeInvalidated:Z

    return-void
.end method

.method protected onSourceRelativePositionChanged(Landroid/graphics/RectF;)V
    .locals 0

    .line 246
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->onSourceRelativePositionChanged(Landroid/graphics/RectF;)V

    .line 247
    iget-object p1, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawableRenderNode;->source:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSource;

    invoke-interface {p1}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSource;->dispatchOnDrawablesRelativePositionChange()V

    return-void
.end method

.method public setAlpha(I)V
    .locals 4

    .line 233
    invoke-virtual {p0}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->getAlpha()I

    move-result v0

    .line 235
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->setAlpha(I)V

    .line 236
    iget-object v1, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawableRenderNode;->renderNode:Landroid/graphics/RenderNode;

    int-to-float v2, p1

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/graphics/RenderNode;->setAlpha(F)Z

    const/4 v1, 0x1

    .line 237
    iput-boolean v1, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawableRenderNode;->renderNodeInvalidated:Z

    if-nez v0, :cond_0

    if-lez p1, :cond_0

    .line 240
    iget-object p1, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawableRenderNode;->source:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSource;

    invoke-interface {p1}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSource;->dispatchOnDrawablesRelativePositionChange()V

    :cond_0
    return-void
.end method

.method public setLiquidGlassEffectAllowed()V
    .locals 2

    .line 59
    new-instance v0, Lorg/telegram/ui/Components/blur3/LiquidGlassEffect;

    iget-object v1, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawableRenderNode;->renderNodeFill:Landroid/graphics/RenderNode;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/blur3/LiquidGlassEffect;-><init>(Landroid/graphics/RenderNode;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawableRenderNode;->liquidGlassEffect:Lorg/telegram/ui/Components/blur3/LiquidGlassEffect;

    return-void
.end method

.method public updateColors()V
    .locals 5

    .line 182
    invoke-super {p0}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->updateColors()V

    .line 184
    iget-object v0, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawableRenderNode;->paintShadow:Landroid/graphics/Paint;

    iget v1, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->shadowLayerRadius:F

    iget v2, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->shadowLayerDx:F

    iget v3, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->shadowLayerDy:F

    iget v4, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->shadowColor:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 186
    iget-object v0, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->boundProps:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;

    iget-boolean v0, v0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;->useFullStroke:Z

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawableRenderNode;->paintStrokeTop:Landroid/graphics/Paint;

    iget v1, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->strokeColorFull:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 189
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawableRenderNode;->paintStrokeTop:Landroid/graphics/Paint;

    iget v1, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->strokeColorTop:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 190
    iget-object v0, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawableRenderNode;->paintStrokeBottom:Landroid/graphics/Paint;

    iget v1, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->strokeColorBottom:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :goto_0
    const/4 v0, 0x1

    .line 193
    iput-boolean v0, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawableRenderNode;->renderNodeInvalidated:Z

    return-void
.end method
