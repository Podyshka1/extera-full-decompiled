.class public final Lj$/time/ZonedDateTime;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/time/temporal/m;
.implements Lj$/time/chrono/ChronoZonedDateTime;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lj$/time/temporal/m;",
        "Lj$/time/chrono/ChronoZonedDateTime<",
        "Lj$/time/LocalDate;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x56e37a54888537c2L


# instance fields
.field public final a:Lj$/time/LocalDateTime;

.field public final b:Lj$/time/ZoneOffset;

.field public final c:Lj$/time/ZoneId;


# direct methods
.method public constructor <init>(Lj$/time/LocalDateTime;Lj$/time/ZoneId;Lj$/time/ZoneOffset;)V
    .locals 0

    .line 609
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 610
    iput-object p1, p0, Lj$/time/ZonedDateTime;->a:Lj$/time/LocalDateTime;

    .line 611
    iput-object p3, p0, Lj$/time/ZonedDateTime;->b:Lj$/time/ZoneOffset;

    .line 612
    iput-object p2, p0, Lj$/time/ZonedDateTime;->c:Lj$/time/ZoneId;

    return-void
.end method

.method public static n(JILj$/time/ZoneId;)Lj$/time/ZonedDateTime;
    .locals 3

    .line 453
    invoke-virtual {p3}, Lj$/time/ZoneId;->getRules()Lj$/time/zone/ZoneRules;

    move-result-object v0

    int-to-long v1, p2

    .line 454
    invoke-static {p0, p1, v1, v2}, Lj$/time/Instant;->D(JJ)Lj$/time/Instant;

    move-result-object v1

    .line 455
    invoke-virtual {v0, v1}, Lj$/time/zone/ZoneRules;->getOffset(Lj$/time/Instant;)Lj$/time/ZoneOffset;

    move-result-object v0

    .line 456
    invoke-static {p0, p1, p2, v0}, Lj$/time/LocalDateTime;->F(JILj$/time/ZoneOffset;)Lj$/time/LocalDateTime;

    move-result-object p0

    .line 457
    new-instance p1, Lj$/time/ZonedDateTime;

    invoke-direct {p1, p0, p3, v0}, Lj$/time/ZonedDateTime;-><init>(Lj$/time/LocalDateTime;Lj$/time/ZoneId;Lj$/time/ZoneOffset;)V

    return-object p1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1

    .line 2249
    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Deserialization via serialization delegate"

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static v(Lj$/time/LocalDateTime;Lj$/time/ZoneId;Lj$/time/ZoneOffset;)Lj$/time/ZonedDateTime;
    .locals 5

    .line 367
    const-string v0, "localDateTime"

    invoke-static {p0, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 368
    const-string v0, "zone"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 369
    instance-of v0, p1, Lj$/time/ZoneOffset;

    if-eqz v0, :cond_0

    .line 370
    new-instance p2, Lj$/time/ZonedDateTime;

    move-object v0, p1

    check-cast v0, Lj$/time/ZoneOffset;

    invoke-direct {p2, p0, p1, v0}, Lj$/time/ZonedDateTime;-><init>(Lj$/time/LocalDateTime;Lj$/time/ZoneId;Lj$/time/ZoneOffset;)V

    return-object p2

    .line 372
    :cond_0
    invoke-virtual {p1}, Lj$/time/ZoneId;->getRules()Lj$/time/zone/ZoneRules;

    move-result-object v0

    .line 373
    invoke-virtual {v0, p0}, Lj$/time/zone/ZoneRules;->f(Lj$/time/LocalDateTime;)Ljava/util/List;

    move-result-object v1

    .line 375
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v2, v3, :cond_1

    .line 376
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lj$/time/ZoneOffset;

    goto :goto_0

    .line 377
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 378
    invoke-virtual {v0, p0}, Lj$/time/zone/ZoneRules;->e(Lj$/time/LocalDateTime;)Lj$/time/zone/b;

    move-result-object p2

    .line 316
    iget-object v0, p2, Lj$/time/zone/b;->d:Lj$/time/ZoneOffset;

    .line 338
    invoke-virtual {v0}, Lj$/time/ZoneOffset;->getTotalSeconds()I

    move-result v0

    .line 305
    iget-object v1, p2, Lj$/time/zone/b;->c:Lj$/time/ZoneOffset;

    .line 338
    invoke-virtual {v1}, Lj$/time/ZoneOffset;->getTotalSeconds()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-long v0, v0

    .line 329
    invoke-static {v0, v1}, Lj$/time/Duration;->ofSeconds(J)Lj$/time/Duration;

    move-result-object v0

    .line 625
    iget-wide v0, v0, Lj$/time/Duration;->a:J

    .line 379
    invoke-virtual {p0, v0, v1}, Lj$/time/LocalDateTime;->H(J)Lj$/time/LocalDateTime;

    move-result-object p0

    .line 316
    iget-object p2, p2, Lj$/time/zone/b;->d:Lj$/time/ZoneOffset;

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    .line 382
    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 385
    :cond_3
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lj$/time/ZoneOffset;

    const-string v0, "offset"

    invoke-static {p2, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lj$/time/ZoneOffset;

    .line 388
    :goto_0
    new-instance v0, Lj$/time/ZonedDateTime;

    invoke-direct {v0, p0, p1, p2}, Lj$/time/ZonedDateTime;-><init>(Lj$/time/LocalDateTime;Lj$/time/ZoneId;Lj$/time/ZoneOffset;)V

    return-object v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .line 2239
    new-instance v0, Lj$/time/o;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p0}, Lj$/time/o;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final A(JLj$/time/temporal/s;)Lj$/time/ZonedDateTime;
    .locals 2

    .line 1601
    instance-of v0, p3, Lj$/time/temporal/b;

    if-eqz v0, :cond_2

    .line 1602
    move-object v0, p3

    check-cast v0, Lj$/time/temporal/b;

    .line 241
    sget-object v1, Lj$/time/temporal/b;->DAYS:Lj$/time/temporal/b;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-ltz v1, :cond_0

    sget-object v1, Lj$/time/temporal/b;->FOREVER:Lj$/time/temporal/b;

    if-eq v0, v1, :cond_0

    .line 1603
    iget-object v0, p0, Lj$/time/ZonedDateTime;->a:Lj$/time/LocalDateTime;

    invoke-virtual {v0, p1, p2, p3}, Lj$/time/LocalDateTime;->G(JLj$/time/temporal/s;)Lj$/time/LocalDateTime;

    move-result-object p1

    invoke-virtual {p0, p1}, Lj$/time/ZonedDateTime;->D(Lj$/time/LocalDateTime;)Lj$/time/ZonedDateTime;

    move-result-object p1

    return-object p1

    .line 1605
    :cond_0
    iget-object v0, p0, Lj$/time/ZonedDateTime;->a:Lj$/time/LocalDateTime;

    invoke-virtual {v0, p1, p2, p3}, Lj$/time/LocalDateTime;->G(JLj$/time/temporal/s;)Lj$/time/LocalDateTime;

    move-result-object p1

    .line 632
    iget-object p2, p0, Lj$/time/ZonedDateTime;->b:Lj$/time/ZoneOffset;

    iget-object p3, p0, Lj$/time/ZonedDateTime;->c:Lj$/time/ZoneId;

    .line 433
    const-string v0, "localDateTime"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 434
    const-string v0, "offset"

    invoke-static {p2, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 435
    const-string v0, "zone"

    invoke-static {p3, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 436
    invoke-virtual {p3}, Lj$/time/ZoneId;->getRules()Lj$/time/zone/ZoneRules;

    move-result-object v0

    .line 952
    invoke-virtual {v0, p1}, Lj$/time/zone/ZoneRules;->f(Lj$/time/LocalDateTime;)Ljava/util/List;

    move-result-object v0

    .line 952
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 437
    new-instance v0, Lj$/time/ZonedDateTime;

    invoke-direct {v0, p1, p3, p2}, Lj$/time/ZonedDateTime;-><init>(Lj$/time/LocalDateTime;Lj$/time/ZoneId;Lj$/time/ZoneOffset;)V

    return-object v0

    .line 439
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 0
    invoke-static {p1, p2}, Lj$/com/android/tools/r8/a;->x(Lj$/time/chrono/ChronoLocalDateTime;Lj$/time/ZoneOffset;)J

    move-result-wide v0

    .line 868
    iget-object p1, p1, Lj$/time/LocalDateTime;->b:Lj$/time/h;

    .line 738
    iget p1, p1, Lj$/time/h;->d:I

    .line 439
    invoke-static {v0, v1, p1, p3}, Lj$/time/ZonedDateTime;->n(JILj$/time/ZoneId;)Lj$/time/ZonedDateTime;

    move-result-object p1

    return-object p1

    .line 1608
    :cond_2
    invoke-interface {p3, p0, p1, p2}, Lj$/time/temporal/s;->h(Lj$/time/temporal/m;J)Lj$/time/temporal/m;

    move-result-object p1

    check-cast p1, Lj$/time/ZonedDateTime;

    return-object p1
.end method

.method public final synthetic C()J
    .locals 2

    invoke-static {p0}, Lj$/com/android/tools/r8/a;->y(Lj$/time/chrono/ChronoZonedDateTime;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final D(Lj$/time/LocalDateTime;)Lj$/time/ZonedDateTime;
    .locals 2

    .line 622
    iget-object v0, p0, Lj$/time/ZonedDateTime;->c:Lj$/time/ZoneId;

    iget-object v1, p0, Lj$/time/ZonedDateTime;->b:Lj$/time/ZoneOffset;

    invoke-static {p1, v0, v1}, Lj$/time/ZonedDateTime;->v(Lj$/time/LocalDateTime;Lj$/time/ZoneId;Lj$/time/ZoneOffset;)Lj$/time/ZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method public final E(Lj$/time/ZoneOffset;)Lj$/time/ZonedDateTime;
    .locals 3

    .line 644
    iget-object v0, p0, Lj$/time/ZonedDateTime;->b:Lj$/time/ZoneOffset;

    invoke-virtual {p1, v0}, Lj$/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lj$/time/ZonedDateTime;->c:Lj$/time/ZoneId;

    invoke-virtual {v0}, Lj$/time/ZoneId;->getRules()Lj$/time/zone/ZoneRules;

    move-result-object v0

    iget-object v1, p0, Lj$/time/ZonedDateTime;->a:Lj$/time/LocalDateTime;

    .line 952
    invoke-virtual {v0, v1}, Lj$/time/zone/ZoneRules;->f(Lj$/time/LocalDateTime;)Ljava/util/List;

    move-result-object v0

    .line 952
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 645
    new-instance v0, Lj$/time/ZonedDateTime;

    iget-object v1, p0, Lj$/time/ZonedDateTime;->a:Lj$/time/LocalDateTime;

    iget-object v2, p0, Lj$/time/ZonedDateTime;->c:Lj$/time/ZoneId;

    invoke-direct {v0, v1, v2, p1}, Lj$/time/ZonedDateTime;-><init>(Lj$/time/LocalDateTime;Lj$/time/ZoneId;Lj$/time/ZoneOffset;)V

    return-object v0

    :cond_0
    return-object p0
.end method

.method public final a()Lj$/time/chrono/k;
    .locals 1

    .line 265
    invoke-virtual {p0}, Lj$/time/ZonedDateTime;->f()Lj$/time/chrono/b;

    move-result-object v0

    check-cast v0, Lj$/time/LocalDate;

    invoke-virtual {v0}, Lj$/time/LocalDate;->a()Lj$/time/chrono/k;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lj$/time/h;
    .locals 1

    .line 1138
    iget-object v0, p0, Lj$/time/ZonedDateTime;->a:Lj$/time/LocalDateTime;

    .line 832
    iget-object v0, v0, Lj$/time/LocalDateTime;->b:Lj$/time/h;

    return-object v0
.end method

.method public final c(JLj$/time/temporal/q;)Lj$/time/temporal/m;
    .locals 3

    .line 1303
    instance-of v0, p3, Lj$/time/temporal/a;

    if-eqz v0, :cond_2

    .line 1304
    move-object v0, p3

    check-cast v0, Lj$/time/temporal/a;

    .line 1305
    sget-object v1, Lj$/time/u;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 1312
    iget-object v0, p0, Lj$/time/ZonedDateTime;->a:Lj$/time/LocalDateTime;

    invoke-virtual {v0, p1, p2, p3}, Lj$/time/LocalDateTime;->J(JLj$/time/temporal/q;)Lj$/time/LocalDateTime;

    move-result-object p1

    invoke-virtual {p0, p1}, Lj$/time/ZonedDateTime;->D(Lj$/time/LocalDateTime;)Lj$/time/ZonedDateTime;

    move-result-object p1

    return-object p1

    .line 669
    :cond_0
    iget-object p3, v0, Lj$/time/temporal/a;->b:Lj$/time/temporal/u;

    .line 732
    invoke-virtual {p3, p1, p2, v0}, Lj$/time/temporal/u;->a(JLj$/time/temporal/q;)I

    move-result p1

    .line 1309
    invoke-static {p1}, Lj$/time/ZoneOffset;->H(I)Lj$/time/ZoneOffset;

    move-result-object p1

    .line 1310
    invoke-virtual {p0, p1}, Lj$/time/ZonedDateTime;->E(Lj$/time/ZoneOffset;)Lj$/time/ZonedDateTime;

    move-result-object p1

    return-object p1

    .line 1174
    :cond_1
    iget-object p3, p0, Lj$/time/ZonedDateTime;->a:Lj$/time/LocalDateTime;

    .line 868
    iget-object p3, p3, Lj$/time/LocalDateTime;->b:Lj$/time/h;

    .line 738
    iget p3, p3, Lj$/time/h;->d:I

    .line 1307
    iget-object v0, p0, Lj$/time/ZonedDateTime;->c:Lj$/time/ZoneId;

    invoke-static {p1, p2, p3, v0}, Lj$/time/ZonedDateTime;->n(JILj$/time/ZoneId;)Lj$/time/ZonedDateTime;

    move-result-object p1

    return-object p1

    .line 1314
    :cond_2
    invoke-interface {p3, p0, p1, p2}, Lj$/time/temporal/q;->n(Lj$/time/temporal/m;J)Lj$/time/temporal/m;

    move-result-object p1

    check-cast p1, Lj$/time/ZonedDateTime;

    return-object p1
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 122
    check-cast p1, Lj$/time/chrono/ChronoZonedDateTime;

    .line 0
    invoke-static {p0, p1}, Lj$/com/android/tools/r8/a;->g(Lj$/time/chrono/ChronoZonedDateTime;Lj$/time/chrono/ChronoZonedDateTime;)I

    move-result p1

    return p1
.end method

.method public final bridge synthetic d(JLj$/time/temporal/s;)Lj$/time/temporal/m;
    .locals 0

    .line 164
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/ZonedDateTime;->A(JLj$/time/temporal/s;)Lj$/time/ZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method public final e(Lj$/time/temporal/q;)Z
    .locals 1

    .line 705
    instance-of v0, p1, Lj$/time/temporal/a;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Lj$/time/temporal/q;->h(Lj$/time/temporal/n;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 2185
    :cond_0
    instance-of v1, p1, Lj$/time/ZonedDateTime;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 2186
    check-cast p1, Lj$/time/ZonedDateTime;

    .line 2187
    iget-object v1, p0, Lj$/time/ZonedDateTime;->a:Lj$/time/LocalDateTime;

    iget-object v3, p1, Lj$/time/ZonedDateTime;->a:Lj$/time/LocalDateTime;

    invoke-virtual {v1, v3}, Lj$/time/LocalDateTime;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lj$/time/ZonedDateTime;->b:Lj$/time/ZoneOffset;

    iget-object v3, p1, Lj$/time/ZonedDateTime;->b:Lj$/time/ZoneOffset;

    .line 2188
    invoke-virtual {v1, v3}, Lj$/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lj$/time/ZonedDateTime;->c:Lj$/time/ZoneId;

    iget-object p1, p1, Lj$/time/ZonedDateTime;->c:Lj$/time/ZoneId;

    .line 2189
    invoke-virtual {v1, p1}, Lj$/time/ZoneId;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final f()Lj$/time/chrono/b;
    .locals 1

    .line 1042
    iget-object v0, p0, Lj$/time/ZonedDateTime;->a:Lj$/time/LocalDateTime;

    .line 736
    iget-object v0, v0, Lj$/time/LocalDateTime;->a:Lj$/time/LocalDate;

    return-object v0
.end method

.method public final g()Lj$/time/ZoneOffset;
    .locals 1

    .line 871
    iget-object v0, p0, Lj$/time/ZonedDateTime;->b:Lj$/time/ZoneOffset;

    return-object v0
.end method

.method public final h(Lj$/time/temporal/q;)I
    .locals 2

    .line 814
    instance-of v0, p1, Lj$/time/temporal/a;

    if-eqz v0, :cond_2

    .line 815
    sget-object v0, Lj$/time/u;->a:[I

    move-object v1, p1

    check-cast v1, Lj$/time/temporal/a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 821
    iget-object v0, p0, Lj$/time/ZonedDateTime;->a:Lj$/time/LocalDateTime;

    invoke-virtual {v0, p1}, Lj$/time/LocalDateTime;->h(Lj$/time/temporal/q;)I

    move-result p1

    return p1

    .line 871
    :cond_0
    iget-object p1, p0, Lj$/time/ZonedDateTime;->b:Lj$/time/ZoneOffset;

    .line 819
    invoke-virtual {p1}, Lj$/time/ZoneOffset;->getTotalSeconds()I

    move-result p1

    return p1

    .line 817
    :cond_1
    new-instance p1, Lj$/time/temporal/t;

    const-string v0, "Invalid field \'InstantSeconds\' for get() method, use getLong() instead"

    .line 88
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 817
    throw p1

    .line 823
    :cond_2
    invoke-static {p0, p1}, Lj$/com/android/tools/r8/a;->m(Lj$/time/chrono/ChronoZonedDateTime;Lj$/time/temporal/q;)I

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 3

    .line 2201
    iget-object v0, p0, Lj$/time/ZonedDateTime;->a:Lj$/time/LocalDateTime;

    invoke-virtual {v0}, Lj$/time/LocalDateTime;->hashCode()I

    move-result v0

    iget-object v1, p0, Lj$/time/ZonedDateTime;->b:Lj$/time/ZoneOffset;

    .line 736
    iget v1, v1, Lj$/time/ZoneOffset;->b:I

    xor-int/2addr v0, v1

    .line 2201
    iget-object v1, p0, Lj$/time/ZonedDateTime;->c:Lj$/time/ZoneId;

    invoke-virtual {v1}, Lj$/time/ZoneId;->hashCode()I

    move-result v1

    const/4 v2, 0x3

    invoke-static {v1, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final i(Lj$/time/LocalDate;)Lj$/time/temporal/m;
    .locals 1

    .line 1231
    invoke-static {p1}, Lj$/time/c;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1232
    iget-object v0, p0, Lj$/time/ZonedDateTime;->a:Lj$/time/LocalDateTime;

    .line 832
    iget-object v0, v0, Lj$/time/LocalDateTime;->b:Lj$/time/h;

    .line 1232
    invoke-static {p1, v0}, Lj$/time/LocalDateTime;->E(Lj$/time/LocalDate;Lj$/time/h;)Lj$/time/LocalDateTime;

    move-result-object p1

    invoke-virtual {p0, p1}, Lj$/time/ZonedDateTime;->D(Lj$/time/LocalDateTime;)Lj$/time/ZonedDateTime;

    move-result-object p1

    return-object p1

    .line 1246
    :cond_0
    invoke-virtual {p1, p0}, Lj$/time/LocalDate;->n(Lj$/time/temporal/m;)Lj$/time/temporal/m;

    move-result-object p1

    check-cast p1, Lj$/time/ZonedDateTime;

    return-object p1
.end method

.method public final j(Lj$/time/temporal/q;)Lj$/time/temporal/u;
    .locals 1

    .line 775
    instance-of v0, p1, Lj$/time/temporal/a;

    if-eqz v0, :cond_2

    .line 776
    sget-object v0, Lj$/time/temporal/a;->INSTANT_SECONDS:Lj$/time/temporal/a;

    if-eq p1, v0, :cond_1

    sget-object v0, Lj$/time/temporal/a;->OFFSET_SECONDS:Lj$/time/temporal/a;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 779
    :cond_0
    iget-object v0, p0, Lj$/time/ZonedDateTime;->a:Lj$/time/LocalDateTime;

    invoke-virtual {v0, p1}, Lj$/time/LocalDateTime;->j(Lj$/time/temporal/q;)Lj$/time/temporal/u;

    move-result-object p1

    return-object p1

    .line 777
    :cond_1
    :goto_0
    check-cast p1, Lj$/time/temporal/a;

    .line 669
    iget-object p1, p1, Lj$/time/temporal/a;->b:Lj$/time/temporal/u;

    return-object p1

    .line 781
    :cond_2
    invoke-interface {p1, p0}, Lj$/time/temporal/q;->i(Lj$/time/temporal/n;)Lj$/time/temporal/u;

    move-result-object p1

    return-object p1
.end method

.method public final k(Lj$/time/format/a;)Ljava/lang/Object;
    .locals 1

    .line 2056
    sget-object v0, Lj$/time/temporal/r;->f:Lj$/time/format/a;

    if-ne p1, v0, :cond_0

    .line 1042
    iget-object p1, p0, Lj$/time/ZonedDateTime;->a:Lj$/time/LocalDateTime;

    .line 736
    iget-object p1, p1, Lj$/time/LocalDateTime;->a:Lj$/time/LocalDate;

    return-object p1

    .line 2059
    :cond_0
    invoke-static {p0, p1}, Lj$/com/android/tools/r8/a;->v(Lj$/time/chrono/ChronoZonedDateTime;Lj$/time/format/a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final o()Lj$/time/chrono/ChronoLocalDateTime;
    .locals 1

    .line 1028
    iget-object v0, p0, Lj$/time/ZonedDateTime;->a:Lj$/time/LocalDateTime;

    return-object v0
.end method

.method public final q(Lj$/time/ZoneId;)Lj$/time/chrono/ChronoZonedDateTime;
    .locals 2

    .line 968
    const-string v0, "zone"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 969
    iget-object v0, p0, Lj$/time/ZonedDateTime;->c:Lj$/time/ZoneId;

    invoke-virtual {v0, p1}, Lj$/time/ZoneId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Lj$/time/ZonedDateTime;->a:Lj$/time/LocalDateTime;

    iget-object v1, p0, Lj$/time/ZonedDateTime;->b:Lj$/time/ZoneOffset;

    invoke-static {v0, p1, v1}, Lj$/time/ZonedDateTime;->v(Lj$/time/LocalDateTime;Lj$/time/ZoneId;Lj$/time/ZoneOffset;)Lj$/time/ZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method public final r(JLj$/time/temporal/b;)Lj$/time/temporal/m;
    .locals 2

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const-wide p1, 0x7fffffffffffffffL

    .line 1854
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/ZonedDateTime;->A(JLj$/time/temporal/s;)Lj$/time/ZonedDateTime;

    move-result-object p1

    const-wide/16 v0, 0x1

    invoke-virtual {p1, v0, v1, p3}, Lj$/time/ZonedDateTime;->A(JLj$/time/temporal/s;)Lj$/time/ZonedDateTime;

    move-result-object p1

    return-object p1

    :cond_0
    neg-long p1, p1

    invoke-virtual {p0, p1, p2, p3}, Lj$/time/ZonedDateTime;->A(JLj$/time/temporal/s;)Lj$/time/ZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method public final toInstant()Lj$/time/Instant;
    .locals 4

    .line 538
    invoke-virtual {p0}, Lj$/time/ZonedDateTime;->C()J

    move-result-wide v0

    invoke-virtual {p0}, Lj$/time/ZonedDateTime;->b()Lj$/time/h;

    move-result-object v2

    .line 738
    iget v2, v2, Lj$/time/h;->d:I

    int-to-long v2, v2

    .line 538
    invoke-static {v0, v1, v2, v3}, Lj$/time/Instant;->D(JJ)Lj$/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 2217
    iget-object v0, p0, Lj$/time/ZonedDateTime;->a:Lj$/time/LocalDateTime;

    invoke-virtual {v0}, Lj$/time/LocalDateTime;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lj$/time/ZonedDateTime;->b:Lj$/time/ZoneOffset;

    .line 747
    iget-object v1, v1, Lj$/time/ZoneOffset;->c:Ljava/lang/String;

    .line 2217
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2218
    iget-object v1, p0, Lj$/time/ZonedDateTime;->b:Lj$/time/ZoneOffset;

    iget-object v2, p0, Lj$/time/ZonedDateTime;->c:Lj$/time/ZoneId;

    if-eq v1, v2, :cond_0

    .line 2219
    invoke-virtual {v2}, Lj$/time/ZoneId;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final u()Lj$/time/ZoneId;
    .locals 1

    .line 946
    iget-object v0, p0, Lj$/time/ZonedDateTime;->c:Lj$/time/ZoneId;

    return-object v0
.end method

.method public final w(Lj$/time/temporal/q;)J
    .locals 2

    .line 851
    instance-of v0, p1, Lj$/time/temporal/a;

    if-eqz v0, :cond_2

    .line 852
    sget-object v0, Lj$/time/u;->a:[I

    move-object v1, p1

    check-cast v1, Lj$/time/temporal/a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 856
    iget-object v0, p0, Lj$/time/ZonedDateTime;->a:Lj$/time/LocalDateTime;

    invoke-virtual {v0, p1}, Lj$/time/LocalDateTime;->w(Lj$/time/temporal/q;)J

    move-result-wide v0

    return-wide v0

    .line 871
    :cond_0
    iget-object p1, p0, Lj$/time/ZonedDateTime;->b:Lj$/time/ZoneOffset;

    .line 854
    invoke-virtual {p1}, Lj$/time/ZoneOffset;->getTotalSeconds()I

    move-result p1

    int-to-long v0, p1

    return-wide v0

    .line 0
    :cond_1
    invoke-static {p0}, Lj$/com/android/tools/r8/a;->y(Lj$/time/chrono/ChronoZonedDateTime;)J

    move-result-wide v0

    return-wide v0

    .line 858
    :cond_2
    invoke-interface {p1, p0}, Lj$/time/temporal/q;->k(Lj$/time/temporal/n;)J

    move-result-wide v0

    return-wide v0
.end method
