.class public final Landroidx/camera/camera2/pipe/config/CameraPipeModule$Companion$provideCameraContext$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/CameraContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/camera2/pipe/config/CameraPipeModule$Companion;->provideCameraContext(Landroid/content/Context;Landroidx/camera/camera2/pipe/core/Threads;Landroidx/camera/camera2/pipe/CameraBackends;)Landroidx/camera/camera2/pipe/CameraContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private final appContext:Landroid/content/Context;

.field private final cameraBackends:Landroidx/camera/camera2/pipe/CameraBackends;

.field private final threads:Landroidx/camera/camera2/pipe/core/Threads;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroidx/camera/camera2/pipe/core/Threads;Landroidx/camera/camera2/pipe/CameraBackends;)V
    .locals 0

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/CameraPipeModule$Companion$provideCameraContext$1;->appContext:Landroid/content/Context;

    .line 144
    iput-object p2, p0, Landroidx/camera/camera2/pipe/config/CameraPipeModule$Companion$provideCameraContext$1;->threads:Landroidx/camera/camera2/pipe/core/Threads;

    .line 145
    iput-object p3, p0, Landroidx/camera/camera2/pipe/config/CameraPipeModule$Companion$provideCameraContext$1;->cameraBackends:Landroidx/camera/camera2/pipe/CameraBackends;

    return-void
.end method
