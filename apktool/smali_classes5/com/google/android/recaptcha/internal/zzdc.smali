.class public final synthetic Lcom/google/android/recaptcha/internal/zzdc;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static zza(Lcom/google/android/recaptcha/internal/zzdd;II)V
    .locals 1

    if-ne p1, p2, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance p0, Lcom/google/android/recaptcha/internal/zzae;

    const/16 p1, 0x18

    const/4 p2, 0x0

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/recaptcha/internal/zzae;-><init>(IILjava/lang/Throwable;)V

    .line 2
    throw p0
.end method
