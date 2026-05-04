.class public abstract Lcom/google/android/gms/internal/measurement/zzlm;
.super Lcom/google/android/gms/internal/measurement/zzkz;
.source "SourceFile"


# static fields
.field public static final synthetic $r8$clinit:I

.field private static final zzc:Ljava/util/logging/Logger;

.field private static final zzd:Z


# instance fields
.field zza:Lcom/google/android/gms/internal/measurement/zzln;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/google/android/gms/internal/measurement/zzlm;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzlm;->zzc:Ljava/util/logging/Logger;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzop;->zza()Z

    move-result v0

    sput-boolean v0, Lcom/google/android/gms/internal/measurement/zzlm;->zzd:Z

    return-void
.end method

.method synthetic constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzkz;-><init>()V

    return-void
.end method

.method public static zzA(J)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result p0

    mul-int/lit8 p0, p0, 0x9

    rsub-int p0, p0, 0x280

    ushr-int/lit8 p0, p0, 0x6

    return p0
.end method

.method public static zzB(Ljava/lang/String;)I
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzos;->zzb(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Lcom/google/android/gms/internal/measurement/zzor; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2
    :catch_0
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzmp;->zza:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    .line 3
    array-length p0, p0

    .line 4
    :goto_0
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzlm;->zzz(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static zzC(Lcom/google/android/gms/internal/measurement/zznm;)I
    .locals 1

    .line 1
    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zznm;->zzcn()I

    move-result p0

    .line 2
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzlm;->zzz(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method static zzD(Lcom/google/android/gms/internal/measurement/zznm;Lcom/google/android/gms/internal/measurement/zznx;)I
    .locals 0

    .line 1
    check-cast p0, Lcom/google/android/gms/internal/measurement/zzks;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzks;->zzcd(Lcom/google/android/gms/internal/measurement/zznx;)I

    move-result p0

    .line 2
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzlm;->zzz(I)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method static zzG(ILcom/google/android/gms/internal/measurement/zznm;Lcom/google/android/gms/internal/measurement/zznx;)I
    .locals 0

    shl-int/lit8 p0, p0, 0x3

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzlm;->zzz(I)I

    move-result p0

    add-int/2addr p0, p0

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzks;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/zzks;->zzcd(Lcom/google/android/gms/internal/measurement/zznx;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method static synthetic zzH()Z
    .locals 1

    sget-boolean v0, Lcom/google/android/gms/internal/measurement/zzlm;->zzd:Z

    return v0
.end method

.method public static zzz(I)I
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p0

    mul-int/lit8 p0, p0, 0x9

    rsub-int p0, p0, 0x160

    ushr-int/lit8 p0, p0, 0x6

    return p0
.end method


# virtual methods
.method public final zzE()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzlm;->zzy()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Did not write as much data as expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final zzF(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzor;)V
    .locals 6

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzlm;->zzc:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "inefficientWriteStringNoTag"

    const-string v4, "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!"

    const-string v2, "com.google.protobuf.CodedOutputStream"

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    sget-object p2, Lcom/google/android/gms/internal/measurement/zzmp;->zza:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 3
    :try_start_0
    array-length p2, p1

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zzlm;->zzr(I)V

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/internal/measurement/zzlm;->zzw([BII)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 3
    new-instance p2, Lcom/google/android/gms/internal/measurement/zzll;

    .line 5
    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/measurement/zzll;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public abstract zza(II)V
.end method

.method public abstract zzb(II)V
.end method

.method public abstract zzc(II)V
.end method

.method public abstract zzd(II)V
.end method

.method public abstract zze(IJ)V
.end method

.method public abstract zzf(IJ)V
.end method

.method public abstract zzg(IZ)V
.end method

.method public abstract zzh(ILjava/lang/String;)V
.end method

.method public abstract zzi(ILcom/google/android/gms/internal/measurement/zzlh;)V
.end method

.method public abstract zzj(Lcom/google/android/gms/internal/measurement/zzlh;)V
.end method

.method abstract zzk([BII)V
.end method

.method abstract zzl(ILcom/google/android/gms/internal/measurement/zznm;Lcom/google/android/gms/internal/measurement/zznx;)V
.end method

.method public abstract zzo(Lcom/google/android/gms/internal/measurement/zznm;)V
.end method

.method public abstract zzp(B)V
.end method

.method public abstract zzq(I)V
.end method

.method public abstract zzr(I)V
.end method

.method public abstract zzs(I)V
.end method

.method public abstract zzt(J)V
.end method

.method public abstract zzu(J)V
.end method

.method public abstract zzw([BII)V
.end method

.method public abstract zzx(Ljava/lang/String;)V
.end method

.method public abstract zzy()I
.end method
