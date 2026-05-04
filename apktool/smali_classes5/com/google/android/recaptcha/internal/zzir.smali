.class public final Lcom/google/android/recaptcha/internal/zzir;
.super Lcom/google/android/recaptcha/internal/zzic;
.source "SourceFile"


# instance fields
.field final zza:Lcom/google/android/recaptcha/internal/zzke;

.field final zzb:Lcom/google/android/recaptcha/internal/zziq;


# direct methods
.method constructor <init>(Lcom/google/android/recaptcha/internal/zzke;Ljava/lang/Object;Lcom/google/android/recaptcha/internal/zzke;Lcom/google/android/recaptcha/internal/zziq;Ljava/lang/Class;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/recaptcha/internal/zzic;-><init>()V

    if-eqz p1, :cond_1

    iget-object p2, p4, Lcom/google/android/recaptcha/internal/zziq;->zzb:Lcom/google/android/recaptcha/internal/zzmb;

    .line 2
    sget-object p3, Lcom/google/android/recaptcha/internal/zzmb;->zzk:Lcom/google/android/recaptcha/internal/zzmb;

    if-eq p2, p3, :cond_0

    .line 3
    iput-object p1, p0, Lcom/google/android/recaptcha/internal/zzir;->zza:Lcom/google/android/recaptcha/internal/zzke;

    iput-object p4, p0, Lcom/google/android/recaptcha/internal/zzir;->zzb:Lcom/google/android/recaptcha/internal/zziq;

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Null messageDefaultInstance"

    .line 3
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Null containingTypeDefaultInstance"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
