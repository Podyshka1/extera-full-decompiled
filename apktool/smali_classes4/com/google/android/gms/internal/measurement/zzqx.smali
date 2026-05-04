.class public final Lcom/google/android/gms/internal/measurement/zzqx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzqw;


# static fields
.field public static final zza:Lcom/google/android/gms/internal/measurement/zzkm;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzkg;

    const-string v1, "com.google.android.gms.measurement"

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzkb;->zza(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzkg;-><init>(Landroid/net/Uri;)V

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkg;->zza()Lcom/google/android/gms/internal/measurement/zzkg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkg;->zzb()Lcom/google/android/gms/internal/measurement/zzkg;

    move-result-object v0

    const-string v1, "measurement.remove_conflicting_first_party_apis.dev"

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzkg;->zzd(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzkm;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzqx;->zza:Lcom/google/android/gms/internal/measurement/zzkm;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzqx;->zza:Lcom/google/android/gms/internal/measurement/zzkm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkm;->zzd()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
