.class public Landroidx/camera/core/impl/QuirkSettings$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/impl/QuirkSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mEnabledWhenDeviceHasQuirk:Z

.field private mForceDisabledQuirks:Ljava/util/Set;

.field private mForceEnabledQuirks:Ljava/util/Set;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 190
    iput-boolean v0, p0, Landroidx/camera/core/impl/QuirkSettings$Builder;->mEnabledWhenDeviceHasQuirk:Z

    return-void
.end method


# virtual methods
.method public build()Landroidx/camera/core/impl/QuirkSettings;
    .locals 5

    .line 224
    new-instance v0, Landroidx/camera/core/impl/QuirkSettings;

    iget-boolean v1, p0, Landroidx/camera/core/impl/QuirkSettings$Builder;->mEnabledWhenDeviceHasQuirk:Z

    iget-object v2, p0, Landroidx/camera/core/impl/QuirkSettings$Builder;->mForceEnabledQuirks:Ljava/util/Set;

    iget-object v3, p0, Landroidx/camera/core/impl/QuirkSettings$Builder;->mForceDisabledQuirks:Ljava/util/Set;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/camera/core/impl/QuirkSettings;-><init>(ZLjava/util/Set;Ljava/util/Set;Landroidx/camera/core/impl/QuirkSettings$1;)V

    return-object v0
.end method

.method public forceDisableQuirks(Ljava/util/Set;)Landroidx/camera/core/impl/QuirkSettings$Builder;
    .locals 1

    .line 214
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroidx/camera/core/impl/QuirkSettings$Builder;->mForceDisabledQuirks:Ljava/util/Set;

    return-object p0
.end method

.method public forceEnableQuirks(Ljava/util/Set;)Landroidx/camera/core/impl/QuirkSettings$Builder;
    .locals 1

    .line 206
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroidx/camera/core/impl/QuirkSettings$Builder;->mForceEnabledQuirks:Ljava/util/Set;

    return-object p0
.end method

.method public setEnabledWhenDeviceHasQuirk(Z)Landroidx/camera/core/impl/QuirkSettings$Builder;
    .locals 0

    .line 198
    iput-boolean p1, p0, Landroidx/camera/core/impl/QuirkSettings$Builder;->mEnabledWhenDeviceHasQuirk:Z

    return-object p0
.end method
