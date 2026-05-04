.class public final Landroidx/camera/camera2/pipe/compat/AndroidCaptureFailure;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/RequestFailure;


# instance fields
.field private final captureFailure:Landroid/hardware/camera2/CaptureFailure;

.field private final frameNumber:J

.field private final reason:I

.field private final requestMetadata:Landroidx/camera/camera2/pipe/RequestMetadata;

.field private final wasImageCaptured:Z


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/RequestMetadata;Landroid/hardware/camera2/CaptureFailure;)V
    .locals 2

    const-string v0, "requestMetadata"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "captureFailure"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCaptureFailure;->requestMetadata:Landroidx/camera/camera2/pipe/RequestMetadata;

    .line 31
    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/AndroidCaptureFailure;->captureFailure:Landroid/hardware/camera2/CaptureFailure;

    .line 33
    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureFailure;->getFrameNumber()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/camera/camera2/pipe/FrameNumber;->constructor-impl(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCaptureFailure;->frameNumber:J

    .line 34
    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureFailure;->getReason()I

    move-result p1

    iput p1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCaptureFailure;->reason:I

    .line 35
    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureFailure;->wasImageCaptured()Z

    move-result p1

    iput-boolean p1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCaptureFailure;->wasImageCaptured:Z

    return-void
.end method


# virtual methods
.method public getReason()I
    .locals 1

    .line 34
    iget v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCaptureFailure;->reason:I

    return v0
.end method

.method public getWasImageCaptured()Z
    .locals 1

    .line 35
    iget-boolean v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCaptureFailure;->wasImageCaptured:Z

    return v0
.end method

.method public unwrapAs(Lkotlin/reflect/KClass;)Ljava/lang/Object;
    .locals 1

    const-string/jumbo v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    const-class v0, Landroid/hardware/camera2/CaptureFailure;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCaptureFailure;->captureFailure:Landroid/hardware/camera2/CaptureFailure;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
