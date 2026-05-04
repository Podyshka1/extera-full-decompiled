.class public abstract Lcom/google/android/gms/internal/measurement/zzcq;
.super Lcom/google/android/gms/internal/measurement/zzbm;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzcr;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "com.google.android.gms.measurement.api.internal.IAppMeasurementDynamiteService"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzbm;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/internal/measurement/zzcr;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    const-string v0, "com.google.android.gms.measurement.api.internal.IAppMeasurementDynamiteService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/measurement/zzcr;

    if-eqz v1, :cond_1

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzcr;

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzcp;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzcp;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method protected final zza(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8

    .line 256
    const-string v2, "com.google.android.gms.measurement.api.internal.IEventHandlerProxy"

    const-string v3, "com.google.android.gms.measurement.api.internal.IBundleReceiver"

    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 v1, 0x0

    return v1

    .line 1
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    const-string v3, "com.google.android.gms.measurement.api.internal.IDynamiteUploadBatchesCallback"

    .line 2
    invoke-interface {v2, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v3

    instance-of v4, v3, Lcom/google/android/gms/internal/measurement/zzcx;

    if-eqz v4, :cond_1

    .line 3
    move-object v4, v3

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzcx;

    goto :goto_0

    :cond_1
    new-instance v4, Lcom/google/android/gms/internal/measurement/zzcv;

    invoke-direct {v4, v2}, Lcom/google/android/gms/internal/measurement/zzcv;-><init>(Landroid/os/IBinder;)V

    .line 4
    :goto_0
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbn;->zzf(Landroid/os/Parcel;)V

    .line 5
    invoke-interface {p0, v4}, Lcom/google/android/gms/internal/measurement/zzcr;->retrieveAndUploadBatches(Lcom/google/android/gms/internal/measurement/zzcx;)V

    goto/16 :goto_15

    .line 6
    :pswitch_2
    sget-object v2, Lcom/google/android/gms/internal/measurement/zzdf;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v2}, Lcom/google/android/gms/internal/measurement/zzbn;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzdf;

    .line 7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    if-nez v5, :cond_2

    goto :goto_1

    .line 8
    :cond_2
    invoke-interface {v5, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v3

    instance-of v4, v3, Lcom/google/android/gms/internal/measurement/zzcu;

    if-eqz v4, :cond_3

    .line 9
    move-object v4, v3

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzcu;

    goto :goto_1

    :cond_3
    new-instance v4, Lcom/google/android/gms/internal/measurement/zzcs;

    invoke-direct {v4, v5}, Lcom/google/android/gms/internal/measurement/zzcs;-><init>(Landroid/os/IBinder;)V

    .line 10
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 11
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbn;->zzf(Landroid/os/Parcel;)V

    .line 12
    invoke-interface {p0, v2, v4, v5, v6}, Lcom/google/android/gms/internal/measurement/zzcr;->onActivitySaveInstanceStateByScionActivityInfo(Lcom/google/android/gms/internal/measurement/zzdf;Lcom/google/android/gms/internal/measurement/zzcu;J)V

    goto/16 :goto_15

    .line 13
    :pswitch_3
    sget-object v2, Lcom/google/android/gms/internal/measurement/zzdf;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v2}, Lcom/google/android/gms/internal/measurement/zzbn;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzdf;

    .line 14
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 15
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbn;->zzf(Landroid/os/Parcel;)V

    .line 16
    invoke-interface {p0, v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzcr;->onActivityResumedByScionActivityInfo(Lcom/google/android/gms/internal/measurement/zzdf;J)V

    goto/16 :goto_15

    .line 17
    :pswitch_4
    sget-object v2, Lcom/google/android/gms/internal/measurement/zzdf;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v2}, Lcom/google/android/gms/internal/measurement/zzbn;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzdf;

    .line 18
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 19
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbn;->zzf(Landroid/os/Parcel;)V

    .line 20
    invoke-interface {p0, v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzcr;->onActivityPausedByScionActivityInfo(Lcom/google/android/gms/internal/measurement/zzdf;J)V

    goto/16 :goto_15

    .line 21
    :pswitch_5
    sget-object v2, Lcom/google/android/gms/internal/measurement/zzdf;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v2}, Lcom/google/android/gms/internal/measurement/zzbn;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzdf;

    .line 22
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 23
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbn;->zzf(Landroid/os/Parcel;)V

    .line 24
    invoke-interface {p0, v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzcr;->onActivityDestroyedByScionActivityInfo(Lcom/google/android/gms/internal/measurement/zzdf;J)V

    goto/16 :goto_15

    .line 25
    :pswitch_6
    sget-object v2, Lcom/google/android/gms/internal/measurement/zzdf;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v2}, Lcom/google/android/gms/internal/measurement/zzbn;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzdf;

    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 26
    invoke-static {p2, v3}, Lcom/google/android/gms/internal/measurement/zzbn;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 27
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 28
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbn;->zzf(Landroid/os/Parcel;)V

    .line 29
    invoke-interface {p0, v2, v3, v4, v5}, Lcom/google/android/gms/internal/measurement/zzcr;->onActivityCreatedByScionActivityInfo(Lcom/google/android/gms/internal/measurement/zzdf;Landroid/os/Bundle;J)V

    goto/16 :goto_15

    .line 30
    :pswitch_7
    sget-object v2, Lcom/google/android/gms/internal/measurement/zzdf;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v2}, Lcom/google/android/gms/internal/measurement/zzbn;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzdf;

    .line 31
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 32
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbn;->zzf(Landroid/os/Parcel;)V

    .line 33
    invoke-interface {p0, v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzcr;->onActivityStoppedByScionActivityInfo(Lcom/google/android/gms/internal/measurement/zzdf;J)V

    goto/16 :goto_15

    .line 34
    :pswitch_8
    sget-object v2, Lcom/google/android/gms/internal/measurement/zzdf;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v2}, Lcom/google/android/gms/internal/measurement/zzbn;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzdf;

    .line 35
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 36
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbn;->zzf(Landroid/os/Parcel;)V

    .line 37
    invoke-interface {p0, v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzcr;->onActivityStartedByScionActivityInfo(Lcom/google/android/gms/internal/measurement/zzdf;J)V

    goto/16 :goto_15

    .line 38
    :pswitch_9
    sget-object v2, Lcom/google/android/gms/internal/measurement/zzdf;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v2}, Lcom/google/android/gms/internal/measurement/zzbn;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzdf;

    move-object v1, v2

    .line 39
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 40
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 41
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 42
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbn;->zzf(Landroid/os/Parcel;)V

    move-object v0, p0

    .line 43
    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzcr;->setCurrentScreenByScionActivityInfo(Lcom/google/android/gms/internal/measurement/zzdf;Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_15

    :pswitch_a
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 44
    invoke-static {p2, v1}, Lcom/google/android/gms/internal/measurement/zzbn;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 45
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbn;->zzf(Landroid/os/Parcel;)V

    .line 46
    invoke-interface {p0, v1}, Lcom/google/android/gms/internal/measurement/zzcr;->setSgtmDebugInfo(Landroid/content/Intent;)V

    goto/16 :goto_15

    .line 47
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_2

    .line 48
    :cond_4
    invoke-interface {v1, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/zzcu;

    if-eqz v3, :cond_5

    .line 49
    move-object v4, v2

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzcu;

    goto :goto_2

    :cond_5
    new-instance v4, Lcom/google/android/gms/internal/measurement/zzcs;

    invoke-direct {v4, v1}, Lcom/google/android/gms/internal/measurement/zzcs;-><init>(Landroid/os/IBinder;)V

    .line 50
    :goto_2
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbn;->zzf(Landroid/os/Parcel;)V

    .line 51
    invoke-interface {p0, v4}, Lcom/google/android/gms/internal/measurement/zzcr;->getSessionId(Lcom/google/android/gms/internal/measurement/zzcu;)V

    goto/16 :goto_15

    .line 49
    :pswitch_c
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 52
    invoke-static {p2, v1}, Lcom/google/android/gms/internal/measurement/zzbn;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 54
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbn;->zzf(Landroid/os/Parcel;)V

    .line 55
    invoke-interface {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzcr;->setConsentThirdParty(Landroid/os/Bundle;J)V

    goto/16 :goto_15

    :pswitch_d
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 56
    invoke-static {p2, v1}, Lcom/google/android/gms/internal/measurement/zzbn;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 57
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 58
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbn;->zzf(Landroid/os/Parcel;)V

    .line 59
    invoke-interface {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzcr;->setConsent(Landroid/os/Bundle;J)V

    goto/16 :goto_15

    .line 60
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 61
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbn;->zzf(Landroid/os/Parcel;)V

    .line 62
    invoke-interface {p0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzcr;->clearMeasurementEnabled(J)V

    goto/16 :goto_15

    :pswitch_f
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 63
    invoke-static {p2, v1}, Lcom/google/android/gms/internal/measurement/zzbn;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 64
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbn;->zzf(Landroid/os/Parcel;)V

    .line 65
    invoke-interface {p0, v1}, Lcom/google/android/gms/internal/measurement/zzcr;->setDefaultEventParameters(Landroid/os/Bundle;)V

    goto/16 :goto_15

    .line 66
    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_6

    goto :goto_3

    .line 67
    :cond_6
    invoke-interface {v1, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/zzcu;

    if-eqz v3, :cond_7

    .line 68
    move-object v4, v2

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzcu;

    goto :goto_3

    :cond_7
    new-instance v4, Lcom/google/android/gms/internal/measurement/zzcs;

    invoke-direct {v4, v1}, Lcom/google/android/gms/internal/measurement/zzcs;-><init>(Landroid/os/IBinder;)V

    .line 69
    :goto_3
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbn;->zzf(Landroid/os/Parcel;)V

    .line 70
    invoke-interface {p0, v4}, Lcom/google/android/gms/internal/measurement/zzcr;->isDataCollectionEnabled(Lcom/google/android/gms/internal/measurement/zzcu;)V

    goto/16 :goto_15

    .line 71
    :pswitch_11
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbn;->zza(Landroid/os/Parcel;)Z

    move-result v1

    .line 72
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbn;->zzf(Landroid/os/Parcel;)V

    .line 73
    invoke-interface {p0, v1}, Lcom/google/android/gms/internal/measurement/zzcr;->setDataCollectionEnabled(Z)V

    goto/16 :goto_15

    .line 74
    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_8

    goto :goto_4

    .line 75
    :cond_8
    invoke-interface {v1, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/zzcu;

    if-eqz v3, :cond_9

    .line 76
    move-object v4, v2

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzcu;

    goto :goto_4

    :cond_9
    new-instance v4, Lcom/google/android/gms/internal/measurement/zzcs;

    invoke-direct {v4, v1}, Lcom/google/android/gms/internal/measurement/zzcs;-><init>(Landroid/os/IBinder;)V

    .line 77
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 78
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbn;->zzf(Landroid/os/Parcel;)V

    .line 79
    invoke-interface {p0, v4, v1}, Lcom/google/android/gms/internal/measurement/zzcr;->getTestFlag(Lcom/google/android/gms/internal/measurement/zzcu;I)V

    goto/16 :goto_15

    .line 80
    :pswitch_13
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbn;->zze(Landroid/os/Parcel;)Ljava/util/HashMap;

    move-result-object v1

    .line 81
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbn;->zzf(Landroid/os/Parcel;)V

    .line 82
    invoke-interface {p0, v1}, Lcom/google/android/gms/internal/measurement/zzcr;->initForTests(Ljava/util/Map;)V

    goto/16 :goto_15

    .line 83
    :pswitch_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_a

    goto :goto_5

    .line 84
    :cond_a
    invoke-interface {v1, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/zzda;

    if-eqz v3, :cond_b

    .line 85
    move-object v4, v2

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzda;

    goto :goto_5

    :cond_b
    new-instance v4, Lcom/google/android/gms/internal/measurement/zzcy;

    invoke-direct {v4, v1}, Lcom/google/android/gms/internal/measurement/zzcy;-><init>(Landroid/os/IBinder;)V

    .line 86
    :goto_5
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbn;->zzf(Landroid/os/Parcel;)V

    .line 87
    invoke-interface {p0, v4}, Lcom/google/android/gms/internal/measurement/zzcr;->unregisterOnMeasurementEventListener(Lcom/google/android/gms/internal/measurement/zzda;)V

    goto/16 :goto_15

    .line 88
    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_c

    goto :goto_6

    .line 89
    :cond_c
    invoke-interface {v1, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/zzda;

    if-eqz v3, :cond_d

    .line 90
    move-object v4, v2

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzda;

    goto :goto_6

    :cond_d
    new-instance v4, Lcom/google/android/gms/internal/measurement/zzcy;

    invoke-direct {v4, v1}, Lcom/google/android/gms/internal/measurement/zzcy;-><init>(Landroid/os/IBinder;)V

    .line 91
    :goto_6
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbn;->zzf(Landroid/os/Parcel;)V

    .line 92
    invoke-interface {p0, v4}, Lcom/google/android/gms/internal/measurement/zzcr;->registerOnMeasurementEventListener(Lcom/google/android/gms/internal/measurement/zzda;)V

    goto/16 :goto_15

    .line 93
    :pswitch_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_e

    goto :goto_7

    .line 94
    :cond_e
    invoke-interface {v1, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/zzda;

    if-eqz v3, :cond_f

    .line 95
    move-object v4, v2

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzda;

    goto :goto_7

    :cond_f
    new-instance v4, Lcom/google/android/gms/internal/measurement/zzcy;

    invoke-direct {v4, v1}, Lcom/google/android/gms/internal/measurement/zzcy;-><init>(Landroid/os/IBinder;)V

    .line 96
    :goto_7
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbn;->zzf(Landroid/os/Parcel;)V

    .line 97
    invoke-interface {p0, v4}, Lcom/google/android/gms/internal/measurement/zzcr;->setEventInterceptor(Lcom/google/android/gms/internal/measurement/zzda;)V

    goto/16 :goto_15

    .line 98
    :pswitch_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v3

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v4

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v5

    .line 103
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbn;->zzf(Landroid/os/Parcel;)V

    move-object v0, p0

    .line 104
    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzcr;->logHealthData(ILjava/lang/String;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    goto/16 :goto_15

    :pswitch_18
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 105
    invoke-static {p2, v1}, Lcom/google/android/gms/internal/measurement/zzbn;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_10

    goto :goto_8

    .line 107
    :cond_10
    invoke-interface {v2, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v3

    instance-of v4, v3, Lcom/google/android/gms/internal/measurement/zzcu;

    if-eqz v4, :cond_11

    .line 108
    move-object v4, v3

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzcu;

    goto :goto_8

    :cond_11
    new-instance v4, Lcom/google/android/gms/internal/measurement/zzcs;

    invoke-direct {v4, v2}, Lcom/google/android/gms/internal/measurement/zzcs;-><init>(Landroid/os/IBinder;)V

    .line 109
    :goto_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 110
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbn;->zzf(Landroid/os/Parcel;)V

    .line 111
    invoke-interface {p0, v1, v4, v2, v3}, Lcom/google/android/gms/internal/measurement/zzcr;->performAction(Landroid/os/Bundle;Lcom/google/android/gms/internal/measurement/zzcu;J)V

    goto/16 :goto_15

    .line 112
    :pswitch_19
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    .line 113
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_12

    goto :goto_9

    .line 114
    :cond_12
    invoke-interface {v2, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v3

    instance-of v4, v3, Lcom/google/android/gms/internal/measurement/zzcu;

    if-eqz v4, :cond_13

    .line 115
    move-object v4, v3

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzcu;

    goto :goto_9

    :cond_13
    new-instance v4, Lcom/google/android/gms/internal/measurement/zzcs;

    invoke-direct {v4, v2}, Lcom/google/android/gms/internal/measurement/zzcs;-><init>(Landroid/os/IBinder;)V

    .line 116
    :goto_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 117
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbn;->zzf(Landroid/os/Parcel;)V

    .line 118
    invoke-interface {p0, v1, v4, v2, v3}, Lcom/google/android/gms/internal/measurement/zzcr;->onActivitySaveInstanceState(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/measurement/zzcu;J)V

    goto/16 :goto_15

    .line 119
    :pswitch_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 121
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbn;->zzf(Landroid/os/Parcel;)V

    .line 122
    invoke-interface {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzcr;->onActivityResumed(Lcom/google/android/gms/dynamic/IObjectWrapper;J)V

    goto/16 :goto_15

    .line 123
    :pswitch_1b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 125
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbn;->zzf(Landroid/os/Parcel;)V

    .line 126
    invoke-interface {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzcr;->onActivityPaused(Lcom/google/android/gms/dynamic/IObjectWrapper;J)V

    goto/16 :goto_15

    .line 127
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 129
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbn;->zzf(Landroid/os/Parcel;)V

    .line 130
    invoke-interface {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzcr;->onActivityDestroyed(Lcom/google/android/gms/dynamic/IObjectWrapper;J)V

    goto/16 :goto_15

    .line 131
    :pswitch_1d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 132
    invoke-static {p2, v2}, Lcom/google/android/gms/internal/measurement/zzbn;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 133
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 134
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbn;->zzf(Landroid/os/Parcel;)V

    .line 135
    invoke-interface {p0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzcr;->onActivityCreated(Lcom/google/android/gms/dynamic/IObjectWrapper;Landroid/os/Bundle;J)V

    goto/16 :goto_15

    .line 136
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    .line 137
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 138
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbn;->zzf(Landroid/os/Parcel;)V

    .line 139
    invoke-interface {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzcr;->onActivityStopped(Lcom/google/android/gms/dynamic/IObjectWrapper;J)V

    goto/16 :goto_15

    .line 140
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    .line 141
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 142
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbn;->zzf(Landroid/os/Parcel;)V

    .line 143
    invoke-interface {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzcr;->onActivityStarted(Lcom/google/android/gms/dynamic/IObjectWrapper;J)V

    goto/16 :goto_15

    .line 144
    :pswitch_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 145
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 146
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbn;->zzf(Landroid/os/Parcel;)V

    .line 147
    invoke-interface {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzcr;->endAdUnitExposure(Ljava/lang/String;J)V

    goto/16 :goto_15

    .line 148
    :pswitch_21
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 149
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 150
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbn;->zzf(Landroid/os/Parcel;)V

    .line 151
    invoke-interface {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzcr;->beginAdUnitExposure(Ljava/lang/String;J)V

    goto/16 :goto_15

    .line 152
    :pswitch_22
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_14

    goto :goto_a

    .line 153
    :cond_14
    invoke-interface {v1, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/zzcu;

    if-eqz v3, :cond_15

    .line 154
    move-object v4, v2

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzcu;

    goto :goto_a

    :cond_15
    new-instance v4, Lcom/google/android/gms/internal/measurement/zzcs;

    invoke-direct {v4, v1}, Lcom/google/android/gms/internal/measurement/zzcs;-><init>(Landroid/os/IBinder;)V

    .line 155
    :goto_a
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbn;->zzf(Landroid/os/Parcel;)V

    .line 156
    invoke-interface {p0, v4}, Lcom/google/android/gms/internal/measurement/zzcr;->generateEventId(Lcom/google/android/gms/internal/measurement/zzcu;)V

    goto/16 :goto_15

    .line 157
    :pswitch_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_16

    goto :goto_b

    .line 158
    :cond_16
    invoke-interface {v1, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/zzcu;

    if-eqz v3, :cond_17

    .line 159
    move-object v4, v2

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzcu;

    goto :goto_b

    :cond_17
    new-instance v4, Lcom/google/android/gms/internal/measurement/zzcs;

    invoke-direct {v4, v1}, Lcom/google/android/gms/internal/measurement/zzcs;-><init>(Landroid/os/IBinder;)V

    .line 160
    :goto_b
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbn;->zzf(Landroid/os/Parcel;)V

    .line 161
    invoke-interface {p0, v4}, Lcom/google/android/gms/internal/measurement/zzcr;->getGmpAppId(Lcom/google/android/gms/internal/measurement/zzcu;)V

    goto/16 :goto_15

    .line 162
    :pswitch_24
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_18

    goto :goto_c

    .line 163
    :cond_18
    invoke-interface {v1, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/zzcu;

    if-eqz v3, :cond_19

    .line 164
    move-object v4, v2

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzcu;

    goto :goto_c

    :cond_19
    new-instance v4, Lcom/google/android/gms/internal/measurement/zzcs;

    invoke-direct {v4, v1}, Lcom/google/android/gms/internal/measurement/zzcs;-><init>(Landroid/os/IBinder;)V

    .line 165
    :goto_c
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbn;->zzf(Landroid/os/Parcel;)V

    .line 166
    invoke-interface {p0, v4}, Lcom/google/android/gms/internal/measurement/zzcr;->getAppInstanceId(Lcom/google/android/gms/internal/measurement/zzcu;)V

    goto/16 :goto_15

    .line 167
    :pswitch_25
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_1a

    goto :goto_d

    .line 168
    :cond_1a
    invoke-interface {v1, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/zzcu;

    if-eqz v3, :cond_1b

    .line 169
    move-object v4, v2

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzcu;

    goto :goto_d

    :cond_1b
    new-instance v4, Lcom/google/android/gms/internal/measurement/zzcs;

    invoke-direct {v4, v1}, Lcom/google/android/gms/internal/measurement/zzcs;-><init>(Landroid/os/IBinder;)V

    .line 170
    :goto_d
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbn;->zzf(Landroid/os/Parcel;)V

    .line 171
    invoke-interface {p0, v4}, Lcom/google/android/gms/internal/measurement/zzcr;->getCachedAppInstanceId(Lcom/google/android/gms/internal/measurement/zzcu;)V

    goto/16 :goto_15

    .line 172
    :pswitch_26
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_1c

    goto :goto_e

    .line 176
    :cond_1c
    const-string v2, "com.google.android.gms.measurement.api.internal.IStringProvider"

    .line 173
    invoke-interface {v1, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/zzdc;

    if-eqz v3, :cond_1d

    .line 174
    move-object v4, v2

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzdc;

    goto :goto_e

    :cond_1d
    new-instance v4, Lcom/google/android/gms/internal/measurement/zzdb;

    invoke-direct {v4, v1}, Lcom/google/android/gms/internal/measurement/zzdb;-><init>(Landroid/os/IBinder;)V

    .line 175
    :goto_e
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbn;->zzf(Landroid/os/Parcel;)V

    .line 176
    invoke-interface {p0, v4}, Lcom/google/android/gms/internal/measurement/zzcr;->setInstanceIdProvider(Lcom/google/android/gms/internal/measurement/zzdc;)V

    goto/16 :goto_15

    .line 177
    :pswitch_27
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_1e

    goto :goto_f

    .line 178
    :cond_1e
    invoke-interface {v1, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/zzcu;

    if-eqz v3, :cond_1f

    .line 179
    move-object v4, v2

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzcu;

    goto :goto_f

    :cond_1f
    new-instance v4, Lcom/google/android/gms/internal/measurement/zzcs;

    invoke-direct {v4, v1}, Lcom/google/android/gms/internal/measurement/zzcs;-><init>(Landroid/os/IBinder;)V

    .line 180
    :goto_f
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbn;->zzf(Landroid/os/Parcel;)V

    .line 181
    invoke-interface {p0, v4}, Lcom/google/android/gms/internal/measurement/zzcr;->getCurrentScreenClass(Lcom/google/android/gms/internal/measurement/zzcu;)V

    goto/16 :goto_15

    .line 182
    :pswitch_28
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_20

    goto :goto_10

    .line 183
    :cond_20
    invoke-interface {v1, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/zzcu;

    if-eqz v3, :cond_21

    .line 184
    move-object v4, v2

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzcu;

    goto :goto_10

    :cond_21
    new-instance v4, Lcom/google/android/gms/internal/measurement/zzcs;

    invoke-direct {v4, v1}, Lcom/google/android/gms/internal/measurement/zzcs;-><init>(Landroid/os/IBinder;)V

    .line 185
    :goto_10
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbn;->zzf(Landroid/os/Parcel;)V

    .line 186
    invoke-interface {p0, v4}, Lcom/google/android/gms/internal/measurement/zzcr;->getCurrentScreenName(Lcom/google/android/gms/internal/measurement/zzcu;)V

    goto/16 :goto_15

    .line 187
    :pswitch_29
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    .line 188
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 189
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 190
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 191
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbn;->zzf(Landroid/os/Parcel;)V

    move-object v0, p0

    .line 192
    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzcr;->setCurrentScreen(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_15

    .line 193
    :pswitch_2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 194
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbn;->zzf(Landroid/os/Parcel;)V

    .line 195
    invoke-interface {p0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzcr;->setSessionTimeoutDuration(J)V

    goto/16 :goto_15

    .line 196
    :pswitch_2b
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 197
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbn;->zzf(Landroid/os/Parcel;)V

    .line 198
    invoke-interface {p0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzcr;->setMinimumSessionDuration(J)V

    goto/16 :goto_15

    .line 199
    :pswitch_2c
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 200
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbn;->zzf(Landroid/os/Parcel;)V

    .line 201
    invoke-interface {p0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzcr;->resetAnalyticsData(J)V

    goto/16 :goto_15

    .line 202
    :pswitch_2d
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbn;->zza(Landroid/os/Parcel;)Z

    move-result v1

    .line 203
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 204
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbn;->zzf(Landroid/os/Parcel;)V

    .line 205
    invoke-interface {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzcr;->setMeasurementEnabled(ZJ)V

    goto/16 :goto_15

    .line 206
    :pswitch_2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 207
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 208
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    if-nez v5, :cond_22

    goto :goto_11

    .line 209
    :cond_22
    invoke-interface {v5, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v3

    instance-of v4, v3, Lcom/google/android/gms/internal/measurement/zzcu;

    if-eqz v4, :cond_23

    .line 210
    move-object v4, v3

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzcu;

    goto :goto_11

    :cond_23
    new-instance v4, Lcom/google/android/gms/internal/measurement/zzcs;

    invoke-direct {v4, v5}, Lcom/google/android/gms/internal/measurement/zzcs;-><init>(Landroid/os/IBinder;)V

    .line 211
    :goto_11
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbn;->zzf(Landroid/os/Parcel;)V

    .line 212
    invoke-interface {p0, v1, v2, v4}, Lcom/google/android/gms/internal/measurement/zzcr;->getConditionalUserProperties(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzcu;)V

    goto/16 :goto_15

    .line 213
    :pswitch_2f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 214
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 215
    invoke-static {p2, v3}, Lcom/google/android/gms/internal/measurement/zzbn;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 216
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbn;->zzf(Landroid/os/Parcel;)V

    .line 217
    invoke-interface {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzcr;->clearConditionalUserProperty(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_15

    :pswitch_30
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 218
    invoke-static {p2, v1}, Lcom/google/android/gms/internal/measurement/zzbn;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 219
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 220
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbn;->zzf(Landroid/os/Parcel;)V

    .line 221
    invoke-interface {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzcr;->setConditionalUserProperty(Landroid/os/Bundle;J)V

    goto/16 :goto_15

    .line 222
    :pswitch_31
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 223
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 224
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbn;->zzf(Landroid/os/Parcel;)V

    .line 225
    invoke-interface {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzcr;->setUserId(Ljava/lang/String;J)V

    goto/16 :goto_15

    .line 226
    :pswitch_32
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 227
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_24

    goto :goto_12

    .line 228
    :cond_24
    invoke-interface {v2, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v3

    instance-of v4, v3, Lcom/google/android/gms/internal/measurement/zzcu;

    if-eqz v4, :cond_25

    .line 229
    move-object v4, v3

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzcu;

    goto :goto_12

    :cond_25
    new-instance v4, Lcom/google/android/gms/internal/measurement/zzcs;

    invoke-direct {v4, v2}, Lcom/google/android/gms/internal/measurement/zzcs;-><init>(Landroid/os/IBinder;)V

    .line 230
    :goto_12
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbn;->zzf(Landroid/os/Parcel;)V

    .line 231
    invoke-interface {p0, v1, v4}, Lcom/google/android/gms/internal/measurement/zzcr;->getMaxUserProperties(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzcu;)V

    goto/16 :goto_15

    .line 232
    :pswitch_33
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 233
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 234
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbn;->zza(Landroid/os/Parcel;)Z

    move-result v5

    .line 235
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    if-nez v7, :cond_26

    goto :goto_13

    .line 236
    :cond_26
    invoke-interface {v7, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v3

    instance-of v4, v3, Lcom/google/android/gms/internal/measurement/zzcu;

    if-eqz v4, :cond_27

    .line 237
    move-object v4, v3

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzcu;

    goto :goto_13

    :cond_27
    new-instance v4, Lcom/google/android/gms/internal/measurement/zzcs;

    invoke-direct {v4, v7}, Lcom/google/android/gms/internal/measurement/zzcs;-><init>(Landroid/os/IBinder;)V

    .line 238
    :goto_13
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbn;->zzf(Landroid/os/Parcel;)V

    .line 239
    invoke-interface {p0, v1, v2, v5, v4}, Lcom/google/android/gms/internal/measurement/zzcr;->getUserProperties(Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/internal/measurement/zzcu;)V

    goto/16 :goto_15

    .line 240
    :pswitch_34
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 241
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 242
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v3

    .line 243
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbn;->zza(Landroid/os/Parcel;)Z

    move-result v4

    .line 244
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 245
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbn;->zzf(Landroid/os/Parcel;)V

    move-object v0, p0

    .line 246
    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/internal/measurement/zzcr;->setUserProperty(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/dynamic/IObjectWrapper;ZJ)V

    goto/16 :goto_15

    .line 247
    :pswitch_35
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 248
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 249
    invoke-static {p2, v0}, Lcom/google/android/gms/internal/measurement/zzbn;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 250
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    if-nez v5, :cond_28

    goto :goto_14

    .line 251
    :cond_28
    invoke-interface {v5, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v3

    instance-of v4, v3, Lcom/google/android/gms/internal/measurement/zzcu;

    if-eqz v4, :cond_29

    .line 252
    move-object v4, v3

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzcu;

    goto :goto_14

    :cond_29
    new-instance v4, Lcom/google/android/gms/internal/measurement/zzcs;

    invoke-direct {v4, v5}, Lcom/google/android/gms/internal/measurement/zzcs;-><init>(Landroid/os/IBinder;)V

    .line 253
    :goto_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 254
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbn;->zzf(Landroid/os/Parcel;)V

    move-object v3, v0

    move-object v0, p0

    .line 255
    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/internal/measurement/zzcr;->logEventAndBundle(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/google/android/gms/internal/measurement/zzcu;J)V

    goto :goto_15

    .line 256
    :pswitch_36
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 257
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 258
    invoke-static {p2, v0}, Lcom/google/android/gms/internal/measurement/zzbn;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/os/Bundle;

    .line 259
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbn;->zza(Landroid/os/Parcel;)Z

    move-result v4

    .line 260
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbn;->zza(Landroid/os/Parcel;)Z

    move-result v5

    .line 261
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 262
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbn;->zzf(Landroid/os/Parcel;)V

    move-object v0, p0

    .line 263
    invoke-interface/range {v0 .. v7}, Lcom/google/android/gms/internal/measurement/zzcr;->logEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZJ)V

    goto :goto_15

    .line 264
    :pswitch_37
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    .line 265
    sget-object v3, Lcom/google/android/gms/internal/measurement/zzdd;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v3}, Lcom/google/android/gms/internal/measurement/zzbn;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzdd;

    .line 266
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 267
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbn;->zzf(Landroid/os/Parcel;)V

    .line 268
    invoke-interface {p0, v2, v3, v4, v5}, Lcom/google/android/gms/internal/measurement/zzcr;->initialize(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/measurement/zzdd;J)V

    .line 269
    :goto_15
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
