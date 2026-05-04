.class public final Lcom/google/android/gms/internal/measurement/zzqo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzqn;


# static fields
.field public static final zza:Lcom/google/android/gms/internal/measurement/zzkm;

.field public static final zzb:Lcom/google/android/gms/internal/measurement/zzkm;

.field public static final zzc:Lcom/google/android/gms/internal/measurement/zzkm;

.field public static final zzd:Lcom/google/android/gms/internal/measurement/zzkm;

.field public static final zze:Lcom/google/android/gms/internal/measurement/zzkm;

.field public static final zzf:Lcom/google/android/gms/internal/measurement/zzkm;


# direct methods
.method static constructor <clinit>()V
    .locals 6

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

    const-string v1, "measurement.test.boolean_flag"

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzkg;->zzd(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzkm;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzqo;->zza:Lcom/google/android/gms/internal/measurement/zzkm;

    .line 4
    const-string v1, "measurement.test.cached_long_flag"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzkg;->zzc(Ljava/lang/String;J)Lcom/google/android/gms/internal/measurement/zzkm;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzqo;->zzb:Lcom/google/android/gms/internal/measurement/zzkm;

    const-string v1, "measurement.test.double_flag"

    const-wide/high16 v4, -0x3ff8000000000000L    # -3.0

    .line 5
    invoke-virtual {v0, v1, v4, v5}, Lcom/google/android/gms/internal/measurement/zzkg;->zze(Ljava/lang/String;D)Lcom/google/android/gms/internal/measurement/zzkm;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzqo;->zzc:Lcom/google/android/gms/internal/measurement/zzkm;

    const-string v1, "measurement.test.int_flag"

    const-wide/16 v4, -0x2

    .line 6
    invoke-virtual {v0, v1, v4, v5}, Lcom/google/android/gms/internal/measurement/zzkg;->zzc(Ljava/lang/String;J)Lcom/google/android/gms/internal/measurement/zzkm;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzqo;->zzd:Lcom/google/android/gms/internal/measurement/zzkm;

    const-string v1, "measurement.test.long_flag"

    .line 7
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzkg;->zzc(Ljava/lang/String;J)Lcom/google/android/gms/internal/measurement/zzkm;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzqo;->zze:Lcom/google/android/gms/internal/measurement/zzkm;

    const-string v1, "measurement.test.string_flag"

    const-string v2, "---"

    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzkg;->zzf(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzkm;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzqo;->zzf:Lcom/google/android/gms/internal/measurement/zzkm;

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
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzqo;->zza:Lcom/google/android/gms/internal/measurement/zzkm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkm;->zzd()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final zzb()J
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzqo;->zzb:Lcom/google/android/gms/internal/measurement/zzkm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkm;->zzd()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzc()D
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzqo;->zzc:Lcom/google/android/gms/internal/measurement/zzkm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkm;->zzd()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public final zzd()J
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzqo;->zzd:Lcom/google/android/gms/internal/measurement/zzkm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkm;->zzd()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zze()J
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzqo;->zze:Lcom/google/android/gms/internal/measurement/zzkm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkm;->zzd()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzf()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzqo;->zzf:Lcom/google/android/gms/internal/measurement/zzkm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkm;->zzd()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
