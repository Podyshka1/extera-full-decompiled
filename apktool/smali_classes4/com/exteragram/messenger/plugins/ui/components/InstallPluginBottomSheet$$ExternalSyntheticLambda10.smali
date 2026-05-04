.class public final synthetic Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/Utilities$Callback;


# instance fields
.field public final synthetic f$0:Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;

.field public final synthetic f$1:Lorg/telegram/ui/ActionBar/BaseFragment;

.field public final synthetic f$2:Lcom/exteragram/messenger/plugins/PluginsController$PluginValidationResult;


# direct methods
.method public synthetic constructor <init>(Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/exteragram/messenger/plugins/PluginsController$PluginValidationResult;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$$ExternalSyntheticLambda10;->f$0:Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;

    iput-object p2, p0, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$$ExternalSyntheticLambda10;->f$1:Lorg/telegram/ui/ActionBar/BaseFragment;

    iput-object p3, p0, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$$ExternalSyntheticLambda10;->f$2:Lcom/exteragram/messenger/plugins/PluginsController$PluginValidationResult;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$$ExternalSyntheticLambda10;->f$0:Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;

    iget-object v1, p0, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$$ExternalSyntheticLambda10;->f$1:Lorg/telegram/ui/ActionBar/BaseFragment;

    iget-object v2, p0, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$$ExternalSyntheticLambda10;->f$2:Lcom/exteragram/messenger/plugins/PluginsController$PluginValidationResult;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, v2, p1}, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;->$r8$lambda$uTQAqKd2QAYb4yMvnxnD4wBhIgQ(Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/exteragram/messenger/plugins/PluginsController$PluginValidationResult;Ljava/lang/String;)V

    return-void
.end method
