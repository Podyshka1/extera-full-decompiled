.class Lorg/telegram/ui/TopicsFragment$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/TopicsFragment;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/TopicsFragment;


# direct methods
.method public static synthetic $r8$lambda$r6NAYkTsxq9WO_MTIwaTKuQGYMk(Lorg/telegram/ui/TopicsFragment$15;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/TopicsFragment$15;->lambda$onClick$0(I)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/TopicsFragment;)V
    .locals 0

    .line 1372
    iput-object p1, p0, Lorg/telegram/ui/TopicsFragment$15;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onClick$0(I)V
    .locals 0

    if-nez p1, :cond_0

    .line 1378
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment$15;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {p1}, Lorg/telegram/ui/TopicsFragment;->-$$Nest$mupdateChatInfo(Lorg/telegram/ui/TopicsFragment;)V

    return-void

    .line 1380
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment$15;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11

    .line 1375
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment$15;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {p1}, Lorg/telegram/ui/TopicsFragment;->-$$Nest$fgetbottomButtonType(Lorg/telegram/ui/TopicsFragment;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1376
    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment$15;->this$0:Lorg/telegram/ui/TopicsFragment;

    iget-wide v2, v1, Lorg/telegram/ui/TopicsFragment;->chatId:J

    neg-long v2, v2

    invoke-virtual {v1}, Lorg/telegram/ui/TopicsFragment;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v5

    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment$15;->this$0:Lorg/telegram/ui/TopicsFragment;

    iget-object v8, p1, Lorg/telegram/ui/TopicsFragment;->chatFull:Lorg/telegram/tgnet/TLRPC$ChatFull;

    new-instance v9, Lorg/telegram/ui/TopicsFragment$15$$ExternalSyntheticLambda0;

    invoke-direct {v9, p0}, Lorg/telegram/ui/TopicsFragment$15$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/TopicsFragment$15;)V

    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment$15;->this$0:Lorg/telegram/ui/TopicsFragment;

    .line 1382
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v10

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1376
    invoke-static/range {v1 .. v10}, Lorg/telegram/ui/Components/AlertsCreator;->showBlockReportSpamAlert(Lorg/telegram/ui/ActionBar/BaseFragment;JLorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$EncryptedChat;ZLorg/telegram/tgnet/TLRPC$ChatFull;Lorg/telegram/messenger/MessagesStorage$IntCallback;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void

    .line 1384
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment$15;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {p1}, Lorg/telegram/ui/TopicsFragment;->-$$Nest$mjoinToGroup(Lorg/telegram/ui/TopicsFragment;)V

    return-void
.end method
