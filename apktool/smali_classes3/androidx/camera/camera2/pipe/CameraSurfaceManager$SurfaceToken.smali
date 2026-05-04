.class public final Landroidx/camera/camera2/pipe/CameraSurfaceManager$SurfaceToken;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/CameraSurfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SurfaceToken"
.end annotation


# instance fields
.field private final closed:Lkotlinx/atomicfu/AtomicBoolean;

.field private final debugId:I

.field private final surface:Landroid/view/Surface;

.field final synthetic this$0:Landroidx/camera/camera2/pipe/CameraSurfaceManager;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/CameraSurfaceManager;Landroid/view/Surface;)V
    .locals 1

    const-string/jumbo v0, "surface"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iput-object p1, p0, Landroidx/camera/camera2/pipe/CameraSurfaceManager$SurfaceToken;->this$0:Landroidx/camera/camera2/pipe/CameraSurfaceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/camera/camera2/pipe/CameraSurfaceManager$SurfaceToken;->surface:Landroid/view/Surface;

    .line 56
    sget-object p1, Landroidx/camera/camera2/pipe/CameraSurfaceManager;->Companion:Landroidx/camera/camera2/pipe/CameraSurfaceManager$Companion;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/CameraSurfaceManager$Companion;->getSurfaceTokenDebugIds$camera_camera2_pipe()Lkotlinx/atomicfu/AtomicInt;

    move-result-object p1

    invoke-virtual {p1}, Lkotlinx/atomicfu/AtomicInt;->incrementAndGet()I

    move-result p1

    iput p1, p0, Landroidx/camera/camera2/pipe/CameraSurfaceManager$SurfaceToken;->debugId:I

    const/4 p1, 0x0

    .line 57
    invoke-static {p1}, Lkotlinx/atomicfu/AtomicFU;->atomic(Z)Lkotlinx/atomicfu/AtomicBoolean;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/CameraSurfaceManager$SurfaceToken;->closed:Lkotlinx/atomicfu/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 60
    iget-object v0, p0, Landroidx/camera/camera2/pipe/CameraSurfaceManager$SurfaceToken;->closed:Lkotlinx/atomicfu/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lkotlinx/atomicfu/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Landroidx/camera/camera2/pipe/CameraSurfaceManager$SurfaceToken;->this$0:Landroidx/camera/camera2/pipe/CameraSurfaceManager;

    invoke-virtual {v0, p0}, Landroidx/camera/camera2/pipe/CameraSurfaceManager;->onTokenClosed$camera_camera2_pipe(Landroidx/camera/camera2/pipe/CameraSurfaceManager$SurfaceToken;)V

    :cond_0
    return-void
.end method

.method public final getSurface$camera_camera2_pipe()Landroid/view/Surface;
    .locals 1

    .line 55
    iget-object v0, p0, Landroidx/camera/camera2/pipe/CameraSurfaceManager$SurfaceToken;->surface:Landroid/view/Surface;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SurfaceToken-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/camera/camera2/pipe/CameraSurfaceManager$SurfaceToken;->debugId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
