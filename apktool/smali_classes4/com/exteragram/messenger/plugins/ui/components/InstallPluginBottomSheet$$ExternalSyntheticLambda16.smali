.class public final synthetic Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;

.field public final synthetic f$1:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic f$2:Lcom/exteragram/messenger/plugins/Plugin;

.field public final synthetic f$3:Lorg/telegram/ui/Components/BulletinFactory;


# direct methods
.method public synthetic constructor <init>(Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/exteragram/messenger/plugins/Plugin;Lorg/telegram/ui/Components/BulletinFactory;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$$ExternalSyntheticLambda16;->f$0:Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;

    iput-object p2, p0, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$$ExternalSyntheticLambda16;->f$1:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$$ExternalSyntheticLambda16;->f$2:Lcom/exteragram/messenger/plugins/Plugin;

    iput-object p4, p0, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$$ExternalSyntheticLambda16;->f$3:Lorg/telegram/ui/Components/BulletinFactory;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$$ExternalSyntheticLambda16;->f$0:Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;

    iget-object v1, p0, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$$ExternalSyntheticLambda16;->f$1:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v2, p0, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$$ExternalSyntheticLambda16;->f$2:Lcom/exteragram/messenger/plugins/Plugin;

    iget-object v3, p0, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$$ExternalSyntheticLambda16;->f$3:Lorg/telegram/ui/Components/BulletinFactory;

    invoke-static {v0, v1, v2, v3}, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;->$r8$lambda$E4sf1qt-hYxGgxEPKkmoQQexYCQ(Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/exteragram/messenger/plugins/Plugin;Lorg/telegram/ui/Components/BulletinFactory;)V

    return-void
.end method
