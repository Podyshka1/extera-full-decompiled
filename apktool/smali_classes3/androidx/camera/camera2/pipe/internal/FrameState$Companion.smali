.class public final Landroidx/camera/camera2/pipe/internal/FrameState$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/internal/FrameState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Landroidx/camera/camera2/pipe/internal/FrameState$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$nextFrameId-OMxQvVY(Landroidx/camera/camera2/pipe/internal/FrameState$Companion;)J
    .locals 2

    .line 282
    invoke-direct {p0}, Landroidx/camera/camera2/pipe/internal/FrameState$Companion;->nextFrameId-OMxQvVY()J

    move-result-wide v0

    return-wide v0
.end method

.method private final nextFrameId-OMxQvVY()J
    .locals 2

    .line 285
    invoke-static {}, Landroidx/camera/camera2/pipe/internal/FrameState;->access$getFrameIds$cp()Lkotlinx/atomicfu/AtomicLong;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/atomicfu/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/camera/camera2/pipe/FrameId;->constructor-impl(J)J

    move-result-wide v0

    return-wide v0
.end method
