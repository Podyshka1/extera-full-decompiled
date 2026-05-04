.class Lcom/exteragram/messenger/plugins/ui/PluginsActivity$2;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/exteragram/messenger/plugins/ui/PluginsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/exteragram/messenger/plugins/ui/PluginsActivity;


# direct methods
.method constructor <init>(Lcom/exteragram/messenger/plugins/ui/PluginsActivity;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/exteragram/messenger/plugins/ui/PluginsActivity$2;->this$0:Lcom/exteragram/messenger/plugins/ui/PluginsActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    .line 106
    iget-object p1, p0, Lcom/exteragram/messenger/plugins/ui/PluginsActivity$2;->this$0:Lcom/exteragram/messenger/plugins/ui/PluginsActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    :cond_0
    return-void
.end method
