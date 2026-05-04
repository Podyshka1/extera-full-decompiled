.class public final Lokhttp3/internal/platform/AndroidPlatform$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/platform/AndroidPlatform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lokhttp3/internal/platform/AndroidPlatform$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final buildIfSupported()Lokhttp3/internal/platform/Platform;
    .locals 1

    .line 183
    invoke-virtual {p0}, Lokhttp3/internal/platform/AndroidPlatform$Companion;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lokhttp3/internal/platform/AndroidPlatform;

    invoke-direct {v0}, Lokhttp3/internal/platform/AndroidPlatform;-><init>()V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 1

    .line 179
    invoke-static {}, Lokhttp3/internal/platform/AndroidPlatform;->access$getTag$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final isSupported()Z
    .locals 1

    .line 181
    invoke-static {}, Lokhttp3/internal/platform/AndroidPlatform;->access$isSupported$cp()Z

    move-result v0

    return v0
.end method
