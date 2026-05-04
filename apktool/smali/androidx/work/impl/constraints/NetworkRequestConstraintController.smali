.class public final Landroidx/work/impl/constraints/NetworkRequestConstraintController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/work/impl/constraints/controllers/ConstraintController;


# instance fields
.field private final connManager:Landroid/net/ConnectivityManager;

.field private final timeoutMs:J


# direct methods
.method public constructor <init>(Landroid/net/ConnectivityManager;J)V
    .locals 1

    const-string v0, "connManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-object p1, p0, Landroidx/work/impl/constraints/NetworkRequestConstraintController;->connManager:Landroid/net/ConnectivityManager;

    .line 138
    iput-wide p2, p0, Landroidx/work/impl/constraints/NetworkRequestConstraintController;->timeoutMs:J

    return-void
.end method

.method public synthetic constructor <init>(Landroid/net/ConnectivityManager;JILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const-wide/16 p2, 0x3e8

    .line 136
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroidx/work/impl/constraints/NetworkRequestConstraintController;-><init>(Landroid/net/ConnectivityManager;J)V

    return-void
.end method

.method public static final synthetic access$getConnManager$p(Landroidx/work/impl/constraints/NetworkRequestConstraintController;)Landroid/net/ConnectivityManager;
    .locals 0

    .line 135
    iget-object p0, p0, Landroidx/work/impl/constraints/NetworkRequestConstraintController;->connManager:Landroid/net/ConnectivityManager;

    return-object p0
.end method

.method public static final synthetic access$getTimeoutMs$p(Landroidx/work/impl/constraints/NetworkRequestConstraintController;)J
    .locals 2

    .line 135
    iget-wide v0, p0, Landroidx/work/impl/constraints/NetworkRequestConstraintController;->timeoutMs:J

    return-wide v0
.end method


# virtual methods
.method public hasConstraint(Landroidx/work/impl/model/WorkSpec;)Z
    .locals 1

    const-string/jumbo v0, "workSpec"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    iget-object p1, p1, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    invoke-virtual {p1}, Landroidx/work/Constraints;->getRequiredNetworkRequest()Landroid/net/NetworkRequest;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isCurrentlyConstrained(Landroidx/work/impl/model/WorkSpec;)Z
    .locals 1

    const-string/jumbo v0, "workSpec"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    invoke-virtual {p0, p1}, Landroidx/work/impl/constraints/NetworkRequestConstraintController;->hasConstraint(Landroidx/work/impl/model/WorkSpec;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 193
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 194
    const-string v0, "isCurrentlyConstrained() must never be called onNetworkRequestConstraintController. isCurrentlyConstrained() is called only on older platforms where NetworkRequest isn\'t supported"

    .line 193
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public track(Landroidx/work/Constraints;)Lkotlinx/coroutines/flow/Flow;
    .locals 2

    const-string v0, "constraints"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    new-instance v0, Landroidx/work/impl/constraints/NetworkRequestConstraintController$track$1;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Landroidx/work/impl/constraints/NetworkRequestConstraintController$track$1;-><init>(Landroidx/work/Constraints;Landroidx/work/impl/constraints/NetworkRequestConstraintController;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->callbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    return-object p1
.end method
