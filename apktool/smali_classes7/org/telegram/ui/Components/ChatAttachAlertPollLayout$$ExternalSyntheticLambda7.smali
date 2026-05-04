.class public final synthetic Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;

.field public final synthetic f$2:Ljava/util/HashMap;

.field public final synthetic f$3:Ljava/lang/Long;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;Ljava/util/HashMap;Ljava/lang/Long;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$$ExternalSyntheticLambda7;->f$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    iput-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$$ExternalSyntheticLambda7;->f$1:Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;

    iput-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$$ExternalSyntheticLambda7;->f$2:Ljava/util/HashMap;

    iput-object p4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$$ExternalSyntheticLambda7;->f$3:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public final didSelectDate(ZII)V
    .locals 7

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$$ExternalSyntheticLambda7;->f$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$$ExternalSyntheticLambda7;->f$1:Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$$ExternalSyntheticLambda7;->f$2:Ljava/util/HashMap;

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$$ExternalSyntheticLambda7;->f$3:Ljava/lang/Long;

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->$r8$lambda$Oy74hnarlKSHTd43tUuKKiJyehc(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;Ljava/util/HashMap;Ljava/lang/Long;ZII)V

    return-void
.end method
