.class public final Landroidx/camera/camera2/pipe/CameraController$ControllerState$ERROR;
.super Landroidx/camera/camera2/pipe/CameraController$ControllerState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/CameraController$ControllerState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ERROR"
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/camera/camera2/pipe/CameraController$ControllerState$ERROR;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/camera/camera2/pipe/CameraController$ControllerState$ERROR;

    invoke-direct {v0}, Landroidx/camera/camera2/pipe/CameraController$ControllerState$ERROR;-><init>()V

    sput-object v0, Landroidx/camera/camera2/pipe/CameraController$ControllerState$ERROR;->INSTANCE:Landroidx/camera/camera2/pipe/CameraController$ControllerState$ERROR;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 125
    invoke-direct {p0}, Landroidx/camera/camera2/pipe/CameraController$ControllerState;-><init>()V

    return-void
.end method
