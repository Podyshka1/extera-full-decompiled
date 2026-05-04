.class public final Lokhttp3/internal/platform/PlatformRegistry;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lokhttp3/internal/platform/PlatformRegistry;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lokhttp3/internal/platform/PlatformRegistry;

    invoke-direct {v0}, Lokhttp3/internal/platform/PlatformRegistry;-><init>()V

    sput-object v0, Lokhttp3/internal/platform/PlatformRegistry;->INSTANCE:Lokhttp3/internal/platform/PlatformRegistry;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final findPlatform()Lokhttp3/internal/platform/Platform;
    .locals 4

    .line 25
    sget-object v0, Lokhttp3/internal/platform/android/AndroidLog;->INSTANCE:Lokhttp3/internal/platform/android/AndroidLog;

    invoke-virtual {v0}, Lokhttp3/internal/platform/android/AndroidLog;->enable()V

    .line 28
    sget-object v0, Lokhttp3/internal/platform/Android10Platform;->Companion:Lokhttp3/internal/platform/Android10Platform$Companion;

    invoke-virtual {v0}, Lokhttp3/internal/platform/Android10Platform$Companion;->buildIfSupported()Lokhttp3/internal/platform/Platform;

    move-result-object v0

    if-nez v0, :cond_0

    .line 29
    sget-object v0, Lokhttp3/internal/platform/AndroidPlatform;->Companion:Lokhttp3/internal/platform/AndroidPlatform$Companion;

    invoke-virtual {v0}, Lokhttp3/internal/platform/AndroidPlatform$Companion;->buildIfSupported()Lokhttp3/internal/platform/Platform;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    return-object v0

    .line 33
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 38
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected Android API level 21+ but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final getApplicationContext()Landroid/content/Context;
    .locals 3

    .line 45
    sget-object v0, Lokhttp3/internal/platform/Platform;->Companion:Lokhttp3/internal/platform/Platform$Companion;

    invoke-virtual {v0}, Lokhttp3/internal/platform/Platform$Companion;->get()Lokhttp3/internal/platform/Platform;

    move-result-object v0

    instance-of v1, v0, Lokhttp3/internal/platform/ContextAwarePlatform;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lokhttp3/internal/platform/ContextAwarePlatform;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lokhttp3/internal/platform/ContextAwarePlatform;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v2
.end method

.method public final isAndroid()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final setApplicationContext(Landroid/content/Context;)V
    .locals 2

    .line 47
    sget-object v0, Lokhttp3/internal/platform/Platform;->Companion:Lokhttp3/internal/platform/Platform$Companion;

    invoke-virtual {v0}, Lokhttp3/internal/platform/Platform$Companion;->get()Lokhttp3/internal/platform/Platform;

    move-result-object v0

    instance-of v1, v0, Lokhttp3/internal/platform/ContextAwarePlatform;

    if-eqz v1, :cond_0

    check-cast v0, Lokhttp3/internal/platform/ContextAwarePlatform;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lokhttp3/internal/platform/ContextAwarePlatform;->setApplicationContext(Landroid/content/Context;)V

    :cond_1
    return-void
.end method
