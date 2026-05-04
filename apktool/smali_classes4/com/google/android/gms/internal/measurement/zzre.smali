.class public final Lcom/google/android/gms/internal/measurement/zzre;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/Supplier;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/measurement/zzre;


# instance fields
.field private final zzb:Lcom/google/common/base/Supplier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzre;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzre;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzre;->zza:Lcom/google/android/gms/internal/measurement/zzre;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzrg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzrg;-><init>()V

    invoke-static {v0}, Lcom/google/common/base/Suppliers;->ofInstance(Ljava/lang/Object;)Lcom/google/common/base/Supplier;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzre;->zzb:Lcom/google/common/base/Supplier;

    return-void
.end method

.method public static zza()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzre;->zza:Lcom/google/android/gms/internal/measurement/zzre;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzre;->zzb()Lcom/google/android/gms/internal/measurement/zzrf;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzrf;->zza()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzre;->zzb()Lcom/google/android/gms/internal/measurement/zzrf;

    move-result-object v0

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/measurement/zzrf;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzre;->zzb:Lcom/google/common/base/Supplier;

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzrf;

    return-object v0
.end method
