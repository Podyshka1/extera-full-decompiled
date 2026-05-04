.class public final Lokhttp3/internal/platform/android/BouncyCastleSocketAdapter$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/platform/android/BouncyCastleSocketAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lokhttp3/internal/platform/android/BouncyCastleSocketAdapter$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getFactory()Lokhttp3/internal/platform/android/DeferredSocketAdapter$Factory;
    .locals 1

    .line 59
    invoke-static {}, Lokhttp3/internal/platform/android/BouncyCastleSocketAdapter;->access$getFactory$cp()Lokhttp3/internal/platform/android/DeferredSocketAdapter$Factory;

    move-result-object v0

    return-object v0
.end method

.method public final isSupported()Z
    .locals 1

    .line 66
    invoke-static {}, Lokhttp3/internal/platform/android/BouncyCastleSocketAdapter;->access$isSupported$cp()Z

    move-result v0

    return v0
.end method
