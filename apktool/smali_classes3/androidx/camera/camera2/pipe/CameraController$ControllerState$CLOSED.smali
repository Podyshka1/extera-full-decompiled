.class public final Landroidx/camera/camera2/pipe/CameraController$ControllerState$CLOSED;
.super Landroidx/camera/camera2/pipe/CameraController$ControllerState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/CameraController$ControllerState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CLOSED"
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/camera/camera2/pipe/CameraController$ControllerState$CLOSED;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/camera/camera2/pipe/CameraController$ControllerState$CLOSED;

    invoke-direct {v0}, Landroidx/camera/camera2/pipe/CameraController$ControllerState$CLOSED;-><init>()V

    sput-object v0, Landroidx/camera/camera2/pipe/CameraController$ControllerState$CLOSED;->INSTANCE:Landroidx/camera/camera2/pipe/CameraController$ControllerState$CLOSED;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 131
    invoke-direct {p0}, Landroidx/camera/camera2/pipe/CameraController$ControllerState;-><init>()V

    return-void
.end method
