.class Lorg/telegram/ui/ChatActivity$37$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/ChatActivity$ChatActivityDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity$37;->createView(I)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChatActivity$37;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity$37;)V
    .locals 0

    .line 7846
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$37$2;->this$1:Lorg/telegram/ui/ChatActivity$37;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic onUnpin(ZZ)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/ChatActivity$ChatActivityDelegate$-CC;->$default$onUnpin(Lorg/telegram/ui/ChatActivity$ChatActivityDelegate;ZZ)V

    return-void
.end method

.method public openHashtagSearch(Ljava/lang/String;)V
    .locals 1

    .line 7849
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$37$2;->this$1:Lorg/telegram/ui/ChatActivity$37;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$37;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ChatActivity;->openHashtagSearch(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic openReplyMessage(I)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/ChatActivity$ChatActivityDelegate$-CC;->$default$openReplyMessage(Lorg/telegram/ui/ChatActivity$ChatActivityDelegate;I)V

    return-void
.end method
