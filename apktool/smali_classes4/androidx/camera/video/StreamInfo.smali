.class public abstract Landroidx/camera/video/StreamInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/video/StreamInfo$StreamState;
    }
.end annotation


# static fields
.field static final ALWAYS_ACTIVE_OBSERVABLE:Landroidx/camera/core/impl/Observable;

.field static final NON_SURFACE_STREAM_ID:Ljava/util/Set;

.field static final STREAM_INFO_ANY_INACTIVE:Landroidx/camera/video/StreamInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 50
    sget-object v0, Landroidx/camera/video/StreamInfo$StreamState;->INACTIVE:Landroidx/camera/video/StreamInfo$StreamState;

    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroidx/camera/video/StreamInfo;->of(ILandroidx/camera/video/StreamInfo$StreamState;)Landroidx/camera/video/StreamInfo;

    move-result-object v0

    sput-object v0, Landroidx/camera/video/StreamInfo;->STREAM_INFO_ANY_INACTIVE:Landroidx/camera/video/StreamInfo;

    .line 53
    new-instance v0, Ljava/util/HashSet;

    .line 54
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Integer;

    aput-object v2, v4, v1

    const/4 v2, 0x1

    aput-object v3, v4, v2

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 53
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Landroidx/camera/video/StreamInfo;->NON_SURFACE_STREAM_ID:Ljava/util/Set;

    .line 56
    sget-object v0, Landroidx/camera/video/StreamInfo$StreamState;->ACTIVE:Landroidx/camera/video/StreamInfo$StreamState;

    .line 57
    invoke-static {v1, v0}, Landroidx/camera/video/StreamInfo;->of(ILandroidx/camera/video/StreamInfo$StreamState;)Landroidx/camera/video/StreamInfo;

    move-result-object v0

    invoke-static {v0}, Landroidx/camera/core/impl/ConstantObservable;->withValue(Ljava/lang/Object;)Landroidx/camera/core/impl/Observable;

    move-result-object v0

    sput-object v0, Landroidx/camera/video/StreamInfo;->ALWAYS_ACTIVE_OBSERVABLE:Landroidx/camera/core/impl/Observable;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static of(ILandroidx/camera/video/StreamInfo$StreamState;)Landroidx/camera/video/StreamInfo;
    .locals 2

    .line 77
    new-instance v0, Landroidx/camera/video/AutoValue_StreamInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroidx/camera/video/AutoValue_StreamInfo;-><init>(ILandroidx/camera/video/StreamInfo$StreamState;Landroidx/camera/core/SurfaceRequest$TransformationInfo;)V

    return-object v0
.end method

.method static of(ILandroidx/camera/video/StreamInfo$StreamState;Landroidx/camera/core/SurfaceRequest$TransformationInfo;)Landroidx/camera/video/StreamInfo;
    .locals 1

    .line 82
    new-instance v0, Landroidx/camera/video/AutoValue_StreamInfo;

    invoke-direct {v0, p0, p1, p2}, Landroidx/camera/video/AutoValue_StreamInfo;-><init>(ILandroidx/camera/video/StreamInfo$StreamState;Landroidx/camera/core/SurfaceRequest$TransformationInfo;)V

    return-object v0
.end method


# virtual methods
.method public abstract getId()I
.end method

.method public abstract getInProgressTransformationInfo()Landroidx/camera/core/SurfaceRequest$TransformationInfo;
.end method

.method public abstract getStreamState()Landroidx/camera/video/StreamInfo$StreamState;
.end method
