.class public final Landroidx/camera/camera2/adapter/ZslControlNoOpImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/adapter/ZslControl;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addZslConfig(Landroidx/camera/core/impl/SessionConfig$Builder;)V
    .locals 1

    const-string/jumbo v0, "sessionConfigBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public clearZslConfig()V
    .locals 0

    return-void
.end method

.method public dequeueImageFromBuffer()Landroidx/camera/core/ImageProxy;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isZslDisabledByFlashMode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isZslDisabledByUserCaseConfig()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isZslSurface(Landroidx/camera/core/impl/DeferrableSurface;Landroidx/camera/core/impl/SessionConfig;)Z
    .locals 1

    const-string/jumbo v0, "surface"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p1, "sessionConfig"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public setZslDisabledByFlashMode(Z)V
    .locals 0

    return-void
.end method

.method public setZslDisabledByUserCaseConfig(Z)V
    .locals 0

    return-void
.end method
