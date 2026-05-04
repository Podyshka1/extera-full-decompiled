.class public final Landroidx/camera/camera2/pipe/CameraController$ControllerState$DISCONNECTED;
.super Landroidx/camera/camera2/pipe/CameraController$ControllerState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/CameraController$ControllerState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DISCONNECTED"
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/camera/camera2/pipe/CameraController$ControllerState$DISCONNECTED;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/camera/camera2/pipe/CameraController$ControllerState$DISCONNECTED;

    invoke-direct {v0}, Landroidx/camera/camera2/pipe/CameraController$ControllerState$DISCONNECTED;-><init>()V

    sput-object v0, Landroidx/camera/camera2/pipe/CameraController$ControllerState$DISCONNECTED;->INSTANCE:Landroidx/camera/camera2/pipe/CameraController$ControllerState$DISCONNECTED;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 122
    invoke-direct {p0}, Landroidx/camera/camera2/pipe/CameraController$ControllerState;-><init>()V

    return-void
.end method
