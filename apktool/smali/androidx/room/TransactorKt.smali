.class public abstract Landroidx/room/TransactorKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic $r8$lambda$VVj_enrVNhrquoXbSKTrpTfnIsI(Landroidx/sqlite/SQLiteStatement;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Landroidx/room/TransactorKt;->execSQL$lambda$0(Landroidx/sqlite/SQLiteStatement;)Z

    move-result p0

    return p0
.end method

.method public static final execSQL(Landroidx/room/PooledConnection;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    .line 46
    new-instance v0, Landroidx/room/TransactorKt$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/room/TransactorKt$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p0, p1, v0, p2}, Landroidx/room/PooledConnection;->usePrepared(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final execSQL$lambda$0(Landroidx/sqlite/SQLiteStatement;)Z
    .locals 1

    const-string/jumbo v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->step()Z

    move-result p0

    return p0
.end method
