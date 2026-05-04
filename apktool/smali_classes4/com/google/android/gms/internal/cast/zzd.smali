.class public final synthetic Lcom/google/android/gms/internal/cast/zzd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/cast/zzg;

.field public final synthetic zzb:Ljava/lang/String;

.field public final synthetic zzc:I

.field public final synthetic zzd:Landroid/content/SharedPreferences;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/cast/zzg;Ljava/lang/String;ILandroid/content/SharedPreferences;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzd;->zza:Lcom/google/android/gms/internal/cast/zzg;

    iput-object p2, p0, Lcom/google/android/gms/internal/cast/zzd;->zzb:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/internal/cast/zzd;->zzc:I

    iput-object p4, p0, Lcom/google/android/gms/internal/cast/zzd;->zzd:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzd;->zza:Lcom/google/android/gms/internal/cast/zzg;

    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzd;->zzb:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/gms/internal/cast/zzd;->zzc:I

    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zzd;->zzd:Landroid/content/SharedPreferences;

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/google/android/gms/internal/cast/zzg;->zzb(Ljava/lang/String;ILandroid/content/SharedPreferences;Landroid/os/Bundle;)V

    return-void
.end method
