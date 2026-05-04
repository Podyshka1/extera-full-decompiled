.class public final synthetic Lj$/util/function/IntPredicate$-CC;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static $default$and(Ljava/util/function/IntPredicate;Ljava/util/function/IntPredicate;)Ljava/util/function/IntPredicate;
    .locals 2

    .line 69
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    new-instance v0, Lj$/util/function/e;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lj$/util/function/e;-><init>(Ljava/util/function/IntPredicate;Ljava/util/function/IntPredicate;I)V

    return-object v0
.end method

.method public static $default$negate(Ljava/util/function/IntPredicate;)Ljava/util/function/IntPredicate;
    .locals 2

    .line 81
    new-instance v0, Lj$/time/s;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lj$/time/s;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static $default$or(Ljava/util/function/IntPredicate;Ljava/util/function/IntPredicate;)Ljava/util/function/IntPredicate;
    .locals 2

    .line 101
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    new-instance v0, Lj$/util/function/e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lj$/util/function/e;-><init>(Ljava/util/function/IntPredicate;Ljava/util/function/IntPredicate;I)V

    return-object v0
.end method
