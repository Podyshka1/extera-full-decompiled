.class Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Action"
.end annotation


# instance fields
.field checks:[Z

.field collapsed:Z

.field filter:[Z

.field filteredCount:I

.field options:Ljava/util/ArrayList;

.field selectedCount:I

.field final synthetic this$0:Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;

.field title:Ljava/lang/String;

.field totalCount:I

.field type:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;ILjava/util/ArrayList;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->this$0:Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput p2, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->type:I

    .line 117
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->totalCount:I

    const/4 p2, 0x0

    .line 118
    iput p2, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->selectedCount:I

    if-lez p1, :cond_0

    .line 121
    iput-object p3, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->options:Ljava/util/ArrayList;

    .line 122
    new-array p1, p1, [Z

    iput-object p1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->checks:[Z

    const/4 p1, 0x1

    .line 123
    iput-boolean p1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->collapsed:Z

    .line 125
    invoke-virtual {p0}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->updateTitle()V

    :cond_0
    return-void
.end method


# virtual methods
.method areAllSelected()Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 226
    :goto_0
    iget v2, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->totalCount:I

    if-ge v1, v2, :cond_2

    .line 227
    iget-object v2, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->checks:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->filter:[Z

    if-eqz v2, :cond_0

    aget-boolean v2, v2, v1

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v0

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method collapseOrExpand()V
    .locals 2

    .line 207
    iget-boolean v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->collapsed:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->collapsed:Z

    .line 208
    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->this$0:Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->-$$Nest$fgetadapter(Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;)Lorg/telegram/ui/Components/UniversalAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    return-void
.end method

.method first()Lorg/telegram/tgnet/TLObject;
    .locals 2

    const/4 v0, 0x0

    .line 173
    :goto_0
    iget v1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->totalCount:I

    if-ge v0, v1, :cond_2

    .line 174
    iget-object v1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->filter:[Z

    if-eqz v1, :cond_1

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 175
    :cond_1
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->options:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLObject;

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method forEach(Lorg/telegram/messenger/Utilities$IndexedConsumer;)V
    .locals 2

    const/4 v0, 0x0

    .line 267
    :goto_0
    iget v1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->totalCount:I

    if-ge v0, v1, :cond_2

    .line 268
    iget-object v1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->filter:[Z

    if-eqz v1, :cond_0

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_1

    .line 269
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->options:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLObject;

    invoke-interface {p1, v1, v0}, Lorg/telegram/messenger/Utilities$IndexedConsumer;->accept(Ljava/lang/Object;I)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method forEachSelected(Lorg/telegram/messenger/Utilities$IndexedConsumer;)V
    .locals 2

    const/4 v0, 0x0

    .line 259
    :goto_0
    iget v1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->totalCount:I

    if-ge v0, v1, :cond_2

    .line 260
    iget-object v1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->checks:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->filter:[Z

    if-eqz v1, :cond_0

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_1

    .line 261
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->options:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLObject;

    invoke-interface {p1, v1, v0}, Lorg/telegram/messenger/Utilities$IndexedConsumer;->accept(Ljava/lang/Object;I)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method getCount()I
    .locals 1

    .line 130
    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->filter:[Z

    if-eqz v0, :cond_0

    .line 131
    iget v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->filteredCount:I

    return v0

    .line 133
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->totalCount:I

    return v0
.end method

.method isExpandable()Z
    .locals 2

    .line 142
    invoke-virtual {p0}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method isOneSelected()Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 235
    :goto_0
    iget v2, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->totalCount:I

    if-ge v1, v2, :cond_2

    .line 236
    iget-object v2, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->checks:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->filter:[Z

    if-eqz v2, :cond_0

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method isPresent()Z
    .locals 1

    .line 138
    invoke-virtual {p0}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method setAllChecks(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 248
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->setAllChecks(ZZ)V

    return-void
.end method

.method setAllChecks(ZZ)V
    .locals 1

    .line 251
    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->checks:[Z

    invoke-static {v0, p1}, Ljava/util/Arrays;->fill([ZZ)V

    .line 252
    invoke-virtual {p0}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->updateCounters()V

    if-eqz p2, :cond_0

    .line 254
    iget-object p1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->this$0:Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->-$$Nest$fgetadapter(Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;)Lorg/telegram/ui/Components/UniversalAdapter;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    :cond_0
    return-void
.end method

.method setFilter([Z)V
    .locals 1

    .line 146
    iget v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->totalCount:I

    if-nez v0, :cond_0

    return-void

    .line 149
    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->filter:[Z

    .line 151
    invoke-virtual {p0}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->updateCounters()V

    .line 152
    invoke-virtual {p0}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->updateTitle()V

    return-void
.end method

.method toggleAllChecks()V
    .locals 1

    .line 244
    invoke-virtual {p0}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->isOneSelected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->setAllChecks(Z)V

    return-void
.end method

.method toggleCheck(I)V
    .locals 3

    .line 212
    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->filter:[Z

    if-eqz v0, :cond_0

    aget-boolean v0, v0, p1

    if-nez v0, :cond_0

    return-void

    .line 216
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->checks:[Z

    aget-boolean v1, v0, p1

    xor-int/lit8 v2, v1, 0x1

    aput-boolean v2, v0, p1

    const/4 p1, 0x1

    if-nez v1, :cond_1

    .line 218
    iget v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->selectedCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->selectedCount:I

    goto :goto_0

    .line 220
    :cond_1
    iget v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->selectedCount:I

    sub-int/2addr v0, p1

    iput v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->selectedCount:I

    .line 222
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->this$0:Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->-$$Nest$fgetadapter(Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;)Lorg/telegram/ui/Components/UniversalAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    return-void
.end method

.method updateCounters()V
    .locals 2

    const/4 v0, 0x0

    .line 156
    iput v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->selectedCount:I

    .line 157
    iput v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->filteredCount:I

    .line 158
    :goto_0
    iget v1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->totalCount:I

    if-ge v0, v1, :cond_2

    .line 159
    iget-object v1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->filter:[Z

    if-nez v1, :cond_0

    .line 160
    iget-object v1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->checks:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_1

    .line 161
    iget v1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->selectedCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->selectedCount:I

    goto :goto_1

    .line 163
    :cond_0
    aget-boolean v1, v1, v0

    if-eqz v1, :cond_1

    .line 164
    iget v1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->filteredCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->filteredCount:I

    .line 165
    iget-object v1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->checks:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_1

    .line 166
    iget v1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->selectedCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->selectedCount:I

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method updateTitle()V
    .locals 5

    .line 182
    iget v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->totalCount:I

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 186
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->first()Lorg/telegram/tgnet/TLObject;

    move-result-object v0

    .line 188
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v1, :cond_1

    .line 189
    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getForcedFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 191
    :cond_1
    invoke-static {v0}, Lorg/telegram/messenger/ContactsController;->formatName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v0

    .line 193
    :goto_0
    iget v1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->type:I

    if-nez v1, :cond_2

    .line 194
    sget v0, Lorg/telegram/messenger/R$string;->DeleteReportSpam:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->title:Ljava/lang/String;

    return-void

    :cond_2
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_4

    .line 196
    invoke-virtual {p0}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->isExpandable()Z

    move-result v1

    if-eqz v1, :cond_3

    sget v0, Lorg/telegram/messenger/R$string;->DeleteAllFromUsers:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    sget v1, Lorg/telegram/messenger/R$string;->DeleteAllFrom:I

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->title:Ljava/lang/String;

    return-void

    :cond_4
    const/4 v4, 0x2

    if-ne v1, v4, :cond_8

    .line 198
    iget-object v1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->this$0:Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->-$$Nest$fgetrestrict(Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 199
    invoke-virtual {p0}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->isExpandable()Z

    move-result v1

    if-eqz v1, :cond_5

    sget v0, Lorg/telegram/messenger/R$string;->DeleteRestrictUsers:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    sget v1, Lorg/telegram/messenger/R$string;->DeleteRestrict:I

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->title:Ljava/lang/String;

    return-void

    .line 201
    :cond_6
    invoke-virtual {p0}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->isExpandable()Z

    move-result v1

    if-eqz v1, :cond_7

    sget v0, Lorg/telegram/messenger/R$string;->DeleteBanUsers:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_7
    sget v1, Lorg/telegram/messenger/R$string;->DeleteBan:I

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    iput-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->title:Ljava/lang/String;

    :cond_8
    :goto_4
    return-void
.end method
