.class public final Lcom/google/android/gms/internal/cast/zzl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static zza:J

.field private static final zzk:Lcom/google/android/gms/cast/internal/Logger;


# instance fields
.field public zzb:Ljava/lang/String;

.field public zzc:Ljava/lang/String;

.field public zzd:J

.field public zze:I

.field public zzf:Ljava/lang/String;

.field public zzg:I

.field public zzh:Ljava/lang/String;

.field public zzi:Z

.field public zzj:I

.field private final zzl:Lcom/google/android/gms/internal/cast/zzaf;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/cast/internal/Logger;

    const-string v1, "ApplicationAnalyticsSession"

    invoke-direct {v0, v1}, Lcom/google/android/gms/cast/internal/Logger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/cast/zzl;->zzk:Lcom/google/android/gms/cast/internal/Logger;

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/gms/internal/cast/zzl;->zza:J

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/cast/zzaf;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-wide v0, Lcom/google/android/gms/internal/cast/zzl;->zza:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/cast/zzl;->zzd:J

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/cast/zzl;->zze:I

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzl;->zzl:Lcom/google/android/gms/internal/cast/zzaf;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/cast/zzaf;)Lcom/google/android/gms/internal/cast/zzl;
    .locals 5

    new-instance v0, Lcom/google/android/gms/internal/cast/zzl;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/cast/zzl;-><init>(Lcom/google/android/gms/internal/cast/zzaf;)V

    sget-wide v1, Lcom/google/android/gms/internal/cast/zzl;->zza:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    sput-wide v1, Lcom/google/android/gms/internal/cast/zzl;->zza:J

    return-object v0
.end method

.method public static zzb(Landroid/content/SharedPreferences;Lcom/google/android/gms/internal/cast/zzaf;)Lcom/google/android/gms/internal/cast/zzl;
    .locals 5

    if-nez p0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/cast/zzl;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/cast/zzl;-><init>(Lcom/google/android/gms/internal/cast/zzaf;)V

    const-string p1, "is_output_switcher_enabled"

    const/4 v1, 0x0

    invoke-interface {p0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, v0, Lcom/google/android/gms/internal/cast/zzl;->zzi:Z

    .line 2
    const-string p1, "application_id"

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3
    const-string v2, ""

    invoke-interface {p0, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/google/android/gms/internal/cast/zzl;->zzb:Ljava/lang/String;

    .line 4
    const-string p1, "receiver_metrics_id"

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5
    invoke-interface {p0, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/google/android/gms/internal/cast/zzl;->zzc:Ljava/lang/String;

    .line 6
    const-string p1, "analytics_session_id"

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-wide/16 v3, 0x0

    .line 7
    invoke-interface {p0, p1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/google/android/gms/internal/cast/zzl;->zzd:J

    .line 8
    const-string p1, "event_sequence_number"

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 9
    invoke-interface {p0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, v0, Lcom/google/android/gms/internal/cast/zzl;->zze:I

    .line 10
    const-string p1, "receiver_session_id"

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 11
    invoke-interface {p0, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/google/android/gms/internal/cast/zzl;->zzf:Ljava/lang/String;

    const-string p1, "device_capabilities"

    .line 12
    invoke-interface {p0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, v0, Lcom/google/android/gms/internal/cast/zzl;->zzg:I

    const-string p1, "device_model_name"

    .line 13
    invoke-interface {p0, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/google/android/gms/internal/cast/zzl;->zzh:Ljava/lang/String;

    const-string p1, "analytics_session_start_type"

    .line 14
    invoke-interface {p0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    iput p0, v0, Lcom/google/android/gms/internal/cast/zzl;->zzj:I

    return-object v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final zzc(Landroid/content/SharedPreferences;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/cast/zzl;->zzk:Lcom/google/android/gms/cast/internal/Logger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "Save the ApplicationAnalyticsSession to SharedPreferences %s"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzl;->zzb:Ljava/lang/String;

    const-string v1, "application_id"

    .line 3
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzl;->zzc:Ljava/lang/String;

    const-string v1, "receiver_metrics_id"

    .line 4
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-wide v0, p0, Lcom/google/android/gms/internal/cast/zzl;->zzd:J

    const-string v2, "analytics_session_id"

    .line 5
    invoke-interface {p1, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    iget v0, p0, Lcom/google/android/gms/internal/cast/zzl;->zze:I

    const-string v1, "event_sequence_number"

    .line 6
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzl;->zzf:Ljava/lang/String;

    const-string v1, "receiver_session_id"

    .line 7
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget v0, p0, Lcom/google/android/gms/internal/cast/zzl;->zzg:I

    const-string v1, "device_capabilities"

    .line 8
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzl;->zzh:Ljava/lang/String;

    const-string v1, "device_model_name"

    .line 9
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget v0, p0, Lcom/google/android/gms/internal/cast/zzl;->zzj:I

    const-string v1, "analytics_session_start_type"

    .line 10
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/cast/zzl;->zzi:Z

    const-string v1, "is_output_switcher_enabled"

    .line 11
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 12
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final zzd()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzl;->zzl:Lcom/google/android/gms/internal/cast/zzaf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zzaf;->zze()Z

    move-result v0

    return v0
.end method
