.class public final Lcom/google/android/gms/internal/measurement/zzrb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/Supplier;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/measurement/zzrb;


# instance fields
.field private final zzb:Lcom/google/common/base/Supplier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzrb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzrb;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzrb;->zza:Lcom/google/android/gms/internal/measurement/zzrb;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzrd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzrd;-><init>()V

    invoke-static {v0}, Lcom/google/common/base/Suppliers;->ofInstance(Ljava/lang/Object;)Lcom/google/common/base/Supplier;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzrb;->zzb:Lcom/google/common/base/Supplier;

    return-void
.end method

.method public static zza()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzrb;->zza:Lcom/google/android/gms/internal/measurement/zzrb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzrb;->zzc()Lcom/google/android/gms/internal/measurement/zzrc;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzrc;->zza()Z

    const/4 v0, 0x1

    return v0
.end method

.method public static zzb()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzrb;->zza:Lcom/google/android/gms/internal/measurement/zzrb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzrb;->zzc()Lcom/google/android/gms/internal/measurement/zzrc;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzrc;->zzb()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzrb;->zzc()Lcom/google/android/gms/internal/measurement/zzrc;

    move-result-object v0

    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/measurement/zzrc;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzrb;->zzb:Lcom/google/common/base/Supplier;

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzrc;

    return-object v0
.end method
