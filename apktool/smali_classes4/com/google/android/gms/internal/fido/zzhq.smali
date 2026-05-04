.class abstract Lcom/google/android/gms/internal/fido/zzhq;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static final zza(Ljava/io/InputStream;Lcom/google/android/gms/internal/fido/zzhs;)Lcom/google/android/gms/internal/fido/zzhp;
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/fido/zzhq;->zzb(Ljava/io/InputStream;Lcom/google/android/gms/internal/fido/zzhs;)Lcom/google/android/gms/internal/fido/zzhp;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    :try_start_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/fido/zzhs;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-object p0

    :catchall_0
    move-exception p0

    :try_start_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/fido/zzhs;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 3
    :catch_1
    throw p0
.end method

.method private static final zzb(Ljava/io/InputStream;Lcom/google/android/gms/internal/fido/zzhs;)Lcom/google/android/gms/internal/fido/zzhp;
    .locals 10

    .line 1
    const-string v0, "Error in decoding CborValue from bytes"

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/fido/zzhs;->zzd()Lcom/google/android/gms/internal/fido/zzhr;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v1, :cond_10

    .line 3
    :try_start_1
    invoke-virtual {v1}, Lcom/google/android/gms/internal/fido/zzhr;->zza()B

    move-result v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/fido/zzhr;->zzb()B

    move-result v3

    const/16 v4, -0x80

    const-wide/16 v5, 0x3e8

    const/4 v7, 0x0

    if-eq v3, v4, :cond_d

    const/16 v4, -0x60

    if-eq v3, v4, :cond_6

    const/16 v4, -0x40

    if-eq v3, v4, :cond_5

    const/16 v4, -0x20

    if-eq v3, v4, :cond_4

    if-eqz v3, :cond_2

    const/16 v4, 0x20

    if-eq v3, v4, :cond_2

    const/16 v4, 0x40

    if-eq v3, v4, :cond_1

    const/16 v4, 0x60

    if-ne v3, v4, :cond_0

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/fido/zzhs;->zze()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    int-to-long v3, v3

    .line 11
    invoke-static {v2, v3, v4, p0, p1}, Lcom/google/android/gms/internal/fido/zzhq;->zzc(BJLjava/io/InputStream;Lcom/google/android/gms/internal/fido/zzhs;)V

    new-instance p0, Lcom/google/android/gms/internal/fido/zzhn;

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/fido/zzhn;-><init>(Ljava/lang/String;)V

    return-object p0

    :catch_0
    move-exception p0

    goto/16 :goto_5

    :catch_1
    move-exception p0

    goto/16 :goto_5

    .line 32
    :cond_0
    new-instance p0, Lcom/google/android/gms/internal/fido/zzhj;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/fido/zzhr;->zzc()I

    move-result p1

    new-instance v1, Ljava/lang/StringBuilder;

    .line 31
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unidentifiable major type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/fido/zzhj;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/fido/zzhs;->zzg()[B

    move-result-object v1

    array-length v3, v1

    int-to-long v4, v3

    .line 8
    invoke-static {v2, v4, v5, p0, p1}, Lcom/google/android/gms/internal/fido/zzhq;->zzc(BJLjava/io/InputStream;Lcom/google/android/gms/internal/fido/zzhs;)V

    new-instance p0, Lcom/google/android/gms/internal/fido/zzhi;

    .line 9
    invoke-static {v1, v7, v3}, Lcom/google/android/gms/internal/fido/zzgx;->zzl([BII)Lcom/google/android/gms/internal/fido/zzgx;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/fido/zzhi;-><init>(Lcom/google/android/gms/internal/fido/zzgx;)V

    return-object p0

    .line 5
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/fido/zzhs;->zzb()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_3

    move-wide v5, v3

    goto :goto_0

    :cond_3
    not-long v5, v3

    .line 6
    :goto_0
    invoke-static {v2, v5, v6, p0, p1}, Lcom/google/android/gms/internal/fido/zzhq;->zzc(BJLjava/io/InputStream;Lcom/google/android/gms/internal/fido/zzhs;)V

    new-instance p0, Lcom/google/android/gms/internal/fido/zzhk;

    invoke-direct {p0, v3, v4}, Lcom/google/android/gms/internal/fido/zzhk;-><init>(J)V

    return-object p0

    .line 4
    :cond_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/fido/zzhs;->zzf()Z

    move-result p0

    new-instance p1, Lcom/google/android/gms/internal/fido/zzhh;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/fido/zzhh;-><init>(Z)V

    return-object p1

    .line 2
    :cond_5
    new-instance p0, Lcom/google/android/gms/internal/fido/zzhj;

    const-string p1, "Tags are currently unsupported"

    .line 32
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/fido/zzhj;-><init>(Ljava/lang/String;)V

    throw p0

    .line 17
    :cond_6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/fido/zzhs;->zzc()J

    move-result-wide v3

    cmp-long v1, v3, v5

    if-gtz v1, :cond_c

    .line 19
    invoke-static {v2, v3, v4, p0, p1}, Lcom/google/android/gms/internal/fido/zzhq;->zzc(BJLjava/io/InputStream;Lcom/google/android/gms/internal/fido/zzhs;)V

    long-to-int v1, v3

    new-array v2, v1, [Lcom/google/android/gms/internal/fido/zzhl;

    const/4 v5, 0x0

    move v6, v7

    :goto_1
    int-to-long v8, v6

    cmp-long v8, v8, v3

    if-gez v8, :cond_9

    .line 20
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/fido/zzhq;->zzb(Ljava/io/InputStream;Lcom/google/android/gms/internal/fido/zzhs;)Lcom/google/android/gms/internal/fido/zzhp;

    move-result-object v8

    if-eqz v5, :cond_8

    .line 21
    invoke-interface {v8, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v9

    if-lez v9, :cond_7

    goto :goto_2

    .line 16
    :cond_7
    new-instance p0, Lcom/google/android/gms/internal/fido/zzhf;

    const-string p1, "Keys in CBOR Map not in strictly ascending natural order:\nPrevious key: %s\nCurrent key: %s"

    .line 29
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v7

    const/4 v1, 0x1

    aput-object v2, v3, v1

    .line 30
    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/fido/zzhf;-><init>(Ljava/lang/String;)V

    throw p0

    .line 21
    :cond_8
    :goto_2
    new-instance v5, Lcom/google/android/gms/internal/fido/zzhl;

    .line 22
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/fido/zzhq;->zzb(Ljava/io/InputStream;Lcom/google/android/gms/internal/fido/zzhs;)Lcom/google/android/gms/internal/fido/zzhp;

    move-result-object v9

    invoke-direct {v5, v8, v9}, Lcom/google/android/gms/internal/fido/zzhl;-><init>(Lcom/google/android/gms/internal/fido/zzhp;Lcom/google/android/gms/internal/fido/zzhp;)V

    aput-object v5, v2, v6

    add-int/lit8 v6, v6, 0x1

    move-object v5, v8

    goto :goto_1

    :cond_9
    new-instance p0, Ljava/util/TreeMap;

    .line 23
    invoke-direct {p0}, Ljava/util/TreeMap;-><init>()V

    :goto_3
    if-ge v7, v1, :cond_b

    .line 24
    aget-object p1, v2, v7

    .line 25
    invoke-virtual {p1}, Lcom/google/android/gms/internal/fido/zzhl;->zza()Lcom/google/android/gms/internal/fido/zzhp;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 26
    invoke-virtual {p1}, Lcom/google/android/gms/internal/fido/zzhl;->zza()Lcom/google/android/gms/internal/fido/zzhp;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/fido/zzhl;->zzb()Lcom/google/android/gms/internal/fido/zzhp;

    move-result-object p1

    invoke-interface {p0, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 25
    :cond_a
    new-instance p0, Lcom/google/android/gms/internal/fido/zzhf;

    const-string p1, "Attempted to add duplicate key to canonical CBOR Map."

    .line 27
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/fido/zzhf;-><init>(Ljava/lang/String;)V

    throw p0

    .line 26
    :cond_b
    new-instance p1, Lcom/google/android/gms/internal/fido/zzhm;

    .line 28
    invoke-static {p0}, Lcom/google/android/gms/internal/fido/zzcj;->zzf(Ljava/util/Map;)Lcom/google/android/gms/internal/fido/zzcj;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/fido/zzhm;-><init>(Lcom/google/android/gms/internal/fido/zzcj;)V

    return-object p1

    .line 17
    :cond_c
    new-instance p0, Lcom/google/android/gms/internal/fido/zzhj;

    const-string p1, "Parser being asked to read a large CBOR map"

    .line 18
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/fido/zzhj;-><init>(Ljava/lang/String;)V

    throw p0

    .line 12
    :cond_d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/fido/zzhs;->zza()J

    move-result-wide v3

    cmp-long v1, v3, v5

    if-gtz v1, :cond_f

    .line 14
    invoke-static {v2, v3, v4, p0, p1}, Lcom/google/android/gms/internal/fido/zzhq;->zzc(BJLjava/io/InputStream;Lcom/google/android/gms/internal/fido/zzhs;)V

    long-to-int v1, v3

    new-array v1, v1, [Lcom/google/android/gms/internal/fido/zzhp;

    :goto_4
    int-to-long v5, v7

    cmp-long v2, v5, v3

    if-gez v2, :cond_e

    .line 15
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/fido/zzhq;->zzb(Ljava/io/InputStream;Lcom/google/android/gms/internal/fido/zzhs;)Lcom/google/android/gms/internal/fido/zzhp;

    move-result-object v2

    aput-object v2, v1, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_e
    new-instance p0, Lcom/google/android/gms/internal/fido/zzhg;

    .line 16
    invoke-static {v1}, Lcom/google/android/gms/internal/fido/zzcc;->zzi([Ljava/lang/Object;)Lcom/google/android/gms/internal/fido/zzcc;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/fido/zzhg;-><init>(Lcom/google/android/gms/internal/fido/zzcc;)V

    return-object p0

    .line 12
    :cond_f
    new-instance p0, Lcom/google/android/gms/internal/fido/zzhj;

    const-string p1, "Parser being asked to read a large CBOR array"

    .line 13
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/fido/zzhj;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 31
    :goto_5
    new-instance p1, Lcom/google/android/gms/internal/fido/zzhj;

    .line 33
    invoke-direct {p1, v0, p0}, Lcom/google/android/gms/internal/fido/zzhj;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 1
    :cond_10
    new-instance p0, Lcom/google/android/gms/internal/fido/zzhj;

    const-string p1, "Parser being asked to parse an empty input stream"

    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/fido/zzhj;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_2
    move-exception p0

    .line 30
    new-instance p1, Lcom/google/android/gms/internal/fido/zzhj;

    .line 2
    invoke-direct {p1, v0, p0}, Lcom/google/android/gms/internal/fido/zzhj;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static final zzc(BJLjava/io/InputStream;Lcom/google/android/gms/internal/fido/zzhs;)V
    .locals 2

    .line 4
    const-string p3, "Integer value "

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-wide v0, 0x100000000L

    cmp-long p0, p1, v0

    if-ltz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/google/android/gms/internal/fido/zzhf;

    new-instance p4, Ljava/lang/StringBuilder;

    .line 1
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " after add info could have been represented in 0-4 additional bytes, but used 8"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/fido/zzhf;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    const-wide/32 v0, 0x10000

    cmp-long p0, p1, v0

    if-ltz p0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/google/android/gms/internal/fido/zzhf;

    new-instance p4, Ljava/lang/StringBuilder;

    .line 2
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " after add info could have been represented in 0-2 additional bytes, but used 4"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/fido/zzhf;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_2
    const-wide/16 v0, 0x100

    cmp-long p0, p1, v0

    if-ltz p0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Lcom/google/android/gms/internal/fido/zzhf;

    new-instance p4, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " after add info could have been represented in 0-1 additional bytes, but used 2"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/fido/zzhf;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_3
    const-wide/16 v0, 0x18

    cmp-long p0, p1, v0

    if-ltz p0, :cond_3

    :goto_0
    return-void

    .line 4
    :cond_3
    new-instance p0, Lcom/google/android/gms/internal/fido/zzhf;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " after add info could have been represented in 0 additional bytes, but used 1"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/fido/zzhf;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
