.class public final Landroidx/camera/camera2/pipe/CameraPipe$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/CameraPipe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Landroidx/camera/camera2/pipe/CameraPipe$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/camera/camera2/pipe/CameraPipe$Companion;

    invoke-direct {v0}, Landroidx/camera/camera2/pipe/CameraPipe$Companion;-><init>()V

    sput-object v0, Landroidx/camera/camera2/pipe/CameraPipe$Companion;->$$INSTANCE:Landroidx/camera/camera2/pipe/CameraPipe$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Landroidx/camera/camera2/pipe/CameraPipe$Config;)Landroidx/camera/camera2/pipe/CameraPipe;
    .locals 2

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    sget-object v0, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    const-string v0, "CameraPipe"

    .line 72
    :try_start_0
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 239
    invoke-static {}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent;->builder()Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Builder;

    move-result-object v0

    .line 240
    new-instance v1, Landroidx/camera/camera2/pipe/config/CameraPipeConfigModule;

    invoke-direct {v1, p1}, Landroidx/camera/camera2/pipe/config/CameraPipeConfigModule;-><init>(Landroidx/camera/camera2/pipe/CameraPipe$Config;)V

    invoke-virtual {v0, v1}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Builder;->cameraPipeConfigModule(Landroidx/camera/camera2/pipe/config/CameraPipeConfigModule;)Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Builder;

    move-result-object v0

    .line 241
    new-instance v1, Landroidx/camera/camera2/pipe/config/ThreadConfigModule;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/CameraPipe$Config;->getThreadConfig()Landroidx/camera/camera2/pipe/CameraPipe$ThreadConfig;

    move-result-object p1

    invoke-direct {v1, p1}, Landroidx/camera/camera2/pipe/config/ThreadConfigModule;-><init>(Landroidx/camera/camera2/pipe/CameraPipe$ThreadConfig;)V

    invoke-virtual {v0, v1}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Builder;->threadConfigModule(Landroidx/camera/camera2/pipe/config/ThreadConfigModule;)Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Builder;

    move-result-object p1

    .line 242
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Builder;->build()Landroidx/camera/camera2/pipe/config/CameraPipeComponent;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 245
    new-instance v0, Landroidx/camera/camera2/pipe/CameraPipeImpl;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v0, p1}, Landroidx/camera/camera2/pipe/CameraPipeImpl;-><init>(Landroidx/camera/camera2/pipe/config/CameraPipeComponent;)V

    return-object v0

    :catchall_0
    move-exception p1

    .line 79
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 81
    throw p1
.end method
