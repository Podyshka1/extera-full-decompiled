.class public final Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$DynamicRouteDescriptor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DynamicRouteDescriptor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$DynamicRouteDescriptor$Builder;
    }
.end annotation


# instance fields
.field final mIsGroupable:Z

.field final mIsTransferable:Z

.field final mIsUnselectable:Z

.field final mMediaRouteDescriptor:Landroidx/mediarouter/media/MediaRouteDescriptor;

.field final mSelectionState:I


# direct methods
.method constructor <init>(Landroidx/mediarouter/media/MediaRouteDescriptor;IZZZ)V
    .locals 0

    .line 728
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 729
    iput-object p1, p0, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$DynamicRouteDescriptor;->mMediaRouteDescriptor:Landroidx/mediarouter/media/MediaRouteDescriptor;

    .line 730
    iput p2, p0, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$DynamicRouteDescriptor;->mSelectionState:I

    .line 731
    iput-boolean p3, p0, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$DynamicRouteDescriptor;->mIsUnselectable:Z

    .line 732
    iput-boolean p4, p0, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$DynamicRouteDescriptor;->mIsGroupable:Z

    .line 733
    iput-boolean p5, p0, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$DynamicRouteDescriptor;->mIsTransferable:Z

    return-void
.end method

.method static fromBundle(Landroid/os/Bundle;)Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$DynamicRouteDescriptor;
    .locals 7

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 803
    :cond_0
    const-string v0, "mrDescriptor"

    .line 804
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 803
    invoke-static {v0}, Landroidx/mediarouter/media/MediaRouteDescriptor;->fromBundle(Landroid/os/Bundle;)Landroidx/mediarouter/media/MediaRouteDescriptor;

    move-result-object v2

    .line 805
    const-string v0, "selectionState"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 806
    const-string v0, "isUnselectable"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 807
    const-string v0, "isGroupable"

    invoke-virtual {p0, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 808
    const-string v0, "isTransferable"

    invoke-virtual {p0, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 809
    new-instance v1, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$DynamicRouteDescriptor;

    invoke-direct/range {v1 .. v6}, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$DynamicRouteDescriptor;-><init>(Landroidx/mediarouter/media/MediaRouteDescriptor;IZZZ)V

    return-object v1
.end method


# virtual methods
.method public getRouteDescriptor()Landroidx/mediarouter/media/MediaRouteDescriptor;
    .locals 1

    .line 741
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$DynamicRouteDescriptor;->mMediaRouteDescriptor:Landroidx/mediarouter/media/MediaRouteDescriptor;

    return-object v0
.end method

.method public getSelectionState()I
    .locals 1

    .line 748
    iget v0, p0, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$DynamicRouteDescriptor;->mSelectionState:I

    return v0
.end method

.method public isGroupable()Z
    .locals 1

    .line 773
    iget-boolean v0, p0, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$DynamicRouteDescriptor;->mIsGroupable:Z

    return v0
.end method

.method public isTransferable()Z
    .locals 1

    .line 784
    iget-boolean v0, p0, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$DynamicRouteDescriptor;->mIsTransferable:Z

    return v0
.end method

.method public isUnselectable()Z
    .locals 1

    .line 762
    iget-boolean v0, p0, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$DynamicRouteDescriptor;->mIsUnselectable:Z

    return v0
.end method
