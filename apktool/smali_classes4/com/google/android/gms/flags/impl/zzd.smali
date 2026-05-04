.class final Lcom/google/android/gms/flags/impl/zzd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic zza:Landroid/content/SharedPreferences;

.field final synthetic zzb:Ljava/lang/String;

.field final synthetic zzc:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/flags/impl/zzd;->zza:Landroid/content/SharedPreferences;

    iput-object p2, p0, Lcom/google/android/gms/flags/impl/zzd;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/flags/impl/zzd;->zzc:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/flags/impl/zzd;->zza:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/google/android/gms/flags/impl/zzd;->zzb:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/flags/impl/zzd;->zzc:Ljava/lang/String;

    .line 1
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
