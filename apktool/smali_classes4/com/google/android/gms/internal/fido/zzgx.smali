.class public abstract Lcom/google/android/gms/internal/fido/zzgx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/io/Serializable;


# static fields
.field private static final zza:Ljava/util/Comparator;

.field public static final zzb:Lcom/google/android/gms/internal/fido/zzgx;

.field private static final zzd:Lcom/google/android/gms/internal/fido/zzgw;


# instance fields
.field private zzc:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/fido/zzgu;

    sget-object v1, Lcom/google/android/gms/internal/fido/zzhc;->zzd:[B

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/fido/zzgu;-><init>([B)V

    sput-object v0, Lcom/google/android/gms/internal/fido/zzgx;->zzb:Lcom/google/android/gms/internal/fido/zzgx;

    .line 2
    sget v0, Lcom/google/android/gms/internal/fido/zzgn;->$r8$clinit:I

    new-instance v0, Lcom/google/android/gms/internal/fido/zzgw;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/fido/zzgw;-><init>(Lcom/google/android/gms/internal/fido/zzgv;)V

    sput-object v0, Lcom/google/android/gms/internal/fido/zzgx;->zzd:Lcom/google/android/gms/internal/fido/zzgw;

    new-instance v0, Lcom/google/android/gms/internal/fido/zzgp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/fido/zzgp;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/fido/zzgx;->zza:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/fido/zzgx;->zzc:I

    return-void
.end method

.method static zzj(III)I
    .locals 3

    or-int v0, p0, p1

    sub-int v1, p1, p0

    or-int/2addr v0, v1

    sub-int v2, p2, p1

    or-int/2addr v0, v2

    if-gez v0, :cond_2

    if-ltz p0, :cond_1

    if-ge p1, p0, :cond_0

    .line 3
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Beginning index larger than ending index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1
    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "End index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " >= "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Beginning index: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " < 0"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return v1
.end method

.method public static zzl([BII)Lcom/google/android/gms/internal/fido/zzgx;
    .locals 2

    .line 1
    array-length p1, p0

    const/4 v0, 0x0

    invoke-static {v0, p2, p1}, Lcom/google/android/gms/internal/fido/zzgx;->zzj(III)I

    new-instance p1, Lcom/google/android/gms/internal/fido/zzgu;

    new-array v1, p2, [B

    .line 2
    invoke-static {p0, v0, v1, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3
    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/fido/zzgu;-><init>([B)V

    return-object p1
.end method


# virtual methods
.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/fido/zzgx;->zzc:I

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fido/zzgx;->zzd()I

    move-result v1

    invoke-virtual {p0, v1, v0, v1}, Lcom/google/android/gms/internal/fido/zzgx;->zzf(III)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput v0, p0, Lcom/google/android/gms/internal/fido/zzgx;->zzc:I

    :cond_1
    return v0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/fido/zzgo;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/fido/zzgo;-><init>(Lcom/google/android/gms/internal/fido/zzgx;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .line 1
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fido/zzgx;->zzd()I

    move-result v2

    .line 2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fido/zzgx;->zzd()I

    move-result v3

    const/16 v4, 0x32

    const/4 v5, 0x0

    if-gt v3, v4, :cond_0

    .line 3
    invoke-static {p0}, Lcom/google/android/gms/internal/fido/zzhe;->zza(Lcom/google/android/gms/internal/fido/zzgx;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/16 v3, 0x2f

    invoke-virtual {p0, v5, v3}, Lcom/google/android/gms/internal/fido/zzgx;->zzg(II)Lcom/google/android/gms/internal/fido/zzgx;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/fido/zzhe;->zza(Lcom/google/android/gms/internal/fido/zzgx;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "..."

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v2, v4, v1

    const/4 v1, 0x2

    aput-object v3, v4, v1

    const-string v1, "<ByteString@%s size=%d contents=\"%s\">"

    .line 4
    invoke-static {v0, v1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract zza(I)B
.end method

.method abstract zzb(I)B
.end method

.method public abstract zzd()I
.end method

.method protected abstract zze([BIII)V
.end method

.method protected abstract zzf(III)I
.end method

.method public abstract zzg(II)Lcom/google/android/gms/internal/fido/zzgx;
.end method

.method public abstract zzh()Ljava/io/InputStream;
.end method

.method public abstract zzi()Ljava/nio/ByteBuffer;
.end method

.method protected final zzk()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/fido/zzgx;->zzc:I

    return v0
.end method

.method public final zzm()[B
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fido/zzgx;->zzd()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/fido/zzhc;->zzd:[B

    return-object v0

    .line 2
    :cond_0
    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 3
    invoke-virtual {p0, v1, v2, v2, v0}, Lcom/google/android/gms/internal/fido/zzgx;->zze([BIII)V

    return-object v1
.end method
