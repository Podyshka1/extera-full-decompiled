.class public final Lcom/google/android/gms/internal/cast/zzaj;
.super Lcom/google/android/gms/internal/cast/zza;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/cast/zzak;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    .line 1
    const-string v0, "com.google.android.gms.cast.framework.internal.ICastDynamiteModule"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/cast/zza;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final zze()I
    .locals 2

    const/16 v0, 0x8

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zza;->zza()Landroid/os/Parcel;

    move-result-object v1

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/cast/zza;->zzb(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v1
.end method

.method public final zzf(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/cast/framework/CastOptions;Lcom/google/android/gms/internal/cast/zzam;Ljava/util/Map;)Lcom/google/android/gms/cast/framework/zzaj;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zza;->zza()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/cast/zzc;->zze(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 3
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/cast/zzc;->zzc(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 4
    invoke-static {v0, p3}, Lcom/google/android/gms/internal/cast/zzc;->zze(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 5
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    const/4 p1, 0x1

    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/cast/zza;->zzb(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/cast/framework/zzai;->zzb(Landroid/os/IBinder;)Lcom/google/android/gms/cast/framework/zzaj;

    move-result-object p2

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object p2
.end method

.method public final zzg(Lcom/google/android/gms/cast/framework/CastOptions;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/cast/framework/zzag;)Lcom/google/android/gms/cast/framework/zzam;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zza;->zza()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/cast/zzc;->zzc(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 3
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/cast/zzc;->zze(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 4
    invoke-static {v0, p3}, Lcom/google/android/gms/internal/cast/zzc;->zze(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 p1, 0x3

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/cast/zza;->zzb(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/cast/framework/zzal;->zzb(Landroid/os/IBinder;)Lcom/google/android/gms/cast/framework/zzam;

    move-result-object p2

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object p2
.end method

.method public final zzh(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;)Lcom/google/android/gms/cast/framework/zzat;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zza;->zza()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/cast/zzc;->zze(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 3
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/cast/zzc;->zze(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 4
    invoke-static {v0, p3}, Lcom/google/android/gms/internal/cast/zzc;->zze(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 p1, 0x5

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/cast/zza;->zzb(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/cast/framework/zzas;->zzb(Landroid/os/IBinder;)Lcom/google/android/gms/cast/framework/zzat;

    move-result-object p2

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object p2
.end method

.method public final zzi(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/cast/framework/zzbe;)Lcom/google/android/gms/cast/framework/zzaw;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zza;->zza()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    invoke-static {v0, p3}, Lcom/google/android/gms/internal/cast/zzc;->zze(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 p1, 0x2

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/cast/zza;->zzb(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/cast/framework/zzav;->zzb(Landroid/os/IBinder;)Lcom/google/android/gms/cast/framework/zzaw;

    move-result-object p2

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object p2
.end method

.method public final zzj(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/cast/framework/media/internal/zzk;IIZJIII)Lcom/google/android/gms/cast/framework/media/internal/zzi;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zza;->zza()Landroid/os/Parcel;

    move-result-object p5

    .line 2
    invoke-static {p5, p1}, Lcom/google/android/gms/internal/cast/zzc;->zze(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 3
    invoke-static {p5, p2}, Lcom/google/android/gms/internal/cast/zzc;->zze(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 4
    invoke-virtual {p5, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    invoke-virtual {p5, p4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x0

    .line 6
    invoke-virtual {p5, p1}, Landroid/os/Parcel;->writeInt(I)V

    const-wide/32 p1, 0x200000

    .line 7
    invoke-virtual {p5, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    const/4 p1, 0x5

    .line 8
    invoke-virtual {p5, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 p1, 0x14d

    .line 9
    invoke-virtual {p5, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 p1, 0x2710

    .line 10
    invoke-virtual {p5, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x6

    .line 11
    invoke-virtual {p0, p1, p5}, Lcom/google/android/gms/internal/cast/zza;->zzb(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/cast/framework/media/internal/zzh;->zzb(Landroid/os/IBinder;)Lcom/google/android/gms/cast/framework/media/internal/zzi;

    move-result-object p2

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object p2
.end method

.method public final zzk(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/cast/framework/media/internal/zzk;IIZJIII)Lcom/google/android/gms/cast/framework/media/internal/zzi;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zza;->zza()Landroid/os/Parcel;

    move-result-object p6

    .line 2
    invoke-static {p6, p1}, Lcom/google/android/gms/internal/cast/zzc;->zze(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 3
    invoke-static {p6, p2}, Lcom/google/android/gms/internal/cast/zzc;->zze(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 4
    invoke-static {p6, p3}, Lcom/google/android/gms/internal/cast/zzc;->zze(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 5
    invoke-virtual {p6, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    invoke-virtual {p6, p5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x0

    .line 7
    invoke-virtual {p6, p1}, Landroid/os/Parcel;->writeInt(I)V

    const-wide/32 p1, 0x200000

    .line 8
    invoke-virtual {p6, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    const/4 p1, 0x5

    .line 9
    invoke-virtual {p6, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 p1, 0x14d

    .line 10
    invoke-virtual {p6, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 p1, 0x2710

    .line 11
    invoke-virtual {p6, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x7

    .line 12
    invoke-virtual {p0, p1, p6}, Lcom/google/android/gms/internal/cast/zza;->zzb(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/cast/framework/media/internal/zzh;->zzb(Landroid/os/IBinder;)Lcom/google/android/gms/cast/framework/media/internal/zzi;

    move-result-object p2

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object p2
.end method
