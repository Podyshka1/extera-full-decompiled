.class public Lcom/google/android/gms/cast/framework/CastReasonCodes;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Ljava/util/Map;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "com.google.android.gms.cast.MAP_CAST_STATUS_CODES_TO_CAST_REASON_CODES"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/cast/zzah;->zza(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/CastReasonCodes;->zza:Ljava/util/Map;

    return-void
.end method
