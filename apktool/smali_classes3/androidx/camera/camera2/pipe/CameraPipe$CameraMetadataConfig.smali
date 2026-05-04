.class public final Landroidx/camera/camera2/pipe/CameraPipe$CameraMetadataConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/CameraPipe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CameraMetadataConfig"
.end annotation


# instance fields
.field private final cacheBlocklist:Ljava/util/Set;

.field private final cameraCacheBlocklist:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/util/Set;Ljava/util/Map;)V
    .locals 1

    const-string v0, "cacheBlocklist"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cameraCacheBlocklist"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    iput-object p1, p0, Landroidx/camera/camera2/pipe/CameraPipe$CameraMetadataConfig;->cacheBlocklist:Ljava/util/Set;

    .line 206
    iput-object p2, p0, Landroidx/camera/camera2/pipe/CameraPipe$CameraMetadataConfig;->cameraCacheBlocklist:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/Set;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    .line 205
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object p1

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 207
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p2

    .line 204
    :cond_1
    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/pipe/CameraPipe$CameraMetadataConfig;-><init>(Ljava/util/Set;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public final getCacheBlocklist()Ljava/util/Set;
    .locals 1

    .line 205
    iget-object v0, p0, Landroidx/camera/camera2/pipe/CameraPipe$CameraMetadataConfig;->cacheBlocklist:Ljava/util/Set;

    return-object v0
.end method

.method public final getCameraCacheBlocklist()Ljava/util/Map;
    .locals 1

    .line 206
    iget-object v0, p0, Landroidx/camera/camera2/pipe/CameraPipe$CameraMetadataConfig;->cameraCacheBlocklist:Ljava/util/Map;

    return-object v0
.end method
