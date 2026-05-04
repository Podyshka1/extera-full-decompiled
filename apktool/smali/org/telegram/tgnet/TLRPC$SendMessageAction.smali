.class public abstract Lorg/telegram/tgnet/TLRPC$SendMessageAction;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SendMessageAction"
.end annotation


# instance fields
.field public progress:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5768
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$SendMessageAction;
    .locals 2

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    goto/16 :goto_0

    .line 5808
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_sendMessageChooseContactAction;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_sendMessageChooseContactAction;-><init>()V

    goto/16 :goto_0

    .line 5775
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_sendMessageTextDraftAction;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_sendMessageTextDraftAction;-><init>()V

    goto/16 :goto_0

    .line 5841
    :sswitch_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_sendMessageEmojiInteraction;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_sendMessageEmojiInteraction;-><init>()V

    goto/16 :goto_0

    .line 5817
    :sswitch_3
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_sendMessageUploadRoundAction;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_sendMessageUploadRoundAction;-><init>()V

    goto/16 :goto_0

    .line 5805
    :sswitch_4
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_sendMessageGeoLocationAction;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_sendMessageGeoLocationAction;-><init>()V

    goto/16 :goto_0

    .line 5823
    :sswitch_5
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_sendMessageTypingAction;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_sendMessageTypingAction;-><init>()V

    goto/16 :goto_0

    .line 5802
    :sswitch_6
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_sendMessageCancelAction;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_sendMessageCancelAction;-><init>()V

    goto/16 :goto_0

    .line 5790
    :sswitch_7
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_sendMessageUploadAudioAction;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_sendMessageUploadAudioAction;-><init>()V

    goto/16 :goto_0

    .line 5799
    :sswitch_8
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_sendMessageUploadVideoAction;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_sendMessageUploadVideoAction;-><init>()V

    goto :goto_0

    .line 5787
    :sswitch_9
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_sendMessageUploadAudioAction_old;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_sendMessageUploadAudioAction_old;-><init>()V

    goto :goto_0

    .line 5778
    :sswitch_a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_sendMessageGamePlayAction;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_sendMessageGamePlayAction;-><init>()V

    goto :goto_0

    .line 5826
    :sswitch_b
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_sendMessageHistoryImportAction;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_sendMessageHistoryImportAction;-><init>()V

    goto :goto_0

    .line 5835
    :sswitch_c
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_speakingInGroupCallAction;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_speakingInGroupCallAction;-><init>()V

    goto :goto_0

    .line 5781
    :sswitch_d
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_sendMessageRecordAudioAction;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_sendMessageRecordAudioAction;-><init>()V

    goto :goto_0

    .line 5793
    :sswitch_e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_sendMessageUploadPhotoAction;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_sendMessageUploadPhotoAction;-><init>()V

    goto :goto_0

    .line 5820
    :sswitch_f
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_sendMessageUploadRoundAction_layer66;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_sendMessageUploadRoundAction_layer66;-><init>()V

    goto :goto_0

    .line 5844
    :sswitch_10
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_sendMessageEmojiInteractionSeen;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_sendMessageEmojiInteractionSeen;-><init>()V

    goto :goto_0

    .line 5811
    :sswitch_11
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_sendMessageChooseStickerAction;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_sendMessageChooseStickerAction;-><init>()V

    goto :goto_0

    .line 5832
    :sswitch_12
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_sendMessageUploadDocumentAction;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_sendMessageUploadDocumentAction;-><init>()V

    goto :goto_0

    .line 5838
    :sswitch_13
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_sendMessageRecordVideoAction;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_sendMessageRecordVideoAction;-><init>()V

    goto :goto_0

    .line 5829
    :sswitch_14
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_sendMessageUploadPhotoAction_old;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_sendMessageUploadPhotoAction_old;-><init>()V

    goto :goto_0

    .line 5784
    :sswitch_15
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_sendMessageUploadVideoAction_old;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_sendMessageUploadVideoAction_old;-><init>()V

    goto :goto_0

    .line 5796
    :sswitch_16
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_sendMessageUploadDocumentAction_old;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_sendMessageUploadDocumentAction_old;-><init>()V

    goto :goto_0

    .line 5814
    :sswitch_17
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_sendMessageRecordRoundAction;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_sendMessageRecordRoundAction;-><init>()V

    .line 5847
    :goto_0
    const-class v1, Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    invoke-static {v1, v0, p0, p1, p2}, Lorg/telegram/tgnet/TLObject;->TLdeserialize(Ljava/lang/Class;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;

    move-result-object p0

    check-cast p0, Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x770d8044 -> :sswitch_17
        -0x70511672 -> :sswitch_16
        -0x6dfbd009 -> :sswitch_15
        -0x66f5c3e6 -> :sswitch_14
        -0x5e782991 -> :sswitch_13
        -0x55f3261c -> :sswitch_12
        -0x4fa5394f -> :sswitch_11
        -0x499a6fd2 -> :sswitch_10
        -0x448e79dc -> :sswitch_f
        -0x2e2cb5da -> :sswitch_e
        -0x2ad08c09 -> :sswitch_d
        -0x26d3dd7b -> :sswitch_c
        -0x24256dba -> :sswitch_b
        -0x229570b8 -> :sswitch_a
        -0x19537591 -> :sswitch_9
        -0x1689c514 -> :sswitch_8
        -0xcae2855 -> :sswitch_7
        -0x2a1370b -> :sswitch_6
        0x16bf744e -> :sswitch_5
        0x176f8ba1 -> :sswitch_4
        0x243e1c66 -> :sswitch_3
        0x25972bcb -> :sswitch_2
        0x376d975c -> :sswitch_1
        0x628cbc6f -> :sswitch_0
    .end sparse-switch
.end method
