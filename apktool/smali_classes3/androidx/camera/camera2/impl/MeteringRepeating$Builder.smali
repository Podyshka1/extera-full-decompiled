.class public final Landroidx/camera/camera2/impl/MeteringRepeating$Builder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/UseCaseConfig$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/impl/MeteringRepeating;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final cameraProperties:Landroidx/camera/camera2/impl/CameraProperties;

.field private final displayInfoManager:Landroidx/camera/camera2/impl/DisplayInfoManager;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/impl/CameraProperties;Landroidx/camera/camera2/impl/DisplayInfoManager;)V
    .locals 1

    const-string v0, "cameraProperties"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "displayInfoManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    iput-object p1, p0, Landroidx/camera/camera2/impl/MeteringRepeating$Builder;->cameraProperties:Landroidx/camera/camera2/impl/CameraProperties;

    .line 172
    iput-object p2, p0, Landroidx/camera/camera2/impl/MeteringRepeating$Builder;->displayInfoManager:Landroidx/camera/camera2/impl/DisplayInfoManager;

    return-void
.end method


# virtual methods
.method public build()Landroidx/camera/camera2/impl/MeteringRepeating;
    .locals 4

    .line 206
    new-instance v0, Landroidx/camera/camera2/impl/MeteringRepeating;

    iget-object v1, p0, Landroidx/camera/camera2/impl/MeteringRepeating$Builder;->cameraProperties:Landroidx/camera/camera2/impl/CameraProperties;

    invoke-virtual {p0}, Landroidx/camera/camera2/impl/MeteringRepeating$Builder;->getUseCaseConfig()Landroidx/camera/camera2/impl/MeteringRepeating$MeteringRepeatingConfig;

    move-result-object v2

    iget-object v3, p0, Landroidx/camera/camera2/impl/MeteringRepeating$Builder;->displayInfoManager:Landroidx/camera/camera2/impl/DisplayInfoManager;

    invoke-direct {v0, v1, v2, v3}, Landroidx/camera/camera2/impl/MeteringRepeating;-><init>(Landroidx/camera/camera2/impl/CameraProperties;Landroidx/camera/camera2/impl/MeteringRepeating$MeteringRepeatingConfig;Landroidx/camera/camera2/impl/DisplayInfoManager;)V

    return-object v0
.end method

.method public bridge synthetic getMutableConfig()Landroidx/camera/core/impl/MutableConfig;
    .locals 1

    .line 170
    invoke-virtual {p0}, Landroidx/camera/camera2/impl/MeteringRepeating$Builder;->getMutableConfig()Landroidx/camera/core/impl/MutableOptionsBundle;

    move-result-object v0

    return-object v0
.end method

.method public getMutableConfig()Landroidx/camera/core/impl/MutableOptionsBundle;
    .locals 2

    .line 175
    invoke-static {}, Landroidx/camera/core/impl/MutableOptionsBundle;->create()Landroidx/camera/core/impl/MutableOptionsBundle;

    move-result-object v0

    const-string v1, "create(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getUseCaseConfig()Landroidx/camera/camera2/impl/MeteringRepeating$MeteringRepeatingConfig;
    .locals 1

    .line 177
    new-instance v0, Landroidx/camera/camera2/impl/MeteringRepeating$MeteringRepeatingConfig;

    invoke-direct {v0}, Landroidx/camera/camera2/impl/MeteringRepeating$MeteringRepeatingConfig;-><init>()V

    return-object v0
.end method

.method public bridge synthetic getUseCaseConfig()Landroidx/camera/core/impl/UseCaseConfig;
    .locals 1

    .line 170
    invoke-virtual {p0}, Landroidx/camera/camera2/impl/MeteringRepeating$Builder;->getUseCaseConfig()Landroidx/camera/camera2/impl/MeteringRepeating$MeteringRepeatingConfig;

    move-result-object v0

    return-object v0
.end method
