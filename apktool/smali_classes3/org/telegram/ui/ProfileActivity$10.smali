.class Lorg/telegram/ui/ProfileActivity$10;
.super Lorg/telegram/ui/Components/SharedMediaLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ProfileActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private openedGiftsCollection:Z

.field final synthetic this$0:Lorg/telegram/ui/ProfileActivity;


# direct methods
.method public static synthetic $r8$lambda$OgRvi4AW0gBrQjIDXaOhaOIANKI(Lorg/telegram/ui/ProfileActivity$10;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ProfileActivity$10;->lambda$showActionMode$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rkpuWx5V-ZQJUIgbjsG-jdTJkj8(Lorg/telegram/ui/ProfileActivity$10;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$10;->lambda$onAttachedToWindow$1()V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/ProfileActivity;Landroid/content/Context;JLorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;ILjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ChatFull;Lorg/telegram/tgnet/TLRPC$UserFull;IILorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/SharedMediaLayout$Delegate;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 3825
    iput-object v1, v0, Lorg/telegram/ui/ProfileActivity$10;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v1, p2

    move-wide/from16 v2, p3

    move-object/from16 v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move/from16 v9, p10

    move/from16 v10, p11

    move-object/from16 v11, p12

    move-object/from16 v12, p13

    move/from16 v13, p14

    move-object/from16 v14, p15

    move-object/from16 v15, p16

    invoke-direct/range {v0 .. v15}, Lorg/telegram/ui/Components/SharedMediaLayout;-><init>(Landroid/content/Context;JLorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;ILjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ChatFull;Lorg/telegram/tgnet/TLRPC$UserFull;IILorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/SharedMediaLayout$Delegate;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;)V

    return-void
.end method

.method private synthetic lambda$onAttachedToWindow$1()V
    .locals 1

    .line 3940
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->getTabProgress()F

    move-result v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ProfileActivity$10;->onTabProgress(F)V

    return-void
.end method

.method private synthetic lambda$showActionMode$0(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 3902
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$10;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$mupdateBottomButtonY(Lorg/telegram/ui/ProfileActivity;)V

    return-void
.end method


# virtual methods
.method protected drawBackgroundWithBlur(Landroid/graphics/Canvas;FLandroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 7

    .line 3874
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$10;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetcontentView(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ProfileActivity$NestedFrameLayout;

    move-result-object v1

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$10;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetlistView(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v2

    add-float/2addr v0, v2

    add-float v3, v0, p2

    const/4 v6, 0x1

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->drawBlurRect(Landroid/graphics/Canvas;FLandroid/graphics/Rect;Landroid/graphics/Paint;Z)V

    return-void
.end method

.method protected getInitialTab()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method protected includeSavedDialogs()Z
    .locals 4

    .line 3838
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$10;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetdialogId(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v0

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$10;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$10;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-boolean v0, v0, Lorg/telegram/ui/ProfileActivity;->saved:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected invalidateBlur()V
    .locals 1

    .line 3879
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$10;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetcontentView(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ProfileActivity$NestedFrameLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3880
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$10;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetcontentView(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ProfileActivity$NestedFrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->invalidateBlur()V

    :cond_0
    return-void
.end method

.method protected isSelf()Z
    .locals 1

    .line 3843
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$10;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-boolean v0, v0, Lorg/telegram/ui/ProfileActivity;->myProfile:Z

    return v0
.end method

.method protected isStoriesView()Z
    .locals 1

    .line 3848
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$10;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-boolean v0, v0, Lorg/telegram/ui/ProfileActivity;->myProfile:Z

    return v0
.end method

.method protected onActionModeSelectedUpdate(Landroid/util/SparseArray;)V
    .locals 3

    .line 3946
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->onActionModeSelectedUpdate(Landroid/util/SparseArray;)V

    .line 3947
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$10;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-boolean v0, v0, Lorg/telegram/ui/ProfileActivity;->myProfile:Z

    if-eqz v0, :cond_4

    .line 3948
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    .line 3950
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->getSelectedTab()I

    move-result v0

    .line 3951
    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->isStoryAlbumPageType(I)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_2

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    const/4 v0, -0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-ltz v0, :cond_4

    if-nez v0, :cond_3

    .line 3955
    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$10;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1, p1, v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$mcheckStoriesButtonText(Lorg/telegram/ui/ProfileActivity;IZ)V

    .line 3957
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$10;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetbottomButton(Lorg/telegram/ui/ProfileActivity;)[Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    move-result-object v1

    aget-object v0, v1, v0

    invoke-virtual {v0, p1, v2}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setCount(IZ)V

    :cond_4
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 3938
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 3939
    new-instance v0, Lorg/telegram/ui/ProfileActivity$10$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ProfileActivity$10$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ProfileActivity$10;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onBottomButtonVisibilityChange()V
    .locals 4

    .line 3930
    invoke-super {p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->onBottomButtonVisibilityChange()V

    .line 3931
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$10;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-boolean v1, v0, Lorg/telegram/ui/ProfileActivity;->myProfile:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetbottomButtonContainer(Lorg/telegram/ui/ProfileActivity;)[Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$10;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    if-eqz v2, :cond_0

    .line 3932
    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetbottomButtonContainer(Lorg/telegram/ui/ProfileActivity;)[Landroid/widget/FrameLayout;

    move-result-object v0

    aget-object v0, v0, v1

    const/high16 v1, 0x42900000    # 72.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$10;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-object v2, v2, Lorg/telegram/ui/ProfileActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->getBottomButtonStoriesVisibility()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v2

    mul-float/2addr v1, v3

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    return-void
.end method

.method protected onMemberClick(Lorg/telegram/tgnet/TLRPC$ChatParticipant;ZLandroid/view/View;)Z
    .locals 1

    .line 3869
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$10;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/ui/ProfileActivity;->onMemberClick(Lorg/telegram/tgnet/TLRPC$ChatParticipant;ZLandroid/view/View;)Z

    move-result p1

    return p1
.end method

.method protected onSearchStateChanged(Z)V
    .locals 4

    .line 3853
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$10;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$10;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$3500(Lorg/telegram/ui/ProfileActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->removeAdjustResize(Landroid/app/Activity;I)V

    .line 3855
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$10;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetlistView(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView;->stopScroll()V

    .line 3856
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$10;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetavatarContainer2(Lorg/telegram/ui/ProfileActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$10;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetavatarContainer(Lorg/telegram/ui/ProfileActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getPivotY()F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$10;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetavatarContainer(Lorg/telegram/ui/ProfileActivity;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 3857
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$10;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetavatarContainer2(Lorg/telegram/ui/ProfileActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$10;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetavatarContainer2(Lorg/telegram/ui/ProfileActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 3858
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$10;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetavatarContainer2(Lorg/telegram/ui/ProfileActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    xor-int/lit8 v1, p1, 0x1

    const v2, 0x3f733333    # 0.95f

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    .line 3860
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$10;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetcallItem(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x4

    if-nez p1, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$10;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetcallItemVisible(Lorg/telegram/ui/ProfileActivity;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v1

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 3861
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$10;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetvideoCallItem(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    if-nez p1, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$10;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetvideoCallItemVisible(Lorg/telegram/ui/ProfileActivity;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    move v3, v2

    goto :goto_3

    :cond_3
    :goto_2
    move v3, v1

    :goto_3
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 3862
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$10;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgeteditItem(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    if-nez p1, :cond_5

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$10;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgeteditItemVisible(Lorg/telegram/ui/ProfileActivity;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_4

    :cond_4
    move v3, v2

    goto :goto_5

    :cond_5
    :goto_4
    move v3, v1

    :goto_5
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 3863
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$10;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetotherItem(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    if-eqz p1, :cond_6

    goto :goto_6

    :cond_6
    move v1, v2

    :goto_6
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3864
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$10;->this$0:Lorg/telegram/ui/ProfileActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$mupdateStoriesViewBounds(Lorg/telegram/ui/ProfileActivity;Z)V

    return-void
.end method

.method protected onSelectedTabChanged()V
    .locals 1

    .line 3833
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$10;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ProfileActivity;->updateSelectedMediaTabText()V

    return-void
.end method

.method protected onTabProgress(F)V
    .locals 3

    .line 3909
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->onTabProgress(F)V

    .line 3910
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$10;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-object v0, p1, Lorg/telegram/ui/ProfileActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    if-nez v0, :cond_0

    goto :goto_0

    .line 3914
    :cond_0
    iget-boolean v0, p1, Lorg/telegram/ui/ProfileActivity;->myProfile:Z

    if-eqz v0, :cond_3

    .line 3915
    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetbottomButtonContainer(Lorg/telegram/ui/ProfileActivity;)[Landroid/widget/FrameLayout;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 3916
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$10;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-object p1, p1, Lorg/telegram/ui/ProfileActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    const/16 v2, 0x8

    invoke-virtual {p1, v2, v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->getTabTranslationX(IZ)F

    move-result p1

    .line 3917
    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$10;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetbottomButtonContainer(Lorg/telegram/ui/ProfileActivity;)[Landroid/widget/FrameLayout;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 3919
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$10;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetbottomButtonContainer(Lorg/telegram/ui/ProfileActivity;)[Landroid/widget/FrameLayout;

    move-result-object p1

    aget-object p1, p1, v1

    if-eqz p1, :cond_2

    .line 3920
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$10;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-object p1, p1, Lorg/telegram/ui/ProfileActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    const/16 v2, 0x9

    invoke-virtual {p1, v2, v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->getTabTranslationX(IZ)F

    move-result p1

    .line 3921
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$10;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetbottomButtonContainer(Lorg/telegram/ui/ProfileActivity;)[Landroid/widget/FrameLayout;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 3923
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$10;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetlastStoriesSelectedCount(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    invoke-static {p1, v0, v1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$mcheckStoriesButtonText(Lorg/telegram/ui/ProfileActivity;IZ)V

    .line 3924
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$10;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$mupdateBottomButtonY(Lorg/telegram/ui/ProfileActivity;)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected processColor(I)I
    .locals 2

    .line 3828
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$10;->this$0:Lorg/telegram/ui/ProfileActivity;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$mdontApplyPeerColor(Lorg/telegram/ui/ProfileActivity;IZ)I

    move-result p1

    return p1
.end method

.method protected showActionMode(Z)V
    .locals 2

    .line 3891
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->showActionMode(Z)V

    .line 3892
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$10;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-boolean v0, v0, Lorg/telegram/ui/ProfileActivity;->myProfile:Z

    if-eqz v0, :cond_3

    .line 3893
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->disableScroll(Z)V

    .line 3895
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->getSelectedTab()I

    move-result v0

    add-int/lit8 v0, v0, -0x8

    if-ltz v0, :cond_3

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_2

    .line 3897
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$10;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetbottomButtonContainer(Lorg/telegram/ui/ProfileActivity;)[Landroid/widget/FrameLayout;

    move-result-object v1

    aget-object v1, v1, v0

    .line 3898
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    if-nez p1, :cond_2

    if-nez v0, :cond_1

    .line 3899
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$10;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$3600(Lorg/telegram/ui/ProfileActivity;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->storiesEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/high16 p1, 0x42900000    # 72.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float p1, p1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {v1, p1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x140

    .line 3900
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    .line 3901
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/ProfileActivity$10$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ProfileActivity$10$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ProfileActivity$10;)V

    .line 3902
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 3903
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_3
    :goto_2
    return-void
.end method

.method public updateTabs(Z)V
    .locals 3

    .line 3964
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->updateTabs(Z)V

    .line 3965
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$10;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-boolean v0, p1, Lorg/telegram/ui/ProfileActivity;->openGifts:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetopenedGifts(Lorg/telegram/ui/ProfileActivity;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    const/16 v0, 0xe

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->hasTab(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3966
    iget-boolean p1, p0, Lorg/telegram/ui/ProfileActivity$10;->openedGiftsCollection:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$10;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget p1, p1, Lorg/telegram/ui/ProfileActivity;->openGiftsCollection:I

    if-lez p1, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->giftsContainer:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

    if-eqz v2, :cond_0

    .line 3967
    iput-boolean v1, p0, Lorg/telegram/ui/ProfileActivity$10;->openedGiftsCollection:Z

    .line 3968
    invoke-virtual {v2, p1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->scrollToCollectionId(I)V

    .line 3970
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$10;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1, v1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fputopenedGifts(Lorg/telegram/ui/ProfileActivity;Z)V

    .line 3971
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollToPage(I)V

    return-void

    .line 3972
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$10;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-boolean v0, p1, Lorg/telegram/ui/ProfileActivity;->openGifts:Z

    if-eqz v0, :cond_2

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetopenedGifts(Lorg/telegram/ui/ProfileActivity;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lorg/telegram/ui/ProfileActivity$10;->openedGiftsCollection:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$10;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget p1, p1, Lorg/telegram/ui/ProfileActivity;->openGiftsCollection:I

    if-lez p1, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->giftsContainer:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

    if-eqz v0, :cond_2

    .line 3973
    iput-boolean v1, p0, Lorg/telegram/ui/ProfileActivity$10;->openedGiftsCollection:Z

    .line 3974
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->scrollToCollectionId(I)V

    :cond_2
    return-void
.end method
