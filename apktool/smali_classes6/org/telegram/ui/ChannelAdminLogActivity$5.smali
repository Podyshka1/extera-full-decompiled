.class Lorg/telegram/ui/ChannelAdminLogActivity$5;
.super Lorg/telegram/ui/Components/SizeNotifierFrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelAdminLogActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChannelAdminLogActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelAdminLogActivity;Landroid/content/Context;)V
    .locals 0

    .line 919
    iput-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$5;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1049
    invoke-static {}, Lorg/telegram/ui/AvatarPreviewer;->hasVisibleInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1050
    invoke-static {}, Lorg/telegram/ui/AvatarPreviewer;->getInstance()Lorg/telegram/ui/AvatarPreviewer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/AvatarPreviewer;->onTouchEvent(Landroid/view/MotionEvent;)V

    const/4 p1, 0x1

    return p1

    .line 1053
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 0

    .line 931
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p3

    .line 932
    iget-object p4, p0, Lorg/telegram/ui/ChannelAdminLogActivity$5;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {p4}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$000(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p4

    if-ne p2, p4, :cond_1

    iget-object p2, p0, Lorg/telegram/ui/ChannelAdminLogActivity$5;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$100(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 933
    iget-object p2, p0, Lorg/telegram/ui/ChannelAdminLogActivity$5;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$400(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object p2

    iget-object p4, p0, Lorg/telegram/ui/ChannelAdminLogActivity$5;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {p4}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$200(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->getVisibility()I

    move-result p4

    if-nez p4, :cond_0

    iget-object p4, p0, Lorg/telegram/ui/ChannelAdminLogActivity$5;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {p4}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$300(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    invoke-interface {p2, p1, p4}, Lorg/telegram/ui/ActionBar/INavigationLayout;->drawHeaderShadow(Landroid/graphics/Canvas;I)V

    :cond_1
    return p3
.end method

.method protected isActionBarVisible()Z
    .locals 1

    .line 940
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$5;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$500(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 5

    .line 922
    invoke-super {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->onAttachedToWindow()V

    .line 923
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 924
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v1, v0, Lorg/telegram/messenger/MessageObject;->eventId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v0

    iget-object v2, p0, Lorg/telegram/ui/ChannelAdminLogActivity$5;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChannelAdminLogActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v2, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 925
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$5;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/telegram/ui/ChannelAdminLogActivity;->-$$Nest$mcreateTextureView(Lorg/telegram/ui/ChannelAdminLogActivity;Z)Landroid/view/TextureView;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ChannelAdminLogActivity$5;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChannelAdminLogActivity;->-$$Nest$fgetaspectRatioFrameLayout(Lorg/telegram/ui/ChannelAdminLogActivity;)Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/ChannelAdminLogActivity$5;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChannelAdminLogActivity;->-$$Nest$fgetroundVideoContainer(Lorg/telegram/ui/ChannelAdminLogActivity;)Landroid/widget/FrameLayout;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/MediaController;->setTextureView(Landroid/view/TextureView;Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;Landroid/widget/FrameLayout;Z)V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 9

    .line 981
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_c

    .line 984
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 985
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    goto/16 :goto_8

    .line 988
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 990
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 991
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 996
    iget v6, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_1

    const/16 v6, 0x33

    :cond_1
    and-int/lit8 v7, v6, 0x70

    and-int/lit8 v6, v6, 0x7

    const/4 v8, 0x1

    if-eq v6, v8, :cond_3

    const/4 v8, 0x5

    if-eq v6, v8, :cond_2

    .line 1013
    iget v6, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_2

    :cond_2
    sub-int v6, p4, v4

    .line 1009
    iget v8, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    :goto_1
    sub-int/2addr v6, v8

    goto :goto_2

    :cond_3
    sub-int v6, p4, p2

    sub-int/2addr v6, v4

    .line 1006
    div-int/lit8 v6, v6, 0x2

    iget v8, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v6, v8

    iget v8, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_1

    :goto_2
    const/16 v8, 0x10

    if-eq v7, v8, :cond_6

    const/16 v8, 0x30

    if-eq v7, v8, :cond_5

    const/16 v8, 0x50

    if-eq v7, v8, :cond_4

    .line 1030
    iget v3, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_4

    :cond_4
    sub-int v7, p5, p3

    sub-int/2addr v7, v5

    .line 1027
    iget v3, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    :goto_3
    sub-int v3, v7, v3

    goto :goto_4

    .line 1018
    :cond_5
    iget v3, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    add-int/2addr v3, v7

    .line 1019
    iget-object v7, p0, Lorg/telegram/ui/ChannelAdminLogActivity$5;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$1000(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v7

    if-eq v2, v7, :cond_7

    iget-object v7, p0, Lorg/telegram/ui/ChannelAdminLogActivity$5;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$1100(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_7

    .line 1020
    iget-object v7, p0, Lorg/telegram/ui/ChannelAdminLogActivity$5;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$1200(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v3, v7

    goto :goto_4

    :cond_6
    sub-int v7, p5, p3

    sub-int/2addr v7, v5

    .line 1024
    div-int/lit8 v7, v7, 0x2

    iget v8, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v7, v8

    iget v3, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_3

    .line 1033
    :cond_7
    :goto_4
    iget-object v7, p0, Lorg/telegram/ui/ChannelAdminLogActivity$5;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChannelAdminLogActivity;->-$$Nest$fgetemptyViewContainer(Lorg/telegram/ui/ChannelAdminLogActivity;)Landroid/widget/FrameLayout;

    move-result-object v7

    if-ne v2, v7, :cond_9

    const/high16 v7, 0x41c00000    # 24.0f

    .line 1034
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    iget-object v8, p0, Lorg/telegram/ui/ChannelAdminLogActivity$5;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v8}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$1300(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_8

    iget-object v8, p0, Lorg/telegram/ui/ChannelAdminLogActivity$5;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v8}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$1400(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    goto :goto_5

    :cond_8
    move v8, v0

    :goto_5
    sub-int/2addr v7, v8

    :goto_6
    sub-int/2addr v3, v7

    goto :goto_7

    .line 1035
    :cond_9
    iget-object v7, p0, Lorg/telegram/ui/ChannelAdminLogActivity$5;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$1500(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v7

    if-ne v2, v7, :cond_a

    .line 1036
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    goto :goto_6

    .line 1037
    :cond_a
    iget-object v7, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->backgroundView:Landroid/view/View;

    if-ne v2, v7, :cond_b

    move v3, v0

    :cond_b
    :goto_7
    add-int/2addr v4, v6

    add-int/2addr v5, v3

    .line 1040
    invoke-virtual {v2, v6, v3, v4, v5}, Landroid/view/View;->layout(IIII)V

    :goto_8
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 1043
    :cond_c
    iget-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$5;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChannelAdminLogActivity;->-$$Nest$mupdateMessagesVisiblePart(Lorg/telegram/ui/ChannelAdminLogActivity;)V

    .line 1044
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->notifyHeightChanged()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 10

    .line 946
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 947
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 949
    invoke-virtual {p0, v6, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 950
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int v7, v1, v2

    .line 952
    iget-object v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$5;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$600(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 953
    iget-object v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$5;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$700(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 954
    iget-object v2, p0, Lorg/telegram/ui/ChannelAdminLogActivity$5;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$800(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    sub-int/2addr v7, v1

    .line 958
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    const/4 v1, 0x0

    move v9, v1

    :goto_0
    if-ge v9, v8, :cond_6

    .line 961
    invoke-virtual {p0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 962
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lorg/telegram/ui/ChannelAdminLogActivity$5;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$900(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v2

    if-ne v1, v2, :cond_1

    goto :goto_2

    .line 965
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/ChannelAdminLogActivity$5;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChannelAdminLogActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    const/high16 v3, 0x40000000    # 2.0f

    if-eq v1, v2, :cond_4

    iget-object v2, p0, Lorg/telegram/ui/ChannelAdminLogActivity$5;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChannelAdminLogActivity;->-$$Nest$fgetprogressView(Lorg/telegram/ui/ChannelAdminLogActivity;)Landroid/widget/FrameLayout;

    move-result-object v2

    if-ne v1, v2, :cond_2

    goto :goto_1

    .line 969
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/ChannelAdminLogActivity$5;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChannelAdminLogActivity;->-$$Nest$fgetemptyViewContainer(Lorg/telegram/ui/ChannelAdminLogActivity;)Landroid/widget/FrameLayout;

    move-result-object v2

    if-ne v1, v2, :cond_3

    .line 970
    invoke-static {v6, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 971
    invoke-static {v7, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 972
    invoke-virtual {v1, v2, v3}, Landroid/view/View;->measure(II)V

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move v4, p2

    .line 974
    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    goto :goto_2

    .line 966
    :cond_4
    :goto_1
    invoke-static {v6, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/high16 v2, 0x41200000    # 10.0f

    .line 967
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/high16 v4, 0x42480000    # 50.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int v4, v7, v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 968
    invoke-virtual {v1, v0, v2}, Landroid/view/View;->measure(II)V

    :cond_5
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method
