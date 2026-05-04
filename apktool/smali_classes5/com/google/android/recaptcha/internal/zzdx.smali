.class public final Lcom/google/android/recaptcha/internal/zzdx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/recaptcha/internal/zzdd;


# static fields
.field public static final zza:Lcom/google/android/recaptcha/internal/zzdx;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/recaptcha/internal/zzdx;

    invoke-direct {v0}, Lcom/google/android/recaptcha/internal/zzdx;-><init>()V

    sput-object v0, Lcom/google/android/recaptcha/internal/zzdx;->zza:Lcom/google/android/recaptcha/internal/zzdx;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs zza(ILcom/google/android/recaptcha/internal/zzcj;[Lcom/google/android/recaptcha/internal/zzpq;)V
    .locals 7

    .line 1
    array-length v0, p3

    const/4 v1, 0x2

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-ne v0, v1, :cond_5

    invoke-virtual {p2}, Lcom/google/android/recaptcha/internal/zzcj;->zzc()Lcom/google/android/recaptcha/internal/zzck;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    aget-object v4, p3, v1

    .line 3
    invoke-virtual {v0, v4}, Lcom/google/android/recaptcha/internal/zzck;->zza(Lcom/google/android/recaptcha/internal/zzpq;)Ljava/lang/Object;

    move-result-object v0

    instance-of v4, v0, [I

    const/4 v5, 0x1

    if-eq v5, v4, :cond_0

    move-object v0, v3

    .line 2
    :cond_0
    check-cast v0, [I

    const/4 v4, 0x5

    if-eqz v0, :cond_4

    .line 5
    invoke-virtual {p2}, Lcom/google/android/recaptcha/internal/zzcj;->zzc()Lcom/google/android/recaptcha/internal/zzck;

    move-result-object v6

    .line 6
    aget-object p3, p3, v5

    .line 7
    invoke-virtual {v6, p3}, Lcom/google/android/recaptcha/internal/zzck;->zza(Lcom/google/android/recaptcha/internal/zzpq;)Ljava/lang/Object;

    move-result-object p3

    instance-of v6, p3, Ljava/lang/String;

    if-eq v5, v6, :cond_1

    move-object p3, v3

    .line 6
    :cond_1
    check-cast p3, Ljava/lang/String;

    if-eqz p3, :cond_3

    .line 9
    invoke-virtual {p2}, Lcom/google/android/recaptcha/internal/zzcj;->zzc()Lcom/google/android/recaptcha/internal/zzck;

    move-result-object p2

    new-instance v3, Ljava/lang/StringBuilder;

    .line 10
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_0
    array-length v4, v0

    :goto_0
    if-ge v1, v4, :cond_2

    .line 11
    aget v5, v0, v1

    .line 12
    invoke-virtual {p3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 13
    invoke-virtual {p2, p1, p3}, Lcom/google/android/recaptcha/internal/zzck;->zzf(ILjava/lang/Object;)V

    return-void

    :goto_1
    new-instance p2, Lcom/google/android/recaptcha/internal/zzae;

    const/16 p3, 0x16

    .line 14
    invoke-direct {p2, v2, p3, p1}, Lcom/google/android/recaptcha/internal/zzae;-><init>(IILjava/lang/Throwable;)V

    throw p2

    .line 6
    :cond_3
    new-instance p1, Lcom/google/android/recaptcha/internal/zzae;

    .line 8
    invoke-direct {p1, v2, v4, v3}, Lcom/google/android/recaptcha/internal/zzae;-><init>(IILjava/lang/Throwable;)V

    .line 9
    throw p1

    .line 2
    :cond_4
    new-instance p1, Lcom/google/android/recaptcha/internal/zzae;

    .line 4
    invoke-direct {p1, v2, v4, v3}, Lcom/google/android/recaptcha/internal/zzae;-><init>(IILjava/lang/Throwable;)V

    .line 5
    throw p1

    .line 14
    :cond_5
    new-instance p1, Lcom/google/android/recaptcha/internal/zzae;

    const/4 p2, 0x3

    .line 15
    invoke-direct {p1, v2, p2, v3}, Lcom/google/android/recaptcha/internal/zzae;-><init>(IILjava/lang/Throwable;)V

    .line 16
    throw p1
.end method
