.class public final synthetic Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda491;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ChatActivity;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

.field public final synthetic f$2:Lorg/telegram/tgnet/TLRPC$TL_webPageAttributeStory;

.field public final synthetic f$3:Lorg/telegram/messenger/Utilities$Callback2;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ChatActivity;Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;Lorg/telegram/tgnet/TLRPC$TL_webPageAttributeStory;Lorg/telegram/messenger/Utilities$Callback2;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda491;->f$0:Lorg/telegram/ui/ChatActivity;

    iput-object p2, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda491;->f$1:Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    iput-object p3, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda491;->f$2:Lorg/telegram/tgnet/TLRPC$TL_webPageAttributeStory;

    iput-object p4, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda491;->f$3:Lorg/telegram/messenger/Utilities$Callback2;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda491;->f$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda491;->f$1:Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda491;->f$2:Lorg/telegram/tgnet/TLRPC$TL_webPageAttributeStory;

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda491;->f$3:Lorg/telegram/messenger/Utilities$Callback2;

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/ui/ChatActivity;->$r8$lambda$HBR8zv_o_-_QM5yTY34GDgKrMrg(Lorg/telegram/ui/ChatActivity;Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;Lorg/telegram/tgnet/TLRPC$TL_webPageAttributeStory;Lorg/telegram/messenger/Utilities$Callback2;)V

    return-void
.end method
