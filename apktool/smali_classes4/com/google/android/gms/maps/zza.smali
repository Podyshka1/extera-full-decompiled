.class final Lcom/google/android/gms/maps/zza;
.super Lcom/google/android/gms/maps/internal/zzau;
.source "SourceFile"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/maps/GoogleMap$OnMarkerClickListener;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/GoogleMap$OnMarkerClickListener;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/maps/zza;->zza:Lcom/google/android/gms/maps/GoogleMap$OnMarkerClickListener;

    invoke-direct {p0}, Lcom/google/android/gms/maps/internal/zzau;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/maps/zzaj;)Z
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/maps/model/Marker;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/Marker;-><init>(Lcom/google/android/gms/internal/maps/zzaj;)V

    iget-object p1, p0, Lcom/google/android/gms/maps/zza;->zza:Lcom/google/android/gms/maps/GoogleMap$OnMarkerClickListener;

    invoke-interface {p1, v0}, Lcom/google/android/gms/maps/GoogleMap$OnMarkerClickListener;->onMarkerClick(Lcom/google/android/gms/maps/model/Marker;)Z

    move-result p1

    return p1
.end method
