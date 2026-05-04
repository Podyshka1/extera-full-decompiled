.class public final Lj$/time/Instant;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/time/temporal/m;
.implements Lj$/time/temporal/o;
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lj$/time/temporal/m;",
        "Lj$/time/temporal/o;",
        "Ljava/lang/Comparable<",
        "Lj$/time/Instant;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final c:Lj$/time/Instant;

.field private static final serialVersionUID:J = -0x93d170fdcc5dce4L


# instance fields
.field public final a:J

.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 213
    new-instance v0, Lj$/time/Instant;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3, v1}, Lj$/time/Instant;-><init>(JI)V

    sput-object v0, Lj$/time/Instant;->c:Lj$/time/Instant;

    const-wide v0, -0x701cefeb9bec00L

    .line 232
    invoke-static {v0, v1, v2, v3}, Lj$/time/Instant;->D(JJ)Lj$/time/Instant;

    const-wide v0, 0x701cd2fa9578ffL

    const-wide/32 v2, 0x3b9ac9ff

    .line 243
    invoke-static {v0, v1, v2, v3}, Lj$/time/Instant;->D(JJ)Lj$/time/Instant;

    return-void
.end method

.method public constructor <init>(JI)V
    .locals 0

    .line 424
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 425
    iput-wide p1, p0, Lj$/time/Instant;->a:J

    .line 426
    iput p3, p0, Lj$/time/Instant;->b:I

    return-void
.end method

.method public static A(Lj$/time/temporal/n;)Lj$/time/Instant;
    .locals 5

    .line 368
    instance-of v0, p0, Lj$/time/Instant;

    if-eqz v0, :cond_0

    .line 369
    check-cast p0, Lj$/time/Instant;

    return-object p0

    .line 371
    :cond_0
    const-string v0, "temporal"

    invoke-static {p0, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 373
    :try_start_0
    sget-object v0, Lj$/time/temporal/a;->INSTANT_SECONDS:Lj$/time/temporal/a;

    invoke-interface {p0, v0}, Lj$/time/temporal/n;->w(Lj$/time/temporal/q;)J

    move-result-wide v0

    .line 374
    sget-object v2, Lj$/time/temporal/a;->NANO_OF_SECOND:Lj$/time/temporal/a;

    invoke-interface {p0, v2}, Lj$/time/temporal/n;->h(Lj$/time/temporal/q;)I

    move-result v2

    int-to-long v2, v2

    .line 375
    invoke-static {v0, v1, v2, v3}, Lj$/time/Instant;->D(JJ)Lj$/time/Instant;

    move-result-object p0
    :try_end_0
    .catch Lj$/time/b; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 377
    new-instance v1, Lj$/time/b;

    .line 378
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unable to obtain Instant from TemporalAccessor: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " of type "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 98
    invoke-direct {v1, p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 378
    throw v1
.end method

.method public static D(JJ)Lj$/time/Instant;
    .locals 4

    const-wide/32 v0, 0x3b9aca00

    .line 328
    invoke-static {p2, p3, v0, v1}, Lj$/com/android/tools/r8/a;->T(JJ)J

    move-result-wide v2

    invoke-static {p0, p1, v2, v3}, Lj$/com/android/tools/r8/a;->P(JJ)J

    move-result-wide p0

    .line 329
    invoke-static {p2, p3, v0, v1}, Lj$/com/android/tools/r8/a;->S(JJ)J

    move-result-wide p2

    long-to-int p2, p2

    .line 330
    invoke-static {p0, p1, p2}, Lj$/time/Instant;->v(JI)Lj$/time/Instant;

    move-result-object p0

    return-object p0
.end method

.method public static now()Lj$/time/Instant;
    .locals 6

    .line 160
    sget-object v0, Lj$/time/a;->b:Lj$/time/a;

    .line 273
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 520
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/16 v2, 0x3e8

    int-to-long v2, v2

    .line 0
    invoke-static {v0, v1, v2, v3}, Lj$/com/android/tools/r8/a;->T(JJ)J

    move-result-wide v4

    .line 0
    invoke-static {v0, v1, v2, v3}, Lj$/com/android/tools/r8/a;->S(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    const v1, 0xf4240

    mul-int/2addr v0, v1

    .line 346
    invoke-static {v4, v5, v0}, Lj$/time/Instant;->v(JI)Lj$/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1

    .line 1357
    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Deserialization via serialization delegate"

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static v(JI)Lj$/time/Instant;
    .locals 4

    int-to-long v0, p2

    or-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 408
    sget-object p0, Lj$/time/Instant;->c:Lj$/time/Instant;

    return-object p0

    :cond_0
    const-wide v0, -0x701cefeb9bec00L

    cmp-long v0, p0, v0

    if-ltz v0, :cond_1

    const-wide v0, 0x701cd2fa9578ffL

    cmp-long v0, p0, v0

    if-gtz v0, :cond_1

    .line 413
    new-instance v0, Lj$/time/Instant;

    invoke-direct {v0, p0, p1, p2}, Lj$/time/Instant;-><init>(JI)V

    return-object v0

    .line 411
    :cond_1
    new-instance p0, Lj$/time/b;

    const-string p1, "Instant exceeds minimum or maximum instant"

    .line 88
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 411
    throw p0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .line 1347
    new-instance v0, Lj$/time/o;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lj$/time/o;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final E(JJ)Lj$/time/Instant;
    .locals 4

    or-long v0, p1, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-object p0

    .line 925
    :cond_0
    iget-wide v0, p0, Lj$/time/Instant;->a:J

    invoke-static {v0, v1, p1, p2}, Lj$/com/android/tools/r8/a;->P(JJ)J

    move-result-wide p1

    const-wide/32 v0, 0x3b9aca00

    .line 926
    div-long v2, p3, v0

    invoke-static {p1, p2, v2, v3}, Lj$/com/android/tools/r8/a;->P(JJ)J

    move-result-wide p1

    .line 927
    rem-long/2addr p3, v0

    .line 928
    iget v0, p0, Lj$/time/Instant;->b:I

    int-to-long v0, v0

    add-long/2addr v0, p3

    .line 929
    invoke-static {p1, p2, v0, v1}, Lj$/time/Instant;->D(JJ)Lj$/time/Instant;

    move-result-object p1

    return-object p1
.end method

.method public final F(JLj$/time/temporal/s;)Lj$/time/Instant;
    .locals 7

    .line 851
    instance-of v0, p3, Lj$/time/temporal/b;

    if-eqz v0, :cond_0

    .line 852
    sget-object v0, Lj$/time/d;->b:[I

    move-object v1, p3

    check-cast v1, Lj$/time/temporal/b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-wide/16 v1, 0x3e8

    const-wide/32 v3, 0xf4240

    packed-switch v0, :pswitch_data_0

    .line 862
    new-instance p1, Lj$/time/temporal/t;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Unsupported unit: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 88
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 862
    throw p1

    :pswitch_0
    const p3, 0x15180

    .line 860
    invoke-static {p1, p2, p3}, Lj$/com/android/tools/r8/a;->O(JI)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lj$/time/Instant;->plusSeconds(J)Lj$/time/Instant;

    move-result-object p1

    return-object p1

    :pswitch_1
    const p3, 0xa8c0

    .line 859
    invoke-static {p1, p2, p3}, Lj$/com/android/tools/r8/a;->O(JI)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lj$/time/Instant;->plusSeconds(J)Lj$/time/Instant;

    move-result-object p1

    return-object p1

    :pswitch_2
    const/16 p3, 0xe10

    .line 858
    invoke-static {p1, p2, p3}, Lj$/com/android/tools/r8/a;->O(JI)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lj$/time/Instant;->plusSeconds(J)Lj$/time/Instant;

    move-result-object p1

    return-object p1

    :pswitch_3
    const/16 p3, 0x3c

    .line 857
    invoke-static {p1, p2, p3}, Lj$/com/android/tools/r8/a;->O(JI)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lj$/time/Instant;->plusSeconds(J)Lj$/time/Instant;

    move-result-object p1

    return-object p1

    .line 856
    :pswitch_4
    invoke-virtual {p0, p1, p2}, Lj$/time/Instant;->plusSeconds(J)Lj$/time/Instant;

    move-result-object p1

    return-object p1

    .line 893
    :pswitch_5
    div-long v5, p1, v1

    rem-long/2addr p1, v1

    mul-long/2addr p1, v3

    invoke-virtual {p0, v5, v6, p1, p2}, Lj$/time/Instant;->E(JJ)Lj$/time/Instant;

    move-result-object p1

    return-object p1

    .line 854
    :pswitch_6
    div-long v5, p1, v3

    rem-long/2addr p1, v3

    mul-long/2addr p1, v1

    invoke-virtual {p0, v5, v6, p1, p2}, Lj$/time/Instant;->E(JJ)Lj$/time/Instant;

    move-result-object p1

    return-object p1

    :pswitch_7
    const-wide/16 v0, 0x0

    .line 907
    invoke-virtual {p0, v0, v1, p1, p2}, Lj$/time/Instant;->E(JJ)Lj$/time/Instant;

    move-result-object p1

    return-object p1

    .line 864
    :cond_0
    invoke-interface {p3, p0, p1, p2}, Lj$/time/temporal/s;->h(Lj$/time/temporal/m;J)Lj$/time/temporal/m;

    move-result-object p1

    check-cast p1, Lj$/time/Instant;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public atOffset(Lj$/time/ZoneOffset;)Lj$/time/OffsetDateTime;
    .locals 0

    .line 1195
    invoke-static {p0, p1}, Lj$/time/OffsetDateTime;->v(Lj$/time/Instant;Lj$/time/ZoneId;)Lj$/time/OffsetDateTime;

    move-result-object p1

    return-object p1
.end method

.method public final c(JLj$/time/temporal/q;)Lj$/time/temporal/m;
    .locals 2

    .line 705
    instance-of v0, p3, Lj$/time/temporal/a;

    if-eqz v0, :cond_5

    .line 706
    move-object v0, p3

    check-cast v0, Lj$/time/temporal/a;

    .line 707
    invoke-virtual {v0, p1, p2}, Lj$/time/temporal/a;->r(J)V

    .line 708
    sget-object v1, Lj$/time/d;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 718
    iget-wide v0, p0, Lj$/time/Instant;->a:J

    cmp-long p3, p1, v0

    if-eqz p3, :cond_4

    iget p3, p0, Lj$/time/Instant;->b:I

    invoke-static {p1, p2, p3}, Lj$/time/Instant;->v(JI)Lj$/time/Instant;

    move-result-object p1

    return-object p1

    .line 720
    :cond_0
    new-instance p1, Lj$/time/temporal/t;

    const-string p2, "Unsupported field: "

    .line 0
    invoke-static {p2, p3}, Lj$/time/c;->a(Ljava/lang/String;Lj$/time/temporal/q;)Ljava/lang/String;

    move-result-object p2

    .line 88
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 720
    throw p1

    :cond_1
    long-to-int p1, p1

    const p2, 0xf4240

    mul-int/2addr p1, p2

    .line 711
    iget p2, p0, Lj$/time/Instant;->b:I

    if-eq p1, p2, :cond_4

    iget-wide p2, p0, Lj$/time/Instant;->a:J

    invoke-static {p2, p3, p1}, Lj$/time/Instant;->v(JI)Lj$/time/Instant;

    move-result-object p1

    return-object p1

    :cond_2
    long-to-int p1, p1

    mul-int/lit16 p1, p1, 0x3e8

    .line 715
    iget p2, p0, Lj$/time/Instant;->b:I

    if-eq p1, p2, :cond_4

    iget-wide p2, p0, Lj$/time/Instant;->a:J

    invoke-static {p2, p3, p1}, Lj$/time/Instant;->v(JI)Lj$/time/Instant;

    move-result-object p1

    return-object p1

    .line 717
    :cond_3
    iget p3, p0, Lj$/time/Instant;->b:I

    int-to-long v0, p3

    cmp-long p3, p1, v0

    if-eqz p3, :cond_4

    iget-wide v0, p0, Lj$/time/Instant;->a:J

    long-to-int p1, p1

    invoke-static {v0, v1, p1}, Lj$/time/Instant;->v(JI)Lj$/time/Instant;

    move-result-object p1

    return-object p1

    :cond_4
    return-object p0

    .line 722
    :cond_5
    invoke-interface {p3, p0, p1, p2}, Lj$/time/temporal/q;->n(Lj$/time/temporal/m;J)Lj$/time/temporal/m;

    move-result-object p1

    check-cast p1, Lj$/time/Instant;

    return-object p1
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 4

    .line 207
    check-cast p1, Lj$/time/Instant;

    .line 1255
    iget-wide v0, p0, Lj$/time/Instant;->a:J

    iget-wide v2, p1, Lj$/time/Instant;->a:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    .line 1259
    :cond_0
    iget v0, p0, Lj$/time/Instant;->b:I

    iget p1, p1, Lj$/time/Instant;->b:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public final bridge synthetic d(JLj$/time/temporal/s;)Lj$/time/temporal/m;
    .locals 0

    .line 207
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/Instant;->F(JLj$/time/temporal/s;)Lj$/time/Instant;

    move-result-object p1

    return-object p1
.end method

.method public final e(Lj$/time/temporal/q;)Z
    .locals 1

    .line 458
    instance-of v0, p1, Lj$/time/temporal/a;

    if-eqz v0, :cond_0

    .line 459
    sget-object v0, Lj$/time/temporal/a;->INSTANT_SECONDS:Lj$/time/temporal/a;

    if-eq p1, v0, :cond_1

    sget-object v0, Lj$/time/temporal/a;->NANO_OF_SECOND:Lj$/time/temporal/a;

    if-eq p1, v0, :cond_1

    sget-object v0, Lj$/time/temporal/a;->MICRO_OF_SECOND:Lj$/time/temporal/a;

    if-eq p1, v0, :cond_1

    sget-object v0, Lj$/time/temporal/a;->MILLI_OF_SECOND:Lj$/time/temporal/a;

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_2

    .line 461
    invoke-interface {p1, p0}, Lj$/time/temporal/q;->h(Lj$/time/temporal/n;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1302
    :cond_0
    instance-of v1, p1, Lj$/time/Instant;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 1303
    check-cast p1, Lj$/time/Instant;

    .line 1304
    iget-wide v3, p0, Lj$/time/Instant;->a:J

    iget-wide v5, p1, Lj$/time/Instant;->a:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    iget v1, p0, Lj$/time/Instant;->b:I

    iget p1, p1, Lj$/time/Instant;->b:I

    if-ne v1, p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final h(Lj$/time/temporal/q;)I
    .locals 4

    .line 559
    instance-of v0, p1, Lj$/time/temporal/a;

    if-eqz v0, :cond_4

    .line 560
    sget-object v0, Lj$/time/d;->a:[I

    move-object v1, p1

    check-cast v1, Lj$/time/temporal/a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 564
    :cond_0
    sget-object v0, Lj$/time/temporal/a;->INSTANT_SECONDS:Lj$/time/temporal/a;

    iget-wide v1, p0, Lj$/time/Instant;->a:J

    .line 669
    iget-object v3, v0, Lj$/time/temporal/a;->b:Lj$/time/temporal/u;

    .line 732
    invoke-virtual {v3, v1, v2, v0}, Lj$/time/temporal/u;->a(JLj$/time/temporal/q;)I

    .line 566
    :goto_0
    new-instance v0, Lj$/time/temporal/t;

    const-string v1, "Unsupported field: "

    .line 0
    invoke-static {v1, p1}, Lj$/time/c;->a(Ljava/lang/String;Lj$/time/temporal/q;)Ljava/lang/String;

    move-result-object p1

    .line 88
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 566
    throw v0

    .line 563
    :cond_1
    iget p1, p0, Lj$/time/Instant;->b:I

    const v0, 0xf4240

    div-int/2addr p1, v0

    return p1

    .line 562
    :cond_2
    iget p1, p0, Lj$/time/Instant;->b:I

    div-int/lit16 p1, p1, 0x3e8

    return p1

    .line 561
    :cond_3
    iget p1, p0, Lj$/time/Instant;->b:I

    return p1

    .line 527
    :cond_4
    invoke-static {p0, p1}, Lj$/time/temporal/r;->d(Lj$/time/temporal/n;Lj$/time/temporal/q;)Lj$/time/temporal/u;

    move-result-object v0

    .line 568
    invoke-interface {p1, p0}, Lj$/time/temporal/q;->k(Lj$/time/temporal/n;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lj$/time/temporal/u;->a(JLj$/time/temporal/q;)I

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 4

    .line 1317
    iget-wide v0, p0, Lj$/time/Instant;->a:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    iget v1, p0, Lj$/time/Instant;->b:I

    mul-int/lit8 v1, v1, 0x33

    add-int/2addr v1, v0

    return v1
.end method

.method public final i(Lj$/time/LocalDate;)Lj$/time/temporal/m;
    .locals 0

    .line 656
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1592
    invoke-static {p1, p0}, Lj$/com/android/tools/r8/a;->a(Lj$/time/chrono/b;Lj$/time/temporal/m;)Lj$/time/temporal/m;

    move-result-object p1

    .line 656
    check-cast p1, Lj$/time/Instant;

    return-object p1
.end method

.method public final j(Lj$/time/temporal/q;)Lj$/time/temporal/u;
    .locals 0

    .line 527
    invoke-static {p0, p1}, Lj$/time/temporal/r;->d(Lj$/time/temporal/n;Lj$/time/temporal/q;)Lj$/time/temporal/u;

    move-result-object p1

    return-object p1
.end method

.method public final k(Lj$/time/format/a;)Ljava/lang/Object;
    .locals 1

    .line 1056
    sget-object v0, Lj$/time/temporal/r;->c:Lj$/time/format/a;

    if-ne p1, v0, :cond_0

    .line 1057
    sget-object p1, Lj$/time/temporal/b;->NANOS:Lj$/time/temporal/b;

    return-object p1

    .line 1060
    :cond_0
    sget-object v0, Lj$/time/temporal/r;->b:Lj$/time/format/a;

    if-eq p1, v0, :cond_2

    sget-object v0, Lj$/time/temporal/r;->a:Lj$/time/format/a;

    if-eq p1, v0, :cond_2

    .line 1061
    sget-object v0, Lj$/time/temporal/r;->e:Lj$/time/format/a;

    if-eq p1, v0, :cond_2

    sget-object v0, Lj$/time/temporal/r;->d:Lj$/time/format/a;

    if-eq p1, v0, :cond_2

    .line 1062
    sget-object v0, Lj$/time/temporal/r;->f:Lj$/time/format/a;

    if-eq p1, v0, :cond_2

    sget-object v0, Lj$/time/temporal/r;->g:Lj$/time/format/a;

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 1065
    :cond_1
    invoke-virtual {p1, p0}, Lj$/time/format/a;->a(Lj$/time/temporal/n;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final n(Lj$/time/temporal/m;)Lj$/time/temporal/m;
    .locals 3

    .line 1095
    sget-object v0, Lj$/time/temporal/a;->INSTANT_SECONDS:Lj$/time/temporal/a;

    iget-wide v1, p0, Lj$/time/Instant;->a:J

    invoke-interface {p1, v1, v2, v0}, Lj$/time/temporal/m;->c(JLj$/time/temporal/q;)Lj$/time/temporal/m;

    move-result-object p1

    sget-object v0, Lj$/time/temporal/a;->NANO_OF_SECOND:Lj$/time/temporal/a;

    iget v1, p0, Lj$/time/Instant;->b:I

    int-to-long v1, v1

    invoke-interface {p1, v1, v2, v0}, Lj$/time/temporal/m;->c(JLj$/time/temporal/q;)Lj$/time/temporal/m;

    move-result-object p1

    return-object p1
.end method

.method public plusSeconds(J)Lj$/time/Instant;
    .locals 2

    const-wide/16 v0, 0x0

    .line 879
    invoke-virtual {p0, p1, p2, v0, v1}, Lj$/time/Instant;->E(JJ)Lj$/time/Instant;

    move-result-object p1

    return-object p1
.end method

.method public final r(JLj$/time/temporal/b;)Lj$/time/temporal/m;
    .locals 2

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const-wide p1, 0x7fffffffffffffffL

    .line 979
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/Instant;->F(JLj$/time/temporal/s;)Lj$/time/Instant;

    move-result-object p1

    const-wide/16 v0, 0x1

    invoke-virtual {p1, v0, v1, p3}, Lj$/time/Instant;->F(JLj$/time/temporal/s;)Lj$/time/Instant;

    move-result-object p1

    return-object p1

    :cond_0
    neg-long p1, p1

    invoke-virtual {p0, p1, p2, p3}, Lj$/time/Instant;->F(JLj$/time/temporal/s;)Lj$/time/Instant;

    move-result-object p1

    return-object p1
.end method

.method public toEpochMilli()J
    .locals 7

    .line 1232
    iget-wide v0, p0, Lj$/time/Instant;->a:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const v3, 0xf4240

    const/16 v4, 0x3e8

    if-gez v2, :cond_0

    iget v2, p0, Lj$/time/Instant;->b:I

    if-lez v2, :cond_0

    const-wide/16 v5, 0x1

    add-long/2addr v0, v5

    .line 1233
    invoke-static {v0, v1, v4}, Lj$/com/android/tools/r8/a;->O(JI)J

    move-result-wide v0

    .line 1234
    iget v2, p0, Lj$/time/Instant;->b:I

    div-int/2addr v2, v3

    sub-int/2addr v2, v4

    int-to-long v2, v2

    .line 1235
    invoke-static {v0, v1, v2, v3}, Lj$/com/android/tools/r8/a;->P(JJ)J

    move-result-wide v0

    return-wide v0

    .line 1237
    :cond_0
    invoke-static {v0, v1, v4}, Lj$/com/android/tools/r8/a;->O(JI)J

    move-result-wide v0

    .line 1238
    iget v2, p0, Lj$/time/Instant;->b:I

    div-int/2addr v2, v3

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lj$/com/android/tools/r8/a;->P(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1330
    sget-object v0, Lj$/time/format/DateTimeFormatter;->e:Lj$/time/format/DateTimeFormatter;

    invoke-virtual {v0, p0}, Lj$/time/format/DateTimeFormatter;->a(Lj$/time/temporal/n;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final w(Lj$/time/temporal/q;)J
    .locals 2

    .line 596
    instance-of v0, p1, Lj$/time/temporal/a;

    if-eqz v0, :cond_4

    .line 597
    sget-object v0, Lj$/time/d;->a:[I

    move-object v1, p1

    check-cast v1, Lj$/time/temporal/a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 601
    iget-wide v0, p0, Lj$/time/Instant;->a:J

    return-wide v0

    .line 603
    :cond_0
    new-instance v0, Lj$/time/temporal/t;

    const-string v1, "Unsupported field: "

    .line 0
    invoke-static {v1, p1}, Lj$/time/c;->a(Ljava/lang/String;Lj$/time/temporal/q;)Ljava/lang/String;

    move-result-object p1

    .line 88
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 603
    throw v0

    .line 600
    :cond_1
    iget p1, p0, Lj$/time/Instant;->b:I

    const v0, 0xf4240

    div-int/2addr p1, v0

    :goto_0
    int-to-long v0, p1

    return-wide v0

    .line 599
    :cond_2
    iget p1, p0, Lj$/time/Instant;->b:I

    div-int/lit16 p1, p1, 0x3e8

    goto :goto_0

    .line 598
    :cond_3
    iget p1, p0, Lj$/time/Instant;->b:I

    goto :goto_0

    .line 605
    :cond_4
    invoke-interface {p1, p0}, Lj$/time/temporal/q;->k(Lj$/time/temporal/n;)J

    move-result-wide v0

    return-wide v0
.end method
