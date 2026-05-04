.class public final Landroidx/camera/lifecycle/ProcessCameraProvider$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/lifecycle/ProcessCameraProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public static synthetic $r8$lambda$CjFKEa1HNEh7c_io6Z4hztLk6yo(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Landroidx/camera/lifecycle/ProcessCameraProvider;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/camera/lifecycle/ProcessCameraProvider$Companion;->getInstance$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Landroidx/camera/lifecycle/ProcessCameraProvider;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$cqQcQxl1ave5WeNGbuERjQg2mr8(Ljava/lang/Void;)Landroidx/camera/lifecycle/ProcessCameraProvider;
    .locals 0

    .line 0
    invoke-static {p0}, Landroidx/camera/lifecycle/ProcessCameraProvider$Companion;->getInstance$lambda$0(Ljava/lang/Void;)Landroidx/camera/lifecycle/ProcessCameraProvider;

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>()V
    .locals 0

    .line 433
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Landroidx/camera/lifecycle/ProcessCameraProvider$Companion;-><init>()V

    return-void
.end method

.method private static final getInstance$lambda$0(Ljava/lang/Void;)Landroidx/camera/lifecycle/ProcessCameraProvider;
    .locals 0

    .line 476
    invoke-static {}, Landroidx/camera/lifecycle/ProcessCameraProvider;->access$getSAppInstance$cp()Landroidx/camera/lifecycle/ProcessCameraProvider;

    move-result-object p0

    return-object p0
.end method

.method private static final getInstance$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Landroidx/camera/lifecycle/ProcessCameraProvider;
    .locals 0

    .line 476
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/lifecycle/ProcessCameraProvider;

    return-object p0
.end method


# virtual methods
.method public final getInstance(Landroid/content/Context;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 473
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    invoke-static {}, Landroidx/camera/lifecycle/ProcessCameraProvider;->access$getSAppInstance$cp()Landroidx/camera/lifecycle/ProcessCameraProvider;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/camera/lifecycle/ProcessCameraProvider;->access$initAsync(Landroidx/camera/lifecycle/ProcessCameraProvider;Landroid/content/Context;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    new-instance v0, Landroidx/camera/lifecycle/ProcessCameraProvider$Companion$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/camera/lifecycle/ProcessCameraProvider$Companion$$ExternalSyntheticLambda0;-><init>()V

    .line 476
    new-instance v1, Landroidx/camera/lifecycle/ProcessCameraProvider$Companion$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Landroidx/camera/lifecycle/ProcessCameraProvider$Companion$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 477
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 474
    invoke-static {p1, v1, v0}, Landroidx/camera/core/impl/utils/futures/Futures;->transform(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/arch/core/util/Function;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    .line 476
    const-string v0, "transform(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
