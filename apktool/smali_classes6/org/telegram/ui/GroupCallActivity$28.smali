.class Lorg/telegram/ui/GroupCallActivity$28;
.super Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/GroupCallActivity;-><init>(Landroid/app/Activity;Lorg/telegram/messenger/AccountInstance;Lorg/telegram/messenger/ChatObject$Call;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$InputPeer;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/GroupCallActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/GroupCallActivity;Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;Ljava/util/ArrayList;Lorg/telegram/messenger/ChatObject$Call;Lorg/telegram/ui/GroupCallActivity;)V
    .locals 0

    .line 5021
    iput-object p1, p0, Lorg/telegram/ui/GroupCallActivity$28;->this$0:Lorg/telegram/ui/GroupCallActivity;

    move-object p1, p0

    invoke-direct/range {p1 .. p7}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;-><init>(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;Ljava/util/ArrayList;Lorg/telegram/messenger/ChatObject$Call;Lorg/telegram/ui/GroupCallActivity;)V

    return-void
.end method


# virtual methods
.method protected canHideUI()Z
    .locals 1

    .line 5109
    invoke-super {p0}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->canHideUI()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$28;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object v0, v0, Lorg/telegram/ui/GroupCallActivity;->previewDialog:Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1

    .line 5034
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$28;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetscrimRenderer(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    move-result-object v0

    if-ne p2, v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 5037
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method protected onBackPressed()V
    .locals 1

    .line 5114
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$28;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/GroupCallActivity;->onBackPressed()V

    return-void
.end method

.method protected onFullScreenModeChanged(Z)V
    .locals 6

    .line 5042
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$28;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0, p1}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fputdelayedGroupCallUpdated(Lorg/telegram/ui/GroupCallActivity;Z)V

    .line 5043
    sget-boolean v0, Lorg/telegram/ui/GroupCallActivity;->isTabletMode:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    if-nez p1, :cond_8

    .line 5044
    iget-object p1, p0, Lorg/telegram/ui/GroupCallActivity$28;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {p1}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetrenderersContainer(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    move-result-object p1

    iget-boolean p1, p1, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->inFullscreenMode:Z

    if-eqz p1, :cond_8

    .line 5045
    iget-object p1, p0, Lorg/telegram/ui/GroupCallActivity$28;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object v0, p1, Lorg/telegram/ui/GroupCallActivity;->tabletGridAdapter:Lorg/telegram/ui/GroupCallTabletGridAdapter;

    iget-object p1, p1, Lorg/telegram/ui/GroupCallActivity;->tabletVideoGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, p1, v2, v1}, Lorg/telegram/ui/GroupCallTabletGridAdapter;->setVisibility(Lorg/telegram/ui/Components/RecyclerListView;ZZ)V

    return-void

    :cond_0
    const/16 v0, 0x8

    if-eqz p1, :cond_3

    .line 5049
    iget-object v3, p0, Lorg/telegram/ui/GroupCallActivity$28;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetundoView(Lorg/telegram/ui/GroupCallActivity;)[Lorg/telegram/ui/Components/UndoView;

    move-result-object v3

    aget-object v3, v3, v2

    invoke-virtual {v3, v2, v1}, Lorg/telegram/ui/Components/UndoView;->hide(ZI)V

    .line 5050
    iget-object v3, p0, Lorg/telegram/ui/GroupCallActivity$28;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetrenderersContainer(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->undoView:[Lorg/telegram/ui/Components/UndoView;

    aget-object v3, v3, v2

    const/4 v4, 0x2

    invoke-virtual {v3, v2, v4}, Lorg/telegram/ui/Components/UndoView;->hide(ZI)V

    .line 5051
    iget-object v3, p0, Lorg/telegram/ui/GroupCallActivity$28;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetrenderersContainer(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    move-result-object v3

    iget-boolean v3, v3, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->inFullscreenMode:Z

    if-nez v3, :cond_1

    .line 5052
    iget-object v3, p0, Lorg/telegram/ui/GroupCallActivity$28;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetlistView(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 5053
    iget-object v3, p0, Lorg/telegram/ui/GroupCallActivity$28;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetactionBar(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5054
    iget-object v3, p0, Lorg/telegram/ui/GroupCallActivity$28;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetwatchersView(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/GroupCallActivity$WatchersView;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 5055
    iget-object v3, p0, Lorg/telegram/ui/GroupCallActivity$28;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetwatchersView(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/GroupCallActivity$WatchersView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5058
    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/GroupCallActivity$28;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3, v1, v2}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$mupdateState(Lorg/telegram/ui/GroupCallActivity;ZZ)V

    .line 5059
    iget-object v3, p0, Lorg/telegram/ui/GroupCallActivity$28;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetbuttonsContainer(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/conference/GroupCallActivityButtonsLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->requestLayout()V

    .line 5060
    iget-object v3, p0, Lorg/telegram/ui/GroupCallActivity$28;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object v3, v3, Lorg/telegram/ui/GroupCallActivity;->fullscreenUsersListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_2

    .line 5061
    iget-object v3, p0, Lorg/telegram/ui/GroupCallActivity$28;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object v3, v3, Lorg/telegram/ui/GroupCallActivity;->fullscreenUsersListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 5062
    iget-object v3, p0, Lorg/telegram/ui/GroupCallActivity$28;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object v4, v3, Lorg/telegram/ui/GroupCallActivity;->fullscreenAdapter:Lorg/telegram/ui/Components/GroupCallFullscreenAdapter;

    iget-object v3, v3, Lorg/telegram/ui/GroupCallActivity;->fullscreenUsersListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v3, v1}, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter;->setVisibility(Lorg/telegram/ui/Components/RecyclerListView;Z)V

    .line 5063
    iget-object v3, p0, Lorg/telegram/ui/GroupCallActivity$28;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object v4, v3, Lorg/telegram/ui/GroupCallActivity;->fullscreenAdapter:Lorg/telegram/ui/Components/GroupCallFullscreenAdapter;

    iget-object v3, v3, Lorg/telegram/ui/GroupCallActivity;->fullscreenUsersListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v2, v3}, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter;->update(ZLorg/telegram/ui/Components/RecyclerListView;)V

    goto/16 :goto_2

    .line 5065
    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/GroupCallActivity$28;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object v4, v3, Lorg/telegram/ui/GroupCallActivity;->fullscreenAdapter:Lorg/telegram/ui/Components/GroupCallFullscreenAdapter;

    iget-object v3, v3, Lorg/telegram/ui/GroupCallActivity;->fullscreenUsersListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v3, v1}, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter;->setVisibility(Lorg/telegram/ui/Components/RecyclerListView;Z)V

    .line 5066
    iget-object v3, p0, Lorg/telegram/ui/GroupCallActivity$28;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3, v1}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$mapplyCallParticipantUpdates(Lorg/telegram/ui/GroupCallActivity;Z)V

    goto/16 :goto_2

    .line 5069
    :cond_3
    iget-object v3, p0, Lorg/telegram/ui/GroupCallActivity$28;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetrenderersContainer(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    move-result-object v3

    iget-boolean v3, v3, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->inFullscreenMode:Z

    if-nez v3, :cond_4

    .line 5070
    iget-object v3, p0, Lorg/telegram/ui/GroupCallActivity$28;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object v3, v3, Lorg/telegram/ui/GroupCallActivity;->fullscreenUsersListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 5071
    iget-object v3, p0, Lorg/telegram/ui/GroupCallActivity$28;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object v4, v3, Lorg/telegram/ui/GroupCallActivity;->fullscreenAdapter:Lorg/telegram/ui/Components/GroupCallFullscreenAdapter;

    iget-object v3, v3, Lorg/telegram/ui/GroupCallActivity;->fullscreenUsersListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v3, v2}, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter;->setVisibility(Lorg/telegram/ui/Components/RecyclerListView;Z)V

    goto :goto_0

    .line 5073
    :cond_4
    iget-object v3, p0, Lorg/telegram/ui/GroupCallActivity$28;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetactionBar(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 5074
    iget-object v3, p0, Lorg/telegram/ui/GroupCallActivity$28;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetlistView(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 5075
    iget-object v3, p0, Lorg/telegram/ui/GroupCallActivity$28;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetwatchersView(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/GroupCallActivity$WatchersView;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 5076
    iget-object v3, p0, Lorg/telegram/ui/GroupCallActivity$28;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetwatchersView(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/GroupCallActivity$WatchersView;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 5080
    :cond_5
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/GroupCallActivity$28;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object v3, v3, Lorg/telegram/ui/GroupCallActivity;->fullscreenUsersListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_6

    move v3, v2

    .line 5081
    :goto_1
    iget-object v4, p0, Lorg/telegram/ui/GroupCallActivity$28;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object v4, v4, Lorg/telegram/ui/GroupCallActivity;->fullscreenUsersListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_6

    .line 5082
    iget-object v4, p0, Lorg/telegram/ui/GroupCallActivity$28;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object v4, v4, Lorg/telegram/ui/GroupCallActivity;->fullscreenUsersListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const/high16 v5, 0x3f800000    # 1.0f

    .line 5083
    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    .line 5084
    invoke-virtual {v4, v5}, Landroid/view/View;->setScaleX(F)V

    .line 5085
    invoke-virtual {v4, v5}, Landroid/view/View;->setScaleY(F)V

    const/4 v5, 0x0

    .line 5086
    invoke-virtual {v4, v5}, Landroid/view/View;->setTranslationX(F)V

    .line 5087
    invoke-virtual {v4, v5}, Landroid/view/View;->setTranslationY(F)V

    .line 5088
    check-cast v4, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;

    iget-object v5, p0, Lorg/telegram/ui/GroupCallActivity$28;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v5}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetrenderersContainer(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    move-result-object v5

    iget v5, v5, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->progressToFullscreenMode:F

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->setProgressToFullscreen(F)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 5092
    :cond_6
    :goto_2
    iget-object v3, p0, Lorg/telegram/ui/GroupCallActivity$28;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetbuttonsBackgroundGradientView2(Lorg/telegram/ui/GroupCallActivity;)Landroid/view/View;

    move-result-object v3

    if-eqz p1, :cond_7

    goto :goto_3

    :cond_7
    move v2, v0

    :goto_3
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5093
    iget-object p1, p0, Lorg/telegram/ui/GroupCallActivity$28;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {p1}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetdelayedGroupCallUpdated(Lorg/telegram/ui/GroupCallActivity;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 5094
    iget-object p1, p0, Lorg/telegram/ui/GroupCallActivity$28;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {p1, v1}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$mapplyCallParticipantUpdates(Lorg/telegram/ui/GroupCallActivity;Z)V

    :cond_8
    return-void
.end method

.method public onUiVisibilityChanged()V
    .locals 3

    .line 5100
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$28;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetrenderersContainer(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 5103
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$28;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetrenderersContainer(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->isUiVisible()Z

    move-result v0

    .line 5104
    iget-object v1, p0, Lorg/telegram/ui/GroupCallActivity$28;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetanimatorHideButtons(Lorg/telegram/ui/GroupCallActivity;)Lme/vkryl/android/animator/BoolAnimator;

    move-result-object v1

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    invoke-virtual {v1, v0, v2}, Lme/vkryl/android/animator/BoolAnimator;->setValue(ZZ)V

    return-void
.end method

.method protected update()V
    .locals 5

    .line 5024
    invoke-super {p0}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->update()V

    .line 5026
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$28;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetcolorProgress(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/GroupCallActivity$28;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetrenderersContainer(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/GroupCallActivity$28;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetrenderersContainer(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    move-result-object v1

    iget v1, v1, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->progressToFullscreenMode:F

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 5027
    iget-object v1, p0, Lorg/telegram/ui/GroupCallActivity$28;->this$0:Lorg/telegram/ui/GroupCallActivity;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_actionBarUnscrolled:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_actionBar:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v2, v3, v0, v4}, Lorg/telegram/messenger/AndroidUtilities;->getOffsetColor(IIFF)I

    move-result v0

    invoke-static {v1, v0}, Lorg/telegram/ui/GroupCallActivity;->access$2102(Lorg/telegram/ui/GroupCallActivity;I)I

    .line 5028
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$28;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->access$2200(Lorg/telegram/ui/GroupCallActivity;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 5029
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$28;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetcolorProgress(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$msetColorProgress(Lorg/telegram/ui/GroupCallActivity;F)V

    return-void
.end method
