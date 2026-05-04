.class Lorg/telegram/ui/Gifts/ProfileGiftsContainer$1;
.super Lorg/telegram/ui/Components/ViewPagerFixed;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Gifts/ProfileGiftsContainer;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;IJLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

.field final synthetic val$fragment:Lorg/telegram/ui/ActionBar/BaseFragment;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 0

    .line 1043
    iput-object p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$1;->this$0:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

    iput-object p3, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$1;->val$fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/ViewPagerFixed;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected addMoreTabs()V
    .locals 5

    .line 1070
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$1;->this$0:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->canAdd()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$1;->this$0:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

    invoke-static {v0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->-$$Nest$fgettabsView(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;)Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1071
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$1;->this$0:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

    invoke-static {v0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->-$$Nest$fgetaddCollectionTabText(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;)Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1072
    new-instance v0, Landroid/text/SpannableStringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lorg/telegram/messenger/R$string;->Gift2NewCollection:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1073
    new-instance v1, Lorg/telegram/ui/Components/ColoredImageSpan;

    sget v2, Lorg/telegram/messenger/R$drawable;->poll_add_plus:I

    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(I)V

    const v2, 0x3f4ccccd    # 0.8f

    .line 1074
    iput v2, v1, Lorg/telegram/ui/Components/ColoredImageSpan;->spaceScaleX:F

    const/4 v2, 0x1

    const/16 v3, 0x21

    const/4 v4, 0x0

    .line 1075
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1076
    iget-object v1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$1;->this$0:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

    invoke-static {v1, v0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->-$$Nest$fputaddCollectionTabText(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;Ljava/lang/CharSequence;)V

    .line 1078
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$1;->this$0:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

    invoke-static {v0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->-$$Nest$fgettabsView(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;)Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$1;->this$0:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

    invoke-static {v1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->-$$Nest$fgetaddCollectionTabText(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->addTab(ILjava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method protected canScroll(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1065
    iget-object p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$1;->this$0:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

    invoke-virtual {p1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->isReordering()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public onTabAnimationUpdate(Z)V
    .locals 1

    .line 1046
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/ViewPagerFixed;->onTabAnimationUpdate(Z)V

    .line 1047
    iget-object p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$1;->this$0:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

    invoke-virtual {p1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->updateButton()V

    .line 1048
    iget-object p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$1;->val$fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v0, p1, Lorg/telegram/ui/ProfileActivity;

    if-eqz v0, :cond_0

    .line 1049
    check-cast p1, Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ProfileActivity;->updateSelectedMediaTabText()V

    .line 1051
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$1;->this$0:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

    invoke-virtual {p1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->updateTabsY()V

    return-void
.end method

.method protected onTabScrollEnd(I)V
    .locals 1

    .line 1056
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/ViewPagerFixed;->onTabScrollEnd(I)V

    .line 1057
    iget-object p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$1;->this$0:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

    invoke-virtual {p1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->updateButton()V

    .line 1058
    iget-object p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$1;->val$fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v0, p1, Lorg/telegram/ui/ProfileActivity;

    if-eqz v0, :cond_0

    .line 1059
    check-cast p1, Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ProfileActivity;->updateSelectedMediaTabText()V

    :cond_0
    return-void
.end method
