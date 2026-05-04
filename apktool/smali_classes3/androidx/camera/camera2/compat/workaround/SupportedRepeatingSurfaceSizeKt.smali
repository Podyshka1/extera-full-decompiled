.class public abstract Landroidx/camera/camera2/compat/workaround/SupportedRepeatingSurfaceSizeKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final MINI_PREVIEW_SIZE_HUAWEI_MATE_9:Landroid/util/Size;

.field private static final SIZE_COMPARATOR:Ljava/util/Comparator;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 24
    new-instance v0, Landroid/util/Size;

    const/16 v1, 0x140

    const/16 v2, 0xf0

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    sput-object v0, Landroidx/camera/camera2/compat/workaround/SupportedRepeatingSurfaceSizeKt;->MINI_PREVIEW_SIZE_HUAWEI_MATE_9:Landroid/util/Size;

    .line 25
    new-instance v0, Landroidx/camera/core/impl/utils/CompareSizesByArea;

    invoke-direct {v0}, Landroidx/camera/core/impl/utils/CompareSizesByArea;-><init>()V

    sput-object v0, Landroidx/camera/camera2/compat/workaround/SupportedRepeatingSurfaceSizeKt;->SIZE_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public static final getSupportedRepeatingSurfaceSizes([Landroid/util/Size;)[Landroid/util/Size;
    .locals 7

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    sget-object v0, Landroidx/camera/camera2/compat/quirk/DeviceQuirks;->INSTANCE:Landroidx/camera/camera2/compat/quirk/DeviceQuirks;

    const-class v1, Landroidx/camera/camera2/compat/quirk/RepeatingStreamConstraintForVideoRecordingQuirk;

    invoke-virtual {v0, v1}, Landroidx/camera/camera2/compat/quirk/DeviceQuirks;->get(Ljava/lang/Class;)Landroidx/camera/core/impl/Quirk;

    move-result-object v0

    check-cast v0, Landroidx/camera/camera2/compat/quirk/RepeatingStreamConstraintForVideoRecordingQuirk;

    if-nez v0, :cond_0

    return-object p0

    .line 30
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 31
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p0, v3

    .line 32
    sget-object v5, Landroidx/camera/camera2/compat/workaround/SupportedRepeatingSurfaceSizeKt;->SIZE_COMPARATOR:Ljava/util/Comparator;

    sget-object v6, Landroidx/camera/camera2/compat/workaround/SupportedRepeatingSurfaceSizeKt;->MINI_PREVIEW_SIZE_HUAWEI_MATE_9:Landroid/util/Size;

    invoke-interface {v5, v4, v6}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-ltz v5, :cond_1

    .line 33
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 38
    :cond_2
    new-array p0, v2, [Landroid/util/Size;

    invoke-interface {v0, p0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/util/Size;

    return-object p0
.end method
