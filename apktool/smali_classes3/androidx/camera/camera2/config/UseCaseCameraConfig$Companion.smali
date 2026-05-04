.class public final Landroidx/camera/camera2/config/UseCaseCameraConfig$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/config/UseCaseCameraConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public static synthetic $r8$lambda$o-X4lbhDoh8cSXf19LhLAjDjp3A(Landroidx/camera/camera2/adapter/SessionConfigAdapter;ZLandroidx/camera/core/impl/SessionProcessor;Landroidx/camera/camera2/impl/CameraGraphConfigProvider;Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;)Landroidx/camera/camera2/impl/CameraGraphConfigProvider$CameraGraphCreationResult;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/camera/camera2/config/UseCaseCameraConfig$Companion;->create$lambda$0(Landroidx/camera/camera2/adapter/SessionConfigAdapter;ZLandroidx/camera/core/impl/SessionProcessor;Landroidx/camera/camera2/impl/CameraGraphConfigProvider;Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;)Landroidx/camera/camera2/impl/CameraGraphConfigProvider$CameraGraphCreationResult;

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>()V
    .locals 0

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Landroidx/camera/camera2/config/UseCaseCameraConfig$Companion;-><init>()V

    return-void
.end method

.method private static final create$lambda$0(Landroidx/camera/camera2/adapter/SessionConfigAdapter;ZLandroidx/camera/core/impl/SessionProcessor;Landroidx/camera/camera2/impl/CameraGraphConfigProvider;Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;)Landroidx/camera/camera2/impl/CameraGraphConfigProvider$CameraGraphCreationResult;
    .locals 8

    .line 158
    invoke-virtual {p0}, Landroidx/camera/camera2/adapter/SessionConfigAdapter;->getValidSessionConfigOrNull()Landroidx/camera/core/impl/SessionConfig;

    move-result-object v2

    if-eqz p1, :cond_0

    .line 162
    sget-object v0, Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode;->Companion:Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode$Companion;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode$Companion;->getEXTENSION-2uNL3no()I

    move-result v0

    :goto_0
    move v1, v0

    goto :goto_1

    :cond_0
    if-nez v2, :cond_1

    .line 163
    sget-object v0, Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode;->Companion:Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode$Companion;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode$Companion;->getNORMAL-2uNL3no()I

    move-result v0

    goto :goto_0

    .line 164
    :cond_1
    invoke-virtual {v2}, Landroidx/camera/core/impl/SessionConfig;->getSessionType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    sget-object v0, Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode;->Companion:Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode$Companion;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode$Companion;->getHIGH_SPEED-2uNL3no()I

    move-result v0

    goto :goto_0

    .line 165
    :cond_2
    invoke-virtual {v2}, Landroidx/camera/core/impl/SessionConfig;->getSessionType()I

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode;->Companion:Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode$Companion;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode$Companion;->getNORMAL-2uNL3no()I

    move-result v0

    goto :goto_0

    .line 166
    :cond_3
    sget-object v0, Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode;->Companion:Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode$Companion;

    invoke-virtual {v2}, Landroidx/camera/core/impl/SessionConfig;->getSessionType()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode$Companion;->custom-EP6OhB0(I)I

    move-result v0

    goto :goto_0

    :goto_1
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    .line 171
    invoke-interface {p2}, Landroidx/camera/core/impl/SessionProcessor;->getImplementationType()Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    :cond_4
    move-object v5, v0

    .line 182
    invoke-virtual {p0}, Landroidx/camera/camera2/adapter/SessionConfigAdapter;->getSurfaceToStreamUseCaseMap()Ljava/util/Map;

    move-result-object v6

    .line 183
    invoke-virtual {p0}, Landroidx/camera/camera2/adapter/SessionConfigAdapter;->getSurfaceToStreamUseHintMap()Ljava/util/Map;

    move-result-object v7

    const/4 v3, 0x0

    move-object v0, p3

    move-object v4, p4

    .line 176
    invoke-virtual/range {v0 .. v7}, Landroidx/camera/camera2/impl/CameraGraphConfigProvider;->create-79VDu0o(ILandroidx/camera/core/impl/SessionConfig;ZLandroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;Ljava/lang/Integer;Ljava/util/Map;Ljava/util/Map;)Landroidx/camera/camera2/impl/CameraGraphConfigProvider$CameraGraphCreationResult;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final create(Landroidx/camera/camera2/adapter/SessionConfigAdapter;Landroidx/camera/camera2/impl/CameraGraphConfigProvider;Lkotlin/jvm/functions/Function1;Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;Landroidx/camera/core/impl/SessionProcessor;Z)Landroidx/camera/camera2/config/UseCaseCameraConfig;
    .locals 7

    const-string/jumbo v0, "sessionConfigAdapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cameraGraphConfigProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cameraGraphFactory"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "graphStateToCameraStateAdapter"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    new-instance v1, Landroidx/camera/camera2/config/UseCaseCameraConfig$Companion$$ExternalSyntheticLambda0;

    move-object v2, p1

    move-object v5, p2

    move-object v6, p4

    move-object v4, p5

    move v3, p6

    invoke-direct/range {v1 .. v6}, Landroidx/camera/camera2/config/UseCaseCameraConfig$Companion$$ExternalSyntheticLambda0;-><init>(Landroidx/camera/camera2/adapter/SessionConfigAdapter;ZLandroidx/camera/core/impl/SessionProcessor;Landroidx/camera/camera2/impl/CameraGraphConfigProvider;Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;)V

    move-object p4, v2

    invoke-static {v1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p6

    .line 187
    new-instance p1, Landroidx/camera/camera2/config/UseCaseCameraConfig;

    move-object p2, p3

    move-object p3, v6

    invoke-direct/range {p1 .. p6}, Landroidx/camera/camera2/config/UseCaseCameraConfig;-><init>(Lkotlin/jvm/functions/Function1;Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;Landroidx/camera/camera2/adapter/SessionConfigAdapter;Landroidx/camera/core/impl/SessionProcessor;Lkotlin/Lazy;)V

    return-object p1
.end method
