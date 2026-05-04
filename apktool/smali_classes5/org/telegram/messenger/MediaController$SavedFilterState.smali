.class public Lorg/telegram/messenger/MediaController$SavedFilterState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/MediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SavedFilterState"
.end annotation


# instance fields
.field public blurAngle:F

.field public blurExcludeBlurSize:F

.field public blurExcludePoint:Lorg/telegram/ui/Components/Point;

.field public blurExcludeSize:F

.field public blurType:I

.field public contrastValue:F

.field public curvesToolValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

.field public enhanceValue:F

.field public exposureValue:F

.field public fadeValue:F

.field public grainValue:F

.field public highlightsValue:F

.field public saturationValue:F

.field public shadowsValue:F

.field public sharpenValue:F

.field public softenSkinValue:F

.field public tintHighlightsColor:I

.field public tintShadowsColor:I

.field public vignetteValue:F

.field public warmthValue:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    new-instance v0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    invoke-direct {v0}, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MediaController$SavedFilterState;->curvesToolValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    return-void
.end method


# virtual methods
.method public isEmpty()Z
    .locals 2

    .line 310
    iget v0, p0, Lorg/telegram/messenger/MediaController$SavedFilterState;->enhanceValue:F

    .line 311
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3dcccccd    # 0.1f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/MediaController$SavedFilterState;->softenSkinValue:F

    .line 312
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/MediaController$SavedFilterState;->exposureValue:F

    .line 313
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/MediaController$SavedFilterState;->contrastValue:F

    .line 314
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/MediaController$SavedFilterState;->warmthValue:F

    .line 315
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/MediaController$SavedFilterState;->saturationValue:F

    .line 316
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/MediaController$SavedFilterState;->fadeValue:F

    .line 317
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/MediaController$SavedFilterState;->tintShadowsColor:I

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/MediaController$SavedFilterState;->tintHighlightsColor:I

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/MediaController$SavedFilterState;->highlightsValue:F

    .line 320
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/MediaController$SavedFilterState;->shadowsValue:F

    .line 321
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/MediaController$SavedFilterState;->vignetteValue:F

    .line 322
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/MediaController$SavedFilterState;->grainValue:F

    .line 323
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/MediaController$SavedFilterState;->blurType:I

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/MediaController$SavedFilterState;->sharpenValue:F

    .line 325
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 2

    .line 278
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readFloat(Z)F

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/MediaController$SavedFilterState;->enhanceValue:F

    .line 279
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readFloat(Z)F

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/MediaController$SavedFilterState;->softenSkinValue:F

    .line 280
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readFloat(Z)F

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/MediaController$SavedFilterState;->exposureValue:F

    .line 281
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readFloat(Z)F

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/MediaController$SavedFilterState;->contrastValue:F

    .line 282
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readFloat(Z)F

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/MediaController$SavedFilterState;->warmthValue:F

    .line 283
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readFloat(Z)F

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/MediaController$SavedFilterState;->saturationValue:F

    .line 284
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readFloat(Z)F

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/MediaController$SavedFilterState;->fadeValue:F

    .line 285
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/MediaController$SavedFilterState;->tintShadowsColor:I

    .line 286
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/MediaController$SavedFilterState;->tintHighlightsColor:I

    .line 287
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readFloat(Z)F

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/MediaController$SavedFilterState;->highlightsValue:F

    .line 288
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readFloat(Z)F

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/MediaController$SavedFilterState;->shadowsValue:F

    .line 289
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readFloat(Z)F

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/MediaController$SavedFilterState;->vignetteValue:F

    .line 290
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readFloat(Z)F

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/MediaController$SavedFilterState;->grainValue:F

    .line 291
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/MediaController$SavedFilterState;->blurType:I

    .line 292
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readFloat(Z)F

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/MediaController$SavedFilterState;->sharpenValue:F

    .line 293
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$SavedFilterState;->curvesToolValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;->readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V

    .line 294
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readFloat(Z)F

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/MediaController$SavedFilterState;->blurExcludeSize:F

    .line 295
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    const v1, 0x56730bcc

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 297
    iput-object v0, p0, Lorg/telegram/messenger/MediaController$SavedFilterState;->blurExcludePoint:Lorg/telegram/ui/Components/Point;

    goto :goto_0

    .line 299
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$SavedFilterState;->blurExcludePoint:Lorg/telegram/ui/Components/Point;

    if-nez v0, :cond_1

    .line 300
    new-instance v0, Lorg/telegram/ui/Components/Point;

    invoke-direct {v0}, Lorg/telegram/ui/Components/Point;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MediaController$SavedFilterState;->blurExcludePoint:Lorg/telegram/ui/Components/Point;

    .line 302
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$SavedFilterState;->blurExcludePoint:Lorg/telegram/ui/Components/Point;

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readFloat(Z)F

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Components/Point;->x:F

    .line 303
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$SavedFilterState;->blurExcludePoint:Lorg/telegram/ui/Components/Point;

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readFloat(Z)F

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Components/Point;->y:F

    .line 305
    :goto_0
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readFloat(Z)F

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/MediaController$SavedFilterState;->blurExcludeBlurSize:F

    .line 306
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readFloat(Z)F

    move-result p1

    iput p1, p0, Lorg/telegram/messenger/MediaController$SavedFilterState;->blurAngle:F

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    .line 249
    iget v0, p0, Lorg/telegram/messenger/MediaController$SavedFilterState;->enhanceValue:F

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeFloat(F)V

    .line 250
    iget v0, p0, Lorg/telegram/messenger/MediaController$SavedFilterState;->softenSkinValue:F

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeFloat(F)V

    .line 251
    iget v0, p0, Lorg/telegram/messenger/MediaController$SavedFilterState;->exposureValue:F

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeFloat(F)V

    .line 252
    iget v0, p0, Lorg/telegram/messenger/MediaController$SavedFilterState;->contrastValue:F

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeFloat(F)V

    .line 253
    iget v0, p0, Lorg/telegram/messenger/MediaController$SavedFilterState;->warmthValue:F

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeFloat(F)V

    .line 254
    iget v0, p0, Lorg/telegram/messenger/MediaController$SavedFilterState;->saturationValue:F

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeFloat(F)V

    .line 255
    iget v0, p0, Lorg/telegram/messenger/MediaController$SavedFilterState;->fadeValue:F

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeFloat(F)V

    .line 256
    iget v0, p0, Lorg/telegram/messenger/MediaController$SavedFilterState;->tintShadowsColor:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 257
    iget v0, p0, Lorg/telegram/messenger/MediaController$SavedFilterState;->tintHighlightsColor:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 258
    iget v0, p0, Lorg/telegram/messenger/MediaController$SavedFilterState;->highlightsValue:F

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeFloat(F)V

    .line 259
    iget v0, p0, Lorg/telegram/messenger/MediaController$SavedFilterState;->shadowsValue:F

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeFloat(F)V

    .line 260
    iget v0, p0, Lorg/telegram/messenger/MediaController$SavedFilterState;->vignetteValue:F

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeFloat(F)V

    .line 261
    iget v0, p0, Lorg/telegram/messenger/MediaController$SavedFilterState;->grainValue:F

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeFloat(F)V

    .line 262
    iget v0, p0, Lorg/telegram/messenger/MediaController$SavedFilterState;->blurType:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 263
    iget v0, p0, Lorg/telegram/messenger/MediaController$SavedFilterState;->sharpenValue:F

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeFloat(F)V

    .line 264
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$SavedFilterState;->curvesToolValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 265
    iget v0, p0, Lorg/telegram/messenger/MediaController$SavedFilterState;->blurExcludeSize:F

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeFloat(F)V

    .line 266
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$SavedFilterState;->blurExcludePoint:Lorg/telegram/ui/Components/Point;

    if-nez v0, :cond_0

    const v0, 0x56730bcc

    .line 267
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    goto :goto_0

    :cond_0
    const v0, -0x21524111

    .line 269
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 270
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$SavedFilterState;->blurExcludePoint:Lorg/telegram/ui/Components/Point;

    iget v0, v0, Lorg/telegram/ui/Components/Point;->x:F

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeFloat(F)V

    .line 271
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$SavedFilterState;->blurExcludePoint:Lorg/telegram/ui/Components/Point;

    iget v0, v0, Lorg/telegram/ui/Components/Point;->y:F

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeFloat(F)V

    .line 273
    :goto_0
    iget v0, p0, Lorg/telegram/messenger/MediaController$SavedFilterState;->blurExcludeBlurSize:F

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeFloat(F)V

    .line 274
    iget v0, p0, Lorg/telegram/messenger/MediaController$SavedFilterState;->blurAngle:F

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeFloat(F)V

    return-void
.end method
