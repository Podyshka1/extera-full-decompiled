.class public final Landroidx/camera/camera2/internal/DynamicRangeResolver;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/internal/DynamicRangeResolver$Api33Impl;
    }
.end annotation


# instance fields
.field private final cameraMetadata:Landroidx/camera/camera2/pipe/CameraMetadata;

.field private final dynamicRangesInfo:Landroidx/camera/camera2/compat/DynamicRangeProfilesCompat;

.field private final is10BitSupported:Z


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/CameraMetadata;)V
    .locals 2

    const-string v0, "cameraMetadata"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/internal/DynamicRangeResolver;->cameraMetadata:Landroidx/camera/camera2/pipe/CameraMetadata;

    .line 35
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_CAPABILITIES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "REQUEST_AVAILABLE_CAPABILITIES"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Landroidx/camera/camera2/pipe/CameraMetadata;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    if-eqz v0, :cond_0

    const/16 v1, 0x12

    .line 37
    invoke-static {v0, v1}, Lkotlin/collections/ArraysKt;->contains([II)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 36
    :goto_0
    iput-boolean v0, p0, Landroidx/camera/camera2/internal/DynamicRangeResolver;->is10BitSupported:Z

    .line 40
    sget-object v0, Landroidx/camera/camera2/compat/DynamicRangeProfilesCompat;->Companion:Landroidx/camera/camera2/compat/DynamicRangeProfilesCompat$Companion;

    invoke-virtual {v0, p1}, Landroidx/camera/camera2/compat/DynamicRangeProfilesCompat$Companion;->fromCameraMetaData(Landroidx/camera/camera2/pipe/CameraMetadata;)Landroidx/camera/camera2/compat/DynamicRangeProfilesCompat;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/internal/DynamicRangeResolver;->dynamicRangesInfo:Landroidx/camera/camera2/compat/DynamicRangeProfilesCompat;

    return-void
.end method

.method private final canResolveDynamicRange(Landroidx/camera/core/DynamicRange;Landroidx/camera/core/DynamicRange;)Z
    .locals 4

    .line 449
    invoke-virtual {p2}, Landroidx/camera/core/DynamicRange;->isFullySpecified()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 453
    invoke-virtual {p1}, Landroidx/camera/core/DynamicRange;->getEncoding()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    .line 454
    invoke-virtual {p2}, Landroidx/camera/core/DynamicRange;->getEncoding()I

    move-result v0

    if-ne v0, v1, :cond_0

    return v3

    .line 459
    :cond_0
    invoke-virtual {p1}, Landroidx/camera/core/DynamicRange;->getEncoding()I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 460
    invoke-virtual {p1}, Landroidx/camera/core/DynamicRange;->getEncoding()I

    move-result v0

    if-eqz v0, :cond_1

    .line 461
    invoke-virtual {p1}, Landroidx/camera/core/DynamicRange;->getEncoding()I

    move-result v0

    invoke-virtual {p2}, Landroidx/camera/core/DynamicRange;->getEncoding()I

    move-result v2

    if-eq v0, v2, :cond_1

    return v3

    .line 465
    :cond_1
    invoke-virtual {p1}, Landroidx/camera/core/DynamicRange;->getBitDepth()I

    move-result v0

    if-eqz v0, :cond_3

    .line 466
    invoke-virtual {p1}, Landroidx/camera/core/DynamicRange;->getBitDepth()I

    move-result p1

    invoke-virtual {p2}, Landroidx/camera/core/DynamicRange;->getBitDepth()I

    move-result p2

    if-ne p1, p2, :cond_2

    goto :goto_0

    :cond_2
    return v3

    :cond_3
    :goto_0
    return v1

    .line 450
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Fully specified range "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " not actually fully specified."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 449
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private final canResolveWithinConstraints(Landroidx/camera/core/DynamicRange;Landroidx/camera/core/DynamicRange;Ljava/util/Set;)Z
    .locals 2

    .line 425
    invoke-interface {p3, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 426
    sget-object p3, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    .line 85
    const-string p3, "CXCP"

    invoke-static {p3}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 86
    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object p3

    .line 427
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DynamicRangeResolver: Candidate Dynamic range is not within constraints.\nDynamic range to resolve:\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 429
    const-string p1, "\nCandidate dynamic range:\n  "

    .line 427
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 86
    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 435
    :cond_1
    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/internal/DynamicRangeResolver;->canResolveDynamicRange(Landroidx/camera/core/DynamicRange;Landroidx/camera/core/DynamicRange;)Z

    move-result p1

    return p1
.end method

.method private final findSupportedHdrMatch(Landroidx/camera/core/DynamicRange;Ljava/util/Collection;Ljava/util/Set;)Landroidx/camera/core/DynamicRange;
    .locals 5

    .line 376
    invoke-virtual {p1}, Landroidx/camera/core/DynamicRange;->getEncoding()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return-object v1

    .line 379
    :cond_0
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/DynamicRange;

    .line 380
    invoke-virtual {v0}, Landroidx/camera/core/DynamicRange;->getEncoding()I

    move-result v3

    .line 381
    invoke-virtual {v0}, Landroidx/camera/core/DynamicRange;->isFullySpecified()Z

    move-result v4

    if-eqz v4, :cond_3

    if-ne v3, v2, :cond_2

    goto :goto_0

    .line 388
    :cond_2
    invoke-direct {p0, p1, v0, p3}, Landroidx/camera/camera2/internal/DynamicRangeResolver;->canResolveWithinConstraints(Landroidx/camera/core/DynamicRange;Landroidx/camera/core/DynamicRange;Ljava/util/Set;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v0

    .line 381
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Fully specified DynamicRange must have fully defined encoding."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    return-object v1
.end method

.method private final isFullyUnspecified(Landroidx/camera/core/DynamicRange;)Z
    .locals 1

    .line 397
    sget-object v0, Landroidx/camera/core/DynamicRange;->UNSPECIFIED:Landroidx/camera/core/DynamicRange;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private final isPartiallySpecified(Landroidx/camera/core/DynamicRange;)Z
    .locals 2

    .line 405
    invoke-virtual {p1}, Landroidx/camera/core/DynamicRange;->getEncoding()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 406
    invoke-virtual {p1}, Landroidx/camera/core/DynamicRange;->getEncoding()I

    move-result v0

    if-eqz v0, :cond_0

    .line 407
    invoke-virtual {p1}, Landroidx/camera/core/DynamicRange;->getBitDepth()I

    move-result v0

    if-eqz v0, :cond_2

    .line 408
    :cond_0
    invoke-virtual {p1}, Landroidx/camera/core/DynamicRange;->getEncoding()I

    move-result v0

    if-nez v0, :cond_1

    .line 409
    invoke-virtual {p1}, Landroidx/camera/core/DynamicRange;->getBitDepth()I

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private final resolveDynamicRange(Landroidx/camera/core/DynamicRange;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)Landroidx/camera/core/DynamicRange;
    .locals 6

    .line 187
    invoke-virtual {p1}, Landroidx/camera/core/DynamicRange;->isFullySpecified()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 188
    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-object p1

    :cond_0
    return-object v1

    .line 197
    :cond_1
    invoke-virtual {p1}, Landroidx/camera/core/DynamicRange;->getEncoding()I

    move-result v0

    .line 198
    invoke-virtual {p1}, Landroidx/camera/core/DynamicRange;->getBitDepth()I

    move-result v2

    const/4 v3, 0x1

    if-ne v0, v3, :cond_3

    if-nez v2, :cond_3

    .line 203
    sget-object p1, Landroidx/camera/core/DynamicRange;->SDR:Landroidx/camera/core/DynamicRange;

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    return-object p1

    :cond_2
    return-object v1

    .line 212
    :cond_3
    invoke-direct {p0, p1, p3, p2}, Landroidx/camera/camera2/internal/DynamicRangeResolver;->findSupportedHdrMatch(Landroidx/camera/core/DynamicRange;Ljava/util/Collection;Ljava/util/Set;)Landroidx/camera/core/DynamicRange;

    move-result-object p3

    .line 217
    const-string v3, "\n->\n"

    const-string v4, "DynamicRangeResolver: Resolved dynamic range for use case "

    const-string v5, "CXCP"

    if-eqz p3, :cond_5

    .line 218
    sget-object p2, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    .line 85
    invoke-static {v5}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 86
    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object p2

    .line 219
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, " from existing attached surface.\n"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 86
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-object p3

    .line 230
    :cond_5
    invoke-direct {p0, p1, p4, p2}, Landroidx/camera/camera2/internal/DynamicRangeResolver;->findSupportedHdrMatch(Landroidx/camera/core/DynamicRange;Ljava/util/Collection;Ljava/util/Set;)Landroidx/camera/core/DynamicRange;

    move-result-object p3

    if-eqz p3, :cond_7

    .line 236
    sget-object p2, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    .line 85
    invoke-static {v5}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 86
    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object p2

    .line 237
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, " from concurrently bound use case.\n"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 86
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-object p3

    .line 252
    :cond_7
    sget-object p3, Landroidx/camera/core/DynamicRange;->SDR:Landroidx/camera/core/DynamicRange;

    const-string p4, "SDR"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 250
    invoke-direct {p0, p1, p3, p2}, Landroidx/camera/camera2/internal/DynamicRangeResolver;->canResolveWithinConstraints(Landroidx/camera/core/DynamicRange;Landroidx/camera/core/DynamicRange;Ljava/util/Set;)Z

    move-result p4

    if-eqz p4, :cond_9

    .line 256
    sget-object p2, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    .line 85
    invoke-static {v5}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 86
    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object p2

    .line 257
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, " to no compatible HDR dynamic ranges.\n"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 86
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    return-object p3

    :cond_9
    const/4 p3, 0x2

    if-ne v0, p3, :cond_f

    const/16 p3, 0xa

    if-eq v2, p3, :cond_a

    if-nez v2, :cond_f

    .line 271
    :cond_a
    new-instance p3, Ljava/util/LinkedHashSet;

    invoke-direct {p3}, Ljava/util/LinkedHashSet;-><init>()V

    .line 275
    sget p4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x21

    if-lt p4, v0, :cond_b

    .line 276
    sget-object p4, Landroidx/camera/camera2/internal/DynamicRangeResolver$Api33Impl;->INSTANCE:Landroidx/camera/camera2/internal/DynamicRangeResolver$Api33Impl;

    iget-object v0, p0, Landroidx/camera/camera2/internal/DynamicRangeResolver;->cameraMetadata:Landroidx/camera/camera2/pipe/CameraMetadata;

    invoke-virtual {p4, v0}, Landroidx/camera/camera2/internal/DynamicRangeResolver$Api33Impl;->getRecommended10BitDynamicRange(Landroidx/camera/camera2/pipe/CameraMetadata;)Landroidx/camera/core/DynamicRange;

    move-result-object p4

    if-eqz p4, :cond_c

    .line 278
    invoke-interface {p3, p4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_b
    move-object p4, v1

    .line 283
    :cond_c
    :goto_0
    sget-object v0, Landroidx/camera/core/DynamicRange;->HLG_10_BIT:Landroidx/camera/core/DynamicRange;

    const-string v2, "HLG_10_BIT"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 285
    invoke-direct {p0, p1, p3, p2}, Landroidx/camera/camera2/internal/DynamicRangeResolver;->findSupportedHdrMatch(Landroidx/camera/core/DynamicRange;Ljava/util/Collection;Ljava/util/Set;)Landroidx/camera/core/DynamicRange;

    move-result-object p3

    if-eqz p3, :cond_f

    .line 287
    sget-object p2, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    .line 85
    invoke-static {v5}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_e

    .line 86
    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object p2

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    const-string p5, "from "

    .line 288
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_d

    const-string p4, "recommended"

    goto :goto_1

    .line 291
    :cond_d
    const-string p4, "required"

    .line 288
    :goto_1
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    const-string p4, " 10-bit supported dynamic range.\n"

    .line 288
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 86
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    return-object p3

    .line 306
    :cond_f
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_10
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_14

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/camera/core/DynamicRange;

    .line 307
    invoke-virtual {p3}, Landroidx/camera/core/DynamicRange;->isFullySpecified()Z

    move-result p4

    if-eqz p4, :cond_13

    .line 312
    sget-object p4, Landroidx/camera/core/DynamicRange;->SDR:Landroidx/camera/core/DynamicRange;

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_11

    goto :goto_2

    .line 315
    :cond_11
    invoke-direct {p0, p1, p3}, Landroidx/camera/camera2/internal/DynamicRangeResolver;->canResolveDynamicRange(Landroidx/camera/core/DynamicRange;Landroidx/camera/core/DynamicRange;)Z

    move-result p4

    if-eqz p4, :cond_10

    .line 316
    sget-object p2, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    .line 85
    invoke-static {v5}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_12

    .line 86
    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object p2

    .line 317
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, " from validated dynamic range constraints or supported HDR dynamic ranges.\n"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 86
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    return-object p3

    .line 307
    :cond_13
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Candidate dynamic range must be fully specified."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_14
    return-object v1
.end method

.method private final resolveDynamicRangeAndUpdateConstraints(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Landroidx/camera/core/impl/UseCaseConfig;Ljava/util/Set;)Landroidx/camera/core/DynamicRange;
    .locals 6

    .line 136
    invoke-interface {p4}, Landroidx/camera/core/impl/ImageInputConfig;->getDynamicRange()Landroidx/camera/core/DynamicRange;

    move-result-object v1

    const-string v0, "getDynamicRange(...)"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    invoke-interface {p4}, Landroidx/camera/core/internal/TargetConfig;->getTargetName()Ljava/lang/String;

    move-result-object v5

    const-string v0, "getTargetName(...)"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    move-object v2, p5

    .line 138
    invoke-direct/range {v0 .. v5}, Landroidx/camera/camera2/internal/DynamicRangeResolver;->resolveDynamicRange(Landroidx/camera/core/DynamicRange;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)Landroidx/camera/core/DynamicRange;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 146
    iget-object p1, v0, Landroidx/camera/camera2/internal/DynamicRangeResolver;->dynamicRangesInfo:Landroidx/camera/camera2/compat/DynamicRangeProfilesCompat;

    invoke-direct {p0, v2, p2, p1}, Landroidx/camera/camera2/internal/DynamicRangeResolver;->updateConstraints(Ljava/util/Set;Landroidx/camera/core/DynamicRange;Landroidx/camera/camera2/compat/DynamicRangeProfilesCompat;)V

    return-object p2

    .line 148
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 149
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Unable to resolve supported dynamic range. The dynamic range may not be supported on the device or may not be allowed concurrently with other attached use cases.\nUse case:\n  "

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    invoke-interface {p4}, Landroidx/camera/core/internal/TargetConfig;->getTargetName()Ljava/lang/String;

    move-result-object p4

    .line 149
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    const-string p4, "\nRequested dynamic range:\n  "

    .line 149
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 155
    const-string p4, "\nSupported dynamic ranges:\n  "

    .line 149
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 157
    const-string p1, "\nConstrained set of concurrent dynamic ranges:\n  "

    .line 149
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 148
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private final updateConstraints(Ljava/util/Set;Landroidx/camera/core/DynamicRange;Landroidx/camera/camera2/compat/DynamicRangeProfilesCompat;)V
    .locals 2

    .line 343
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 344
    const-string v1, "Cannot update already-empty constraints."

    .line 342
    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 347
    invoke-virtual {p3, p2}, Landroidx/camera/camera2/compat/DynamicRangeProfilesCompat;->getDynamicRangeCaptureRequestConstraints(Landroidx/camera/core/DynamicRange;)Ljava/util/Set;

    move-result-object p3

    .line 348
    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 350
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    .line 352
    invoke-interface {p1, p3}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 357
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 358
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Constraints of dynamic range cannot be combined with existing constraints.\nDynamic range:\n  "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 361
    const-string p2, "\nConstraints:\n  "

    .line 358
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 363
    const-string p2, "\nExisting constraints:\n  "

    .line 358
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 357
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final is10BitDynamicRangeSupported()Z
    .locals 1

    .line 44
    iget-boolean v0, p0, Landroidx/camera/camera2/internal/DynamicRangeResolver;->is10BitSupported:Z

    return v0
.end method

.method public final resolveAndValidateDynamicRanges(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/util/Map;
    .locals 9

    const-string v0, "existingSurfaces"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newUseCaseConfigs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "useCasePriorityOrder"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    .line 61
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v1, "getDynamicRange(...)"

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/impl/AttachedSurfaceInfo;

    .line 62
    invoke-virtual {v0}, Landroidx/camera/core/impl/AttachedSurfaceInfo;->getDynamicRange()Landroidx/camera/core/DynamicRange;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 66
    :cond_0
    iget-object p1, p0, Landroidx/camera/camera2/internal/DynamicRangeResolver;->dynamicRangesInfo:Landroidx/camera/camera2/compat/DynamicRangeProfilesCompat;

    invoke-virtual {p1}, Landroidx/camera/camera2/compat/DynamicRangeProfilesCompat;->getSupportedDynamicRanges()Ljava/util/Set;

    move-result-object v2

    .line 71
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toMutableSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v6

    .line 72
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/DynamicRange;

    .line 73
    iget-object v4, p0, Landroidx/camera/camera2/internal/DynamicRangeResolver;->dynamicRangesInfo:Landroidx/camera/camera2/compat/DynamicRangeProfilesCompat;

    invoke-direct {p0, v6, v0, v4}, Landroidx/camera/camera2/internal/DynamicRangeResolver;->updateConstraints(Ljava/util/Set;Landroidx/camera/core/DynamicRange;Landroidx/camera/camera2/compat/DynamicRangeProfilesCompat;)V

    goto :goto_1

    .line 87
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 89
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 90
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    .line 91
    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/camera/core/impl/UseCaseConfig;

    .line 92
    invoke-interface {v5}, Landroidx/camera/core/impl/ImageInputConfig;->getDynamicRange()Landroidx/camera/core/DynamicRange;

    move-result-object v7

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    invoke-direct {p0, v7}, Landroidx/camera/camera2/internal/DynamicRangeResolver;->isFullyUnspecified(Landroidx/camera/core/DynamicRange;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 94
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 95
    :cond_2
    invoke-direct {p0, v7}, Landroidx/camera/camera2/internal/DynamicRangeResolver;->isPartiallySpecified(Landroidx/camera/core/DynamicRange;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 96
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 98
    :cond_3
    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 101
    :cond_4
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    move-object p3, v4

    .line 105
    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    .line 108
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 109
    invoke-interface {v7, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 110
    invoke-interface {v7, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 111
    invoke-interface {v7, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 112
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p3, 0x0

    :cond_5
    :goto_3
    if-ge p3, p1, :cond_6

    invoke-virtual {v7, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 p3, p3, 0x1

    move-object v5, v0

    check-cast v5, Landroidx/camera/core/impl/UseCaseConfig;

    move-object v1, p0

    .line 114
    invoke-direct/range {v1 .. v6}, Landroidx/camera/camera2/internal/DynamicRangeResolver;->resolveDynamicRangeAndUpdateConstraints(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Landroidx/camera/core/impl/UseCaseConfig;Ljava/util/Set;)Landroidx/camera/core/DynamicRange;

    move-result-object v0

    .line 121
    invoke-interface {p2, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 123
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    return-object p2
.end method
