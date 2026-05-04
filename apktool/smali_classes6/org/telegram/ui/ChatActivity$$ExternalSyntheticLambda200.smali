.class public final synthetic Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda200;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/Utilities$Callback;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ChatActivity;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$BotInlineResult;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ChatActivity;Lorg/telegram/tgnet/TLRPC$BotInlineResult;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda200;->f$0:Lorg/telegram/ui/ChatActivity;

    iput-object p2, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda200;->f$1:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda200;->f$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda200;->f$1:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    check-cast p1, Ljava/lang/Long;

    invoke-static {v0, v1, p1}, Lorg/telegram/ui/ChatActivity;->$r8$lambda$3ZgbwLb5G4lfH23RrOPiyM-810k(Lorg/telegram/ui/ChatActivity;Lorg/telegram/tgnet/TLRPC$BotInlineResult;Ljava/lang/Long;)V

    return-void
.end method
