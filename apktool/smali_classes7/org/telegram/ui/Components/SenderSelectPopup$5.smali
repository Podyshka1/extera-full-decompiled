.class Lorg/telegram/ui/Components/SenderSelectPopup$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/Bulletin$Layout$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/SenderSelectPopup;-><init>(Landroid/content/Context;Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessagesController;ZLorg/telegram/tgnet/TLRPC$Peer;Lorg/telegram/tgnet/TLRPC$TL_channels_sendAsPeers;Lorg/telegram/ui/Components/SenderSelectPopup$OnSelectCallback;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/SenderSelectPopup;

.field final synthetic val$bulletin:Lorg/telegram/ui/Components/Bulletin;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/SenderSelectPopup;Lorg/telegram/ui/Components/Bulletin;)V
    .locals 0

    .line 298
    iput-object p1, p0, Lorg/telegram/ui/Components/SenderSelectPopup$5;->this$0:Lorg/telegram/ui/Components/SenderSelectPopup;

    iput-object p2, p0, Lorg/telegram/ui/Components/SenderSelectPopup$5;->val$bulletin:Lorg/telegram/ui/Components/Bulletin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic onAttach(Lorg/telegram/ui/Components/Bulletin$Layout;Lorg/telegram/ui/Components/Bulletin;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Components/Bulletin$Layout$Callback$-CC;->$default$onAttach(Lorg/telegram/ui/Components/Bulletin$Layout$Callback;Lorg/telegram/ui/Components/Bulletin$Layout;Lorg/telegram/ui/Components/Bulletin;)V

    return-void
.end method

.method public synthetic onDetach(Lorg/telegram/ui/Components/Bulletin$Layout;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/Bulletin$Layout$Callback$-CC;->$default$onDetach(Lorg/telegram/ui/Components/Bulletin$Layout$Callback;Lorg/telegram/ui/Components/Bulletin$Layout;)V

    return-void
.end method

.method public synthetic onEnterTransitionEnd(Lorg/telegram/ui/Components/Bulletin$Layout;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/Bulletin$Layout$Callback$-CC;->$default$onEnterTransitionEnd(Lorg/telegram/ui/Components/Bulletin$Layout$Callback;Lorg/telegram/ui/Components/Bulletin$Layout;)V

    return-void
.end method

.method public synthetic onEnterTransitionStart(Lorg/telegram/ui/Components/Bulletin$Layout;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/Bulletin$Layout$Callback$-CC;->$default$onEnterTransitionStart(Lorg/telegram/ui/Components/Bulletin$Layout$Callback;Lorg/telegram/ui/Components/Bulletin$Layout;)V

    return-void
.end method

.method public synthetic onExitTransitionEnd(Lorg/telegram/ui/Components/Bulletin$Layout;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/Bulletin$Layout$Callback$-CC;->$default$onExitTransitionEnd(Lorg/telegram/ui/Components/Bulletin$Layout$Callback;Lorg/telegram/ui/Components/Bulletin$Layout;)V

    return-void
.end method

.method public synthetic onExitTransitionStart(Lorg/telegram/ui/Components/Bulletin$Layout;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/Bulletin$Layout$Callback$-CC;->$default$onExitTransitionStart(Lorg/telegram/ui/Components/Bulletin$Layout$Callback;Lorg/telegram/ui/Components/Bulletin$Layout;)V

    return-void
.end method

.method public onHide(Lorg/telegram/ui/Components/Bulletin$Layout;)V
    .locals 1

    .line 306
    iget-object p1, p0, Lorg/telegram/ui/Components/SenderSelectPopup$5;->this$0:Lorg/telegram/ui/Components/SenderSelectPopup;

    invoke-static {p1}, Lorg/telegram/ui/Components/SenderSelectPopup;->-$$Nest$fgetbulletins(Lorg/telegram/ui/Components/SenderSelectPopup;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/SenderSelectPopup$5;->val$bulletin:Lorg/telegram/ui/Components/Bulletin;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public onShow(Lorg/telegram/ui/Components/Bulletin$Layout;)V
    .locals 1

    .line 301
    iget-object p1, p0, Lorg/telegram/ui/Components/SenderSelectPopup$5;->this$0:Lorg/telegram/ui/Components/SenderSelectPopup;

    invoke-static {p1}, Lorg/telegram/ui/Components/SenderSelectPopup;->-$$Nest$fgetbulletins(Lorg/telegram/ui/Components/SenderSelectPopup;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/SenderSelectPopup$5;->val$bulletin:Lorg/telegram/ui/Components/Bulletin;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
