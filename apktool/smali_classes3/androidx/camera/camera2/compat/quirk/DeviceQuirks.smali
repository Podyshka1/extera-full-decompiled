.class public final Landroidx/camera/camera2/compat/quirk/DeviceQuirks;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Landroidx/camera/camera2/compat/quirk/DeviceQuirks;

.field public static volatile all:Landroidx/camera/core/impl/Quirks;


# direct methods
.method public static synthetic $r8$lambda$HfBMZLZ_-UgnnlH0dufyH-ifpDc(Landroidx/camera/core/impl/QuirkSettings;)V
    .locals 0

    .line 0
    invoke-static {p0}, Landroidx/camera/camera2/compat/quirk/DeviceQuirks;->_init_$lambda$0(Landroidx/camera/core/impl/QuirkSettings;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/camera/camera2/compat/quirk/DeviceQuirks;

    invoke-direct {v0}, Landroidx/camera/camera2/compat/quirk/DeviceQuirks;-><init>()V

    sput-object v0, Landroidx/camera/camera2/compat/quirk/DeviceQuirks;->INSTANCE:Landroidx/camera/camera2/compat/quirk/DeviceQuirks;

    .line 42
    invoke-static {}, Landroidx/camera/core/impl/QuirkSettingsHolder;->instance()Landroidx/camera/core/impl/QuirkSettingsHolder;

    move-result-object v0

    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Landroidx/camera/camera2/compat/quirk/DeviceQuirks$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Landroidx/camera/camera2/compat/quirk/DeviceQuirks$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroidx/camera/core/impl/QuirkSettingsHolder;->observe(Ljava/util/concurrent/Executor;Landroidx/core/util/Consumer;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final _init_$lambda$0(Landroidx/camera/core/impl/QuirkSettings;)V
    .locals 2

    .line 43
    new-instance v0, Landroidx/camera/core/impl/Quirks;

    sget-object v1, Landroidx/camera/camera2/compat/quirk/DeviceQuirksLoader;->INSTANCE:Landroidx/camera/camera2/compat/quirk/DeviceQuirksLoader;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, p0}, Landroidx/camera/camera2/compat/quirk/DeviceQuirksLoader;->loadQuirks(Landroidx/camera/core/impl/QuirkSettings;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/camera/core/impl/Quirks;-><init>(Ljava/util/List;)V

    invoke-static {v0}, Landroidx/camera/camera2/compat/quirk/DeviceQuirks;->setAll(Landroidx/camera/core/impl/Quirks;)V

    .line 44
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "camera2 DeviceQuirks = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroidx/camera/camera2/compat/quirk/DeviceQuirks;->getAll()Landroidx/camera/core/impl/Quirks;

    move-result-object v0

    invoke-static {v0}, Landroidx/camera/core/impl/Quirks;->toString(Landroidx/camera/core/impl/Quirks;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DeviceQuirks"

    invoke-static {v0, p0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final getAll()Landroidx/camera/core/impl/Quirks;
    .locals 1

    .line 38
    sget-object v0, Landroidx/camera/camera2/compat/quirk/DeviceQuirks;->all:Landroidx/camera/core/impl/Quirks;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "all"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static final setAll(Landroidx/camera/core/impl/Quirks;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    sput-object p0, Landroidx/camera/camera2/compat/quirk/DeviceQuirks;->all:Landroidx/camera/core/impl/Quirks;

    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/Class;)Landroidx/camera/core/impl/Quirk;
    .locals 1

    const-string v0, "quirkClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-static {}, Landroidx/camera/camera2/compat/quirk/DeviceQuirks;->getAll()Landroidx/camera/core/impl/Quirks;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/camera/core/impl/Quirks;->get(Ljava/lang/Class;)Landroidx/camera/core/impl/Quirk;

    move-result-object p1

    return-object p1
.end method
