.class public Lcom/google/android/gms/cast/SessionState;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/cast/SessionState$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/cast/SessionState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field zza:Ljava/lang/String;

.field private final zzb:Lcom/google/android/gms/cast/MediaLoadRequestData;

.field private final zzc:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/cast/zzdr;

    invoke-direct {v0}, Lcom/google/android/gms/cast/zzdr;-><init>()V

    sput-object v0, Lcom/google/android/gms/cast/SessionState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/cast/MediaLoadRequestData;Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/cast/SessionState;->zzb:Lcom/google/android/gms/cast/MediaLoadRequestData;

    iput-object p2, p0, Lcom/google/android/gms/cast/SessionState;->zzc:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/cast/SessionState;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    check-cast p1, Lcom/google/android/gms/cast/SessionState;

    iget-object v0, p0, Lcom/google/android/gms/cast/SessionState;->zzc:Lorg/json/JSONObject;

    .line 2
    iget-object v2, p1, Lcom/google/android/gms/cast/SessionState;->zzc:Lorg/json/JSONObject;

    invoke-static {v0, v2}, Lcom/google/android/gms/common/util/JsonUtils;->areJsonValuesEquivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/cast/SessionState;->zzb:Lcom/google/android/gms/cast/MediaLoadRequestData;

    .line 3
    iget-object p1, p1, Lcom/google/android/gms/cast/SessionState;->zzb:Lcom/google/android/gms/cast/MediaLoadRequestData;

    invoke-static {v0, p1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getLoadRequestData()Lcom/google/android/gms/cast/MediaLoadRequestData;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/SessionState;->zzb:Lcom/google/android/gms/cast/MediaLoadRequestData;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/SessionState;->zzb:Lcom/google/android/gms/cast/MediaLoadRequestData;

    iget-object v1, p0, Lcom/google/android/gms/cast/SessionState;->zzc:Lorg/json/JSONObject;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {v2}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/cast/SessionState;->zzc:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/cast/SessionState;->zza:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x2

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/cast/SessionState;->getLoadRequestData()Lcom/google/android/gms/cast/MediaLoadRequestData;

    move-result-object v2

    const/4 v3, 0x0

    .line 4
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 p2, 0x3

    iget-object v1, p0, Lcom/google/android/gms/cast/SessionState;->zza:Ljava/lang/String;

    .line 5
    invoke-static {p1, p2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 6
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method
