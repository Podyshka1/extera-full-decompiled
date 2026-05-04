.class public final Lcom/google/android/gms/internal/cast/zzwa;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/cast/zzwa;


# instance fields
.field private zzb:I

.field private zzc:[I

.field private zzd:[Ljava/lang/Object;

.field private zze:I

.field private zzf:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/cast/zzwa;

    const/4 v1, 0x0

    new-array v2, v1, [I

    new-array v3, v1, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3, v1}, Lcom/google/android/gms/internal/cast/zzwa;-><init>(I[I[Ljava/lang/Object;Z)V

    sput-object v0, Lcom/google/android/gms/internal/cast/zzwa;->zza:Lcom/google/android/gms/internal/cast/zzwa;

    return-void
.end method

.method private constructor <init>(I[I[Ljava/lang/Object;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/cast/zzwa;->zze:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/cast/zzwa;->zzb:I

    iput-object p2, p0, Lcom/google/android/gms/internal/cast/zzwa;->zzc:[I

    iput-object p3, p0, Lcom/google/android/gms/internal/cast/zzwa;->zzd:[Ljava/lang/Object;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/cast/zzwa;->zzf:Z

    return-void
.end method

.method public static zzc()Lcom/google/android/gms/internal/cast/zzwa;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/cast/zzwa;->zza:Lcom/google/android/gms/internal/cast/zzwa;

    return-object v0
.end method

.method static zze(Lcom/google/android/gms/internal/cast/zzwa;Lcom/google/android/gms/internal/cast/zzwa;)Lcom/google/android/gms/internal/cast/zzwa;
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/cast/zzwa;->zzb:I

    iget v0, p1, Lcom/google/android/gms/internal/cast/zzwa;->zzb:I

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzwa;->zzc:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    .line 3
    iget-object v2, p1, Lcom/google/android/gms/internal/cast/zzwa;->zzc:[I

    invoke-static {v2, v1, v0, v1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    iget-object p0, p0, Lcom/google/android/gms/internal/cast/zzwa;->zzd:[Ljava/lang/Object;

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    .line 5
    iget-object p1, p1, Lcom/google/android/gms/internal/cast/zzwa;->zzd:[Ljava/lang/Object;

    invoke-static {p1, v1, p0, v1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p1, Lcom/google/android/gms/internal/cast/zzwa;

    const/4 v2, 0x1

    invoke-direct {p1, v1, v0, p0, v2}, Lcom/google/android/gms/internal/cast/zzwa;-><init>(I[I[Ljava/lang/Object;Z)V

    return-object p1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 1
    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/internal/cast/zzwa;

    if-nez v2, :cond_2

    return v1

    :cond_2
    check-cast p1, Lcom/google/android/gms/internal/cast/zzwa;

    return v0
.end method

.method public final hashCode()I
    .locals 1

    const v0, 0x7bc6f

    return v0
.end method

.method public final zza()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/cast/zzwa;->zze:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/google/android/gms/internal/cast/zzwa;->zze:I

    :cond_0
    return v0
.end method

.method public final zzb()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/cast/zzwa;->zze:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/google/android/gms/internal/cast/zzwa;->zze:I

    :cond_0
    return v0
.end method

.method final zzd(Lcom/google/android/gms/internal/cast/zzwa;)Lcom/google/android/gms/internal/cast/zzwa;
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/cast/zzwa;->zza:Lcom/google/android/gms/internal/cast/zzwa;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/cast/zzwa;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/cast/zzwa;->zzf:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzwa;->zzc:[I

    .line 3
    array-length v1, v0

    .line 4
    iget-object v1, p1, Lcom/google/android/gms/internal/cast/zzwa;->zzc:[I

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    iget-object p1, p1, Lcom/google/android/gms/internal/cast/zzwa;->zzd:[Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzwa;->zzd:[Ljava/lang/Object;

    invoke-static {p1, v2, v0, v2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v2, p0, Lcom/google/android/gms/internal/cast/zzwa;->zzb:I

    return-object p0

    .line 1
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 6
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :cond_1
    return-object p0
.end method

.method public final zzf()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/cast/zzwa;->zzf:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/cast/zzwa;->zzf:Z

    :cond_0
    return-void
.end method

.method final zzg(Ljava/lang/StringBuilder;I)V
    .locals 0

    return-void
.end method
