.class final Lorg/telegram/messenger/support/JobIntentService$CommandProcessor;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/support/JobIntentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "CommandProcessor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/support/JobIntentService;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/support/JobIntentService;)V
    .locals 0

    .line 343
    iput-object p1, p0, Lorg/telegram/messenger/support/JobIntentService$CommandProcessor;->this$0:Lorg/telegram/messenger/support/JobIntentService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 343
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/support/JobIntentService$CommandProcessor;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    .line 350
    :catchall_0
    :goto_0
    iget-object p1, p0, Lorg/telegram/messenger/support/JobIntentService$CommandProcessor;->this$0:Lorg/telegram/messenger/support/JobIntentService;

    invoke-virtual {p1}, Lorg/telegram/messenger/support/JobIntentService;->dequeueWork()Lorg/telegram/messenger/support/JobIntentService$GenericWorkItem;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 352
    iget-object v0, p0, Lorg/telegram/messenger/support/JobIntentService$CommandProcessor;->this$0:Lorg/telegram/messenger/support/JobIntentService;

    invoke-interface {p1}, Lorg/telegram/messenger/support/JobIntentService$GenericWorkItem;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/JobIntentService;->onHandleWork(Landroid/content/Intent;)V

    .line 355
    :try_start_0
    invoke-interface {p1}, Lorg/telegram/messenger/support/JobIntentService$GenericWorkItem;->complete()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    .line 343
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/support/JobIntentService$CommandProcessor;->onCancelled(Ljava/lang/Void;)V

    return-void
.end method

.method protected onCancelled(Ljava/lang/Void;)V
    .locals 0

    .line 368
    iget-object p1, p0, Lorg/telegram/messenger/support/JobIntentService$CommandProcessor;->this$0:Lorg/telegram/messenger/support/JobIntentService;

    invoke-virtual {p1}, Lorg/telegram/messenger/support/JobIntentService;->processorFinished()V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 343
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/support/JobIntentService$CommandProcessor;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 0

    .line 373
    iget-object p1, p0, Lorg/telegram/messenger/support/JobIntentService$CommandProcessor;->this$0:Lorg/telegram/messenger/support/JobIntentService;

    invoke-virtual {p1}, Lorg/telegram/messenger/support/JobIntentService;->processorFinished()V

    return-void
.end method
