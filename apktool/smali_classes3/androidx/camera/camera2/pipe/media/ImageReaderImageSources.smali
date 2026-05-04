.class public final Landroidx/camera/camera2/pipe/media/ImageReaderImageSources;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/media/ImageSources;


# instance fields
.field private final threads:Landroidx/camera/camera2/pipe/core/Threads;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/core/Threads;Landroidx/camera/camera2/pipe/CameraPipe$Config;)V
    .locals 1

    const-string/jumbo v0, "threads"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cameraPipeConfig"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Landroidx/camera/camera2/pipe/media/ImageReaderImageSources;->threads:Landroidx/camera/camera2/pipe/core/Threads;

    .line 39
    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/CameraPipe$Config;->getPlatformApiCompat()Landroidx/camera/camera2/pipe/PlatformApiCompat;

    return-void
.end method
