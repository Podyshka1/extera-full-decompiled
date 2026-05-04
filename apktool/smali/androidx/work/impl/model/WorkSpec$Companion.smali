.class public final Landroidx/work/impl/model/WorkSpec$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/impl/model/WorkSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 399
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Landroidx/work/impl/model/WorkSpec$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final calculateNextRunTime(ZILandroidx/work/BackoffPolicy;JJIZJJJJ)J
    .locals 5

    move-wide/from16 v0, p16

    const-string v2, "backoffPolicy"

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    if-eqz p9, :cond_1

    if-nez p8, :cond_0

    return-wide v0

    :cond_0
    const-wide/32 p1, 0xdbba0

    add-long/2addr p1, p6

    .line 426
    invoke-static {v0, v1, p1, p2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(JJ)J

    move-result-wide p1

    return-wide p1

    :cond_1
    if-eqz p1, :cond_3

    .line 430
    sget-object p1, Landroidx/work/BackoffPolicy;->LINEAR:Landroidx/work/BackoffPolicy;

    if-ne p3, p1, :cond_2

    int-to-long p1, p2

    mul-long/2addr p4, p1

    goto :goto_0

    :cond_2
    long-to-float p1, p4

    add-int/lit8 p2, p2, -0x1

    .line 433
    invoke-static {p1, p2}, Ljava/lang/Math;->scalb(FI)F

    move-result p1

    float-to-long p4, p1

    :goto_0
    const-wide/32 p1, 0x112a880

    .line 434
    invoke-static {p4, p5, p1, p2}, Lkotlin/ranges/RangesKt;->coerceAtMost(JJ)J

    move-result-wide p1

    add-long/2addr p1, p6

    return-wide p1

    :cond_3
    if-eqz p9, :cond_6

    if-nez p8, :cond_4

    add-long p1, p6, p10

    goto :goto_1

    :cond_4
    add-long p1, p6, p14

    :goto_1
    cmp-long p3, p12, p14

    if-eqz p3, :cond_5

    if-nez p8, :cond_5

    sub-long p3, p14, p12

    add-long/2addr p1, p3

    :cond_5
    return-wide p1

    :cond_6
    const-wide/16 p1, -0x1

    cmp-long p1, p6, p1

    if-nez p1, :cond_7

    return-wide v2

    :cond_7
    add-long p1, p6, p10

    return-wide p1
.end method
