.class public final synthetic Lcom/exteragram/messenger/plugins/ui/PluginsActivity$3$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;


# instance fields
.field public final synthetic f$0:Lcom/exteragram/messenger/plugins/ui/PluginsActivity$3;

.field public final synthetic f$1:Lcom/exteragram/messenger/plugins/Plugin;


# direct methods
.method public synthetic constructor <init>(Lcom/exteragram/messenger/plugins/ui/PluginsActivity$3;Lcom/exteragram/messenger/plugins/Plugin;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/exteragram/messenger/plugins/ui/PluginsActivity$3$$ExternalSyntheticLambda0;->f$0:Lcom/exteragram/messenger/plugins/ui/PluginsActivity$3;

    iput-object p2, p0, Lcom/exteragram/messenger/plugins/ui/PluginsActivity$3$$ExternalSyntheticLambda0;->f$1:Lcom/exteragram/messenger/plugins/Plugin;

    return-void
.end method


# virtual methods
.method public final onClick(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/PluginsActivity$3$$ExternalSyntheticLambda0;->f$0:Lcom/exteragram/messenger/plugins/ui/PluginsActivity$3;

    iget-object v1, p0, Lcom/exteragram/messenger/plugins/ui/PluginsActivity$3$$ExternalSyntheticLambda0;->f$1:Lcom/exteragram/messenger/plugins/Plugin;

    invoke-static {v0, v1, p1, p2}, Lcom/exteragram/messenger/plugins/ui/PluginsActivity$3;->$r8$lambda$1FVaSLJpls0w-K5jzt_23YfHqMM(Lcom/exteragram/messenger/plugins/ui/PluginsActivity$3;Lcom/exteragram/messenger/plugins/Plugin;Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method
