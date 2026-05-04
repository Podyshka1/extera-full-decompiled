.class Lcom/exteragram/messenger/icons/ui/picker/IconPickerView$3;
.super Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;
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


# direct methods
.method constructor <init>(Lcom/exteragram/messenger/icons/ui/picker/IconPickerView;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/exteragram/messenger/icons/ui/picker/IconPickerView$3;->this$0:Lcom/exteragram/messenger/icons/ui/picker/IconPickerView;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSearchCollapse()V
    .locals 3

    .line 238
    iget-object v0, p0, Lcom/exteragram/messenger/icons/ui/picker/IconPickerView$3;->this$0:Lcom/exteragram/messenger/icons/ui/picker/IconPickerView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/exteragram/messenger/icons/ui/picker/IconPickerView;->-$$Nest$fputsearching(Lcom/exteragram/messenger/icons/ui/picker/IconPickerView;Z)V

    .line 239
    iget-object v0, p0, Lcom/exteragram/messenger/icons/ui/picker/IconPickerView$3;->this$0:Lcom/exteragram/messenger/icons/ui/picker/IconPickerView;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/exteragram/messenger/icons/ui/picker/IconPickerView;->-$$Nest$fputquery(Lcom/exteragram/messenger/icons/ui/picker/IconPickerView;Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/exteragram/messenger/icons/ui/picker/IconPickerView$3;->this$0:Lcom/exteragram/messenger/icons/ui/picker/IconPickerView;

    invoke-static {v0}, Lcom/exteragram/messenger/icons/ui/picker/IconPickerView;->-$$Nest$fgetotherButton(Lcom/exteragram/messenger/icons/ui/picker/IconPickerView;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/exteragram/messenger/icons/ui/picker/IconPickerView$3;->this$0:Lcom/exteragram/messenger/icons/ui/picker/IconPickerView;

    invoke-static {v0}, Lcom/exteragram/messenger/icons/ui/picker/IconPickerView;->-$$Nest$fgetotherButton(Lcom/exteragram/messenger/icons/ui/picker/IconPickerView;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/exteragram/messenger/icons/ui/picker/IconPickerView$3;->this$0:Lcom/exteragram/messenger/icons/ui/picker/IconPickerView;

    invoke-static {v0}, Lcom/exteragram/messenger/icons/ui/picker/IconPickerView;->-$$Nest$fgetlistView(Lcom/exteragram/messenger/icons/ui/picker/IconPickerView;)Lorg/telegram/ui/Components/UniversalRecyclerView;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    return-void
.end method

.method public onSearchExpand()V
    .locals 2

    .line 230
    iget-object v0, p0, Lcom/exteragram/messenger/icons/ui/picker/IconPickerView$3;->this$0:Lcom/exteragram/messenger/icons/ui/picker/IconPickerView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/exteragram/messenger/icons/ui/picker/IconPickerView;->-$$Nest$fputsearching(Lcom/exteragram/messenger/icons/ui/picker/IconPickerView;Z)V

    .line 231
    iget-object v0, p0, Lcom/exteragram/messenger/icons/ui/picker/IconPickerView$3;->this$0:Lcom/exteragram/messenger/icons/ui/picker/IconPickerView;

    invoke-static {v0}, Lcom/exteragram/messenger/icons/ui/picker/IconPickerView;->-$$Nest$fgetotherButton(Lcom/exteragram/messenger/icons/ui/picker/IconPickerView;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/exteragram/messenger/icons/ui/picker/IconPickerView$3;->this$0:Lcom/exteragram/messenger/icons/ui/picker/IconPickerView;

    invoke-static {v0}, Lcom/exteragram/messenger/icons/ui/picker/IconPickerView;->-$$Nest$fgetotherButton(Lcom/exteragram/messenger/icons/ui/picker/IconPickerView;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onTextChanged(Landroid/widget/EditText;)V
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/exteragram/messenger/icons/ui/picker/IconPickerView$3;->this$0:Lcom/exteragram/messenger/icons/ui/picker/IconPickerView;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/exteragram/messenger/icons/ui/picker/IconPickerView;->-$$Nest$fputquery(Lcom/exteragram/messenger/icons/ui/picker/IconPickerView;Ljava/lang/String;)V

    .line 249
    iget-object p1, p0, Lcom/exteragram/messenger/icons/ui/picker/IconPickerView$3;->this$0:Lcom/exteragram/messenger/icons/ui/picker/IconPickerView;

    invoke-static {p1}, Lcom/exteragram/messenger/icons/ui/picker/IconPickerView;->-$$Nest$fgetlistView(Lcom/exteragram/messenger/icons/ui/picker/IconPickerView;)Lorg/telegram/ui/Components/UniversalRecyclerView;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    return-void
.end method
