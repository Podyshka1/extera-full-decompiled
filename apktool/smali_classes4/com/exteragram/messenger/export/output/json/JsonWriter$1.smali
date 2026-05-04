.class Lcom/exteragram/messenger/export/output/json/JsonWriter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/Utilities$Callback2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/exteragram/messenger/export/output/json/JsonWriter;->writeFrequentContacts(Lcom/exteragram/messenger/export/api/ApiWrap$ContactsList;)Lcom/exteragram/messenger/export/output/AbstractWriter$Result;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/exteragram/messenger/export/output/json/JsonWriter;

.field final synthetic val$block:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Lcom/exteragram/messenger/export/output/json/JsonWriter;Ljava/lang/StringBuilder;)V
    .locals 0

    .line 491
    iput-object p1, p0, Lcom/exteragram/messenger/export/output/json/JsonWriter$1;->this$0:Lcom/exteragram/messenger/export/output/json/JsonWriter;

    iput-object p2, p0, Lcom/exteragram/messenger/export/output/json/JsonWriter$1;->val$block:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 491
    check-cast p1, Ljava/util/ArrayList;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/exteragram/messenger/export/output/json/JsonWriter$1;->run(Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void
.end method

.method public run(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 13

    .line 494
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_5

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/exteragram/messenger/export/api/ApiWrap$TopPeer;

    .line 497
    iget-object v4, v3, Lcom/exteragram/messenger/export/api/ApiWrap$TopPeer;->peer:Lcom/exteragram/messenger/export/api/ApiWrap$Peer;

    iget-object v4, v4, Lcom/exteragram/messenger/export/api/ApiWrap$Peer;->chat:Lcom/exteragram/messenger/export/api/ApiWrap$Chat;

    if-eqz v4, :cond_4

    .line 499
    iget-object v5, v4, Lcom/exteragram/messenger/export/api/ApiWrap$Chat;->username:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 500
    iget-boolean v5, v4, Lcom/exteragram/messenger/export/api/ApiWrap$Chat;->isBroadcast:Z

    if-eqz v5, :cond_0

    .line 501
    const-string v4, "private_channel"

    goto :goto_1

    .line 502
    :cond_0
    iget-boolean v4, v4, Lcom/exteragram/messenger/export/api/ApiWrap$Chat;->isSupergroup:Z

    if-eqz v4, :cond_1

    .line 503
    const-string v4, "private_supergroup"

    goto :goto_1

    .line 505
    :cond_1
    const-string v4, "private_group"

    goto :goto_1

    .line 507
    :cond_2
    iget-boolean v4, v4, Lcom/exteragram/messenger/export/api/ApiWrap$Chat;->isBroadcast:Z

    if-eqz v4, :cond_3

    .line 508
    const-string v4, "public_channel"

    goto :goto_1

    .line 510
    :cond_3
    const-string v4, "public_supergroup"

    goto :goto_1

    .line 497
    :cond_4
    const-string v4, "user"

    .line 513
    :goto_1
    iget-object v5, p0, Lcom/exteragram/messenger/export/output/json/JsonWriter$1;->val$block:Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/exteragram/messenger/export/output/json/JsonWriter$1;->this$0:Lcom/exteragram/messenger/export/output/json/JsonWriter;

    invoke-static {v6}, Lcom/exteragram/messenger/export/output/json/JsonWriter;->-$$Nest$fget_contacts(Lcom/exteragram/messenger/export/output/json/JsonWriter;)Lcom/exteragram/messenger/export/output/json/JsonContext;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/exteragram/messenger/export/output/json/JsonWriter;->-$$Nest$mprepareArrayItemStart(Lcom/exteragram/messenger/export/output/json/JsonWriter;Lcom/exteragram/messenger/export/output/json/JsonContext;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    iget-object v5, p0, Lcom/exteragram/messenger/export/output/json/JsonWriter$1;->val$block:Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/exteragram/messenger/export/output/json/JsonWriter$1;->this$0:Lcom/exteragram/messenger/export/output/json/JsonWriter;

    invoke-static {v6}, Lcom/exteragram/messenger/export/output/json/JsonWriter;->-$$Nest$fget_contacts(Lcom/exteragram/messenger/export/output/json/JsonWriter;)Lcom/exteragram/messenger/export/output/json/JsonContext;

    move-result-object v6

    new-instance v7, Landroid/util/Pair;

    iget-object v8, v3, Lcom/exteragram/messenger/export/api/ApiWrap$TopPeer;->peer:Lcom/exteragram/messenger/export/api/ApiWrap$Peer;

    .line 515
    invoke-virtual {v8}, Lcom/exteragram/messenger/export/api/ApiWrap$Peer;->id()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    const-string v9, "id"

    invoke-direct {v7, v9, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v8, Landroid/util/Pair;

    const-string v9, "category"

    .line 516
    invoke-static {p2}, Lcom/exteragram/messenger/export/output/json/JsonContext;->SerializeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v9, Landroid/util/Pair;

    const-string v10, "type"

    .line 517
    invoke-static {v4}, Lcom/exteragram/messenger/export/output/json/JsonContext;->SerializeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v9, v10, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v4, Landroid/util/Pair;

    iget-object v10, v3, Lcom/exteragram/messenger/export/api/ApiWrap$TopPeer;->peer:Lcom/exteragram/messenger/export/api/ApiWrap$Peer;

    .line 518
    invoke-virtual {v10}, Lcom/exteragram/messenger/export/api/ApiWrap$Peer;->name()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/exteragram/messenger/export/output/json/JsonWriter;->-$$Nest$smStringAllowNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "name"

    invoke-direct {v4, v11, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v10, Landroid/util/Pair;

    iget-wide v11, v3, Lcom/exteragram/messenger/export/api/ApiWrap$TopPeer;->rating:D

    .line 519
    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    const-string v11, "rating"

    invoke-direct {v10, v11, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x5

    new-array v3, v3, [Landroid/util/Pair;

    aput-object v7, v3, v1

    const/4 v7, 0x1

    aput-object v8, v3, v7

    const/4 v7, 0x2

    aput-object v9, v3, v7

    const/4 v7, 0x3

    aput-object v4, v3, v7

    const/4 v4, 0x4

    aput-object v10, v3, v4

    .line 514
    invoke-static {v6, v3}, Lcom/exteragram/messenger/export/output/json/JsonContext;->SerializeObject(Lcom/exteragram/messenger/export/output/json/JsonContext;[Landroid/util/Pair;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_5
    return-void
.end method
