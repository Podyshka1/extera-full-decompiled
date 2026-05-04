.class public final Landroidx/work/impl/constraints/controllers/NetworkMeteredController;
.super Landroidx/work/impl/constraints/controllers/BaseConstraintController;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/impl/constraints/controllers/NetworkMeteredController$Companion;
    }
.end annotation


# static fields
.field private static final Companion:Landroidx/work/impl/constraints/controllers/NetworkMeteredController$Companion;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final reason:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/work/impl/constraints/controllers/NetworkMeteredController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/work/impl/constraints/controllers/NetworkMeteredController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/work/impl/constraints/controllers/NetworkMeteredController;->Companion:Landroidx/work/impl/constraints/controllers/NetworkMeteredController$Companion;

    .line 193
    const-string v0, "NetworkMeteredCtrlr"

    invoke-static {v0}, Landroidx/work/Logger;->tagWithPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "tagWithPrefix(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Landroidx/work/impl/constraints/controllers/NetworkMeteredController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroidx/work/impl/constraints/trackers/ConstraintTracker;)V
    .locals 1

    const-string/jumbo v0, "tracker"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    invoke-direct {p0, p1}, Landroidx/work/impl/constraints/controllers/BaseConstraintController;-><init>(Landroidx/work/impl/constraints/trackers/ConstraintTracker;)V

    const/4 p1, 0x7

    .line 171
    iput p1, p0, Landroidx/work/impl/constraints/controllers/NetworkMeteredController;->reason:I

    return-void
.end method


# virtual methods
.method protected getReason()I
    .locals 1

    .line 171
    iget v0, p0, Landroidx/work/impl/constraints/controllers/NetworkMeteredController;->reason:I

    return v0
.end method

.method public hasConstraint(Landroidx/work/impl/model/WorkSpec;)Z
    .locals 1

    const-string/jumbo v0, "workSpec"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    iget-object p1, p1, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    invoke-virtual {p1}, Landroidx/work/Constraints;->getRequiredNetworkType()Landroidx/work/NetworkType;

    move-result-object p1

    sget-object v0, Landroidx/work/NetworkType;->METERED:Landroidx/work/NetworkType;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected isConstrained(Landroidx/work/impl/constraints/NetworkState;)Z
    .locals 5

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ge v0, v1, :cond_2

    .line 182
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v0

    .line 184
    sget-object v1, Landroidx/work/impl/constraints/controllers/NetworkMeteredController;->TAG:Ljava/lang/String;

    .line 185
    const-string v4, "Metered network constraint is not supported before API 26, only checking for connected state."

    .line 183
    invoke-virtual {v0, v1, v4}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-virtual {p1}, Landroidx/work/impl/constraints/NetworkState;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroidx/work/impl/constraints/NetworkState;->isBlocked()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    return v3

    :cond_1
    :goto_0
    return v2

    .line 189
    :cond_2
    invoke-virtual {p1}, Landroidx/work/impl/constraints/NetworkState;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroidx/work/impl/constraints/NetworkState;->isMetered()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroidx/work/impl/constraints/NetworkState;->isBlocked()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    return v3

    :cond_4
    :goto_1
    return v2
.end method

.method public bridge synthetic isConstrained(Ljava/lang/Object;)Z
    .locals 0

    .line 169
    check-cast p1, Landroidx/work/impl/constraints/NetworkState;

    invoke-virtual {p0, p1}, Landroidx/work/impl/constraints/controllers/NetworkMeteredController;->isConstrained(Landroidx/work/impl/constraints/NetworkState;)Z

    move-result p1

    return p1
.end method
