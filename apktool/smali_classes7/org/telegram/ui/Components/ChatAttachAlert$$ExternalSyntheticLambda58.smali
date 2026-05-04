.class public final synthetic Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda58;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/Utilities$Callback;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/ChatAttachAlert;

.field public final synthetic f$1:Lorg/telegram/ui/ChatActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/ui/ChatActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda58;->f$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iput-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda58;->f$1:Lorg/telegram/ui/ChatActivity;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda58;->f$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda58;->f$1:Lorg/telegram/ui/ChatActivity;

    check-cast p1, Lorg/telegram/messenger/MessageSuggestionParams;

    invoke-static {v0, v1, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->$r8$lambda$gdTGAURXolyxzlaMSgQBfAUVqnA(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageSuggestionParams;)V

    return-void
.end method
