.class Lcom/exteragram/messenger/icons/ui/IconPacksEditorActivity$2;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/exteragram/messenger/icons/ui/IconPacksEditorActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/exteragram/messenger/icons/ui/IconPacksEditorActivity;


# direct methods
.method constructor <init>(Lcom/exteragram/messenger/icons/ui/IconPacksEditorActivity;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/exteragram/messenger/icons/ui/IconPacksEditorActivity$2;->this$0:Lcom/exteragram/messenger/icons/ui/IconPacksEditorActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 124
    iget-object p1, p0, Lcom/exteragram/messenger/icons/ui/IconPacksEditorActivity$2;->this$0:Lcom/exteragram/messenger/icons/ui/IconPacksEditorActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 126
    sget-object p1, Lcom/exteragram/messenger/ExteraConfig;->editor:Landroid/content/SharedPreferences$Editor;

    const/4 v0, 0x0

    sput-object v0, Lcom/exteragram/messenger/ExteraConfig;->editingIconPackId:Ljava/lang/String;

    const-string v1, "editingIconPackId"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 127
    iget-object p1, p0, Lcom/exteragram/messenger/icons/ui/IconPacksEditorActivity$2;->this$0:Lcom/exteragram/messenger/icons/ui/IconPacksEditorActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    instance-of p1, p1, Lorg/telegram/ui/LaunchActivity;

    if-eqz p1, :cond_1

    .line 128
    iget-object p1, p0, Lcom/exteragram/messenger/icons/ui/IconPacksEditorActivity$2;->this$0:Lcom/exteragram/messenger/icons/ui/IconPacksEditorActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/LaunchActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/exteragram/messenger/icons/ui/picker/IconPickerController;->setActive(Lorg/telegram/ui/LaunchActivity;Z)V

    .line 130
    :cond_1
    iget-object p1, p0, Lcom/exteragram/messenger/icons/ui/IconPacksEditorActivity$2;->this$0:Lcom/exteragram/messenger/icons/ui/IconPacksEditorActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void

    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 132
    new-instance p1, Lcom/exteragram/messenger/icons/ui/components/NewIconPackBottomSheet;

    iget-object v0, p0, Lcom/exteragram/messenger/icons/ui/IconPacksEditorActivity$2;->this$0:Lcom/exteragram/messenger/icons/ui/IconPacksEditorActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/exteragram/messenger/icons/ui/IconPacksEditorActivity$2;->this$0:Lcom/exteragram/messenger/icons/ui/IconPacksEditorActivity;

    invoke-static {v2}, Lcom/exteragram/messenger/icons/ui/IconPacksEditorActivity;->-$$Nest$fgeticonPack(Lcom/exteragram/messenger/icons/ui/IconPacksEditorActivity;)Lcom/exteragram/messenger/icons/IconPack;

    move-result-object v2

    invoke-direct {p1, v0, v1, v2}, Lcom/exteragram/messenger/icons/ui/components/NewIconPackBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;Lcom/exteragram/messenger/icons/IconPack;)V

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    :cond_3
    return-void
.end method
