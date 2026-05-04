.class final Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/config/CameraPipeComponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CameraPipeComponentImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl$SwitchingProvider;
    }
.end annotation


# instance fields
.field audioRestrictionControllerImplProvider:Ldagger/internal/Provider;

.field camera2BackendProvider:Ldagger/internal/Provider;

.field camera2DeviceCacheProvider:Ldagger/internal/Provider;

.field camera2DeviceCloserImplProvider:Ldagger/internal/Provider;

.field camera2ErrorProcessorProvider:Ldagger/internal/Provider;

.field camera2MetadataCacheProvider:Ldagger/internal/Provider;

.field camera2QuirksProvider:Ldagger/internal/Provider;

.field cameraDevicesImplProvider:Ldagger/internal/Provider;

.field private final cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

.field private final cameraPipeConfigModule:Landroidx/camera/camera2/pipe/config/CameraPipeConfigModule;

.field cameraPipeLifetimeProvider:Ldagger/internal/Provider;

.field concurrentSessionSequencersProvider:Ldagger/internal/Provider;

.field permissionsProvider:Ldagger/internal/Provider;

.field provideCameraBackendsProvider:Ldagger/internal/Provider;

.field provideCameraContextProvider:Ldagger/internal/Provider;

.field provideCameraDeviceSetupCompatFactoryProvider:Ldagger/internal/Provider;

.field provideCameraManagerProvider:Ldagger/internal/Provider;

.field provideCameraPipeJobProvider:Ldagger/internal/Provider;

.field provideCameraSurfaceManagerProvider:Ldagger/internal/Provider;

.field provideDevicePolicyManagerWrapperProvider:Ldagger/internal/Provider;

.field providePackageManagerProvider:Ldagger/internal/Provider;

.field provideStrictModeProvider:Ldagger/internal/Provider;

.field provideThreadsProvider:Ldagger/internal/Provider;

.field pruningCamera2DeviceManagerProvider:Ldagger/internal/Provider;

.field retryingCameraStateOpenerImplProvider:Ldagger/internal/Provider;

.field systemTimeSourceProvider:Ldagger/internal/Provider;

.field private final threadConfigModule:Landroidx/camera/camera2/pipe/config/ThreadConfigModule;


# direct methods
.method constructor <init>(Landroidx/camera/camera2/pipe/config/CameraPipeConfigModule;Landroidx/camera/camera2/pipe/config/ThreadConfigModule;)V
    .locals 0

    .line 605
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 554
    iput-object p0, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    .line 606
    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->cameraPipeConfigModule:Landroidx/camera/camera2/pipe/config/CameraPipeConfigModule;

    .line 607
    iput-object p2, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->threadConfigModule:Landroidx/camera/camera2/pipe/config/ThreadConfigModule;

    .line 608
    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->initialize(Landroidx/camera/camera2/pipe/config/CameraPipeConfigModule;Landroidx/camera/camera2/pipe/config/ThreadConfigModule;)V

    return-void
.end method

.method static synthetic access$600(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;)Landroidx/camera/camera2/pipe/config/CameraPipeConfigModule;
    .locals 0

    .line 549
    iget-object p0, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->cameraPipeConfigModule:Landroidx/camera/camera2/pipe/config/CameraPipeConfigModule;

    return-object p0
.end method

.method static synthetic access$800(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;)Landroidx/camera/camera2/pipe/config/ThreadConfigModule;
    .locals 0

    .line 549
    iget-object p0, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->threadConfigModule:Landroidx/camera/camera2/pipe/config/ThreadConfigModule;

    return-object p0
.end method

.method private initialize(Landroidx/camera/camera2/pipe/config/CameraPipeConfigModule;Landroidx/camera/camera2/pipe/config/ThreadConfigModule;)V
    .locals 1

    .line 647
    new-instance p1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl$SwitchingProvider;

    iget-object p2, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    const/4 v0, 0x1

    invoke-direct {p1, p2, v0}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;I)V

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->provideCameraPipeJobProvider:Ldagger/internal/Provider;

    .line 648
    new-instance p1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl$SwitchingProvider;

    iget-object p2, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;I)V

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->cameraPipeLifetimeProvider:Ldagger/internal/Provider;

    .line 649
    new-instance p1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl$SwitchingProvider;

    iget-object p2, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    const/4 v0, 0x5

    invoke-direct {p1, p2, v0}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;I)V

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->provideThreadsProvider:Ldagger/internal/Provider;

    .line 650
    new-instance p1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl$SwitchingProvider;

    iget-object p2, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    const/4 v0, 0x7

    invoke-direct {p1, p2, v0}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;I)V

    invoke-static {p1}, Ldagger/internal/SingleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->provideCameraManagerProvider:Ldagger/internal/Provider;

    .line 651
    new-instance p1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl$SwitchingProvider;

    iget-object p2, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    const/16 v0, 0x8

    invoke-direct {p1, p2, v0}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;I)V

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->providePackageManagerProvider:Ldagger/internal/Provider;

    .line 652
    new-instance p1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl$SwitchingProvider;

    iget-object p2, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    const/16 v0, 0x9

    invoke-direct {p1, p2, v0}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;I)V

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->camera2ErrorProcessorProvider:Ldagger/internal/Provider;

    .line 653
    new-instance p1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl$SwitchingProvider;

    iget-object p2, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    const/16 v0, 0xa

    invoke-direct {p1, p2, v0}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;I)V

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->provideCameraDeviceSetupCompatFactoryProvider:Ldagger/internal/Provider;

    .line 654
    new-instance p1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl$SwitchingProvider;

    iget-object p2, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    const/4 v0, 0x6

    invoke-direct {p1, p2, v0}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;I)V

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->camera2DeviceCacheProvider:Ldagger/internal/Provider;

    .line 655
    new-instance p1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl$SwitchingProvider;

    iget-object p2, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    const/16 v0, 0xc

    invoke-direct {p1, p2, v0}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;I)V

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->permissionsProvider:Ldagger/internal/Provider;

    .line 656
    new-instance p1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl$SwitchingProvider;

    iget-object p2, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    const/16 v0, 0xd

    invoke-direct {p1, p2, v0}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;I)V

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->systemTimeSourceProvider:Ldagger/internal/Provider;

    .line 657
    new-instance p1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl$SwitchingProvider;

    iget-object p2, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    const/16 v0, 0xb

    invoke-direct {p1, p2, v0}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;I)V

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->camera2MetadataCacheProvider:Ldagger/internal/Provider;

    .line 658
    new-instance p1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl$SwitchingProvider;

    iget-object p2, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    const/16 v0, 0x11

    invoke-direct {p1, p2, v0}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;I)V

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->provideStrictModeProvider:Ldagger/internal/Provider;

    .line 659
    new-instance p1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl$SwitchingProvider;

    iget-object p2, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    const/16 v0, 0x10

    invoke-direct {p1, p2, v0}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;I)V

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->camera2QuirksProvider:Ldagger/internal/Provider;

    .line 660
    new-instance p1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl$SwitchingProvider;

    iget-object p2, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    const/16 v0, 0x12

    invoke-direct {p1, p2, v0}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;I)V

    invoke-static {p1}, Ldagger/internal/SingleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->provideDevicePolicyManagerWrapperProvider:Ldagger/internal/Provider;

    .line 661
    new-instance p1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl$SwitchingProvider;

    iget-object p2, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    const/16 v0, 0x13

    invoke-direct {p1, p2, v0}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;I)V

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->audioRestrictionControllerImplProvider:Ldagger/internal/Provider;

    .line 662
    new-instance p1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl$SwitchingProvider;

    iget-object p2, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    const/16 v0, 0xf

    invoke-direct {p1, p2, v0}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;I)V

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->retryingCameraStateOpenerImplProvider:Ldagger/internal/Provider;

    .line 663
    new-instance p1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl$SwitchingProvider;

    iget-object p2, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    const/16 v0, 0x14

    invoke-direct {p1, p2, v0}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;I)V

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->camera2DeviceCloserImplProvider:Ldagger/internal/Provider;

    .line 664
    new-instance p1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl$SwitchingProvider;

    iget-object p2, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    const/16 v0, 0xe

    invoke-direct {p1, p2, v0}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;I)V

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->pruningCamera2DeviceManagerProvider:Ldagger/internal/Provider;

    .line 665
    new-instance p1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl$SwitchingProvider;

    iget-object p2, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    const/4 v0, 0x4

    invoke-direct {p1, p2, v0}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;I)V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->camera2BackendProvider:Ldagger/internal/Provider;

    .line 666
    new-instance p1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl$SwitchingProvider;

    iget-object p2, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    const/4 v0, 0x3

    invoke-direct {p1, p2, v0}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;I)V

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->provideCameraBackendsProvider:Ldagger/internal/Provider;

    .line 667
    new-instance p1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl$SwitchingProvider;

    iget-object p2, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    const/4 v0, 0x2

    invoke-direct {p1, p2, v0}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;I)V

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->cameraDevicesImplProvider:Ldagger/internal/Provider;

    .line 668
    new-instance p1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl$SwitchingProvider;

    iget-object p2, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    const/16 v0, 0x15

    invoke-direct {p1, p2, v0}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;I)V

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->provideCameraContextProvider:Ldagger/internal/Provider;

    .line 669
    new-instance p1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl$SwitchingProvider;

    iget-object p2, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    const/16 v0, 0x16

    invoke-direct {p1, p2, v0}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;I)V

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->provideCameraSurfaceManagerProvider:Ldagger/internal/Provider;

    .line 670
    new-instance p1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl$SwitchingProvider;

    iget-object p2, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    const/16 v0, 0x17

    invoke-direct {p1, p2, v0}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;I)V

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->concurrentSessionSequencersProvider:Ldagger/internal/Provider;

    return-void
.end method


# virtual methods
.method camera2CameraAvailabilityMonitor()Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor;
    .locals 4

    .line 633
    new-instance v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->provideCameraManagerProvider:Ldagger/internal/Provider;

    iget-object v2, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->provideThreadsProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/camera2/pipe/core/Threads;

    iget-object v3, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->provideCameraPipeJobProvider:Ldagger/internal/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlinx/coroutines/Job;

    invoke-direct {v0, v1, v2, v3}, Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor;-><init>(Ljavax/inject/Provider;Landroidx/camera/camera2/pipe/core/Threads;Lkotlinx/coroutines/Job;)V

    return-object v0
.end method

.method camera2CameraOpener()Landroidx/camera/camera2/pipe/compat/Camera2CameraOpener;
    .locals 3

    .line 621
    new-instance v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraOpener;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->provideCameraManagerProvider:Ldagger/internal/Provider;

    iget-object v2, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->provideThreadsProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/camera2/pipe/core/Threads;

    invoke-direct {v0, v1, v2}, Landroidx/camera/camera2/pipe/compat/Camera2CameraOpener;-><init>(Ljavax/inject/Provider;Landroidx/camera/camera2/pipe/core/Threads;)V

    return-object v0
.end method

.method public cameraBackends()Landroidx/camera/camera2/pipe/CameraBackends;
    .locals 1

    .line 695
    iget-object v0, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->provideCameraBackendsProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/camera2/pipe/CameraBackends;

    return-object v0
.end method

.method public cameraContext()Landroidx/camera/camera2/pipe/CameraContext;
    .locals 1

    .line 700
    iget-object v0, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->provideCameraContextProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/camera2/pipe/CameraContext;

    return-object v0
.end method

.method public cameraGraphComponentBuilder()Landroidx/camera/camera2/pipe/config/CameraGraphComponent$Builder;
    .locals 3

    .line 680
    new-instance v0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentBuilder;-><init>(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$1;)V

    return-object v0
.end method

.method cameraInteropConfig()Landroidx/camera/camera2/pipe/CameraPipe$CameraInteropConfig;
    .locals 2

    .line 625
    iget-object v0, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->cameraPipeConfigModule:Landroidx/camera/camera2/pipe/config/CameraPipeConfigModule;

    invoke-static {v0}, Landroidx/camera/camera2/pipe/config/CameraPipeConfigModule_ProvideCameraPipeConfigFactory;->provideCameraPipeConfig(Landroidx/camera/camera2/pipe/config/CameraPipeConfigModule;)Landroidx/camera/camera2/pipe/CameraPipe$Config;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/camera/camera2/pipe/config/CameraPipeConfigModule_ProvideCameraInteropConfigFactory;->provideCameraInteropConfig(Landroidx/camera/camera2/pipe/config/CameraPipeConfigModule;Landroidx/camera/camera2/pipe/CameraPipe$Config;)Landroidx/camera/camera2/pipe/CameraPipe$CameraInteropConfig;

    move-result-object v0

    return-object v0
.end method

.method cameraMetadataConfig()Landroidx/camera/camera2/pipe/CameraPipe$CameraMetadataConfig;
    .locals 1

    .line 617
    iget-object v0, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->cameraPipeConfigModule:Landroidx/camera/camera2/pipe/config/CameraPipeConfigModule;

    invoke-static {v0}, Landroidx/camera/camera2/pipe/config/CameraPipeConfigModule_ProvideCameraPipeConfigFactory;->provideCameraPipeConfig(Landroidx/camera/camera2/pipe/config/CameraPipeConfigModule;)Landroidx/camera/camera2/pipe/CameraPipe$Config;

    move-result-object v0

    invoke-static {v0}, Landroidx/camera/camera2/pipe/config/CameraPipeModule_Companion_ProvideCameraMetadataConfigFactory;->provideCameraMetadataConfig(Landroidx/camera/camera2/pipe/CameraPipe$Config;)Landroidx/camera/camera2/pipe/CameraPipe$CameraMetadataConfig;

    move-result-object v0

    return-object v0
.end method

.method cameraPipeContextContext()Landroid/content/Context;
    .locals 1

    .line 613
    iget-object v0, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->cameraPipeConfigModule:Landroidx/camera/camera2/pipe/config/CameraPipeConfigModule;

    invoke-static {v0}, Landroidx/camera/camera2/pipe/config/CameraPipeConfigModule_ProvideCameraPipeConfigFactory;->provideCameraPipeConfig(Landroidx/camera/camera2/pipe/config/CameraPipeConfigModule;)Landroidx/camera/camera2/pipe/CameraPipe$Config;

    move-result-object v0

    invoke-static {v0}, Landroidx/camera/camera2/pipe/config/CameraPipeModule_Companion_ProvideContextFactory;->provideContext(Landroidx/camera/camera2/pipe/CameraPipe$Config;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public cameraPipeLifetime()Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;
    .locals 1

    .line 675
    iget-object v0, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->cameraPipeLifetimeProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;

    return-object v0
.end method

.method cameraStateOpener()Landroidx/camera/camera2/pipe/compat/CameraStateOpener;
    .locals 8

    .line 629
    new-instance v0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->camera2CameraOpener()Landroidx/camera/camera2/pipe/compat/Camera2CameraOpener;

    move-result-object v1

    iget-object v2, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->camera2MetadataCacheProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/camera2/pipe/compat/Camera2MetadataProvider;

    iget-object v3, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->camera2ErrorProcessorProvider:Ldagger/internal/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/camera/camera2/pipe/internal/CameraErrorListener;

    iget-object v4, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->camera2QuirksProvider:Ldagger/internal/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/camera/camera2/pipe/compat/Camera2Quirks;

    iget-object v5, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->systemTimeSourceProvider:Ldagger/internal/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/camera/camera2/pipe/core/TimeSource;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->cameraInteropConfig()Landroidx/camera/camera2/pipe/CameraPipe$CameraInteropConfig;

    move-result-object v6

    iget-object v7, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->provideThreadsProvider:Ldagger/internal/Provider;

    invoke-interface {v7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/camera/camera2/pipe/core/Threads;

    invoke-direct/range {v0 .. v7}, Landroidx/camera/camera2/pipe/compat/CameraStateOpener;-><init>(Landroidx/camera/camera2/pipe/compat/CameraOpener;Landroidx/camera/camera2/pipe/compat/Camera2MetadataProvider;Landroidx/camera/camera2/pipe/internal/CameraErrorListener;Landroidx/camera/camera2/pipe/compat/Camera2Quirks;Landroidx/camera/camera2/pipe/core/TimeSource;Landroidx/camera/camera2/pipe/CameraPipe$CameraInteropConfig;Landroidx/camera/camera2/pipe/core/Threads;)V

    return-object v0
.end method

.method public cameraSurfaceManager()Landroidx/camera/camera2/pipe/CameraSurfaceManager;
    .locals 1

    .line 705
    iget-object v0, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->provideCameraSurfaceManagerProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/camera2/pipe/CameraSurfaceManager;

    return-object v0
.end method

.method public cameras()Landroidx/camera/camera2/pipe/CameraDevices;
    .locals 1

    .line 690
    iget-object v0, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->cameraDevicesImplProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/camera2/pipe/CameraDevices;

    return-object v0
.end method

.method imageReaderImageSources()Landroidx/camera/camera2/pipe/media/ImageReaderImageSources;
    .locals 3

    .line 637
    new-instance v0, Landroidx/camera/camera2/pipe/media/ImageReaderImageSources;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->provideThreadsProvider:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/camera2/pipe/core/Threads;

    iget-object v2, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->cameraPipeConfigModule:Landroidx/camera/camera2/pipe/config/CameraPipeConfigModule;

    invoke-static {v2}, Landroidx/camera/camera2/pipe/config/CameraPipeConfigModule_ProvideCameraPipeConfigFactory;->provideCameraPipeConfig(Landroidx/camera/camera2/pipe/config/CameraPipeConfigModule;)Landroidx/camera/camera2/pipe/CameraPipe$Config;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroidx/camera/camera2/pipe/media/ImageReaderImageSources;-><init>(Landroidx/camera/camera2/pipe/core/Threads;Landroidx/camera/camera2/pipe/CameraPipe$Config;)V

    return-object v0
.end method

.method imageSources()Landroidx/camera/camera2/pipe/media/ImageSources;
    .locals 2

    .line 641
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->imageReaderImageSources()Landroidx/camera/camera2/pipe/media/ImageReaderImageSources;

    move-result-object v0

    iget-object v1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->cameraPipeConfigModule:Landroidx/camera/camera2/pipe/config/CameraPipeConfigModule;

    invoke-static {v1}, Landroidx/camera/camera2/pipe/config/CameraPipeConfigModule_ProvideCameraPipeConfigFactory;->provideCameraPipeConfig(Landroidx/camera/camera2/pipe/config/CameraPipeConfigModule;)Landroidx/camera/camera2/pipe/CameraPipe$Config;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/camera/camera2/pipe/config/CameraPipeModule_Companion_ConfigureImageSourcesFactory;->configureImageSources(Landroidx/camera/camera2/pipe/media/ImageReaderImageSources;Landroidx/camera/camera2/pipe/CameraPipe$Config;)Landroidx/camera/camera2/pipe/media/ImageSources;

    move-result-object v0

    return-object v0
.end method
