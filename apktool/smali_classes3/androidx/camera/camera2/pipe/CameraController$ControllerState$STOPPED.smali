.class public final Landroidx/camera/camera2/pipe/CameraController$ControllerState$STOPPED;
.super Landroidx/camera/camera2/pipe/CameraController$ControllerState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/CameraController$ControllerState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "STOPPED"
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/camera/camera2/pipe/CameraController$ControllerState$STOPPED;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/camera/camera2/pipe/CameraController$ControllerState$STOPPED;

    invoke-direct {v0}, Landroidx/camera/camera2/pipe/CameraController$ControllerState$STOPPED;-><init>()V

    sput-object v0, Landroidx/camera/camera2/pipe/CameraController$ControllerState$STOPPED;->INSTANCE:Landroidx/camera/camera2/pipe/CameraController$ControllerState$STOPPED;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 119
    invoke-direct {p0}, Landroidx/camera/camera2/pipe/CameraController$ControllerState;-><init>()V

    return-void
.end method
