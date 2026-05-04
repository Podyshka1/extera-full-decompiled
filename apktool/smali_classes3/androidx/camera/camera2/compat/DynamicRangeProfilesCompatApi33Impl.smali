.class public final Landroidx/camera/camera2/compat/DynamicRangeProfilesCompatApi33Impl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/compat/DynamicRangeProfilesCompat$DynamicRangeProfilesCompatImpl;


# instance fields
.field private final dynamicRangeProfiles:Landroid/hardware/camera2/params/DynamicRangeProfiles;


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/params/DynamicRangeProfiles;)V
    .locals 1

    const-string v0, "dynamicRangeProfiles"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Landroidx/camera/camera2/compat/DynamicRangeProfilesCompatApi33Impl;->dynamicRangeProfiles:Landroid/hardware/camera2/params/DynamicRangeProfiles;

    return-void
.end method

.method private final dynamicRangeToFirstSupportedProfile(Landroidx/camera/core/DynamicRange;)Ljava/lang/Long;
    .locals 2

    .line 52
    sget-object v0, Landroidx/camera/camera2/internal/DynamicRangeConversions;->INSTANCE:Landroidx/camera/camera2/internal/DynamicRangeConversions;

    .line 54
    iget-object v1, p0, Landroidx/camera/camera2/compat/DynamicRangeProfilesCompatApi33Impl;->dynamicRangeProfiles:Landroid/hardware/camera2/params/DynamicRangeProfiles;

    .line 52
    invoke-virtual {v0, p1, v1}, Landroidx/camera/camera2/internal/DynamicRangeConversions;->dynamicRangeToFirstSupportedProfile(Landroidx/camera/core/DynamicRange;Landroid/hardware/camera2/params/DynamicRangeProfiles;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method private final profileSetToDynamicRangeSet(Ljava/util/Set;)Ljava/util/Set;
    .locals 3

    .line 68
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object p1

    return-object p1

    .line 71
    :cond_0
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 72
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    .line 73
    invoke-direct {p0, v1, v2}, Landroidx/camera/camera2/compat/DynamicRangeProfilesCompatApi33Impl;->profileToDynamicRange(J)Landroidx/camera/core/DynamicRange;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 75
    :cond_2
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    const-string/jumbo v0, "unmodifiableSet(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final profileToDynamicRange(J)Landroidx/camera/core/DynamicRange;
    .locals 4

    .line 58
    sget-object v0, Landroidx/camera/camera2/internal/DynamicRangeConversions;->INSTANCE:Landroidx/camera/camera2/internal/DynamicRangeConversions;

    invoke-virtual {v0, p1, p2}, Landroidx/camera/camera2/internal/DynamicRangeConversions;->profileToDynamicRange(J)Landroidx/camera/core/DynamicRange;

    move-result-object v0

    if-nez v0, :cond_0

    .line 60
    sget-object v1, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    .line 119
    const-string v1, "CXCP"

    invoke-static {v1}, Landroidx/camera/core/Logger;->isWarnEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v1

    .line 61
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dynamic range profile cannot be converted to a DynamicRange object: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 120
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0
.end method


# virtual methods
.method public getDynamicRangeCaptureRequestConstraints(Landroidx/camera/core/DynamicRange;)Ljava/util/Set;
    .locals 2

    const-string v0, "dynamicRange"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-direct {p0, p1}, Landroidx/camera/camera2/compat/DynamicRangeProfilesCompatApi33Impl;->dynamicRangeToFirstSupportedProfile(Landroidx/camera/core/DynamicRange;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 39
    iget-object p1, p0, Landroidx/camera/camera2/compat/DynamicRangeProfilesCompatApi33Impl;->dynamicRangeProfiles:Landroid/hardware/camera2/params/DynamicRangeProfiles;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/params/DynamicRangeProfiles;->getProfileCaptureRequestConstraints(J)Ljava/util/Set;

    move-result-object p1

    const-string v0, "getProfileCaptureRequestConstraints(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-direct {p0, p1}, Landroidx/camera/camera2/compat/DynamicRangeProfilesCompatApi33Impl;->profileSetToDynamicRangeSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    return-object p1

    .line 37
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DynamicRange is not supported: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSupportedDynamicRanges()Ljava/util/Set;
    .locals 2

    .line 31
    iget-object v0, p0, Landroidx/camera/camera2/compat/DynamicRangeProfilesCompatApi33Impl;->dynamicRangeProfiles:Landroid/hardware/camera2/params/DynamicRangeProfiles;

    invoke-virtual {v0}, Landroid/hardware/camera2/params/DynamicRangeProfiles;->getSupportedProfiles()Ljava/util/Set;

    move-result-object v0

    const-string v1, "getSupportedProfiles(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroidx/camera/camera2/compat/DynamicRangeProfilesCompatApi33Impl;->profileSetToDynamicRangeSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public unwrap()Landroid/hardware/camera2/params/DynamicRangeProfiles;
    .locals 1

    .line 49
    iget-object v0, p0, Landroidx/camera/camera2/compat/DynamicRangeProfilesCompatApi33Impl;->dynamicRangeProfiles:Landroid/hardware/camera2/params/DynamicRangeProfiles;

    return-object v0
.end method
