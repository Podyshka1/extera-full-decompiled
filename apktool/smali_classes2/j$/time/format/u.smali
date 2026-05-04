.class public Lj$/time/format/u;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lj$/util/concurrent/ConcurrentHashMap;

.field public static final b:Lj$/time/format/s;

.field public static final c:Lj$/time/format/u;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 100
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    const/high16 v1, 0x3f400000    # 0.75f

    const/4 v2, 0x2

    const/16 v3, 0x10

    invoke-direct {v0, v3, v1, v2}, Lj$/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    sput-object v0, Lj$/time/format/u;->a:Lj$/util/concurrent/ConcurrentHashMap;

    .line 102
    new-instance v0, Lj$/time/format/s;

    .line 102
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 102
    sput-object v0, Lj$/time/format/u;->b:Lj$/time/format/s;

    .line 110
    new-instance v0, Lj$/time/format/u;

    .line 112
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 110
    sput-object v0, Lj$/time/format/u;->c:Lj$/time/format/u;

    return-void
.end method


# virtual methods
.method public a(Lj$/time/chrono/k;Lj$/time/temporal/q;JLj$/time/format/TextStyle;Ljava/util/Locale;)Ljava/lang/String;
    .locals 6

    .line 162
    sget-object v0, Lj$/time/chrono/r;->c:Lj$/time/chrono/r;

    if-eq p1, v0, :cond_0

    instance-of p1, p2, Lj$/time/temporal/a;

    if-nez p1, :cond_1

    :cond_0
    move-object v0, p0

    move-object v1, p2

    move-wide v2, p3

    move-object v4, p5

    move-object v5, p6

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1

    .line 164
    :goto_0
    invoke-virtual/range {v0 .. v5}, Lj$/time/format/u;->b(Lj$/time/temporal/q;JLj$/time/format/TextStyle;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b(Lj$/time/temporal/q;JLj$/time/format/TextStyle;Ljava/util/Locale;)Ljava/lang/String;
    .locals 18

    move-object/from16 v0, p1

    move-object/from16 v1, p5

    .line 579
    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v2, v0, v1}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 313
    sget-object v3, Lj$/time/format/u;->a:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-interface {v3, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_11

    .line 331
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 332
    sget-object v5, Lj$/time/temporal/a;->ERA:Lj$/time/temporal/a;

    const/4 v6, 0x0

    if-ne v0, v5, :cond_3

    .line 352
    invoke-static {v1}, Ljava/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object v0

    .line 353
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 354
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 355
    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getEras()[Ljava/lang/String;

    move-result-object v0

    move v7, v6

    .line 356
    :goto_0
    array-length v8, v0

    if-ge v7, v8, :cond_1

    .line 357
    aget-object v8, v0, v7

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    int-to-long v8, v7

    .line 358
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aget-object v11, v0, v7

    invoke-virtual {v1, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aget-object v9, v0, v7

    .line 568
    invoke-virtual {v9, v6}, Ljava/lang/String;->codePointAt(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->charCount(I)I

    move-result v10

    invoke-virtual {v9, v6, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 359
    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 362
    :cond_1
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 363
    sget-object v0, Lj$/time/format/TextStyle;->FULL:Lj$/time/format/TextStyle;

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    sget-object v0, Lj$/time/format/TextStyle;->SHORT:Lj$/time/format/TextStyle;

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    sget-object v0, Lj$/time/format/TextStyle;->NARROW:Lj$/time/format/TextStyle;

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    :cond_2
    new-instance v0, Lj$/time/format/t;

    invoke-direct {v0, v4}, Lj$/time/format/t;-><init>(Ljava/util/Map;)V

    goto/16 :goto_7

    .line 370
    :cond_3
    sget-object v5, Lj$/time/temporal/a;->MONTH_OF_YEAR:Lj$/time/temporal/a;

    const-wide/16 v7, 0x1

    if-ne v0, v5, :cond_6

    .line 399
    invoke-static {v1}, Ljava/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object v0

    .line 41
    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getMonths()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    .line 43
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    .line 44
    new-instance v9, Ljava/util/LinkedHashMap;

    invoke-direct {v9}, Ljava/util/LinkedHashMap;-><init>()V

    .line 45
    new-instance v10, Ljava/util/LinkedHashMap;

    invoke-direct {v10}, Ljava/util/LinkedHashMap;-><init>()V

    move-wide v11, v7

    :goto_1
    int-to-long v13, v0

    cmp-long v13, v11, v13

    if-gtz v13, :cond_4

    .line 51
    const-string v13, "LLLL"

    invoke-static {v11, v12, v13, v1}, Lj$/com/android/tools/r8/a;->D(JLjava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v13

    .line 52
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-interface {v5, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    .line 81
    invoke-virtual {v13, v6}, Ljava/lang/String;->codePointAt(I)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Character;->charCount(I)I

    move-result v15

    invoke-virtual {v13, v6, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 53
    invoke-interface {v9, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string v13, "LLL"

    invoke-static {v11, v12, v13, v1}, Lj$/com/android/tools/r8/a;->D(JLjava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v13

    .line 55
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-interface {v10, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-long/2addr v11, v7

    goto :goto_1

    :cond_4
    if-lez v0, :cond_5

    .line 59
    sget-object v0, Lj$/time/format/TextStyle;->FULL_STANDALONE:Lj$/time/format/TextStyle;

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lj$/time/format/TextStyle;->NARROW_STANDALONE:Lj$/time/format/TextStyle;

    invoke-virtual {v4, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lj$/time/format/TextStyle;->SHORT_STANDALONE:Lj$/time/format/TextStyle;

    invoke-virtual {v4, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lj$/time/format/TextStyle;->FULL:Lj$/time/format/TextStyle;

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lj$/time/format/TextStyle;->NARROW:Lj$/time/format/TextStyle;

    invoke-virtual {v4, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lj$/time/format/TextStyle;->SHORT:Lj$/time/format/TextStyle;

    invoke-virtual {v4, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    :cond_5
    new-instance v0, Lj$/time/format/t;

    invoke-direct {v0, v4}, Lj$/time/format/t;-><init>(Ljava/util/Map;)V

    goto/16 :goto_7

    .line 431
    :cond_6
    sget-object v5, Lj$/time/temporal/a;->DAY_OF_WEEK:Lj$/time/temporal/a;

    if-ne v0, v5, :cond_c

    .line 460
    invoke-static {v1}, Ljava/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getWeekdays()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    .line 97
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    .line 98
    new-instance v9, Ljava/util/LinkedHashMap;

    invoke-direct {v9}, Ljava/util/LinkedHashMap;-><init>()V

    .line 99
    new-instance v10, Ljava/util/LinkedHashMap;

    invoke-direct {v10}, Ljava/util/LinkedHashMap;-><init>()V

    .line 104
    sget-object v11, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    if-eq v1, v11, :cond_8

    sget-object v11, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    if-ne v1, v11, :cond_7

    goto :goto_2

    :cond_7
    move v11, v6

    goto :goto_3

    :cond_8
    :goto_2
    const/4 v11, 0x1

    :goto_3
    move-wide v12, v7

    :goto_4
    int-to-long v14, v0

    cmp-long v14, v12, v14

    if-gtz v14, :cond_a

    .line 108
    const-string v14, "cccc"

    invoke-static {v12, v13, v14, v1}, Lj$/com/android/tools/r8/a;->C(JLjava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v14

    .line 109
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-interface {v5, v15, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    if-eqz v11, :cond_9

    move-wide/from16 v16, v7

    .line 85
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v7

    .line 86
    invoke-virtual {v14, v7}, Ljava/lang/String;->codePointBefore(I)I

    move-result v7

    .line 87
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_5

    :cond_9
    move-wide/from16 v16, v7

    .line 81
    invoke-virtual {v14, v6}, Ljava/lang/String;->codePointAt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->charCount(I)I

    move-result v7

    invoke-virtual {v14, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 110
    :goto_5
    invoke-interface {v9, v15, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const-string v7, "ccc"

    invoke-static {v12, v13, v7, v1}, Lj$/com/android/tools/r8/a;->C(JLjava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    .line 113
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v10, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-long v12, v12, v16

    move-wide/from16 v7, v16

    goto :goto_4

    :cond_a
    if-lez v0, :cond_b

    .line 117
    sget-object v0, Lj$/time/format/TextStyle;->FULL_STANDALONE:Lj$/time/format/TextStyle;

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lj$/time/format/TextStyle;->NARROW_STANDALONE:Lj$/time/format/TextStyle;

    invoke-virtual {v4, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lj$/time/format/TextStyle;->SHORT_STANDALONE:Lj$/time/format/TextStyle;

    invoke-virtual {v4, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lj$/time/format/TextStyle;->FULL:Lj$/time/format/TextStyle;

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Lj$/time/format/TextStyle;->NARROW:Lj$/time/format/TextStyle;

    invoke-virtual {v4, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lj$/time/format/TextStyle;->SHORT:Lj$/time/format/TextStyle;

    invoke-virtual {v4, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    :cond_b
    new-instance v0, Lj$/time/format/t;

    invoke-direct {v0, v4}, Lj$/time/format/t;-><init>(Ljava/util/Map;)V

    goto :goto_7

    .line 500
    :cond_c
    sget-object v5, Lj$/time/temporal/a;->AMPM_OF_DAY:Lj$/time/temporal/a;

    if-ne v0, v5, :cond_10

    .line 520
    invoke-static {v1}, Ljava/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object v0

    .line 521
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 522
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 523
    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v0

    move v7, v6

    .line 524
    :goto_6
    array-length v8, v0

    if-ge v7, v8, :cond_e

    .line 525
    aget-object v8, v0, v7

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_d

    int-to-long v8, v7

    .line 526
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aget-object v11, v0, v7

    invoke-virtual {v1, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aget-object v9, v0, v7

    .line 568
    invoke-virtual {v9, v6}, Ljava/lang/String;->codePointAt(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->charCount(I)I

    move-result v10

    invoke-virtual {v9, v6, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 527
    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 530
    :cond_e
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    .line 531
    sget-object v0, Lj$/time/format/TextStyle;->FULL:Lj$/time/format/TextStyle;

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    sget-object v0, Lj$/time/format/TextStyle;->SHORT:Lj$/time/format/TextStyle;

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    sget-object v0, Lj$/time/format/TextStyle;->NARROW:Lj$/time/format/TextStyle;

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    :cond_f
    new-instance v0, Lj$/time/format/t;

    invoke-direct {v0, v4}, Lj$/time/format/t;-><init>(Ljava/util/Map;)V

    goto :goto_7

    .line 564
    :cond_10
    const-string v0, ""

    .line 316
    :goto_7
    invoke-interface {v3, v2, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    invoke-interface {v3, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 139
    :cond_11
    instance-of v0, v4, Lj$/time/format/t;

    if-eqz v0, :cond_12

    .line 140
    check-cast v4, Lj$/time/format/t;

    move-wide/from16 v0, p2

    move-object/from16 v2, p4

    invoke-virtual {v4, v0, v1, v2}, Lj$/time/format/t;->a(JLj$/time/format/TextStyle;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_12
    const/4 v0, 0x0

    return-object v0
.end method
