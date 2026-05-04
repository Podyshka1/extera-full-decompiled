.class public final Landroidx/mediarouter/media/MediaRouterParams$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/media/MediaRouterParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field mDialogType:I

.field mExtras:Landroid/os/Bundle;

.field mMediaTransferEnabled:Z

.field mOutputSwitcherEnabled:Z

.field mTransferToLocalEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 144
    iput v0, p0, Landroidx/mediarouter/media/MediaRouterParams$Builder;->mDialogType:I

    .line 146
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroidx/mediarouter/media/MediaRouterParams$Builder;->mMediaTransferEnabled:Z

    return-void
.end method

.method public constructor <init>(Landroidx/mediarouter/media/MediaRouterParams;)V
    .locals 3

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 144
    iput v0, p0, Landroidx/mediarouter/media/MediaRouterParams$Builder;->mDialogType:I

    .line 146
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroidx/mediarouter/media/MediaRouterParams$Builder;->mMediaTransferEnabled:Z

    if-eqz p1, :cond_2

    .line 167
    iget v0, p1, Landroidx/mediarouter/media/MediaRouterParams;->mDialogType:I

    iput v0, p0, Landroidx/mediarouter/media/MediaRouterParams$Builder;->mDialogType:I

    .line 168
    iget-boolean v0, p1, Landroidx/mediarouter/media/MediaRouterParams;->mOutputSwitcherEnabled:Z

    iput-boolean v0, p0, Landroidx/mediarouter/media/MediaRouterParams$Builder;->mOutputSwitcherEnabled:Z

    .line 169
    iget-boolean v0, p1, Landroidx/mediarouter/media/MediaRouterParams;->mTransferToLocalEnabled:Z

    iput-boolean v0, p0, Landroidx/mediarouter/media/MediaRouterParams$Builder;->mTransferToLocalEnabled:Z

    .line 170
    iget-boolean v0, p1, Landroidx/mediarouter/media/MediaRouterParams;->mMediaTransferReceiverEnabled:Z

    iput-boolean v0, p0, Landroidx/mediarouter/media/MediaRouterParams$Builder;->mMediaTransferEnabled:Z

    .line 171
    iget-object v0, p1, Landroidx/mediarouter/media/MediaRouterParams;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    new-instance v0, Landroid/os/Bundle;

    iget-object p1, p1, Landroidx/mediarouter/media/MediaRouterParams;->mExtras:Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object p1, v0

    :goto_1
    iput-object p1, p0, Landroidx/mediarouter/media/MediaRouterParams$Builder;->mExtras:Landroid/os/Bundle;

    return-void

    .line 164
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo v0, "params should not be null!"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public build()Landroidx/mediarouter/media/MediaRouterParams;
    .locals 1

    .line 273
    new-instance v0, Landroidx/mediarouter/media/MediaRouterParams;

    invoke-direct {v0, p0}, Landroidx/mediarouter/media/MediaRouterParams;-><init>(Landroidx/mediarouter/media/MediaRouterParams$Builder;)V

    return-object v0
.end method

.method public setDialogType(I)Landroidx/mediarouter/media/MediaRouterParams$Builder;
    .locals 0

    .line 189
    iput p1, p0, Landroidx/mediarouter/media/MediaRouterParams$Builder;->mDialogType:I

    return-object p0
.end method

.method public setMediaTransferReceiverEnabled(Z)Landroidx/mediarouter/media/MediaRouterParams$Builder;
    .locals 2

    .line 209
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 210
    iput-boolean p1, p0, Landroidx/mediarouter/media/MediaRouterParams$Builder;->mMediaTransferEnabled:Z

    :cond_0
    return-object p0
.end method

.method public setOutputSwitcherEnabled(Z)Landroidx/mediarouter/media/MediaRouterParams$Builder;
    .locals 2

    .line 229
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 230
    iput-boolean p1, p0, Landroidx/mediarouter/media/MediaRouterParams$Builder;->mOutputSwitcherEnabled:Z

    :cond_0
    return-object p0
.end method

.method public setTransferToLocalEnabled(Z)Landroidx/mediarouter/media/MediaRouterParams$Builder;
    .locals 2

    .line 251
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 252
    iput-boolean p1, p0, Landroidx/mediarouter/media/MediaRouterParams$Builder;->mTransferToLocalEnabled:Z

    :cond_0
    return-object p0
.end method
