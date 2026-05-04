.class public final synthetic Lorg/telegram/ui/Components/ChatActivityEnterView$$ExternalSyntheticLambda82;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

.field public final synthetic f$1:Lorg/telegram/messenger/MessageObject;

.field public final synthetic f$2:Lorg/telegram/messenger/MessageObject$GroupedMessages;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/ChatActivityEnterView;Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject$GroupedMessages;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$$ExternalSyntheticLambda82;->f$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iput-object p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$$ExternalSyntheticLambda82;->f$1:Lorg/telegram/messenger/MessageObject;

    iput-object p3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$$ExternalSyntheticLambda82;->f$2:Lorg/telegram/messenger/MessageObject$GroupedMessages;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$$ExternalSyntheticLambda82;->f$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$$ExternalSyntheticLambda82;->f$1:Lorg/telegram/messenger/MessageObject;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$$ExternalSyntheticLambda82;->f$2:Lorg/telegram/messenger/MessageObject$GroupedMessages;

    invoke-static {v0, v1, v2, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->$r8$lambda$7p--KT9E54Ut3O5upvfTDQE4d7M(Lorg/telegram/ui/Components/ChatActivityEnterView;Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject$GroupedMessages;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
