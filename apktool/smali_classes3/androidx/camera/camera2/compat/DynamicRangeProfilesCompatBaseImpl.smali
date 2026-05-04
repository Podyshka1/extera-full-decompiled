.class public final Landroidx/camera/camera2/compat/DynamicRangeProfilesCompatBaseImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/compat/DynamicRangeProfilesCompat$DynamicRangeProfilesCompatImpl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/compat/DynamicRangeProfilesCompatBaseImpl$Companion;
    }
.end annotation


# static fields
.field private static final COMPAT_INSTANCE:Landroidx/camera/camera2/compat/DynamicRangeProfilesCompat;

.field public static final Companion:Landroidx/camera/camera2/compat/DynamicRangeProfilesCompatBaseImpl$Companion;

.field private static final SDR_ONLY:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/camera2/compat/DynamicRangeProfilesCompatBaseImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/compat/DynamicRangeProfilesCompatBaseImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/camera/camera2/compat/DynamicRangeProfilesCompatBaseImpl;->Companion:Landroidx/camera/camera2/compat/DynamicRangeProfilesCompatBaseImpl$Companion;

    .line 52
    new-instance v0, Landroidx/camera/camera2/compat/DynamicRangeProfilesCompat;

    new-instance v1, Landroidx/camera/camera2/compat/DynamicRangeProfilesCompatBaseImpl;

    invoke-direct {v1}, Landroidx/camera/camera2/compat/DynamicRangeProfilesCompatBaseImpl;-><init>()V

    invoke-direct {v0, v1}, Landroidx/camera/camera2/compat/DynamicRangeProfilesCompat;-><init>(Landroidx/camera/camera2/compat/DynamicRangeProfilesCompat$DynamicRangeProfilesCompatImpl;)V

    sput-object v0, Landroidx/camera/camera2/compat/DynamicRangeProfilesCompatBaseImpl;->COMPAT_INSTANCE:Landroidx/camera/camera2/compat/DynamicRangeProfilesCompat;

    .line 53
    sget-object v0, Landroidx/camera/core/DynamicRange;->SDR:Landroidx/camera/core/DynamicRange;

    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Landroidx/camera/camera2/compat/DynamicRangeProfilesCompatBaseImpl;->SDR_ONLY:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getCOMPAT_INSTANCE$cp()Landroidx/camera/camera2/compat/DynamicRangeProfilesCompat;
    .locals 1

    .line 23
    sget-object v0, Landroidx/camera/camera2/compat/DynamicRangeProfilesCompatBaseImpl;->COMPAT_INSTANCE:Landroidx/camera/camera2/compat/DynamicRangeProfilesCompat;

    return-object v0
.end method


# virtual methods
.method public getDynamicRangeCaptureRequestConstraints(Landroidx/camera/core/DynamicRange;)Ljava/util/Set;
    .locals 3

    const-string v0, "dynamicRange"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    sget-object v0, Landroidx/camera/core/DynamicRange;->SDR:Landroidx/camera/core/DynamicRange;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DynamicRange is not supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 31
    invoke-static {v0, p1}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 35
    sget-object p1, Landroidx/camera/camera2/compat/DynamicRangeProfilesCompatBaseImpl;->SDR_ONLY:Ljava/util/Set;

    return-object p1
.end method

.method public getSupportedDynamicRanges()Ljava/util/Set;
    .locals 1

    .line 26
    sget-object v0, Landroidx/camera/camera2/compat/DynamicRangeProfilesCompatBaseImpl;->SDR_ONLY:Ljava/util/Set;

    return-object v0
.end method

.method public unwrap()Landroid/hardware/camera2/params/DynamicRangeProfiles;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
