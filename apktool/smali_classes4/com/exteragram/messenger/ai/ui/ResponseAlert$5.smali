.class Lcom/exteragram/messenger/ai/ui/ResponseAlert$5;
.super Lcom/exteragram/messenger/ai/ui/ResponseAlert;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/exteragram/messenger/ai/ui/ResponseAlert;->showAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/exteragram/messenger/ai/network/Client;Ljava/lang/String;Ljava/lang/String;ZZLorg/telegram/messenger/Utilities$CallbackReturn;Ljava/lang/Runnable;Lorg/telegram/messenger/Utilities$Callback2;)Lcom/exteragram/messenger/ai/ui/ResponseAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$onDismiss:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/exteragram/messenger/ai/network/Client;Ljava/lang/String;Ljava/lang/String;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/Runnable;)V
    .locals 8

    .line 251
    iput-object p7, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert$5;->val$onDismiss:Ljava/lang/Runnable;

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/exteragram/messenger/ai/ui/ResponseAlert;-><init>(Landroid/content/Context;Lcom/exteragram/messenger/ai/network/Client;Ljava/lang/String;Ljava/lang/String;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lcom/exteragram/messenger/ai/ui/ResponseAlert-IA;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 254
    invoke-super {p0}, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->dismiss()V

    .line 255
    iget-object v0, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert$5;->val$onDismiss:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 256
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
