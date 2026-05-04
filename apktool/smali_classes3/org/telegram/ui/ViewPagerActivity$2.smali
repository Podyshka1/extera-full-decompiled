.class Lorg/telegram/ui/ViewPagerActivity$2;
.super Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ViewPagerActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ViewPagerActivity;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ViewPagerActivity;Landroid/content/Context;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lorg/telegram/ui/ViewPagerActivity$2;->this$0:Lorg/telegram/ui/ViewPagerActivity;

    iput-object p2, p0, Lorg/telegram/ui/ViewPagerActivity$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;II)V
    .locals 2

    .line 128
    iget-object p3, p0, Lorg/telegram/ui/ViewPagerActivity$2;->this$0:Lorg/telegram/ui/ViewPagerActivity;

    iget-object p3, p3, Lorg/telegram/ui/ViewPagerActivity;->fragmentsArr:Landroid/util/SparseArray;

    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/telegram/ui/ViewPagerActivity$FragmentState;

    if-eqz p3, :cond_0

    .line 131
    iget-object p2, p3, Lorg/telegram/ui/ViewPagerActivity$FragmentState;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    goto :goto_0

    .line 133
    :cond_0
    iget-object p3, p0, Lorg/telegram/ui/ViewPagerActivity$2;->this$0:Lorg/telegram/ui/ViewPagerActivity;

    invoke-virtual {p3, p2}, Lorg/telegram/ui/ViewPagerActivity;->createBaseFragmentAt(I)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p3

    .line 135
    new-instance v0, Lorg/telegram/ui/ViewPagerActivity$FragmentState;

    const/4 v1, 0x0

    invoke-direct {v0, p3, v1}, Lorg/telegram/ui/ViewPagerActivity$FragmentState;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ViewPagerActivity-IA;)V

    .line 136
    iget-object v1, p0, Lorg/telegram/ui/ViewPagerActivity$2;->this$0:Lorg/telegram/ui/ViewPagerActivity;

    iget-object v1, v1, Lorg/telegram/ui/ViewPagerActivity;->fragmentsArr:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object p2, p3

    move-object p3, v0

    .line 139
    :goto_0
    invoke-static {p3}, Lorg/telegram/ui/ViewPagerActivity$FragmentState;->-$$Nest$fgetonCreateCalled(Lorg/telegram/ui/ViewPagerActivity$FragmentState;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 140
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    const/4 v0, 0x1

    .line 141
    invoke-static {p3, v0}, Lorg/telegram/ui/ViewPagerActivity$FragmentState;->-$$Nest$fputonCreateCalled(Lorg/telegram/ui/ViewPagerActivity$FragmentState;Z)V

    .line 144
    :cond_1
    iget-object p3, p0, Lorg/telegram/ui/ViewPagerActivity$2;->this$0:Lorg/telegram/ui/ViewPagerActivity;

    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->setParentLayout(Lorg/telegram/ui/ActionBar/INavigationLayout;)V

    .line 145
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object p3

    if-nez p3, :cond_2

    .line 146
    iget-object p3, p0, Lorg/telegram/ui/ViewPagerActivity$2;->val$context:Landroid/content/Context;

    invoke-virtual {p2, p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->createView(Landroid/content/Context;)Landroid/view/View;

    .line 147
    iget-object p3, p0, Lorg/telegram/ui/ViewPagerActivity$2;->this$0:Lorg/telegram/ui/ViewPagerActivity;

    invoke-static {p3}, Lorg/telegram/ui/ViewPagerActivity;->-$$Nest$fgettitleOverlay(Lorg/telegram/ui/ViewPagerActivity;)Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lorg/telegram/ui/ViewPagerActivity$2;->this$0:Lorg/telegram/ui/ViewPagerActivity;

    invoke-static {v0}, Lorg/telegram/ui/ViewPagerActivity;->-$$Nest$fgettitleOverlayId(Lorg/telegram/ui/ViewPagerActivity;)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/ViewPagerActivity$2;->this$0:Lorg/telegram/ui/ViewPagerActivity;

    invoke-static {v1}, Lorg/telegram/ui/ViewPagerActivity;->-$$Nest$fgettitleOverlayAction(Lorg/telegram/ui/ViewPagerActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {p2, p3, v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->setTitleOverlayText(Ljava/lang/String;ILjava/lang/Runnable;)V

    .line 150
    :cond_2
    check-cast p1, Landroid/widget/FrameLayout;

    .line 151
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 152
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object p3

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->removeFromParent(Landroid/view/View;)V

    .line 154
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object p3

    const/4 v0, -0x1

    const/high16 v1, -0x40800000    # -1.0f

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getActionBar()Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p3

    if-eqz p3, :cond_3

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getActionBar()Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/ActionBar;->shouldAddToContainer()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 156
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getActionBar()Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p3

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->removeFromParent(Landroid/view/View;)V

    .line 157
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getActionBar()Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 160
    :cond_3
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 161
    iget-object p1, p0, Lorg/telegram/ui/ViewPagerActivity$2;->this$0:Lorg/telegram/ui/ViewPagerActivity;

    invoke-static {p1}, Lorg/telegram/ui/ViewPagerActivity;->access$100(Lorg/telegram/ui/ViewPagerActivity;)V

    .line 162
    iget-object p1, p0, Lorg/telegram/ui/ViewPagerActivity$2;->this$0:Lorg/telegram/ui/ViewPagerActivity;

    invoke-static {p1}, Lorg/telegram/ui/ViewPagerActivity;->-$$Nest$mcheckFragmentsVisibility(Lorg/telegram/ui/ViewPagerActivity;)V

    return-void
.end method

.method public createView(I)Landroid/view/View;
    .locals 1

    .line 123
    new-instance p1, Landroid/widget/FrameLayout;

    iget-object v0, p0, Lorg/telegram/ui/ViewPagerActivity$2;->val$context:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 118
    iget-object v0, p0, Lorg/telegram/ui/ViewPagerActivity$2;->this$0:Lorg/telegram/ui/ViewPagerActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ViewPagerActivity;->getFragmentsCount()I

    move-result v0

    return v0
.end method
