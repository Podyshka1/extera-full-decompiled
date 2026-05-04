.class public final Landroidx/camera/camera2/config/CameraAppModule$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/config/CameraAppModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Landroidx/camera/camera2/config/CameraAppModule$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final provideCameraDevices(Landroidx/camera/camera2/pipe/CameraPipe;)Landroidx/camera/camera2/pipe/CameraDevices;
    .locals 1

    const-string v0, "cameraPipe"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-interface {p1}, Landroidx/camera/camera2/pipe/CameraPipe;->cameras()Landroidx/camera/camera2/pipe/CameraDevices;

    move-result-object p1

    return-object p1
.end method
