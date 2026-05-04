.class public final Lkotlin/time/Duration;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/time/Duration$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lkotlin/time/Duration$Companion;

.field private static final INFINITE:J

.field private static final NEG_INFINITE:J

.field private static final ZERO:J


# instance fields
.field private final rawValue:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlin/time/Duration$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/time/Duration$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    const-wide/16 v0, 0x0

    .line 55
    invoke-static {v0, v1}, Lkotlin/time/Duration;->constructor-impl(J)J

    move-result-wide v0

    sput-wide v0, Lkotlin/time/Duration;->ZERO:J

    const-wide v0, 0x3fffffffffffffffL    # 1.9999999999999998

    .line 58
    invoke-static {v0, v1}, Lkotlin/time/DurationKt;->access$durationOfMillis(J)J

    move-result-wide v0

    sput-wide v0, Lkotlin/time/Duration;->INFINITE:J

    const-wide v0, -0x3fffffffffffffffL    # -2.0000000000000004

    .line 59
    invoke-static {v0, v1}, Lkotlin/time/DurationKt;->access$durationOfMillis(J)J

    move-result-wide v0

    sput-wide v0, Lkotlin/time/Duration;->NEG_INFINITE:J

    return-void
.end method

.method private synthetic constructor <init>(J)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lkotlin/time/Duration;->rawValue:J

    return-void
.end method

.method private static final addValuesMixedRanges-UwyO8pc(JJJ)J
    .locals 6

    .line 311
    invoke-static {p4, p5}, Lkotlin/time/DurationKt;->access$nanosToMillis(J)J

    move-result-wide p0

    add-long v0, p2, p0

    const-wide p2, -0x431bde82d7aL

    cmp-long p2, p2, v0

    if-gtz p2, :cond_0

    const-wide p2, 0x431bde82d7bL

    cmp-long p2, v0, p2

    if-gez p2, :cond_0

    .line 314
    invoke-static {p0, p1}, Lkotlin/time/DurationKt;->access$millisToNanos(J)J

    move-result-wide p0

    sub-long/2addr p4, p0

    .line 315
    invoke-static {v0, v1}, Lkotlin/time/DurationKt;->access$millisToNanos(J)J

    move-result-wide p0

    add-long/2addr p0, p4

    invoke-static {p0, p1}, Lkotlin/time/DurationKt;->access$durationOfNanos(J)J

    move-result-wide p0

    return-wide p0

    :cond_0
    const-wide v2, -0x3fffffffffffffffL    # -2.0000000000000004

    const-wide v4, 0x3fffffffffffffffL    # 1.9999999999999998

    .line 317
    invoke-static/range {v0 .. v5}, Lkotlin/ranges/RangesKt;->coerceIn(JJJ)J

    move-result-wide p0

    invoke-static {p0, p1}, Lkotlin/time/DurationKt;->access$durationOfMillis(J)J

    move-result-wide p0

    return-wide p0
.end method

.method private static final appendFractional-impl(JLjava/lang/StringBuilder;IIILjava/lang/String;Z)V
    .locals 1

    .line 765
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_4

    const/16 p0, 0x2e

    .line 767
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 768
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x30

    invoke-static {p0, p5, p1}, Lkotlin/text/StringsKt;->padStart(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    .line 170
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p3

    const/4 p4, -0x1

    add-int/2addr p3, p4

    if-ltz p3, :cond_2

    :goto_0
    add-int/lit8 p5, p3, -0x1

    .line 171
    invoke-interface {p0, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-eq v0, p1, :cond_0

    move p4, p3

    goto :goto_1

    :cond_0
    if-gez p5, :cond_1

    goto :goto_1

    :cond_1
    move p3, p5

    goto :goto_0

    :cond_2
    :goto_1
    add-int/lit8 p1, p4, 0x1

    .line 771
    const-string p3, "append(...)"

    const/4 p5, 0x0

    const/4 v0, 0x3

    if-nez p7, :cond_3

    if-ge p1, v0, :cond_3

    invoke-virtual {p2, p0, p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    add-int/2addr p4, v0

    .line 772
    div-int/2addr p4, v0

    mul-int/2addr p4, v0

    invoke-virtual {p2, p0, p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 775
    :cond_4
    :goto_2
    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static final synthetic box-impl(J)Lkotlin/time/Duration;
    .locals 1

    new-instance v0, Lkotlin/time/Duration;

    invoke-direct {v0, p0, p1}, Lkotlin/time/Duration;-><init>(J)V

    return-object v0
.end method

.method public static compareTo-LRDsOJo(JJ)I
    .locals 4

    xor-long v0, p0, p2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_2

    long-to-int v0, v0

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    long-to-int v0, p0

    and-int/lit8 v0, v0, 0x1

    long-to-int p2, p2

    and-int/lit8 p2, p2, 0x1

    sub-int/2addr v0, p2

    .line 479
    invoke-static {p0, p1}, Lkotlin/time/Duration;->isNegative-impl(J)Z

    move-result p0

    if-eqz p0, :cond_1

    neg-int p0, v0

    return p0

    :cond_1
    return v0

    .line 476
    :cond_2
    :goto_0
    invoke-static {p0, p1, p2, p3}, Lkotlin/jvm/internal/Intrinsics;->compare(JJ)I

    move-result p0

    return p0
.end method

.method public static constructor-impl(J)J
    .locals 4

    .line 43
    invoke-static {}, Lkotlin/time/DurationJvmKt;->getDurationAssertionsEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 44
    invoke-static {p0, p1}, Lkotlin/time/Duration;->isInNanos-impl(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getValue-impl(J)J

    move-result-wide v0

    const-wide v2, -0x3ffffffffffa14bfL    # -2.0000000001722644

    cmp-long v2, v2, v0

    if-gtz v2, :cond_0

    const-wide v2, 0x3ffffffffffa14c0L    # 1.999999999913868

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    return-wide p0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1}, Lkotlin/time/Duration;->getValue-impl(J)J

    move-result-wide p0

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " ns is out of nanoseconds range"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 47
    :cond_1
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getValue-impl(J)J

    move-result-wide v0

    const-wide v2, -0x3fffffffffffffffL    # -2.0000000000000004

    cmp-long v2, v2, v0

    if-gtz v2, :cond_4

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    cmp-long v0, v0, v2

    if-gez v0, :cond_4

    .line 48
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getValue-impl(J)J

    move-result-wide v0

    const-wide v2, -0x431bde82d7aL

    cmp-long v2, v2, v0

    if-gtz v2, :cond_3

    const-wide v2, 0x431bde82d7bL

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    return-wide p0

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1}, Lkotlin/time/Duration;->getValue-impl(J)J

    move-result-wide p0

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " ms is denormalized"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_3
    return-wide p0

    .line 47
    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1}, Lkotlin/time/Duration;->getValue-impl(J)J

    move-result-wide p0

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " ms is out of milliseconds range"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_5
    return-wide p0
.end method

.method public static equals-impl(JLjava/lang/Object;)Z
    .locals 4

    instance-of v0, p2, Lkotlin/time/Duration;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p2, Lkotlin/time/Duration;

    invoke-virtual {p2}, Lkotlin/time/Duration;->unbox-impl()J

    move-result-wide v2

    cmp-long p0, p0, v2

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static final getAbsoluteValue-UwyO8pc(J)J
    .locals 1

    .line 471
    invoke-static {p0, p1}, Lkotlin/time/Duration;->isNegative-impl(J)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lkotlin/time/Duration;->unaryMinus-UwyO8pc(J)J

    move-result-wide p0

    :cond_0
    return-wide p0
.end method

.method public static final getHoursComponent-impl(J)I
    .locals 2

    .line 553
    invoke-static {p0, p1}, Lkotlin/time/Duration;->isInfinite-impl(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getInWholeHours-impl(J)J

    move-result-wide p0

    const/16 v0, 0x18

    int-to-long v0, v0

    rem-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method public static final getInWholeDays-impl(J)J
    .locals 1

    .line 628
    sget-object v0, Lkotlin/time/DurationUnit;->DAYS:Lkotlin/time/DurationUnit;

    invoke-static {p0, p1, v0}, Lkotlin/time/Duration;->toLong-impl(JLkotlin/time/DurationUnit;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final getInWholeHours-impl(J)J
    .locals 1

    .line 636
    sget-object v0, Lkotlin/time/DurationUnit;->HOURS:Lkotlin/time/DurationUnit;

    invoke-static {p0, p1, v0}, Lkotlin/time/Duration;->toLong-impl(JLkotlin/time/DurationUnit;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final getInWholeMilliseconds-impl(J)J
    .locals 1

    .line 661
    invoke-static {p0, p1}, Lkotlin/time/Duration;->isInMillis-impl(J)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lkotlin/time/Duration;->isFinite-impl(J)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lkotlin/time/Duration;->getValue-impl(J)J

    move-result-wide p0

    return-wide p0

    :cond_0
    sget-object v0, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {p0, p1, v0}, Lkotlin/time/Duration;->toLong-impl(JLkotlin/time/DurationUnit;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final getInWholeMinutes-impl(J)J
    .locals 1

    .line 644
    sget-object v0, Lkotlin/time/DurationUnit;->MINUTES:Lkotlin/time/DurationUnit;

    invoke-static {p0, p1, v0}, Lkotlin/time/Duration;->toLong-impl(JLkotlin/time/DurationUnit;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final getInWholeSeconds-impl(J)J
    .locals 1

    .line 652
    sget-object v0, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    invoke-static {p0, p1, v0}, Lkotlin/time/Duration;->toLong-impl(JLkotlin/time/DurationUnit;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final getMinutesComponent-impl(J)I
    .locals 2

    .line 557
    invoke-static {p0, p1}, Lkotlin/time/Duration;->isInfinite-impl(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getInWholeMinutes-impl(J)J

    move-result-wide p0

    const/16 v0, 0x3c

    int-to-long v0, v0

    rem-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method public static final getNanosecondsComponent-impl(J)I
    .locals 2

    .line 566
    invoke-static {p0, p1}, Lkotlin/time/Duration;->isInfinite-impl(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 567
    :cond_0
    invoke-static {p0, p1}, Lkotlin/time/Duration;->isInMillis-impl(J)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0, p1}, Lkotlin/time/Duration;->getValue-impl(J)J

    move-result-wide p0

    const/16 v0, 0x3e8

    int-to-long v0, v0

    rem-long/2addr p0, v0

    invoke-static {p0, p1}, Lkotlin/time/DurationKt;->access$millisToNanos(J)J

    move-result-wide p0

    :goto_0
    long-to-int p0, p0

    return p0

    .line 568
    :cond_1
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getValue-impl(J)J

    move-result-wide p0

    const v0, 0x3b9aca00

    int-to-long v0, v0

    rem-long/2addr p0, v0

    goto :goto_0
.end method

.method public static final getSecondsComponent-impl(J)I
    .locals 2

    .line 561
    invoke-static {p0, p1}, Lkotlin/time/Duration;->isInfinite-impl(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getInWholeSeconds-impl(J)J

    move-result-wide p0

    const/16 v0, 0x3c

    int-to-long v0, v0

    rem-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method private static final getStorageUnit-impl(J)Lkotlin/time/DurationUnit;
    .locals 0

    .line 40
    invoke-static {p0, p1}, Lkotlin/time/Duration;->isInNanos-impl(J)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lkotlin/time/DurationUnit;->NANOSECONDS:Lkotlin/time/DurationUnit;

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    return-object p0
.end method

.method private static final getValue-impl(J)J
    .locals 1

    const/4 v0, 0x1

    shr-long/2addr p0, v0

    return-wide p0
.end method

.method public static hashCode-impl(J)I
    .locals 0

    invoke-static {p0, p1}, Landroidx/camera/camera2/pipe/CameraTimestamp$$ExternalSyntheticBackport0;->m(J)I

    move-result p0

    return p0
.end method

.method public static final isFinite-impl(J)Z
    .locals 0

    .line 468
    invoke-static {p0, p1}, Lkotlin/time/Duration;->isInfinite-impl(J)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static final isInMillis-impl(J)Z
    .locals 0

    long-to-int p0, p0

    const/4 p1, 0x1

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    return p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static final isInNanos-impl(J)Z
    .locals 0

    long-to-int p0, p0

    const/4 p1, 0x1

    and-int/2addr p0, p1

    if-nez p0, :cond_0

    return p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final isInfinite-impl(J)Z
    .locals 2

    .line 465
    sget-wide v0, Lkotlin/time/Duration;->INFINITE:J

    cmp-long v0, p0, v0

    if-eqz v0, :cond_1

    sget-wide v0, Lkotlin/time/Duration;->NEG_INFINITE:J

    cmp-long p0, p0, v0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static final isNegative-impl(J)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final isPositive-impl(J)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final plus-LRDsOJo(JJ)J
    .locals 7

    .line 284
    invoke-static {p0, p1}, Lkotlin/time/Duration;->isInfinite-impl(J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 285
    invoke-static {p2, p3}, Lkotlin/time/Duration;->isFinite-impl(J)Z

    move-result v0

    if-nez v0, :cond_1

    xor-long/2addr p2, p0

    const-wide/16 v0, 0x0

    cmp-long p2, p2, v0

    if-ltz p2, :cond_0

    goto :goto_0

    .line 288
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Summing infinite durations of different signs yields an undefined result."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-wide p0

    .line 290
    :cond_2
    invoke-static {p2, p3}, Lkotlin/time/Duration;->isInfinite-impl(J)Z

    move-result v0

    if-eqz v0, :cond_3

    return-wide p2

    :cond_3
    long-to-int v0, p0

    and-int/lit8 v0, v0, 0x1

    long-to-int v1, p2

    and-int/lit8 v1, v1, 0x1

    if-ne v0, v1, :cond_5

    .line 295
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getValue-impl(J)J

    move-result-wide v0

    invoke-static {p2, p3}, Lkotlin/time/Duration;->getValue-impl(J)J

    move-result-wide p2

    add-long/2addr v0, p2

    .line 297
    invoke-static {p0, p1}, Lkotlin/time/Duration;->isInNanos-impl(J)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 298
    invoke-static {v0, v1}, Lkotlin/time/DurationKt;->access$durationOfNanosNormalized(J)J

    move-result-wide p0

    return-wide p0

    .line 300
    :cond_4
    invoke-static {v0, v1}, Lkotlin/time/DurationKt;->access$durationOfMillisNormalized(J)J

    move-result-wide p0

    return-wide p0

    .line 303
    :cond_5
    invoke-static {p0, p1}, Lkotlin/time/Duration;->isInMillis-impl(J)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 304
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getValue-impl(J)J

    move-result-wide v3

    invoke-static {p2, p3}, Lkotlin/time/Duration;->getValue-impl(J)J

    move-result-wide v5

    move-wide v1, p0

    invoke-static/range {v1 .. v6}, Lkotlin/time/Duration;->addValuesMixedRanges-UwyO8pc(JJJ)J

    move-result-wide p0

    return-wide p0

    :cond_6
    move-wide v0, p0

    .line 306
    invoke-static {p2, p3}, Lkotlin/time/Duration;->getValue-impl(J)J

    move-result-wide v2

    invoke-static {v0, v1}, Lkotlin/time/Duration;->getValue-impl(J)J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lkotlin/time/Duration;->addValuesMixedRanges-UwyO8pc(JJJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final toLong-impl(JLkotlin/time/DurationUnit;)J
    .locals 2

    const-string/jumbo v0, "unit"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 603
    sget-wide v0, Lkotlin/time/Duration;->INFINITE:J

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const-wide p0, 0x7fffffffffffffffL

    return-wide p0

    .line 604
    :cond_0
    sget-wide v0, Lkotlin/time/Duration;->NEG_INFINITE:J

    cmp-long v0, p0, v0

    if-nez v0, :cond_1

    const-wide/high16 p0, -0x8000000000000000L

    return-wide p0

    .line 605
    :cond_1
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getValue-impl(J)J

    move-result-wide v0

    invoke-static {p0, p1}, Lkotlin/time/Duration;->getStorageUnit-impl(J)Lkotlin/time/DurationUnit;

    move-result-object p0

    invoke-static {v0, v1, p0, p2}, Lkotlin/time/DurationUnitKt__DurationUnitJvmKt;->convertDurationUnit(JLkotlin/time/DurationUnit;Lkotlin/time/DurationUnit;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static toString-impl(J)Ljava/lang/String;
    .locals 14

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-nez v2, :cond_0

    .line 720
    const-string p0, "0s"

    return-object p0

    .line 721
    :cond_0
    sget-wide v2, Lkotlin/time/Duration;->INFINITE:J

    cmp-long v2, p0, v2

    if-nez v2, :cond_1

    const-string p0, "Infinity"

    return-object p0

    .line 722
    :cond_1
    sget-wide v2, Lkotlin/time/Duration;->NEG_INFINITE:J

    cmp-long v2, p0, v2

    if-nez v2, :cond_2

    const-string p0, "-Infinity"

    return-object p0

    .line 724
    :cond_2
    invoke-static {p0, p1}, Lkotlin/time/Duration;->isNegative-impl(J)Z

    move-result v2

    .line 725
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v2, :cond_3

    const/16 v3, 0x2d

    .line 726
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 727
    :cond_3
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getAbsoluteValue-UwyO8pc(J)J

    move-result-wide v3

    .line 500
    invoke-static {v3, v4}, Lkotlin/time/Duration;->getInWholeDays-impl(J)J

    move-result-wide v6

    invoke-static {v3, v4}, Lkotlin/time/Duration;->getHoursComponent-impl(J)I

    move-result v8

    invoke-static {v3, v4}, Lkotlin/time/Duration;->getMinutesComponent-impl(J)I

    move-result v9

    move-wide v10, v6

    invoke-static {v3, v4}, Lkotlin/time/Duration;->getSecondsComponent-impl(J)I

    move-result v6

    invoke-static {v3, v4}, Lkotlin/time/Duration;->getNanosecondsComponent-impl(J)I

    move-result v7

    cmp-long v0, v10, v0

    const/4 v1, 0x0

    const/4 v12, 0x1

    if-eqz v0, :cond_4

    move v0, v12

    goto :goto_0

    :cond_4
    move v0, v1

    :goto_0
    if-eqz v8, :cond_5

    move v3, v12

    goto :goto_1

    :cond_5
    move v3, v1

    :goto_1
    if-eqz v9, :cond_6

    move v4, v12

    goto :goto_2

    :cond_6
    move v4, v1

    :goto_2
    if-nez v6, :cond_8

    if-eqz v7, :cond_7

    goto :goto_3

    :cond_7
    move v13, v1

    goto :goto_4

    :cond_8
    :goto_3
    move v13, v12

    :goto_4
    if-eqz v0, :cond_9

    .line 734
    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v1, v12

    :cond_9
    const/16 v10, 0x20

    if-nez v3, :cond_a

    if-eqz v0, :cond_c

    if-nez v4, :cond_a

    if-eqz v13, :cond_c

    :cond_a
    add-int/lit8 v11, v1, 0x1

    if-lez v1, :cond_b

    .line 738
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 739
    :cond_b
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x68

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v1, v11

    :cond_c
    if-nez v4, :cond_d

    if-eqz v13, :cond_f

    if-nez v3, :cond_d

    if-eqz v0, :cond_f

    :cond_d
    add-int/lit8 v8, v1, 0x1

    if-lez v1, :cond_e

    .line 742
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 743
    :cond_e
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x6d

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v1, v8

    :cond_f
    if-eqz v13, :cond_15

    add-int/lit8 v11, v1, 0x1

    if-lez v1, :cond_10

    .line 746
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_10
    if-nez v6, :cond_11

    if-nez v0, :cond_11

    if-nez v3, :cond_11

    if-eqz v4, :cond_12

    :cond_11
    move-wide v3, p0

    goto :goto_5

    :cond_12
    const v0, 0xf4240

    if-lt v7, v0, :cond_13

    .line 751
    div-int v6, v7, v0

    rem-int/2addr v7, v0

    const-string/jumbo v9, "ms"

    const/4 v10, 0x0

    const/4 v8, 0x6

    move-wide v3, p0

    invoke-static/range {v3 .. v10}, Lkotlin/time/Duration;->appendFractional-impl(JLjava/lang/StringBuilder;IIILjava/lang/String;Z)V

    goto :goto_6

    :cond_13
    move-wide v3, p0

    const/16 p0, 0x3e8

    if-lt v7, p0, :cond_14

    .line 753
    div-int/lit16 v6, v7, 0x3e8

    rem-int/2addr v7, p0

    const-string/jumbo v9, "us"

    const/4 v10, 0x0

    const/4 v8, 0x3

    invoke-static/range {v3 .. v10}, Lkotlin/time/Duration;->appendFractional-impl(JLjava/lang/StringBuilder;IIILjava/lang/String;Z)V

    goto :goto_6

    .line 755
    :cond_14
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "ns"

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 749
    :goto_5
    const-string/jumbo v9, "s"

    const/4 v10, 0x0

    const/16 v8, 0x9

    invoke-static/range {v3 .. v10}, Lkotlin/time/Duration;->appendFractional-impl(JLjava/lang/StringBuilder;IIILjava/lang/String;Z)V

    :goto_6
    move v1, v11

    :cond_15
    if-eqz v2, :cond_16

    if-le v1, v12, :cond_16

    const/16 p0, 0x28

    .line 758
    invoke-virtual {v5, v12, p0}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 p1, 0x29

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 725
    :cond_16
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final unaryMinus-UwyO8pc(J)J
    .locals 2

    .line 274
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getValue-impl(J)J

    move-result-wide v0

    neg-long v0, v0

    long-to-int p0, p0

    and-int/lit8 p0, p0, 0x1

    invoke-static {v0, v1, p0}, Lkotlin/time/DurationKt;->access$durationOf(JI)J

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 2

    .line 32
    check-cast p1, Lkotlin/time/Duration;

    invoke-virtual {p1}, Lkotlin/time/Duration;->unbox-impl()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lkotlin/time/Duration;->compareTo-LRDsOJo(J)I

    move-result p1

    return p1
.end method

.method public compareTo-LRDsOJo(J)I
    .locals 2

    .line 473
    iget-wide v0, p0, Lkotlin/time/Duration;->rawValue:J

    invoke-static {v0, v1, p1, p2}, Lkotlin/time/Duration;->compareTo-LRDsOJo(JJ)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    iget-wide v0, p0, Lkotlin/time/Duration;->rawValue:J

    invoke-static {v0, v1, p1}, Lkotlin/time/Duration;->equals-impl(JLjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Lkotlin/time/Duration;->rawValue:J

    invoke-static {v0, v1}, Lkotlin/time/Duration;->hashCode-impl(J)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 719
    iget-wide v0, p0, Lkotlin/time/Duration;->rawValue:J

    invoke-static {v0, v1}, Lkotlin/time/Duration;->toString-impl(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic unbox-impl()J
    .locals 2

    iget-wide v0, p0, Lkotlin/time/Duration;->rawValue:J

    return-wide v0
.end method
