.class public abstract Lorg/telegram/tgnet/TLRPC$MessagesFilter;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "MessagesFilter"
.end annotation


# instance fields
.field public flags:I

.field public missed:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46731
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$MessagesFilter;
    .locals 2

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    goto/16 :goto_0

    .line 46751
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterUrl;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterUrl;-><init>()V

    goto/16 :goto_0

    .line 46772
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterRoundVoice;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterRoundVoice;-><init>()V

    goto/16 :goto_0

    .line 46787
    :sswitch_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterEmpty;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterEmpty;-><init>()V

    goto :goto_0

    .line 46757
    :sswitch_3
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterPhotoVideo;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterPhotoVideo;-><init>()V

    goto :goto_0

    .line 46778
    :sswitch_4
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterVoice;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterVoice;-><init>()V

    goto :goto_0

    .line 46745
    :sswitch_5
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterChatPhotos;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterChatPhotos;-><init>()V

    goto :goto_0

    .line 46742
    :sswitch_6
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterMusic;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterMusic;-><init>()V

    goto :goto_0

    .line 46766
    :sswitch_7
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterPinned;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterPinned;-><init>()V

    goto :goto_0

    .line 46739
    :sswitch_8
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterGif;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterGif;-><init>()V

    goto :goto_0

    .line 46763
    :sswitch_9
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterGeo;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterGeo;-><init>()V

    goto :goto_0

    .line 46775
    :sswitch_a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterContacts;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterContacts;-><init>()V

    goto :goto_0

    .line 46760
    :sswitch_b
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterPhotoVideoDocuments;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterPhotoVideoDocuments;-><init>()V

    goto :goto_0

    .line 46769
    :sswitch_c
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterMyMentions;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterMyMentions;-><init>()V

    goto :goto_0

    .line 46790
    :sswitch_d
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterRoundVideo;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterRoundVideo;-><init>()V

    goto :goto_0

    .line 46781
    :sswitch_e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterVideo;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterVideo;-><init>()V

    goto :goto_0

    .line 46754
    :sswitch_f
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterDocument;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterDocument;-><init>()V

    goto :goto_0

    .line 46748
    :sswitch_10
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterPhotos;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterPhotos;-><init>()V

    goto :goto_0

    .line 46784
    :sswitch_11
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterPhoneCalls;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterPhoneCalls;-><init>()V

    .line 46793
    :goto_0
    const-class v1, Lorg/telegram/tgnet/TLRPC$MessagesFilter;

    invoke-static {v1, v0, p0, p1, p2}, Lorg/telegram/tgnet/TLObject;->TLdeserialize(Ljava/lang/Class;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;

    move-result-object p0

    check-cast p0, Lorg/telegram/tgnet/TLRPC$MessagesFilter;

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x7f366898 -> :sswitch_11
        -0x69f65ae4 -> :sswitch_10
        -0x61220e78 -> :sswitch_f
        -0x603ff19b -> :sswitch_e
        -0x4ab625ad -> :sswitch_d
        -0x3e071966 -> :sswitch_c
        -0x26a18c45 -> :sswitch_b
        -0x1f9d247d -> :sswitch_a
        -0x18fd92f3 -> :sswitch_9
        -0x379a79 -> :sswitch_8
        0x1bb00451 -> :sswitch_7
        0x3751b49e -> :sswitch_6
        0x3a20ecb8 -> :sswitch_5
        0x50f5c392 -> :sswitch_4
        0x56e9f0e4 -> :sswitch_3
        0x57e2f66c -> :sswitch_2
        0x7a7c17a4 -> :sswitch_1
        0x7ef0dd87 -> :sswitch_0
    .end sparse-switch
.end method
