.class public final Lj$/time/format/o;
.super Lj$/time/format/n;
.source "SourceFile"


# static fields
.field public static final d:Lj$/util/concurrent/ConcurrentHashMap;


# instance fields
.field public final c:Lj$/time/format/TextStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 4044
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lj$/time/format/o;->d:Lj$/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>(Lj$/time/format/TextStyle;)V
    .locals 2

    .line 4030
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ZoneText("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lj$/time/temporal/r;->e:Lj$/time/format/a;

    invoke-direct {p0, v1, v0}, Lj$/time/format/n;-><init>(Lj$/time/format/a;Ljava/lang/String;)V

    .line 4133
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4135
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4031
    const-string v0, "textStyle"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/time/format/TextStyle;

    iput-object p1, p0, Lj$/time/format/o;->c:Lj$/time/format/TextStyle;

    return-void
.end method


# virtual methods
.method public final h(Lj$/time/format/r;Ljava/lang/StringBuilder;)Z
    .locals 13

    .line 4102
    sget-object v0, Lj$/time/temporal/r;->a:Lj$/time/format/a;

    invoke-virtual {p1, v0}, Lj$/time/format/r;->b(Lj$/time/format/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/time/ZoneId;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 4106
    :cond_0
    invoke-virtual {v0}, Lj$/time/ZoneId;->getId()Ljava/lang/String;

    move-result-object v2

    .line 4107
    instance-of v3, v0, Lj$/time/ZoneOffset;

    const/4 v4, 0x1

    if-nez v3, :cond_9

    .line 238
    iget-object v3, p1, Lj$/time/format/r;->a:Lj$/time/temporal/n;

    .line 4111
    sget-object v5, Lj$/time/temporal/a;->INSTANT_SECONDS:Lj$/time/temporal/a;

    invoke-interface {v3, v5}, Lj$/time/temporal/n;->e(Lj$/time/temporal/q;)Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x2

    if-eqz v5, :cond_1

    .line 4112
    invoke-virtual {v0}, Lj$/time/ZoneId;->getRules()Lj$/time/zone/ZoneRules;

    move-result-object v0

    invoke-static {v3}, Lj$/time/Instant;->A(Lj$/time/temporal/n;)Lj$/time/Instant;

    move-result-object v3

    invoke-virtual {v0, v3}, Lj$/time/zone/ZoneRules;->g(Lj$/time/Instant;)Z

    move-result v0

    goto :goto_0

    .line 4113
    :cond_1
    sget-object v5, Lj$/time/temporal/a;->EPOCH_DAY:Lj$/time/temporal/a;

    invoke-interface {v3, v5}, Lj$/time/temporal/n;->e(Lj$/time/temporal/q;)Z

    move-result v8

    if-eqz v8, :cond_2

    sget-object v8, Lj$/time/temporal/a;->NANO_OF_DAY:Lj$/time/temporal/a;

    .line 4114
    invoke-interface {v3, v8}, Lj$/time/temporal/n;->e(Lj$/time/temporal/q;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 4115
    invoke-interface {v3, v5}, Lj$/time/temporal/n;->w(Lj$/time/temporal/q;)J

    move-result-wide v9

    invoke-static {v9, v10}, Lj$/time/LocalDate;->K(J)Lj$/time/LocalDate;

    move-result-object v5

    .line 4116
    invoke-interface {v3, v8}, Lj$/time/temporal/n;->w(Lj$/time/temporal/q;)J

    move-result-wide v8

    invoke-static {v8, v9}, Lj$/time/h;->F(J)Lj$/time/h;

    move-result-object v3

    .line 1831
    invoke-static {v5, v3}, Lj$/time/LocalDateTime;->E(Lj$/time/LocalDate;Lj$/time/h;)Lj$/time/LocalDateTime;

    move-result-object v3

    .line 4118
    invoke-virtual {v0}, Lj$/time/ZoneId;->getRules()Lj$/time/zone/ZoneRules;

    move-result-object v5

    invoke-virtual {v5, v3}, Lj$/time/zone/ZoneRules;->e(Lj$/time/LocalDateTime;)Lj$/time/zone/b;

    move-result-object v5

    if-nez v5, :cond_2

    .line 4119
    invoke-virtual {v0}, Lj$/time/ZoneId;->getRules()Lj$/time/zone/ZoneRules;

    move-result-object v5

    .line 293
    invoke-static {v3, v0, v6}, Lj$/time/ZonedDateTime;->v(Lj$/time/LocalDateTime;Lj$/time/ZoneId;Lj$/time/ZoneOffset;)Lj$/time/ZonedDateTime;

    move-result-object v0

    .line 538
    invoke-virtual {v0}, Lj$/time/ZonedDateTime;->C()J

    move-result-wide v8

    invoke-virtual {v0}, Lj$/time/ZonedDateTime;->b()Lj$/time/h;

    move-result-object v0

    .line 738
    iget v0, v0, Lj$/time/h;->d:I

    int-to-long v10, v0

    .line 538
    invoke-static {v8, v9, v10, v11}, Lj$/time/Instant;->D(JJ)Lj$/time/Instant;

    move-result-object v0

    .line 4119
    invoke-virtual {v5, v0}, Lj$/time/zone/ZoneRules;->g(Lj$/time/Instant;)Z

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v7

    .line 250
    :goto_0
    iget-object p1, p1, Lj$/time/format/r;->b:Lj$/time/format/DateTimeFormatter;

    .line 1437
    iget-object p1, p1, Lj$/time/format/DateTimeFormatter;->b:Ljava/util/Locale;

    .line 4048
    sget-object v3, Lj$/time/format/TextStyle;->NARROW:Lj$/time/format/TextStyle;

    iget-object v5, p0, Lj$/time/format/o;->c:Lj$/time/format/TextStyle;

    if-ne v5, v3, :cond_3

    goto :goto_1

    .line 4052
    :cond_3
    sget-object v3, Lj$/time/format/o;->d:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/ref/SoftReference;

    const/4 v9, 0x5

    const/4 v10, 0x3

    if-eqz v8, :cond_4

    .line 4054
    invoke-virtual {v8}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    if-eqz v6, :cond_4

    .line 4055
    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    if-nez v8, :cond_6

    .line 4072
    :cond_4
    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v8

    const/4 v11, 0x7

    .line 4075
    new-array v11, v11, [Ljava/lang/String;

    aput-object v2, v11, v1

    .line 4077
    invoke-virtual {v8, v1, v4, p1}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v4

    .line 4078
    invoke-virtual {v8, v1, v1, p1}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v7

    .line 4079
    invoke-virtual {v8, v4, v4, p1}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v11, v10

    const/4 v7, 0x4

    .line 4080
    invoke-virtual {v8, v4, v1, p1}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v11, v7

    aput-object v2, v11, v9

    const/4 v1, 0x6

    aput-object v2, v11, v1

    if-nez v6, :cond_5

    .line 4086
    new-instance v6, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v6}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 4088
    :cond_5
    invoke-interface {v6, p1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4089
    new-instance p1, Ljava/lang/ref/SoftReference;

    invoke-direct {p1, v6}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v3, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v8, v11

    :cond_6
    if-eqz v0, :cond_8

    if-eq v0, v4, :cond_7

    .line 175
    iget p1, v5, Lj$/time/format/TextStyle;->a:I

    add-int/2addr p1, v9

    .line 4097
    aget-object v6, v8, p1

    goto :goto_1

    .line 175
    :cond_7
    iget p1, v5, Lj$/time/format/TextStyle;->a:I

    add-int/2addr p1, v10

    .line 4095
    aget-object v6, v8, p1

    goto :goto_1

    .line 175
    :cond_8
    iget p1, v5, Lj$/time/format/TextStyle;->a:I

    add-int/2addr p1, v4

    .line 4093
    aget-object v6, v8, p1

    :goto_1
    if-eqz v6, :cond_9

    move-object v2, v6

    .line 4128
    :cond_9
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return v4
.end method
