.class public final Lcom/google/android/recaptcha/internal/zzcw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/recaptcha/internal/zzdd;


# static fields
.field public static final zza:Lcom/google/android/recaptcha/internal/zzcw;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/recaptcha/internal/zzcw;

    invoke-direct {v0}, Lcom/google/android/recaptcha/internal/zzcw;-><init>()V

    sput-object v0, Lcom/google/android/recaptcha/internal/zzcw;->zza:Lcom/google/android/recaptcha/internal/zzcw;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs zza(ILcom/google/android/recaptcha/internal/zzcj;[Lcom/google/android/recaptcha/internal/zzpq;)V
    .locals 1

    .line 1
    new-instance p1, Lcom/google/android/recaptcha/internal/zzae;

    const/16 p2, 0x13

    const/4 p3, 0x0

    const/4 v0, 0x5

    invoke-direct {p1, v0, p2, p3}, Lcom/google/android/recaptcha/internal/zzae;-><init>(IILjava/lang/Throwable;)V

    .line 2
    throw p1
.end method
