.class Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$1;
.super Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetDelegate;
.source "SourceFile"


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
.method constructor <init>(Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$1;->this$0:Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public canDismiss()Z
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$1;->this$0:Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;

    invoke-static {v0}, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;->-$$Nest$fgetinstalling(Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
