.class public final Lcom/google/android/gms/internal/measurement/zzqr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzqq;


# static fields
.field public static final zza:Lcom/google/android/gms/internal/measurement/zzkm;

.field public static final zzb:Lcom/google/android/gms/internal/measurement/zzkm;

.field public static final zzc:Lcom/google/android/gms/internal/measurement/zzkm;

.field public static final zzd:Lcom/google/android/gms/internal/measurement/zzkm;

.field public static final zze:Lcom/google/android/gms/internal/measurement/zzkm;

.field public static final zzf:Lcom/google/android/gms/internal/measurement/zzkm;

.field public static final zzg:Lcom/google/android/gms/internal/measurement/zzkm;

.field public static final zzh:Lcom/google/android/gms/internal/measurement/zzkm;


# direct methods
.method static constructor <clinit>()V
    .locals 5

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

    .line 3
    const-string v1, "measurement.rb.attribution.ad_campaign_info"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzkg;->zzd(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzkm;

    const-string v1, "measurement.rb.attribution.service.bundle_on_backgrounded"

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzkg;->zzd(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzkm;

    const-string v1, "measurement.rb.attribution.client2"

    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzkg;->zzd(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzkm;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzqr;->zza:Lcom/google/android/gms/internal/measurement/zzkm;

    .line 6
    const-string v1, "measurement.rb.attribution.followup1.service"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/measurement/zzkg;->zzd(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzkm;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzqr;->zzb:Lcom/google/android/gms/internal/measurement/zzkm;

    const-string v1, "measurement.rb.attribution.client.get_trigger_uris_async"

    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzkg;->zzd(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzkm;

    const-string v1, "measurement.rb.attribution.service.trigger_uris_high_priority"

    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzkg;->zzd(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzkm;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzqr;->zzc:Lcom/google/android/gms/internal/measurement/zzkm;

    const-string v1, "measurement.rb.attribution.index_out_of_bounds_fix"

    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzkg;->zzd(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzkm;

    const-string v1, "measurement.rb.attribution.service.enable_max_trigger_uris_queried_at_once"

    .line 10
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzkg;->zzd(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzkm;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzqr;->zzd:Lcom/google/android/gms/internal/measurement/zzkm;

    const-string v1, "measurement.rb.attribution.retry_disposition"

    .line 11
    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/measurement/zzkg;->zzd(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzkm;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzqr;->zze:Lcom/google/android/gms/internal/measurement/zzkm;

    const-string v1, "measurement.rb.attribution.service"

    .line 12
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzkg;->zzd(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzkm;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzqr;->zzf:Lcom/google/android/gms/internal/measurement/zzkm;

    const-string v1, "measurement.rb.attribution.enable_trigger_redaction"

    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzkg;->zzd(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzkm;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzqr;->zzg:Lcom/google/android/gms/internal/measurement/zzkm;

    const-string v1, "measurement.rb.attribution.uuid_generation"

    .line 14
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzkg;->zzd(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzkm;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzqr;->zzh:Lcom/google/android/gms/internal/measurement/zzkm;

    const-string v1, "measurement.id.rb.attribution.retry_disposition"

    const-wide/16 v3, 0x0

    .line 15
    invoke-virtual {v0, v1, v3, v4}, Lcom/google/android/gms/internal/measurement/zzkg;->zzc(Ljava/lang/String;J)Lcom/google/android/gms/internal/measurement/zzkm;

    const-string v1, "measurement.rb.attribution.improved_retry"

    .line 16
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzkg;->zzd(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzkm;

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

    const/4 v0, 0x1

    return v0
.end method

.method public final zzb()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzqr;->zza:Lcom/google/android/gms/internal/measurement/zzkm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkm;->zzd()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final zzc()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzqr;->zzb:Lcom/google/android/gms/internal/measurement/zzkm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkm;->zzd()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final zzd()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzqr;->zzc:Lcom/google/android/gms/internal/measurement/zzkm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkm;->zzd()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final zze()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzqr;->zzd:Lcom/google/android/gms/internal/measurement/zzkm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkm;->zzd()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final zzf()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzqr;->zze:Lcom/google/android/gms/internal/measurement/zzkm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkm;->zzd()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final zzg()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzqr;->zzf:Lcom/google/android/gms/internal/measurement/zzkm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkm;->zzd()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final zzh()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzqr;->zzg:Lcom/google/android/gms/internal/measurement/zzkm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkm;->zzd()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final zzi()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzqr;->zzh:Lcom/google/android/gms/internal/measurement/zzkm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkm;->zzd()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
