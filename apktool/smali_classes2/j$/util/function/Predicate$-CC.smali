.class public final synthetic Lj$/util/function/Predicate$-CC;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static $default$and(Ljava/util/function/Predicate;Ljava/util/function/Predicate;)Ljava/util/function/Predicate;
    .locals 2

    .line 68
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    new-instance v0, Lj$/util/function/h;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lj$/util/function/h;-><init>(Ljava/util/function/Predicate;Ljava/util/function/Predicate;I)V

    return-object v0
.end method

.method public static $default$negate(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;
    .locals 2

    .line 80
    new-instance v0, Lj$/time/s;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Lj$/time/s;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static $default$or(Ljava/util/function/Predicate;Ljava/util/function/Predicate;)Ljava/util/function/Predicate;
    .locals 2

    .line 100
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    new-instance v0, Lj$/util/function/h;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lj$/util/function/h;-><init>(Ljava/util/function/Predicate;Ljava/util/function/Predicate;I)V

    return-object v0
.end method
