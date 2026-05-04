.class public final Landroidx/camera/camera2/pipe/core/SystemTimeSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/core/TimeSource;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public now-vQl9yQU()J
    .locals 2

    .line 66
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/camera/camera2/pipe/core/TimestampNs;->constructor-impl(J)J

    move-result-wide v0

    return-wide v0
.end method
