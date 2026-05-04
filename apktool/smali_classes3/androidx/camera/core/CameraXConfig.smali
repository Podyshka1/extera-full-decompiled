.class public final Landroidx/camera/core/CameraXConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/internal/TargetConfig;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/CameraXConfig$Builder;,
        Landroidx/camera/core/CameraXConfig$Provider;
    }
.end annotation


# static fields
.field static final OPTION_AVAILABLE_CAMERAS_LIMITER:Landroidx/camera/core/impl/Config$Option;

.field static final OPTION_CAMERA_EXECUTOR:Landroidx/camera/core/impl/Config$Option;

.field static final OPTION_CAMERA_FACTORY_PROVIDER:Landroidx/camera/core/impl/Config$Option;

.field static final OPTION_CAMERA_OPEN_RETRY_MAX_TIMEOUT_IN_MILLIS_WHILE_RESUMING:Landroidx/camera/core/impl/Config$Option;

.field static final OPTION_CAMERA_PROVIDER_INIT_RETRY_POLICY:Landroidx/camera/core/impl/Config$Option;

.field static final OPTION_DEVICE_SURFACE_MANAGER_PROVIDER:Landroidx/camera/core/impl/Config$Option;

.field static final OPTION_MIN_LOGGING_LEVEL:Landroidx/camera/core/impl/Config$Option;

.field static final OPTION_QUIRK_SETTINGS:Landroidx/camera/core/impl/Config$Option;

.field static final OPTION_REPEATING_STREAM_FORCED:Landroidx/camera/core/impl/Config$Option;

.field static final OPTION_SCHEDULER_HANDLER:Landroidx/camera/core/impl/Config$Option;

.field static final OPTION_USECASE_CONFIG_FACTORY_PROVIDER:Landroidx/camera/core/impl/Config$Option;


# instance fields
.field private final mConfig:Landroidx/camera/core/impl/OptionsBundle;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 84
    const-string v0, "camerax.core.appConfig.cameraFactoryProvider"

    const-class v1, Landroidx/camera/core/impl/CameraFactory$Provider;

    .line 85
    invoke-static {v0, v1}, Landroidx/camera/core/impl/Config$Option;->create(Ljava/lang/String;Ljava/lang/Class;)Landroidx/camera/core/impl/Config$Option;

    move-result-object v0

    sput-object v0, Landroidx/camera/core/CameraXConfig;->OPTION_CAMERA_FACTORY_PROVIDER:Landroidx/camera/core/impl/Config$Option;

    .line 88
    const-string v0, "camerax.core.appConfig.deviceSurfaceManagerProvider"

    const-class v1, Landroidx/camera/core/impl/CameraDeviceSurfaceManager$Provider;

    .line 89
    invoke-static {v0, v1}, Landroidx/camera/core/impl/Config$Option;->create(Ljava/lang/String;Ljava/lang/Class;)Landroidx/camera/core/impl/Config$Option;

    move-result-object v0

    sput-object v0, Landroidx/camera/core/CameraXConfig;->OPTION_DEVICE_SURFACE_MANAGER_PROVIDER:Landroidx/camera/core/impl/Config$Option;

    .line 92
    const-string v0, "camerax.core.appConfig.useCaseConfigFactoryProvider"

    const-class v1, Landroidx/camera/core/impl/UseCaseConfigFactory$Provider;

    .line 93
    invoke-static {v0, v1}, Landroidx/camera/core/impl/Config$Option;->create(Ljava/lang/String;Ljava/lang/Class;)Landroidx/camera/core/impl/Config$Option;

    move-result-object v0

    sput-object v0, Landroidx/camera/core/CameraXConfig;->OPTION_USECASE_CONFIG_FACTORY_PROVIDER:Landroidx/camera/core/impl/Config$Option;

    .line 96
    const-string v0, "camerax.core.appConfig.cameraExecutor"

    const-class v1, Ljava/util/concurrent/Executor;

    .line 97
    invoke-static {v0, v1}, Landroidx/camera/core/impl/Config$Option;->create(Ljava/lang/String;Ljava/lang/Class;)Landroidx/camera/core/impl/Config$Option;

    move-result-object v0

    sput-object v0, Landroidx/camera/core/CameraXConfig;->OPTION_CAMERA_EXECUTOR:Landroidx/camera/core/impl/Config$Option;

    .line 100
    const-string v0, "camerax.core.appConfig.schedulerHandler"

    const-class v1, Landroid/os/Handler;

    .line 101
    invoke-static {v0, v1}, Landroidx/camera/core/impl/Config$Option;->create(Ljava/lang/String;Ljava/lang/Class;)Landroidx/camera/core/impl/Config$Option;

    move-result-object v0

    sput-object v0, Landroidx/camera/core/CameraXConfig;->OPTION_SCHEDULER_HANDLER:Landroidx/camera/core/impl/Config$Option;

    .line 104
    const-string v0, "camerax.core.appConfig.minimumLoggingLevel"

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 105
    invoke-static {v0, v1}, Landroidx/camera/core/impl/Config$Option;->create(Ljava/lang/String;Ljava/lang/Class;)Landroidx/camera/core/impl/Config$Option;

    move-result-object v0

    sput-object v0, Landroidx/camera/core/CameraXConfig;->OPTION_MIN_LOGGING_LEVEL:Landroidx/camera/core/impl/Config$Option;

    .line 108
    const-string v0, "camerax.core.appConfig.availableCamerasLimiter"

    const-class v1, Landroidx/camera/core/CameraSelector;

    .line 109
    invoke-static {v0, v1}, Landroidx/camera/core/impl/Config$Option;->create(Ljava/lang/String;Ljava/lang/Class;)Landroidx/camera/core/impl/Config$Option;

    move-result-object v0

    sput-object v0, Landroidx/camera/core/CameraXConfig;->OPTION_AVAILABLE_CAMERAS_LIMITER:Landroidx/camera/core/impl/Config$Option;

    .line 113
    const-string v0, "camerax.core.appConfig.cameraOpenRetryMaxTimeoutInMillisWhileResuming"

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 114
    invoke-static {v0, v1}, Landroidx/camera/core/impl/Config$Option;->create(Ljava/lang/String;Ljava/lang/Class;)Landroidx/camera/core/impl/Config$Option;

    move-result-object v0

    sput-object v0, Landroidx/camera/core/CameraXConfig;->OPTION_CAMERA_OPEN_RETRY_MAX_TIMEOUT_IN_MILLIS_WHILE_RESUMING:Landroidx/camera/core/impl/Config$Option;

    .line 119
    const-string v0, "camerax.core.appConfig.cameraProviderInitRetryPolicy"

    const-class v1, Landroidx/camera/core/RetryPolicy;

    .line 120
    invoke-static {v0, v1}, Landroidx/camera/core/impl/Config$Option;->create(Ljava/lang/String;Ljava/lang/Class;)Landroidx/camera/core/impl/Config$Option;

    move-result-object v0

    sput-object v0, Landroidx/camera/core/CameraXConfig;->OPTION_CAMERA_PROVIDER_INIT_RETRY_POLICY:Landroidx/camera/core/impl/Config$Option;

    .line 126
    const-string v0, "camerax.core.appConfig.quirksSettings"

    const-class v1, Landroidx/camera/core/impl/QuirkSettings;

    .line 127
    invoke-static {v0, v1}, Landroidx/camera/core/impl/Config$Option;->create(Ljava/lang/String;Ljava/lang/Class;)Landroidx/camera/core/impl/Config$Option;

    move-result-object v0

    sput-object v0, Landroidx/camera/core/CameraXConfig;->OPTION_QUIRK_SETTINGS:Landroidx/camera/core/impl/Config$Option;

    .line 131
    const-string v0, "camerax.core.appConfig.repeatingStreamForced"

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v1}, Landroidx/camera/core/impl/Config$Option;->create(Ljava/lang/String;Ljava/lang/Class;)Landroidx/camera/core/impl/Config$Option;

    move-result-object v0

    sput-object v0, Landroidx/camera/core/CameraXConfig;->OPTION_REPEATING_STREAM_FORCED:Landroidx/camera/core/impl/Config$Option;

    return-void
.end method

.method constructor <init>(Landroidx/camera/core/impl/OptionsBundle;)V
    .locals 0

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput-object p1, p0, Landroidx/camera/core/CameraXConfig;->mConfig:Landroidx/camera/core/impl/OptionsBundle;

    return-void
.end method


# virtual methods
.method public synthetic containsOption(Landroidx/camera/core/impl/Config$Option;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/camera/core/impl/ReadableConfig$-CC;->$default$containsOption(Landroidx/camera/core/impl/ReadableConfig;Landroidx/camera/core/impl/Config$Option;)Z

    move-result p1

    return p1
.end method

.method public synthetic findOptions(Ljava/lang/String;Landroidx/camera/core/impl/Config$OptionMatcher;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Landroidx/camera/core/impl/ReadableConfig$-CC;->$default$findOptions(Landroidx/camera/core/impl/ReadableConfig;Ljava/lang/String;Landroidx/camera/core/impl/Config$OptionMatcher;)V

    return-void
.end method

.method public getAvailableCamerasLimiter(Landroidx/camera/core/CameraSelector;)Landroidx/camera/core/CameraSelector;
    .locals 2

    .line 208
    iget-object v0, p0, Landroidx/camera/core/CameraXConfig;->mConfig:Landroidx/camera/core/impl/OptionsBundle;

    sget-object v1, Landroidx/camera/core/CameraXConfig;->OPTION_AVAILABLE_CAMERAS_LIMITER:Landroidx/camera/core/impl/Config$Option;

    invoke-virtual {v0, v1, p1}, Landroidx/camera/core/impl/OptionsBundle;->retrieveOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/camera/core/CameraSelector;

    return-object p1
.end method

.method public getCameraExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;
    .locals 2

    .line 180
    iget-object v0, p0, Landroidx/camera/core/CameraXConfig;->mConfig:Landroidx/camera/core/impl/OptionsBundle;

    sget-object v1, Landroidx/camera/core/CameraXConfig;->OPTION_CAMERA_EXECUTOR:Landroidx/camera/core/impl/Config$Option;

    invoke-virtual {v0, v1, p1}, Landroidx/camera/core/impl/OptionsBundle;->retrieveOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    return-object p1
.end method

.method public getCameraFactoryProvider(Landroidx/camera/core/impl/CameraFactory$Provider;)Landroidx/camera/core/impl/CameraFactory$Provider;
    .locals 2

    .line 149
    iget-object v0, p0, Landroidx/camera/core/CameraXConfig;->mConfig:Landroidx/camera/core/impl/OptionsBundle;

    sget-object v1, Landroidx/camera/core/CameraXConfig;->OPTION_CAMERA_FACTORY_PROVIDER:Landroidx/camera/core/impl/Config$Option;

    invoke-virtual {v0, v1, p1}, Landroidx/camera/core/impl/OptionsBundle;->retrieveOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/camera/core/impl/CameraFactory$Provider;

    return-object p1
.end method

.method public getCameraOpenRetryMaxTimeoutInMillisWhileResuming()J
    .locals 4

    .line 219
    iget-object v0, p0, Landroidx/camera/core/CameraXConfig;->mConfig:Landroidx/camera/core/impl/OptionsBundle;

    sget-object v1, Landroidx/camera/core/CameraXConfig;->OPTION_CAMERA_OPEN_RETRY_MAX_TIMEOUT_IN_MILLIS_WHILE_RESUMING:Landroidx/camera/core/impl/Config$Option;

    const-wide/16 v2, -0x1

    .line 220
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 219
    invoke-virtual {v0, v1, v2}, Landroidx/camera/core/impl/OptionsBundle;->retrieveOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCameraProviderInitRetryPolicy()Landroidx/camera/core/RetryPolicy;
    .locals 3

    .line 234
    iget-object v0, p0, Landroidx/camera/core/CameraXConfig;->mConfig:Landroidx/camera/core/impl/OptionsBundle;

    sget-object v1, Landroidx/camera/core/CameraXConfig;->OPTION_CAMERA_PROVIDER_INIT_RETRY_POLICY:Landroidx/camera/core/impl/Config$Option;

    sget-object v2, Landroidx/camera/core/RetryPolicy;->DEFAULT:Landroidx/camera/core/RetryPolicy;

    .line 235
    invoke-virtual {v0, v1, v2}, Landroidx/camera/core/impl/OptionsBundle;->retrieveOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/RetryPolicy;

    .line 234
    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroidx/camera/core/RetryPolicy;

    return-object v0
.end method

.method public getConfig()Landroidx/camera/core/impl/Config;
    .locals 1

    .line 268
    iget-object v0, p0, Landroidx/camera/core/CameraXConfig;->mConfig:Landroidx/camera/core/impl/OptionsBundle;

    return-object v0
.end method

.method public getDeviceSurfaceManagerProvider(Landroidx/camera/core/impl/CameraDeviceSurfaceManager$Provider;)Landroidx/camera/core/impl/CameraDeviceSurfaceManager$Provider;
    .locals 2

    .line 159
    iget-object v0, p0, Landroidx/camera/core/CameraXConfig;->mConfig:Landroidx/camera/core/impl/OptionsBundle;

    sget-object v1, Landroidx/camera/core/CameraXConfig;->OPTION_DEVICE_SURFACE_MANAGER_PROVIDER:Landroidx/camera/core/impl/Config$Option;

    invoke-virtual {v0, v1, p1}, Landroidx/camera/core/impl/OptionsBundle;->retrieveOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/camera/core/impl/CameraDeviceSurfaceManager$Provider;

    return-object p1
.end method

.method public synthetic getOptionPriority(Landroidx/camera/core/impl/Config$Option;)Landroidx/camera/core/impl/Config$OptionPriority;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/camera/core/impl/ReadableConfig$-CC;->$default$getOptionPriority(Landroidx/camera/core/impl/ReadableConfig;Landroidx/camera/core/impl/Config$Option;)Landroidx/camera/core/impl/Config$OptionPriority;

    move-result-object p1

    return-object p1
.end method

.method public synthetic getPriorities(Landroidx/camera/core/impl/Config$Option;)Ljava/util/Set;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/camera/core/impl/ReadableConfig$-CC;->$default$getPriorities(Landroidx/camera/core/impl/ReadableConfig;Landroidx/camera/core/impl/Config$Option;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public getQuirkSettings()Landroidx/camera/core/impl/QuirkSettings;
    .locals 3

    .line 262
    iget-object v0, p0, Landroidx/camera/core/CameraXConfig;->mConfig:Landroidx/camera/core/impl/OptionsBundle;

    sget-object v1, Landroidx/camera/core/CameraXConfig;->OPTION_QUIRK_SETTINGS:Landroidx/camera/core/impl/Config$Option;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/camera/core/impl/OptionsBundle;->retrieveOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/impl/QuirkSettings;

    return-object v0
.end method

.method public getSchedulerHandler(Landroid/os/Handler;)Landroid/os/Handler;
    .locals 2

    .line 189
    iget-object v0, p0, Landroidx/camera/core/CameraXConfig;->mConfig:Landroidx/camera/core/impl/OptionsBundle;

    sget-object v1, Landroidx/camera/core/CameraXConfig;->OPTION_SCHEDULER_HANDLER:Landroidx/camera/core/impl/Config$Option;

    invoke-virtual {v0, v1, p1}, Landroidx/camera/core/impl/OptionsBundle;->retrieveOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    return-object p1
.end method

.method public synthetic getTargetName()Ljava/lang/String;
    .locals 1

    .line 0
    invoke-static {p0}, Landroidx/camera/core/internal/TargetConfig$-CC;->$default$getTargetName(Landroidx/camera/core/internal/TargetConfig;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getTargetName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/camera/core/internal/TargetConfig$-CC;->$default$getTargetName(Landroidx/camera/core/internal/TargetConfig;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getUseCaseConfigFactoryProvider(Landroidx/camera/core/impl/UseCaseConfigFactory$Provider;)Landroidx/camera/core/impl/UseCaseConfigFactory$Provider;
    .locals 2

    .line 171
    iget-object v0, p0, Landroidx/camera/core/CameraXConfig;->mConfig:Landroidx/camera/core/impl/OptionsBundle;

    sget-object v1, Landroidx/camera/core/CameraXConfig;->OPTION_USECASE_CONFIG_FACTORY_PROVIDER:Landroidx/camera/core/impl/Config$Option;

    invoke-virtual {v0, v1, p1}, Landroidx/camera/core/impl/OptionsBundle;->retrieveOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/camera/core/impl/UseCaseConfigFactory$Provider;

    return-object p1
.end method

.method public isRepeatingStreamForced()Z
    .locals 3

    .line 248
    iget-object v0, p0, Landroidx/camera/core/CameraXConfig;->mConfig:Landroidx/camera/core/impl/OptionsBundle;

    sget-object v1, Landroidx/camera/core/CameraXConfig;->OPTION_REPEATING_STREAM_FORCED:Landroidx/camera/core/impl/Config$Option;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Landroidx/camera/core/impl/OptionsBundle;->retrieveOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public synthetic listOptions()Ljava/util/Set;
    .locals 1

    .line 0
    invoke-static {p0}, Landroidx/camera/core/impl/ReadableConfig$-CC;->$default$listOptions(Landroidx/camera/core/impl/ReadableConfig;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public synthetic retrieveOption(Landroidx/camera/core/impl/Config$Option;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/camera/core/impl/ReadableConfig$-CC;->$default$retrieveOption(Landroidx/camera/core/impl/ReadableConfig;Landroidx/camera/core/impl/Config$Option;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic retrieveOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Landroidx/camera/core/impl/ReadableConfig$-CC;->$default$retrieveOption(Landroidx/camera/core/impl/ReadableConfig;Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic retrieveOptionWithPriority(Landroidx/camera/core/impl/Config$Option;Landroidx/camera/core/impl/Config$OptionPriority;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Landroidx/camera/core/impl/ReadableConfig$-CC;->$default$retrieveOptionWithPriority(Landroidx/camera/core/impl/ReadableConfig;Landroidx/camera/core/impl/Config$Option;Landroidx/camera/core/impl/Config$OptionPriority;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
