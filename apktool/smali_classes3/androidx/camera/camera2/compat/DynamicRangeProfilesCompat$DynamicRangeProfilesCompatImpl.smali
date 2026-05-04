.class public interface abstract Landroidx/camera/camera2/compat/DynamicRangeProfilesCompat$DynamicRangeProfilesCompatImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/compat/DynamicRangeProfilesCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DynamicRangeProfilesCompatImpl"
.end annotation


# virtual methods
.method public abstract getDynamicRangeCaptureRequestConstraints(Landroidx/camera/core/DynamicRange;)Ljava/util/Set;
.end method

.method public abstract getSupportedDynamicRanges()Ljava/util/Set;
.end method

.method public abstract unwrap()Landroid/hardware/camera2/params/DynamicRangeProfiles;
.end method
