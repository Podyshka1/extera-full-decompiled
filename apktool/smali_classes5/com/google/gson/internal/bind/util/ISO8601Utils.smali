.class public abstract Lcom/google/gson/internal/bind/util/ISO8601Utils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TIMEZONE_UTC:Ljava/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    const-string v0, "UTC"

    invoke-static {v0}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/google/gson/internal/bind/util/ISO8601Utils;->TIMEZONE_UTC:Ljava/util/TimeZone;

    return-void
.end method

.method private static checkOffset(Ljava/lang/String;IC)Z
    .locals 1

    .line 320
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    if-ne p0, p2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static indexOfNonDigit(Ljava/lang/String;I)I
    .locals 2

    .line 378
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 379
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x30

    if-lt v0, v1, :cond_1

    const/16 v1, 0x39

    if-le v0, v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return p1

    .line 384
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    return p0
.end method

.method public static parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 150
    :try_start_0
    invoke-virtual {v2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    add-int/lit8 v3, v0, 0x4

    .line 153
    invoke-static {v1, v0, v3}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v4

    const/16 v5, 0x2d

    .line 154
    invoke-static {v1, v3, v5}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    move-result v6

    const/4 v7, 0x5

    if-eqz v6, :cond_0

    add-int/lit8 v3, v0, 0x5

    :cond_0
    add-int/lit8 v0, v3, 0x2

    .line 159
    invoke-static {v1, v3, v0}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v6

    .line 160
    invoke-static {v1, v0, v5}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    move-result v8

    if-eqz v8, :cond_1

    add-int/lit8 v0, v3, 0x3

    :cond_1
    add-int/lit8 v3, v0, 0x2

    .line 165
    invoke-static {v1, v0, v3}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v8

    const/16 v9, 0x54

    .line 176
    invoke-static {v1, v3, v9}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    move-result v9

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-nez v9, :cond_2

    .line 178
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v12

    if-gt v12, v3, :cond_2

    .line 179
    new-instance v0, Ljava/util/GregorianCalendar;

    sub-int/2addr v6, v10

    invoke-direct {v0, v4, v6, v8}, Ljava/util/GregorianCalendar;-><init>(III)V

    .line 180
    invoke-virtual {v0, v11}, Ljava/util/Calendar;->setLenient(Z)V

    .line 182
    invoke-virtual {v2, v3}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 183
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    goto/16 :goto_8

    :catch_1
    move-exception v0

    goto/16 :goto_8

    :cond_2
    const/16 v12, 0x2b

    const/16 v13, 0x5a

    const/4 v14, 0x2

    if-eqz v9, :cond_a

    add-int/lit8 v3, v0, 0x3

    add-int/lit8 v9, v0, 0x5

    .line 189
    invoke-static {v1, v3, v9}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v3

    const/16 v15, 0x3a

    .line 190
    invoke-static {v1, v9, v15}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    move-result v16

    if-eqz v16, :cond_3

    add-int/lit8 v9, v0, 0x6

    :cond_3
    add-int/lit8 v0, v9, 0x2

    .line 194
    invoke-static {v1, v9, v0}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v16

    .line 195
    invoke-static {v1, v0, v15}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    move-result v15

    if-eqz v15, :cond_4

    add-int/lit8 v9, v9, 0x3

    move v0, v9

    .line 199
    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    if-le v9, v0, :cond_9

    .line 200
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-eq v9, v13, :cond_9

    if-eq v9, v12, :cond_9

    if-eq v9, v5, :cond_9

    add-int/lit8 v9, v0, 0x2

    .line 202
    invoke-static {v1, v0, v9}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v15

    const/16 v11, 0x3b

    if-le v15, v11, :cond_5

    const/16 v11, 0x3f

    if-ge v15, v11, :cond_5

    const/16 v15, 0x3b

    :cond_5
    const/16 v11, 0x2e

    .line 207
    invoke-static {v1, v9, v11}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    move-result v11

    if-eqz v11, :cond_8

    add-int/lit8 v9, v0, 0x3

    add-int/lit8 v11, v0, 0x4

    .line 209
    invoke-static {v1, v11}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->indexOfNonDigit(Ljava/lang/String;I)I

    move-result v11

    add-int/lit8 v0, v0, 0x6

    .line 210
    invoke-static {v11, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 211
    invoke-static {v1, v9, v0}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v17

    sub-int/2addr v0, v9

    if-eq v0, v10, :cond_7

    if-eq v0, v14, :cond_6

    goto :goto_0

    :cond_6
    mul-int/lit8 v17, v17, 0xa

    goto :goto_0

    :cond_7
    mul-int/lit8 v17, v17, 0x64

    :goto_0
    move v0, v3

    move v3, v11

    move/from16 v9, v16

    move/from16 v11, v17

    goto :goto_2

    :cond_8
    move v0, v3

    move v3, v9

    move/from16 v9, v16

    const/4 v11, 0x0

    goto :goto_2

    :cond_9
    move v9, v3

    move v3, v0

    move v0, v9

    move/from16 v9, v16

    :goto_1
    const/4 v11, 0x0

    const/4 v15, 0x0

    goto :goto_2

    :cond_a
    const/4 v0, 0x0

    const/4 v9, 0x0

    goto :goto_1

    .line 230
    :goto_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v14

    if-le v14, v3, :cond_13

    .line 235
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-ne v14, v13, :cond_b

    .line 238
    sget-object v5, Lcom/google/gson/internal/bind/util/ISO8601Utils;->TIMEZONE_UTC:Ljava/util/TimeZone;

    add-int/2addr v3, v10

    goto/16 :goto_7

    :cond_b
    if-eq v14, v12, :cond_d

    if-ne v14, v5, :cond_c

    goto :goto_3

    .line 279
    :cond_c
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid time zone indicator \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 241
    :cond_d
    :goto_3
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 245
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v12

    if-lt v12, v7, :cond_e

    goto :goto_4

    :cond_e
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "00"

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 247
    :goto_4
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v3, v12

    .line 249
    const-string v12, "+0000"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_12

    const-string v12, "+00:00"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    goto :goto_6

    .line 256
    :cond_f
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "GMT"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 259
    invoke-static {v5}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v12

    .line 261
    invoke-virtual {v12}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v13

    .line 262
    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_11

    .line 268
    const-string v14, ":"

    const-string v7, ""

    invoke-virtual {v13, v14, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 269
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    goto :goto_5

    .line 270
    :cond_10
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Mismatching time zone indicator: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " given, resolves to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    invoke-virtual {v12}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    :goto_5
    move-object v5, v12

    goto :goto_7

    .line 250
    :cond_12
    :goto_6
    sget-object v5, Lcom/google/gson/internal/bind/util/ISO8601Utils;->TIMEZONE_UTC:Ljava/util/TimeZone;

    .line 283
    :goto_7
    new-instance v7, Ljava/util/GregorianCalendar;

    invoke-direct {v7, v5}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    const/4 v5, 0x0

    .line 284
    invoke-virtual {v7, v5}, Ljava/util/Calendar;->setLenient(Z)V

    .line 285
    invoke-virtual {v7, v10, v4}, Ljava/util/Calendar;->set(II)V

    sub-int/2addr v6, v10

    const/4 v4, 0x2

    .line 286
    invoke-virtual {v7, v4, v6}, Ljava/util/Calendar;->set(II)V

    const/4 v4, 0x5

    .line 287
    invoke-virtual {v7, v4, v8}, Ljava/util/Calendar;->set(II)V

    const/16 v4, 0xb

    .line 288
    invoke-virtual {v7, v4, v0}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xc

    .line 289
    invoke-virtual {v7, v0, v9}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xd

    .line 290
    invoke-virtual {v7, v0, v15}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xe

    .line 291
    invoke-virtual {v7, v0, v11}, Ljava/util/Calendar;->set(II)V

    .line 293
    invoke-virtual {v2, v3}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 294
    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0

    .line 231
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "No time zone indicator"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_8
    if-nez v1, :cond_14

    const/4 v1, 0x0

    goto :goto_9

    .line 300
    :cond_14
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x22

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 301
    :goto_9
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_15

    .line 302
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_16

    .line 303
    :cond_15
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 305
    :cond_16
    new-instance v4, Ljava/text/ParseException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to parse date ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 306
    invoke-virtual {v2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    invoke-direct {v4, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .line 307
    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 308
    throw v4
.end method

.method private static parseInt(Ljava/lang/String;II)I
    .locals 5

    if-ltz p1, :cond_4

    .line 334
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p2, v0, :cond_4

    if-gt p1, p2, :cond_4

    .line 341
    const-string v0, "Invalid number: "

    const/16 v1, 0xa

    if-ge p1, p2, :cond_1

    add-int/lit8 v2, p1, 0x1

    .line 342
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3, v1}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    if-ltz v3, :cond_0

    neg-int v3, v3

    goto :goto_0

    .line 344
    :cond_0
    new-instance v1, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    const/4 v3, 0x0

    move v2, p1

    :goto_0
    if-ge v2, p2, :cond_3

    add-int/lit8 v4, v2, 0x1

    .line 349
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    if-ltz v2, :cond_2

    mul-int/lit8 v3, v3, 0xa

    sub-int/2addr v3, v2

    move v2, v4

    goto :goto_0

    .line 351
    :cond_2
    new-instance v1, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    neg-int p0, v3

    return p0

    .line 335
    :cond_4
    new-instance p1, Ljava/lang/NumberFormatException;

    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
