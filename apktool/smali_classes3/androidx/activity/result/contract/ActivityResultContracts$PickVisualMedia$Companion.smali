.class public final Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 639
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getGmsPicker$activity_release(Landroid/content/Context;)Landroid/content/pm/ResolveInfo;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 749
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 750
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.gms.provider.action.PICK_IMAGES"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x110000

    .line 749
    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    return-object p1
.end method

.method public final getSystemFallbackPicker$activity_release(Landroid/content/Context;)Landroid/content/pm/ResolveInfo;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 735
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 736
    new-instance v0, Landroid/content/Intent;

    const-string v1, "androidx.activity.result.contract.action.PICK_IMAGES"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x110000

    .line 735
    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    return-object p1
.end method

.method public final getVisualMimeType$activity_release(Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$VisualMediaType;)Ljava/lang/String;
    .locals 1

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 757
    instance-of v0, p1, Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$ImageOnly;

    if-eqz v0, :cond_0

    const-string p1, "image/*"

    return-object p1

    .line 760
    :cond_0
    instance-of p1, p1, Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$ImageAndVideo;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method

.method public final isGmsPickerAvailable$activity_release(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 743
    invoke-virtual {p0, p1}, Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$Companion;->getGmsPicker$activity_release(Landroid/content/Context;)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final isPhotoPickerAvailable(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 702
    invoke-virtual {p0}, Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$Companion;->isSystemPickerAvailable$activity_release()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$Companion;->isSystemFallbackPickerAvailable$activity_release(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 703
    invoke-virtual {p0, p1}, Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$Companion;->isGmsPickerAvailable$activity_release(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final isSystemFallbackPickerAvailable$activity_release(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 729
    invoke-virtual {p0, p1}, Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$Companion;->getSystemFallbackPicker$activity_release(Landroid/content/Context;)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final isSystemPickerAvailable$activity_release()Z
    .locals 4

    .line 716
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const/4 v2, 0x1

    if-lt v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x0

    const/16 v3, 0x1e

    if-lt v0, v3, :cond_1

    .line 721
    invoke-static {v3}, Landroid/os/ext/SdkExtensions;->getExtensionVersion(I)I

    move-result v0

    const/4 v3, 0x2

    if-lt v0, v3, :cond_1

    return v2

    :cond_1
    return v1
.end method
