.class Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalFragment$1;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalFragment;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalFragment;


# direct methods
.method constructor <init>(Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalFragment;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalFragment$1;->this$0:Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalFragment;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 55
    iget-object p1, p0, Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalFragment$1;->this$0:Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalFragment;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalFragment;->onBackPressed(Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 56
    iget-object p1, p0, Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalFragment$1;->this$0:Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalFragment$1;->this$0:Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalFragment;

    invoke-static {v0}, Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalFragment;->-$$Nest$fgetdelegate(Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalFragment;)Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalFragment$UniversalFragmentDelegate;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 60
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalFragment$1;->this$0:Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalFragment;

    invoke-static {v0}, Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalFragment;->-$$Nest$fgetdelegate(Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalFragment;)Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalFragment$UniversalFragmentDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalFragment$UniversalFragmentDelegate;->onMenuItemClick(I)V

    :cond_1
    return-void
.end method
