.class public final Landroidx/camera/camera2/compat/quirk/ExcludedSupportedSizesQuirk$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/compat/quirk/ExcludedSupportedSizesQuirk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Landroidx/camera/camera2/compat/quirk/ExcludedSupportedSizesQuirk$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final isEnabled()Z
    .locals 1

    .line 279
    invoke-virtual {p0}, Landroidx/camera/camera2/compat/quirk/ExcludedSupportedSizesQuirk$Companion;->isOnePlus6$camera_camera2()Z

    move-result v0

    if-nez v0, :cond_1

    .line 280
    invoke-virtual {p0}, Landroidx/camera/camera2/compat/quirk/ExcludedSupportedSizesQuirk$Companion;->isOnePlus6T$camera_camera2()Z

    move-result v0

    if-nez v0, :cond_1

    .line 281
    invoke-virtual {p0}, Landroidx/camera/camera2/compat/quirk/ExcludedSupportedSizesQuirk$Companion;->isHuaweiP20Lite$camera_camera2()Z

    move-result v0

    if-nez v0, :cond_1

    .line 282
    invoke-virtual {p0}, Landroidx/camera/camera2/compat/quirk/ExcludedSupportedSizesQuirk$Companion;->isSamsungJ7PrimeApi27Above$camera_camera2()Z

    move-result v0

    if-nez v0, :cond_1

    .line 283
    invoke-virtual {p0}, Landroidx/camera/camera2/compat/quirk/ExcludedSupportedSizesQuirk$Companion;->isSamsungJ7Api27Above$camera_camera2()Z

    move-result v0

    if-nez v0, :cond_1

    .line 284
    invoke-virtual {p0}, Landroidx/camera/camera2/compat/quirk/ExcludedSupportedSizesQuirk$Companion;->isRedmiNote9Pro$camera_camera2()Z

    move-result v0

    if-nez v0, :cond_1

    .line 285
    invoke-virtual {p0}, Landroidx/camera/camera2/compat/quirk/ExcludedSupportedSizesQuirk$Companion;->isSamsungA05s$camera_camera2()Z

    move-result v0

    if-nez v0, :cond_1

    .line 286
    invoke-virtual {p0}, Landroidx/camera/camera2/compat/quirk/ExcludedSupportedSizesQuirk$Companion;->isNokia7Plus$camera_camera2()Z

    move-result v0

    if-nez v0, :cond_1

    .line 287
    invoke-virtual {p0}, Landroidx/camera/camera2/compat/quirk/ExcludedSupportedSizesQuirk$Companion;->isSamsungZFold4$camera_camera2()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final isHuaweiP20Lite$camera_camera2()Z
    .locals 3

    .line 296
    sget-object v0, Landroidx/camera/camera2/compat/quirk/Device;->INSTANCE:Landroidx/camera/camera2/compat/quirk/Device;

    invoke-virtual {v0}, Landroidx/camera/camera2/compat/quirk/Device;->isHuaweiDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "HWANE"

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isNokia7Plus$camera_camera2()Z
    .locals 3

    .line 324
    sget-object v0, Landroidx/camera/camera2/compat/quirk/Device;->INSTANCE:Landroidx/camera/camera2/compat/quirk/Device;

    invoke-virtual {v0}, Landroidx/camera/camera2/compat/quirk/Device;->isNokiaDevice()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 325
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "B2N"

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 326
    const-string v1, "B2N_sprout"

    invoke-static {v1, v0, v2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return v2

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final isOnePlus6$camera_camera2()Z
    .locals 3

    .line 290
    sget-object v0, Landroidx/camera/camera2/compat/quirk/Device;->INSTANCE:Landroidx/camera/camera2/compat/quirk/Device;

    invoke-virtual {v0}, Landroidx/camera/camera2/compat/quirk/Device;->isOnePlusDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OnePlus6"

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isOnePlus6T$camera_camera2()Z
    .locals 3

    .line 293
    sget-object v0, Landroidx/camera/camera2/compat/quirk/Device;->INSTANCE:Landroidx/camera/camera2/compat/quirk/Device;

    invoke-virtual {v0}, Landroidx/camera/camera2/compat/quirk/Device;->isOnePlusDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OnePlus6T"

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isRedmiNote9Pro$camera_camera2()Z
    .locals 3

    .line 311
    sget-object v0, Landroidx/camera/camera2/compat/quirk/Device;->INSTANCE:Landroidx/camera/camera2/compat/quirk/Device;

    invoke-virtual {v0}, Landroidx/camera/camera2/compat/quirk/Device;->isRedmiDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "joyeuse"

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isSamsungA05s$camera_camera2()Z
    .locals 6

    .line 318
    sget-object v0, Landroidx/camera/camera2/compat/quirk/Device;->INSTANCE:Landroidx/camera/camera2/compat/quirk/Device;

    invoke-virtual {v0}, Landroidx/camera/camera2/compat/quirk/Device;->isSamsungDevice()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 319
    const-string v0, "a05s"

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "MODEL"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "toUpperCase(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x2

    const/4 v4, 0x0

    const-string v5, "SM-A057"

    invoke-static {v0, v5, v1, v2, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v3

    :cond_0
    return v1
.end method

.method public final isSamsungJ7Api27Above$camera_camera2()Z
    .locals 3

    .line 306
    sget-object v0, Landroidx/camera/camera2/compat/quirk/Device;->INSTANCE:Landroidx/camera/camera2/compat/quirk/Device;

    invoke-virtual {v0}, Landroidx/camera/camera2/compat/quirk/Device;->isSamsungDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    const-string v0, "J7XELTE"

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-lt v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isSamsungJ7PrimeApi27Above$camera_camera2()Z
    .locals 3

    .line 300
    sget-object v0, Landroidx/camera/camera2/compat/quirk/Device;->INSTANCE:Landroidx/camera/camera2/compat/quirk/Device;

    invoke-virtual {v0}, Landroidx/camera/camera2/compat/quirk/Device;->isSamsungDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    const-string v0, "ON7XELTE"

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-lt v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isSamsungZFold4$camera_camera2()Z
    .locals 3

    .line 330
    sget-object v0, Landroidx/camera/camera2/compat/quirk/Device;->INSTANCE:Landroidx/camera/camera2/compat/quirk/Device;

    invoke-virtual {v0}, Landroidx/camera/camera2/compat/quirk/Device;->isSamsungDevice()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 331
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "q4q"

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 332
    const-string v1, "SCG16"

    invoke-static {v1, v0, v2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 333
    const-string v1, "SC-55C"

    invoke-static {v1, v0, v2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return v2

    :cond_1
    const/4 v0, 0x0

    return v0
.end method
