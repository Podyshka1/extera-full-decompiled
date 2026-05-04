.class Lorg/telegram/ui/ChatActivity$82;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/ChatActivity$ChatActivityDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->openScheduledMessages(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity;)V
    .locals 0

    .line 13191
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$82;->this$0:Lorg/telegram/ui/ChatActivity;

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

    .line 13199
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$82;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ChatActivity;->openHashtagSearch(Ljava/lang/String;)V

    return-void
.end method

.method public openReplyMessage(I)V
    .locals 7

    .line 13194
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$82;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    move v1, p1

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/ChatActivity;->scrollToMessageId(IIZIZI)V

    return-void
.end method
