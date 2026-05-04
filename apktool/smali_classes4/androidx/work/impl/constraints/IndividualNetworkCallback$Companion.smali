.class public final Landroidx/work/impl/constraints/IndividualNetworkCallback$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/impl/constraints/IndividualNetworkCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public static synthetic $r8$lambda$1NfazpWnJwNEPqnnR-ro2tZElFI(Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/net/ConnectivityManager;Landroidx/work/impl/constraints/IndividualNetworkCallback;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Landroidx/work/impl/constraints/IndividualNetworkCallback$Companion;->addCallback$lambda$0(Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/net/ConnectivityManager;Landroidx/work/impl/constraints/IndividualNetworkCallback;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>()V
    .locals 0

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Landroidx/work/impl/constraints/IndividualNetworkCallback$Companion;-><init>()V

    return-void
.end method

.method private static final addCallback$lambda$0(Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/net/ConnectivityManager;Landroidx/work/impl/constraints/IndividualNetworkCallback;)Lkotlin/Unit;
    .locals 2

    .line 249
    iget-boolean p0, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz p0, :cond_0

    .line 250
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object p0

    .line 251
    invoke-static {}, Landroidx/work/impl/constraints/WorkConstraintsTrackerKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkRequestConstraintController unregister callback"

    invoke-virtual {p0, v0, v1}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    invoke-virtual {p1, p2}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 254
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final addCallback(Landroid/net/ConnectivityManager;Landroid/net/NetworkRequest;Lkotlin/jvm/functions/Function1;)Lkotlin/jvm/functions/Function0;
    .locals 7

    const-string v0, "connManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkRequest"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onConstraintState"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    new-instance v0, Landroidx/work/impl/constraints/IndividualNetworkCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p3, v1}, Landroidx/work/impl/constraints/IndividualNetworkCallback;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 226
    new-instance v2, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 228
    :try_start_0
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v3

    invoke-static {}, Landroidx/work/impl/constraints/WorkConstraintsTrackerKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v4

    const-string v5, "NetworkRequestConstraintController register callback"

    invoke-virtual {v3, v4, v5}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    invoke-virtual {p1, p2, v0}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    const/4 p2, 0x1

    .line 230
    iput-boolean p2, v2, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 236
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "getName(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x2

    const-string v6, "TooManyRequestsException"

    invoke-static {v3, v6, v4, v5, v1}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 237
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v1

    .line 239
    invoke-static {}, Landroidx/work/impl/constraints/WorkConstraintsTrackerKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v3

    .line 240
    const-string v4, "NetworkRequestConstraintController couldn\'t register callback"

    .line 238
    invoke-virtual {v1, v3, v4, p2}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 243
    new-instance p2, Landroidx/work/impl/constraints/ConstraintsState$ConstraintsNotMet;

    const/4 v1, 0x7

    invoke-direct {p2, v1}, Landroidx/work/impl/constraints/ConstraintsState$ConstraintsNotMet;-><init>(I)V

    invoke-interface {p3, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    :goto_0
    new-instance p2, Landroidx/work/impl/constraints/IndividualNetworkCallback$Companion$$ExternalSyntheticLambda0;

    invoke-direct {p2, v2, p1, v0}, Landroidx/work/impl/constraints/IndividualNetworkCallback$Companion$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/net/ConnectivityManager;Landroidx/work/impl/constraints/IndividualNetworkCallback;)V

    return-object p2

    .line 245
    :cond_0
    throw p2
.end method
