.class public final Lcom/google/android/recaptcha/internal/zzgb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zza:[[J


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const/4 v0, 0x2

    new-array v1, v0, [J

    fill-array-data v1, :array_0

    const/4 v2, 0x3

    new-array v3, v2, [J

    fill-array-data v3, :array_1

    const/4 v4, 0x4

    new-array v5, v4, [J

    fill-array-data v5, :array_2

    const/4 v6, 0x5

    new-array v7, v6, [J

    fill-array-data v7, :array_3

    const/4 v8, 0x6

    new-array v9, v8, [J

    fill-array-data v9, :array_4

    const/4 v10, 0x7

    new-array v11, v10, [J

    fill-array-data v11, :array_5

    const/16 v12, 0x8

    new-array v12, v12, [J

    fill-array-data v12, :array_6

    new-array v10, v10, [[J

    const/4 v13, 0x0

    aput-object v1, v10, v13

    const/4 v1, 0x1

    aput-object v3, v10, v1

    aput-object v5, v10, v0

    aput-object v7, v10, v2

    aput-object v9, v10, v4

    aput-object v11, v10, v6

    aput-object v12, v10, v8

    sput-object v10, Lcom/google/android/recaptcha/internal/zzgb;->zza:[[J

    return-void

    :array_0
    .array-data 8
        0x473f6
        0x1c1111acd0b9428L    # 3.1855675420061E-300
    .end array-data

    :array_1
    .array-data 8
        0x34c91838
        0xa10ad7d5c6610c1L
        0x318a8c12ce9c70e7L    # 4.808051585655767E-70
    .end array-data

    :array_2
    .array-data 8
        0x3fc6e038e0L
        0xf
        0x1b6ebec62L
        0x386c87553e12cL
    .end array-data

    :array_3
    .array-data 8
        0x2b5343fd6a30L
        0x2
        0x273abc
        0xca2b9d9
        0xdf8286ccL
    .end array-data

    :array_4
    .array-data 8
        0x1c6b470864f682L
        0x2
        0x3c1c7396f6dL
        0x2142e2e3f22de5cL
        0x297105b6b7b29ddL
        0x370eb221a5f176ddL    # 1.7205605495331308E-43
    .end array-data

    :array_5
    .array-data 8
        0x81f23f390affe88L
        0x2
        0x70722e8f5cd0L
        0x20cd6bd5ace2d1L
        0x9bbc940c751630L
        0xa90404784bfcb4dL    # 8.45563543651314E-258
        0x1189b3f265c2b0c7L
    .end array-data

    :array_6
    .array-data 8
        0x7fffffffffffffffL
        0x2
        0x145
        0x249f
        0x6e12
        0x6e0d7
        0x953d18
        0x6b0191fe
    .end array-data
.end method

.method public static zza(JJ)J
    .locals 13

    xor-long v0, p0, p2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const/4 v4, 0x1

    if-gez v0, :cond_0

    move v0, v4

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    add-long v5, p0, p2

    xor-long v7, p0, v5

    cmp-long v2, v7, v2

    if-ltz v2, :cond_1

    move v1, v4

    :cond_1
    or-int v7, v0, v1

    .line 1
    const-string v8, "checkedAdd"

    move-wide v9, p0

    move-wide v11, p2

    invoke-static/range {v7 .. v12}, Lcom/google/android/recaptcha/internal/zzgc;->zza(ZLjava/lang/String;JJ)V

    return-wide v5
.end method

.method public static zzb(JJ)J
    .locals 11

    const-wide/16 p2, 0x1

    xor-long/2addr p2, p0

    const-wide/16 v0, 0x0

    cmp-long p2, p2, v0

    const/4 p3, 0x0

    const/4 v2, 0x1

    if-ltz p2, :cond_0

    move p2, v2

    goto :goto_0

    :cond_0
    move p2, p3

    :goto_0
    const-wide/16 v3, -0x1

    add-long/2addr v3, p0

    xor-long v5, p0, v3

    cmp-long v0, v5, v0

    if-ltz v0, :cond_1

    move p3, v2

    :cond_1
    or-int v5, p2, p3

    .line 1
    const-string v6, "checkedSubtract"

    const-wide/16 v9, 0x1

    move-wide v7, p0

    invoke-static/range {v5 .. v10}, Lcom/google/android/recaptcha/internal/zzgc;->zza(ZLjava/lang/String;JJ)V

    return-wide v3
.end method
