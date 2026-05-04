.class public final Landroidx/work/impl/constraints/controllers/NetworkConnectedController;
.super Landroidx/work/impl/constraints/controllers/BaseConstraintController;
.source "SourceFile"


# instance fields
.field private final reason:I


# direct methods
.method public constructor <init>(Landroidx/work/impl/constraints/trackers/ConstraintTracker;)V
    .locals 1

    const-string/jumbo v0, "tracker"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    invoke-direct {p0, p1}, Landroidx/work/impl/constraints/controllers/BaseConstraintController;-><init>(Landroidx/work/impl/constraints/trackers/ConstraintTracker;)V

    const/4 p1, 0x7

    .line 159
    iput p1, p0, Landroidx/work/impl/constraints/controllers/NetworkConnectedController;->reason:I

    return-void
.end method


# virtual methods
.method protected getReason()I
    .locals 1

    .line 159
    iget v0, p0, Landroidx/work/impl/constraints/controllers/NetworkConnectedController;->reason:I

    return v0
.end method

.method public hasConstraint(Landroidx/work/impl/model/WorkSpec;)Z
    .locals 1

    const-string/jumbo v0, "workSpec"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    iget-object p1, p1, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    invoke-virtual {p1}, Landroidx/work/Constraints;->getRequiredNetworkType()Landroidx/work/NetworkType;

    move-result-object p1

    sget-object v0, Landroidx/work/NetworkType;->CONNECTED:Landroidx/work/NetworkType;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected isConstrained(Landroidx/work/impl/constraints/NetworkState;)Z
    .locals 2

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    invoke-virtual {p1}, Landroidx/work/impl/constraints/NetworkState;->isBlocked()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroidx/work/impl/constraints/NetworkState;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Landroidx/work/impl/constraints/NetworkState;->isValidated()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic isConstrained(Ljava/lang/Object;)Z
    .locals 0

    .line 157
    check-cast p1, Landroidx/work/impl/constraints/NetworkState;

    invoke-virtual {p0, p1}, Landroidx/work/impl/constraints/controllers/NetworkConnectedController;->isConstrained(Landroidx/work/impl/constraints/NetworkState;)Z

    move-result p1

    return p1
.end method
