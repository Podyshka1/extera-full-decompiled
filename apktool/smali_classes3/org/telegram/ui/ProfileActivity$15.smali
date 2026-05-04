.class Lorg/telegram/ui/ProfileActivity$15;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
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
.method constructor <init>(Lorg/telegram/ui/ProfileActivity;Landroid/content/Context;)V
    .locals 0

    .line 4415
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$15;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 4

    .line 4424
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$15;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetlayoutManager(Lorg/telegram/ui/ProfileActivity;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 4425
    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$15;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetopeningAvatar(Lorg/telegram/ui/ProfileActivity;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 4426
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$15;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$mgetHeaderExtraHeight(Lorg/telegram/ui/ProfileActivity;)I

    move-result v2

    sub-int/2addr v0, v2

    .line 4427
    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$15;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetallowPullingDown(Lorg/telegram/ui/ProfileActivity;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_3

    if-le v0, p1, :cond_3

    .line 4429
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$15;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetavatarsViewPager(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/ProfileGalleryView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ProfileGalleryView;->hasImages()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$15;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetavatarImage(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ProfileActivity$AvatarImageView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->hasNotThumb()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isAccessibilityScreenReaderEnabled()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$15;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetisInLandscapeMode(Lorg/telegram/ui/ProfileActivity;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$15;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-boolean p1, p1, Lorg/telegram/ui/ProfileActivity;->hasMainTabs:Z

    if-eqz p1, :cond_4

    .line 4430
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$15;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetavatarBig(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    move v3, v1

    :goto_0
    invoke-static {p1, v3}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fputallowPullingDown(Lorg/telegram/ui/ProfileActivity;Z)V

    goto :goto_1

    .line 4432
    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$15;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetallowPullingDown(Lorg/telegram/ui/ProfileActivity;)Z

    move-result v2

    if-eqz v2, :cond_6

    if-lt p1, v0, :cond_5

    .line 4435
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$15;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1, v1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fputallowPullingDown(Lorg/telegram/ui/ProfileActivity;Z)V

    :cond_4
    :goto_1
    move p1, v0

    goto :goto_2

    .line 4436
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$15;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetlistView(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result v0

    if-ne v0, v3, :cond_6

    .line 4437
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$15;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetisPulledDown(Lorg/telegram/ui/ProfileActivity;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 4438
    div-int/lit8 p1, p1, 0x2

    .line 4443
    :cond_6
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$15;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetjustFullyExpanded(Lorg/telegram/ui/ProfileActivity;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$15;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetlistView(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->isFlingerWorking()Z

    move-result v0

    if-nez v0, :cond_7

    return v1

    .line 4447
    :cond_7
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p1

    return p1
.end method

.method public supportsPredictiveItemAnimations()Z
    .locals 1

    .line 4419
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$15;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetimageUpdater(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/ImageUpdater;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
