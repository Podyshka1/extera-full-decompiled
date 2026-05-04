.class public final Landroidx/camera/extensions/ExtensionsManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/extensions/ExtensionsManager$Companion;,
        Landroidx/camera/extensions/ExtensionsManager$ExtensionsAvailability;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/extensions/ExtensionsManager$Companion;

.field private static final EXTENSIONS_LOCK:Ljava/lang/Object;

.field private static sDeinitializeFuture:Lcom/google/common/util/concurrent/ListenableFuture;

.field private static sExtensionsManager:Landroidx/camera/extensions/ExtensionsManager;

.field private static sInitializeFuture:Lcom/google/common/util/concurrent/ListenableFuture;


# instance fields
.field private final extensionsAvailability:Landroidx/camera/extensions/ExtensionsManager$ExtensionsAvailability;

.field private final extensionsInfo:Landroidx/camera/extensions/ExtensionsInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/extensions/ExtensionsManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/extensions/ExtensionsManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/camera/extensions/ExtensionsManager;->Companion:Landroidx/camera/extensions/ExtensionsManager$Companion;

    .line 355
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/camera/extensions/ExtensionsManager;->EXTENSIONS_LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/camera/extensions/ExtensionsManager$ExtensionsAvailability;Landroidx/camera/core/CameraProvider;Landroid/content/Context;)V
    .locals 1

    const-string v0, "extensionsAvailability"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cameraProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "applicationContext"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Landroidx/camera/extensions/ExtensionsManager;->extensionsAvailability:Landroidx/camera/extensions/ExtensionsManager$ExtensionsAvailability;

    .line 116
    new-instance p1, Landroidx/camera/extensions/ExtensionsInfo;

    invoke-direct {p1, p2, p3}, Landroidx/camera/extensions/ExtensionsInfo;-><init>(Landroidx/camera/core/CameraProvider;Landroid/content/Context;)V

    iput-object p1, p0, Landroidx/camera/extensions/ExtensionsManager;->extensionsInfo:Landroidx/camera/extensions/ExtensionsInfo;

    return-void
.end method

.method public static final synthetic access$getEXTENSIONS_LOCK$cp()Ljava/lang/Object;
    .locals 1

    .line 94
    sget-object v0, Landroidx/camera/extensions/ExtensionsManager;->EXTENSIONS_LOCK:Ljava/lang/Object;

    return-object v0
.end method

.method public static final synthetic access$getSDeinitializeFuture$cp()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    .line 94
    sget-object v0, Landroidx/camera/extensions/ExtensionsManager;->sDeinitializeFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    return-object v0
.end method

.method public static final synthetic access$getSExtensionsManager$cp()Landroidx/camera/extensions/ExtensionsManager;
    .locals 1

    .line 94
    sget-object v0, Landroidx/camera/extensions/ExtensionsManager;->sExtensionsManager:Landroidx/camera/extensions/ExtensionsManager;

    return-object v0
.end method

.method public static final synthetic access$getSInitializeFuture$cp()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    .line 94
    sget-object v0, Landroidx/camera/extensions/ExtensionsManager;->sInitializeFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    return-object v0
.end method

.method public static final synthetic access$setSDeinitializeFuture$cp(Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0

    .line 94
    sput-object p0, Landroidx/camera/extensions/ExtensionsManager;->sDeinitializeFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method

.method public static final synthetic access$setSExtensionsManager$cp(Landroidx/camera/extensions/ExtensionsManager;)V
    .locals 0

    .line 94
    sput-object p0, Landroidx/camera/extensions/ExtensionsManager;->sExtensionsManager:Landroidx/camera/extensions/ExtensionsManager;

    return-void
.end method

.method public static final synthetic access$setSInitializeFuture$cp(Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0

    .line 94
    sput-object p0, Landroidx/camera/extensions/ExtensionsManager;->sInitializeFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method

.method public static final getInstanceAsync(Landroid/content/Context;Landroidx/camera/core/CameraProvider;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    sget-object v0, Landroidx/camera/extensions/ExtensionsManager;->Companion:Landroidx/camera/extensions/ExtensionsManager$Companion;

    invoke-virtual {v0, p0, p1}, Landroidx/camera/extensions/ExtensionsManager$Companion;->getInstanceAsync(Landroid/content/Context;Landroidx/camera/core/CameraProvider;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method
