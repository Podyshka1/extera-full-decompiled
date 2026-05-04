.class public final Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$binarySearch(Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$Companion;Lokio/ByteString;[Lokio/ByteString;I)Ljava/lang/String;
    .locals 0

    .line 150
    invoke-direct {p0, p1, p2, p3}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$Companion;->binarySearch(Lokio/ByteString;[Lokio/ByteString;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final binarySearch(Lokio/ByteString;[Lokio/ByteString;I)Ljava/lang/String;
    .locals 17

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 165
    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_b

    add-int v5, v4, v2

    .line 168
    div-int/lit8 v5, v5, 0x2

    :goto_1
    const/16 v6, 0xa

    const/4 v7, -0x1

    if-le v5, v7, :cond_0

    .line 171
    invoke-virtual {v0, v5}, Lokio/ByteString;->getByte(I)B

    move-result v8

    if-eq v8, v6, :cond_0

    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v8, v5, 0x1

    const/4 v9, 0x1

    move v10, v9

    :goto_2
    add-int v11, v8, v10

    .line 178
    invoke-virtual {v0, v11}, Lokio/ByteString;->getByte(I)B

    move-result v12

    if-eq v12, v6, :cond_1

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_1
    sub-int v6, v11, v8

    move/from16 v12, p3

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_3
    const/16 v15, 0xff

    if-eqz v10, :cond_2

    const/16 v10, 0x2e

    const/4 v3, 0x0

    goto :goto_4

    .line 197
    :cond_2
    aget-object v3, v1, v12

    invoke-virtual {v3, v13}, Lokio/ByteString;->getByte(I)B

    move-result v3

    invoke-static {v3, v15}, Lokhttp3/internal/_UtilCommonKt;->and(BI)I

    move-result v3

    move/from16 v16, v10

    move v10, v3

    move/from16 v3, v16

    :goto_4
    add-int v7, v8, v14

    .line 200
    invoke-virtual {v0, v7}, Lokio/ByteString;->getByte(I)B

    move-result v7

    invoke-static {v7, v15}, Lokhttp3/internal/_UtilCommonKt;->and(BI)I

    move-result v7

    sub-int/2addr v10, v7

    if-nez v10, :cond_5

    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v13, v13, 0x1

    if-eq v14, v6, :cond_5

    .line 209
    aget-object v7, v1, v12

    invoke-virtual {v7}, Lokio/ByteString;->size()I

    move-result v7

    if-ne v7, v13, :cond_4

    .line 212
    array-length v3, v1

    sub-int/2addr v3, v9

    if-ne v12, v3, :cond_3

    goto :goto_5

    :cond_3
    add-int/lit8 v12, v12, 0x1

    move v10, v9

    const/4 v7, -0x1

    const/4 v13, -0x1

    goto :goto_3

    :cond_4
    move v10, v3

    const/4 v7, -0x1

    goto :goto_3

    :cond_5
    :goto_5
    if-gez v10, :cond_6

    :goto_6
    move v2, v5

    goto :goto_0

    :cond_6
    if-lez v10, :cond_7

    :goto_7
    add-int/lit8 v4, v11, 0x1

    goto :goto_0

    :cond_7
    sub-int v3, v6, v14

    .line 229
    aget-object v7, v1, v12

    invoke-virtual {v7}, Lokio/ByteString;->size()I

    move-result v7

    sub-int/2addr v7, v13

    add-int/lit8 v12, v12, 0x1

    .line 230
    array-length v9, v1

    :goto_8
    if-ge v12, v9, :cond_8

    .line 231
    aget-object v10, v1, v12

    invoke-virtual {v10}, Lokio/ByteString;->size()I

    move-result v10

    add-int/2addr v7, v10

    add-int/lit8 v12, v12, 0x1

    goto :goto_8

    :cond_8
    if-ge v7, v3, :cond_9

    goto :goto_6

    :cond_9
    if-le v7, v3, :cond_a

    goto :goto_7

    :cond_a
    add-int/2addr v6, v8

    .line 240
    invoke-virtual {v0, v8, v6}, Lokio/ByteString;->substring(II)Lokio/ByteString;

    move-result-object v0

    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Lokio/ByteString;->string(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final get()Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;
    .locals 1

    .line 158
    invoke-static {}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->access$getInstance$cp()Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    move-result-object v0

    return-object v0
.end method

.method public final resetForTests$okhttp()V
    .locals 2

    .line 249
    new-instance v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    sget-object v1, Lokhttp3/internal/publicsuffix/PublicSuffixList;->Companion:Lokhttp3/internal/publicsuffix/PublicSuffixList$Companion;

    invoke-static {v1}, Lokhttp3/internal/publicsuffix/PublicSuffixList_androidKt;->getDefault(Lokhttp3/internal/publicsuffix/PublicSuffixList$Companion;)Lokhttp3/internal/publicsuffix/PublicSuffixList;

    move-result-object v1

    invoke-direct {v0, v1}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;-><init>(Lokhttp3/internal/publicsuffix/PublicSuffixList;)V

    invoke-static {v0}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->access$setInstance$cp(Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;)V

    return-void
.end method
