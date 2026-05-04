.class Lorg/telegram/ui/ProfileActivity$31;
.super Lorg/telegram/ui/PinchToZoomHelper;
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
.field final synthetic this$0:Lorg/telegram/ui/ProfileActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ProfileActivity;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V
    .locals 0

    .line 6074
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$31;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/PinchToZoomHelper;-><init>(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    return-void
.end method


# virtual methods
.method protected drawOverlays(Landroid/graphics/Canvas;FFFFF)V
    .locals 1

    const/4 p3, 0x0

    cmpl-float p4, p2, p3

    if-lez p4, :cond_1

    .line 6093
    sget-object p4, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget-object p5, p0, Lorg/telegram/ui/ProfileActivity$31;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p5}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetavatarsViewPager(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/ProfileGalleryView;

    move-result-object p5

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result p5

    int-to-float p5, p5

    iget-object p6, p0, Lorg/telegram/ui/ProfileActivity$31;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p6}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetavatarsViewPager(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/ProfileGalleryView;

    move-result-object p6

    invoke-virtual {p6}, Landroid/view/View;->getMeasuredHeight()I

    move-result p6

    const/high16 v0, 0x41f00000    # 30.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr p6, v0

    int-to-float p6, p6

    invoke-virtual {p4, p3, p3, p5, p6}, Landroid/graphics/RectF;->set(FFFF)V

    const/high16 p5, 0x437f0000    # 255.0f

    mul-float/2addr p5, p2

    float-to-int p5, p5

    const/16 p6, 0x1f

    .line 6094
    invoke-virtual {p1, p4, p5, p6}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    .line 6096
    iget-object p4, p0, Lorg/telegram/ui/ProfileActivity$31;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p4}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetavatarContainer2(Lorg/telegram/ui/ProfileActivity;)Landroid/widget/FrameLayout;

    move-result-object p4

    invoke-virtual {p4, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 6098
    iget-object p4, p0, Lorg/telegram/ui/ProfileActivity$31;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p4}, Lorg/telegram/ui/ProfileActivity;->access$5300(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p4

    invoke-virtual {p4}, Lorg/telegram/ui/ActionBar/ActionBar;->getOccupyStatusBar()Z

    .line 6105
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 6106
    iget-object p4, p0, Lorg/telegram/ui/ProfileActivity$31;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p4}, Lorg/telegram/ui/ProfileActivity;->access$5900(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->getX()F

    move-result p4

    iget-object p5, p0, Lorg/telegram/ui/ProfileActivity$31;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p5}, Lorg/telegram/ui/ProfileActivity;->access$6000(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p5

    invoke-virtual {p5}, Landroid/view/View;->getY()F

    move-result p5

    invoke-virtual {p1, p4, p5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 6107
    iget-object p4, p0, Lorg/telegram/ui/ProfileActivity$31;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p4}, Lorg/telegram/ui/ProfileActivity;->access$6100(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p4

    invoke-virtual {p4, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 6108
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 6110
    iget-object p4, p0, Lorg/telegram/ui/ProfileActivity$31;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p4}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetwriteButton(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object p4

    if-eqz p4, :cond_0

    iget-object p4, p0, Lorg/telegram/ui/ProfileActivity$31;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p4}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetwriteButton(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->getVisibility()I

    move-result p4

    if-nez p4, :cond_0

    iget-object p4, p0, Lorg/telegram/ui/ProfileActivity$31;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p4}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetwriteButton(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->getAlpha()F

    move-result p4

    cmpl-float p3, p4, p3

    if-lez p3, :cond_0

    .line 6111
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/high16 p3, 0x3f000000    # 0.5f

    mul-float/2addr p2, p3

    add-float/2addr p2, p3

    .line 6113
    iget-object p3, p0, Lorg/telegram/ui/ProfileActivity$31;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p3}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetwriteButton(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getX()F

    move-result p3

    iget-object p4, p0, Lorg/telegram/ui/ProfileActivity$31;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p4}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetwriteButton(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    int-to-float p4, p4

    const/high16 p5, 0x40000000    # 2.0f

    div-float/2addr p4, p5

    add-float/2addr p3, p4

    iget-object p4, p0, Lorg/telegram/ui/ProfileActivity$31;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p4}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetwriteButton(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->getY()F

    move-result p4

    iget-object p6, p0, Lorg/telegram/ui/ProfileActivity$31;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p6}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetwriteButton(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object p6

    invoke-virtual {p6}, Landroid/view/View;->getMeasuredHeight()I

    move-result p6

    int-to-float p6, p6

    div-float/2addr p6, p5

    add-float/2addr p4, p6

    invoke-virtual {p1, p2, p2, p3, p4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 6114
    iget-object p2, p0, Lorg/telegram/ui/ProfileActivity$31;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetwriteButton(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getX()F

    move-result p2

    iget-object p3, p0, Lorg/telegram/ui/ProfileActivity$31;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p3}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetwriteButton(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getY()F

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 6115
    iget-object p2, p0, Lorg/telegram/ui/ProfileActivity$31;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetwriteButton(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 6116
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 6118
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    return-void
.end method

.method protected invalidateViews()V
    .locals 2

    .line 6080
    invoke-super {p0}, Lorg/telegram/ui/PinchToZoomHelper;->invalidateViews()V

    .line 6081
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$31;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    const/4 v0, 0x0

    .line 6082
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$31;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetavatarsViewPager(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/ProfileGalleryView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 6083
    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$31;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetavatarsViewPager(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/ProfileGalleryView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6085
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$31;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetwriteButton(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6086
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$31;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetwriteButton(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method protected zoomEnabled(Landroid/view/View;Lorg/telegram/messenger/ImageReceiver;)Z
    .locals 1

    .line 6124
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/PinchToZoomHelper;->zoomEnabled(Landroid/view/View;Lorg/telegram/messenger/ImageReceiver;)Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return p2

    .line 6127
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$31;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetlistView(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    return v0

    :cond_1
    return p2
.end method
