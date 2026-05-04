.class public final Landroidx/core/backported/fixes/BackportedFixManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/backported/fixes/BackportedFixManager$WhenMappings;
    }
.end annotation


# instance fields
.field private final resolver:Landroidx/core/backported/fixes/StatusResolver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    new-instance v0, Landroidx/core/backported/fixes/SystemPropertyResolver;

    invoke-direct {v0}, Landroidx/core/backported/fixes/SystemPropertyResolver;-><init>()V

    .line 38
    invoke-direct {p0, v0}, Landroidx/core/backported/fixes/BackportedFixManager;-><init>(Landroidx/core/backported/fixes/StatusResolver;)V

    return-void
.end method

.method public constructor <init>(Landroidx/core/backported/fixes/StatusResolver;)V
    .locals 1

    const-string v0, "resolver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/backported/fixes/BackportedFixManager;->resolver:Landroidx/core/backported/fixes/StatusResolver;

    return-void
.end method


# virtual methods
.method public final getStatus(Landroidx/core/backported/fixes/KnownIssue;)Landroidx/core/backported/fixes/Status;
    .locals 2

    const-string v0, "ki"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-virtual {p1}, Landroidx/core/backported/fixes/KnownIssue;->getPrecondition$core_backported_fixes()Lkotlin/jvm/functions/Function0;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    invoke-virtual {p1}, Landroidx/core/backported/fixes/KnownIssue;->getManuallyTestedFingerprints$core_backported_fixes()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    sget-object p1, Landroidx/core/backported/fixes/Status;->Fixed:Landroidx/core/backported/fixes/Status;

    return-object p1

    .line 69
    :cond_0
    iget-object v0, p0, Landroidx/core/backported/fixes/BackportedFixManager;->resolver:Landroidx/core/backported/fixes/StatusResolver;

    invoke-interface {v0, p1}, Landroidx/core/backported/fixes/StatusResolver;->getStatus(Landroidx/core/backported/fixes/KnownIssue;)Landroidx/core/backported/fixes/Status;

    move-result-object p1

    return-object p1

    .line 72
    :cond_1
    sget-object p1, Landroidx/core/backported/fixes/Status;->NotApplicable:Landroidx/core/backported/fixes/Status;

    return-object p1
.end method

.method public final isFixed(Landroidx/core/backported/fixes/KnownIssue;)Z
    .locals 3

    const-string v0, "ki"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0, p1}, Landroidx/core/backported/fixes/BackportedFixManager;->getStatus(Landroidx/core/backported/fixes/KnownIssue;)Landroidx/core/backported/fixes/Status;

    move-result-object p1

    sget-object v0, Landroidx/core/backported/fixes/BackportedFixManager$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    return v0

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_1
    return v1

    :cond_2
    return v0
.end method
