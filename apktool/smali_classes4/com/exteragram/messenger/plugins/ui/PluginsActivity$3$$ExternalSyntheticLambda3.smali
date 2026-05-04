.class public final synthetic Lcom/exteragram/messenger/plugins/ui/PluginsActivity$3$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/exteragram/messenger/plugins/ui/PluginsActivity$3;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Lcom/exteragram/messenger/plugins/Plugin;

.field public final synthetic f$4:Lcom/exteragram/messenger/plugins/ui/components/PluginCell;


# direct methods
.method public synthetic constructor <init>(Lcom/exteragram/messenger/plugins/ui/PluginsActivity$3;Ljava/lang/String;ZLcom/exteragram/messenger/plugins/Plugin;Lcom/exteragram/messenger/plugins/ui/components/PluginCell;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/exteragram/messenger/plugins/ui/PluginsActivity$3$$ExternalSyntheticLambda3;->f$0:Lcom/exteragram/messenger/plugins/ui/PluginsActivity$3;

    iput-object p2, p0, Lcom/exteragram/messenger/plugins/ui/PluginsActivity$3$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/exteragram/messenger/plugins/ui/PluginsActivity$3$$ExternalSyntheticLambda3;->f$2:Z

    iput-object p4, p0, Lcom/exteragram/messenger/plugins/ui/PluginsActivity$3$$ExternalSyntheticLambda3;->f$3:Lcom/exteragram/messenger/plugins/Plugin;

    iput-object p5, p0, Lcom/exteragram/messenger/plugins/ui/PluginsActivity$3$$ExternalSyntheticLambda3;->f$4:Lcom/exteragram/messenger/plugins/ui/components/PluginCell;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 0
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/PluginsActivity$3$$ExternalSyntheticLambda3;->f$0:Lcom/exteragram/messenger/plugins/ui/PluginsActivity$3;

    iget-object v1, p0, Lcom/exteragram/messenger/plugins/ui/PluginsActivity$3$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/exteragram/messenger/plugins/ui/PluginsActivity$3$$ExternalSyntheticLambda3;->f$2:Z

    iget-object v3, p0, Lcom/exteragram/messenger/plugins/ui/PluginsActivity$3$$ExternalSyntheticLambda3;->f$3:Lcom/exteragram/messenger/plugins/Plugin;

    iget-object v4, p0, Lcom/exteragram/messenger/plugins/ui/PluginsActivity$3$$ExternalSyntheticLambda3;->f$4:Lcom/exteragram/messenger/plugins/ui/components/PluginCell;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/exteragram/messenger/plugins/ui/PluginsActivity$3;->$r8$lambda$ehvUUfKwevv_2WLwcs4xGVd5Ck4(Lcom/exteragram/messenger/plugins/ui/PluginsActivity$3;Ljava/lang/String;ZLcom/exteragram/messenger/plugins/Plugin;Lcom/exteragram/messenger/plugins/ui/components/PluginCell;)V

    return-void
.end method
