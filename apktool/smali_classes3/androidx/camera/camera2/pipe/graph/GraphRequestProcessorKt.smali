.class public abstract Landroidx/camera/camera2/pipe/graph/GraphRequestProcessorKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final graphRequestProcessorIds:Lkotlinx/atomicfu/AtomicInt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 30
    invoke-static {v0}, Lkotlinx/atomicfu/AtomicFU;->atomic(I)Lkotlinx/atomicfu/AtomicInt;

    move-result-object v0

    sput-object v0, Landroidx/camera/camera2/pipe/graph/GraphRequestProcessorKt;->graphRequestProcessorIds:Lkotlinx/atomicfu/AtomicInt;

    return-void
.end method

.method public static final getGraphRequestProcessorIds()Lkotlinx/atomicfu/AtomicInt;
    .locals 1

    .line 30
    sget-object v0, Landroidx/camera/camera2/pipe/graph/GraphRequestProcessorKt;->graphRequestProcessorIds:Lkotlinx/atomicfu/AtomicInt;

    return-object v0
.end method
