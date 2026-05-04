.class public final synthetic Lcom/exteragram/messenger/utils/chats/ChatUtils$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Landroid/app/Activity;

.field public final synthetic f$3:Lorg/telegram/messenger/Utilities$Callback;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;ZLandroid/app/Activity;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/exteragram/messenger/utils/chats/ChatUtils$$ExternalSyntheticLambda4;->f$0:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/exteragram/messenger/utils/chats/ChatUtils$$ExternalSyntheticLambda4;->f$1:Z

    iput-object p3, p0, Lcom/exteragram/messenger/utils/chats/ChatUtils$$ExternalSyntheticLambda4;->f$2:Landroid/app/Activity;

    iput-object p4, p0, Lcom/exteragram/messenger/utils/chats/ChatUtils$$ExternalSyntheticLambda4;->f$3:Lorg/telegram/messenger/Utilities$Callback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/exteragram/messenger/utils/chats/ChatUtils$$ExternalSyntheticLambda4;->f$0:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/exteragram/messenger/utils/chats/ChatUtils$$ExternalSyntheticLambda4;->f$1:Z

    iget-object v2, p0, Lcom/exteragram/messenger/utils/chats/ChatUtils$$ExternalSyntheticLambda4;->f$2:Landroid/app/Activity;

    iget-object v3, p0, Lcom/exteragram/messenger/utils/chats/ChatUtils$$ExternalSyntheticLambda4;->f$3:Lorg/telegram/messenger/Utilities$Callback;

    invoke-static {v0, v1, v2, v3}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->$r8$lambda$TToaZf4KzHPJ5jfvu9l1MOFMVRY(Ljava/lang/String;ZLandroid/app/Activity;Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method
