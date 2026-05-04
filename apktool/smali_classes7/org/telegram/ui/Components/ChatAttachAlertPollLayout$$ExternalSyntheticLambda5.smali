.class public final synthetic Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/Utilities$Callback;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

.field public final synthetic f$1:Lorg/telegram/ui/ChatActivity;

.field public final synthetic f$2:Lorg/telegram/tgnet/TLRPC$TL_messageMediaToDo;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;Lorg/telegram/ui/ChatActivity;Lorg/telegram/tgnet/TLRPC$TL_messageMediaToDo;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$$ExternalSyntheticLambda5;->f$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    iput-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$$ExternalSyntheticLambda5;->f$1:Lorg/telegram/ui/ChatActivity;

    iput-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$$ExternalSyntheticLambda5;->f$2:Lorg/telegram/tgnet/TLRPC$TL_messageMediaToDo;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$$ExternalSyntheticLambda5;->f$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$$ExternalSyntheticLambda5;->f$1:Lorg/telegram/ui/ChatActivity;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$$ExternalSyntheticLambda5;->f$2:Lorg/telegram/tgnet/TLRPC$TL_messageMediaToDo;

    check-cast p1, Ljava/lang/Long;

    invoke-static {v0, v1, v2, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->$r8$lambda$w_JA_03YrW4QE37BLXrfH5Zmfjg(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;Lorg/telegram/ui/ChatActivity;Lorg/telegram/tgnet/TLRPC$TL_messageMediaToDo;Ljava/lang/Long;)V

    return-void
.end method
