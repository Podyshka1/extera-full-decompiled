.class public interface abstract Landroidx/camera/core/SurfaceOutput;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/SurfaceOutput$CameraInputInfo;,
        Landroidx/camera/core/SurfaceOutput$Event;
    }
.end annotation


# virtual methods
.method public abstract close()V
.end method

.method public abstract getFormat()I
.end method

.method public abstract getSize()Landroid/util/Size;
.end method

.method public abstract getSurface(Ljava/util/concurrent/Executor;Landroidx/core/util/Consumer;)Landroid/view/Surface;
.end method

.method public abstract updateTransformMatrix([F[F)V
.end method

.method public abstract updateTransformMatrix([F[FZ)V
.end method
