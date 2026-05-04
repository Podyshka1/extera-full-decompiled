.class public final synthetic Lcom/google/android/gms/cast/framework/zzg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/cast/framework/CastContext;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/cast/framework/CastContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/zzg;->zza:Lcom/google/android/gms/cast/framework/CastContext;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/zzg;->zza:Lcom/google/android/gms/cast/framework/CastContext;

    check-cast p1, Landroid/os/Bundle;

    invoke-static {v0, p1}, Lcom/google/android/gms/cast/framework/CastContext;->zzd(Lcom/google/android/gms/cast/framework/CastContext;Landroid/os/Bundle;)V

    return-void
.end method
