.class public final synthetic Lcom/google/android/gms/cast/framework/media/widget/zza;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/widget/zza;->zza:Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/zza;->zza:Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    return-void
.end method
