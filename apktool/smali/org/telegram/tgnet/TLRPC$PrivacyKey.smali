.class public abstract Lorg/telegram/tgnet/TLRPC$PrivacyKey;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "PrivacyKey"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4849
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$PrivacyKey;
    .locals 2

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    goto :goto_0

    .line 4876
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_privacyKeyForwards;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_privacyKeyForwards;-><init>()V

    goto :goto_0

    .line 4861
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_privacyKeyChatInvite;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_privacyKeyChatInvite;-><init>()V

    goto :goto_0

    .line 4864
    :sswitch_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_privacyKeyAddedByPhone;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_privacyKeyAddedByPhone;-><init>()V

    goto :goto_0

    .line 4873
    :sswitch_3
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_privacyKeyPhoneCall;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_privacyKeyPhoneCall;-><init>()V

    goto :goto_0

    .line 4858
    :sswitch_4
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_privacyKeyPhoneP2P;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_privacyKeyPhoneP2P;-><init>()V

    goto :goto_0

    .line 4888
    :sswitch_5
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_privacyKeyStarGiftsAutoSave;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_privacyKeyStarGiftsAutoSave;-><init>()V

    goto :goto_0

    .line 4885
    :sswitch_6
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_privacyKeyBirthday;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_privacyKeyBirthday;-><init>()V

    goto :goto_0

    .line 4891
    :sswitch_7
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_privacyKeyNoPaidMessages;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_privacyKeyNoPaidMessages;-><init>()V

    goto :goto_0

    .line 4867
    :sswitch_8
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_privacyKeyVoiceMessages;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_privacyKeyVoiceMessages;-><init>()V

    goto :goto_0

    .line 4894
    :sswitch_9
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_privacyKeySavedMusic;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_privacyKeySavedMusic;-><init>()V

    goto :goto_0

    .line 4879
    :sswitch_a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_privacyKeyPhoneNumber;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_privacyKeyPhoneNumber;-><init>()V

    goto :goto_0

    .line 4855
    :sswitch_b
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_privacyKeyStatusTimestamp;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_privacyKeyStatusTimestamp;-><init>()V

    goto :goto_0

    .line 4870
    :sswitch_c
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_privacyKeyAbout;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_privacyKeyAbout;-><init>()V

    goto :goto_0

    .line 4882
    :sswitch_d
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_privacyKeyProfilePhoto;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_privacyKeyProfilePhoto;-><init>()V

    .line 4897
    :goto_0
    const-class v1, Lorg/telegram/tgnet/TLRPC$PrivacyKey;

    invoke-static {v1, v0, p0, p1, p2}, Lorg/telegram/tgnet/TLObject;->TLdeserialize(Ljava/lang/Class;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;

    move-result-object p0

    check-cast p0, Lorg/telegram/tgnet/TLRPC$PrivacyKey;

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x69eae013 -> :sswitch_d
        -0x5b79489f -> :sswitch_c
        -0x43d154d0 -> :sswitch_b
        -0x2e651b93 -> :sswitch_a
        -0x85a8e5 -> :sswitch_9
        0x697f414 -> :sswitch_8
        0x17d348d2 -> :sswitch_7
        0x2000a518 -> :sswitch_6
        0x2ca4fdf8 -> :sswitch_5
        0x39491cc8 -> :sswitch_4
        0x3d662b7b -> :sswitch_3
        0x42ffd42b -> :sswitch_2
        0x500e6dfa -> :sswitch_1
        0x69ec56a3 -> :sswitch_0
    .end sparse-switch
.end method
