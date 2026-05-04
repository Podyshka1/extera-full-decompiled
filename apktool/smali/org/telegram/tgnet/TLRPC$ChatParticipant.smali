.class public abstract Lorg/telegram/tgnet/TLRPC$ChatParticipant;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ChatParticipant"
.end annotation


# instance fields
.field public date:I

.field public flags:I

.field public inviter_id:J

.field public rank:Ljava/lang/String;

.field public user_id:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41016
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    const/4 v0, 0x0

    .line 41018
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->flags:I

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    .locals 2

    .line 41049
    const-class v0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    invoke-static {p1}, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->fromConstructor(I)Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    move-result-object v1

    invoke-static {v0, v1, p0, p1, p2}, Lorg/telegram/tgnet/TLObject;->TLdeserialize(Ljava/lang/Class;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;

    move-result-object p0

    check-cast p0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    return-object p0
.end method

.method private static fromConstructor(I)Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    .locals 0

    sparse-switch p0, :sswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 41033
    :sswitch_0
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_chatParticipant;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_chatParticipant;-><init>()V

    return-object p0

    .line 41027
    :sswitch_1
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantAdmin;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantAdmin;-><init>()V

    return-object p0

    .line 41041
    :sswitch_2
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantCreator_layer222;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantCreator_layer222;-><init>()V

    return-object p0

    .line 41031
    :sswitch_3
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantAdmin_layer131;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantAdmin_layer131;-><init>()V

    return-object p0

    .line 41039
    :sswitch_4
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantCreator;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantCreator;-><init>()V

    return-object p0

    .line 41043
    :sswitch_5
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantCreator_layer131;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantCreator_layer131;-><init>()V

    return-object p0

    .line 41037
    :sswitch_6
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_chatParticipant_layer131;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_chatParticipant_layer131;-><init>()V

    return-object p0

    .line 41035
    :sswitch_7
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_chatParticipant_layer222;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_chatParticipant_layer222;-><init>()V

    return-object p0

    .line 41029
    :sswitch_8
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantAdmin_layer222;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantAdmin_layer222;-><init>()V

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5f6cc0a5 -> :sswitch_8
        -0x3fd2bff9 -> :sswitch_7
        -0x3728b6c2 -> :sswitch_6
        -0x25ecac76 -> :sswitch_5
        -0x1e079848 -> :sswitch_4
        -0x1d291bca -> :sswitch_3
        -0x1b94311c -> :sswitch_2
        0x360d5d2 -> :sswitch_1
        0x38e79fde -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public setRank(JLjava/lang/String;)V
    .locals 2

    .line 41053
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:J

    cmp-long p1, v0, p1

    if-nez p1, :cond_1

    .line 41054
    iget p1, p0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->flags:I

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 v0, 0x1

    xor-int/2addr p2, v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLObject;->setFlag(IIZ)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->flags:I

    .line 41055
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    move-object p1, p3

    :goto_0
    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->rank:Ljava/lang/String;

    .line 41056
    instance-of p1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;

    if-eqz p1, :cond_1

    .line 41057
    move-object p1, p0

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;

    .line 41058
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;->channelParticipant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    if-eqz p1, :cond_1

    .line 41059
    iput-object p3, p1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->rank:Ljava/lang/String;

    :cond_1
    return-void
.end method
