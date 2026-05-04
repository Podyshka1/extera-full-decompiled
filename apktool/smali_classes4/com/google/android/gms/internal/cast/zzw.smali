.class public final synthetic Lcom/google/android/gms/internal/cast/zzw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/cast/zzfc;


# static fields
.field public static final synthetic zza:Lcom/google/android/gms/internal/cast/zzw;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/cast/zzw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/cast/zzw;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/cast/zzw;->zza:Lcom/google/android/gms/internal/cast/zzw;

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

    sget v0, Lcom/google/android/gms/internal/cast/zzx;->$r8$clinit:I

    .line 1
    invoke-static {}, Lcom/google/android/gms/cast/framework/CastContext;->getSharedInstance()Lcom/google/android/gms/cast/framework/CastContext;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cast/framework/CastContext;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastContext;->getCastOptions()Lcom/google/android/gms/cast/framework/CastOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastOptions;->getReceiverApplicationId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
