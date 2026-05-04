.class public final synthetic Lorg/telegram/messenger/ChatObject$Call$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 0
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallParticipants;

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallParticipants;

    invoke-static {p1, p2}, Lorg/telegram/messenger/ChatObject$Call;->$r8$lambda$lFO11YgNXgQjEUHeV-VCw5GrLKA(Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallParticipants;Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallParticipants;)I

    move-result p1

    return p1
.end method
