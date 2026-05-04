.class public final synthetic Lcom/google/android/gms/internal/cast/zzbc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/cast/zzbf;

.field public final synthetic zzb:Lcom/google/android/gms/cast/framework/CastOptions;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/cast/zzbf;Lcom/google/android/gms/cast/framework/CastOptions;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzbc;->zza:Lcom/google/android/gms/internal/cast/zzbf;

    iput-object p2, p0, Lcom/google/android/gms/internal/cast/zzbc;->zzb:Lcom/google/android/gms/cast/framework/CastOptions;

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzbc;->zza:Lcom/google/android/gms/internal/cast/zzbf;

    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzbc;->zzb:Lcom/google/android/gms/cast/framework/CastOptions;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/cast/zzbf;->zzp(Lcom/google/android/gms/cast/framework/CastOptions;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method
