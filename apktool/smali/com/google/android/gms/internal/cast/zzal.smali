.class public abstract Lcom/google/android/gms/internal/cast/zzal;
.super Lcom/google/android/gms/internal/cast/zzb;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/cast/zzam;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "com.google.android.gms.cast.framework.internal.IMediaRouter"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/cast/zzb;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final zza(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    .line 1
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/internal/cast/zzc;->zzb(Landroid/os/Parcel;)V

    .line 3
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/cast/zzam;->zzj(I)V

    .line 4
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    .line 5
    :pswitch_1
    invoke-interface {p0}, Lcom/google/android/gms/internal/cast/zzam;->zzk()Z

    move-result p1

    .line 6
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7
    sget p2, Lcom/google/android/gms/internal/cast/zzc;->$r8$clinit:I

    .line 8
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    .line 9
    :pswitch_2
    invoke-interface {p0}, Lcom/google/android/gms/internal/cast/zzam;->zzf()V

    .line 10
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    .line 11
    :pswitch_3
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const p1, 0xbdfcb8

    .line 12
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    .line 13
    :pswitch_4
    invoke-interface {p0}, Lcom/google/android/gms/internal/cast/zzam;->zzc()Ljava/lang/String;

    move-result-object p1

    .line 14
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 15
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 16
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 17
    invoke-static {p2}, Lcom/google/android/gms/internal/cast/zzc;->zzb(Landroid/os/Parcel;)V

    .line 18
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/cast/zzam;->zzb(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 19
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 20
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/cast/zzc;->zzd(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto/16 :goto_1

    .line 21
    :pswitch_6
    invoke-interface {p0}, Lcom/google/android/gms/internal/cast/zzam;->zzl()Z

    move-result p1

    .line 22
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 23
    sget p2, Lcom/google/android/gms/internal/cast/zzc;->$r8$clinit:I

    .line 24
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    .line 25
    :pswitch_7
    invoke-interface {p0}, Lcom/google/android/gms/internal/cast/zzam;->zzh()V

    .line 26
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    .line 27
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 28
    invoke-static {p2}, Lcom/google/android/gms/internal/cast/zzc;->zzb(Landroid/os/Parcel;)V

    .line 29
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/cast/zzam;->zzi(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    .line 31
    :pswitch_9
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/cast/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 32
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 33
    invoke-static {p2}, Lcom/google/android/gms/internal/cast/zzc;->zzb(Landroid/os/Parcel;)V

    .line 34
    invoke-interface {p0, p1, p4}, Lcom/google/android/gms/internal/cast/zzam;->zzm(Landroid/os/Bundle;I)Z

    move-result p1

    .line 35
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 36
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 45
    :pswitch_a
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 37
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/cast/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 38
    invoke-static {p2}, Lcom/google/android/gms/internal/cast/zzc;->zzb(Landroid/os/Parcel;)V

    .line 39
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/cast/zzam;->zzg(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1

    .line 30
    :pswitch_b
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 41
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/cast/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 42
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 43
    invoke-static {p2}, Lcom/google/android/gms/internal/cast/zzc;->zzb(Landroid/os/Parcel;)V

    .line 44
    invoke-interface {p0, p1, p4}, Lcom/google/android/gms/internal/cast/zzam;->zzd(Landroid/os/Bundle;I)V

    .line 45
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1

    .line 40
    :pswitch_c
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 46
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/cast/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 47
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    if-nez p4, :cond_0

    const/4 p4, 0x0

    goto :goto_0

    .line 52
    :cond_0
    const-string v0, "com.google.android.gms.cast.framework.internal.IMediaRouterCallback"

    .line 48
    invoke-interface {p4, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/cast/zzao;

    if-eqz v1, :cond_1

    .line 49
    move-object p4, v0

    check-cast p4, Lcom/google/android/gms/internal/cast/zzao;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/cast/zzan;

    invoke-direct {v0, p4}, Lcom/google/android/gms/internal/cast/zzan;-><init>(Landroid/os/IBinder;)V

    move-object p4, v0

    .line 50
    :goto_0
    invoke-static {p2}, Lcom/google/android/gms/internal/cast/zzc;->zzb(Landroid/os/Parcel;)V

    .line 51
    invoke-interface {p0, p1, p4}, Lcom/google/android/gms/internal/cast/zzam;->zze(Landroid/os/Bundle;Lcom/google/android/gms/internal/cast/zzao;)V

    .line 52
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_1
    const/4 p1, 0x1

    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
