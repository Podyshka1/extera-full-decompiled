.class abstract Lkotlin/time/DurationUnitKt__DurationUnitJvmKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final convertDurationUnit(JLkotlin/time/DurationUnit;Lkotlin/time/DurationUnit;)J
    .locals 1

    const-string/jumbo v0, "sourceUnit"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "targetUnit"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    invoke-virtual {p3}, Lkotlin/time/DurationUnit;->getTimeUnit$kotlin_stdlib()Ljava/util/concurrent/TimeUnit;

    move-result-object p3

    invoke-virtual {p2}, Lkotlin/time/DurationUnit;->getTimeUnit$kotlin_stdlib()Ljava/util/concurrent/TimeUnit;

    move-result-object p2

    invoke-virtual {p3, p0, p1, p2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final convertDurationUnitOverflow(JLkotlin/time/DurationUnit;Lkotlin/time/DurationUnit;)J
    .locals 1

    const-string/jumbo v0, "sourceUnit"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "targetUnit"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-virtual {p3}, Lkotlin/time/DurationUnit;->getTimeUnit$kotlin_stdlib()Ljava/util/concurrent/TimeUnit;

    move-result-object p3

    invoke-virtual {p2}, Lkotlin/time/DurationUnit;->getTimeUnit$kotlin_stdlib()Ljava/util/concurrent/TimeUnit;

    move-result-object p2

    invoke-virtual {p3, p0, p1, p2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p0

    return-wide p0
.end method
