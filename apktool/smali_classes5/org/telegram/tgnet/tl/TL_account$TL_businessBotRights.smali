.class public Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/tl/TL_account;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_businessBotRights"
.end annotation


# static fields
.field public static final constructor:I = -0x5f9db309


# instance fields
.field public change_gift_settings:Z

.field public delete_received_messages:Z

.field public delete_sent_messages:Z

.field public edit_bio:Z

.field public edit_name:Z

.field public edit_profile_photo:Z

.field public edit_username:Z

.field public flags:I

.field public manage_stories:Z

.field public read_messages:Z

.field public reply:Z

.field public sell_gifts:Z

.field public transfer_and_upgrade_gifts:Z

.field public transfer_stars:Z

.field public view_gifts:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2793
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;
    .locals 2

    const v0, -0x5f9db309

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2813
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;-><init>()V

    .line 2814
    :goto_0
    const-class v1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;

    invoke-static {v1, v0, p0, p1, p2}, Lorg/telegram/tgnet/TLObject;->TLdeserialize(Ljava/lang/Class;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;

    move-result-object p0

    check-cast p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;

    return-object p0
.end method

.method public static all()Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;
    .locals 2

    .line 2857
    new-instance v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;-><init>()V

    const/4 v1, 0x1

    .line 2858
    iput-boolean v1, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->reply:Z

    .line 2859
    iput-boolean v1, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->read_messages:Z

    .line 2860
    iput-boolean v1, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->delete_sent_messages:Z

    .line 2861
    iput-boolean v1, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->delete_received_messages:Z

    .line 2862
    iput-boolean v1, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->edit_name:Z

    .line 2863
    iput-boolean v1, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->edit_bio:Z

    .line 2864
    iput-boolean v1, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->edit_profile_photo:Z

    .line 2865
    iput-boolean v1, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->edit_username:Z

    .line 2866
    iput-boolean v1, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->view_gifts:Z

    .line 2867
    iput-boolean v1, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->sell_gifts:Z

    .line 2868
    iput-boolean v1, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->change_gift_settings:Z

    .line 2869
    iput-boolean v1, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->transfer_and_upgrade_gifts:Z

    .line 2870
    iput-boolean v1, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->transfer_stars:Z

    .line 2871
    iput-boolean v1, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->manage_stories:Z

    return-object v0
.end method

.method public static clone(Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;)Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;
    .locals 2

    .line 2895
    new-instance v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;-><init>()V

    .line 2896
    iget-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->reply:Z

    iput-boolean v1, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->reply:Z

    .line 2897
    iget-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->read_messages:Z

    iput-boolean v1, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->read_messages:Z

    .line 2898
    iget-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->delete_sent_messages:Z

    iput-boolean v1, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->delete_sent_messages:Z

    .line 2899
    iget-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->delete_received_messages:Z

    iput-boolean v1, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->delete_received_messages:Z

    .line 2900
    iget-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->edit_name:Z

    iput-boolean v1, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->edit_name:Z

    .line 2901
    iget-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->edit_bio:Z

    iput-boolean v1, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->edit_bio:Z

    .line 2902
    iget-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->edit_profile_photo:Z

    iput-boolean v1, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->edit_profile_photo:Z

    .line 2903
    iget-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->edit_username:Z

    iput-boolean v1, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->edit_username:Z

    .line 2904
    iget-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->view_gifts:Z

    iput-boolean v1, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->view_gifts:Z

    .line 2905
    iget-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->sell_gifts:Z

    iput-boolean v1, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->sell_gifts:Z

    .line 2906
    iget-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->change_gift_settings:Z

    iput-boolean v1, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->change_gift_settings:Z

    .line 2907
    iget-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->transfer_and_upgrade_gifts:Z

    iput-boolean v1, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->transfer_and_upgrade_gifts:Z

    .line 2908
    iget-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->transfer_stars:Z

    iput-boolean v1, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->transfer_stars:Z

    .line 2909
    iget-boolean p0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->manage_stories:Z

    iput-boolean p0, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->manage_stories:Z

    return-object v0
.end method

.method public static makeDefault()Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;
    .locals 2

    .line 2876
    new-instance v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;-><init>()V

    const/4 v1, 0x1

    .line 2877
    iput-boolean v1, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->reply:Z

    .line 2878
    iput-boolean v1, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->read_messages:Z

    .line 2879
    iput-boolean v1, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->delete_sent_messages:Z

    .line 2880
    iput-boolean v1, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->delete_received_messages:Z

    const/4 v1, 0x0

    .line 2881
    iput-boolean v1, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->edit_name:Z

    .line 2882
    iput-boolean v1, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->edit_bio:Z

    .line 2883
    iput-boolean v1, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->edit_profile_photo:Z

    .line 2884
    iput-boolean v1, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->edit_username:Z

    .line 2885
    iput-boolean v1, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->view_gifts:Z

    .line 2886
    iput-boolean v1, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->sell_gifts:Z

    .line 2887
    iput-boolean v1, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->change_gift_settings:Z

    .line 2888
    iput-boolean v1, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->transfer_and_upgrade_gifts:Z

    .line 2889
    iput-boolean v1, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->transfer_stars:Z

    .line 2890
    iput-boolean v1, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->manage_stories:Z

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 2915
    instance-of v0, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2917
    :cond_0
    check-cast p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;

    .line 2918
    iget-boolean v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->reply:Z

    iget-boolean v2, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->reply:Z

    if-ne v0, v2, :cond_1

    iget-boolean v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->read_messages:Z

    iget-boolean v2, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->read_messages:Z

    if-ne v0, v2, :cond_1

    iget-boolean v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->delete_sent_messages:Z

    iget-boolean v2, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->delete_sent_messages:Z

    if-ne v0, v2, :cond_1

    iget-boolean v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->delete_received_messages:Z

    iget-boolean v2, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->delete_received_messages:Z

    if-ne v0, v2, :cond_1

    iget-boolean v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->edit_name:Z

    iget-boolean v2, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->edit_name:Z

    if-ne v0, v2, :cond_1

    iget-boolean v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->edit_bio:Z

    iget-boolean v2, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->edit_bio:Z

    if-ne v0, v2, :cond_1

    iget-boolean v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->edit_profile_photo:Z

    iget-boolean v2, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->edit_profile_photo:Z

    if-ne v0, v2, :cond_1

    iget-boolean v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->edit_username:Z

    iget-boolean v2, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->edit_username:Z

    if-ne v0, v2, :cond_1

    iget-boolean v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->view_gifts:Z

    iget-boolean v2, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->view_gifts:Z

    if-ne v0, v2, :cond_1

    iget-boolean v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->sell_gifts:Z

    iget-boolean v2, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->sell_gifts:Z

    if-ne v0, v2, :cond_1

    iget-boolean v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->change_gift_settings:Z

    iget-boolean v2, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->change_gift_settings:Z

    if-ne v0, v2, :cond_1

    iget-boolean v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->transfer_and_upgrade_gifts:Z

    iget-boolean v2, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->transfer_and_upgrade_gifts:Z

    if-ne v0, v2, :cond_1

    iget-boolean v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->transfer_stars:Z

    iget-boolean v2, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->transfer_stars:Z

    if-ne v0, v2, :cond_1

    iget-boolean v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->manage_stories:Z

    iget-boolean p1, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->manage_stories:Z

    if-ne v0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 2

    .line 2819
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->flags:I

    and-int/lit8 p2, p1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    move p2, v0

    .line 2820
    :goto_0
    iput-boolean p2, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->reply:Z

    and-int/lit8 p2, p1, 0x2

    if-eqz p2, :cond_1

    move p2, v1

    goto :goto_1

    :cond_1
    move p2, v0

    .line 2821
    :goto_1
    iput-boolean p2, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->read_messages:Z

    and-int/lit8 p2, p1, 0x4

    if-eqz p2, :cond_2

    move p2, v1

    goto :goto_2

    :cond_2
    move p2, v0

    .line 2822
    :goto_2
    iput-boolean p2, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->delete_sent_messages:Z

    and-int/lit8 p2, p1, 0x8

    if-eqz p2, :cond_3

    move p2, v1

    goto :goto_3

    :cond_3
    move p2, v0

    .line 2823
    :goto_3
    iput-boolean p2, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->delete_received_messages:Z

    and-int/lit8 p2, p1, 0x10

    if-eqz p2, :cond_4

    move p2, v1

    goto :goto_4

    :cond_4
    move p2, v0

    .line 2824
    :goto_4
    iput-boolean p2, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->edit_name:Z

    and-int/lit8 p2, p1, 0x20

    if-eqz p2, :cond_5

    move p2, v1

    goto :goto_5

    :cond_5
    move p2, v0

    .line 2825
    :goto_5
    iput-boolean p2, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->edit_bio:Z

    and-int/lit8 p2, p1, 0x40

    if-eqz p2, :cond_6

    move p2, v1

    goto :goto_6

    :cond_6
    move p2, v0

    .line 2826
    :goto_6
    iput-boolean p2, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->edit_profile_photo:Z

    and-int/lit16 p2, p1, 0x80

    if-eqz p2, :cond_7

    move p2, v1

    goto :goto_7

    :cond_7
    move p2, v0

    .line 2827
    :goto_7
    iput-boolean p2, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->edit_username:Z

    and-int/lit16 p2, p1, 0x100

    if-eqz p2, :cond_8

    move p2, v1

    goto :goto_8

    :cond_8
    move p2, v0

    .line 2828
    :goto_8
    iput-boolean p2, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->view_gifts:Z

    and-int/lit16 p2, p1, 0x200

    if-eqz p2, :cond_9

    move p2, v1

    goto :goto_9

    :cond_9
    move p2, v0

    .line 2829
    :goto_9
    iput-boolean p2, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->sell_gifts:Z

    and-int/lit16 p2, p1, 0x400

    if-eqz p2, :cond_a

    move p2, v1

    goto :goto_a

    :cond_a
    move p2, v0

    .line 2830
    :goto_a
    iput-boolean p2, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->change_gift_settings:Z

    and-int/lit16 p2, p1, 0x800

    if-eqz p2, :cond_b

    move p2, v1

    goto :goto_b

    :cond_b
    move p2, v0

    .line 2831
    :goto_b
    iput-boolean p2, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->transfer_and_upgrade_gifts:Z

    and-int/lit16 p2, p1, 0x1000

    if-eqz p2, :cond_c

    move p2, v1

    goto :goto_c

    :cond_c
    move p2, v0

    .line 2832
    :goto_c
    iput-boolean p2, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->transfer_stars:Z

    and-int/lit16 p1, p1, 0x2000

    if-eqz p1, :cond_d

    move v0, v1

    .line 2833
    :cond_d
    iput-boolean v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->manage_stories:Z

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, -0x5f9db309

    .line 2838
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 2839
    iget-boolean v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->reply:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->flags:I

    .line 2840
    iget-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->read_messages:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x3

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->flags:I

    .line 2841
    iget-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->delete_sent_messages:Z

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x4

    goto :goto_2

    :cond_2
    and-int/lit8 v0, v0, -0x5

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->flags:I

    .line 2842
    iget-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->delete_received_messages:Z

    if-eqz v1, :cond_3

    or-int/lit8 v0, v0, 0x8

    goto :goto_3

    :cond_3
    and-int/lit8 v0, v0, -0x9

    :goto_3
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->flags:I

    .line 2843
    iget-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->edit_name:Z

    if-eqz v1, :cond_4

    or-int/lit8 v0, v0, 0x10

    goto :goto_4

    :cond_4
    and-int/lit8 v0, v0, -0x11

    :goto_4
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->flags:I

    .line 2844
    iget-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->edit_bio:Z

    if-eqz v1, :cond_5

    or-int/lit8 v0, v0, 0x20

    goto :goto_5

    :cond_5
    and-int/lit8 v0, v0, -0x21

    :goto_5
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->flags:I

    .line 2845
    iget-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->edit_profile_photo:Z

    if-eqz v1, :cond_6

    or-int/lit8 v0, v0, 0x40

    goto :goto_6

    :cond_6
    and-int/lit8 v0, v0, -0x41

    :goto_6
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->flags:I

    .line 2846
    iget-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->edit_username:Z

    if-eqz v1, :cond_7

    or-int/lit16 v0, v0, 0x80

    goto :goto_7

    :cond_7
    and-int/lit16 v0, v0, -0x81

    :goto_7
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->flags:I

    .line 2847
    iget-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->view_gifts:Z

    if-eqz v1, :cond_8

    or-int/lit16 v0, v0, 0x100

    goto :goto_8

    :cond_8
    and-int/lit16 v0, v0, -0x101

    :goto_8
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->flags:I

    .line 2848
    iget-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->sell_gifts:Z

    if-eqz v1, :cond_9

    or-int/lit16 v0, v0, 0x200

    goto :goto_9

    :cond_9
    and-int/lit16 v0, v0, -0x201

    :goto_9
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->flags:I

    .line 2849
    iget-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->change_gift_settings:Z

    if-eqz v1, :cond_a

    or-int/lit16 v0, v0, 0x400

    goto :goto_a

    :cond_a
    and-int/lit16 v0, v0, -0x401

    :goto_a
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->flags:I

    .line 2850
    iget-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->transfer_and_upgrade_gifts:Z

    if-eqz v1, :cond_b

    or-int/lit16 v0, v0, 0x800

    goto :goto_b

    :cond_b
    and-int/lit16 v0, v0, -0x801

    :goto_b
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->flags:I

    .line 2851
    iget-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->transfer_stars:Z

    if-eqz v1, :cond_c

    or-int/lit16 v0, v0, 0x1000

    goto :goto_c

    :cond_c
    and-int/lit16 v0, v0, -0x1001

    :goto_c
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->flags:I

    .line 2852
    iget-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->manage_stories:Z

    if-eqz v1, :cond_d

    or-int/lit16 v0, v0, 0x2000

    goto :goto_d

    :cond_d
    and-int/lit16 v0, v0, -0x2001

    :goto_d
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->flags:I

    .line 2853
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    return-void
.end method
