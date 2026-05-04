.class Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/exteragram/messenger/ai/network/GenerationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->saveConfig()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;

.field final synthetic val$progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

.field final synthetic val$service:Lcom/exteragram/messenger/ai/data/Service;


# direct methods
.method constructor <init>(Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;Lorg/telegram/ui/ActionBar/AlertDialog;Lcom/exteragram/messenger/ai/data/Service;)V
    .locals 0

    .line 361
    iput-object p1, p0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity$5;->this$0:Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;

    iput-object p2, p0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity$5;->val$progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    iput-object p3, p0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity$5;->val$service:Lcom/exteragram/messenger/ai/data/Service;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChunk(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 1

    .line 390
    iget-object p2, p0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity$5;->val$progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {p2}, Landroid/app/Dialog;->isShowing()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 392
    :try_start_0
    iget-object p2, p0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity$5;->val$progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 394
    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 397
    :cond_0
    :goto_0
    iget-object p2, p0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity$5;->this$0:Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;

    invoke-static {p2, p1}, Lcom/exteragram/messenger/ai/AiController;->showErrorBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;I)V

    .line 398
    iget-object p1, p0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity$5;->this$0:Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;

    invoke-static {p1}, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->-$$Nest$fgetkeyFieldContainer(Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;)Lorg/telegram/ui/Components/OutlineTextContainerView;

    move-result-object p1

    const/4 p2, 0x3

    const/4 v0, 0x2

    invoke-virtual {p1, p2, v0}, Landroid/view/View;->performHapticFeedback(II)Z

    .line 399
    iget-object p1, p0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity$5;->this$0:Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;

    invoke-static {p1}, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->-$$Nest$fgeturlFieldContainer(Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;)Lorg/telegram/ui/Components/OutlineTextContainerView;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->shakeView(Landroid/view/View;)V

    .line 400
    iget-object p1, p0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity$5;->this$0:Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;

    invoke-static {p1}, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->-$$Nest$fgetmodelFieldContainer(Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;)Lorg/telegram/ui/Components/OutlineTextContainerView;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->shakeView(Landroid/view/View;)V

    .line 401
    iget-object p1, p0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity$5;->this$0:Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;

    invoke-static {p1}, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->-$$Nest$fgetkeyFieldContainer(Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;)Lorg/telegram/ui/Components/OutlineTextContainerView;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->shakeView(Landroid/view/View;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 2

    .line 369
    iget-object v0, p0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity$5;->val$progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    :try_start_0
    iget-object v0, p0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity$5;->val$progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 373
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 376
    :cond_0
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 377
    invoke-static {}, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->-$$Nest$sfgetcurrentService()Lcom/exteragram/messenger/ai/data/Service;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 378
    invoke-static {}, Lcom/exteragram/messenger/ai/AiController;->getInstance()Lcom/exteragram/messenger/ai/AiController;

    move-result-object p1

    invoke-static {}, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->-$$Nest$sfgetcurrentService()Lcom/exteragram/messenger/ai/data/Service;

    move-result-object v0

    iget-object v1, p0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity$5;->val$service:Lcom/exteragram/messenger/ai/data/Service;

    invoke-virtual {p1, v0, v1}, Lcom/exteragram/messenger/ai/AiController;->updateService(Lcom/exteragram/messenger/ai/data/Service;Lcom/exteragram/messenger/ai/data/Service;)V

    goto :goto_1

    .line 380
    :cond_1
    invoke-static {}, Lcom/exteragram/messenger/ai/AiController;->getInstance()Lcom/exteragram/messenger/ai/AiController;

    move-result-object p1

    iget-object v0, p0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity$5;->val$service:Lcom/exteragram/messenger/ai/data/Service;

    invoke-virtual {p1, v0}, Lcom/exteragram/messenger/ai/AiController;->addService(Lcom/exteragram/messenger/ai/data/Service;)V

    .line 382
    :goto_1
    iget-object p1, p0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity$5;->val$service:Lcom/exteragram/messenger/ai/data/Service;

    invoke-static {p1}, Lcom/exteragram/messenger/ai/AiConfig;->setSelectedServices(Lcom/exteragram/messenger/ai/data/Service;)V

    .line 383
    iget-object p1, p0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity$5;->this$0:Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->servicesUpdated:I

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 384
    iget-object p1, p0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity$5;->this$0:Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    :cond_2
    return-void
.end method
