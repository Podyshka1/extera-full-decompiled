.class public final synthetic Lcom/exteragram/messenger/utils/chats/MainMenuHelper$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;

.field public final synthetic f$1:Lcom/exteragram/messenger/utils/chats/MainMenuHelper$MenuContext;

.field public final synthetic f$2:Lorg/telegram/ui/LaunchActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;Lcom/exteragram/messenger/utils/chats/MainMenuHelper$MenuContext;Lorg/telegram/ui/LaunchActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/exteragram/messenger/utils/chats/MainMenuHelper$$ExternalSyntheticLambda13;->f$0:Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;

    iput-object p2, p0, Lcom/exteragram/messenger/utils/chats/MainMenuHelper$$ExternalSyntheticLambda13;->f$1:Lcom/exteragram/messenger/utils/chats/MainMenuHelper$MenuContext;

    iput-object p3, p0, Lcom/exteragram/messenger/utils/chats/MainMenuHelper$$ExternalSyntheticLambda13;->f$2:Lorg/telegram/ui/LaunchActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/exteragram/messenger/utils/chats/MainMenuHelper$$ExternalSyntheticLambda13;->f$0:Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;

    iget-object v1, p0, Lcom/exteragram/messenger/utils/chats/MainMenuHelper$$ExternalSyntheticLambda13;->f$1:Lcom/exteragram/messenger/utils/chats/MainMenuHelper$MenuContext;

    iget-object v2, p0, Lcom/exteragram/messenger/utils/chats/MainMenuHelper$$ExternalSyntheticLambda13;->f$2:Lorg/telegram/ui/LaunchActivity;

    invoke-static {v0, v1, v2}, Lcom/exteragram/messenger/utils/chats/MainMenuHelper;->$r8$lambda$aFG6dv6_ZUI0SQH7AiQfnru5GSw(Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;Lcom/exteragram/messenger/utils/chats/MainMenuHelper$MenuContext;Lorg/telegram/ui/LaunchActivity;)V

    return-void
.end method
