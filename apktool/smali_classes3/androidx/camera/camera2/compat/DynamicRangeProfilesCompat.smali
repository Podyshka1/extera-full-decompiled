.class public final Landroidx/camera/camera2/compat/DynamicRangeProfilesCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/compat/DynamicRangeProfilesCompat$Companion;,
        Landroidx/camera/camera2/compat/DynamicRangeProfilesCompat$DynamicRangeProfilesCompatImpl;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/camera2/compat/DynamicRangeProfilesCompat$Companion;


# instance fields
.field private final impl:Landroidx/camera/camera2/compat/DynamicRangeProfilesCompat$DynamicRangeProfilesCompatImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/camera2/compat/DynamicRangeProfilesCompat$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/compat/DynamicRangeProfilesCompat$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/camera/camera2/compat/DynamicRangeProfilesCompat;->Companion:Landroidx/camera/camera2/compat/DynamicRangeProfilesCompat$Companion;

    return-void
.end method

.method public constructor <init>(Landroidx/camera/camera2/compat/DynamicRangeProfilesCompat$DynamicRangeProfilesCompatImpl;)V
    .locals 1

    const-string v0, "impl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Landroidx/camera/camera2/compat/DynamicRangeProfilesCompat;->impl:Landroidx/camera/camera2/compat/DynamicRangeProfilesCompat$DynamicRangeProfilesCompatImpl;

    return-void
.end method


# virtual methods
.method public final getDynamicRangeCaptureRequestConstraints(Landroidx/camera/core/DynamicRange;)Ljava/util/Set;
    .locals 1

    const-string v0, "dynamicRange"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Landroidx/camera/camera2/compat/DynamicRangeProfilesCompat;->impl:Landroidx/camera/camera2/compat/DynamicRangeProfilesCompat$DynamicRangeProfilesCompatImpl;

    invoke-interface {v0, p1}, Landroidx/camera/camera2/compat/DynamicRangeProfilesCompat$DynamicRangeProfilesCompatImpl;->getDynamicRangeCaptureRequestConstraints(Landroidx/camera/core/DynamicRange;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public final getSupportedDynamicRanges()Ljava/util/Set;
    .locals 1

    .line 32
    iget-object v0, p0, Landroidx/camera/camera2/compat/DynamicRangeProfilesCompat;->impl:Landroidx/camera/camera2/compat/DynamicRangeProfilesCompat$DynamicRangeProfilesCompatImpl;

    invoke-interface {v0}, Landroidx/camera/camera2/compat/DynamicRangeProfilesCompat$DynamicRangeProfilesCompatImpl;->getSupportedDynamicRanges()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final toDynamicRangeProfiles()Landroid/hardware/camera2/params/DynamicRangeProfiles;
    .locals 4

    .line 253
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    .line 91
    iget-object v0, p0, Landroidx/camera/camera2/compat/DynamicRangeProfilesCompat;->impl:Landroidx/camera/camera2/compat/DynamicRangeProfilesCompat$DynamicRangeProfilesCompatImpl;

    invoke-interface {v0}, Landroidx/camera/camera2/compat/DynamicRangeProfilesCompat$DynamicRangeProfilesCompatImpl;->unwrap()Landroid/hardware/camera2/params/DynamicRangeProfiles;

    move-result-object v0

    return-object v0

    .line 254
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DynamicRangesCompat can only be converted to DynamicRangeProfiles on API 33 or higher."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is not supported on API "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " (requires API "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 253
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
