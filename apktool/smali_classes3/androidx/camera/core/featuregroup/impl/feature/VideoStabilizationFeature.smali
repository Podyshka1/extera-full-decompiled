.class public final Landroidx/camera/core/featuregroup/impl/feature/VideoStabilizationFeature;
.super Landroidx/camera/core/featuregroup/GroupableFeature;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/featuregroup/impl/feature/VideoStabilizationFeature$Companion;,
        Landroidx/camera/core/featuregroup/impl/feature/VideoStabilizationFeature$WhenMappings;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/core/featuregroup/impl/feature/VideoStabilizationFeature$Companion;

.field public static final DEFAULT_STABILIZATION:Landroidx/camera/core/impl/stabilization/VideoStabilization;


# instance fields
.field private final featureTypeInternal:Landroidx/camera/core/featuregroup/impl/feature/FeatureTypeInternal;

.field private final videoStabilization:Landroidx/camera/core/impl/stabilization/VideoStabilization;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/core/featuregroup/impl/feature/VideoStabilizationFeature$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/core/featuregroup/impl/feature/VideoStabilizationFeature$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/camera/core/featuregroup/impl/feature/VideoStabilizationFeature;->Companion:Landroidx/camera/core/featuregroup/impl/feature/VideoStabilizationFeature$Companion;

    .line 54
    sget-object v0, Landroidx/camera/core/impl/stabilization/VideoStabilization;->OFF:Landroidx/camera/core/impl/stabilization/VideoStabilization;

    sput-object v0, Landroidx/camera/core/featuregroup/impl/feature/VideoStabilizationFeature;->DEFAULT_STABILIZATION:Landroidx/camera/core/impl/stabilization/VideoStabilization;

    return-void
.end method

.method public constructor <init>(Landroidx/camera/core/impl/stabilization/VideoStabilization;)V
    .locals 1

    const-string/jumbo v0, "videoStabilization"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0}, Landroidx/camera/core/featuregroup/GroupableFeature;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/featuregroup/impl/feature/VideoStabilizationFeature;->videoStabilization:Landroidx/camera/core/impl/stabilization/VideoStabilization;

    .line 36
    sget-object p1, Landroidx/camera/core/featuregroup/impl/feature/FeatureTypeInternal;->VIDEO_STABILIZATION:Landroidx/camera/core/featuregroup/impl/feature/FeatureTypeInternal;

    iput-object p1, p0, Landroidx/camera/core/featuregroup/impl/feature/VideoStabilizationFeature;->featureTypeInternal:Landroidx/camera/core/featuregroup/impl/feature/FeatureTypeInternal;

    return-void
.end method


# virtual methods
.method public getFeatureTypeInternal()Landroidx/camera/core/featuregroup/impl/feature/FeatureTypeInternal;
    .locals 1

    .line 36
    iget-object v0, p0, Landroidx/camera/core/featuregroup/impl/feature/VideoStabilizationFeature;->featureTypeInternal:Landroidx/camera/core/featuregroup/impl/feature/FeatureTypeInternal;

    return-object v0
.end method

.method public final getVideoStabilization()Landroidx/camera/core/impl/stabilization/VideoStabilization;
    .locals 1

    .line 34
    iget-object v0, p0, Landroidx/camera/core/featuregroup/impl/feature/VideoStabilizationFeature;->videoStabilization:Landroidx/camera/core/impl/stabilization/VideoStabilization;

    return-object v0
.end method

.method public isSupportedIndividually(Landroidx/camera/core/impl/CameraInfoInternal;Landroidx/camera/core/SessionConfig;)Z
    .locals 2

    const-string v0, "cameraInfoInternal"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "sessionConfig"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iget-object p2, p0, Landroidx/camera/core/featuregroup/impl/feature/VideoStabilizationFeature;->videoStabilization:Landroidx/camera/core/impl/stabilization/VideoStabilization;

    sget-object v0, Landroidx/camera/core/featuregroup/impl/feature/VideoStabilizationFeature$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_3

    const/4 v1, 0x2

    if-eq p2, v1, :cond_2

    const/4 p1, 0x3

    if-eq p2, p1, :cond_1

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_1
    :goto_0
    return v0

    .line 44
    :cond_2
    invoke-interface {p1}, Landroidx/camera/core/impl/CameraInfoInternal;->isPreviewStabilizationSupported()Z

    move-result p1

    return p1

    .line 43
    :cond_3
    invoke-interface {p1}, Landroidx/camera/core/impl/CameraInfoInternal;->isVideoStabilizationSupported()Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoStabilizationFeature(mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/core/featuregroup/impl/feature/VideoStabilizationFeature;->videoStabilization:Landroidx/camera/core/impl/stabilization/VideoStabilization;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
