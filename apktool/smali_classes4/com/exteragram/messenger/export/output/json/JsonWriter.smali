.class public Lcom/exteragram/messenger/export/output/json/JsonWriter;
.super Lcom/exteragram/messenger/export/output/AbstractWriter;
.source "SourceFile"


# instance fields
.field private volatile _chat:Lcom/exteragram/messenger/export/output/json/JsonContext;

.field private volatile _chatSummary:Lcom/exteragram/messenger/export/output/json/JsonContext;

.field private volatile _contacts:Lcom/exteragram/messenger/export/output/json/JsonContext;

.field private _dialog:Lcom/exteragram/messenger/export/api/ApiWrap$DialogInfo;

.field private _dialogsMode:Lcom/exteragram/messenger/export/output/html/HtmlWriter$DialogsMode;

.field private _messagesCount:I

.field private volatile _otherData:Lcom/exteragram/messenger/export/output/json/JsonContext;

.field private volatile _sessions:Lcom/exteragram/messenger/export/output/json/JsonContext;

.field private _settings:Lcom/exteragram/messenger/export/ExportSettings;

.field private _stats:Lcom/exteragram/messenger/export/output/OutputFile$Stats;

.field private volatile _stories:Lcom/exteragram/messenger/export/output/json/JsonContext;

.field private _summary:Lcom/exteragram/messenger/export/output/json/JsonContext;


# direct methods
.method static bridge synthetic -$$Nest$fget_contacts(Lcom/exteragram/messenger/export/output/json/JsonWriter;)Lcom/exteragram/messenger/export/output/json/JsonContext;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/exteragram/messenger/export/output/json/JsonWriter;->_contacts:Lcom/exteragram/messenger/export/output/json/JsonContext;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mprepareArrayItemStart(Lcom/exteragram/messenger/export/output/json/JsonWriter;Lcom/exteragram/messenger/export/output/json/JsonContext;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/export/output/json/JsonWriter;->prepareArrayItemStart(Lcom/exteragram/messenger/export/output/json/JsonContext;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smStringAllowNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/exteragram/messenger/export/output/json/JsonWriter;->StringAllowNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Lcom/exteragram/messenger/export/output/AbstractWriter;-><init>()V

    .line 67
    sget-object v0, Lcom/exteragram/messenger/export/output/html/HtmlWriter$DialogsMode;->None:Lcom/exteragram/messenger/export/output/html/HtmlWriter$DialogsMode;

    iput-object v0, p0, Lcom/exteragram/messenger/export/output/json/JsonWriter;->_dialogsMode:Lcom/exteragram/messenger/export/output/html/HtmlWriter$DialogsMode;

    return-void
.end method

.method private static StringAllowNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_1

    .line 75
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/exteragram/messenger/export/output/json/JsonContext;->SerializeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const-string p0, "null"

    return-object p0
.end method

.method private fileWithRelativePath(Ljava/lang/String;)Lcom/exteragram/messenger/export/output/OutputFile;
    .locals 3

    .line 550
    new-instance v0, Lcom/exteragram/messenger/export/output/OutputFile;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/exteragram/messenger/export/output/json/JsonWriter;->_settings:Lcom/exteragram/messenger/export/ExportSettings;

    iget-object v2, v2, Lcom/exteragram/messenger/export/ExportSettings;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/exteragram/messenger/export/output/json/JsonWriter;->_stats:Lcom/exteragram/messenger/export/output/OutputFile$Stats;

    invoke-direct {v0, p1, v1}, Lcom/exteragram/messenger/export/output/OutputFile;-><init>(Ljava/lang/String;Lcom/exteragram/messenger/export/output/OutputFile$Stats;)V

    return-object v0
.end method

.method private static messagesFile(I)Ljava/lang/String;
    .locals 2

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "messages"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ".json"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private popNesting(Lcom/exteragram/messenger/export/output/json/JsonContext;)Ljava/lang/String;
    .locals 4

    .line 584
    iget-object v0, p1, Lcom/exteragram/messenger/export/output/json/JsonContext;->nesting:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 585
    iget-object v1, p1, Lcom/exteragram/messenger/export/output/json/JsonContext;->nesting:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 587
    iput-boolean v2, p1, Lcom/exteragram/messenger/export/output/json/JsonContext;->_currentNestingHadItem:Z

    .line 588
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 589
    invoke-static {p1}, Lcom/exteragram/messenger/export/output/json/JsonContext;->Indentation(Lcom/exteragram/messenger/export/output/json/JsonContext;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-ne p1, v2, :cond_0

    const/16 p1, 0x7d

    goto :goto_0

    :cond_0
    const/16 p1, 0x5d

    .line 592
    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private prepareArrayItemStart(Lcom/exteragram/messenger/export/output/json/JsonContext;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    .line 630
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v2, p1, Lcom/exteragram/messenger/export/output/json/JsonContext;->_currentNestingHadItem:Z

    if-eqz v2, :cond_0

    const-string v2, ",\n"

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    const-string v2, "\n"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/exteragram/messenger/export/output/json/JsonContext;->Indentation(Lcom/exteragram/messenger/export/output/json/JsonContext;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 632
    iput-boolean v0, p1, Lcom/exteragram/messenger/export/output/json/JsonContext;->_currentNestingHadItem:Z

    return-object v1

    :goto_1
    iput-boolean v0, p1, Lcom/exteragram/messenger/export/output/json/JsonContext;->_currentNestingHadItem:Z

    .line 633
    throw v1
.end method

.method private prepareObjectItemStart(Ljava/lang/String;Lcom/exteragram/messenger/export/output/json/JsonContext;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    .line 565
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v2, p2, Lcom/exteragram/messenger/export/output/json/JsonContext;->_currentNestingHadItem:Z

    if-eqz v2, :cond_0

    const-string v2, ",\n"

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const-string v2, "\n"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    invoke-static {p2}, Lcom/exteragram/messenger/export/output/json/JsonContext;->Indentation(Lcom/exteragram/messenger/export/output/json/JsonContext;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    invoke-static {p1}, Lcom/exteragram/messenger/export/output/json/JsonContext;->SerializeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 570
    iput-boolean v0, p2, Lcom/exteragram/messenger/export/output/json/JsonContext;->_currentNestingHadItem:Z

    return-object p1

    :goto_1
    iput-boolean v0, p2, Lcom/exteragram/messenger/export/output/json/JsonContext;->_currentNestingHadItem:Z

    .line 571
    throw p1
.end method

.method private pushNesting(Ljava/lang/Boolean;Lcom/exteragram/messenger/export/output/json/JsonContext;)Ljava/lang/String;
    .locals 1

    .line 554
    iget-object v0, p2, Lcom/exteragram/messenger/export/output/json/JsonContext;->nesting:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 555
    iput-boolean v0, p2, Lcom/exteragram/messenger/export/output/json/JsonContext;->_currentNestingHadItem:Z

    .line 556
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 557
    const-string p1, "{"

    return-object p1

    .line 558
    :cond_0
    const-string p1, "["

    return-object p1
.end method

.method private switchToNextChatFile(I)Lcom/exteragram/messenger/export/output/AbstractWriter$Result;
    .locals 3

    .line 533
    invoke-static {p1}, Lcom/exteragram/messenger/export/output/json/JsonWriter;->messagesFile(I)Ljava/lang/String;

    move-result-object p1

    .line 535
    new-instance v0, Lcom/exteragram/messenger/export/output/json/JsonContext;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/exteragram/messenger/export/output/json/JsonWriter;->_dialog:Lcom/exteragram/messenger/export/api/ApiWrap$DialogInfo;

    iget-object v2, v2, Lcom/exteragram/messenger/export/api/ApiWrap$DialogInfo;->relativePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/exteragram/messenger/export/output/json/JsonWriter;->fileWithRelativePath(Ljava/lang/String;)Lcom/exteragram/messenger/export/output/OutputFile;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/exteragram/messenger/export/output/json/JsonContext;-><init>(Lcom/exteragram/messenger/export/output/OutputFile;)V

    iput-object v0, p0, Lcom/exteragram/messenger/export/output/json/JsonWriter;->_chat:Lcom/exteragram/messenger/export/output/json/JsonContext;

    .line 537
    invoke-static {}, Lcom/exteragram/messenger/export/output/AbstractWriter$Result;->Success()Lcom/exteragram/messenger/export/output/AbstractWriter$Result;

    move-result-object p1

    return-object p1
.end method

.method private writeChatsEnd()Lcom/exteragram/messenger/export/output/AbstractWriter$Result;
    .locals 1

    .line 577
    invoke-static {}, Lcom/exteragram/messenger/export/output/AbstractWriter$Result;->Success()Lcom/exteragram/messenger/export/output/AbstractWriter$Result;

    move-result-object v0

    return-object v0
.end method

.method private writeChatsStart(Ljava/lang/String;Ljava/lang/String;)Lcom/exteragram/messenger/export/output/AbstractWriter$Result;
    .locals 0

    .line 625
    invoke-static {}, Lcom/exteragram/messenger/export/output/AbstractWriter$Result;->Success()Lcom/exteragram/messenger/export/output/AbstractWriter$Result;

    move-result-object p1

    return-object p1
.end method

.method private writeFrequentContacts(Lcom/exteragram/messenger/export/api/ApiWrap$ContactsList;)Lcom/exteragram/messenger/export/output/AbstractWriter$Result;
    .locals 4

    .line 484
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "frequent_contacts"

    iget-object v2, p0, Lcom/exteragram/messenger/export/output/json/JsonWriter;->_contacts:Lcom/exteragram/messenger/export/output/json/JsonContext;

    invoke-direct {p0, v1, v2}, Lcom/exteragram/messenger/export/output/json/JsonWriter;->prepareObjectItemStart(Ljava/lang/String;Lcom/exteragram/messenger/export/output/json/JsonContext;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 485
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/exteragram/messenger/export/output/json/JsonWriter;->_contacts:Lcom/exteragram/messenger/export/output/json/JsonContext;

    invoke-direct {p0, v1, v2}, Lcom/exteragram/messenger/export/output/json/JsonWriter;->pushNesting(Ljava/lang/Boolean;Lcom/exteragram/messenger/export/output/json/JsonContext;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    const-string v1, "about"

    iget-object v2, p0, Lcom/exteragram/messenger/export/output/json/JsonWriter;->_contacts:Lcom/exteragram/messenger/export/output/json/JsonContext;

    invoke-direct {p0, v1, v2}, Lcom/exteragram/messenger/export/output/json/JsonWriter;->prepareObjectItemStart(Ljava/lang/String;Lcom/exteragram/messenger/export/output/json/JsonContext;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    const-string v1, "_environment.aboutFrequent"

    invoke-static {v1}, Lcom/exteragram/messenger/export/output/json/JsonContext;->SerializeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    const-string v1, "list"

    iget-object v2, p0, Lcom/exteragram/messenger/export/output/json/JsonWriter;->_contacts:Lcom/exteragram/messenger/export/output/json/JsonContext;

    invoke-direct {p0, v1, v2}, Lcom/exteragram/messenger/export/output/json/JsonWriter;->prepareObjectItemStart(Ljava/lang/String;Lcom/exteragram/messenger/export/output/json/JsonContext;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/exteragram/messenger/export/output/json/JsonWriter;->_contacts:Lcom/exteragram/messenger/export/output/json/JsonContext;

    invoke-direct {p0, v1, v2}, Lcom/exteragram/messenger/export/output/json/JsonWriter;->pushNesting(Ljava/lang/Boolean;Lcom/exteragram/messenger/export/output/json/JsonContext;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    new-instance v1, Lcom/exteragram/messenger/export/output/json/JsonWriter$1;

    invoke-direct {v1, p0, v0}, Lcom/exteragram/messenger/export/output/json/JsonWriter$1;-><init>(Lcom/exteragram/messenger/export/output/json/JsonWriter;Ljava/lang/StringBuilder;)V

    .line 525
    iget-object v2, p1, Lcom/exteragram/messenger/export/api/ApiWrap$ContactsList;->correspondents:Ljava/util/ArrayList;

    const-string v3, "people"

    invoke-virtual {v1, v2, v3}, Lcom/exteragram/messenger/export/output/json/JsonWriter$1;->run(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 526
    iget-object v2, p1, Lcom/exteragram/messenger/export/api/ApiWrap$ContactsList;->inlineBots:Ljava/util/ArrayList;

    const-string v3, "inline_bots"

    invoke-virtual {v1, v2, v3}, Lcom/exteragram/messenger/export/output/json/JsonWriter$1;->run(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 527
    iget-object p1, p1, Lcom/exteragram/messenger/export/api/ApiWrap$ContactsList;->phoneCalls:Ljava/util/ArrayList;

    const-string v2, "calls"

    invoke-virtual {v1, p1, v2}, Lcom/exteragram/messenger/export/output/json/JsonWriter$1;->run(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 528
    iget-object p1, p0, Lcom/exteragram/messenger/export/output/json/JsonWriter;->_contacts:Lcom/exteragram/messenger/export/output/json/JsonContext;

    invoke-direct {p0, p1}, Lcom/exteragram/messenger/export/output/json/JsonWriter;->popNesting(Lcom/exteragram/messenger/export/output/json/JsonContext;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    iget-object p1, p0, Lcom/exteragram/messenger/export/output/json/JsonWriter;->_contacts:Lcom/exteragram/messenger/export/output/json/JsonContext;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/exteragram/messenger/export/output/json/JsonWriter;->_contacts:Lcom/exteragram/messenger/export/output/json/JsonContext;

    invoke-direct {p0, v0}, Lcom/exteragram/messenger/export/output/json/JsonWriter;->popNesting(Lcom/exteragram/messenger/export/output/json/JsonContext;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/exteragram/messenger/export/output/json/JsonContext;->writeBlock(Ljava/lang/String;)Lcom/exteragram/messenger/export/output/AbstractWriter$Result;

    move-result-object p1

    return-object p1
.end method

.method private writeSavedContacts(Lcom/exteragram/messenger/export/api/ApiWrap$ContactsList;)Lcom/exteragram/messenger/export/output/AbstractWriter$Result;
    .locals 17

    move-object/from16 v0, p0

    .line 453
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "contacts"

    iget-object v3, v0, Lcom/exteragram/messenger/export/output/json/JsonWriter;->_contacts:Lcom/exteragram/messenger/export/output/json/JsonContext;

    invoke-direct {v0, v2, v3}, Lcom/exteragram/messenger/export/output/json/JsonWriter;->prepareObjectItemStart(Ljava/lang/String;Lcom/exteragram/messenger/export/output/json/JsonContext;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 454
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v3, v0, Lcom/exteragram/messenger/export/output/json/JsonWriter;->_contacts:Lcom/exteragram/messenger/export/output/json/JsonContext;

    invoke-direct {v0, v2, v3}, Lcom/exteragram/messenger/export/output/json/JsonWriter;->pushNesting(Ljava/lang/Boolean;Lcom/exteragram/messenger/export/output/json/JsonContext;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    const-string v2, "about"

    iget-object v3, v0, Lcom/exteragram/messenger/export/output/json/JsonWriter;->_contacts:Lcom/exteragram/messenger/export/output/json/JsonContext;

    invoke-direct {v0, v2, v3}, Lcom/exteragram/messenger/export/output/json/JsonWriter;->prepareObjectItemStart(Ljava/lang/String;Lcom/exteragram/messenger/export/output/json/JsonContext;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    const-string v2, "_environment.aboutContacts"

    invoke-static {v2}, Lcom/exteragram/messenger/export/output/json/JsonContext;->SerializeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    const-string v2, "list"

    iget-object v3, v0, Lcom/exteragram/messenger/export/output/json/JsonWriter;->_contacts:Lcom/exteragram/messenger/export/output/json/JsonContext;

    invoke-direct {v0, v2, v3}, Lcom/exteragram/messenger/export/output/json/JsonWriter;->prepareObjectItemStart(Ljava/lang/String;Lcom/exteragram/messenger/export/output/json/JsonContext;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v3, v0, Lcom/exteragram/messenger/export/output/json/JsonWriter;->_contacts:Lcom/exteragram/messenger/export/output/json/JsonContext;

    invoke-direct {v0, v2, v3}, Lcom/exteragram/messenger/export/output/json/JsonWriter;->pushNesting(Ljava/lang/Boolean;Lcom/exteragram/messenger/export/output/json/JsonContext;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    invoke-static/range {p1 .. p1}, Lcom/exteragram/messenger/export/api/DataTypesUtils;->SortedContactsIndices(Lcom/exteragram/messenger/export/api/ApiWrap$ContactsList;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_2

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Ljava/lang/Integer;

    move-object/from16 v7, p1

    .line 460
    iget-object v8, v7, Lcom/exteragram/messenger/export/api/ApiWrap$ContactsList;->list:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/exteragram/messenger/export/api/ApiWrap$ContactInfo;

    .line 461
    iget-object v8, v0, Lcom/exteragram/messenger/export/output/json/JsonWriter;->_contacts:Lcom/exteragram/messenger/export/output/json/JsonContext;

    invoke-direct {v0, v8}, Lcom/exteragram/messenger/export/output/json/JsonWriter;->prepareArrayItemStart(Lcom/exteragram/messenger/export/output/json/JsonContext;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    iget-object v8, v6, Lcom/exteragram/messenger/export/api/ApiWrap$ContactInfo;->firstName:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    const/4 v9, 0x1

    const-string v10, "date_unixtime"

    if-eqz v8, :cond_0

    iget-object v8, v6, Lcom/exteragram/messenger/export/api/ApiWrap$ContactInfo;->lastName:Ljava/lang/String;

    .line 464
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, v6, Lcom/exteragram/messenger/export/api/ApiWrap$ContactInfo;->phoneNumber:Ljava/lang/String;

    .line 465
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 466
    iget-object v8, v0, Lcom/exteragram/messenger/export/output/json/JsonWriter;->_contacts:Lcom/exteragram/messenger/export/output/json/JsonContext;

    new-instance v11, Landroid/util/Pair;

    iget v6, v6, Lcom/exteragram/messenger/export/api/ApiWrap$ContactInfo;->date:I

    .line 467
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/exteragram/messenger/export/output/json/JsonContext;->SerializeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v11, v10, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-array v6, v9, [Landroid/util/Pair;

    aput-object v11, v6, v4

    .line 466
    invoke-static {v8, v6}, Lcom/exteragram/messenger/export/output/json/JsonContext;->SerializeObject(Lcom/exteragram/messenger/export/output/json/JsonContext;[Landroid/util/Pair;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v16, v4

    goto :goto_2

    .line 470
    :cond_0
    iget-object v8, v0, Lcom/exteragram/messenger/export/output/json/JsonWriter;->_contacts:Lcom/exteragram/messenger/export/output/json/JsonContext;

    new-instance v11, Landroid/util/Pair;

    .line 471
    iget-object v12, v6, Lcom/exteragram/messenger/export/api/ApiWrap$ContactInfo;->userId:Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-eqz v12, :cond_1

    iget-object v12, v6, Lcom/exteragram/messenger/export/api/ApiWrap$ContactInfo;->userId:Ljava/lang/Long;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto :goto_1

    :cond_1
    const-string v12, ""

    :goto_1
    const-string v13, "user_id"

    invoke-direct {v11, v13, v12}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v12, Landroid/util/Pair;

    iget-object v13, v6, Lcom/exteragram/messenger/export/api/ApiWrap$ContactInfo;->firstName:Ljava/lang/String;

    .line 472
    invoke-static {v13}, Lcom/exteragram/messenger/export/output/json/JsonContext;->SerializeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "first_name"

    invoke-direct {v12, v14, v13}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v13, Landroid/util/Pair;

    iget-object v14, v6, Lcom/exteragram/messenger/export/api/ApiWrap$ContactInfo;->lastName:Ljava/lang/String;

    .line 473
    invoke-static {v14}, Lcom/exteragram/messenger/export/output/json/JsonContext;->SerializeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "last_name"

    invoke-direct {v13, v15, v14}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v14, Landroid/util/Pair;

    .line 474
    invoke-static {}, Lorg/telegram/PhoneFormat/PhoneFormat;->getInstance()Lorg/telegram/PhoneFormat/PhoneFormat;

    move-result-object v15

    move/from16 v16, v4

    iget-object v4, v6, Lcom/exteragram/messenger/export/api/ApiWrap$ContactInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v15, v4}, Lorg/telegram/PhoneFormat/PhoneFormat;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/exteragram/messenger/export/output/json/JsonContext;->SerializeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v15, "phone_number"

    invoke-direct {v14, v15, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v4, Landroid/util/Pair;

    iget v6, v6, Lcom/exteragram/messenger/export/api/ApiWrap$ContactInfo;->date:I

    .line 475
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/exteragram/messenger/export/output/json/JsonContext;->SerializeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v10, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v6, 0x5

    new-array v6, v6, [Landroid/util/Pair;

    aput-object v11, v6, v16

    aput-object v12, v6, v9

    const/4 v9, 0x2

    aput-object v13, v6, v9

    const/4 v9, 0x3

    aput-object v14, v6, v9

    const/4 v9, 0x4

    aput-object v4, v6, v9

    .line 470
    invoke-static {v8, v6}, Lcom/exteragram/messenger/export/output/json/JsonContext;->SerializeObject(Lcom/exteragram/messenger/export/output/json/JsonContext;[Landroid/util/Pair;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    move/from16 v4, v16

    goto/16 :goto_0

    .line 479
    :cond_2
    iget-object v2, v0, Lcom/exteragram/messenger/export/output/json/JsonWriter;->_contacts:Lcom/exteragram/messenger/export/output/json/JsonContext;

    invoke-direct {v0, v2}, Lcom/exteragram/messenger/export/output/json/JsonWriter;->popNesting(Lcom/exteragram/messenger/export/output/json/JsonContext;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    iget-object v2, v0, Lcom/exteragram/messenger/export/output/json/JsonWriter;->_contacts:Lcom/exteragram/messenger/export/output/json/JsonContext;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/exteragram/messenger/export/output/json/JsonWriter;->_contacts:Lcom/exteragram/messenger/export/output/json/JsonContext;

    invoke-direct {v0, v1}, Lcom/exteragram/messenger/export/output/json/JsonWriter;->popNesting(Lcom/exteragram/messenger/export/output/json/JsonContext;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/exteragram/messenger/export/output/json/JsonContext;->writeBlock(Ljava/lang/String;)Lcom/exteragram/messenger/export/output/AbstractWriter$Result;

    move-result-object v1

    return-object v1
.end method

.method private writeSessions(Lcom/exteragram/messenger/export/api/ApiWrap$SessionsList;)Lcom/exteragram/messenger/export/output/AbstractWriter$Result;
    .locals 18

    move-object/from16 v0, p0

    .line 403
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sessions"

    iget-object v3, v0, Lcom/exteragram/messenger/export/output/json/JsonWriter;->_sessions:Lcom/exteragram/messenger/export/output/json/JsonContext;

    invoke-direct {v0, v2, v3}, Lcom/exteragram/messenger/export/output/json/JsonWriter;->prepareObjectItemStart(Ljava/lang/String;Lcom/exteragram/messenger/export/output/json/JsonContext;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 404
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v3, v0, Lcom/exteragram/messenger/export/output/json/JsonWriter;->_sessions:Lcom/exteragram/messenger/export/output/json/JsonContext;

    invoke-direct {v0, v2, v3}, Lcom/exteragram/messenger/export/output/json/JsonWriter;->pushNesting(Ljava/lang/Boolean;Lcom/exteragram/messenger/export/output/json/JsonContext;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    const-string v2, "about"

    iget-object v3, v0, Lcom/exteragram/messenger/export/output/json/JsonWriter;->_sessions:Lcom/exteragram/messenger/export/output/json/JsonContext;

    invoke-direct {v0, v2, v3}, Lcom/exteragram/messenger/export/output/json/JsonWriter;->prepareObjectItemStart(Ljava/lang/String;Lcom/exteragram/messenger/export/output/json/JsonContext;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    const-string v2, "_environment.aboutSessions"

    invoke-static {v2}, Lcom/exteragram/messenger/export/output/json/JsonContext;->SerializeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    const-string v2, "list"

    iget-object v3, v0, Lcom/exteragram/messenger/export/output/json/JsonWriter;->_sessions:Lcom/exteragram/messenger/export/output/json/JsonContext;

    invoke-direct {v0, v2, v3}, Lcom/exteragram/messenger/export/output/json/JsonWriter;->prepareObjectItemStart(Ljava/lang/String;Lcom/exteragram/messenger/export/output/json/JsonContext;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v3, v0, Lcom/exteragram/messenger/export/output/json/JsonWriter;->_sessions:Lcom/exteragram/messenger/export/output/json/JsonContext;

    invoke-direct {v0, v2, v3}, Lcom/exteragram/messenger/export/output/json/JsonWriter;->pushNesting(Ljava/lang/Boolean;Lcom/exteragram/messenger/export/output/json/JsonContext;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p1

    .line 409
    iget-object v2, v2, Lcom/exteragram/messenger/export/api/ApiWrap$SessionsList;->list:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_authorization;

    .line 410
    iget-object v7, v0, Lcom/exteragram/messenger/export/output/json/JsonWriter;->_sessions:Lcom/exteragram/messenger/export/output/json/JsonContext;

    invoke-direct {v0, v7}, Lcom/exteragram/messenger/export/output/json/JsonWriter;->prepareArrayItemStart(Lcom/exteragram/messenger/export/output/json/JsonContext;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    iget-object v7, v0, Lcom/exteragram/messenger/export/output/json/JsonWriter;->_sessions:Lcom/exteragram/messenger/export/output/json/JsonContext;

    new-instance v8, Landroid/util/Pair;

    iget v9, v6, Lorg/telegram/tgnet/TLRPC$TL_authorization;->date_active:I

    .line 412
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/exteragram/messenger/export/output/json/JsonContext;->SerializeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "last_active"

    invoke-direct {v8, v10, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v9, Landroid/util/Pair;

    iget-object v10, v6, Lorg/telegram/tgnet/TLRPC$TL_authorization;->ip:Ljava/lang/String;

    .line 413
    invoke-static {v10}, Lcom/exteragram/messenger/export/output/json/JsonContext;->SerializeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "last_ip"

    invoke-direct {v9, v11, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v10, Landroid/util/Pair;

    iget-object v11, v6, Lorg/telegram/tgnet/TLRPC$TL_authorization;->country:Ljava/lang/String;

    .line 414
    invoke-static {v11}, Lcom/exteragram/messenger/export/output/json/JsonContext;->SerializeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "last_country"

    invoke-direct {v10, v12, v11}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v11, Landroid/util/Pair;

    iget-object v12, v6, Lorg/telegram/tgnet/TLRPC$TL_authorization;->region:Ljava/lang/String;

    .line 415
    invoke-static {v12}, Lcom/exteragram/messenger/export/output/json/JsonContext;->SerializeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "last_region"

    invoke-direct {v11, v13, v12}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v12, Landroid/util/Pair;

    iget-object v13, v6, Lorg/telegram/tgnet/TLRPC$TL_authorization;->app_name:Ljava/lang/String;

    .line 416
    invoke-static {v13}, Lcom/exteragram/messenger/export/output/json/JsonWriter;->StringAllowNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "application_name"

    invoke-direct {v12, v14, v13}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v13, Landroid/util/Pair;

    .line 417
    iget-object v14, v6, Lorg/telegram/tgnet/TLRPC$TL_authorization;->app_version:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_0

    const-string v14, ""

    goto :goto_1

    :cond_0
    iget-object v14, v6, Lorg/telegram/tgnet/TLRPC$TL_authorization;->app_version:Ljava/lang/String;

    invoke-static {v14}, Lcom/exteragram/messenger/export/output/json/JsonContext;->SerializeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    :goto_1
    const-string v15, "application_version"

    invoke-direct {v13, v15, v14}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v14, Landroid/util/Pair;

    iget-object v15, v6, Lorg/telegram/tgnet/TLRPC$TL_authorization;->device_model:Ljava/lang/String;

    .line 418
    invoke-static {v15}, Lcom/exteragram/messenger/export/output/json/JsonContext;->SerializeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const/16 p1, 0x0

    const-string v4, "device_model"

    invoke-direct {v14, v4, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v4, Landroid/util/Pair;

    iget-object v15, v6, Lorg/telegram/tgnet/TLRPC$TL_authorization;->platform:Ljava/lang/String;

    .line 419
    invoke-static {v15}, Lcom/exteragram/messenger/export/output/json/JsonContext;->SerializeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v16, v2

    const-string v2, "platform"

    invoke-direct {v4, v2, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Landroid/util/Pair;

    iget-object v15, v6, Lorg/telegram/tgnet/TLRPC$TL_authorization;->system_version:Ljava/lang/String;

    .line 420
    invoke-static {v15}, Lcom/exteragram/messenger/export/output/json/JsonContext;->SerializeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move/from16 v17, v3

    const-string v3, "system_version"

    invoke-direct {v2, v3, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, Landroid/util/Pair;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$TL_authorization;->date_created:I

    .line 421
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/exteragram/messenger/export/output/json/JsonContext;->SerializeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v15, "created"

    invoke-direct {v3, v15, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v6, 0xa

    new-array v6, v6, [Landroid/util/Pair;

    aput-object v8, v6, p1

    const/4 v8, 0x1

    aput-object v9, v6, v8

    const/4 v8, 0x2

    aput-object v10, v6, v8

    const/4 v8, 0x3

    aput-object v11, v6, v8

    const/4 v8, 0x4

    aput-object v12, v6, v8

    const/4 v8, 0x5

    aput-object v13, v6, v8

    const/4 v8, 0x6

    aput-object v14, v6, v8

    const/4 v8, 0x7

    aput-object v4, v6, v8

    const/16 v4, 0x8

    aput-object v2, v6, v4

    const/16 v2, 0x9

    aput-object v3, v6, v2

    .line 411
    invoke-static {v7, v6}, Lcom/exteragram/messenger/export/output/json/JsonContext;->SerializeObject(Lcom/exteragram/messenger/export/output/json/JsonContext;[Landroid/util/Pair;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v16

    move/from16 v3, v17

    goto/16 :goto_0

    .line 424
    :cond_1
    iget-object v2, v0, Lcom/exteragram/messenger/export/output/json/JsonWriter;->_sessions:Lcom/exteragram/messenger/export/output/json/JsonContext;

    invoke-direct {v0, v2}, Lcom/exteragram/messenger/export/output/json/JsonWriter;->popNesting(Lcom/exteragram/messenger/export/output/json/JsonContext;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    iget-object v2, v0, Lcom/exteragram/messenger/export/output/json/JsonWriter;->_sessions:Lcom/exteragram/messenger/export/output/json/JsonContext;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/exteragram/messenger/export/output/json/JsonWriter;->_sessions:Lcom/exteragram/messenger/export/output/json/JsonContext;

    invoke-direct {v0, v1}, Lcom/exteragram/messenger/export/output/json/JsonWriter;->popNesting(Lcom/exteragram/messenger/export/output/json/JsonContext;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/exteragram/messenger/export/output/json/JsonContext;->writeBlock(Ljava/lang/String;)Lcom/exteragram/messenger/export/output/AbstractWriter$Result;

    move-result-object v1

    return-object v1
.end method

.method private writeWebSessions(Lcom/exteragram/messenger/export/api/ApiWrap$SessionsList;)Lcom/exteragram/messenger/export/output/AbstractWriter$Result;
    .locals 16

    move-object/from16 v0, p0

    .line 429
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "web_sessions"

    iget-object v3, v0, Lcom/exteragram/messenger/export/output/json/JsonWriter;->_sessions:Lcom/exteragram/messenger/export/output/json/JsonContext;

    invoke-direct {v0, v2, v3}, Lcom/exteragram/messenger/export/output/json/JsonWriter;->prepareObjectItemStart(Ljava/lang/String;Lcom/exteragram/messenger/export/output/json/JsonContext;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 430
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v3, v0, Lcom/exteragram/messenger/export/output/json/JsonWriter;->_sessions:Lcom/exteragram/messenger/export/output/json/JsonContext;

    invoke-direct {v0, v2, v3}, Lcom/exteragram/messenger/export/output/json/JsonWriter;->pushNesting(Ljava/lang/Boolean;Lcom/exteragram/messenger/export/output/json/JsonContext;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    const-string v2, "about"

    iget-object v3, v0, Lcom/exteragram/messenger/export/output/json/JsonWriter;->_sessions:Lcom/exteragram/messenger/export/output/json/JsonContext;

    invoke-direct {v0, v2, v3}, Lcom/exteragram/messenger/export/output/json/JsonWriter;->prepareObjectItemStart(Ljava/lang/String;Lcom/exteragram/messenger/export/output/json/JsonContext;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    const-string v2, "_environment.aboutWebSessions"

    invoke-static {v2}, Lcom/exteragram/messenger/export/output/json/JsonContext;->SerializeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    const-string v2, "list"

    iget-object v3, v0, Lcom/exteragram/messenger/export/output/json/JsonWriter;->_sessions:Lcom/exteragram/messenger/export/output/json/JsonContext;

    invoke-direct {v0, v2, v3}, Lcom/exteragram/messenger/export/output/json/JsonWriter;->prepareObjectItemStart(Ljava/lang/String;Lcom/exteragram/messenger/export/output/json/JsonContext;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v3, v0, Lcom/exteragram/messenger/export/output/json/JsonWriter;->_sessions:Lcom/exteragram/messenger/export/output/json/JsonContext;

    invoke-direct {v0, v2, v3}, Lcom/exteragram/messenger/export/output/json/JsonWriter;->pushNesting(Ljava/lang/Boolean;Lcom/exteragram/messenger/export/output/json/JsonContext;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p1

    .line 435
    iget-object v2, v2, Lcom/exteragram/messenger/export/api/ApiWrap$SessionsList;->webList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_0

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Lcom/exteragram/messenger/export/api/ApiWrap$WebSession;

    .line 436
    iget-object v7, v0, Lcom/exteragram/messenger/export/output/json/JsonWriter;->_sessions:Lcom/exteragram/messenger/export/output/json/JsonContext;

    invoke-direct {v0, v7}, Lcom/exteragram/messenger/export/output/json/JsonWriter;->prepareArrayItemStart(Lcom/exteragram/messenger/export/output/json/JsonContext;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    iget-object v7, v0, Lcom/exteragram/messenger/export/output/json/JsonWriter;->_sessions:Lcom/exteragram/messenger/export/output/json/JsonContext;

    new-instance v8, Landroid/util/Pair;

    .line 438
    invoke-virtual {v6}, Lcom/exteragram/messenger/export/api/ApiWrap$WebSession;->lastActive()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/exteragram/messenger/export/output/json/JsonContext;->SerializeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "last_active_unixtime"

    invoke-direct {v8, v10, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v9, Landroid/util/Pair;

    .line 439
    invoke-virtual {v6}, Lcom/exteragram/messenger/export/api/ApiWrap$WebSession;->ip()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/exteragram/messenger/export/output/json/JsonContext;->SerializeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "last_ip"

    invoke-direct {v9, v11, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v10, Landroid/util/Pair;

    .line 440
    invoke-virtual {v6}, Lcom/exteragram/messenger/export/api/ApiWrap$WebSession;->region()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/exteragram/messenger/export/output/json/JsonContext;->SerializeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "last_region"

    invoke-direct {v10, v12, v11}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v11, Landroid/util/Pair;

    .line 441
    invoke-virtual {v6}, Lcom/exteragram/messenger/export/api/ApiWrap$WebSession;->botUsername()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/exteragram/messenger/export/output/json/JsonWriter;->StringAllowNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "bot_username"

    invoke-direct {v11, v13, v12}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v12, Landroid/util/Pair;

    .line 442
    invoke-virtual {v6}, Lcom/exteragram/messenger/export/api/ApiWrap$WebSession;->domain()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/exteragram/messenger/export/output/json/JsonWriter;->StringAllowNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "domain_name"

    invoke-direct {v12, v14, v13}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v13, Landroid/util/Pair;

    .line 443
    invoke-virtual {v6}, Lcom/exteragram/messenger/export/api/ApiWrap$WebSession;->browser()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/exteragram/messenger/export/output/json/JsonContext;->SerializeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "browser"

    invoke-direct {v13, v15, v14}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v14, Landroid/util/Pair;

    .line 444
    invoke-virtual {v6}, Lcom/exteragram/messenger/export/api/ApiWrap$WebSession;->platform()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/exteragram/messenger/export/output/json/JsonContext;->SerializeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const/16 p1, 0x0

    const-string v4, "platform"

    invoke-direct {v14, v4, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v4, Landroid/util/Pair;

    .line 445
    invoke-virtual {v6}, Lcom/exteragram/messenger/export/api/ApiWrap$WebSession;->created()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/exteragram/messenger/export/output/json/JsonContext;->SerializeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v15, "created_unixtime"

    invoke-direct {v4, v15, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v6, 0x8

    new-array v6, v6, [Landroid/util/Pair;

    aput-object v8, v6, p1

    const/4 v8, 0x1

    aput-object v9, v6, v8

    const/4 v8, 0x2

    aput-object v10, v6, v8

    const/4 v8, 0x3

    aput-object v11, v6, v8

    const/4 v8, 0x4

    aput-object v12, v6, v8

    const/4 v8, 0x5

    aput-object v13, v6, v8

    const/4 v8, 0x6

    aput-object v14, v6, v8

    const/4 v8, 0x7

    aput-object v4, v6, v8

    .line 437
    invoke-static {v7, v6}, Lcom/exteragram/messenger/export/output/json/JsonContext;->SerializeObject(Lcom/exteragram/messenger/export/output/json/JsonContext;[Landroid/util/Pair;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 448
    :cond_0
    iget-object v2, v0, Lcom/exteragram/messenger/export/output/json/JsonWriter;->_sessions:Lcom/exteragram/messenger/export/output/json/JsonContext;

    invoke-direct {v0, v2}, Lcom/exteragram/messenger/export/output/json/JsonWriter;->popNesting(Lcom/exteragram/messenger/export/output/json/JsonContext;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    iget-object v2, v0, Lcom/exteragram/messenger/export/output/json/JsonWriter;->_sessions:Lcom/exteragram/messenger/export/output/json/JsonContext;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/exteragram/messenger/export/output/json/JsonWriter;->_sessions:Lcom/exteragram/messenger/export/output/json/JsonContext;

    invoke-direct {v0, v1}, Lcom/exteragram/messenger/export/output/json/JsonWriter;->popNesting(Lcom/exteragram/messenger/export/output/json/JsonContext;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/exteragram/messenger/export/output/json/JsonContext;->writeBlock(Ljava/lang/String;)Lcom/exteragram/messenger/export/output/AbstractWriter$Result;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public finish()Lcom/exteragram/messenger/export/output/AbstractWriter$Result;
    .locals 2

    .line 542
    iget-object v0, p0, Lcom/exteragram/messenger/export/output/json/JsonWriter;->_settings:Lcom/exteragram/messenger/export/ExportSettings;

    invoke-virtual {v0}, Lcom/exteragram/messenger/export/ExportSettings;->onlySinglePeer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 543
    invoke-static {}, Lcom/exteragram/messenger/export/output/AbstractWriter$Result;->Success()Lcom/exteragram/messenger/export/output/AbstractWriter$Result;

    move-result-object v0

    return-object v0

    .line 546
    :cond_0
    iget-object v0, p0, Lcom/exteragram/messenger/export/output/json/JsonWriter;->_summary:Lcom/exteragram/messenger/export/output/json/JsonContext;

    invoke-direct {p0, v0}, Lcom/exteragram/messenger/export/output/json/JsonWriter;->popNesting(Lcom/exteragram/messenger/export/output/json/JsonContext;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/exteragram/messenger/export/output/json/JsonContext;->writeBlock(Ljava/lang/String;)Lcom/exteragram/messenger/export/output/AbstractWriter$Result;

    move-result-object v0

    return-object v0
.end method

.method public mainFilePath()Ljava/lang/String;
    .locals 2

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/exteragram/messenger/export/output/json/JsonWriter;->_settings:Lcom/exteragram/messenger/export/ExportSettings;

    iget-object v1, v1, Lcom/exteragram/messenger/export/ExportSettings;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/result.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public start(Lcom/exteragram/messenger/export/ExportSettings;Lcom/exteragram/messenger/export/output/OutputFile$Stats;)Lcom/exteragram/messenger/export/output/AbstractWriter$Result;
    .locals 1

    .line 85
    iput-object p1, p0, Lcom/exteragram/messenger/export/output/json/JsonWriter;->_settings:Lcom/exteragram/messenger/export/ExportSettings;

    .line 86
    iput-object p2, p0, Lcom/exteragram/messenger/export/output/json/JsonWriter;->_stats:Lcom/exteragram/messenger/export/output/OutputFile$Stats;

    .line 88
    new-instance p1, Lcom/exteragram/messenger/export/output/json/JsonContext;

    const-string p2, "result.json"

    invoke-direct {p0, p2}, Lcom/exteragram/messenger/export/output/json/JsonWriter;->fileWithRelativePath(Ljava/lang/String;)Lcom/exteragram/messenger/export/output/OutputFile;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/exteragram/messenger/export/output/json/JsonContext;-><init>(Lcom/exteragram/messenger/export/output/OutputFile;)V

    iput-object p1, p0, Lcom/exteragram/messenger/export/output/json/JsonWriter;->_summary:Lcom/exteragram/messenger/export/output/json/JsonContext;

    .line 89
    new-instance p1, Lcom/exteragram/messenger/export/output/json/JsonContext;

    const-string p2, "contacts.json"

    invoke-direct {p0, p2}, Lcom/exteragram/messenger/export/output/json/JsonWriter;->fileWithRelativePath(Ljava/lang/String;)Lcom/exteragram/messenger/export/output/OutputFile;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/exteragram/messenger/export/output/json/JsonContext;-><init>(Lcom/exteragram/messenger/export/output/OutputFile;)V

    iput-object p1, p0, Lcom/exteragram/messenger/export/output/json/JsonWriter;->_contacts:Lcom/exteragram/messenger/export/output/json/JsonContext;

    .line 90
    new-instance p1, Lcom/exteragram/messenger/export/output/json/JsonContext;

    const-string p2, "stories.json"

    invoke-direct {p0, p2}, Lcom/exteragram/messenger/export/output/json/JsonWriter;->fileWithRelativePath(Ljava/lang/String;)Lcom/exteragram/messenger/export/output/OutputFile;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/exteragram/messenger/export/output/json/JsonContext;-><init>(Lcom/exteragram/messenger/export/output/OutputFile;)V

    iput-object p1, p0, Lcom/exteragram/messenger/export/output/json/JsonWriter;->_stories:Lcom/exteragram/messenger/export/output/json/JsonContext;

    .line 92
    iget-object p1, p0, Lcom/exteragram/messenger/export/output/json/JsonWriter;->_settings:Lcom/exteragram/messenger/export/ExportSettings;

    invoke-virtual {p1}, Lcom/exteragram/messenger/export/ExportSettings;->onlySinglePeer()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 93
    invoke-static {}, Lcom/exteragram/messenger/export/output/AbstractWriter$Result;->Success()Lcom/exteragram/messenger/export/output/AbstractWriter$Result;

    move-result-object p1

    return-object p1

    .line 95
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/exteragram/messenger/export/output/json/JsonWriter;->_summary:Lcom/exteragram/messenger/export/output/json/JsonContext;

    invoke-direct {p0, p2, v0}, Lcom/exteragram/messenger/export/output/json/JsonWriter;->pushNesting(Ljava/lang/Boolean;Lcom/exteragram/messenger/export/output/json/JsonContext;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "about"

    iget-object v0, p0, Lcom/exteragram/messenger/export/output/json/JsonWriter;->_summary:Lcom/exteragram/messenger/export/output/json/JsonContext;

    invoke-direct {p0, p2, v0}, Lcom/exteragram/messenger/export/output/json/JsonWriter;->prepareObjectItemStart(Ljava/lang/String;Lcom/exteragram/messenger/export/output/json/JsonContext;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "Here is the data you requested. Remember: Telegram is ad free, it doesn\'t use your data for ad targeting and doesn\'t sell it to others. Telegram only keeps the information it needs to function as a secure and feature-rich cloud service.\\n\\nCheck out Settings > Privacy & Security on Telegram\'s mobile apps for the relevant settings."

    .line 96
    invoke-static {p2}, Lcom/exteragram/messenger/export/output/json/JsonContext;->SerializeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 97
    iget-object p2, p0, Lcom/exteragram/messenger/export/output/json/JsonWriter;->_summary:Lcom/exteragram/messenger/export/output/json/JsonContext;

    invoke-virtual {p2, p1}, Lcom/exteragram/messenger/export/output/json/JsonContext;->writeBlock(Ljava/lang/String;)Lcom/exteragram/messenger/export/output/AbstractWriter$Result;

    move-result-object p1

    return-object p1
.end method

.method public validateDialogsMode(Z)Lcom/exteragram/messenger/export/output/AbstractWriter$Result;
    .locals 3

    if-eqz p1, :cond_0

    .line 597
    sget-object v0, Lcom/exteragram/messenger/export/output/html/HtmlWriter$DialogsMode;->Left:Lcom/exteragram/messenger/export/output/html/HtmlWriter$DialogsMode;

    goto :goto_0

    .line 598
    :cond_0
    sget-object v0, Lcom/exteragram/messenger/export/output/html/HtmlWriter$DialogsMode;->Chats:Lcom/exteragram/messenger/export/output/html/HtmlWriter$DialogsMode;

    .line 599
    :goto_0
    iget-object v1, p0, Lcom/exteragram/messenger/export/output/json/JsonWriter;->_dialogsMode:Lcom/exteragram/messenger/export/output/html/HtmlWriter$DialogsMode;

    if-ne v1, v0, :cond_1

    .line 600
    invoke-static {}, Lcom/exteragram/messenger/export/output/AbstractWriter$Result;->Success()Lcom/exteragram/messenger/export/output/AbstractWriter$Result;

    move-result-object p1

    return-object p1

    .line 601
    :cond_1
    sget-object v2, Lcom/exteragram/messenger/export/output/html/HtmlWriter$DialogsMode;->None:Lcom/exteragram/messenger/export/output/html/HtmlWriter$DialogsMode;

    if-eq v1, v2, :cond_2

    .line 602
    invoke-direct {p0}, Lcom/exteragram/messenger/export/output/json/JsonWriter;->writeChatsEnd()Lcom/exteragram/messenger/export/output/AbstractWriter$Result;

    move-result-object v1

    .line 603
    invoke-virtual {v1}, Lcom/exteragram/messenger/export/output/AbstractWriter$Result;->isSuccess()Z

    move-result v2

    if-nez v2, :cond_2

    return-object v1

    .line 607
    :cond_2
    iput-object v0, p0, Lcom/exteragram/messenger/export/output/json/JsonWriter;->_dialogsMode:Lcom/exteragram/messenger/export/output/html/HtmlWriter$DialogsMode;

    if-eqz p1, :cond_3

    .line 609
    const-string v0, "left_chats"

    goto :goto_1

    :cond_3
    const-string v0, "chats"

    :goto_1
    if-eqz p1, :cond_4

    .line 611
    const-string p1, "Below are the supergroups and channels from this export that you\'ve left or where you were banned.\\n\\nNote that when you leave a channel or supergroup you\'ve created, you have the option to either delete it, or simply leave (in case you want to rejoin later, or keep the community alive despite not being a member)."

    goto :goto_2

    .line 612
    :cond_4
    const-string p1, "This page lists all chats from this export."

    .line 608
    :goto_2
    invoke-direct {p0, v0, p1}, Lcom/exteragram/messenger/export/output/json/JsonWriter;->writeChatsStart(Ljava/lang/String;Ljava/lang/String;)Lcom/exteragram/messenger/export/output/AbstractWriter$Result;

    move-result-object p1

    return-object p1
.end method

.method public writeContactsList(Lcom/exteragram/messenger/export/api/ApiWrap$ContactsList;)Lcom/exteragram/messenger/export/output/AbstractWriter$Result;
    .locals 2

    .line 374
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/export/output/json/JsonWriter;->writeSavedContacts(Lcom/exteragram/messenger/export/api/ApiWrap$ContactsList;)Lcom/exteragram/messenger/export/output/AbstractWriter$Result;

    move-result-object v0

    .line 375
    invoke-virtual {v0}, Lcom/exteragram/messenger/export/output/AbstractWriter$Result;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 378
    :cond_0
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/export/output/json/JsonWriter;->writeFrequentContacts(Lcom/exteragram/messenger/export/api/ApiWrap$ContactsList;)Lcom/exteragram/messenger/export/output/AbstractWriter$Result;

    move-result-object p1

    .line 379
    invoke-virtual {p1}, Lcom/exteragram/messenger/export/output/AbstractWriter$Result;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_1

    return-object p1

    .line 383
    :cond_1
    invoke-static {}, Lcom/exteragram/messenger/export/output/AbstractWriter$Result;->Success()Lcom/exteragram/messenger/export/output/AbstractWriter$Result;

    move-result-object p1

    return-object p1
.end method

.method public writeDialogEnd()Lcom/exteragram/messenger/export/output/AbstractWriter$Result;
    .locals 4

    .line 264
    iget-object v0, p0, Lcom/exteragram/messenger/export/output/json/JsonWriter;->_chatSummary:Lcom/exteragram/messenger/export/output/json/JsonContext;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "msgsCount"

    iget-object v3, p0, Lcom/exteragram/messenger/export/output/json/JsonWriter;->_chatSummary:Lcom/exteragram/messenger/export/output/json/JsonContext;

    invoke-direct {p0, v2, v3}, Lcom/exteragram/messenger/export/output/json/JsonWriter;->prepareObjectItemStart(Ljava/lang/String;Lcom/exteragram/messenger/export/output/json/JsonContext;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/exteragram/messenger/export/output/json/JsonWriter;->_messagesCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/exteragram/messenger/export/output/json/JsonContext;->writeBlock(Ljava/lang/String;)Lcom/exteragram/messenger/export/output/AbstractWriter$Result;

    .line 266
    iget-object v0, p0, Lcom/exteragram/messenger/export/output/json/JsonWriter;->_chatSummary:Lcom/exteragram/messenger/export/output/json/JsonContext;

    iget-object v1, p0, Lcom/exteragram/messenger/export/output/json/JsonWriter;->_chatSummary:Lcom/exteragram/messenger/export/output/json/JsonContext;

    invoke-direct {p0, v1}, Lcom/exteragram/messenger/export/output/json/JsonWriter;->popNesting(Lcom/exteragram/messenger/export/output/json/JsonContext;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/exteragram/messenger/export/output/json/JsonContext;->writeBlock(Ljava/lang/String;)Lcom/exteragram/messenger/export/output/AbstractWriter$Result;

    move-result-object v0

    return-object v0
.end method

.method public writeDialogSlice(Lcom/exteragram/messenger/export/api/ApiWrap$MessagesSlice;)Lcom/exteragram/messenger/export/output/AbstractWriter$Result;
    .locals 6

    .line 230
    iget v0, p0, Lcom/exteragram/messenger/export/output/json/JsonWriter;->_messagesCount:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    add-int/lit8 v2, v0, -0x1

    div-int/lit8 v2, v2, 0x64

    goto :goto_0

    :cond_0
    move v2, v1

    .line 231
    :goto_0
    div-int/lit8 v0, v0, 0x64

    .line 232
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "switching to next chat file! old index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", new index: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "exteraGram"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    invoke-direct {p0, v0}, Lcom/exteragram/messenger/export/output/json/JsonWriter;->switchToNextChatFile(I)Lcom/exteragram/messenger/export/output/AbstractWriter$Result;

    .line 235
    iget-object v0, p0, Lcom/exteragram/messenger/export/output/json/JsonWriter;->_chat:Lcom/exteragram/messenger/export/output/json/JsonContext;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v3, p0, Lcom/exteragram/messenger/export/output/json/JsonWriter;->_chat:Lcom/exteragram/messenger/export/output/json/JsonContext;

    invoke-direct {p0, v2, v3}, Lcom/exteragram/messenger/export/output/json/JsonWriter;->pushNesting(Ljava/lang/Boolean;Lcom/exteragram/messenger/export/output/json/JsonContext;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/exteragram/messenger/export/output/json/JsonContext;->writeBlock(Ljava/lang/String;)Lcom/exteragram/messenger/export/output/AbstractWriter$Result;

    .line 242
    :goto_1
    iget-object v0, p1, Lcom/exteragram/messenger/export/api/ApiWrap$MessagesSlice;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 243
    iget-object v0, p1, Lcom/exteragram/messenger/export/api/ApiWrap$MessagesSlice;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/exteragram/messenger/export/api/ApiWrap$Message;

    .line 245
    iget-object v2, p0, Lcom/exteragram/messenger/export/output/json/JsonWriter;->_settings:Lcom/exteragram/messenger/export/ExportSettings;

    invoke-static {v0, v2}, Lcom/exteragram/messenger/export/api/DataTypesUtils;->SkipMessageByDate(Lcom/exteragram/messenger/export/api/ApiWrap$Message;Lcom/exteragram/messenger/export/ExportSettings;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_2

    .line 249
    :cond_1
    iget-object v2, p0, Lcom/exteragram/messenger/export/output/json/JsonWriter;->_chat:Lcom/exteragram/messenger/export/output/json/JsonContext;

    iget-object v3, p0, Lcom/exteragram/messenger/export/output/json/JsonWriter;->_chat:Lcom/exteragram/messenger/export/output/json/JsonContext;

    iget-object v4, p1, Lcom/exteragram/messenger/export/api/ApiWrap$MessagesSlice;->peers:Ljava/util/HashMap;

    const-string v5, "https://t.me/"

    invoke-static {v3, v0, v4, v5}, Lcom/exteragram/messenger/export/output/json/JsonContext;->SerializeMessage(Lcom/exteragram/messenger/export/output/json/JsonContext;Lcom/exteragram/messenger/export/api/ApiWrap$Message;Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/exteragram/messenger/export/output/json/JsonContext;->writeBlock(Ljava/lang/String;)Lcom/exteragram/messenger/export/output/AbstractWriter$Result;

    .line 251
    iget-object v0, p1, Lcom/exteragram/messenger/export/api/ApiWrap$MessagesSlice;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    if-eq v1, v0, :cond_2

    .line 252
    iget-object v0, p0, Lcom/exteragram/messenger/export/output/json/JsonWriter;->_chat:Lcom/exteragram/messenger/export/output/json/JsonContext;

    iput-boolean v2, v0, Lcom/exteragram/messenger/export/output/json/JsonContext;->_currentNestingHadItem:Z

    .line 253
    iget-object v0, p0, Lcom/exteragram/messenger/export/output/json/JsonWriter;->_chat:Lcom/exteragram/messenger/export/output/json/JsonContext;

    iget-object v3, p0, Lcom/exteragram/messenger/export/output/json/JsonWriter;->_chat:Lcom/exteragram/messenger/export/output/json/JsonContext;

    invoke-direct {p0, v3}, Lcom/exteragram/messenger/export/output/json/JsonWriter;->prepareArrayItemStart(Lcom/exteragram/messenger/export/output/json/JsonContext;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/exteragram/messenger/export/output/json/JsonContext;->writeBlock(Ljava/lang/String;)Lcom/exteragram/messenger/export/output/AbstractWriter$Result;

    .line 255
    :cond_2
    iget v0, p0, Lcom/exteragram/messenger/export/output/json/JsonWriter;->_messagesCount:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/exteragram/messenger/export/output/json/JsonWriter;->_messagesCount:I

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 257
    :cond_3
    iget-object p1, p0, Lcom/exteragram/messenger/export/output/json/JsonWriter;->_chat:Lcom/exteragram/messenger/export/output/json/JsonContext;

    iget-object v0, p0, Lcom/exteragram/messenger/export/output/json/JsonWriter;->_chat:Lcom/exteragram/messenger/export/output/json/JsonContext;

    invoke-direct {p0, v0}, Lcom/exteragram/messenger/export/output/json/JsonWriter;->popNesting(Lcom/exteragram/messenger/export/output/json/JsonContext;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/exteragram/messenger/export/output/json/JsonContext;->writeBlock(Ljava/lang/String;)Lcom/exteragram/messenger/export/output/AbstractWriter$Result;

    .line 259
    invoke-static {}, Lcom/exteragram/messenger/export/output/AbstractWriter$Result;->Success()Lcom/exteragram/messenger/export/output/AbstractWriter$Result;

    move-result-object p1

    return-object p1
.end method

.method public writeDialogStart(Lcom/exteragram/messenger/export/api/ApiWrap$DialogInfo;)Lcom/exteragram/messenger/export/output/AbstractWriter$Result;
    .locals 5

    .line 155
    new-instance v0, Lcom/exteragram/messenger/export/output/json/JsonContext;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/exteragram/messenger/export/api/ApiWrap$DialogInfo;->relativePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "info.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/exteragram/messenger/export/output/json/JsonWriter;->fileWithRelativePath(Ljava/lang/String;)Lcom/exteragram/messenger/export/output/OutputFile;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/exteragram/messenger/export/output/json/JsonContext;-><init>(Lcom/exteragram/messenger/export/output/OutputFile;)V

    iput-object v0, p0, Lcom/exteragram/messenger/export/output/json/JsonWriter;->_chatSummary:Lcom/exteragram/messenger/export/output/json/JsonContext;

    .line 156
    new-instance v0, Lcom/exteragram/messenger/export/output/json/JsonContext;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/exteragram/messenger/export/api/ApiWrap$DialogInfo;->relativePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/exteragram/messenger/export/output/json/JsonWriter;->messagesFile(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/exteragram/messenger/export/output/json/JsonWriter;->fileWithRelativePath(Ljava/lang/String;)Lcom/exteragram/messenger/export/output/OutputFile;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/exteragram/messenger/export/output/json/JsonContext;-><init>(Lcom/exteragram/messenger/export/output/OutputFile;)V

    iput-object v0, p0, Lcom/exteragram/messenger/export/output/json/JsonWriter;->_chat:Lcom/exteragram/messenger/export/output/json/JsonContext;

    .line 158
    iget-object v0, p0, Lcom/exteragram/messenger/export/output/json/JsonWriter;->_summary:Lcom/exteragram/messenger/export/output/json/JsonContext;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "msgsCount"

    iget-object v4, p0, Lcom/exteragram/messenger/export/output/json/JsonWriter;->_summary:Lcom/exteragram/messenger/export/output/json/JsonContext;

    invoke-direct {p0, v3, v4}, Lcom/exteragram/messenger/export/output/json/JsonWriter;->prepareObjectItemStart(Ljava/lang/String;Lcom/exteragram/messenger/export/output/json/JsonContext;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/exteragram/messenger/export/api/ApiWrap$DialogInfo;->messagesCountPerSplit:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/exteragram/messenger/export/output/json/JsonContext;->writeBlock(Ljava/lang/String;)Lcom/exteragram/messenger/export/output/AbstractWriter$Result;

    .line 159
    iput v2, p0, Lcom/exteragram/messenger/export/output/json/JsonWriter;->_messagesCount:I

    .line 161
    iput-object p1, p0, Lcom/exteragram/messenger/export/output/json/JsonWriter;->_dialog:Lcom/exteragram/messenger/export/api/ApiWrap$DialogInfo;

    .line 162
    iget-object v0, p0, Lcom/exteragram/messenger/export/output/json/JsonWriter;->_settings:Lcom/exteragram/messenger/export/ExportSettings;

    invoke-virtual {v0}, Lcom/exteragram/messenger/export/ExportSettings;->onlySinglePeer()Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    iget-boolean v0, p1, Lcom/exteragram/messenger/export/api/ApiWrap$DialogInfo;->isLeftChannel:Z

    invoke-virtual {p0, v0}, Lcom/exteragram/messenger/export/output/json/JsonWriter;->validateDialogsMode(Z)Lcom/exteragram/messenger/export/output/AbstractWriter$Result;

    move-result-object v0

    .line 164
    invoke-virtual {v0}, Lcom/exteragram/messenger/export/output/AbstractWriter$Result;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 170
    :cond_0
    sget-object v0, Lcom/exteragram/messenger/export/output/json/JsonWriter$2;->$SwitchMap$com$exteragram$messenger$export$api$ApiWrap$DialogInfo$Type:[I

    iget-object v1, p1, Lcom/exteragram/messenger/export/api/ApiWrap$DialogInfo;->type:Lcom/exteragram/messenger/export/api/ApiWrap$DialogInfo$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-string v1, ""

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move-object v0, v1

    goto :goto_0

    .line 203
    :pswitch_1
    const-string v0, "public_channel"

    goto :goto_0

    .line 200
    :pswitch_2
    const-string v0, "private_channel"

    goto :goto_0

    .line 197
    :pswitch_3
    const-string v0, "public_supergroup"

    goto :goto_0

    .line 194
    :pswitch_4
    const-string v0, "private_supergroup"

    goto :goto_0

    .line 191
    :pswitch_5
    const-string v0, "private_group"

    goto :goto_0

    .line 188
    :pswitch_6
    const-string v0, "bot_chat"

    goto :goto_0

    .line 185
    :pswitch_7
    const-string v0, "personal_chat"

    goto :goto_0

    .line 182
    :pswitch_8
    const-string v0, "verification_codes"

    goto :goto_0

    .line 179
    :pswitch_9
    const-string v0, "replies"

    goto :goto_0

    .line 176
    :pswitch_a
    const-string v0, "saved_messages"

    .line 208
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/exteragram/messenger/export/output/json/JsonWriter;->_settings:Lcom/exteragram/messenger/export/ExportSettings;

    invoke-virtual {v3}, Lcom/exteragram/messenger/export/ExportSettings;->onlySinglePeer()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 210
    :cond_1
    iget-object v1, p0, Lcom/exteragram/messenger/export/output/json/JsonWriter;->_chatSummary:Lcom/exteragram/messenger/export/output/json/JsonContext;

    invoke-direct {p0, v1}, Lcom/exteragram/messenger/export/output/json/JsonWriter;->prepareArrayItemStart(Lcom/exteragram/messenger/export/output/json/JsonContext;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 212
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v3, p0, Lcom/exteragram/messenger/export/output/json/JsonWriter;->_chatSummary:Lcom/exteragram/messenger/export/output/json/JsonContext;

    invoke-direct {p0, v1, v3}, Lcom/exteragram/messenger/export/output/json/JsonWriter;->pushNesting(Ljava/lang/Boolean;Lcom/exteragram/messenger/export/output/json/JsonContext;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    iget-object v1, p1, Lcom/exteragram/messenger/export/api/ApiWrap$DialogInfo;->type:Lcom/exteragram/messenger/export/api/ApiWrap$DialogInfo$Type;

    sget-object v3, Lcom/exteragram/messenger/export/api/ApiWrap$DialogInfo$Type;->Self:Lcom/exteragram/messenger/export/api/ApiWrap$DialogInfo$Type;

    if-eq v1, v3, :cond_2

    sget-object v3, Lcom/exteragram/messenger/export/api/ApiWrap$DialogInfo$Type;->Replies:Lcom/exteragram/messenger/export/api/ApiWrap$DialogInfo$Type;

    if-eq v1, v3, :cond_2

    sget-object v3, Lcom/exteragram/messenger/export/api/ApiWrap$DialogInfo$Type;->VerifyCodes:Lcom/exteragram/messenger/export/api/ApiWrap$DialogInfo$Type;

    if-eq v1, v3, :cond_2

    .line 217
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "name"

    iget-object v4, p0, Lcom/exteragram/messenger/export/output/json/JsonWriter;->_chatSummary:Lcom/exteragram/messenger/export/output/json/JsonContext;

    invoke-direct {p0, v3, v4}, Lcom/exteragram/messenger/export/output/json/JsonWriter;->prepareObjectItemStart(Ljava/lang/String;Lcom/exteragram/messenger/export/output/json/JsonContext;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/exteragram/messenger/export/api/ApiWrap$DialogInfo;->name:Ljava/lang/String;

    .line 218
    invoke-static {v3}, Lcom/exteragram/messenger/export/output/json/JsonWriter;->StringAllowNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 217
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "type"

    iget-object v4, p0, Lcom/exteragram/messenger/export/output/json/JsonWriter;->_chatSummary:Lcom/exteragram/messenger/export/output/json/JsonContext;

    invoke-direct {p0, v3, v4}, Lcom/exteragram/messenger/export/output/json/JsonWriter;->prepareObjectItemStart(Ljava/lang/String;Lcom/exteragram/messenger/export/output/json/JsonContext;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/exteragram/messenger/export/output/json/JsonWriter;->StringAllowNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id"

    iget-object v3, p0, Lcom/exteragram/messenger/export/output/json/JsonWriter;->_chatSummary:Lcom/exteragram/messenger/export/output/json/JsonContext;

    invoke-direct {p0, v1, v3}, Lcom/exteragram/messenger/export/output/json/JsonWriter;->prepareObjectItemStart(Ljava/lang/String;Lcom/exteragram/messenger/export/output/json/JsonContext;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p1, Lcom/exteragram/messenger/export/api/ApiWrap$DialogInfo;->peerId:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    iget-object p1, p0, Lcom/exteragram/messenger/export/output/json/JsonWriter;->_chatSummary:Lcom/exteragram/messenger/export/output/json/JsonContext;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/exteragram/messenger/export/output/json/JsonContext;->writeBlock(Ljava/lang/String;)Lcom/exteragram/messenger/export/output/AbstractWriter$Result;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public writeDialogsEnd()Lcom/exteragram/messenger/export/output/AbstractWriter$Result;
    .locals 1

    .line 273
    invoke-static {}, Lcom/exteragram/messenger/export/output/AbstractWriter$Result;->Success()Lcom/exteragram/messenger/export/output/AbstractWriter$Result;

    move-result-object v0

    return-object v0
.end method

.method public writeDialogsStart(Lcom/exteragram/messenger/export/api/ApiWrap$DialogsInfo;)Lcom/exteragram/messenger/export/output/AbstractWriter$Result;
    .locals 9

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/exteragram/messenger/export/output/json/JsonWriter;->_summary:Lcom/exteragram/messenger/export/output/json/JsonContext;

    invoke-direct {p0, v1}, Lcom/exteragram/messenger/export/output/json/JsonWriter;->prepareArrayItemStart(Lcom/exteragram/messenger/export/output/json/JsonContext;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 126
    iget-object v1, p0, Lcom/exteragram/messenger/export/output/json/JsonWriter;->_summary:Lcom/exteragram/messenger/export/output/json/JsonContext;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/exteragram/messenger/export/output/json/JsonContext;->_currentNestingHadItem:Z

    .line 127
    const-string v3, "chats"

    invoke-direct {p0, v3, v1}, Lcom/exteragram/messenger/export/output/json/JsonWriter;->prepareObjectItemStart(Ljava/lang/String;Lcom/exteragram/messenger/export/output/json/JsonContext;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v3, p0, Lcom/exteragram/messenger/export/output/json/JsonWriter;->_summary:Lcom/exteragram/messenger/export/output/json/JsonContext;

    invoke-direct {p0, v1, v3}, Lcom/exteragram/messenger/export/output/json/JsonWriter;->pushNesting(Ljava/lang/Boolean;Lcom/exteragram/messenger/export/output/json/JsonContext;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    iget-object v1, p1, Lcom/exteragram/messenger/export/api/ApiWrap$DialogsInfo;->chats:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    move v6, v2

    move v5, v4

    :goto_0
    const-string v7, ",\n"

    if-ge v6, v3, :cond_1

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v6, v6, 0x1

    check-cast v8, Lcom/exteragram/messenger/export/api/ApiWrap$DialogInfo;

    if-nez v5, :cond_0

    .line 133
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    move v5, v2

    .line 137
    :goto_1
    iget-object v7, p0, Lcom/exteragram/messenger/export/output/json/JsonWriter;->_summary:Lcom/exteragram/messenger/export/output/json/JsonContext;

    invoke-virtual {v7, v8, v2}, Lcom/exteragram/messenger/export/output/json/JsonContext;->SerializeDialog(Lcom/exteragram/messenger/export/api/ApiWrap$DialogInfo;Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 140
    :cond_1
    iget-object p1, p1, Lcom/exteragram/messenger/export/api/ApiWrap$DialogsInfo;->left:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v3, v2

    :goto_2
    if-ge v3, v1, :cond_3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v3, v3, 0x1

    check-cast v6, Lcom/exteragram/messenger/export/api/ApiWrap$DialogInfo;

    if-nez v5, :cond_2

    .line 143
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_2
    move v5, v2

    .line 147
    :goto_3
    iget-object v8, p0, Lcom/exteragram/messenger/export/output/json/JsonWriter;->_summary:Lcom/exteragram/messenger/export/output/json/JsonContext;

    invoke-virtual {v8, v6, v4}, Lcom/exteragram/messenger/export/output/json/JsonContext;->SerializeDialog(Lcom/exteragram/messenger/export/api/ApiWrap$DialogInfo;Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 149
    :cond_3
    iget-object p1, p0, Lcom/exteragram/messenger/export/output/json/JsonWriter;->_summary:Lcom/exteragram/messenger/export/output/json/JsonContext;

    invoke-direct {p0, p1}, Lcom/exteragram/messenger/export/output/json/JsonWriter;->popNesting(Lcom/exteragram/messenger/export/output/json/JsonContext;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    iget-object p1, p0, Lcom/exteragram/messenger/export/output/json/JsonWriter;->_summary:Lcom/exteragram/messenger/export/output/json/JsonContext;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/exteragram/messenger/export/output/json/JsonContext;->writeBlock(Ljava/lang/String;)Lcom/exteragram/messenger/export/output/AbstractWriter$Result;

    move-result-object p1

    return-object p1
.end method

.method public writeOtherData(Lcom/exteragram/messenger/export/api/ApiWrap$File;)Lcom/exteragram/messenger/export/output/AbstractWriter$Result;
    .locals 1

    .line 389
    iget-object p1, p1, Lcom/exteragram/messenger/export/api/ApiWrap$File;->relativePath:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/exteragram/messenger/export/output/json/JsonWriter;->fileWithRelativePath(Ljava/lang/String;)Lcom/exteragram/messenger/export/output/OutputFile;

    move-result-object p1

    .line 391
    iget-object v0, p1, Lcom/exteragram/messenger/export/output/OutputFile;->_file:Ljava/io/File;

    invoke-static {v0}, Lcom/exteragram/messenger/export/output/FileManager;->readFileContent(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 392
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 396
    :cond_0
    new-instance v0, Lcom/exteragram/messenger/export/output/json/JsonContext;

    invoke-direct {v0, p1}, Lcom/exteragram/messenger/export/output/json/JsonContext;-><init>(Lcom/exteragram/messenger/export/output/OutputFile;)V

    iput-object v0, p0, Lcom/exteragram/messenger/export/output/json/JsonWriter;->_otherData:Lcom/exteragram/messenger/export/output/json/JsonContext;

    .line 397
    const-string p1, "other_data"

    iget-object v0, p0, Lcom/exteragram/messenger/export/output/json/JsonWriter;->_otherData:Lcom/exteragram/messenger/export/output/json/JsonContext;

    invoke-direct {p0, p1, v0}, Lcom/exteragram/messenger/export/output/json/JsonWriter;->prepareObjectItemStart(Ljava/lang/String;Lcom/exteragram/messenger/export/output/json/JsonContext;)Ljava/lang/String;

    .line 398
    invoke-static {}, Lcom/exteragram/messenger/export/output/AbstractWriter$Result;->Success()Lcom/exteragram/messenger/export/output/AbstractWriter$Result;

    move-result-object p1

    return-object p1

    .line 393
    :cond_1
    :goto_0
    invoke-static {}, Lcom/exteragram/messenger/export/output/AbstractWriter$Result;->Success()Lcom/exteragram/messenger/export/output/AbstractWriter$Result;

    move-result-object p1

    return-object p1
.end method

.method public writePersonal(Lcom/exteragram/messenger/export/api/ApiWrap$ExportPersonalInfo;)Lcom/exteragram/messenger/export/output/AbstractWriter$Result;
    .locals 11

    .line 103
    iget-object v0, p1, Lcom/exteragram/messenger/export/api/ApiWrap$ExportPersonalInfo;->user:Lcom/exteragram/messenger/export/api/ApiWrap$User;

    iget-object v0, v0, Lcom/exteragram/messenger/export/api/ApiWrap$User;->info:Lcom/exteragram/messenger/export/api/ApiWrap$ContactInfo;

    .line 104
    iget-object v1, p0, Lcom/exteragram/messenger/export/output/json/JsonWriter;->_summary:Lcom/exteragram/messenger/export/output/json/JsonContext;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "personal_information"

    iget-object v4, p0, Lcom/exteragram/messenger/export/output/json/JsonWriter;->_summary:Lcom/exteragram/messenger/export/output/json/JsonContext;

    .line 105
    invoke-direct {p0, v3, v4}, Lcom/exteragram/messenger/export/output/json/JsonWriter;->prepareObjectItemStart(Ljava/lang/String;Lcom/exteragram/messenger/export/output/json/JsonContext;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/exteragram/messenger/export/output/json/JsonWriter;->_summary:Lcom/exteragram/messenger/export/output/json/JsonContext;

    new-instance v4, Landroid/util/Pair;

    iget-object v5, p1, Lcom/exteragram/messenger/export/api/ApiWrap$ExportPersonalInfo;->user:Lcom/exteragram/messenger/export/api/ApiWrap$User;

    iget-object v5, v5, Lcom/exteragram/messenger/export/api/ApiWrap$User;->bareId:Ljava/lang/Long;

    const-string v6, "user_id"

    invoke-direct {v4, v6, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v5, Landroid/util/Pair;

    iget-object v6, v0, Lcom/exteragram/messenger/export/api/ApiWrap$ContactInfo;->firstName:Ljava/lang/String;

    .line 108
    invoke-static {v6}, Lcom/exteragram/messenger/export/output/json/JsonContext;->SerializeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "first_name"

    invoke-direct {v5, v7, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v6, Landroid/util/Pair;

    iget-object v7, v0, Lcom/exteragram/messenger/export/api/ApiWrap$ContactInfo;->lastName:Ljava/lang/String;

    .line 109
    invoke-static {v7}, Lcom/exteragram/messenger/export/output/json/JsonContext;->SerializeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "last_name"

    invoke-direct {v6, v8, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v7, Landroid/util/Pair;

    iget-object v0, v0, Lcom/exteragram/messenger/export/api/ApiWrap$ContactInfo;->phoneNumber:Ljava/lang/String;

    .line 110
    invoke-static {v0}, Lcom/exteragram/messenger/export/output/json/JsonContext;->SerializeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v8, "phone_number"

    invoke-direct {v7, v8, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Landroid/util/Pair;

    .line 112
    iget-object v8, p1, Lcom/exteragram/messenger/export/api/ApiWrap$ExportPersonalInfo;->user:Lcom/exteragram/messenger/export/api/ApiWrap$User;

    iget-object v8, v8, Lcom/exteragram/messenger/export/api/ApiWrap$User;->username:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    const-string v9, ""

    if-nez v8, :cond_0

    .line 113
    iget-object v8, p1, Lcom/exteragram/messenger/export/api/ApiWrap$ExportPersonalInfo;->user:Lcom/exteragram/messenger/export/api/ApiWrap$User;

    iget-object v8, v8, Lcom/exteragram/messenger/export/api/ApiWrap$User;->username:Ljava/lang/String;

    invoke-static {v8}, Lcom/exteragram/messenger/export/output/json/JsonContext;->SerializeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    :cond_0
    move-object v8, v9

    .line 114
    :goto_0
    const-string v10, "username"

    invoke-direct {v0, v10, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v8, Landroid/util/Pair;

    .line 116
    iget-object v10, p1, Lcom/exteragram/messenger/export/api/ApiWrap$ExportPersonalInfo;->bio:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_1

    .line 117
    iget-object p1, p1, Lcom/exteragram/messenger/export/api/ApiWrap$ExportPersonalInfo;->bio:Ljava/lang/String;

    invoke-static {p1}, Lcom/exteragram/messenger/export/output/json/JsonContext;->SerializeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 118
    :cond_1
    const-string p1, "bio"

    invoke-direct {v8, p1, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x6

    new-array p1, p1, [Landroid/util/Pair;

    const/4 v9, 0x0

    aput-object v4, p1, v9

    const/4 v4, 0x1

    aput-object v5, p1, v4

    const/4 v4, 0x2

    aput-object v6, p1, v4

    const/4 v4, 0x3

    aput-object v7, p1, v4

    const/4 v4, 0x4

    aput-object v0, p1, v4

    const/4 v0, 0x5

    aput-object v8, p1, v0

    .line 106
    invoke-static {v3, p1}, Lcom/exteragram/messenger/export/output/json/JsonContext;->SerializeObject(Lcom/exteragram/messenger/export/output/json/JsonContext;[Landroid/util/Pair;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 104
    invoke-virtual {v1, p1}, Lcom/exteragram/messenger/export/output/json/JsonContext;->writeBlock(Ljava/lang/String;)Lcom/exteragram/messenger/export/output/AbstractWriter$Result;

    move-result-object p1

    return-object p1
.end method

.method public writeSessionsList(Lcom/exteragram/messenger/export/api/ApiWrap$SessionsList;)Lcom/exteragram/messenger/export/output/AbstractWriter$Result;
    .locals 2

    .line 278
    new-instance v0, Lcom/exteragram/messenger/export/output/json/JsonContext;

    const-string v1, "sessions.json"

    invoke-direct {p0, v1}, Lcom/exteragram/messenger/export/output/json/JsonWriter;->fileWithRelativePath(Ljava/lang/String;)Lcom/exteragram/messenger/export/output/OutputFile;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/exteragram/messenger/export/output/json/JsonContext;-><init>(Lcom/exteragram/messenger/export/output/OutputFile;)V

    iput-object v0, p0, Lcom/exteragram/messenger/export/output/json/JsonWriter;->_sessions:Lcom/exteragram/messenger/export/output/json/JsonContext;

    .line 279
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/export/output/json/JsonWriter;->writeSessions(Lcom/exteragram/messenger/export/api/ApiWrap$SessionsList;)Lcom/exteragram/messenger/export/output/AbstractWriter$Result;

    move-result-object v0

    .line 280
    invoke-virtual {v0}, Lcom/exteragram/messenger/export/output/AbstractWriter$Result;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 283
    :cond_0
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/export/output/json/JsonWriter;->writeWebSessions(Lcom/exteragram/messenger/export/api/ApiWrap$SessionsList;)Lcom/exteragram/messenger/export/output/AbstractWriter$Result;

    move-result-object p1

    .line 284
    invoke-virtual {p1}, Lcom/exteragram/messenger/export/output/AbstractWriter$Result;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_1

    return-object p1

    .line 287
    :cond_1
    invoke-static {}, Lcom/exteragram/messenger/export/output/AbstractWriter$Result;->Success()Lcom/exteragram/messenger/export/output/AbstractWriter$Result;

    move-result-object p1

    return-object p1
.end method

.method public writeStoriesEnd()Lcom/exteragram/messenger/export/output/AbstractWriter$Result;
    .locals 2

    .line 369
    iget-object v0, p0, Lcom/exteragram/messenger/export/output/json/JsonWriter;->_stories:Lcom/exteragram/messenger/export/output/json/JsonContext;

    iget-object v1, p0, Lcom/exteragram/messenger/export/output/json/JsonWriter;->_stories:Lcom/exteragram/messenger/export/output/json/JsonContext;

    invoke-direct {p0, v1}, Lcom/exteragram/messenger/export/output/json/JsonWriter;->popNesting(Lcom/exteragram/messenger/export/output/json/JsonContext;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/exteragram/messenger/export/output/json/JsonContext;->writeBlock(Ljava/lang/String;)Lcom/exteragram/messenger/export/output/AbstractWriter$Result;

    move-result-object v0

    return-object v0
.end method

.method public writeStoriesSlice(Lcom/exteragram/messenger/export/api/ApiWrap$StoriesSlice;)Lcom/exteragram/messenger/export/output/AbstractWriter$Result;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 339
    iget-object v2, v1, Lcom/exteragram/messenger/export/api/ApiWrap$StoriesSlice;->list:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 340
    invoke-static {}, Lcom/exteragram/messenger/export/output/AbstractWriter$Result;->Success()Lcom/exteragram/messenger/export/output/AbstractWriter$Result;

    move-result-object v1

    return-object v1

    .line 343
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 344
    iget-object v1, v1, Lcom/exteragram/messenger/export/api/ApiWrap$StoriesSlice;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_9

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Lcom/exteragram/messenger/export/api/ApiWrap$Story;

    .line 345
    invoke-virtual {v6}, Lcom/exteragram/messenger/export/api/ApiWrap$Story;->file()Lcom/exteragram/messenger/export/api/ApiWrap$File;

    move-result-object v7

    .line 346
    sget-object v8, Lcom/exteragram/messenger/export/output/json/JsonWriter$2;->$SwitchMap$com$exteragram$messenger$export$api$ApiWrap$File$SkipReason:[I

    iget-object v9, v7, Lcom/exteragram/messenger/export/api/ApiWrap$File;->skipReason:Lcom/exteragram/messenger/export/api/ApiWrap$File$SkipReason;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget v8, v8, v9

    const/4 v9, 0x4

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v12, 0x1

    if-eq v8, v12, :cond_5

    if-eq v8, v11, :cond_4

    if-eq v8, v10, :cond_3

    if-eq v8, v9, :cond_2

    const/4 v1, 0x5

    if-eq v8, v1, :cond_1

    new-instance v1, Ljava/lang/IncompatibleClassChangeError;

    invoke-direct {v1}, Ljava/lang/IncompatibleClassChangeError;-><init>()V

    throw v1

    .line 354
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "date limited skip reason while writing story path"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 347
    :cond_2
    iget-object v7, v7, Lcom/exteragram/messenger/export/api/ApiWrap$File;->relativePath:Ljava/lang/String;

    goto :goto_1

    .line 350
    :cond_3
    const-string v7, "(Photo not included. Change data exporting settings to download.)"

    goto :goto_1

    .line 352
    :cond_4
    const-string v7, "(Photo exceeds maximum size. Change data exporting settings to download.)"

    goto :goto_1

    .line 348
    :cond_5
    const-string v7, "(Photo unavailable, please try again later)"

    .line 357
    :goto_1
    iget-object v8, v0, Lcom/exteragram/messenger/export/output/json/JsonWriter;->_stories:Lcom/exteragram/messenger/export/output/json/JsonContext;

    invoke-direct {v0, v8}, Lcom/exteragram/messenger/export/output/json/JsonWriter;->prepareArrayItemStart(Lcom/exteragram/messenger/export/output/json/JsonContext;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    iget-object v8, v0, Lcom/exteragram/messenger/export/output/json/JsonWriter;->_stories:Lcom/exteragram/messenger/export/output/json/JsonContext;

    new-instance v13, Landroid/util/Pair;

    .line 359
    iget v14, v6, Lcom/exteragram/messenger/export/api/ApiWrap$Story;->date:I

    const-string v15, ""

    if-eqz v14, :cond_6

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/exteragram/messenger/export/output/json/JsonContext;->SerializeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    :goto_2
    const/16 p1, 0x0

    goto :goto_3

    :cond_6
    move-object v14, v15

    goto :goto_2

    :goto_3
    const-string v4, "date_unixtime"

    invoke-direct {v13, v4, v14}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v4, Landroid/util/Pair;

    .line 360
    iget v14, v6, Lcom/exteragram/messenger/export/api/ApiWrap$Story;->expires:I

    if-eqz v14, :cond_7

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/exteragram/messenger/export/output/json/JsonContext;->SerializeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    :cond_7
    const-string v14, "expires_unixtime"

    invoke-direct {v4, v14, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v14, Landroid/util/Pair;

    .line 361
    iget-boolean v6, v6, Lcom/exteragram/messenger/export/api/ApiWrap$Story;->pinned:Z

    if-eqz v6, :cond_8

    const-string v6, "true"

    goto :goto_4

    :cond_8
    const-string v6, "false"

    :goto_4
    const-string v15, "pinned"

    invoke-direct {v14, v15, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v6, Landroid/util/Pair;

    const-string v15, "media"

    .line 362
    invoke-static {v7}, Lcom/exteragram/messenger/export/output/json/JsonContext;->SerializeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v15, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-array v7, v9, [Landroid/util/Pair;

    aput-object v13, v7, p1

    aput-object v4, v7, v12

    aput-object v14, v7, v11

    aput-object v6, v7, v10

    .line 358
    invoke-static {v8, v7}, Lcom/exteragram/messenger/export/output/json/JsonContext;->SerializeObject(Lcom/exteragram/messenger/export/output/json/JsonContext;[Landroid/util/Pair;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 364
    :cond_9
    iget-object v1, v0, Lcom/exteragram/messenger/export/output/json/JsonWriter;->_stories:Lcom/exteragram/messenger/export/output/json/JsonContext;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/exteragram/messenger/export/output/json/JsonContext;->writeBlock(Ljava/lang/String;)Lcom/exteragram/messenger/export/output/AbstractWriter$Result;

    move-result-object v1

    return-object v1
.end method

.method public writeStoriesStart(I)Lcom/exteragram/messenger/export/output/AbstractWriter$Result;
    .locals 3

    .line 333
    const-string p1, "stories"

    iget-object v0, p0, Lcom/exteragram/messenger/export/output/json/JsonWriter;->_stories:Lcom/exteragram/messenger/export/output/json/JsonContext;

    invoke-direct {p0, p1, v0}, Lcom/exteragram/messenger/export/output/json/JsonWriter;->prepareObjectItemStart(Ljava/lang/String;Lcom/exteragram/messenger/export/output/json/JsonContext;)Ljava/lang/String;

    move-result-object p1

    .line 334
    iget-object v0, p0, Lcom/exteragram/messenger/export/output/json/JsonWriter;->_stories:Lcom/exteragram/messenger/export/output/json/JsonContext;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/exteragram/messenger/export/output/json/JsonWriter;->_stories:Lcom/exteragram/messenger/export/output/json/JsonContext;

    invoke-direct {p0, p1, v2}, Lcom/exteragram/messenger/export/output/json/JsonWriter;->pushNesting(Ljava/lang/Boolean;Lcom/exteragram/messenger/export/output/json/JsonContext;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/exteragram/messenger/export/output/json/JsonContext;->writeBlock(Ljava/lang/String;)Lcom/exteragram/messenger/export/output/AbstractWriter$Result;

    move-result-object p1

    return-object p1
.end method

.method public writeUserpicsEnd()Lcom/exteragram/messenger/export/output/AbstractWriter$Result;
    .locals 2

    .line 328
    iget-object v0, p0, Lcom/exteragram/messenger/export/output/json/JsonWriter;->_summary:Lcom/exteragram/messenger/export/output/json/JsonContext;

    invoke-direct {p0, v0}, Lcom/exteragram/messenger/export/output/json/JsonWriter;->popNesting(Lcom/exteragram/messenger/export/output/json/JsonContext;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/exteragram/messenger/export/output/json/JsonContext;->writeBlock(Ljava/lang/String;)Lcom/exteragram/messenger/export/output/AbstractWriter$Result;

    move-result-object v0

    return-object v0
.end method

.method public writeUserpicsSlice(Ljava/util/ArrayList;)Lcom/exteragram/messenger/export/output/AbstractWriter$Result;
    .locals 11

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 299
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_6

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/exteragram/messenger/export/output/html/HtmlWriter$Photo;

    .line 301
    iget-object v5, v4, Lcom/exteragram/messenger/export/output/html/HtmlWriter$Photo;->image:Lcom/exteragram/messenger/export/api/ApiWrap$Image;

    iget-object v5, v5, Lcom/exteragram/messenger/export/api/ApiWrap$Image;->file:Lcom/exteragram/messenger/export/api/ApiWrap$File;

    .line 302
    sget-object v6, Lcom/exteragram/messenger/export/output/json/JsonWriter$2;->$SwitchMap$com$exteragram$messenger$export$api$ApiWrap$File$SkipReason:[I

    iget-object v7, v5, Lcom/exteragram/messenger/export/api/ApiWrap$File;->skipReason:Lcom/exteragram/messenger/export/api/ApiWrap$File$SkipReason;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v6, v6, v7

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eq v6, v8, :cond_4

    if-eq v6, v7, :cond_3

    const/4 v9, 0x3

    if-eq v6, v9, :cond_2

    const/4 v9, 0x4

    if-eq v6, v9, :cond_1

    const/4 p1, 0x5

    if-eq v6, p1, :cond_0

    new-instance p1, Ljava/lang/IncompatibleClassChangeError;

    invoke-direct {p1}, Ljava/lang/IncompatibleClassChangeError;-><init>()V

    throw p1

    .line 310
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Skip reason while writing photo path."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 308
    :cond_1
    iget-object v5, v5, Lcom/exteragram/messenger/export/api/ApiWrap$File;->relativePath:Ljava/lang/String;

    goto :goto_1

    .line 307
    :cond_2
    const-string v5, "(Photo not included. Change data exporting settings to download.)"

    goto :goto_1

    .line 305
    :cond_3
    const-string v5, "(Photo exceeds maximum size. Change data exporting settings to download.)"

    goto :goto_1

    .line 303
    :cond_4
    const-string v5, "(Photo unavailable, please try again later)"

    .line 312
    :goto_1
    iget-object v6, p0, Lcom/exteragram/messenger/export/output/json/JsonWriter;->_summary:Lcom/exteragram/messenger/export/output/json/JsonContext;

    invoke-direct {p0, v6}, Lcom/exteragram/messenger/export/output/json/JsonWriter;->prepareArrayItemStart(Lcom/exteragram/messenger/export/output/json/JsonContext;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    iget-object v6, p0, Lcom/exteragram/messenger/export/output/json/JsonWriter;->_summary:Lcom/exteragram/messenger/export/output/json/JsonContext;

    new-instance v9, Landroid/util/Pair;

    .line 314
    iget v4, v4, Lcom/exteragram/messenger/export/output/html/HtmlWriter$Photo;->date:I

    if-eqz v4, :cond_5

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/exteragram/messenger/export/output/json/JsonContext;->SerializeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_5
    const-string v4, ""

    :goto_2
    const-string v10, "date_unixtime"

    invoke-direct {v9, v10, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v4, Landroid/util/Pair;

    const-string v10, "photo"

    .line 315
    invoke-static {v5}, Lcom/exteragram/messenger/export/output/json/JsonContext;->SerializeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v10, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-array v5, v7, [Landroid/util/Pair;

    aput-object v9, v5, v2

    aput-object v4, v5, v8

    .line 313
    invoke-static {v6, v5}, Lcom/exteragram/messenger/export/output/json/JsonContext;->SerializeObject(Lcom/exteragram/messenger/export/output/json/JsonContext;[Landroid/util/Pair;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 318
    :cond_6
    iget-object p1, p0, Lcom/exteragram/messenger/export/output/json/JsonWriter;->_summary:Lcom/exteragram/messenger/export/output/json/JsonContext;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/exteragram/messenger/export/output/json/JsonContext;->writeBlock(Ljava/lang/String;)Lcom/exteragram/messenger/export/output/AbstractWriter$Result;

    move-result-object p1

    return-object p1
.end method

.method public writeUserpicsStart(Lcom/exteragram/messenger/export/api/ApiWrap$UserpicsInfo;)Lcom/exteragram/messenger/export/output/AbstractWriter$Result;
    .locals 3

    .line 292
    iget-object p1, p0, Lcom/exteragram/messenger/export/output/json/JsonWriter;->_summary:Lcom/exteragram/messenger/export/output/json/JsonContext;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "profile_pictures"

    iget-object v2, p0, Lcom/exteragram/messenger/export/output/json/JsonWriter;->_summary:Lcom/exteragram/messenger/export/output/json/JsonContext;

    invoke-direct {p0, v1, v2}, Lcom/exteragram/messenger/export/output/json/JsonWriter;->prepareObjectItemStart(Ljava/lang/String;Lcom/exteragram/messenger/export/output/json/JsonContext;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/exteragram/messenger/export/output/json/JsonWriter;->_summary:Lcom/exteragram/messenger/export/output/json/JsonContext;

    invoke-direct {p0, v1, v2}, Lcom/exteragram/messenger/export/output/json/JsonWriter;->pushNesting(Ljava/lang/Boolean;Lcom/exteragram/messenger/export/output/json/JsonContext;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/exteragram/messenger/export/output/json/JsonContext;->writeBlock(Ljava/lang/String;)Lcom/exteragram/messenger/export/output/AbstractWriter$Result;

    move-result-object p1

    return-object p1
.end method
