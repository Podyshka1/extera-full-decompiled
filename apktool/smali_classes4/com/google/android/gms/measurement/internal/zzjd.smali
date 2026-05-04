.class public final Lcom/google/android/gms/measurement/internal/zzjd;
.super Lcom/google/android/gms/measurement/internal/zzga;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/measurement/internal/zzpg;

.field private zzb:Ljava/lang/Boolean;

.field private zzc:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzpg;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzga;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjd;->zza:Lcom/google/android/gms/measurement/internal/zzpg;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjd;->zzc:Ljava/lang/String;

    return-void
.end method

.method private final zzM(Lcom/google/android/gms/measurement/internal/zzbg;Lcom/google/android/gms/measurement/internal/zzr;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjd;->zza:Lcom/google/android/gms/measurement/internal/zzpg;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzZ()V

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzpg;->zzF(Lcom/google/android/gms/measurement/internal/zzbg;Lcom/google/android/gms/measurement/internal/zzr;)V

    return-void
.end method

.method private final zzN(Lcom/google/android/gms/measurement/internal/zzr;Z)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object p2, p1, Lcom/google/android/gms/measurement/internal/zzr;->zza:Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/measurement/internal/zzjd;->zzO(Ljava/lang/String;Z)V

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzjd;->zza:Lcom/google/android/gms/measurement/internal/zzpg;

    .line 4
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzpg;->zzt()Lcom/google/android/gms/measurement/internal/zzpp;

    move-result-object p2

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzr;->zzb:Ljava/lang/String;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/measurement/internal/zzpp;->zzA(Ljava/lang/String;)Z

    return-void
.end method

.method private final zzO(Ljava/lang/String;Z)V
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_3

    :try_start_0
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzjd;->zzb:Ljava/lang/Boolean;

    if-nez p2, :cond_2

    const-string p2, "com.google.android.gms"

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzjd;->zzc:Ljava/lang/String;

    .line 2
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzjd;->zza:Lcom/google/android/gms/measurement/internal/zzpg;

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaY()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 4
    invoke-static {v2, v3}, Lcom/google/android/gms/common/util/UidVerifier;->isGooglePlayServicesUid(Landroid/content/Context;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaY()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/common/GoogleSignatureVerifier;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/common/GoogleSignatureVerifier;

    move-result-object p2

    .line 6
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/google/android/gms/common/GoogleSignatureVerifier;->isUidGoogleSigned(I)Z

    move-result p2

    if-eqz p2, :cond_1

    :cond_0
    move p2, v1

    goto :goto_0

    :cond_1
    move p2, v0

    goto :goto_0

    :catch_0
    move-exception p2

    goto :goto_1

    .line 2
    :goto_0
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzjd;->zzb:Ljava/lang/Boolean;

    :cond_2
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzjd;->zzb:Ljava/lang/Boolean;

    .line 7
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_5

    :cond_3
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzjd;->zzc:Ljava/lang/String;

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzjd;->zza:Lcom/google/android/gms/measurement/internal/zzpg;

    .line 8
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaY()Landroid/content/Context;

    move-result-object p2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 9
    invoke-static {p2, v2, p1}, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->uidHasPackageName(Landroid/content/Context;ILjava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjd;->zzc:Ljava/lang/String;

    :cond_4
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzjd;->zzc:Ljava/lang/String;

    .line 10
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    :cond_5
    return-void

    :cond_6
    new-instance p2, Ljava/lang/SecurityException;

    const-string v2, "Unknown calling package name \'%s\'."

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    .line 11
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjd;->zza:Lcom/google/android/gms/measurement/internal/zzpg;

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzgu;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "Measurement Service called with invalid calling package. appId"

    .line 14
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 15
    throw p2

    .line 11
    :cond_7
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjd;->zza:Lcom/google/android/gms/measurement/internal/zzpg;

    .line 16
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object p1

    const-string p2, "Measurement Service called without app package"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/SecurityException;

    .line 17
    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final zzA(Lcom/google/android/gms/measurement/internal/zzr;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzjd;->zzN(Lcom/google/android/gms/measurement/internal/zzr;Z)V

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzif;

    .line 2
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/zzif;-><init>(Lcom/google/android/gms/measurement/internal/zzjd;Lcom/google/android/gms/measurement/internal/zzr;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/zzjd;->zzd(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzB(Lcom/google/android/gms/measurement/internal/zzr;Lcom/google/android/gms/measurement/internal/zzoo;Lcom/google/android/gms/measurement/internal/zzgh;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzjd;->zzN(Lcom/google/android/gms/measurement/internal/zzr;Z)V

    .line 2
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzr;->zza:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjd;->zza:Lcom/google/android/gms/measurement/internal/zzpg;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaW()Lcom/google/android/gms/measurement/internal/zzhz;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zziz;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zziz;-><init>(Lcom/google/android/gms/measurement/internal/zzjd;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzoo;Lcom/google/android/gms/measurement/internal/zzgh;)V

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzhz;->zzj(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzC(Lcom/google/android/gms/measurement/internal/zzr;Lcom/google/android/gms/measurement/internal/zzaf;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzjd;->zzN(Lcom/google/android/gms/measurement/internal/zzr;Z)V

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzja;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzja;-><init>(Lcom/google/android/gms/measurement/internal/zzjd;Lcom/google/android/gms/measurement/internal/zzr;Lcom/google/android/gms/measurement/internal/zzaf;)V

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/zzjd;->zzd(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzD(Lcom/google/android/gms/measurement/internal/zzr;Landroid/os/Bundle;Lcom/google/android/gms/measurement/internal/zzge;)V
    .locals 7

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzjd;->zzN(Lcom/google/android/gms/measurement/internal/zzr;Z)V

    .line 2
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzr;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjd;->zza:Lcom/google/android/gms/measurement/internal/zzpg;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaW()Lcom/google/android/gms/measurement/internal/zzhz;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zziy;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zziy;-><init>(Lcom/google/android/gms/measurement/internal/zzjd;Lcom/google/android/gms/measurement/internal/zzr;Landroid/os/Bundle;Lcom/google/android/gms/measurement/internal/zzge;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzhz;->zzj(Ljava/lang/Runnable;)V

    return-void
.end method

.method final zzE(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjd;->zza:Lcom/google/android/gms/measurement/internal/zzpg;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaW()Lcom/google/android/gms/measurement/internal/zzhz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhz;->zze()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaW()Lcom/google/android/gms/measurement/internal/zzhz;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzhz;->zzl(Ljava/lang/Runnable;)V

    return-void
.end method

.method final synthetic zzF(Lcom/google/android/gms/measurement/internal/zzr;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjd;->zza:Lcom/google/android/gms/measurement/internal/zzpg;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzZ()V

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzv(Lcom/google/android/gms/measurement/internal/zzr;)V

    return-void
.end method

.method final synthetic zzG(Lcom/google/android/gms/measurement/internal/zzr;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjd;->zza:Lcom/google/android/gms/measurement/internal/zzpg;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzZ()V

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzw(Lcom/google/android/gms/measurement/internal/zzr;)V

    return-void
.end method

.method final synthetic zzH(Lcom/google/android/gms/measurement/internal/zzr;Landroid/os/Bundle;Lcom/google/android/gms/measurement/internal/zzge;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjd;->zza:Lcom/google/android/gms/measurement/internal/zzpg;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzZ()V

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaq(Lcom/google/android/gms/measurement/internal/zzr;Landroid/os/Bundle;)Ljava/util/List;

    move-result-object p1

    .line 3
    :try_start_0
    invoke-interface {p3, p1}, Lcom/google/android/gms/measurement/internal/zzge;->zze(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzjd;->zza:Lcom/google/android/gms/measurement/internal/zzpg;

    .line 4
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object p2

    .line 5
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object p2

    const-string p3, "Failed to return trigger URIs for app"

    .line 6
    invoke-virtual {p2, p3, p4, p1}, Lcom/google/android/gms/measurement/internal/zzgs;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method final synthetic zzI(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzoo;Lcom/google/android/gms/measurement/internal/zzgh;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjd;->zza:Lcom/google/android/gms/measurement/internal/zzpg;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzZ()V

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaW()Lcom/google/android/gms/measurement/internal/zzhz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzje;->zzg()V

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzu()V

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzfy;->zzA:Lcom/google/android/gms/measurement/internal/zzfx;

    const/4 v3, 0x0

    .line 5
    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzfx;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 6
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, p1, p2, v2}, Lcom/google/android/gms/measurement/internal/zzav;->zzC(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzoo;I)Ljava/util/List;

    move-result-object p2

    new-instance v1, Ljava/util/ArrayList;

    .line 7
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/measurement/internal/zzpj;

    .line 9
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzpj;->zze()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, p1, v4}, Lcom/google/android/gms/measurement/internal/zzpg;->zzO(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 37
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v4

    .line 38
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgu;->zzk()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v4

    .line 39
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzpj;->zzc()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 40
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzpj;->zze()Ljava/lang/String;

    move-result-object v2

    const-string v6, "[sgtm] batch skipped due to destination in backoff. appId, rowId, url"

    .line 41
    invoke-virtual {v4, v6, p1, v5, v2}, Lcom/google/android/gms/measurement/internal/zzgs;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzpj;->zzi()I

    move-result v4

    if-gtz v4, :cond_1

    goto :goto_1

    .line 36
    :cond_1
    sget-object v5, Lcom/google/android/gms/measurement/internal/zzfy;->zzy:Lcom/google/android/gms/measurement/internal/zzfx;

    .line 11
    invoke-virtual {v5, v3}, Lcom/google/android/gms/measurement/internal/zzfx;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 12
    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-le v4, v5, :cond_2

    goto/16 :goto_3

    .line 23
    :cond_2
    sget-object v5, Lcom/google/android/gms/measurement/internal/zzfy;->zzw:Lcom/google/android/gms/measurement/internal/zzfx;

    .line 13
    invoke-virtual {v5, v3}, Lcom/google/android/gms/measurement/internal/zzfx;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 14
    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    add-int/lit8 v4, v4, -0x1

    const-wide/16 v7, 0x1

    shl-long/2addr v7, v4

    mul-long/2addr v5, v7

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzfy;->zzx:Lcom/google/android/gms/measurement/internal/zzfx;

    .line 15
    invoke-virtual {v4, v3}, Lcom/google/android/gms/measurement/internal/zzfx;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 16
    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 17
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaZ()Lcom/google/android/gms/common/util/Clock;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzpj;->zzh()J

    move-result-wide v8

    add-long/2addr v8, v4

    cmp-long v4, v6, v8

    if-ltz v4, :cond_5

    .line 24
    :goto_1
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzpj;->zzb()Lcom/google/android/gms/measurement/internal/zzom;

    move-result-object v2

    .line 25
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzib;->zzh()Lcom/google/android/gms/internal/measurement/zzhz;

    move-result-object v4

    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/zzom;->zzb:[B

    .line 26
    invoke-static {v4, v5}, Lcom/google/android/gms/measurement/internal/zzpk;->zzw(Lcom/google/android/gms/internal/measurement/zznl;[B)Lcom/google/android/gms/internal/measurement/zznl;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzhz;

    const/4 v5, 0x0

    .line 27
    :goto_2
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzhz;->zzb()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 28
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/measurement/zzhz;->zzc(I)Lcom/google/android/gms/internal/measurement/zzid;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzmf;->zzcl()Lcom/google/android/gms/internal/measurement/zzmb;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/measurement/zzic;

    .line 29
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaZ()Lcom/google/android/gms/common/util/Clock;

    move-result-object v7

    invoke-interface {v7}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/google/android/gms/internal/measurement/zzic;->zzs(J)Lcom/google/android/gms/internal/measurement/zzic;

    .line 30
    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/measurement/zzhz;->zzd(ILcom/google/android/gms/internal/measurement/zzic;)Lcom/google/android/gms/internal/measurement/zzhz;

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 31
    :cond_3
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzmb;->zzbc()Lcom/google/android/gms/internal/measurement/zzmf;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzks;->zzcc()[B

    move-result-object v5

    iput-object v5, v2, Lcom/google/android/gms/measurement/internal/zzom;->zzb:[B

    .line 32
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v5

    .line 33
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzgu;->zzn()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 34
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzp()Lcom/google/android/gms/measurement/internal/zzpk;

    move-result-object v5

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzmb;->zzbc()Lcom/google/android/gms/internal/measurement/zzmf;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v5, v4}, Lcom/google/android/gms/measurement/internal/zzpk;->zzi(Lcom/google/android/gms/internal/measurement/zzib;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/google/android/gms/measurement/internal/zzom;->zzg:Ljava/lang/String;
    :try_end_0
    .catch Lcom/google/android/gms/internal/measurement/zzmr; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :cond_4
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 35
    :catch_0
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgu;->zze()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v2

    const-string v4, "Failed to parse queued batch. appId"

    invoke-virtual {v2, v4, p1}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 19
    :cond_5
    :goto_3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v4

    .line 20
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgu;->zzk()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v4

    .line 21
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzpj;->zzc()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 22
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzpj;->zzh()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v6, "[sgtm] batch skipped waiting for next retry. appId, rowId, lastUploadMillis"

    .line 23
    invoke-virtual {v4, v6, p1, v5, v2}, Lcom/google/android/gms/measurement/internal/zzgs;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 42
    :cond_6
    new-instance p2, Lcom/google/android/gms/measurement/internal/zzoq;

    invoke-direct {p2, v1}, Lcom/google/android/gms/measurement/internal/zzoq;-><init>(Ljava/util/List;)V

    .line 43
    :try_start_1
    invoke-interface {p3, p2}, Lcom/google/android/gms/measurement/internal/zzgh;->zze(Lcom/google/android/gms/measurement/internal/zzoq;)V

    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzjd;->zza:Lcom/google/android/gms/measurement/internal/zzpg;

    .line 44
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object p3

    .line 45
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzgu;->zzk()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object p3

    const-string v0, "[sgtm] Sending queued upload batches to client. appId, count"

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzoq;->zza:Ljava/util/List;

    .line 46
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 47
    invoke-virtual {p3, v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzgs;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p2

    .line 35
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzjd;->zza:Lcom/google/android/gms/measurement/internal/zzpg;

    .line 48
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object p3

    .line 49
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object p3

    const-string v0, "[sgtm] Failed to return upload batches for app"

    .line 50
    invoke-virtual {p3, v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzgs;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method final synthetic zzJ(Lcom/google/android/gms/measurement/internal/zzr;Lcom/google/android/gms/measurement/internal/zzaf;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjd;->zza:Lcom/google/android/gms/measurement/internal/zzpg;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzZ()V

    .line 2
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzr;->zza:Ljava/lang/String;

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzpg;->zzar(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzaf;)V

    return-void
.end method

.method final synthetic zzK(Landroid/os/Bundle;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzr;)V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjd;->zza:Lcom/google/android/gms/measurement/internal/zzpg;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzd()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzfy;->zzaV:Lcom/google/android/gms/measurement/internal/zzfx;

    const/4 v11, 0x0

    .line 2
    invoke-virtual {v1, v11, v2}, Lcom/google/android/gms/measurement/internal/zzal;->zzp(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfx;)Z

    move-result v1

    .line 3
    invoke-virtual {p1}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjd;->zza:Lcom/google/android/gms/measurement/internal/zzpg;

    .line 28
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v1

    .line 29
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzje;->zzg()V

    .line 30
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzos;->zzaw()V

    .line 31
    :try_start_0
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzav;->zze()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v2, "delete from default_event_params where app_id=?"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v3

    .line 32
    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 27
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 33
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v1

    .line 34
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v1

    const-string v2, "Error clearing default event params"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v12

    .line 5
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzje;->zzg()V

    .line 6
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzos;->zzaw()V

    iget-object v2, v12, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzbb;

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    .line 7
    const-string v3, ""

    const-string v5, "dep"

    move-object v10, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/measurement/internal/zzbb;-><init>(Lcom/google/android/gms/measurement/internal/zzic;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/os/Bundle;)V

    iget-object v0, v12, Lcom/google/android/gms/measurement/internal/zzol;->zzg:Lcom/google/android/gms/measurement/internal/zzpg;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzp()Lcom/google/android/gms/measurement/internal/zzpk;

    move-result-object v0

    .line 9
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzpk;->zzh(Lcom/google/android/gms/measurement/internal/zzbb;)Lcom/google/android/gms/internal/measurement/zzhs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzks;->zzcc()[B

    move-result-object v0

    iget-object v1, v12, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 10
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v2

    .line 11
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgu;->zzk()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v2

    array-length v3, v0

    .line 12
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v5, "Saving default event parameters, appId, data size"

    invoke-virtual {v2, v5, p2, v3}, Lcom/google/android/gms/measurement/internal/zzgs;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Landroid/content/ContentValues;

    .line 13
    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "app_id"

    .line 14
    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "parameters"

    .line 15
    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 16
    :try_start_1
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzav;->zze()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v3, "default_event_params"

    const/4 v5, 0x5

    .line 17
    invoke-virtual {v0, v3, v11, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v2

    const-wide/16 v5, -0x1

    cmp-long v0, v2, v5

    if-nez v0, :cond_1

    .line 18
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v0

    const-string v1, "Failed to insert default event parameters (got -1). appId"

    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzgu;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 20
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 34
    iget-object v1, v12, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 21
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v1

    .line 22
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v1

    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzgu;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Error storing default event parameters. appId"

    .line 23
    invoke-virtual {v1, v3, v2, v0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 20
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjd;->zza:Lcom/google/android/gms/measurement/internal/zzpg;

    .line 24
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v1

    move-object/from16 v2, p3

    iget-wide v2, v2, Lcom/google/android/gms/measurement/internal/zzr;->zzD:J

    .line 25
    invoke-virtual {v1, p2, v2, v3}, Lcom/google/android/gms/measurement/internal/zzav;->zzV(Ljava/lang/String;J)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 26
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v0

    .line 27
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p2, v1, v11, p1}, Lcom/google/android/gms/measurement/internal/zzav;->zzW(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_2
    return-void
.end method

.method final synthetic zzL()Lcom/google/android/gms/measurement/internal/zzpg;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjd;->zza:Lcom/google/android/gms/measurement/internal/zzpg;

    return-object v0
.end method

.method final zzb(Lcom/google/android/gms/measurement/internal/zzbg;Lcom/google/android/gms/measurement/internal/zzr;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjd;->zza:Lcom/google/android/gms/measurement/internal/zzpg;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzh()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v1

    iget-object v2, p2, Lcom/google/android/gms/measurement/internal/zzr;->zza:Ljava/lang/String;

    .line 2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 27
    :cond_0
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzht;->zzd:Landroidx/collection/LruCache;

    .line 3
    invoke-virtual {v1, v2}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzc;

    :goto_0
    if-eqz v1, :cond_5

    .line 4
    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzp()Lcom/google/android/gms/measurement/internal/zzpk;

    move-result-object v0

    .line 5
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzbg;->zzb:Lcom/google/android/gms/measurement/internal/zzbe;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzbe;->zzf()Landroid/os/Bundle;

    move-result-object v2

    const/4 v3, 0x1

    .line 6
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzpk;->zzz(Landroid/os/Bundle;Z)Ljava/util/Map;

    move-result-object v0

    .line 7
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzbg;->zza:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzjm;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    move-object v2, v3

    .line 8
    :cond_1
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzaa;

    iget-wide v4, p1, Lcom/google/android/gms/measurement/internal/zzbg;->zzd:J

    invoke-direct {v3, v2, v4, v5, v0}, Lcom/google/android/gms/internal/measurement/zzaa;-><init>(Ljava/lang/String;JLjava/util/Map;)V

    .line 4
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/measurement/zzc;->zzb(Lcom/google/android/gms/internal/measurement/zzaa;)Z

    move-result v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/measurement/zzd; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_2

    goto/16 :goto_3

    .line 14
    :cond_2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzc;->zzc()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjd;->zza:Lcom/google/android/gms/measurement/internal/zzpg;

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgu;->zzk()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v2

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzbg;->zza:Ljava/lang/String;

    const-string v3, "EES edited event"

    invoke-virtual {v2, v3, p1}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzp()Lcom/google/android/gms/measurement/internal/zzpk;

    move-result-object p1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzc;->zze()Lcom/google/android/gms/internal/measurement/zzab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzab;->zzc()Lcom/google/android/gms/internal/measurement/zzaa;

    move-result-object v0

    .line 17
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzpk;->zzA(Lcom/google/android/gms/internal/measurement/zzaa;)Lcom/google/android/gms/measurement/internal/zzbg;

    move-result-object p1

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzjd;->zzM(Lcom/google/android/gms/measurement/internal/zzbg;Lcom/google/android/gms/measurement/internal/zzr;)V

    goto :goto_1

    .line 19
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzjd;->zzM(Lcom/google/android/gms/measurement/internal/zzbg;Lcom/google/android/gms/measurement/internal/zzr;)V

    .line 20
    :goto_1
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzc;->zzd()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzc;->zze()Lcom/google/android/gms/internal/measurement/zzab;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzab;->zzf()Ljava/util/List;

    move-result-object p1

    .line 21
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzaa;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjd;->zza:Lcom/google/android/gms/measurement/internal/zzpg;

    .line 22
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v2

    .line 23
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgu;->zzk()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v2

    .line 24
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzaa;->zzb()Ljava/lang/String;

    move-result-object v3

    const-string v4, "EES logging created event"

    invoke-virtual {v2, v4, v3}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 25
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzp()Lcom/google/android/gms/measurement/internal/zzpk;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/measurement/internal/zzpk;->zzA(Lcom/google/android/gms/internal/measurement/zzaa;)Lcom/google/android/gms/measurement/internal/zzbg;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/measurement/internal/zzjd;->zzM(Lcom/google/android/gms/measurement/internal/zzbg;Lcom/google/android/gms/measurement/internal/zzr;)V

    goto :goto_2

    :cond_4
    return-void

    .line 3
    :catch_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjd;->zza:Lcom/google/android/gms/measurement/internal/zzpg;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v0

    iget-object v1, p2, Lcom/google/android/gms/measurement/internal/zzr;->zzb:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzbg;->zza:Ljava/lang/String;

    const-string v3, "EES error. appId, eventName"

    .line 11
    invoke-virtual {v0, v3, v1, v2}, Lcom/google/android/gms/measurement/internal/zzgs;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    :goto_3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjd;->zza:Lcom/google/android/gms/measurement/internal/zzpg;

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzk()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzbg;->zza:Ljava/lang/String;

    const-string v2, "EES was not applied to event"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzjd;->zzM(Lcom/google/android/gms/measurement/internal/zzbg;Lcom/google/android/gms/measurement/internal/zzr;)V

    return-void

    .line 19
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjd;->zza:Lcom/google/android/gms/measurement/internal/zzpg;

    .line 26
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzk()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v0

    iget-object v1, p2, Lcom/google/android/gms/measurement/internal/zzr;->zza:Ljava/lang/String;

    const-string v2, "EES not loaded for"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzjd;->zzM(Lcom/google/android/gms/measurement/internal/zzbg;Lcom/google/android/gms/measurement/internal/zzr;)V

    return-void
.end method

.method final zzc(Lcom/google/android/gms/measurement/internal/zzbg;Lcom/google/android/gms/measurement/internal/zzr;)Lcom/google/android/gms/measurement/internal/zzbg;
    .locals 6

    .line 1
    const-string p2, "_cmp"

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzbg;->zza:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzbg;->zzb:Lcom/google/android/gms/measurement/internal/zzbe;

    if-eqz v2, :cond_2

    .line 2
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzbe;->zze()I

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "_cis"

    .line 3
    invoke-virtual {v2, p2}, Lcom/google/android/gms/measurement/internal/zzbe;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "referrer broadcast"

    .line 4
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "referrer API"

    .line 5
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    :cond_1
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzjd;->zza:Lcom/google/android/gms/measurement/internal/zzpg;

    .line 6
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzgu;->zzi()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object p2

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzbg;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Event has been filtered "

    invoke-virtual {p2, v1, v0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzbg;

    .line 7
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzbg;->zzc:Ljava/lang/String;

    iget-wide v4, p1, Lcom/google/android/gms/measurement/internal/zzbg;->zzd:J

    const-string v1, "_cmpx"

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzbg;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzbe;Ljava/lang/String;J)V

    return-object v0

    :cond_2
    :goto_0
    return-object p1
.end method

.method final zzd(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjd;->zza:Lcom/google/android/gms/measurement/internal/zzpg;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaW()Lcom/google/android/gms/measurement/internal/zzhz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhz;->zze()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaW()Lcom/google/android/gms/measurement/internal/zzhz;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzhz;->zzj(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zze(Lcom/google/android/gms/measurement/internal/zzbg;Lcom/google/android/gms/measurement/internal/zzr;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/measurement/internal/zzjd;->zzN(Lcom/google/android/gms/measurement/internal/zzr;Z)V

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzir;

    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzir;-><init>(Lcom/google/android/gms/measurement/internal/zzjd;Lcom/google/android/gms/measurement/internal/zzbg;Lcom/google/android/gms/measurement/internal/zzr;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/zzjd;->zzd(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzf(Lcom/google/android/gms/measurement/internal/zzpl;Lcom/google/android/gms/measurement/internal/zzr;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/measurement/internal/zzjd;->zzN(Lcom/google/android/gms/measurement/internal/zzr;Z)V

    new-instance v0, Lcom/google/android/gms/measurement/internal/zziu;

    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zziu;-><init>(Lcom/google/android/gms/measurement/internal/zzjd;Lcom/google/android/gms/measurement/internal/zzpl;Lcom/google/android/gms/measurement/internal/zzr;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/zzjd;->zzd(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzg(Lcom/google/android/gms/measurement/internal/zzr;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzjd;->zzN(Lcom/google/android/gms/measurement/internal/zzr;Z)V

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzie;

    .line 2
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/zzie;-><init>(Lcom/google/android/gms/measurement/internal/zzjd;Lcom/google/android/gms/measurement/internal/zzr;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/zzjd;->zzd(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzh(Lcom/google/android/gms/measurement/internal/zzbg;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    const/4 p3, 0x1

    .line 3
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/measurement/internal/zzjd;->zzO(Ljava/lang/String;Z)V

    new-instance p3, Lcom/google/android/gms/measurement/internal/zzis;

    .line 4
    invoke-direct {p3, p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzis;-><init>(Lcom/google/android/gms/measurement/internal/zzjd;Lcom/google/android/gms/measurement/internal/zzbg;Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/google/android/gms/measurement/internal/zzjd;->zzd(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzi(Lcom/google/android/gms/measurement/internal/zzr;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzjd;->zzN(Lcom/google/android/gms/measurement/internal/zzr;Z)V

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzin;

    .line 2
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/zzin;-><init>(Lcom/google/android/gms/measurement/internal/zzjd;Lcom/google/android/gms/measurement/internal/zzr;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/zzjd;->zzd(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzj(Lcom/google/android/gms/measurement/internal/zzr;Z)Ljava/util/List;
    .locals 4

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzjd;->zzN(Lcom/google/android/gms/measurement/internal/zzr;Z)V

    .line 2
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzr;->zza:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjd;->zza:Lcom/google/android/gms/measurement/internal/zzpg;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaW()Lcom/google/android/gms/measurement/internal/zzhz;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/measurement/internal/zzid;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/measurement/internal/zzid;-><init>(Lcom/google/android/gms/measurement/internal/zzjd;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzhz;->zzh(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 6
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/measurement/internal/zzpn;

    if-nez p2, :cond_1

    .line 9
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzpn;->zzc:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzpp;->zzZ(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :catch_0
    move-exception p2

    goto :goto_2

    :catch_1
    move-exception p2

    goto :goto_2

    .line 10
    :cond_1
    :goto_1
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzpl;

    invoke-direct {v3, v2}, Lcom/google/android/gms/measurement/internal/zzpl;-><init>(Lcom/google/android/gms/measurement/internal/zzpn;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    return-object v1

    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjd;->zza:Lcom/google/android/gms/measurement/internal/zzpg;

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v0

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzr;->zza:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzgu;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "Failed to get user properties. appId"

    .line 13
    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/measurement/internal/zzgs;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final zzk(Lcom/google/android/gms/measurement/internal/zzbg;Ljava/lang/String;)[B
    .locals 9

    .line 1
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 3
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/measurement/internal/zzjd;->zzO(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjd;->zza:Lcom/google/android/gms/measurement/internal/zzpg;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgu;->zzj()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v1

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzs()Lcom/google/android/gms/measurement/internal/zzgn;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzbg;->zza:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzgn;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "Log and bundle. event"

    .line 7
    invoke-virtual {v1, v4, v2}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaZ()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->nanoTime()J

    move-result-wide v1

    const-wide/32 v4, 0xf4240

    div-long/2addr v1, v4

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaW()Lcom/google/android/gms/measurement/internal/zzhz;

    move-result-object v6

    new-instance v7, Lcom/google/android/gms/measurement/internal/zzit;

    invoke-direct {v7, p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzit;-><init>(Lcom/google/android/gms/measurement/internal/zzjd;Lcom/google/android/gms/measurement/internal/zzbg;Ljava/lang/String;)V

    .line 10
    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzhz;->zzi(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v6

    .line 11
    :try_start_0
    invoke-interface {v6}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    if-nez v6, :cond_0

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v6

    .line 13
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v6

    const-string v7, "Log and bundle returned null. appId"

    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzgu;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 14
    invoke-virtual {v6, v7, v8}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v6, 0x0

    new-array v6, v6, [B

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    .line 15
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaZ()Lcom/google/android/gms/common/util/Clock;

    move-result-object v7

    invoke-interface {v7}, Lcom/google/android/gms/common/util/Clock;->nanoTime()J

    move-result-wide v7

    div-long/2addr v7, v4

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v4

    .line 17
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgu;->zzj()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v4

    const-string v5, "Log and bundle processed. event, size, time_ms"

    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzs()Lcom/google/android/gms/measurement/internal/zzgn;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzgn;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    array-length v3, v6

    .line 19
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sub-long/2addr v7, v1

    .line 20
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 21
    invoke-virtual {v4, v5, v0, v3, v1}, Lcom/google/android/gms/measurement/internal/zzgs;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjd;->zza:Lcom/google/android/gms/measurement/internal/zzpg;

    .line 22
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v2

    .line 23
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v2

    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzgu;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    .line 24
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzs()Lcom/google/android/gms/measurement/internal/zzgn;

    move-result-object v1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzbg;->zza:Ljava/lang/String;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/measurement/internal/zzgn;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Failed to log and bundle. appId, event, error"

    .line 25
    invoke-virtual {v2, v1, p2, p1, v0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final zzl(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzig;

    move-object v1, p0

    move-wide v5, p1

    move-object v4, p3

    move-object v2, p4

    move-object v3, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/measurement/internal/zzig;-><init>(Lcom/google/android/gms/measurement/internal/zzjd;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/zzjd;->zzd(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzm(Lcom/google/android/gms/measurement/internal/zzr;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzjd;->zzN(Lcom/google/android/gms/measurement/internal/zzr;Z)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjd;->zza:Lcom/google/android/gms/measurement/internal/zzpg;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzap(Lcom/google/android/gms/measurement/internal/zzr;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final zzn(Lcom/google/android/gms/measurement/internal/zzah;Lcom/google/android/gms/measurement/internal/zzr;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzah;->zzc:Lcom/google/android/gms/measurement/internal/zzpl;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/measurement/internal/zzjd;->zzN(Lcom/google/android/gms/measurement/internal/zzr;Z)V

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzah;

    .line 4
    invoke-direct {v0, p1}, Lcom/google/android/gms/measurement/internal/zzah;-><init>(Lcom/google/android/gms/measurement/internal/zzah;)V

    .line 5
    iget-object p1, p2, Lcom/google/android/gms/measurement/internal/zzr;->zza:Ljava/lang/String;

    iput-object p1, v0, Lcom/google/android/gms/measurement/internal/zzah;->zza:Ljava/lang/String;

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzih;

    .line 6
    invoke-direct {p1, p0, v0, p2}, Lcom/google/android/gms/measurement/internal/zzih;-><init>(Lcom/google/android/gms/measurement/internal/zzjd;Lcom/google/android/gms/measurement/internal/zzah;Lcom/google/android/gms/measurement/internal/zzr;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzjd;->zzd(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzo(Lcom/google/android/gms/measurement/internal/zzah;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzah;->zzc:Lcom/google/android/gms/measurement/internal/zzpl;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzah;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzah;->zza:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/measurement/internal/zzjd;->zzO(Ljava/lang/String;Z)V

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzah;

    .line 5
    invoke-direct {v0, p1}, Lcom/google/android/gms/measurement/internal/zzah;-><init>(Lcom/google/android/gms/measurement/internal/zzah;)V

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzii;

    .line 6
    invoke-direct {p1, p0, v0}, Lcom/google/android/gms/measurement/internal/zzii;-><init>(Lcom/google/android/gms/measurement/internal/zzjd;Lcom/google/android/gms/measurement/internal/zzah;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzjd;->zzd(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzp(Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/measurement/internal/zzr;)Ljava/util/List;
    .locals 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p4, v0}, Lcom/google/android/gms/measurement/internal/zzjd;->zzN(Lcom/google/android/gms/measurement/internal/zzr;Z)V

    .line 2
    iget-object v0, p4, Lcom/google/android/gms/measurement/internal/zzr;->zza:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjd;->zza:Lcom/google/android/gms/measurement/internal/zzpg;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaW()Lcom/google/android/gms/measurement/internal/zzhz;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/measurement/internal/zzij;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzij;-><init>(Lcom/google/android/gms/measurement/internal/zzjd;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzhz;->zzh(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 6
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    new-instance p2, Ljava/util/ArrayList;

    .line 7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzpn;

    if-nez p3, :cond_1

    .line 9
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzpn;->zzc:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzpp;->zzZ(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_2

    .line 10
    :cond_1
    :goto_1
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzpl;

    invoke-direct {v1, v0}, Lcom/google/android/gms/measurement/internal/zzpl;-><init>(Lcom/google/android/gms/measurement/internal/zzpn;)V

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    return-object p2

    :goto_2
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzjd;->zza:Lcom/google/android/gms/measurement/internal/zzpg;

    .line 11
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object p2

    .line 12
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object p2

    iget-object p3, p4, Lcom/google/android/gms/measurement/internal/zzr;->zza:Ljava/lang/String;

    invoke-static {p3}, Lcom/google/android/gms/measurement/internal/zzgu;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    const-string p4, "Failed to query user properties. appId"

    .line 13
    invoke-virtual {p2, p4, p3, p1}, Lcom/google/android/gms/measurement/internal/zzgs;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 14
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p1
.end method

.method public final zzq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;
    .locals 2

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzjd;->zzO(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjd;->zza:Lcom/google/android/gms/measurement/internal/zzpg;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaW()Lcom/google/android/gms/measurement/internal/zzhz;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzik;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzik;-><init>(Lcom/google/android/gms/measurement/internal/zzjd;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzhz;->zzh(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p2

    .line 4
    :try_start_0
    invoke-interface {p2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    new-instance p3, Ljava/util/ArrayList;

    .line 5
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzpn;

    if-nez p4, :cond_1

    .line 7
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzpn;->zzc:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzpp;->zzZ(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :catch_0
    move-exception p2

    goto :goto_2

    :catch_1
    move-exception p2

    goto :goto_2

    .line 8
    :cond_1
    :goto_1
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzpl;

    invoke-direct {v1, v0}, Lcom/google/android/gms/measurement/internal/zzpl;-><init>(Lcom/google/android/gms/measurement/internal/zzpn;)V

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    return-object p3

    :goto_2
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzjd;->zza:Lcom/google/android/gms/measurement/internal/zzpg;

    .line 9
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object p3

    .line 10
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object p3

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzgu;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string p4, "Failed to get user properties as. appId"

    .line 11
    invoke-virtual {p3, p4, p1, p2}, Lcom/google/android/gms/measurement/internal/zzgs;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 12
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p1
.end method

.method public final zzr(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzr;)Ljava/util/List;
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p3, v0}, Lcom/google/android/gms/measurement/internal/zzjd;->zzN(Lcom/google/android/gms/measurement/internal/zzr;Z)V

    .line 2
    iget-object p3, p3, Lcom/google/android/gms/measurement/internal/zzr;->zza:Ljava/lang/String;

    .line 3
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjd;->zza:Lcom/google/android/gms/measurement/internal/zzpg;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaW()Lcom/google/android/gms/measurement/internal/zzhz;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzil;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/google/android/gms/measurement/internal/zzil;-><init>(Lcom/google/android/gms/measurement/internal/zzjd;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzhz;->zzh(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 6
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzjd;->zza:Lcom/google/android/gms/measurement/internal/zzpg;

    .line 7
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object p2

    const-string p3, "Failed to get conditional user properties"

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p1
.end method

.method public final zzs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzjd;->zzO(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjd;->zza:Lcom/google/android/gms/measurement/internal/zzpg;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaW()Lcom/google/android/gms/measurement/internal/zzhz;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzim;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzim;-><init>(Lcom/google/android/gms/measurement/internal/zzjd;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzhz;->zzh(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 4
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzjd;->zza:Lcom/google/android/gms/measurement/internal/zzpg;

    .line 5
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object p2

    .line 6
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object p2

    const-string p3, "Failed to get conditional user properties as"

    .line 7
    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p1
.end method

.method public final zzt(Lcom/google/android/gms/measurement/internal/zzr;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzr;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    const/4 v1, 0x0

    .line 2
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/measurement/internal/zzjd;->zzO(Ljava/lang/String;Z)V

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzio;

    .line 3
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/zzio;-><init>(Lcom/google/android/gms/measurement/internal/zzjd;Lcom/google/android/gms/measurement/internal/zzr;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/zzjd;->zzd(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzu(Landroid/os/Bundle;Lcom/google/android/gms/measurement/internal/zzr;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/measurement/internal/zzjd;->zzN(Lcom/google/android/gms/measurement/internal/zzr;Z)V

    .line 2
    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/zzr;->zza:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzjb;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/google/android/gms/measurement/internal/zzjb;-><init>(Lcom/google/android/gms/measurement/internal/zzjd;Landroid/os/Bundle;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzr;)V

    .line 4
    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/zzjd;->zzd(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzv(Lcom/google/android/gms/measurement/internal/zzr;)V
    .locals 1

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzr;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzr;->zzs:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzip;

    .line 3
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/zzip;-><init>(Lcom/google/android/gms/measurement/internal/zzjd;Lcom/google/android/gms/measurement/internal/zzr;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/zzjd;->zzE(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzw(Lcom/google/android/gms/measurement/internal/zzr;)Lcom/google/android/gms/measurement/internal/zzao;
    .locals 4

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzjd;->zzN(Lcom/google/android/gms/measurement/internal/zzr;Z)V

    .line 2
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzr;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjd;->zza:Lcom/google/android/gms/measurement/internal/zzpg;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaW()Lcom/google/android/gms/measurement/internal/zzhz;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zziq;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/measurement/internal/zziq;-><init>(Lcom/google/android/gms/measurement/internal/zzjd;Lcom/google/android/gms/measurement/internal/zzr;)V

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzhz;->zzi(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x2710

    .line 5
    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzao;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjd;->zza:Lcom/google/android/gms/measurement/internal/zzpg;

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzr;->zza:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzgu;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Failed to get consent. appId"

    .line 8
    invoke-virtual {v1, v2, p1, v0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 9
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzao;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/google/android/gms/measurement/internal/zzao;-><init>(Landroid/os/Bundle;)V

    return-object p1
.end method

.method public final zzx(Lcom/google/android/gms/measurement/internal/zzr;Landroid/os/Bundle;)Ljava/util/List;
    .locals 5

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzjd;->zzN(Lcom/google/android/gms/measurement/internal/zzr;Z)V

    .line 2
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzr;->zza:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjd;->zza:Lcom/google/android/gms/measurement/internal/zzpg;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzd()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzfy;->zzaY:Lcom/google/android/gms/measurement/internal/zzfx;

    .line 5
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzal;->zzp(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfx;)Z

    move-result v1

    const-string v2, "Failed to get trigger URIs. appId"

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaW()Lcom/google/android/gms/measurement/internal/zzhz;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zziv;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zziv;-><init>(Lcom/google/android/gms/measurement/internal/zzjd;Lcom/google/android/gms/measurement/internal/zzr;Landroid/os/Bundle;)V

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzhz;->zzi(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p2

    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x2710

    .line 8
    invoke-interface {p2, v3, v4, v0}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p2

    goto :goto_0

    :catch_1
    move-exception p2

    goto :goto_0

    :catch_2
    move-exception p2

    .line 15
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjd;->zza:Lcom/google/android/gms/measurement/internal/zzpg;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v0

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzr;->zza:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzgu;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 11
    invoke-virtual {v0, v2, p1, p2}, Lcom/google/android/gms/measurement/internal/zzgs;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 12
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p1

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjd;->zza:Lcom/google/android/gms/measurement/internal/zzpg;

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaW()Lcom/google/android/gms/measurement/internal/zzhz;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zziw;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zziw;-><init>(Lcom/google/android/gms/measurement/internal/zzjd;Lcom/google/android/gms/measurement/internal/zzr;Landroid/os/Bundle;)V

    .line 14
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzhz;->zzh(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p2

    .line 15
    :try_start_1
    invoke-interface {p2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_3

    return-object p2

    :catch_3
    move-exception p2

    goto :goto_1

    :catch_4
    move-exception p2

    .line 12
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjd;->zza:Lcom/google/android/gms/measurement/internal/zzpg;

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v0

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzr;->zza:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzgu;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 18
    invoke-virtual {v0, v2, p1, p2}, Lcom/google/android/gms/measurement/internal/zzgs;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 19
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p1
.end method

.method public final zzy(Lcom/google/android/gms/measurement/internal/zzr;)V
    .locals 1

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzr;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzr;->zzs:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzjc;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/zzjc;-><init>(Lcom/google/android/gms/measurement/internal/zzjd;Lcom/google/android/gms/measurement/internal/zzr;)V

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/zzjd;->zzE(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzz(Lcom/google/android/gms/measurement/internal/zzr;)V
    .locals 1

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzr;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzr;->zzs:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzix;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/zzix;-><init>(Lcom/google/android/gms/measurement/internal/zzjd;Lcom/google/android/gms/measurement/internal/zzr;)V

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/zzjd;->zzE(Ljava/lang/Runnable;)V

    return-void
.end method
