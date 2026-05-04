.class Lorg/telegram/ui/DialogsActivity$41;
.super Lcom/exteragram/messenger/components/TranslateBeforeSendWrapper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DialogsActivity;->onSendLongClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/DialogsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/DialogsActivity;Landroid/content/Context;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 11720
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$41;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/exteragram/messenger/components/TranslateBeforeSendWrapper;-><init>(Landroid/content/Context;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method protected onClick()V
    .locals 6

    .line 11723
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$41;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetsendPopupWindow(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$41;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetsendPopupWindow(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11724
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$41;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetsendPopupWindow(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    .line 11726
    :cond_0
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$41;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x3

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const-wide/16 v1, 0x96

    .line 11727
    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog;->showDelayed(J)V

    .line 11728
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$41;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetcommentView(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getFieldText()Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/CharSequence;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    .line 11729
    aget-object v1, v3, v4

    invoke-static {}, Lcom/exteragram/messenger/utils/text/TranslatorUtils;->getResolvedSendTargetLanguageCode()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity$41;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v5}, Lorg/telegram/ui/DialogsActivity;->access$10900(Lorg/telegram/ui/DialogsActivity;)I

    move-result v5

    invoke-static {v5}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v5

    invoke-virtual {v5, v3, v2}, Lorg/telegram/messenger/MediaDataController;->getEntities([Ljava/lang/CharSequence;Z)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/DialogsActivity$41$1;

    invoke-direct {v3, p0, v0}, Lorg/telegram/ui/DialogsActivity$41$1;-><init>(Lorg/telegram/ui/DialogsActivity$41;Lorg/telegram/ui/ActionBar/AlertDialog;)V

    invoke-static {v1, v4, v2, v3}, Lcom/exteragram/messenger/utils/text/TranslatorUtils;->translate(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/util/ArrayList;Lcom/exteragram/messenger/utils/text/TranslatorUtils$TranslateCallback;)V

    return-void
.end method
