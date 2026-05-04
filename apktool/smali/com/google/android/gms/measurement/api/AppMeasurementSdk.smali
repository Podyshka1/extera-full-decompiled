.class public Lcom/google/android/gms/measurement/api/AppMeasurementSdk;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/measurement/api/AppMeasurementSdk$OnEventListener;
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/internal/measurement/zzfb;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/zzfb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/api/AppMeasurementSdk;->zza:Lcom/google/android/gms/internal/measurement/zzfb;

    return-void
.end method


# virtual methods
.method public clearConditionalUserProperty(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/api/AppMeasurementSdk;->zza:Lcom/google/android/gms/internal/measurement/zzfb;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzfb;->zzm(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public getConditionalUserProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/api/AppMeasurementSdk;->zza:Lcom/google/android/gms/internal/measurement/zzfb;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzfb;->zzn(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getMaxUserProperties(Ljava/lang/String;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/api/AppMeasurementSdk;->zza:Lcom/google/android/gms/internal/measurement/zzfb;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzfb;->zzF(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getUserProperties(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/api/AppMeasurementSdk;->zza:Lcom/google/android/gms/internal/measurement/zzfb;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzfb;->zzC(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public logEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/api/AppMeasurementSdk;->zza:Lcom/google/android/gms/internal/measurement/zzfb;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzfb;->zzi(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public registerOnMeasurementEventListener(Lcom/google/android/gms/measurement/api/AppMeasurementSdk$OnEventListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/api/AppMeasurementSdk;->zza:Lcom/google/android/gms/internal/measurement/zzfb;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzfb;->zzf(Lcom/google/android/gms/measurement/internal/zzjq;)V

    return-void
.end method

.method public setConditionalUserProperty(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/api/AppMeasurementSdk;->zza:Lcom/google/android/gms/internal/measurement/zzfb;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzfb;->zzl(Landroid/os/Bundle;)V

    return-void
.end method

.method public setUserProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/api/AppMeasurementSdk;->zza:Lcom/google/android/gms/internal/measurement/zzfb;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/google/android/gms/internal/measurement/zzfb;->zzk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method
