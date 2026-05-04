.class public final Lcom/google/android/gms/internal/play_billing/zzat;
.super Lcom/google/android/gms/internal/play_billing/zzaq;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/zzav;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    .line 1
    const-string v0, "com.google.android.apps.play.billingtestcompanion.aidl.IBillingOverrideService"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/play_billing/zzaq;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/play_billing/zzax;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzaq;->zzu()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    sget p1, Lcom/google/android/gms/internal/play_billing/zzas;->$r8$clinit:I

    .line 5
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 p1, 0x1

    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/play_billing/zzaq;->zzx(ILandroid/os/Parcel;)V

    return-void
.end method
