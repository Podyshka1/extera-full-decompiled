.class public abstract Lorg/telegram/tgnet/TLRPC$KeyboardButton;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "KeyboardButton"
.end annotation


# instance fields
.field public bot:Lorg/telegram/tgnet/TLRPC$InputUser;

.field public button_id:I

.field public data:[B

.field public flags:I

.field public fwd_text:Ljava/lang/String;

.field public inputUser:Lorg/telegram/tgnet/TLRPC$InputUser;

.field public peer_types:Ljava/util/ArrayList;

.field public query:Ljava/lang/String;

.field public quiz:Z

.field public request_write_access:Z

.field public requires_password:Z

.field public same_peer:Z

.field public style:Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonStyle;

.field public text:Ljava/lang/String;

.field public url:Ljava/lang/String;

.field public user_id:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18632
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 18647
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->peer_types:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$KeyboardButton;
    .locals 2

    .line 18731
    const-class v0, Lorg/telegram/tgnet/TLRPC$KeyboardButton;

    invoke-static {p1}, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->fromConstructor(I)Lorg/telegram/tgnet/TLRPC$KeyboardButton;

    move-result-object v1

    invoke-static {v0, v1, p0, p1, p2}, Lorg/telegram/tgnet/TLObject;->TLdeserialize(Ljava/lang/Class;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;

    move-result-object p0

    check-cast p0, Lorg/telegram/tgnet/TLRPC$KeyboardButton;

    return-object p0
.end method

.method public static fromConstructor(I)Lorg/telegram/tgnet/TLRPC$KeyboardButton;
    .locals 0

    sparse-switch p0, :sswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 18697
    :sswitch_0
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_inputKeyboardButtonUserProfile;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_inputKeyboardButtonUserProfile;-><init>()V

    return-object p0

    .line 18689
    :sswitch_1
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_keyboardButton;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_keyboardButton;-><init>()V

    return-object p0

    .line 18681
    :sswitch_2
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRequestPoll;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRequestPoll;-><init>()V

    return-object p0

    .line 18695
    :sswitch_3
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonCopy_layer223;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonCopy_layer223;-><init>()V

    return-object p0

    .line 18719
    :sswitch_4
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonCallback_layer117;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonCallback_layer117;-><init>()V

    return-object p0

    .line 18677
    :sswitch_5
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_inputKeyboardButtonUrlAuth;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_inputKeyboardButtonUrlAuth;-><init>()V

    return-object p0

    .line 18709
    :sswitch_6
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRequestPeer;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRequestPeer;-><init>()V

    return-object p0

    .line 18711
    :sswitch_7
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRequestPeer_layer223;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRequestPeer_layer223;-><init>()V

    return-object p0

    .line 18663
    :sswitch_8
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonGame_layer223;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonGame_layer223;-><init>()V

    return-object p0

    .line 18657
    :sswitch_9
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRequestPhone;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRequestPhone;-><init>()V

    return-object p0

    .line 18685
    :sswitch_a
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonBuy;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonBuy;-><init>()V

    return-object p0

    .line 18717
    :sswitch_b
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonCallback_layer223;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonCallback_layer223;-><init>()V

    return-object p0

    .line 18703
    :sswitch_c
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonUserProfile_layer223;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonUserProfile_layer223;-><init>()V

    return-object p0

    .line 18667
    :sswitch_d
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonUrl_layer223;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonUrl_layer223;-><init>()V

    return-object p0

    .line 18707
    :sswitch_e
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonWebView_layer223;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonWebView_layer223;-><init>()V

    return-object p0

    .line 18675
    :sswitch_f
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonUrlAuth_layer223;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonUrlAuth_layer223;-><init>()V

    return-object p0

    .line 18713
    :sswitch_10
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRequestPeer_layer168;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRequestPeer_layer168;-><init>()V

    return-object p0

    .line 18725
    :sswitch_11
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonSwitchInline_layer157;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonSwitchInline_layer157;-><init>()V

    return-object p0

    .line 18671
    :sswitch_12
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRequestGeoLocation_layer223;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRequestGeoLocation_layer223;-><init>()V

    return-object p0

    .line 18673
    :sswitch_13
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonUrlAuth;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonUrlAuth;-><init>()V

    return-object p0

    .line 18699
    :sswitch_14
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_inputKeyboardButtonUserProfile_layer223;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_inputKeyboardButtonUserProfile_layer223;-><init>()V

    return-object p0

    .line 18705
    :sswitch_15
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonWebView;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonWebView;-><init>()V

    return-object p0

    .line 18715
    :sswitch_16
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonCallback;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonCallback;-><init>()V

    return-object p0

    .line 18653
    :sswitch_17
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonSimpleWebView;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonSimpleWebView;-><init>()V

    return-object p0

    .line 18665
    :sswitch_18
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonUrl;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonUrl;-><init>()V

    return-object p0

    .line 18679
    :sswitch_19
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_inputKeyboardButtonUrlAuth_layer223;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_inputKeyboardButtonUrlAuth_layer223;-><init>()V

    return-object p0

    .line 18701
    :sswitch_1a
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonUserProfile;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonUserProfile;-><init>()V

    return-object p0

    .line 18693
    :sswitch_1b
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonCopy;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonCopy;-><init>()V

    return-object p0

    .line 18683
    :sswitch_1c
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRequestPoll_layer223;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRequestPoll_layer223;-><init>()V

    return-object p0

    .line 18659
    :sswitch_1d
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRequestPhone_layer223;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRequestPhone_layer223;-><init>()V

    return-object p0

    .line 18687
    :sswitch_1e
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonBuy_layer223;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonBuy_layer223;-><init>()V

    return-object p0

    .line 18669
    :sswitch_1f
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRequestGeoLocation;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRequestGeoLocation;-><init>()V

    return-object p0

    .line 18691
    :sswitch_20
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_keyboardButton_layer_223;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_keyboardButton_layer_223;-><init>()V

    return-object p0

    .line 18655
    :sswitch_21
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonSimpleWebView_layer223;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonSimpleWebView_layer223;-><init>()V

    return-object p0

    .line 18721
    :sswitch_22
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonSwitchInline;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonSwitchInline;-><init>()V

    return-object p0

    .line 18723
    :sswitch_23
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonSwitchInline_layer223;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonSwitchInline_layer223;-><init>()V

    return-object p0

    .line 18661
    :sswitch_24
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonGame;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonGame;-><init>()V

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x763a6f07 -> :sswitch_24
        -0x6c46044b -> :sswitch_23
        -0x66ec6604 -> :sswitch_22
        -0x5f3fafa4 -> :sswitch_21
        -0x5d05b780 -> :sswitch_20
        -0x55bf06b3 -> :sswitch_1f
        -0x5026c045 -> :sswitch_1e
        -0x4e9593d7 -> :sswitch_1d
        -0x4438aea3 -> :sswitch_1c
        -0x433b50f0 -> :sswitch_1b
        -0x3f02a2f7 -> :sswitch_1a
        -0x2fd1802c -> :sswitch_19
        -0x27f3da14 -> :sswitch_18
        -0x1ea3bc90 -> :sswitch_17
        -0x19d436a0 -> :sswitch_16
        -0x17b94e60 -> :sswitch_15
        -0x1677fc85 -> :sswitch_14
        -0xaeff907 -> :sswitch_13
        -0x38694c1 -> :sswitch_12
        0x568a748 -> :sswitch_11
        0xd0b468c -> :sswitch_10
        0x10b78d29 -> :sswitch_f
        0x13767230 -> :sswitch_e
        0x258aff05 -> :sswitch_d
        0x308660c1 -> :sswitch_c
        0x35bbdb6b -> :sswitch_b
        0x3fa53905 -> :sswitch_a
        0x417efd8f -> :sswitch_9
        0x50f41ccf -> :sswitch_8
        0x53d7bfd8 -> :sswitch_7
        0x5b0f15f5 -> :sswitch_6
        0x68013e72 -> :sswitch_5
        0x683a5e46 -> :sswitch_4
        0x75d2698e -> :sswitch_3
        0x7a11d782 -> :sswitch_2
        0x7d170cff -> :sswitch_1
        0x7d5e07c7 -> :sswitch_0
    .end sparse-switch
.end method
