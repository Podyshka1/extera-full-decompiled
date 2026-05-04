.class public final Landroidx/camera/camera2/pipe/compat/AndroidDevicePolicyManagerWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/compat/DevicePolicyManagerWrapper;


# instance fields
.field private final devicePolicyManager:Landroid/app/admin/DevicePolicyManager;


# direct methods
.method public constructor <init>(Landroid/app/admin/DevicePolicyManager;)V
    .locals 1

    const-string v0, "devicePolicyManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/AndroidDevicePolicyManagerWrapper;->devicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    return-void
.end method

.method public static final synthetic access$getDevicePolicyManager$p(Landroidx/camera/camera2/pipe/compat/AndroidDevicePolicyManagerWrapper;)Landroid/app/admin/DevicePolicyManager;
    .locals 0

    .line 196
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/AndroidDevicePolicyManagerWrapper;->devicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    return-object p0
.end method


# virtual methods
.method public getCamerasDisabled()Z
    .locals 2

    .line 201
    sget-object v0, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    const-string v0, "DevicePolicyManager#getCameraDisabled"

    .line 72
    :try_start_0
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 202
    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/AndroidDevicePolicyManagerWrapper;->access$getDevicePolicyManager$p(Landroidx/camera/camera2/pipe/compat/AndroidDevicePolicyManagerWrapper;)Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return v0

    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 81
    throw v0
.end method
