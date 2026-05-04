.class public final synthetic Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/widget/LinearLayout;

.field public final synthetic f$1:Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$PluginInstallParams;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/LinearLayout;Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$PluginInstallParams;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$$ExternalSyntheticLambda8;->f$0:Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$$ExternalSyntheticLambda8;->f$1:Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$PluginInstallParams;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$$ExternalSyntheticLambda8;->f$0:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$$ExternalSyntheticLambda8;->f$1:Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$PluginInstallParams;

    invoke-static {v0, v1}, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;->$r8$lambda$NCk_PnzBOhorfCXboXcLY60hXac(Landroid/widget/LinearLayout;Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$PluginInstallParams;)V

    return-void
.end method
