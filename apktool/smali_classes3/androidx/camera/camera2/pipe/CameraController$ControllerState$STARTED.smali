.class public final Landroidx/camera/camera2/pipe/CameraController$ControllerState$STARTED;
.super Landroidx/camera/camera2/pipe/CameraController$ControllerState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/CameraController$ControllerState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "STARTED"
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/camera/camera2/pipe/CameraController$ControllerState$STARTED;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/camera/camera2/pipe/CameraController$ControllerState$STARTED;

    invoke-direct {v0}, Landroidx/camera/camera2/pipe/CameraController$ControllerState$STARTED;-><init>()V

    sput-object v0, Landroidx/camera/camera2/pipe/CameraController$ControllerState$STARTED;->INSTANCE:Landroidx/camera/camera2/pipe/CameraController$ControllerState$STARTED;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 113
    invoke-direct {p0}, Landroidx/camera/camera2/pipe/CameraController$ControllerState;-><init>()V

    return-void
.end method
