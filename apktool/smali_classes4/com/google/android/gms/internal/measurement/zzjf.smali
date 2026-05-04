.class public abstract Lcom/google/android/gms/internal/measurement/zzjf;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/measurement/zzjh;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzjg;->zza:Landroid/net/Uri;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzji;->zzb()Lcom/google/android/gms/internal/measurement/zzjh;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjh;

    return-void
.end method

.method public static zza(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object p2, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjh;

    const/4 v0, 0x0

    invoke-interface {p2, p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzjh;->zza(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
