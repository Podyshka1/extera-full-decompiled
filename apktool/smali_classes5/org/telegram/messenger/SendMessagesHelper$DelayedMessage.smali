.class public Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/SendMessagesHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "DelayedMessage"
.end annotation


# instance fields
.field public coverFile:Lorg/telegram/tgnet/TLRPC$InputFile;

.field public coverPhotoSize:Lorg/telegram/tgnet/TLRPC$PhotoSize;

.field public encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

.field public extraHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public finalGroupMessage:I

.field public forceReupload:Z

.field public groupId:J

.field public httpLocation:Ljava/lang/String;

.field public httpLocations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public inputMedias:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$InputMedia;",
            ">;"
        }
    .end annotation
.end field

.field public inputUploadMedia:Lorg/telegram/tgnet/TLRPC$InputMedia;

.field public locationParent:Lorg/telegram/tgnet/TLObject;

.field public locations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$PhotoSize;",
            ">;"
        }
    .end annotation
.end field

.field public messageObjects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field public messages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$Message;",
            ">;"
        }
    .end annotation
.end field

.field public obj:Lorg/telegram/messenger/MessageObject;

.field public originalPath:Ljava/lang/String;

.field public originalPaths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public paidMedia:Z

.field public parentObject:Ljava/lang/Object;

.field public parentObjects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public peer:J

.field public performCoverUpload:Z

.field public performMediaUpload:Z

.field public photoSize:Lorg/telegram/tgnet/TLRPC$PhotoSize;

.field requests:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/SendMessagesHelper$DelayedMessageSendAfterRequest;",
            ">;"
        }
    .end annotation
.end field

.field private retriedToSend:Z

.field public retriedToSendArray:[Z

.field public scheduled:Z

.field public sendEncryptedRequest:Lorg/telegram/tgnet/TLObject;

.field public sendRequest:Lorg/telegram/tgnet/TLObject;

.field final synthetic this$0:Lorg/telegram/messenger/SendMessagesHelper;

.field public topMessageId:I

.field public type:I

.field public videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

.field public videoEditedInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/VideoEditedInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/SendMessagesHelper;J)V
    .locals 0

    .line 819
    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->this$0:Lorg/telegram/messenger/SendMessagesHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 820
    iput-wide p2, p0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->peer:J

    return-void
.end method


# virtual methods
.method public addDelayedRequest(Lorg/telegram/tgnet/TLObject;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/tgnet/TLObject;",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;",
            "Z)V"
        }
    .end annotation

    .line 852
    new-instance v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessageSendAfterRequest;

    iget-object v1, p0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->this$0:Lorg/telegram/messenger/SendMessagesHelper;

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessageSendAfterRequest;-><init>(Lorg/telegram/messenger/SendMessagesHelper;)V

    .line 853
    iput-object p1, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessageSendAfterRequest;->request:Lorg/telegram/tgnet/TLObject;

    .line 854
    iput-object p2, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessageSendAfterRequest;->msgObjs:Ljava/util/ArrayList;

    .line 855
    iput-object p3, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessageSendAfterRequest;->originalPaths:Ljava/util/ArrayList;

    .line 856
    iput-object p5, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessageSendAfterRequest;->delayedMessage:Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    .line 857
    iput-object p4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessageSendAfterRequest;->parentObjects:Ljava/util/ArrayList;

    .line 858
    iput-boolean p6, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessageSendAfterRequest;->scheduled:Z

    .line 859
    iget-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->requests:Ljava/util/ArrayList;

    if-nez p1, :cond_0

    .line 860
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->requests:Ljava/util/ArrayList;

    .line 862
    :cond_0
    iget-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->requests:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addDelayedRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;Ljava/lang/Object;Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;Z)V
    .locals 2

    .line 838
    new-instance v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessageSendAfterRequest;

    iget-object v1, p0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->this$0:Lorg/telegram/messenger/SendMessagesHelper;

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessageSendAfterRequest;-><init>(Lorg/telegram/messenger/SendMessagesHelper;)V

    .line 839
    iput-object p1, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessageSendAfterRequest;->request:Lorg/telegram/tgnet/TLObject;

    .line 840
    iput-object p2, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessageSendAfterRequest;->msgObj:Lorg/telegram/messenger/MessageObject;

    .line 841
    iput-object p3, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessageSendAfterRequest;->originalPath:Ljava/lang/String;

    .line 842
    iput-object p5, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessageSendAfterRequest;->delayedMessage:Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    .line 843
    iput-object p4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessageSendAfterRequest;->parentObject:Ljava/lang/Object;

    .line 844
    iput-boolean p6, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessageSendAfterRequest;->scheduled:Z

    .line 845
    iget-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->requests:Ljava/util/ArrayList;

    if-nez p1, :cond_0

    .line 846
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->requests:Ljava/util/ArrayList;

    .line 848
    :cond_0
    iget-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->requests:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getRetriedToSend(I)Z
    .locals 2

    if-ltz p1, :cond_1

    .line 783
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->retriedToSendArray:[Z

    if-eqz v0, :cond_1

    array-length v1, v0

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 786
    :cond_0
    aget-boolean p1, v0, p1

    return p1

    .line 784
    :cond_1
    :goto_0
    iget-boolean p1, p0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->retriedToSend:Z

    return p1
.end method

.method public initForGroup(J)V
    .locals 1

    const/4 v0, 0x4

    .line 824
    iput v0, p0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I

    .line 825
    iput-wide p1, p0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->groupId:J

    .line 826
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->messageObjects:Ljava/util/ArrayList;

    .line 827
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->messages:Ljava/util/ArrayList;

    .line 828
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->inputMedias:Ljava/util/ArrayList;

    .line 829
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->originalPaths:Ljava/util/ArrayList;

    .line 830
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->parentObjects:Ljava/util/ArrayList;

    .line 831
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->extraHashMap:Ljava/util/HashMap;

    .line 832
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->locations:Ljava/util/ArrayList;

    .line 833
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->httpLocations:Ljava/util/ArrayList;

    .line 834
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->videoEditedInfos:Ljava/util/ArrayList;

    return-void
.end method

.method public markAsError()V
    .locals 11

    .line 886
    iget v0, p0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    const-wide/16 v5, 0x0

    if-ne v0, v1, :cond_1

    move v0, v3

    .line 887
    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 888
    iget-object v1, p0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    .line 889
    iget-object v7, p0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->this$0:Lorg/telegram/messenger/SendMessagesHelper;

    invoke-virtual {v7}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v7

    iget-object v8, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-boolean v9, v1, Lorg/telegram/messenger/MessageObject;->scheduled:Z

    invoke-virtual {v7, v8, v9}, Lorg/telegram/messenger/MessagesStorage;->markMessageAsSendError(Lorg/telegram/tgnet/TLRPC$Message;I)V

    .line 890
    iget-object v7, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iput v4, v7, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    .line 891
    iput-wide v5, v7, Lorg/telegram/tgnet/TLRPC$Message;->errorAllowedPriceStars:J

    .line 892
    iput-wide v5, v7, Lorg/telegram/tgnet/TLRPC$Message;->errorNewPriceStars:J

    .line 893
    iget-object v7, p0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->this$0:Lorg/telegram/messenger/SendMessagesHelper;

    invoke-virtual {v7}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v7

    sget v8, Lorg/telegram/messenger/NotificationCenter;->messageSendError:I

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-array v10, v2, [Ljava/lang/Object;

    aput-object v9, v10, v3

    invoke-virtual {v7, v8, v10}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 894
    iget-object v7, p0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->this$0:Lorg/telegram/messenger/SendMessagesHelper;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v8

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/SendMessagesHelper;->processSentMessage(I)V

    .line 895
    iget-object v7, p0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->this$0:Lorg/telegram/messenger/SendMessagesHelper;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    iget-boolean v8, p0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->scheduled:Z

    invoke-virtual {v7, v1, v8}, Lorg/telegram/messenger/SendMessagesHelper;->removeFromUploadingMessages(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 897
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->this$0:Lorg/telegram/messenger/SendMessagesHelper;

    invoke-static {v0}, Lorg/telegram/messenger/SendMessagesHelper;->-$$Nest$fgetdelayedMessages(Lorg/telegram/messenger/SendMessagesHelper;)Ljava/util/HashMap;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "group_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->groupId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 899
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->this$0:Lorg/telegram/messenger/SendMessagesHelper;

    invoke-virtual {v0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    iget-object v7, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-boolean v1, v1, Lorg/telegram/messenger/MessageObject;->scheduled:Z

    invoke-virtual {v0, v7, v1}, Lorg/telegram/messenger/MessagesStorage;->markMessageAsSendError(Lorg/telegram/tgnet/TLRPC$Message;I)V

    .line 900
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    .line 901
    iput-wide v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->errorAllowedPriceStars:J

    .line 902
    iput-wide v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->errorNewPriceStars:J

    .line 903
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->this$0:Lorg/telegram/messenger/SendMessagesHelper;

    invoke-virtual {v0}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messageSendError:I

    iget-object v4, p0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 904
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->this$0:Lorg/telegram/messenger/SendMessagesHelper;

    iget-object v1, p0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->processSentMessage(I)V

    .line 905
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->this$0:Lorg/telegram/messenger/SendMessagesHelper;

    iget-object v1, p0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    iget-boolean v2, p0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->scheduled:Z

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/SendMessagesHelper;->removeFromUploadingMessages(IZ)V

    .line 907
    :goto_1
    invoke-virtual {p0}, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendDelayedRequests()V

    return-void
.end method

.method public sendDelayedRequests()V
    .locals 12

    .line 866
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->requests:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    iget v1, p0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    if-eqz v1, :cond_0

    goto/16 :goto_2

    .line 869
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    .line 871
    iget-object v2, p0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->requests:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessageSendAfterRequest;

    .line 872
    iget-object v4, v2, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessageSendAfterRequest;->request:Lorg/telegram/tgnet/TLObject;

    instance-of v3, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_sendEncryptedMultiMedia;

    if-eqz v3, :cond_1

    .line 873
    iget-object v3, p0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->this$0:Lorg/telegram/messenger/SendMessagesHelper;

    invoke-virtual {v3}, Lorg/telegram/messenger/BaseController;->getSecretChatHelper()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v3

    iget-object v2, v2, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessageSendAfterRequest;->request:Lorg/telegram/tgnet/TLObject;

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendEncryptedMultiMedia;

    invoke-virtual {v3, v2, p0}, Lorg/telegram/messenger/SecretChatHelper;->performSendEncryptedRequest(Lorg/telegram/tgnet/TLRPC$TL_messages_sendEncryptedMultiMedia;Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    goto :goto_1

    .line 874
    :cond_1
    instance-of v3, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;

    if-eqz v3, :cond_2

    .line 875
    iget-object v5, p0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->this$0:Lorg/telegram/messenger/SendMessagesHelper;

    move-object v6, v4

    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;

    iget-object v7, v2, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessageSendAfterRequest;->msgObjs:Ljava/util/ArrayList;

    iget-object v8, v2, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessageSendAfterRequest;->originalPaths:Ljava/util/ArrayList;

    iget-object v9, v2, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessageSendAfterRequest;->parentObjects:Ljava/util/ArrayList;

    iget-object v10, v2, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessageSendAfterRequest;->delayedMessage:Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    iget-boolean v11, v2, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessageSendAfterRequest;->scheduled:Z

    invoke-virtual/range {v5 .. v11}, Lorg/telegram/messenger/SendMessagesHelper;->performSendMessageRequestMulti(Lorg/telegram/tgnet/TLObject;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;Z)V

    goto :goto_1

    .line 876
    :cond_2
    instance-of v3, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;

    if-eqz v3, :cond_3

    move-object v3, v4

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPaidMedia;

    if-eqz v3, :cond_3

    .line 877
    iget-object v5, p0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->this$0:Lorg/telegram/messenger/SendMessagesHelper;

    move-object v6, v4

    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;

    iget-object v7, v2, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessageSendAfterRequest;->msgObjs:Ljava/util/ArrayList;

    iget-object v8, v2, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessageSendAfterRequest;->originalPaths:Ljava/util/ArrayList;

    iget-object v9, v2, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessageSendAfterRequest;->parentObjects:Ljava/util/ArrayList;

    iget-object v10, v2, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessageSendAfterRequest;->delayedMessage:Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    iget-boolean v11, v2, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessageSendAfterRequest;->scheduled:Z

    invoke-virtual/range {v5 .. v11}, Lorg/telegram/messenger/SendMessagesHelper;->performSendMessageRequestMulti(Lorg/telegram/tgnet/TLObject;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;Z)V

    goto :goto_1

    .line 879
    :cond_3
    iget-object v3, p0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->this$0:Lorg/telegram/messenger/SendMessagesHelper;

    iget-object v5, v2, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessageSendAfterRequest;->msgObj:Lorg/telegram/messenger/MessageObject;

    iget-object v6, v2, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessageSendAfterRequest;->originalPath:Ljava/lang/String;

    iget-object v7, v2, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessageSendAfterRequest;->delayedMessage:Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    iget-object v8, v2, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessageSendAfterRequest;->parentObject:Ljava/lang/Object;

    const/4 v9, 0x0

    iget-boolean v10, v2, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessageSendAfterRequest;->scheduled:Z

    invoke-static/range {v3 .. v10}, Lorg/telegram/messenger/SendMessagesHelper;->-$$Nest$mperformSendMessageRequest(Lorg/telegram/messenger/SendMessagesHelper;Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;Ljava/lang/Object;Ljava/util/HashMap;Z)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    .line 882
    iput-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->requests:Ljava/util/ArrayList;

    :cond_5
    :goto_2
    return-void
.end method

.method public setRetriedToSend(IZ)V
    .locals 1

    if-gez p1, :cond_0

    .line 792
    iput-boolean p2, p0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->retriedToSend:Z

    return-void

    .line 794
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->retriedToSendArray:[Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->retriedToSendArray:[Z

    .line 795
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->retriedToSendArray:[Z

    aput-boolean p2, v0, p1

    return-void
.end method
