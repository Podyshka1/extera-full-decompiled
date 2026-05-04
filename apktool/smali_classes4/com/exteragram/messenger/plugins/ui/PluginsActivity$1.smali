.class Lcom/exteragram/messenger/plugins/ui/PluginsActivity$1;
.super Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;
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

    .line 67
    iput-object p1, p0, Lcom/exteragram/messenger/plugins/ui/PluginsActivity$1;->this$0:Lcom/exteragram/messenger/plugins/ui/PluginsActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSearchCollapse()V
    .locals 3

    .line 80
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/PluginsActivity$1;->this$0:Lcom/exteragram/messenger/plugins/ui/PluginsActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/exteragram/messenger/plugins/ui/PluginsActivity;->-$$Nest$fputsearching(Lcom/exteragram/messenger/plugins/ui/PluginsActivity;Z)V

    .line 81
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/PluginsActivity$1;->this$0:Lcom/exteragram/messenger/plugins/ui/PluginsActivity;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/exteragram/messenger/plugins/ui/PluginsActivity;->-$$Nest$fputquery(Lcom/exteragram/messenger/plugins/ui/PluginsActivity;Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/PluginsActivity$1;->this$0:Lcom/exteragram/messenger/plugins/ui/PluginsActivity;

    invoke-static {v0}, Lcom/exteragram/messenger/plugins/ui/PluginsActivity;->access$200(Lcom/exteragram/messenger/plugins/ui/PluginsActivity;)Lorg/telegram/ui/Components/UniversalRecyclerView;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    .line 83
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/PluginsActivity$1;->this$0:Lcom/exteragram/messenger/plugins/ui/PluginsActivity;

    invoke-static {v0}, Lcom/exteragram/messenger/plugins/ui/PluginsActivity;->access$300(Lcom/exteragram/messenger/plugins/ui/PluginsActivity;)Lorg/telegram/ui/Components/UniversalRecyclerView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 84
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/PluginsActivity$1;->this$0:Lcom/exteragram/messenger/plugins/ui/PluginsActivity;

    invoke-static {v0}, Lcom/exteragram/messenger/plugins/ui/PluginsActivity;->-$$Nest$fgetinfoItem(Lcom/exteragram/messenger/plugins/ui/PluginsActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/PluginsActivity$1;->this$0:Lcom/exteragram/messenger/plugins/ui/PluginsActivity;

    invoke-static {v0}, Lcom/exteragram/messenger/plugins/ui/PluginsActivity;->-$$Nest$fgetinfoItem(Lcom/exteragram/messenger/plugins/ui/PluginsActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onSearchExpand()V
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/PluginsActivity$1;->this$0:Lcom/exteragram/messenger/plugins/ui/PluginsActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/exteragram/messenger/plugins/ui/PluginsActivity;->-$$Nest$fputsearching(Lcom/exteragram/messenger/plugins/ui/PluginsActivity;Z)V

    .line 71
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/PluginsActivity$1;->this$0:Lcom/exteragram/messenger/plugins/ui/PluginsActivity;

    invoke-static {v0}, Lcom/exteragram/messenger/plugins/ui/PluginsActivity;->access$000(Lcom/exteragram/messenger/plugins/ui/PluginsActivity;)Lorg/telegram/ui/Components/UniversalRecyclerView;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    .line 72
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/PluginsActivity$1;->this$0:Lcom/exteragram/messenger/plugins/ui/PluginsActivity;

    invoke-static {v0}, Lcom/exteragram/messenger/plugins/ui/PluginsActivity;->access$100(Lcom/exteragram/messenger/plugins/ui/PluginsActivity;)Lorg/telegram/ui/Components/UniversalRecyclerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 73
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/PluginsActivity$1;->this$0:Lcom/exteragram/messenger/plugins/ui/PluginsActivity;

    invoke-static {v0}, Lcom/exteragram/messenger/plugins/ui/PluginsActivity;->-$$Nest$fgetinfoItem(Lcom/exteragram/messenger/plugins/ui/PluginsActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/PluginsActivity$1;->this$0:Lcom/exteragram/messenger/plugins/ui/PluginsActivity;

    invoke-static {v0}, Lcom/exteragram/messenger/plugins/ui/PluginsActivity;->-$$Nest$fgetinfoItem(Lcom/exteragram/messenger/plugins/ui/PluginsActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onTextChanged(Landroid/widget/EditText;)V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/PluginsActivity$1;->this$0:Lcom/exteragram/messenger/plugins/ui/PluginsActivity;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/exteragram/messenger/plugins/ui/PluginsActivity;->-$$Nest$fputquery(Lcom/exteragram/messenger/plugins/ui/PluginsActivity;Ljava/lang/String;)V

    .line 92
    iget-object p1, p0, Lcom/exteragram/messenger/plugins/ui/PluginsActivity$1;->this$0:Lcom/exteragram/messenger/plugins/ui/PluginsActivity;

    invoke-static {p1}, Lcom/exteragram/messenger/plugins/ui/PluginsActivity;->access$400(Lcom/exteragram/messenger/plugins/ui/PluginsActivity;)Lorg/telegram/ui/Components/UniversalRecyclerView;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    .line 93
    iget-object p1, p0, Lcom/exteragram/messenger/plugins/ui/PluginsActivity$1;->this$0:Lcom/exteragram/messenger/plugins/ui/PluginsActivity;

    invoke-static {p1}, Lcom/exteragram/messenger/plugins/ui/PluginsActivity;->access$500(Lcom/exteragram/messenger/plugins/ui/PluginsActivity;)Lorg/telegram/ui/Components/UniversalRecyclerView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-void
.end method
