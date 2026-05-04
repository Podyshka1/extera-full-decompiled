.class public final Landroidx/camera/camera2/pipe/internal/OutputMatcher;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/pipe/internal/OutputMatcher$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/camera2/pipe/internal/OutputMatcher$Companion;

.field private static final EXACT:Landroidx/camera/camera2/pipe/internal/OutputMatcher;


# instance fields
.field private final currentOffset:Lkotlinx/atomicfu/AtomicRef;

.field private final errorDelta:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/camera/camera2/pipe/internal/OutputMatcher$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/pipe/internal/OutputMatcher$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/camera/camera2/pipe/internal/OutputMatcher;->Companion:Landroidx/camera/camera2/pipe/internal/OutputMatcher$Companion;

    .line 91
    new-instance v0, Landroidx/camera/camera2/pipe/internal/OutputMatcher;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, v1, v2}, Landroidx/camera/camera2/pipe/internal/OutputMatcher;-><init>(JJ)V

    sput-object v0, Landroidx/camera/camera2/pipe/internal/OutputMatcher;->EXACT:Landroidx/camera/camera2/pipe/internal/OutputMatcher;

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-wide p3, p0, Landroidx/camera/camera2/pipe/internal/OutputMatcher;->errorDelta:J

    .line 37
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/atomicfu/AtomicFU;->atomic(Ljava/lang/Object;)Lkotlinx/atomicfu/AtomicRef;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/internal/OutputMatcher;->currentOffset:Lkotlinx/atomicfu/AtomicRef;

    return-void
.end method

.method public static final synthetic access$getEXACT$cp()Landroidx/camera/camera2/pipe/internal/OutputMatcher;
    .locals 1

    .line 34
    sget-object v0, Landroidx/camera/camera2/pipe/internal/OutputMatcher;->EXACT:Landroidx/camera/camera2/pipe/internal/OutputMatcher;

    return-object v0
.end method


# virtual methods
.method public final fuzzyEqual(JJ)Z
    .locals 6

    .line 44
    iget-object v0, p0, Landroidx/camera/camera2/pipe/internal/OutputMatcher;->currentOffset:Lkotlinx/atomicfu/AtomicRef;

    invoke-virtual {v0}, Lkotlinx/atomicfu/AtomicRef;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    sub-long/2addr p1, p3

    add-long/2addr p1, v0

    const-wide/16 p3, 0x0

    cmp-long v2, p1, p3

    const/4 v3, 0x1

    if-nez v2, :cond_0

    return v3

    .line 49
    :cond_0
    iget-wide v4, p0, Landroidx/camera/camera2/pipe/internal/OutputMatcher;->errorDelta:J

    cmp-long p3, v4, p3

    if-eqz p3, :cond_1

    cmp-long p3, p1, v4

    if-gez p3, :cond_1

    neg-long p3, v4

    cmp-long p3, p1, p3

    if-lez p3, :cond_1

    .line 51
    iget-object p3, p0, Landroidx/camera/camera2/pipe/internal/OutputMatcher;->currentOffset:Lkotlinx/atomicfu/AtomicRef;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    sub-long/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p3, p4, p1}, Lkotlinx/atomicfu/AtomicRef;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    return v3

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
