.class Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/exteragram/messenger/plugins/pip/PipController$InstallerDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/exteragram/messenger/plugins/PluginsController$PluginValidationResult;Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$PluginInstallParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;


# direct methods
.method public static synthetic $r8$lambda$MwanY7Yfh8cPMPPxv34k0TeqYdY(Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$3;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$3;->lambda$onProgress$0(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;)V
    .locals 0

    .line 347
    iput-object p1, p0, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$3;->this$0:Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onProgress$0(Ljava/lang/String;)V
    .locals 3

    .line 351
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$3;->this$0:Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;

    invoke-static {v0}, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;->-$$Nest$fgetdelayedLoadingRunnable(Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$3;->this$0:Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;

    invoke-static {v0}, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;->-$$Nest$fgetdelayedLoadingRunnable(Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 353
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$3;->this$0:Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;->-$$Nest$fputdelayedLoadingRunnable(Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;Ljava/lang/Runnable;)V

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$3;->this$0:Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;

    invoke-static {v0}, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;->-$$Nest$fgetcancellationRequested(Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 356
    :cond_1
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$3;->this$0:Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;

    invoke-static {v0}, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;->-$$Nest$fgetbutton(Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;)Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    .line 357
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$3;->this$0:Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;

    invoke-static {v0}, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;->-$$Nest$fgetbutton(Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;)Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    .line 358
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$3;->this$0:Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;

    invoke-static {v0}, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;->-$$Nest$fgetbutton(Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;)Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    move-result-object v0

    invoke-virtual {v0, p1, v2}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setSubText(Ljava/lang/CharSequence;Z)V

    return-void
.end method


# virtual methods
.method public isCancelled()Z
    .locals 1

    .line 364
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$3;->this$0:Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;

    invoke-static {v0}, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;->-$$Nest$fgetcancellationRequested(Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;)Z

    move-result v0

    return v0
.end method

.method public onProgress(Ljava/lang/String;)V
    .locals 1

    .line 350
    new-instance v0, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$3$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$3$$ExternalSyntheticLambda0;-><init>(Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$3;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method
