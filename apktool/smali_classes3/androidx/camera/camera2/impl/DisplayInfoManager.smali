.class public final Landroidx/camera/camera2/impl/DisplayInfoManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/impl/DisplayInfoManager$Companion;
    }
.end annotation


# static fields
.field private static final ABNORMAL_DISPLAY_SIZE_THRESHOLD:Landroid/util/Size;

.field public static final Companion:Landroidx/camera/camera2/impl/DisplayInfoManager$Companion;

.field private static final FALLBACK_DISPLAY_SIZE:Landroid/util/Size;

.field private static final MAX_PREVIEW_SIZE:Landroid/util/Size;

.field private static volatile instance:Landroidx/camera/camera2/impl/DisplayInfoManager;


# instance fields
.field private final displayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private final displayManager:Landroid/hardware/display/DisplayManager;

.field private final displaySizeCorrector:Landroidx/camera/camera2/compat/workaround/DisplaySizeCorrector;

.field private volatile displays:[Landroid/view/Display;

.field private final lock:Ljava/lang/Object;

.field private final maxPreviewSize:Landroidx/camera/camera2/compat/workaround/MaxPreviewSize;

.field private volatile previewSize:Landroid/util/Size;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/camera/camera2/impl/DisplayInfoManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/impl/DisplayInfoManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/camera/camera2/impl/DisplayInfoManager;->Companion:Landroidx/camera/camera2/impl/DisplayInfoManager$Companion;

    .line 89
    new-instance v0, Landroid/util/Size;

    const/16 v1, 0x780

    const/16 v2, 0x438

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    sput-object v0, Landroidx/camera/camera2/impl/DisplayInfoManager;->MAX_PREVIEW_SIZE:Landroid/util/Size;

    .line 91
    new-instance v0, Landroid/util/Size;

    const/16 v1, 0x140

    const/16 v2, 0xf0

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    sput-object v0, Landroidx/camera/camera2/impl/DisplayInfoManager;->ABNORMAL_DISPLAY_SIZE_THRESHOLD:Landroid/util/Size;

    .line 96
    new-instance v0, Landroid/util/Size;

    const/16 v1, 0x280

    const/16 v2, 0x1e0

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    sput-object v0, Landroidx/camera/camera2/impl/DisplayInfoManager;->FALLBACK_DISPLAY_SIZE:Landroid/util/Size;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Landroidx/camera/camera2/compat/workaround/MaxPreviewSize;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Landroidx/camera/camera2/compat/workaround/MaxPreviewSize;-><init>(Landroidx/camera/camera2/compat/quirk/ExtraCroppingQuirk;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Landroidx/camera/camera2/impl/DisplayInfoManager;->maxPreviewSize:Landroidx/camera/camera2/compat/workaround/MaxPreviewSize;

    .line 46
    new-instance v0, Landroidx/camera/camera2/compat/workaround/DisplaySizeCorrector;

    invoke-direct {v0}, Landroidx/camera/camera2/compat/workaround/DisplaySizeCorrector;-><init>()V

    iput-object v0, p0, Landroidx/camera/camera2/impl/DisplayInfoManager;->displaySizeCorrector:Landroidx/camera/camera2/compat/workaround/DisplaySizeCorrector;

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/camera/camera2/impl/DisplayInfoManager;->lock:Ljava/lang/Object;

    .line 65
    new-instance v0, Landroidx/camera/camera2/impl/DisplayInfoManager$displayListener$1;

    invoke-direct {v0, p0}, Landroidx/camera/camera2/impl/DisplayInfoManager$displayListener$1;-><init>(Landroidx/camera/camera2/impl/DisplayInfoManager;)V

    iput-object v0, p0, Landroidx/camera/camera2/impl/DisplayInfoManager;->displayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 124
    const-string v1, "display"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type android.hardware.display.DisplayManager"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/hardware/display/DisplayManager;

    .line 125
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {p1, v0, v1}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 124
    iput-object p1, p0, Landroidx/camera/camera2/impl/DisplayInfoManager;->displayManager:Landroid/hardware/display/DisplayManager;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Landroidx/camera/camera2/impl/DisplayInfoManager;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static final synthetic access$getInstance$cp()Landroidx/camera/camera2/impl/DisplayInfoManager;
    .locals 1

    .line 43
    sget-object v0, Landroidx/camera/camera2/impl/DisplayInfoManager;->instance:Landroidx/camera/camera2/impl/DisplayInfoManager;

    return-object v0
.end method

.method public static final synthetic access$getLock$p(Landroidx/camera/camera2/impl/DisplayInfoManager;)Ljava/lang/Object;
    .locals 0

    .line 43
    iget-object p0, p0, Landroidx/camera/camera2/impl/DisplayInfoManager;->lock:Ljava/lang/Object;

    return-object p0
.end method

.method public static final synthetic access$setDisplays$p(Landroidx/camera/camera2/impl/DisplayInfoManager;[Landroid/view/Display;)V
    .locals 0

    .line 43
    iput-object p1, p0, Landroidx/camera/camera2/impl/DisplayInfoManager;->displays:[Landroid/view/Display;

    return-void
.end method

.method public static final synthetic access$setInstance$cp(Landroidx/camera/camera2/impl/DisplayInfoManager;)V
    .locals 0

    .line 43
    sput-object p0, Landroidx/camera/camera2/impl/DisplayInfoManager;->instance:Landroidx/camera/camera2/impl/DisplayInfoManager;

    return-void
.end method

.method public static final synthetic access$setPreviewSize$p(Landroidx/camera/camera2/impl/DisplayInfoManager;Landroid/util/Size;)V
    .locals 0

    .line 43
    iput-object p1, p0, Landroidx/camera/camera2/impl/DisplayInfoManager;->previewSize:Landroid/util/Size;

    return-void
.end method

.method private final calculatePreviewSize()Landroid/util/Size;
    .locals 3

    .line 211
    invoke-direct {p0}, Landroidx/camera/camera2/impl/DisplayInfoManager;->getCorrectedDisplaySize()Landroid/util/Size;

    move-result-object v0

    .line 212
    sget-object v1, Landroidx/camera/camera2/impl/DisplayInfoManager;->MAX_PREVIEW_SIZE:Landroid/util/Size;

    invoke-static {v1, v0}, Landroidx/camera/core/internal/utils/SizeUtil;->isSmallerByArea(Landroid/util/Size;Landroid/util/Size;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 215
    :cond_0
    iget-object v1, p0, Landroidx/camera/camera2/impl/DisplayInfoManager;->maxPreviewSize:Landroidx/camera/camera2/compat/workaround/MaxPreviewSize;

    invoke-virtual {v1, v0}, Landroidx/camera/camera2/compat/workaround/MaxPreviewSize;->getMaxPreviewResolution(Landroid/util/Size;)Landroid/util/Size;

    move-result-object v0

    return-object v0
.end method

.method private final getCorrectedDisplaySize()Landroid/util/Size;
    .locals 3

    .line 219
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    const/4 v1, 0x0

    .line 220
    invoke-virtual {p0, v1}, Landroidx/camera/camera2/impl/DisplayInfoManager;->getMaxSizeDisplay(Z)Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 221
    new-instance v1, Landroid/util/Size;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-direct {v1, v2, v0}, Landroid/util/Size;-><init>(II)V

    .line 224
    sget-object v0, Landroidx/camera/camera2/impl/DisplayInfoManager;->ABNORMAL_DISPLAY_SIZE_THRESHOLD:Landroid/util/Size;

    invoke-static {v1, v0}, Landroidx/camera/core/internal/utils/SizeUtil;->isSmallerByArea(Landroid/util/Size;Landroid/util/Size;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 228
    iget-object v0, p0, Landroidx/camera/camera2/impl/DisplayInfoManager;->displaySizeCorrector:Landroidx/camera/camera2/compat/workaround/DisplaySizeCorrector;

    invoke-virtual {v0}, Landroidx/camera/camera2/compat/workaround/DisplaySizeCorrector;->getDisplaySize()Landroid/util/Size;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Landroidx/camera/camera2/impl/DisplayInfoManager;->FALLBACK_DISPLAY_SIZE:Landroid/util/Size;

    :cond_0
    move-object v1, v0

    .line 232
    :cond_1
    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v2

    if-le v0, v2, :cond_2

    .line 234
    new-instance v0, Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-direct {v0, v2, v1}, Landroid/util/Size;-><init>(II)V

    return-object v0

    :cond_2
    return-object v1
.end method

.method private final getDisplays()[Landroid/view/Display;
    .locals 2

    .line 157
    iget-object v0, p0, Landroidx/camera/camera2/impl/DisplayInfoManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 158
    :try_start_0
    iget-object v1, p0, Landroidx/camera/camera2/impl/DisplayInfoManager;->displays:[Landroid/view/Display;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 157
    monitor-exit v0

    return-object v1

    .line 162
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroidx/camera/camera2/impl/DisplayInfoManager;->displayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v1

    .line 163
    iput-object v1, p0, Landroidx/camera/camera2/impl/DisplayInfoManager;->displays:[Landroid/view/Display;

    .line 164
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 157
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static synthetic getMaxSizeDisplay$default(Landroidx/camera/camera2/impl/DisplayInfoManager;ZILjava/lang/Object;)Landroid/view/Display;
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    move p1, p3

    .line 168
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/camera/camera2/impl/DisplayInfoManager;->getMaxSizeDisplay(Z)Landroid/view/Display;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getMaxSizeDisplay(Z)Landroid/view/Display;
    .locals 13

    .line 169
    invoke-direct {p0}, Landroidx/camera/camera2/impl/DisplayInfoManager;->getDisplays()[Landroid/view/Display;

    move-result-object v0

    .line 171
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 172
    aget-object p1, v0, v2

    return-object p1

    .line 181
    :cond_0
    array-length v1, v0

    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object v6, v5

    move-object v7, v6

    move v5, v4

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v8, v0, v2

    .line 182
    new-instance v9, Landroid/graphics/Point;

    invoke-direct {v9}, Landroid/graphics/Point;-><init>()V

    .line 185
    invoke-virtual {v8, v9}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 187
    iget v10, v9, Landroid/graphics/Point;->x:I

    iget v11, v9, Landroid/graphics/Point;->y:I

    mul-int v12, v10, v11

    if-le v12, v4, :cond_1

    mul-int/2addr v10, v11

    move-object v6, v8

    move v4, v10

    .line 191
    :cond_1
    invoke-virtual {v8}, Landroid/view/Display;->getState()I

    move-result v10

    if-eq v10, v3, :cond_2

    .line 192
    iget v10, v9, Landroid/graphics/Point;->x:I

    iget v9, v9, Landroid/graphics/Point;->y:I

    mul-int v11, v10, v9

    if-le v11, v5, :cond_2

    mul-int/2addr v10, v9

    move-object v7, v8

    move v5, v10

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_5

    if-nez v7, :cond_4

    goto :goto_1

    :cond_4
    move-object v6, v7

    :cond_5
    :goto_1
    if-eqz v6, :cond_6

    return-object v6

    .line 206
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No displays found from "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "toString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x21

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getPreviewSize()Landroid/util/Size;
    .locals 3

    .line 141
    iget-object v0, p0, Landroidx/camera/camera2/impl/DisplayInfoManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 142
    :try_start_0
    iget-object v1, p0, Landroidx/camera/camera2/impl/DisplayInfoManager;->previewSize:Landroid/util/Size;

    if-eqz v1, :cond_0

    .line 143
    iget-object v1, p0, Landroidx/camera/camera2/impl/DisplayInfoManager;->previewSize:Landroid/util/Size;

    const-string v2, "null cannot be cast to non-null type android.util.Size"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    .line 146
    :cond_0
    :try_start_1
    invoke-direct {p0}, Landroidx/camera/camera2/impl/DisplayInfoManager;->calculatePreviewSize()Landroid/util/Size;

    move-result-object v1

    iput-object v1, p0, Landroidx/camera/camera2/impl/DisplayInfoManager;->previewSize:Landroid/util/Size;

    .line 148
    iget-object v1, p0, Landroidx/camera/camera2/impl/DisplayInfoManager;->previewSize:Landroid/util/Size;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 141
    monitor-exit v0

    return-object v1

    :goto_0
    monitor-exit v0

    throw v1
.end method

.method public final refreshPreviewSize()V
    .locals 2

    .line 132
    iget-object v0, p0, Landroidx/camera/camera2/impl/DisplayInfoManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroidx/camera/camera2/impl/DisplayInfoManager;->calculatePreviewSize()Landroid/util/Size;

    move-result-object v1

    iput-object v1, p0, Landroidx/camera/camera2/impl/DisplayInfoManager;->previewSize:Landroid/util/Size;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
