.class final Landroidx/camera/camera2/pipe/media/SharedOutputImage$Companion$SharedOutputImageImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/media/OutputImage;
.implements Landroidx/camera/camera2/pipe/media/SharedOutputImage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/media/SharedOutputImage$Companion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SharedOutputImageImpl"
.end annotation


# instance fields
.field private final closed:Lkotlinx/atomicfu/AtomicBoolean;

.field private final outputImage:Landroidx/camera/camera2/pipe/media/OutputImage;

.field private final sharedReference:Landroidx/camera/camera2/pipe/media/SharedReference;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/media/OutputImage;Landroidx/camera/camera2/pipe/media/SharedReference;)V
    .locals 1

    const-string v0, "outputImage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "sharedReference"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Landroidx/camera/camera2/pipe/media/SharedOutputImage$Companion$SharedOutputImageImpl;->outputImage:Landroidx/camera/camera2/pipe/media/OutputImage;

    .line 74
    iput-object p2, p0, Landroidx/camera/camera2/pipe/media/SharedOutputImage$Companion$SharedOutputImageImpl;->sharedReference:Landroidx/camera/camera2/pipe/media/SharedReference;

    const/4 p1, 0x0

    .line 76
    invoke-static {p1}, Lkotlinx/atomicfu/AtomicFU;->atomic(Z)Lkotlinx/atomicfu/AtomicBoolean;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/media/SharedOutputImage$Companion$SharedOutputImageImpl;->closed:Lkotlinx/atomicfu/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public acquire()Landroidx/camera/camera2/pipe/media/SharedOutputImage;
    .locals 2

    .line 78
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/media/SharedOutputImage$Companion$SharedOutputImageImpl;->acquireOrNull()Landroidx/camera/camera2/pipe/media/SharedOutputImage;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Required value was null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public acquireOrNull()Landroidx/camera/camera2/pipe/media/SharedOutputImage;
    .locals 3

    .line 81
    iget-object v0, p0, Landroidx/camera/camera2/pipe/media/SharedOutputImage$Companion$SharedOutputImageImpl;->closed:Lkotlinx/atomicfu/AtomicBoolean;

    invoke-virtual {v0}, Lkotlinx/atomicfu/AtomicBoolean;->getValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 84
    :cond_0
    iget-object v0, p0, Landroidx/camera/camera2/pipe/media/SharedOutputImage$Companion$SharedOutputImageImpl;->sharedReference:Landroidx/camera/camera2/pipe/media/SharedReference;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/media/SharedReference;->acquireOrNull()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/camera2/pipe/media/OutputImage;

    if-eqz v0, :cond_1

    .line 85
    new-instance v0, Landroidx/camera/camera2/pipe/media/SharedOutputImage$Companion$SharedOutputImageImpl;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/media/SharedOutputImage$Companion$SharedOutputImageImpl;->outputImage:Landroidx/camera/camera2/pipe/media/OutputImage;

    iget-object v2, p0, Landroidx/camera/camera2/pipe/media/SharedOutputImage$Companion$SharedOutputImageImpl;->sharedReference:Landroidx/camera/camera2/pipe/media/SharedReference;

    invoke-direct {v0, v1, v2}, Landroidx/camera/camera2/pipe/media/SharedOutputImage$Companion$SharedOutputImageImpl;-><init>(Landroidx/camera/camera2/pipe/media/OutputImage;Landroidx/camera/camera2/pipe/media/SharedReference;)V

    return-object v0

    :cond_1
    return-object v1
.end method

.method public close()V
    .locals 3

    .line 122
    iget-object v0, p0, Landroidx/camera/camera2/pipe/media/SharedOutputImage$Companion$SharedOutputImageImpl;->closed:Lkotlinx/atomicfu/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lkotlinx/atomicfu/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Landroidx/camera/camera2/pipe/media/SharedOutputImage$Companion$SharedOutputImageImpl;->sharedReference:Landroidx/camera/camera2/pipe/media/SharedReference;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/media/SharedReference;->decrement()V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 131
    iget-object v0, p0, Landroidx/camera/camera2/pipe/media/SharedOutputImage$Companion$SharedOutputImageImpl;->outputImage:Landroidx/camera/camera2/pipe/media/OutputImage;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unwrapAs(Lkotlin/reflect/KClass;)Ljava/lang/Object;
    .locals 2

    const-string/jumbo v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Landroidx/camera/camera2/pipe/media/SharedOutputImage$Companion$SharedOutputImageImpl;->closed:Lkotlinx/atomicfu/AtomicBoolean;

    invoke-virtual {v0}, Lkotlinx/atomicfu/AtomicBoolean;->getValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 103
    :cond_0
    const-class v0, Landroidx/camera/camera2/pipe/media/SharedOutputImage;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 104
    :cond_1
    const-class v0, Landroidx/camera/camera2/pipe/media/OutputImage;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 105
    :cond_2
    const-class v0, Landroidx/camera/camera2/pipe/media/ImageWrapper;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_0
    return-object p0

    .line 111
    :cond_3
    const-class v0, Landroid/media/Image;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 116
    iget-object v0, p0, Landroidx/camera/camera2/pipe/media/SharedOutputImage$Companion$SharedOutputImageImpl;->outputImage:Landroidx/camera/camera2/pipe/media/OutputImage;

    invoke-interface {v0, p1}, Landroidx/camera/camera2/pipe/UnsafeWrapper;->unwrapAs(Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 112
    :cond_4
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot unwrap "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " as android.media.Image. Use setFinalizerinstead and close all outstanding references."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 112
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
