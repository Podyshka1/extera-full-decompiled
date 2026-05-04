.class public abstract Lorg/telegram/tgnet/TLRPC$ChatParticipants;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ChatParticipants"
.end annotation


# instance fields
.field public admin_id:J

.field public chat_id:J

.field public flags:I

.field public participants:Ljava/util/ArrayList;

.field public self_participant:Lorg/telegram/tgnet/TLRPC$ChatParticipant;

.field public version:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40181
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 40185
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$ChatParticipants;
    .locals 2

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    goto :goto_0

    .line 40205
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_chatParticipants_old;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_chatParticipants_old;-><init>()V

    goto :goto_0

    .line 40196
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_chatParticipants_layer131;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_chatParticipants_layer131;-><init>()V

    goto :goto_0

    .line 40202
    :sswitch_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_chatParticipants;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_chatParticipants;-><init>()V

    goto :goto_0

    .line 40208
    :sswitch_3
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantsForbidden_old;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantsForbidden_old;-><init>()V

    goto :goto_0

    .line 40193
    :sswitch_4
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantsForbidden_layer131;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantsForbidden_layer131;-><init>()V

    goto :goto_0

    .line 40199
    :sswitch_5
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantsForbidden;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantsForbidden;-><init>()V

    .line 40211
    :goto_0
    const-class v1, Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    invoke-static {v1, v0, p0, p1, p2}, Lorg/telegram/tgnet/TLObject;->TLdeserialize(Ljava/lang/Class;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;

    move-result-object p0

    check-cast p0, Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x789c2c1f -> :sswitch_5
        -0x36ff3d5 -> :sswitch_4
        0xfd2bb8a -> :sswitch_3
        0x3cbc93f8 -> :sswitch_2
        0x3f460fed -> :sswitch_1
        0x7841b415 -> :sswitch_0
    .end sparse-switch
.end method
