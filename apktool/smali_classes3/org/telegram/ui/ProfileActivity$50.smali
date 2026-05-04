.class Lorg/telegram/ui/ProfileActivity$50;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ProfileActivity;->onCustomTransitionAnimation(ZLjava/lang/Runnable;)Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ProfileActivity;

.field final synthetic val$callback:Ljava/lang/Runnable;

.field final synthetic val$finalPrevCallItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ProfileActivity;Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Ljava/lang/Runnable;)V
    .locals 0

    .line 10550
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$50;->this$0:Lorg/telegram/ui/ProfileActivity;

    iput-object p2, p0, Lorg/telegram/ui/ProfileActivity$50;->val$finalPrevCallItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    iput-object p3, p0, Lorg/telegram/ui/ProfileActivity$50;->val$callback:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .line 10553
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$50;->val$finalPrevCallItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    .line 10554
    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setAlpha(F)V

    .line 10556
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$50;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-object v1, p1, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    if-nez v1, :cond_1

    .line 10557
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$50;->val$callback:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 10560
    :cond_1
    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetavatarImage(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ProfileActivity$AvatarImageView;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->setProgressToExpand(F)V

    .line 10561
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$50;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetlistView(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 10562
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$50;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetanimatingItem(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 10563
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$50;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$7100(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object p1

    .line 10564
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->clearItems()V

    .line 10565
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$50;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1, v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fputanimatingItem(Lorg/telegram/ui/ProfileActivity;Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)V

    .line 10567
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$50;->val$callback:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 10568
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$50;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetplayProfileAnimation(Lorg/telegram/ui/ProfileActivity;)I

    move-result p1

    const/4 v3, 0x2

    if-ne p1, v3, :cond_3

    .line 10569
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$50;->this$0:Lorg/telegram/ui/ProfileActivity;

    const/4 v3, 0x1

    invoke-static {p1, v3}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fputplayProfileAnimation(Lorg/telegram/ui/ProfileActivity;I)V

    .line 10570
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$50;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetavatarImage(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ProfileActivity$AvatarImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->setForegroundAlpha(F)V

    .line 10571
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$50;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetavatarContainer(Lorg/telegram/ui/ProfileActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    const/16 v3, 0x8

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 10572
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$50;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetavatarsViewPager(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/ProfileGalleryView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/ProfileGalleryView;->setAlpha(F)V

    .line 10573
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$50;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetavatarsViewPager(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/ProfileGalleryView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ProfileGalleryView;->resetCurrentItem()V

    .line 10574
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$50;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetavatarsViewPager(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/ProfileGalleryView;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/ProfileGalleryView;->setVisibility(I)V

    .line 10576
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$50;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1, v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fputtransitionOnlineText(Lorg/telegram/ui/ProfileActivity;Landroid/view/View;)V

    .line 10577
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$50;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetavatarContainer2(Lorg/telegram/ui/ProfileActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 10578
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$50;->this$0:Lorg/telegram/ui/ProfileActivity;

    iput-boolean v1, p1, Lorg/telegram/ui/ProfileActivity;->profileTransitionInProgress:Z

    .line 10579
    iput-object v2, p1, Lorg/telegram/ui/ProfileActivity;->previousTransitionFragment:Lorg/telegram/ui/Components/ChatActivityInterface;

    .line 10580
    iput-object v2, p1, Lorg/telegram/ui/ProfileActivity;->previousTransitionMainFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 10581
    iget-object p1, p1, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
