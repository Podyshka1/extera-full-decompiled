.class Lcom/exteragram/messenger/icons/ui/picker/IconPickerView$4;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/exteragram/messenger/icons/ui/picker/IconPickerView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/exteragram/messenger/icons/ui/picker/IconPickerView;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/exteragram/messenger/icons/ui/picker/IconPickerView;Landroid/content/Context;)V
    .locals 0

    .line 257
    iput-object p1, p0, Lcom/exteragram/messenger/icons/ui/picker/IconPickerView$4;->this$0:Lcom/exteragram/messenger/icons/ui/picker/IconPickerView;

    iput-object p2, p0, Lcom/exteragram/messenger/icons/ui/picker/IconPickerView$4;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 3

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 261
    iget-object p1, p0, Lcom/exteragram/messenger/icons/ui/picker/IconPickerView$4;->this$0:Lcom/exteragram/messenger/icons/ui/picker/IconPickerView;

    invoke-virtual {p1, v1}, Lcom/exteragram/messenger/icons/ui/picker/IconPickerView;->showIconList(Z)V

    return-void

    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 263
    sget-object p1, Lcom/exteragram/messenger/ExteraConfig;->editor:Landroid/content/SharedPreferences$Editor;

    const/4 v0, 0x0

    sput-object v0, Lcom/exteragram/messenger/ExteraConfig;->editingIconPackId:Ljava/lang/String;

    const-string v2, "editingIconPackId"

    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 264
    iget-object p1, p0, Lcom/exteragram/messenger/icons/ui/picker/IconPickerView$4;->val$context:Landroid/content/Context;

    instance-of v0, p1, Lorg/telegram/ui/LaunchActivity;

    if-eqz v0, :cond_2

    .line 265
    check-cast p1, Lorg/telegram/ui/LaunchActivity;

    invoke-static {p1, v1}, Lcom/exteragram/messenger/icons/ui/picker/IconPickerController;->setActive(Lorg/telegram/ui/LaunchActivity;Z)V

    return-void

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 268
    sget-object p1, Lcom/exteragram/messenger/ExteraConfig;->editingIconPackId:Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 269
    sget-object p1, Lcom/exteragram/messenger/icons/IconManager;->INSTANCE:Lcom/exteragram/messenger/icons/IconManager;

    sget-object v0, Lcom/exteragram/messenger/ExteraConfig;->editingIconPackId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/exteragram/messenger/icons/IconManager;->findPackById(Ljava/lang/String;)Lcom/exteragram/messenger/icons/IconPack;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 270
    iget-object v0, p0, Lcom/exteragram/messenger/icons/ui/picker/IconPickerView$4;->val$context:Landroid/content/Context;

    instance-of v2, v0, Lorg/telegram/ui/LaunchActivity;

    if-eqz v2, :cond_2

    .line 271
    check-cast v0, Lorg/telegram/ui/LaunchActivity;

    new-instance v2, Lcom/exteragram/messenger/icons/ui/IconPacksEditorActivity;

    invoke-direct {v2, p1}, Lcom/exteragram/messenger/icons/ui/IconPacksEditorActivity;-><init>(Lcom/exteragram/messenger/icons/IconPack;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/LaunchActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 272
    iget-object p1, p0, Lcom/exteragram/messenger/icons/ui/picker/IconPickerView$4;->this$0:Lcom/exteragram/messenger/icons/ui/picker/IconPickerView;

    invoke-virtual {p1, v1}, Lcom/exteragram/messenger/icons/ui/picker/IconPickerView;->showIconList(Z)V

    :cond_2
    return-void
.end method
