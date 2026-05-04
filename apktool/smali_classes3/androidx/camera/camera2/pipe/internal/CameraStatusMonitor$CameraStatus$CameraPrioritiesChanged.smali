.class public final Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor$CameraStatus$CameraPrioritiesChanged;
.super Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor$CameraStatus;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor$CameraStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CameraPrioritiesChanged"
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor$CameraStatus$CameraPrioritiesChanged;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor$CameraStatus$CameraPrioritiesChanged;

    invoke-direct {v0}, Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor$CameraStatus$CameraPrioritiesChanged;-><init>()V

    sput-object v0, Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor$CameraStatus$CameraPrioritiesChanged;->INSTANCE:Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor$CameraStatus$CameraPrioritiesChanged;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor$CameraStatus;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 44
    const-string v0, "CameraPrioritiesChanged"

    return-object v0
.end method
