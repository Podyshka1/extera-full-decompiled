.class public Lcom/google/android/gms/cast/ApplicationMetadata;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/cast/ApplicationMetadata;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field zza:Ljava/lang/String;

.field zzb:Ljava/lang/String;

.field final zzc:Ljava/util/List;

.field zzd:Ljava/lang/String;

.field zze:Landroid/net/Uri;

.field zzf:Ljava/lang/String;

.field private zzg:Ljava/lang/String;

.field private zzh:Ljava/lang/Boolean;

.field private zzi:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/cast/zzd;

    invoke-direct {v0}, Lcom/google/android/gms/cast/zzd;-><init>()V

    sput-object v0, Lcom/google/android/gms/cast/ApplicationMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/cast/ApplicationMetadata;->zza:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/cast/ApplicationMetadata;->zzb:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/cast/ApplicationMetadata;->zzc:Ljava/util/List;

    iput-object p5, p0, Lcom/google/android/gms/cast/ApplicationMetadata;->zzd:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/cast/ApplicationMetadata;->zze:Landroid/net/Uri;

    iput-object p7, p0, Lcom/google/android/gms/cast/ApplicationMetadata;->zzf:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/cast/ApplicationMetadata;->zzg:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/cast/ApplicationMetadata;->zzh:Ljava/lang/Boolean;

    iput-object p10, p0, Lcom/google/android/gms/cast/ApplicationMetadata;->zzi:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/cast/ApplicationMetadata;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/cast/ApplicationMetadata;

    iget-object v1, p0, Lcom/google/android/gms/cast/ApplicationMetadata;->zza:Ljava/lang/String;

    .line 2
    iget-object v3, p1, Lcom/google/android/gms/cast/ApplicationMetadata;->zza:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/android/gms/cast/internal/CastUtils;->zze(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/cast/ApplicationMetadata;->zzb:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/cast/ApplicationMetadata;->zzb:Ljava/lang/String;

    .line 3
    invoke-static {v1, v3}, Lcom/google/android/gms/cast/internal/CastUtils;->zze(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/cast/ApplicationMetadata;->zzc:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/gms/cast/ApplicationMetadata;->zzc:Ljava/util/List;

    .line 4
    invoke-static {v1, v3}, Lcom/google/android/gms/cast/internal/CastUtils;->zze(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/cast/ApplicationMetadata;->zzd:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/cast/ApplicationMetadata;->zzd:Ljava/lang/String;

    .line 5
    invoke-static {v1, v3}, Lcom/google/android/gms/cast/internal/CastUtils;->zze(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/cast/ApplicationMetadata;->zze:Landroid/net/Uri;

    iget-object v3, p1, Lcom/google/android/gms/cast/ApplicationMetadata;->zze:Landroid/net/Uri;

    .line 6
    invoke-static {v1, v3}, Lcom/google/android/gms/cast/internal/CastUtils;->zze(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/cast/ApplicationMetadata;->zzf:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/cast/ApplicationMetadata;->zzf:Ljava/lang/String;

    .line 7
    invoke-static {v1, v3}, Lcom/google/android/gms/cast/internal/CastUtils;->zze(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/cast/ApplicationMetadata;->zzg:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/cast/ApplicationMetadata;->zzg:Ljava/lang/String;

    .line 8
    invoke-static {v1, p1}, Lcom/google/android/gms/cast/internal/CastUtils;->zze(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public getApplicationId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/ApplicationMetadata;->zza:Ljava/lang/String;

    return-object v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/ApplicationMetadata;->zzf:Ljava/lang/String;

    return-object v0
.end method

.method public getImages()Ljava/util/List;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/ApplicationMetadata;->zzb:Ljava/lang/String;

    return-object v0
.end method

.method public getSenderAppIdentifier()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/ApplicationMetadata;->zzd:Ljava/lang/String;

    return-object v0
.end method

.method public getSupportedNamespaces()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/ApplicationMetadata;->zzc:Ljava/util/List;

    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/ApplicationMetadata;->zza:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/cast/ApplicationMetadata;->zzb:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/cast/ApplicationMetadata;->zzc:Ljava/util/List;

    iget-object v3, p0, Lcom/google/android/gms/cast/ApplicationMetadata;->zzd:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/cast/ApplicationMetadata;->zze:Landroid/net/Uri;

    iget-object v5, p0, Lcom/google/android/gms/cast/ApplicationMetadata;->zzf:Ljava/lang/String;

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v2, v6, v0

    const/4 v0, 0x3

    aput-object v3, v6, v0

    const/4 v0, 0x4

    aput-object v4, v6, v0

    const/4 v0, 0x5

    aput-object v5, v6, v0

    invoke-static {v6}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/ApplicationMetadata;->zza:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/cast/ApplicationMetadata;->zzb:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/cast/ApplicationMetadata;->zzc:Ljava/util/List;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/cast/ApplicationMetadata;->zzd:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/cast/ApplicationMetadata;->zze:Landroid/net/Uri;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/cast/ApplicationMetadata;->zzf:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/cast/ApplicationMetadata;->zzg:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "applicationId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", name: "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", namespaces.count: "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", senderAppIdentifier: "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", senderAppLaunchUrl: "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", iconUrl: "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", type: "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/cast/ApplicationMetadata;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 3
    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x3

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/cast/ApplicationMetadata;->getName()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x4

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/cast/ApplicationMetadata;->getImages()Ljava/util/List;

    move-result-object v2

    .line 7
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeTypedList(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/4 v1, 0x5

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/cast/ApplicationMetadata;->getSupportedNamespaces()Ljava/util/List;

    move-result-object v2

    .line 9
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeStringList(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/4 v1, 0x6

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/cast/ApplicationMetadata;->getSenderAppIdentifier()Ljava/lang/String;

    move-result-object v2

    .line 11
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/gms/cast/ApplicationMetadata;->zze:Landroid/net/Uri;

    .line 12
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 p2, 0x8

    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/cast/ApplicationMetadata;->getIconUrl()Ljava/lang/String;

    move-result-object v1

    .line 14
    invoke-static {p1, p2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 p2, 0x9

    iget-object v1, p0, Lcom/google/android/gms/cast/ApplicationMetadata;->zzg:Ljava/lang/String;

    .line 15
    invoke-static {p1, p2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 p2, 0xa

    iget-object v1, p0, Lcom/google/android/gms/cast/ApplicationMetadata;->zzh:Ljava/lang/Boolean;

    .line 16
    invoke-static {p1, p2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBooleanObject(Landroid/os/Parcel;ILjava/lang/Boolean;Z)V

    const/16 p2, 0xb

    iget-object v1, p0, Lcom/google/android/gms/cast/ApplicationMetadata;->zzi:Ljava/lang/Boolean;

    .line 17
    invoke-static {p1, p2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBooleanObject(Landroid/os/Parcel;ILjava/lang/Boolean;Z)V

    .line 18
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method
