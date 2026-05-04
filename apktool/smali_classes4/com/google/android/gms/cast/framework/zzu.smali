.class public final synthetic Lcom/google/android/gms/cast/framework/zzu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/cast/framework/zzw;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/cast/framework/zzw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/zzu;->zza:Lcom/google/android/gms/cast/framework/zzw;

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/zzu;->zza:Lcom/google/android/gms/cast/framework/zzw;

    iget-object v0, v0, Lcom/google/android/gms/cast/framework/zzw;->zza:Lcom/google/android/gms/cast/framework/CastSession;

    const-string v1, "joinApplication"

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/cast/framework/CastSession;->zzi(Lcom/google/android/gms/cast/framework/CastSession;Ljava/lang/String;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method
