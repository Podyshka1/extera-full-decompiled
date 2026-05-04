.class public final Lcom/google/android/recaptcha/internal/zzeg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/recaptcha/internal/zzee;


# instance fields
.field private final zza:Lcom/google/android/recaptcha/internal/zzef;

.field private final zzb:Lcom/google/android/recaptcha/internal/zzed;


# direct methods
.method public constructor <init>(Lcom/google/android/recaptcha/internal/zzef;Lcom/google/android/recaptcha/internal/zzed;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/recaptcha/internal/zzeg;->zza:Lcom/google/android/recaptcha/internal/zzef;

    iput-object p2, p0, Lcom/google/android/recaptcha/internal/zzeg;->zzb:Lcom/google/android/recaptcha/internal/zzed;

    return-void
.end method

.method private final zzb(Ljava/lang/String;Ljava/util/List;)Lcom/google/android/recaptcha/internal/zzpf;
    .locals 8

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_1

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/google/android/recaptcha/internal/zzeg;->zza:Lcom/google/android/recaptcha/internal/zzef;

    .line 4
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->toLongArray(Ljava/util/Collection;)[J

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/google/android/recaptcha/internal/zzef;->zza([J)J

    move-result-wide v3

    .line 5
    new-instance v2, Lcom/google/android/recaptcha/internal/zzec;

    invoke-static {}, Lcom/google/android/recaptcha/internal/zzec;->zzb()Lcom/google/android/recaptcha/internal/zzea;

    move-result-object v7

    const-wide/16 v5, 0xff

    .line 6
    invoke-direct/range {v2 .. v7}, Lcom/google/android/recaptcha/internal/zzec;-><init>(JJLcom/google/android/recaptcha/internal/zzea;)V

    new-instance p2, Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v0, 0x0

    .line 8
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 9
    invoke-static {v3}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v3

    invoke-virtual {v2}, Lcom/google/android/recaptcha/internal/zzec;->zza()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {v4}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v4

    xor-int/2addr v3, v4

    invoke-static {v3}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v3

    int-to-char v3, v3

    .line 10
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 11
    invoke-static {}, Lcom/google/android/recaptcha/internal/zzfy;->zzh()Lcom/google/android/recaptcha/internal/zzfy;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/recaptcha/internal/zzfy;->zzj(Ljava/lang/CharSequence;)[B

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/recaptcha/internal/zzpf;->zzg([B)Lcom/google/android/recaptcha/internal/zzpf;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_1
    new-instance p2, Lcom/google/android/recaptcha/internal/zzae;

    const/16 v0, 0x12

    .line 12
    invoke-direct {p2, v1, v0, p1}, Lcom/google/android/recaptcha/internal/zzae;-><init>(IILjava/lang/Throwable;)V

    throw p2

    .line 1
    :cond_1
    new-instance p1, Lcom/google/android/recaptcha/internal/zzae;

    const/16 p2, 0x11

    const/4 v0, 0x0

    .line 2
    invoke-direct {p1, v1, p2, v0}, Lcom/google/android/recaptcha/internal/zzae;-><init>(IILjava/lang/Throwable;)V

    .line 3
    throw p1
.end method


# virtual methods
.method public final zza(Lcom/google/android/recaptcha/internal/zzpn;)Lcom/google/android/recaptcha/internal/zzpf;
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/android/recaptcha/internal/zzfh;->zzb()Lcom/google/android/recaptcha/internal/zzfh;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/google/android/recaptcha/internal/zzpn;->zzi()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/recaptcha/internal/zzpn;->zzj()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/google/android/recaptcha/internal/zzeg;->zzb(Ljava/lang/String;Ljava/util/List;)Lcom/google/android/recaptcha/internal/zzpf;

    move-result-object p1

    .line 3
    invoke-virtual {v0}, Lcom/google/android/recaptcha/internal/zzfh;->zzf()Lcom/google/android/recaptcha/internal/zzfh;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/recaptcha/internal/zzfh;->zza(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    .line 5
    sget-object v2, Lcom/google/android/recaptcha/internal/zzv;->zza:Lcom/google/android/recaptcha/internal/zzv;

    sget-object v2, Lcom/google/android/recaptcha/internal/zzx;->zzm:Lcom/google/android/recaptcha/internal/zzx;

    invoke-virtual {v2}, Lcom/google/android/recaptcha/internal/zzx;->zza()I

    move-result v2

    invoke-static {v2, v0, v1}, Lcom/google/android/recaptcha/internal/zzv;->zza(IJ)V

    return-object p1
.end method
