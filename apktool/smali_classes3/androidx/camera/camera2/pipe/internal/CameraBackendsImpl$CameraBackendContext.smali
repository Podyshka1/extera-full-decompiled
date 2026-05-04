.class public final Landroidx/camera/camera2/pipe/internal/CameraBackendsImpl$CameraBackendContext;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/CameraContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/internal/CameraBackendsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CameraBackendContext"
.end annotation


# instance fields
.field private final appContext:Landroid/content/Context;

.field private final cameraBackends:Landroidx/camera/camera2/pipe/CameraBackends;

.field private final threads:Landroidx/camera/camera2/pipe/core/Threads;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/camera/camera2/pipe/core/Threads;Landroidx/camera/camera2/pipe/CameraBackends;)V
    .locals 1

    const-string v0, "appContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "threads"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cameraBackends"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Landroidx/camera/camera2/pipe/internal/CameraBackendsImpl$CameraBackendContext;->appContext:Landroid/content/Context;

    .line 90
    iput-object p2, p0, Landroidx/camera/camera2/pipe/internal/CameraBackendsImpl$CameraBackendContext;->threads:Landroidx/camera/camera2/pipe/core/Threads;

    .line 91
    iput-object p3, p0, Landroidx/camera/camera2/pipe/internal/CameraBackendsImpl$CameraBackendContext;->cameraBackends:Landroidx/camera/camera2/pipe/CameraBackends;

    return-void
.end method
