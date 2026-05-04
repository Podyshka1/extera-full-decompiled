.class public Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StoryPrivacy"
.end annotation


# instance fields
.field public final rules:Ljava/util/ArrayList;

.field public final selectedInputUsers:Ljava/util/ArrayList;

.field public final selectedUserIds:Ljava/util/ArrayList;

.field public final selectedUserIdsByGroup:Ljava/util/HashMap;

.field public final sendToUsers:Ljava/util/ArrayList;

.field public final type:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 4103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3971
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->rules:Ljava/util/ArrayList;

    .line 3972
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->selectedUserIds:Ljava/util/ArrayList;

    .line 3973
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->selectedUserIdsByGroup:Ljava/util/HashMap;

    .line 3974
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->selectedInputUsers:Ljava/util/ArrayList;

    .line 3975
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->sendToUsers:Ljava/util/ArrayList;

    const/4 v1, 0x4

    .line 4104
    iput v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->type:I

    .line 4105
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueAllowAll;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueAllowAll;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(IILjava/util/ArrayList;)V
    .locals 5

    .line 4108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3971
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->rules:Ljava/util/ArrayList;

    .line 3972
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->selectedUserIds:Ljava/util/ArrayList;

    .line 3973
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->selectedUserIdsByGroup:Ljava/util/HashMap;

    .line 3974
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->selectedInputUsers:Ljava/util/ArrayList;

    .line 3975
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->sendToUsers:Ljava/util/ArrayList;

    .line 4109
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->type:I

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-ne p1, v2, :cond_2

    .line 4111
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueAllowAll;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueAllowAll;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-ltz p2, :cond_a

    if-eqz p3, :cond_a

    .line 4112
    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_a

    .line 4113
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueDisallowUsers;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueDisallowUsers;-><init>()V

    .line 4114
    :goto_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_1

    .line 4115
    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 4116
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->selectedUserIds:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4117
    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->getInputUser(J)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4118
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_inputUserEmpty;

    if-nez v1, :cond_0

    .line 4119
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueDisallowUsers;->users:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4120
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->selectedInputUsers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4123
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->rules:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_2
    const/4 v2, 0x1

    if-ne p1, v2, :cond_3

    .line 4126
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueAllowCloseFriends;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueAllowCloseFriends;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_3
    const/4 v2, 0x2

    if-ne p1, v2, :cond_6

    .line 4128
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueAllowContacts;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueAllowContacts;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-ltz p2, :cond_a

    if-eqz p3, :cond_a

    .line 4129
    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_a

    .line 4130
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueDisallowUsers;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueDisallowUsers;-><init>()V

    .line 4131
    :goto_1
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_5

    .line 4132
    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 4133
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->selectedUserIds:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4134
    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->getInputUser(J)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 4135
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_inputUserEmpty;

    if-nez v1, :cond_4

    .line 4136
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueDisallowUsers;->users:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4137
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->selectedInputUsers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 4140
    :cond_5
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->rules:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_6
    const/4 v0, 0x3

    if-ne p1, v0, :cond_9

    .line 4143
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueAllowUsers;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueAllowUsers;-><init>()V

    if-ltz p2, :cond_8

    if-eqz p3, :cond_8

    .line 4144
    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 4145
    :goto_2
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_8

    .line 4146
    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 4147
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->selectedUserIds:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4148
    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->getInputUser(J)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 4149
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_inputUserEmpty;

    if-nez v1, :cond_7

    .line 4150
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueAllowUsers;->users:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4151
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->selectedInputUsers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 4155
    :cond_8
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->rules:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_9
    const/4 p2, 0x5

    if-ne p1, p2, :cond_a

    if-eqz p3, :cond_a

    .line 4158
    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_a
    return-void
.end method

.method public constructor <init>(ILjava/util/ArrayList;)V
    .locals 5

    .line 3977
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3971
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->rules:Ljava/util/ArrayList;

    .line 3972
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->selectedUserIds:Ljava/util/ArrayList;

    .line 3973
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->selectedUserIdsByGroup:Ljava/util/HashMap;

    .line 3974
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->selectedInputUsers:Ljava/util/ArrayList;

    .line 3975
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->sendToUsers:Ljava/util/ArrayList;

    .line 3979
    const-class v1, Lorg/telegram/tgnet/TLRPC$TL_privacyValueAllowAll;

    invoke-direct {p0, p2, v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->containsRule(Ljava/util/ArrayList;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    const-class v2, Lorg/telegram/tgnet/TLRPC$TL_privacyValueDisallowUsers;

    const/4 v3, 0x4

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    .line 3980
    iput v3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->type:I

    .line 3981
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueAllowAll;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueAllowAll;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3983
    invoke-direct {p0, p2, v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->containsRule(Ljava/util/ArrayList;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_privacyValueDisallowUsers;

    if-eqz p2, :cond_9

    .line 3985
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueDisallowUsers;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueDisallowUsers;-><init>()V

    .line 3986
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    .line 3987
    :goto_0
    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$TL_privacyValueDisallowUsers;->users:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v4, v1, :cond_1

    .line 3988
    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$TL_privacyValueDisallowUsers;->users:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 3989
    invoke-virtual {p1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputUser(J)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v2

    .line 3990
    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$TL_inputUserEmpty;

    if-nez v3, :cond_0

    .line 3991
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueDisallowUsers;->users:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3992
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->selectedUserIds:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3993
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->selectedInputUsers:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3996
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->rules:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 3998
    :cond_2
    const-class v1, Lorg/telegram/tgnet/TLRPC$TL_privacyValueAllowCloseFriends;

    invoke-direct {p0, p2, v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->containsRule(Ljava/util/ArrayList;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    const/4 p1, 0x1

    .line 3999
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->type:I

    .line 4000
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueAllowCloseFriends;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueAllowCloseFriends;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 4001
    :cond_3
    const-class v1, Lorg/telegram/tgnet/TLRPC$TL_privacyValueAllowUsers;

    invoke-direct {p0, p2, v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->containsRule(Ljava/util/ArrayList;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_privacyValueAllowUsers;

    if-eqz v1, :cond_6

    const/4 p2, 0x3

    .line 4002
    iput p2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->type:I

    .line 4004
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueAllowUsers;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueAllowUsers;-><init>()V

    .line 4005
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    .line 4006
    :goto_1
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_privacyValueAllowUsers;->users:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_5

    .line 4007
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_privacyValueAllowUsers;->users:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 4008
    invoke-virtual {p1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputUser(J)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 4009
    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$TL_inputUserEmpty;

    if-nez v3, :cond_4

    .line 4010
    iget-object v3, p2, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueAllowUsers;->users:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4011
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->selectedUserIds:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4012
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->selectedInputUsers:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 4015
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->rules:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 4016
    :cond_6
    const-class v1, Lorg/telegram/tgnet/TLRPC$TL_privacyValueAllowContacts;

    invoke-direct {p0, p2, v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->containsRule(Ljava/util/ArrayList;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_a

    const/4 v1, 0x2

    .line 4017
    iput v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->type:I

    .line 4018
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueAllowContacts;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueAllowContacts;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4020
    invoke-direct {p0, p2, v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->containsRule(Ljava/util/ArrayList;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_privacyValueDisallowUsers;

    if-eqz p2, :cond_9

    .line 4022
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueDisallowUsers;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueDisallowUsers;-><init>()V

    .line 4023
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    .line 4024
    :goto_2
    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$TL_privacyValueDisallowUsers;->users:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v4, v1, :cond_8

    .line 4025
    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$TL_privacyValueDisallowUsers;->users:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 4026
    invoke-virtual {p1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputUser(J)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v2

    .line 4027
    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$TL_inputUserEmpty;

    if-nez v3, :cond_7

    .line 4028
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueDisallowUsers;->users:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4029
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->selectedUserIds:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4030
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->selectedInputUsers:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 4033
    :cond_8
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->rules:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    return-void

    .line 4036
    :cond_a
    iput v3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->type:I

    return-void
.end method

.method public constructor <init>(ILjava/util/ArrayList;I)V
    .locals 4

    .line 4163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3971
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->rules:Ljava/util/ArrayList;

    .line 3972
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->selectedUserIds:Ljava/util/ArrayList;

    .line 3973
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->selectedUserIdsByGroup:Ljava/util/HashMap;

    .line 3974
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->selectedInputUsers:Ljava/util/ArrayList;

    .line 3975
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->sendToUsers:Ljava/util/ArrayList;

    .line 4164
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->type:I

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-ne p1, v0, :cond_2

    .line 4166
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueAllowAll;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueAllowAll;-><init>()V

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_b

    .line 4167
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_b

    .line 4168
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueDisallowUsers;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueDisallowUsers;-><init>()V

    .line 4169
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge v1, p3, :cond_1

    .line 4170
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/telegram/tgnet/TLRPC$InputUser;

    if-eqz p3, :cond_0

    .line 4172
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueDisallowUsers;->users:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4173
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->selectedUserIds:Ljava/util/ArrayList;

    iget-wide v2, p3, Lorg/telegram/tgnet/TLRPC$InputUser;->user_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4174
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->selectedInputUsers:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4177
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->rules:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 4180
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueAllowCloseFriends;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueAllowCloseFriends;-><init>()V

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_3
    const/4 v0, 0x2

    if-ne p1, v0, :cond_6

    .line 4182
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueAllowContacts;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueAllowContacts;-><init>()V

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_b

    .line 4183
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_b

    .line 4184
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueDisallowUsers;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueDisallowUsers;-><init>()V

    .line 4185
    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge v1, p3, :cond_5

    .line 4186
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/telegram/tgnet/TLRPC$InputUser;

    if-eqz p3, :cond_4

    .line 4188
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueDisallowUsers;->users:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4189
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->selectedUserIds:Ljava/util/ArrayList;

    iget-wide v2, p3, Lorg/telegram/tgnet/TLRPC$InputUser;->user_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4190
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->selectedInputUsers:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4193
    :cond_5
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->rules:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_6
    const/4 p3, 0x3

    if-ne p1, p3, :cond_9

    .line 4196
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueAllowUsers;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueAllowUsers;-><init>()V

    if-eqz p2, :cond_8

    .line 4197
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_8

    .line 4198
    :goto_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge v1, p3, :cond_8

    .line 4199
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/telegram/tgnet/TLRPC$InputUser;

    if-eqz p3, :cond_7

    .line 4201
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueAllowUsers;->users:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4202
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->selectedUserIds:Ljava/util/ArrayList;

    iget-wide v2, p3, Lorg/telegram/tgnet/TLRPC$InputUser;->user_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4203
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->selectedInputUsers:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 4207
    :cond_8
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->rules:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_9
    const/4 p3, 0x5

    if-ne p1, p3, :cond_b

    if-eqz p2, :cond_b

    .line 4210
    :goto_3
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_b

    .line 4211
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$InputUser;

    if-eqz p1, :cond_a

    .line 4213
    iget-object p3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->sendToUsers:Ljava/util/ArrayList;

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$InputUser;->user_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_b
    return-void
.end method

.method private containsRule(Ljava/util/ArrayList;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    .line 4084
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 4085
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$PrivacyRule;

    .line 4086
    invoke-virtual {p2, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public static toInput(ILjava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 8

    .line 4313
    invoke-static {p0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    .line 4314
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 4315
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_a

    .line 4316
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$PrivacyRule;

    if-nez v3, :cond_0

    goto/16 :goto_3

    .line 4320
    :cond_0
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_privacyValueAllowAll;

    if-eqz v4, :cond_1

    .line 4321
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueAllowAll;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueAllowAll;-><init>()V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 4322
    :cond_1
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_privacyValueAllowCloseFriends;

    if-eqz v4, :cond_2

    .line 4323
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueAllowCloseFriends;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueAllowCloseFriends;-><init>()V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 4324
    :cond_2
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_privacyValueAllowContacts;

    if-eqz v4, :cond_3

    .line 4325
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueAllowContacts;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueAllowContacts;-><init>()V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 4326
    :cond_3
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_privacyValueDisallowUsers;

    if-eqz v4, :cond_6

    .line 4327
    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_privacyValueDisallowUsers;

    .line 4328
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueDisallowUsers;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueDisallowUsers;-><init>()V

    move v5, v1

    .line 4329
    :goto_1
    iget-object v6, v3, Lorg/telegram/tgnet/TLRPC$TL_privacyValueDisallowUsers;->users:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_5

    .line 4330
    iget-object v6, v3, Lorg/telegram/tgnet/TLRPC$TL_privacyValueDisallowUsers;->users:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {p0, v6, v7}, Lorg/telegram/messenger/MessagesController;->getInputUser(J)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v6

    .line 4331
    instance-of v7, v6, Lorg/telegram/tgnet/TLRPC$TL_inputUserEmpty;

    if-nez v7, :cond_4

    .line 4332
    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueDisallowUsers;->users:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 4335
    :cond_5
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 4336
    :cond_6
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_privacyValueAllowUsers;

    if-eqz v4, :cond_9

    .line 4337
    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_privacyValueAllowUsers;

    .line 4338
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueAllowUsers;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueAllowUsers;-><init>()V

    move v5, v1

    .line 4339
    :goto_2
    iget-object v6, v3, Lorg/telegram/tgnet/TLRPC$TL_privacyValueAllowUsers;->users:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_8

    .line 4340
    iget-object v6, v3, Lorg/telegram/tgnet/TLRPC$TL_privacyValueAllowUsers;->users:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {p0, v6, v7}, Lorg/telegram/messenger/MessagesController;->getInputUser(J)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v6

    .line 4341
    instance-of v7, v6, Lorg/telegram/tgnet/TLRPC$TL_inputUserEmpty;

    if-nez v7, :cond_7

    .line 4342
    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueAllowUsers;->users:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 4345
    :cond_8
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_a
    return-object v0
.end method

.method public static toOutput(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 9

    .line 4352
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 4353
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_8

    .line 4354
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$InputPrivacyRule;

    if-nez v3, :cond_0

    goto/16 :goto_3

    .line 4358
    :cond_0
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueAllowAll;

    if-eqz v4, :cond_1

    .line 4359
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_privacyValueAllowAll;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_privacyValueAllowAll;-><init>()V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 4360
    :cond_1
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueAllowCloseFriends;

    if-eqz v4, :cond_2

    .line 4361
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_privacyValueAllowCloseFriends;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_privacyValueAllowCloseFriends;-><init>()V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 4362
    :cond_2
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueAllowContacts;

    if-eqz v4, :cond_3

    .line 4363
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_privacyValueAllowContacts;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_privacyValueAllowContacts;-><init>()V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 4364
    :cond_3
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueDisallowUsers;

    if-eqz v4, :cond_5

    .line 4365
    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueDisallowUsers;

    .line 4366
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_privacyValueDisallowUsers;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_privacyValueDisallowUsers;-><init>()V

    move v5, v1

    .line 4367
    :goto_1
    iget-object v6, v3, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueDisallowUsers;->users:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_4

    .line 4368
    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_privacyValueDisallowUsers;->users:Ljava/util/ArrayList;

    iget-object v7, v3, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueDisallowUsers;->users:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$InputUser;

    iget-wide v7, v7, Lorg/telegram/tgnet/TLRPC$InputUser;->user_id:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 4370
    :cond_4
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 4371
    :cond_5
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueAllowUsers;

    if-eqz v4, :cond_7

    .line 4372
    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueAllowUsers;

    .line 4373
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_privacyValueAllowUsers;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_privacyValueAllowUsers;-><init>()V

    move v5, v1

    .line 4374
    :goto_2
    iget-object v6, v3, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueAllowUsers;->users:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_6

    .line 4375
    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_privacyValueAllowUsers;->users:Ljava/util/ArrayList;

    iget-object v7, v3, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueAllowUsers;->users:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$InputUser;

    iget-wide v7, v7, Lorg/telegram/tgnet/TLRPC$InputUser;->user_id:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 4377
    :cond_6
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_8
    return-object v0
.end method


# virtual methods
.method public containsUser(Lorg/telegram/tgnet/TLRPC$User;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 4387
    :cond_0
    iget v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->type:I

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    .line 4388
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->selectedUserIds:Ljava/util/ArrayList;

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v3

    return p1

    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 4390
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->selectedUserIds:Ljava/util/ArrayList;

    iget-wide v4, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$User;->contact:Z

    if-eqz p1, :cond_2

    return v3

    :cond_2
    return v0

    :cond_3
    if-ne v1, v3, :cond_4

    .line 4392
    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$User;->close_friend:Z

    return p1

    :cond_4
    const/4 v2, 0x3

    if-ne v1, v2, :cond_7

    .line 4394
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->selectedUserIds:Ljava/util/ArrayList;

    iget-wide v4, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    return v3

    .line 4397
    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->selectedUserIdsByGroup:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 4398
    iget-wide v4, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    return v3

    :cond_7
    return v0
.end method

.method public isCloseFriends()Z
    .locals 2

    .line 4229
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isNone()Z
    .locals 1

    .line 4225
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->sendToUsers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->rules:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isShare()Z
    .locals 2

    .line 4221
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->type:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 4235
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->sendToUsers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 4236
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->sendToUsers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "StoryPrivacyRecipients"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4238
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->rules:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4239
    sget v0, Lorg/telegram/messenger/R$string;->StoryPrivacyNone:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4241
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->rules:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$InputPrivacyRule;

    .line 4242
    iget v2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->type:I

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-ne v2, v3, :cond_4

    .line 4243
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->rules:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, v6, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->rules:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lorg/telegram/tgnet/TLRPC$InputPrivacyRule;

    .line 4244
    :cond_2
    instance-of v0, v4, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueDisallowUsers;

    if-eqz v0, :cond_3

    .line 4245
    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueDisallowUsers;

    iget-object v0, v4, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueDisallowUsers;->users:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 4247
    const-string v2, "StoryPrivacyEveryoneExclude"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4250
    :cond_3
    sget v0, Lorg/telegram/messenger/R$string;->StoryPrivacyEveryone:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    if-ne v2, v5, :cond_5

    .line 4252
    sget v0, Lorg/telegram/messenger/R$string;->StoryPrivacyCloseFriends:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5
    const/4 v3, 0x3

    .line 4253
    const-string v7, "StoryPrivacyContacts"

    if-ne v2, v3, :cond_6

    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueAllowUsers;

    if-eqz v3, :cond_6

    .line 4254
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueAllowUsers;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueAllowUsers;->users:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4255
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v7, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_6
    if-ne v2, v6, :cond_a

    .line 4257
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->rules:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, v6, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->rules:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lorg/telegram/tgnet/TLRPC$InputPrivacyRule;

    .line 4258
    :cond_7
    instance-of v0, v4, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueDisallowUsers;

    if-eqz v0, :cond_9

    .line 4259
    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueDisallowUsers;

    iget-object v0, v4, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueDisallowUsers;->users:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 4261
    const-string v2, "StoryPrivacyContactsExclude"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4263
    :cond_8
    sget v0, Lorg/telegram/messenger/R$string;->StoryPrivacyAllContacts:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4266
    :cond_9
    sget v0, Lorg/telegram/messenger/R$string;->StoryPrivacyAllContacts:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_a
    if-nez v2, :cond_d

    .line 4269
    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueAllowUsers;

    if-eqz v2, :cond_c

    .line 4270
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueAllowUsers;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueAllowUsers;->users:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_b

    .line 4272
    sget v0, Lorg/telegram/messenger/R$string;->StoryPrivacyNone:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4274
    :cond_b
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v7, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4277
    :cond_c
    sget v0, Lorg/telegram/messenger/R$string;->StoryPrivacyNone:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4280
    :cond_d
    sget v0, Lorg/telegram/messenger/R$string;->StoryPrivacyNone:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toValue()Ljava/util/ArrayList;
    .locals 9

    .line 4284
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 4285
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->rules:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_7

    .line 4286
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->rules:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$InputPrivacyRule;

    .line 4287
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueAllowAll;

    if-eqz v4, :cond_0

    .line 4288
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_privacyValueAllowAll;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_privacyValueAllowAll;-><init>()V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 4289
    :cond_0
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueAllowCloseFriends;

    if-eqz v4, :cond_1

    .line 4290
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_privacyValueAllowCloseFriends;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_privacyValueAllowCloseFriends;-><init>()V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 4291
    :cond_1
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueAllowContacts;

    if-eqz v4, :cond_2

    .line 4292
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_privacyValueAllowContacts;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_privacyValueAllowContacts;-><init>()V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 4293
    :cond_2
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueDisallowUsers;

    if-eqz v4, :cond_4

    .line 4294
    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueDisallowUsers;

    .line 4295
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_privacyValueDisallowUsers;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_privacyValueDisallowUsers;-><init>()V

    move v5, v1

    .line 4296
    :goto_1
    iget-object v6, v3, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueDisallowUsers;->users:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 4297
    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_privacyValueDisallowUsers;->users:Ljava/util/ArrayList;

    iget-object v7, v3, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueDisallowUsers;->users:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$InputUser;

    iget-wide v7, v7, Lorg/telegram/tgnet/TLRPC$InputUser;->user_id:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 4299
    :cond_3
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 4300
    :cond_4
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueAllowUsers;

    if-eqz v4, :cond_6

    .line 4301
    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueAllowUsers;

    .line 4302
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_privacyValueAllowUsers;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_privacyValueAllowUsers;-><init>()V

    move v5, v1

    .line 4303
    :goto_2
    iget-object v6, v3, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueAllowUsers;->users:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_5

    .line 4304
    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_privacyValueAllowUsers;->users:Ljava/util/ArrayList;

    iget-object v7, v3, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueAllowUsers;->users:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$InputUser;

    iget-wide v7, v7, Lorg/telegram/tgnet/TLRPC$InputUser;->user_id:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 4306
    :cond_5
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_7
    return-object v0
.end method
