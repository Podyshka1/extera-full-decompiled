.class Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$2$1;
.super Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$2;


# direct methods
.method public static synthetic $r8$lambda$mMtcSmCHg2V1_DctFRqw5QISUwE(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$2$1;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$2$1;->lambda$onTransitionStart$0(Z)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$2;Landroid/view/View;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$2$1;->this$1:Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$2;

    invoke-direct {p0, p2}, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;-><init>(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$onTransitionStart$0(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 178
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$2$1;->this$1:Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$2;

    iget-object p1, p1, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$2;->this$0:Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->-$$Nest$fgetactionButtonContainer(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected applyTranslation()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected heightAnimationEnabled()Z
    .locals 2

    .line 202
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$2$1;->this$1:Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$2;

    iget-object v0, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$2;->this$0:Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    .line 203
    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$2$1;->this$1:Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$2;

    iget-object v1, v1, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$2;->this$0:Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;

    invoke-static {v1}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->access$000(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$2$1;->this$1:Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$2;

    iget-object v1, v1, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$2;->this$0:Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;

    invoke-static {v1}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->access$100(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-boolean v1, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-nez v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onPanTranslationUpdate(FFZ)V
    .locals 0

    .line 190
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$2$1;->this$1:Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$2;

    iget-object p1, p1, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$2;->this$0:Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$2$1;->this$1:Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$2;

    iget-object p1, p1, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$2;->this$0:Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object p1

    invoke-interface {p1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->isPreviewOpenAnimationInProgress()Z

    :cond_0
    return-void
.end method

.method protected onTransitionEnd()V
    .locals 0

    return-void
.end method

.method protected onTransitionStart(ZI)V
    .locals 1

    .line 175
    iget-object p2, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$2$1;->this$1:Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$2;

    iget-object p2, p2, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$2;->this$0:Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;

    invoke-static {p2}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->-$$Nest$fgetactionButtonContainer(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;)Landroid/widget/FrameLayout;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 176
    iget-object p2, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$2$1;->this$1:Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$2;

    iget-object p2, p2, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$2;->this$0:Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;

    invoke-static {p2}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->-$$Nest$fgetactionButtonContainer(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;)Landroid/widget/FrameLayout;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    if-nez p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    new-instance v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$2$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$2$1$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$2$1;Z)V

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 180
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method
