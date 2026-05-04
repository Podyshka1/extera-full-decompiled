.class final synthetic Lcom/google/android/gms/internal/measurement/zzkn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/measurement/zzko;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzko;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zza:Lcom/google/android/gms/internal/measurement/zzko;

    return-void
.end method


# virtual methods
.method public final synthetic onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zza:Lcom/google/android/gms/internal/measurement/zzko;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzko;->zzc(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void
.end method
