.class public final Lkotlinx/atomicfu/AtomicLong;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/atomicfu/AtomicLong$Companion;
    }
.end annotation


# static fields
.field private static final Companion:Lkotlinx/atomicfu/AtomicLong$Companion;

.field private static final FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;


# instance fields
.field private final trace:Lkotlinx/atomicfu/TraceBase;

.field private volatile value:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlinx/atomicfu/AtomicLong$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlinx/atomicfu/AtomicLong$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlinx/atomicfu/AtomicLong;->Companion:Lkotlinx/atomicfu/AtomicLong$Companion;

    .line 466
    const-class v0, Lkotlinx/atomicfu/AtomicLong;

    const-string v1, "value"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/atomicfu/AtomicLong;->FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    return-void
.end method

.method public constructor <init>(JLkotlinx/atomicfu/TraceBase;)V
    .locals 1

    const-string v0, "trace"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 348
    iput-object p3, p0, Lkotlinx/atomicfu/AtomicLong;->trace:Lkotlinx/atomicfu/TraceBase;

    .line 355
    iput-wide p1, p0, Lkotlinx/atomicfu/AtomicLong;->value:J

    return-void
.end method


# virtual methods
.method public final compareAndSet(JJ)Z
    .locals 6

    .line 381
    sget-object v0, Lkotlinx/atomicfu/AtomicLong;->FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 382
    iget-object p2, v1, Lkotlinx/atomicfu/AtomicLong;->trace:Lkotlinx/atomicfu/TraceBase;

    sget-object p3, Lkotlinx/atomicfu/TraceBase$None;->INSTANCE:Lkotlinx/atomicfu/TraceBase$None;

    if-eq p2, p3, :cond_0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "CAS("

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p4, ", "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p4, 0x29

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lkotlinx/atomicfu/TraceBase;->append(Ljava/lang/Object;)V

    :cond_0
    return p1
.end method

.method public final getValue()J
    .locals 2

    .line 354
    iget-wide v0, p0, Lkotlinx/atomicfu/AtomicLong;->value:J

    return-wide v0
.end method

.method public final incrementAndGet()J
    .locals 5

    .line 435
    sget-object v0, Lkotlinx/atomicfu/AtomicLong;->FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->incrementAndGet(Ljava/lang/Object;)J

    move-result-wide v0

    .line 436
    iget-object v2, p0, Lkotlinx/atomicfu/AtomicLong;->trace:Lkotlinx/atomicfu/TraceBase;

    sget-object v3, Lkotlinx/atomicfu/TraceBase$None;->INSTANCE:Lkotlinx/atomicfu/TraceBase$None;

    if-eq v2, v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "incAndGet():"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lkotlinx/atomicfu/TraceBase;->append(Ljava/lang/Object;)V

    :cond_0
    return-wide v0
.end method

.method public final setValue(J)V
    .locals 3

    .line 357
    iput-wide p1, p0, Lkotlinx/atomicfu/AtomicLong;->value:J

    .line 358
    iget-object v0, p0, Lkotlinx/atomicfu/AtomicLong;->trace:Lkotlinx/atomicfu/TraceBase;

    sget-object v1, Lkotlinx/atomicfu/TraceBase$None;->INSTANCE:Lkotlinx/atomicfu/TraceBase$None;

    if-eq v0, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lkotlinx/atomicfu/TraceBase;->append(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 463
    iget-wide v0, p0, Lkotlinx/atomicfu/AtomicLong;->value:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
