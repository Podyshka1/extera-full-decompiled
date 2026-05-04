.class public final Landroidx/camera/core/internal/StreamSpecsCalculatorImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/internal/StreamSpecsCalculator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/internal/StreamSpecsCalculatorImpl$Companion;
    }
.end annotation


# static fields
.field private static final Companion:Landroidx/camera/core/internal/StreamSpecsCalculatorImpl$Companion;


# instance fields
.field private cameraDeviceSurfaceManager:Landroidx/camera/core/impl/CameraDeviceSurfaceManager;

.field private final useCaseConfigFactory:Landroidx/camera/core/impl/UseCaseConfigFactory;


# direct methods
.method public static synthetic $r8$lambda$EiSDIaV-oOjJPVqGwZrvYw4fiRY(Ljava/util/Map;Landroidx/camera/core/impl/CameraInfoInternal;Landroidx/camera/core/UseCase;)Landroidx/camera/core/impl/UseCaseConfig;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Landroidx/camera/core/internal/StreamSpecsCalculatorImpl;->calculateSuggestedStreamSpecsForNewUseCases$lambda$0(Ljava/util/Map;Landroidx/camera/core/impl/CameraInfoInternal;Landroidx/camera/core/UseCase;)Landroidx/camera/core/impl/UseCaseConfig;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/core/internal/StreamSpecsCalculatorImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/core/internal/StreamSpecsCalculatorImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/camera/core/internal/StreamSpecsCalculatorImpl;->Companion:Landroidx/camera/core/internal/StreamSpecsCalculatorImpl$Companion;

    return-void
.end method

.method public constructor <init>(Landroidx/camera/core/impl/UseCaseConfigFactory;Landroidx/camera/core/impl/CameraDeviceSurfaceManager;)V
    .locals 1

    const-string v0, "useCaseConfigFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput-object p1, p0, Landroidx/camera/core/internal/StreamSpecsCalculatorImpl;->useCaseConfigFactory:Landroidx/camera/core/impl/UseCaseConfigFactory;

    .line 129
    iput-object p2, p0, Landroidx/camera/core/internal/StreamSpecsCalculatorImpl;->cameraDeviceSurfaceManager:Landroidx/camera/core/impl/CameraDeviceSurfaceManager;

    return-void
.end method

.method private final calculateSuggestedStreamSpecsForAttachedUseCases(ILandroidx/camera/core/impl/CameraInfoInternal;Ljava/util/List;)Landroid/util/Pair;
    .locals 24

    .line 185
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 186
    invoke-interface/range {p2 .. p2}, Landroidx/camera/core/impl/CameraInfoInternal;->getCameraId()Ljava/lang/String;

    move-result-object v3

    const-string v1, "getCameraId(...)"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    .line 188
    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    .line 191
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroidx/camera/core/UseCase;

    .line 193
    invoke-virtual {v10}, Landroidx/camera/core/UseCase;->getAttachedStreamSpec()Landroidx/camera/core/impl/StreamSpec;

    move-result-object v11

    move-object/from16 v12, p0

    if-eqz v11, :cond_3

    .line 198
    iget-object v1, v12, Landroidx/camera/core/internal/StreamSpecsCalculatorImpl;->cameraDeviceSurfaceManager:Landroidx/camera/core/impl/CameraDeviceSurfaceManager;

    const-string v13, "Required value was null."

    if-eqz v1, :cond_2

    .line 202
    invoke-virtual {v10}, Landroidx/camera/core/UseCase;->getImageFormat()I

    move-result v4

    .line 203
    invoke-virtual {v10}, Landroidx/camera/core/UseCase;->getAttachedSurfaceResolution()Landroid/util/Size;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 206
    invoke-virtual {v10}, Landroidx/camera/core/UseCase;->getCurrentConfig()Landroidx/camera/core/impl/UseCaseConfig;

    move-result-object v2

    invoke-interface {v2}, Landroidx/camera/core/impl/UseCaseConfig;->getStreamUseCase()Landroidx/camera/core/impl/StreamUseCase;

    move-result-object v6

    move/from16 v2, p1

    .line 199
    invoke-interface/range {v1 .. v6}, Landroidx/camera/core/impl/CameraDeviceSurfaceManager;->transformSurfaceConfig(ILjava/lang/String;ILandroid/util/Size;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v14

    const-string v1, "transformSurfaceConfig(...)"

    invoke-static {v14, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    invoke-virtual {v10}, Landroidx/camera/core/UseCase;->getImageFormat()I

    move-result v15

    .line 213
    invoke-virtual {v10}, Landroidx/camera/core/UseCase;->getAttachedSurfaceResolution()Landroid/util/Size;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 214
    invoke-virtual {v11}, Landroidx/camera/core/impl/StreamSpec;->getDynamicRange()Landroidx/camera/core/DynamicRange;

    move-result-object v17

    .line 215
    invoke-static {v10}, Landroidx/camera/core/streamsharing/StreamSharing;->getCaptureTypes(Landroidx/camera/core/UseCase;)Ljava/util/List;

    move-result-object v18

    .line 216
    invoke-virtual {v11}, Landroidx/camera/core/impl/StreamSpec;->getImplementationOptions()Landroidx/camera/core/impl/Config;

    move-result-object v19

    .line 217
    invoke-virtual {v10}, Landroidx/camera/core/UseCase;->getCurrentConfig()Landroidx/camera/core/impl/UseCaseConfig;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroidx/camera/core/impl/UseCaseConfig;->getSessionType(I)I

    move-result v20

    .line 219
    invoke-virtual {v10}, Landroidx/camera/core/UseCase;->getCurrentConfig()Landroidx/camera/core/impl/UseCaseConfig;

    move-result-object v1

    sget-object v2, Landroidx/camera/core/impl/StreamSpec;->FRAME_RATE_RANGE_UNSPECIFIED:Landroid/util/Range;

    invoke-interface {v1, v2}, Landroidx/camera/core/impl/UseCaseConfig;->getTargetFrameRate(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v21

    if-eqz v21, :cond_0

    .line 221
    invoke-virtual {v10}, Landroidx/camera/core/UseCase;->getCurrentConfig()Landroidx/camera/core/impl/UseCaseConfig;

    move-result-object v1

    invoke-interface {v1}, Landroidx/camera/core/impl/UseCaseConfig;->isStrictFrameRateRequired()Z

    move-result v22

    .line 222
    invoke-virtual {v10}, Landroidx/camera/core/UseCase;->getCurrentConfig()Landroidx/camera/core/impl/UseCaseConfig;

    move-result-object v1

    invoke-virtual {v10}, Landroidx/camera/core/UseCase;->getAttachedSurfaceResolution()Landroid/util/Size;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Landroidx/camera/core/impl/UseCaseConfig;->getCustomMaxFrameRate(Landroid/util/Size;)I

    move-result v23

    .line 210
    invoke-static/range {v14 .. v23}, Landroidx/camera/core/impl/AttachedSurfaceInfo;->create(Landroidx/camera/core/impl/SurfaceConfig;ILandroid/util/Size;Landroidx/camera/core/DynamicRange;Ljava/util/List;Landroidx/camera/core/impl/Config;ILandroid/util/Range;ZI)Landroidx/camera/core/impl/AttachedSurfaceInfo;

    move-result-object v1

    const-string v2, "create(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    invoke-interface {v8, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    invoke-interface {v7, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 219
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 203
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Attached surface resolution cannot be null for already attached use cases."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 193
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Attached stream spec cannot be null for already attached use cases."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    move-object/from16 v12, p0

    .line 229
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v7, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private final calculateSuggestedStreamSpecsForNewUseCases(ILandroidx/camera/core/impl/CameraInfoInternal;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;ZZ)Landroidx/camera/core/internal/StreamSpecQueryResult;
    .locals 14

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    .line 241
    invoke-interface {v0}, Landroidx/camera/core/impl/CameraInfoInternal;->getCameraId()Ljava/lang/String;

    move-result-object v4

    const-string v3, "getCameraId(...)"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 242
    new-instance v11, Ljava/util/LinkedHashMap;

    invoke-direct {v11}, Ljava/util/LinkedHashMap;-><init>()V

    .line 246
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8

    .line 247
    new-instance v12, Ljava/util/LinkedHashMap;

    invoke-direct {v12}, Ljava/util/LinkedHashMap;-><init>()V

    .line 248
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v3, 0x0

    .line 251
    :try_start_0
    invoke-interface {v0}, Landroidx/camera/core/impl/CameraInfoInternal;->getSensorRect()Landroid/graphics/Rect;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v5, v3

    .line 258
    :goto_0
    new-instance v7, Landroidx/camera/core/internal/SupportedOutputSizesSorter;

    if-eqz v5, :cond_0

    .line 260
    invoke-static {v5}, Landroidx/camera/core/impl/utils/TransformUtils;->rectToSize(Landroid/graphics/Rect;)Landroid/util/Size;

    move-result-object v3

    .line 258
    :cond_0
    invoke-direct {v7, v0, v3}, Landroidx/camera/core/internal/SupportedOutputSizesSorter;-><init>(Landroidx/camera/core/impl/CameraInfoInternal;Landroid/util/Size;)V

    .line 262
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v13, "Required value was null."

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/camera/core/UseCase;

    .line 264
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_1

    check-cast v8, Landroidx/camera/core/internal/CameraUseCaseAdapter$ConfigPair;

    .line 270
    iget-object v9, v8, Landroidx/camera/core/internal/CameraUseCaseAdapter$ConfigPair;->mExtendedConfig:Landroidx/camera/core/impl/UseCaseConfig;

    .line 271
    iget-object v8, v8, Landroidx/camera/core/internal/CameraUseCaseAdapter$ConfigPair;->mCameraConfig:Landroidx/camera/core/impl/UseCaseConfig;

    .line 268
    invoke-virtual {v5, v0, v9, v8}, Landroidx/camera/core/UseCase;->mergeConfigs(Landroidx/camera/core/impl/CameraInfoInternal;Landroidx/camera/core/impl/UseCaseConfig;Landroidx/camera/core/impl/UseCaseConfig;)Landroidx/camera/core/impl/UseCaseConfig;

    move-result-object v8

    const-string v9, "mergeConfigs(...)"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 273
    invoke-interface {v12, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    invoke-virtual {v7, v8}, Landroidx/camera/core/internal/SupportedOutputSizesSorter;->getSortedSupportedOutputSizes(Landroidx/camera/core/impl/UseCaseConfig;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v6, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 264
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 279
    :cond_2
    move-object/from16 v3, p3

    check-cast v3, Ljava/util/Collection;

    new-instance v5, Landroidx/camera/core/internal/StreamSpecsCalculatorImpl$$ExternalSyntheticLambda0;

    invoke-direct {v5, v2, v0}, Landroidx/camera/core/internal/StreamSpecsCalculatorImpl$$ExternalSyntheticLambda0;-><init>(Ljava/util/Map;Landroidx/camera/core/impl/CameraInfoInternal;)V

    invoke-static {v3, v5}, Landroidx/camera/core/impl/utils/UseCaseUtil;->getVideoStabilization(Ljava/util/Collection;Lkotlin/jvm/functions/Function1;)Landroidx/camera/core/impl/stabilization/VideoStabilization;

    move-result-object v7

    .line 291
    iget-object v2, p0, Landroidx/camera/core/internal/StreamSpecsCalculatorImpl;->cameraDeviceSurfaceManager:Landroidx/camera/core/impl/CameraDeviceSurfaceManager;

    if-eqz v2, :cond_7

    .line 295
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 298
    invoke-static {v3}, Landroidx/camera/core/impl/utils/UseCaseUtil;->containsVideoCapture(Ljava/util/Collection;)Z

    move-result v8

    move v3, p1

    move/from16 v9, p6

    move/from16 v10, p7

    .line 292
    invoke-interface/range {v2 .. v10}, Landroidx/camera/core/impl/CameraDeviceSurfaceManager;->getSuggestedStreamSpecs(ILjava/lang/String;Ljava/util/List;Ljava/util/Map;Landroidx/camera/core/impl/stabilization/VideoStabilization;ZZZ)Landroidx/camera/core/impl/SurfaceStreamSpecQueryResult;

    move-result-object p1

    const-string v0, "getSuggestedStreamSpecs(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 290
    invoke-virtual {p1}, Landroidx/camera/core/impl/SurfaceStreamSpecQueryResult;->component1()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/camera/core/impl/SurfaceStreamSpecQueryResult;->component2()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p1}, Landroidx/camera/core/impl/SurfaceStreamSpecQueryResult;->component3()I

    move-result p1

    .line 303
    invoke-interface {v12}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 305
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 306
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 304
    invoke-interface {v11, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 306
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 309
    :cond_4
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 310
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 312
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 313
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 311
    invoke-interface {v11, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 312
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 291
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    const p1, 0x7fffffff

    .line 320
    :cond_9
    new-instance v0, Landroidx/camera/core/internal/StreamSpecQueryResult;

    invoke-direct {v0, v11, p1}, Landroidx/camera/core/internal/StreamSpecQueryResult;-><init>(Ljava/util/Map;I)V

    return-object v0
.end method

.method private static final calculateSuggestedStreamSpecsForNewUseCases$lambda$0(Ljava/util/Map;Landroidx/camera/core/impl/CameraInfoInternal;Landroidx/camera/core/UseCase;)Landroidx/camera/core/impl/UseCaseConfig;
    .locals 1

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 280
    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    check-cast p0, Landroidx/camera/core/internal/CameraUseCaseAdapter$ConfigPair;

    .line 284
    iget-object v0, p0, Landroidx/camera/core/internal/CameraUseCaseAdapter$ConfigPair;->mExtendedConfig:Landroidx/camera/core/impl/UseCaseConfig;

    .line 285
    iget-object p0, p0, Landroidx/camera/core/internal/CameraUseCaseAdapter$ConfigPair;->mCameraConfig:Landroidx/camera/core/impl/UseCaseConfig;

    .line 282
    invoke-virtual {p2, p1, v0, p0}, Landroidx/camera/core/UseCase;->mergeConfigs(Landroidx/camera/core/impl/CameraInfoInternal;Landroidx/camera/core/impl/UseCaseConfig;Landroidx/camera/core/impl/UseCaseConfig;)Landroidx/camera/core/impl/UseCaseConfig;

    move-result-object p0

    const-string p1, "mergeConfigs(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    .line 280
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Required value was null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public calculateSuggestedStreamSpecs(ILandroidx/camera/core/impl/CameraInfoInternal;Ljava/util/List;Ljava/util/List;Landroidx/camera/core/impl/CameraConfig;ILandroid/util/Range;ZZ)Landroidx/camera/core/internal/StreamSpecQueryResult;
    .locals 11

    move-object/from16 v4, p7

    const-string v5, "cameraInfoInternal"

    invoke-static {p2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "newUseCases"

    invoke-static {p3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "attachedUseCases"

    invoke-static {p4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "cameraConfig"

    move-object/from16 v6, p5

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "targetFrameRate"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    invoke-direct {p0, p1, p2, p4}, Landroidx/camera/core/internal/StreamSpecsCalculatorImpl;->calculateSuggestedStreamSpecsForAttachedUseCases(ILandroidx/camera/core/impl/CameraInfoInternal;Ljava/util/List;)Landroid/util/Pair;

    move-result-object v8

    .line 162
    iget-object v1, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    const-string v7, "second"

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/util/Map;

    .line 164
    move-object v7, p3

    check-cast v7, Ljava/util/Collection;

    .line 165
    invoke-interface {v6}, Landroidx/camera/core/impl/CameraConfig;->getUseCaseConfigFactory()Landroidx/camera/core/impl/UseCaseConfigFactory;

    move-result-object v6

    .line 166
    iget-object v9, p0, Landroidx/camera/core/internal/StreamSpecsCalculatorImpl;->useCaseConfigFactory:Landroidx/camera/core/impl/UseCaseConfigFactory;

    move/from16 v10, p6

    .line 163
    invoke-static {v7, v6, v9, v10, v4}, Landroidx/camera/core/internal/CameraUseCaseAdapter;->getConfigs(Ljava/util/Collection;Landroidx/camera/core/impl/UseCaseConfigFactory;Landroidx/camera/core/impl/UseCaseConfigFactory;ILandroid/util/Range;)Ljava/util/Map;

    move-result-object v4

    const-string v6, "getConfigs(...)"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move/from16 v6, p8

    move/from16 v7, p9

    move-object v5, v4

    move-object v4, v1

    move v1, p1

    .line 158
    invoke-direct/range {v0 .. v7}, Landroidx/camera/core/internal/StreamSpecsCalculatorImpl;->calculateSuggestedStreamSpecsForNewUseCases(ILandroidx/camera/core/impl/CameraInfoInternal;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;ZZ)Landroidx/camera/core/internal/StreamSpecQueryResult;

    move-result-object v1

    .line 174
    new-instance v0, Landroidx/camera/core/internal/StreamSpecQueryResult;

    .line 175
    iget-object v2, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    const-string v3, "first"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/util/Map;

    invoke-virtual {v1}, Landroidx/camera/core/internal/StreamSpecQueryResult;->getStreamSpecs()Ljava/util/Map;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/collections/MapsKt;->plus(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    .line 176
    invoke-virtual {v1}, Landroidx/camera/core/internal/StreamSpecQueryResult;->getMaxSupportedFrameRate()I

    move-result v1

    .line 174
    invoke-direct {v0, v2, v1}, Landroidx/camera/core/internal/StreamSpecQueryResult;-><init>(Ljava/util/Map;I)V

    return-object v0
.end method

.method public setCameraDeviceSurfaceManager(Landroidx/camera/core/impl/CameraDeviceSurfaceManager;)V
    .locals 1

    const-string v0, "cameraDeviceSurfaceManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    iput-object p1, p0, Landroidx/camera/core/internal/StreamSpecsCalculatorImpl;->cameraDeviceSurfaceManager:Landroidx/camera/core/impl/CameraDeviceSurfaceManager;

    return-void
.end method
