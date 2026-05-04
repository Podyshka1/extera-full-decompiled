.class Lorg/telegram/ui/Components/FilterShaders$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/FilterShaders$FilterShadersDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/FilterShaders;->getFilterShadersDelegate(Lorg/telegram/messenger/MediaController$SavedFilterState;)Lorg/telegram/ui/Components/FilterShaders$FilterShadersDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$lastState:Lorg/telegram/messenger/MediaController$SavedFilterState;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MediaController$SavedFilterState;)V
    .locals 0

    .line 2064
    iput-object p1, p0, Lorg/telegram/ui/Components/FilterShaders$1;->val$lastState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fillAndGetCurveBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .line 2188
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterShaders$1;->val$lastState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->curvesToolValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;->fillBuffer()V

    .line 2189
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterShaders$1;->val$lastState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->curvesToolValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;->curveBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getBlurAngle()F
    .locals 1

    .line 2173
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterShaders$1;->val$lastState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    iget v0, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->blurAngle:F

    return v0
.end method

.method public getBlurExcludeBlurSize()F
    .locals 1

    .line 2168
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterShaders$1;->val$lastState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    iget v0, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->blurExcludeBlurSize:F

    return v0
.end method

.method public getBlurExcludePoint()Lorg/telegram/ui/Components/Point;
    .locals 1

    .line 2178
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterShaders$1;->val$lastState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->blurExcludePoint:Lorg/telegram/ui/Components/Point;

    return-object v0
.end method

.method public getBlurExcludeSize()F
    .locals 1

    .line 2163
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterShaders$1;->val$lastState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    iget v0, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->blurExcludeSize:F

    return v0
.end method

.method public getBlurType()I
    .locals 1

    .line 2158
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterShaders$1;->val$lastState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    iget v0, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->blurType:I

    return v0
.end method

.method public getContrastValue()F
    .locals 2

    .line 2097
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterShaders$1;->val$lastState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    iget v0, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->contrastValue:F

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    const v1, 0x3e99999a    # 0.3f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    return v0
.end method

.method public getEnhanceValue()F
    .locals 2

    .line 2087
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterShaders$1;->val$lastState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    iget v0, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->enhanceValue:F

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getExposureValue()F
    .locals 2

    .line 2092
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterShaders$1;->val$lastState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    iget v0, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->exposureValue:F

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getFadeValue()F
    .locals 2

    .line 2122
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterShaders$1;->val$lastState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    iget v0, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->fadeValue:F

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getGrainValue()F
    .locals 2

    .line 2117
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterShaders$1;->val$lastState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    iget v0, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->grainValue:F

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    const v1, 0x3d23d70a    # 0.04f

    mul-float/2addr v0, v1

    return v0
.end method

.method public getHighlightsValue()F
    .locals 2

    .line 2082
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterShaders$1;->val$lastState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    iget v0, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->highlightsValue:F

    const/high16 v1, 0x3f400000    # 0.75f

    mul-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    add-float/2addr v0, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getSaturationValue()F
    .locals 2

    .line 2139
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterShaders$1;->val$lastState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    iget v0, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->saturationValue:F

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    const v1, 0x3f866666    # 1.05f

    mul-float/2addr v0, v1

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    return v0
.end method

.method public getShadowsValue()F
    .locals 2

    .line 2077
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterShaders$1;->val$lastState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    iget v0, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->shadowsValue:F

    const v1, 0x3f0ccccd    # 0.55f

    mul-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    add-float/2addr v0, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getSharpenValue()F
    .locals 2

    .line 2112
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterShaders$1;->val$lastState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    iget v0, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->sharpenValue:F

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    const v1, 0x3f19999a    # 0.6f

    mul-float/2addr v0, v1

    const v1, 0x3de147ae    # 0.11f

    add-float/2addr v0, v1

    return v0
.end method

.method public getSoftenSkinValue()F
    .locals 2

    .line 2072
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterShaders$1;->val$lastState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    iget v0, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->softenSkinValue:F

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getTintHighlightsColor()I
    .locals 1

    .line 2148
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterShaders$1;->val$lastState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    iget v0, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->tintHighlightsColor:I

    return v0
.end method

.method public getTintHighlightsIntensityValue()F
    .locals 1

    .line 2128
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterShaders$1;->val$lastState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    iget v0, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->tintHighlightsColor:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/high16 v0, 0x3f000000    # 0.5f

    return v0
.end method

.method public getTintShadowsColor()I
    .locals 1

    .line 2153
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterShaders$1;->val$lastState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    iget v0, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->tintShadowsColor:I

    return v0
.end method

.method public getTintShadowsIntensityValue()F
    .locals 1

    .line 2134
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterShaders$1;->val$lastState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    iget v0, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->tintShadowsColor:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/high16 v0, 0x3f000000    # 0.5f

    return v0
.end method

.method public getVignetteValue()F
    .locals 2

    .line 2107
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterShaders$1;->val$lastState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    iget v0, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->vignetteValue:F

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getWarmthValue()F
    .locals 2

    .line 2102
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterShaders$1;->val$lastState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    iget v0, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->warmthValue:F

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public shouldDrawCurvesPass()Z
    .locals 1

    .line 2183
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterShaders$1;->val$lastState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->curvesToolValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;->shouldBeSkipped()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public shouldShowOriginal()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
