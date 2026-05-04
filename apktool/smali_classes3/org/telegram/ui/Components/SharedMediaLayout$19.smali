.class Lorg/telegram/ui/Components/SharedMediaLayout$19;
.super Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/SharedMediaLayout;-><init>(Landroid/content/Context;JLorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;ILjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ChatFull;Lorg/telegram/tgnet/TLRPC$UserFull;IILorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/SharedMediaLayout$Delegate;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field lastY:F

.field startY:F

.field final synthetic this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

.field final synthetic val$layoutManager:Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

.field final synthetic val$mediaPage:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/content/Context;Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;Lorg/telegram/ui/Components/ExtendedGridLayoutManager;)V
    .locals 0

    .line 2824
    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$19;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iput-object p3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$19;->val$mediaPage:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    iput-object p4, p0, Lorg/telegram/ui/Components/SharedMediaLayout$19;->val$layoutManager:Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public checkHighlightCell(Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;)V
    .locals 4

    .line 2890
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->getMessageId()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$19;->val$mediaPage:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    iget v1, v1, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->highlightMessageId:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_3

    iget-object v0, p1, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->hasBitmapImage()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2891
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$19;->val$mediaPage:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    iget-boolean v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->highlightAnimation:Z

    if-nez v1, :cond_0

    .line 2892
    iput v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->highlightProgress:F

    const/4 v1, 0x1

    .line 2893
    iput-boolean v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->highlightAnimation:Z

    .line 2896
    :cond_0
    iget v0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->highlightProgress:F

    const v1, 0x3e99999a    # 0.3f

    cmpg-float v2, v0, v1

    if-gez v2, :cond_1

    div-float/2addr v0, v1

    goto :goto_0

    :cond_1
    const v2, 0x3f333333    # 0.7f

    cmpl-float v2, v0, v2

    const/high16 v3, 0x3f800000    # 1.0f

    if-lez v2, :cond_2

    sub-float/2addr v3, v0

    div-float v0, v3, v1

    goto :goto_0

    :cond_2
    move v0, v3

    .line 2901
    :goto_0
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->setHighlightProgress(F)V

    return-void

    .line 2903
    :cond_3
    invoke-virtual {p1, v2}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->setHighlightProgress(F)V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 14

    .line 2942
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$19;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetarchivedStoriesAdapter(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$19;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetstoriesAdapter(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;

    move-result-object v1

    if-ne v0, v1, :cond_a

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_a

    .line 2943
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 2944
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v1

    if-nez v1, :cond_a

    .line 2945
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    .line 2947
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$19;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetphotoVideoChangeColumnsAnimation(Lorg/telegram/ui/Components/SharedMediaLayout;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$19;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetchangeColumnsTab(Lorg/telegram/ui/Components/SharedMediaLayout;)I

    move-result v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/Components/SharedMediaLayout$19;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetstoriesAdapter(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;

    move-result-object v5

    if-ne v4, v5, :cond_1

    const/16 v4, 0x8

    goto :goto_0

    :cond_1
    const/16 v4, 0x9

    :goto_0
    if-ne v1, v4, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$19;->val$mediaPage:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->-$$Nest$fgetanimationSupportingListView(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 2948
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$19;->val$mediaPage:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->-$$Nest$fgetanimationSupportingListView(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2949
    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout$19;->val$mediaPage:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->-$$Nest$fgetanimationSupportingListView(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v4

    if-nez v4, :cond_2

    .line 2950
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout$19;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetphotoVideoChangeColumnsProgress(Lorg/telegram/ui/Components/SharedMediaLayout;)F

    move-result v4

    invoke-static {v0, v1, v4}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v0

    .line 2953
    :cond_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout$19;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetstoriesAdapter(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;

    move-result-object v4

    if-ne v1, v4, :cond_3

    goto/16 :goto_4

    .line 2956
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->archivedHintPaint:Landroid/text/TextPaint;

    const/4 v4, 0x1

    if-nez v1, :cond_4

    .line 2957
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1, v4}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->archivedHintPaint:Landroid/text/TextPaint;

    const/high16 v5, 0x41600000    # 14.0f

    .line 2958
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2959
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->archivedHintPaint:Landroid/text/TextPaint;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    invoke-virtual {p0, v5}, Lorg/telegram/ui/Components/RecyclerListView;->getThemedColor(I)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 2961
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    const/high16 v5, 0x42700000    # 60.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int v9, v1, v5

    .line 2962
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->archivedHintLayout:Landroid/text/StaticLayout;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/text/Layout;->getWidth()I

    move-result v1

    if-eq v1, v9, :cond_9

    .line 2963
    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$19;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetprofileActivity(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$19;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetprofileActivity(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v5, p0, Lorg/telegram/ui/Components/SharedMediaLayout$19;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetdialog_id(Lorg/telegram/ui/Components/SharedMediaLayout;)J

    move-result-wide v5

    neg-long v5, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_1

    :cond_6
    move v4, v3

    .line 2964
    :goto_1
    new-instance v6, Landroid/text/StaticLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$19;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->isArchivedOnlyStoriesView()Z

    move-result v1

    if-eqz v1, :cond_8

    if-eqz v4, :cond_7

    sget v1, Lorg/telegram/messenger/R$string;->ProfileStoriesArchiveChannelHint:I

    goto :goto_2

    :cond_7
    sget v1, Lorg/telegram/messenger/R$string;->ProfileStoriesArchiveGroupHint:I

    goto :goto_2

    :cond_8
    sget v1, Lorg/telegram/messenger/R$string;->ProfileStoriesArchiveHint:I

    :goto_2
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->archivedHintPaint:Landroid/text/TextPaint;

    sget-object v10, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct/range {v6 .. v13}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v6, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->archivedHintLayout:Landroid/text/StaticLayout;

    .line 2965
    iput v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->archivedHintLayoutWidth:F

    int-to-float v1, v9

    .line 2966
    iput v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->archivedHintLayoutLeft:F

    move v1, v3

    .line 2967
    :goto_3
    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->archivedHintLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v4

    if-ge v1, v4, :cond_9

    .line 2968
    iget v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->archivedHintLayoutWidth:F

    iget-object v5, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->archivedHintLayout:Landroid/text/StaticLayout;

    invoke-virtual {v5, v1}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->archivedHintLayoutWidth:F

    .line 2969
    iget v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->archivedHintLayoutLeft:F

    iget-object v5, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->archivedHintLayout:Landroid/text/StaticLayout;

    invoke-virtual {v5, v1}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iput v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->archivedHintLayoutLeft:F

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 2973
    :cond_9
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2975
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->archivedHintLayoutWidth:F

    sub-float/2addr v1, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v1, v4

    iget v5, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->archivedHintLayoutLeft:F

    sub-float/2addr v1, v5

    int-to-float v0, v0

    const/high16 v5, 0x42800000    # 64.0f

    .line 2976
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    iget-object v6, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->archivedHintLayout:Landroid/text/StaticLayout;

    invoke-virtual {v6}, Landroid/text/Layout;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v5, v4

    sub-float/2addr v0, v5

    .line 2974
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2978
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->archivedHintLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 2979
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 2983
    :cond_a
    :goto_4
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2984
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$19;->val$mediaPage:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    iget-boolean v0, p1, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->highlightAnimation:Z

    if-eqz v0, :cond_c

    .line 2985
    iget v0, p1, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->highlightProgress:F

    const v1, 0x3c2ec33e

    add-float/2addr v0, v1

    iput v0, p1, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->highlightProgress:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_b

    .line 2987
    iput v2, p1, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->highlightProgress:F

    .line 2988
    iput-boolean v3, p1, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->highlightAnimation:Z

    .line 2989
    iput v3, p1, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->highlightMessageId:I

    .line 2991
    :cond_b
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 2993
    :cond_c
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->poller:Lorg/telegram/ui/Stories/UserListPoller;

    if-nez p1, :cond_d

    .line 2994
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$19;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetprofileActivity(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result p1

    invoke-static {p1}, Lorg/telegram/ui/Stories/UserListPoller;->getInstance(I)Lorg/telegram/ui/Stories/UserListPoller;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->poller:Lorg/telegram/ui/Stories/UserListPoller;

    .line 2996
    :cond_d
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->poller:Lorg/telegram/ui/Stories/UserListPoller;

    invoke-virtual {p1, p0}, Lorg/telegram/ui/Stories/UserListPoller;->checkList(Lorg/telegram/ui/Components/RecyclerListView;)V

    .line 2997
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SharedMediaLayout$19;->isChangeColumnsAnimation()Z

    move-result p1

    if-nez p1, :cond_e

    .line 2998
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$19;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fputchangeColumnsTab(Lorg/telegram/ui/Components/SharedMediaLayout;I)V

    :cond_e
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 2919
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$19;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetprofileActivity(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$19;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetprofileActivity(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->isInPreviewMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2920
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$19;->lastY:F

    .line 2921
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2922
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$19;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetprofileActivity(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishPreviewFragment()V

    goto :goto_0

    .line 2923
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 2924
    iget p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$19;->startY:F

    iget v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$19;->lastY:F

    sub-float/2addr p1, v0

    .line 2925
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$19;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetprofileActivity(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->movePreviewFragment(F)V

    const/4 v0, 0x0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_1

    .line 2927
    iget p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$19;->lastY:F

    iput p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$19;->startY:F

    :cond_1
    :goto_0
    return v1

    .line 2932
    :cond_2
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected emptyViewUpdated(ZZ)V
    .locals 0

    return-void
.end method

.method public getAnimateToColumnsCount()I
    .locals 1

    .line 2855
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$19;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetanimateToColumnsCount(Lorg/telegram/ui/Components/SharedMediaLayout;)I

    move-result v0

    return v0
.end method

.method public getChangeColumnsProgress()F
    .locals 1

    .line 2865
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$19;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetphotoVideoChangeColumnsProgress(Lorg/telegram/ui/Components/SharedMediaLayout;)F

    move-result v0

    return v0
.end method

.method public getColumnsCount()I
    .locals 2

    .line 2846
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$19;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetchangeColumnsTab(Lorg/telegram/ui/Components/SharedMediaLayout;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->isAnyStoryPageType(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2847
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$19;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetmediaColumnsCount(Lorg/telegram/ui/Components/SharedMediaLayout;)[I

    move-result-object v0

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0

    .line 2849
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$19;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetmediaColumnsCount(Lorg/telegram/ui/Components/SharedMediaLayout;)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getMessageAlphaEnter()Landroid/util/SparseArray;
    .locals 1

    .line 2875
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$19;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget-object v0, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->messageAlphaEnter:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getMovingAdapter()Lorg/telegram/ui/Components/RecyclerListView$FastScrollAdapter;
    .locals 2

    .line 2828
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$19;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetchangeColumnsTab(Lorg/telegram/ui/Components/SharedMediaLayout;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->isAnyStoryPageType(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2829
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$19;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetchangeColumnsTab(Lorg/telegram/ui/Components/SharedMediaLayout;)I

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$mstoryAlbums_getStoriesAdapterByTabType(Lorg/telegram/ui/Components/SharedMediaLayout;I)Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;

    move-result-object v0

    return-object v0

    .line 2831
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$19;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetphotoVideoAdapter(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getSelectorColor(I)Ljava/lang/Integer;
    .locals 2

    .line 3004
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$19;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetchannelRecommendationsAdapter(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$ChannelRecommendationsAdapter;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$19;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetchannelRecommendationsAdapter(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$ChannelRecommendationsAdapter;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$ChannelRecommendationsAdapter;->-$$Nest$fgetmore(Lorg/telegram/ui/Components/SharedMediaLayout$ChannelRecommendationsAdapter;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$19;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetchannelRecommendationsAdapter(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$ChannelRecommendationsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$ChannelRecommendationsAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 3005
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 3007
    :cond_0
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->getSelectorColor(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getSupportingAdapter()Lorg/telegram/ui/Components/RecyclerListView$FastScrollAdapter;
    .locals 2

    .line 2837
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$19;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetchangeColumnsTab(Lorg/telegram/ui/Components/SharedMediaLayout;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->isAnyStoryPageType(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2838
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$19;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetchangeColumnsTab(Lorg/telegram/ui/Components/SharedMediaLayout;)I

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$mstoryAlbums_getStoriesSupportingAdapterByTabType(Lorg/telegram/ui/Components/SharedMediaLayout;I)Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;

    move-result-object v0

    return-object v0

    .line 2840
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$19;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetanimationSupportingPhotoVideoAdapter(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getSupportingListView()Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;
    .locals 1

    .line 2885
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$19;->val$mediaPage:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->-$$Nest$fgetanimationSupportingListView(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v0

    return-object v0
.end method

.method public isChangeColumnsAnimation()Z
    .locals 1

    .line 2860
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$19;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetphotoVideoChangeColumnsAnimation(Lorg/telegram/ui/Components/SharedMediaLayout;)Z

    move-result v0

    return v0
.end method

.method public isStories()Z
    .locals 1

    .line 2880
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$19;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetchangeColumnsTab(Lorg/telegram/ui/Components/SharedMediaLayout;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->isAnyStoryPageType(I)Z

    move-result v0

    return v0
.end method

.method public isThisListView()Z
    .locals 1

    .line 2870
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$19;->val$mediaPage:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->-$$Nest$fgetlistView(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v0

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 2909
    invoke-super/range {p0 .. p5}, Lorg/telegram/ui/Components/RecyclerListView;->onLayout(ZIIII)V

    move-object p1, p0

    .line 2910
    iget-object p2, p1, Lorg/telegram/ui/Components/SharedMediaLayout$19;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget-object p3, p1, Lorg/telegram/ui/Components/SharedMediaLayout$19;->val$mediaPage:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    invoke-static {p3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->-$$Nest$fgetlistView(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object p4

    iget-object p5, p1, Lorg/telegram/ui/Components/SharedMediaLayout$19;->val$layoutManager:Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    invoke-static {p2, p3, p4, p5}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$mcheckLoadMoreScroll(Lorg/telegram/ui/Components/SharedMediaLayout;Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;Lorg/telegram/ui/Components/RecyclerListView;Landroidx/recyclerview/widget/LinearLayoutManager;)V

    .line 2911
    iget-object p2, p1, Lorg/telegram/ui/Components/SharedMediaLayout$19;->val$mediaPage:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    iget p2, p2, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->selectedType:I

    if-nez p2, :cond_0

    .line 2912
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/PhotoViewer;->checkCurrentImageVisibility()V

    :cond_0
    return-void
.end method

.method public onScrolled(II)V
    .locals 0

    .line 3012
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->onScrolled(II)V

    .line 3013
    iget-boolean p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->scrollingByUser:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$19;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->getSelectedTab()I

    move-result p1

    const/16 p2, 0xb

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$19;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetprofileActivity(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3014
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$19;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetprofileActivity(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 3016
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$19;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$mcheckStoriesTabsPosition(Lorg/telegram/ui/Components/SharedMediaLayout;)V

    return-void
.end method
