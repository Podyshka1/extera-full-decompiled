.class public final synthetic Lcom/google/android/gms/internal/cast/zzfd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/cast/zzfc;


# static fields
.field public static final synthetic zza:Lcom/google/android/gms/internal/cast/zzfd;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/cast/zzfd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/cast/zzfd;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/cast/zzfd;->zza:Lcom/google/android/gms/internal/cast/zzfd;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
