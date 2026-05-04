.class public abstract Landroidx/camera/camera2/pipe/CameraPipeKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final cameraPipeIds:Lkotlinx/atomicfu/AtomicInt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-static {v0}, Lkotlinx/atomicfu/AtomicFU;->atomic(I)Lkotlinx/atomicfu/AtomicInt;

    move-result-object v0

    sput-object v0, Landroidx/camera/camera2/pipe/CameraPipeKt;->cameraPipeIds:Lkotlinx/atomicfu/AtomicInt;

    return-void
.end method

.method public static final CameraPipe(Landroidx/camera/camera2/pipe/CameraPipe$Config;)Landroidx/camera/camera2/pipe/CameraPipe;
    .locals 1

    const-string v0, "config"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 252
    sget-object v0, Landroidx/camera/camera2/pipe/CameraPipe;->Companion:Landroidx/camera/camera2/pipe/CameraPipe$Companion;

    invoke-virtual {v0, p0}, Landroidx/camera/camera2/pipe/CameraPipe$Companion;->create(Landroidx/camera/camera2/pipe/CameraPipe$Config;)Landroidx/camera/camera2/pipe/CameraPipe;

    move-result-object p0

    return-object p0
.end method

.method public static final getCameraPipeIds()Lkotlinx/atomicfu/AtomicInt;
    .locals 1

    .line 43
    sget-object v0, Landroidx/camera/camera2/pipe/CameraPipeKt;->cameraPipeIds:Lkotlinx/atomicfu/AtomicInt;

    return-object v0
.end method
