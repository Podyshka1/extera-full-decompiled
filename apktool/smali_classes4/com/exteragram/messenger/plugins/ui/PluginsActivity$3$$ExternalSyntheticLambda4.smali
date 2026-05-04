.class public final synthetic Lcom/exteragram/messenger/plugins/ui/PluginsActivity$3$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/Utilities$Callback;


# instance fields
.field public final synthetic f$0:Lcom/exteragram/messenger/plugins/ui/PluginsActivity$3;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Lcom/exteragram/messenger/plugins/Plugin;

.field public final synthetic f$3:Lcom/exteragram/messenger/plugins/ui/components/PluginCell;


# direct methods
.method public synthetic constructor <init>(Lcom/exteragram/messenger/plugins/ui/PluginsActivity$3;ZLcom/exteragram/messenger/plugins/Plugin;Lcom/exteragram/messenger/plugins/ui/components/PluginCell;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/exteragram/messenger/plugins/ui/PluginsActivity$3$$ExternalSyntheticLambda4;->f$0:Lcom/exteragram/messenger/plugins/ui/PluginsActivity$3;

    iput-boolean p2, p0, Lcom/exteragram/messenger/plugins/ui/PluginsActivity$3$$ExternalSyntheticLambda4;->f$1:Z

    iput-object p3, p0, Lcom/exteragram/messenger/plugins/ui/PluginsActivity$3$$ExternalSyntheticLambda4;->f$2:Lcom/exteragram/messenger/plugins/Plugin;

    iput-object p4, p0, Lcom/exteragram/messenger/plugins/ui/PluginsActivity$3$$ExternalSyntheticLambda4;->f$3:Lcom/exteragram/messenger/plugins/ui/components/PluginCell;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/PluginsActivity$3$$ExternalSyntheticLambda4;->f$0:Lcom/exteragram/messenger/plugins/ui/PluginsActivity$3;

    iget-boolean v1, p0, Lcom/exteragram/messenger/plugins/ui/PluginsActivity$3$$ExternalSyntheticLambda4;->f$1:Z

    iget-object v2, p0, Lcom/exteragram/messenger/plugins/ui/PluginsActivity$3$$ExternalSyntheticLambda4;->f$2:Lcom/exteragram/messenger/plugins/Plugin;

    iget-object v3, p0, Lcom/exteragram/messenger/plugins/ui/PluginsActivity$3$$ExternalSyntheticLambda4;->f$3:Lcom/exteragram/messenger/plugins/ui/components/PluginCell;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/exteragram/messenger/plugins/ui/PluginsActivity$3;->$r8$lambda$mq7EGz45TjUjdUcWoVsQoXK_eg8(Lcom/exteragram/messenger/plugins/ui/PluginsActivity$3;ZLcom/exteragram/messenger/plugins/Plugin;Lcom/exteragram/messenger/plugins/ui/components/PluginCell;Ljava/lang/String;)V

    return-void
.end method
