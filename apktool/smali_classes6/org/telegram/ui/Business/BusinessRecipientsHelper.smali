.class public Lorg/telegram/ui/Business/BusinessRecipientsHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final alwaysShow:Ljava/util/ArrayList;

.field public bot:Z

.field private currentValue:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;

.field private doNotExcludeNewChats:Z

.field public exclude:Z

.field public excludeExpanded:Z

.field public excludeFlags:I

.field public final fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field public includeExpanded:Z

.field public includeFlags:I

.field public final neverShow:Ljava/util/ArrayList;

.field private shiftDp:I

.field public final update:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$9sSeIOT5ZZDmryqzNf-oDcQJbVs(Lorg/telegram/ui/Business/BusinessRecipientsHelper;IZLorg/telegram/ui/Components/UItem;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->lambda$onClick$0(IZLorg/telegram/ui/Components/UItem;Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$HVJhmHXRzlHykK729iMzpLHjQgo(Lorg/telegram/ui/Business/BusinessRecipientsHelper;ZLjava/util/ArrayList;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->lambda$selectChatsFor$1(ZLjava/util/ArrayList;I)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/Runnable;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->alwaysShow:Ljava/util/ArrayList;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->neverShow:Ljava/util/ArrayList;

    const/4 v0, -0x4

    .line 277
    iput v0, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->shiftDp:I

    .line 29
    iput-object p1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 30
    iput-object p2, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->update:Ljava/lang/Runnable;

    return-void
.end method

.method private getFlag(Ljava/lang/String;)I
    .locals 5

    .line 393
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "existing_chats"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x3

    goto :goto_0

    :sswitch_1
    const-string v0, "new_chats"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move v4, v1

    goto :goto_0

    :sswitch_2
    const-string v0, "contacts"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v4, v2

    goto :goto_0

    :sswitch_3
    const-string v0, "non_contacts"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    move v4, v3

    :goto_0
    packed-switch v4, :pswitch_data_0

    return v3

    :pswitch_0
    return v2

    :pswitch_1
    return v1

    :pswitch_2
    const/4 p1, 0x4

    return p1

    :pswitch_3
    const/16 p1, 0x8

    return p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4760427b -> :sswitch_3
        -0x21d29fad -> :sswitch_2
        -0xffbd344 -> :sswitch_1
        0x900dc67 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getFlagName(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 408
    sget p1, Lorg/telegram/messenger/R$string;->FilterNonContacts:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 406
    :cond_0
    sget p1, Lorg/telegram/messenger/R$string;->FilterContacts:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 405
    :cond_1
    sget p1, Lorg/telegram/messenger/R$string;->FilterNewChats:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 404
    :cond_2
    sget p1, Lorg/telegram/messenger/R$string;->FilterExistingChats:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$onClick$0(IZLorg/telegram/ui/Components/UItem;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    .line 375
    iget p2, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->excludeFlags:I

    not-int p1, p1

    and-int/2addr p1, p2

    iput p1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->excludeFlags:I

    goto :goto_1

    .line 377
    :cond_0
    iget p2, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->includeFlags:I

    not-int p1, p1

    and-int/2addr p1, p2

    iput p1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->includeFlags:I

    goto :goto_1

    :cond_1
    if-nez p2, :cond_2

    .line 380
    iget-object p1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->neverShow:Ljava/util/ArrayList;

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->alwaysShow:Ljava/util/ArrayList;

    :goto_0
    iget-wide p2, p3, Lorg/telegram/ui/Components/UItem;->dialogId:J

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 382
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->update:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$selectChatsFor$1(ZLjava/util/ArrayList;I)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 430
    iput p3, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->includeFlags:I

    .line 431
    iget-object p1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->alwaysShow:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 432
    iget-object p1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->alwaysShow:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 433
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->alwaysShow:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    .line 434
    iget-object p1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->neverShow:Ljava/util/ArrayList;

    iget-object p2, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->alwaysShow:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 437
    :cond_0
    iput p3, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->excludeFlags:I

    .line 438
    iget-object p1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->neverShow:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 439
    iget-object p1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->neverShow:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 440
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->neverShow:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    .line 441
    iget-object p1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->alwaysShow:Ljava/util/ArrayList;

    iget-object p2, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->neverShow:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 444
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->update:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private selectChatsFor(Z)V
    .locals 4

    if-eqz p1, :cond_0

    .line 423
    iget-object v0, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->alwaysShow:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->neverShow:Ljava/util/ArrayList;

    .line 424
    :goto_0
    new-instance v1, Lorg/telegram/ui/UsersSelectActivity;

    invoke-virtual {p0}, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->getFlags()I

    move-result v2

    invoke-direct {v1, p1, v0, v2}, Lorg/telegram/ui/UsersSelectActivity;-><init>(ZLjava/util/ArrayList;I)V

    invoke-virtual {v1}, Lorg/telegram/ui/UsersSelectActivity;->asPrivateChats()Lorg/telegram/ui/UsersSelectActivity;

    move-result-object v0

    .line 425
    iget-boolean v1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->bot:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->exclude:Z

    if-nez v1, :cond_1

    if-nez p1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    iput-boolean v1, v0, Lorg/telegram/ui/UsersSelectActivity;->noChatTypes:Z

    .line 426
    iput-boolean v3, v0, Lorg/telegram/ui/UsersSelectActivity;->allowSelf:Z

    if-nez p1, :cond_2

    .line 427
    iget-boolean v1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->doNotExcludeNewChats:Z

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    iput-boolean v2, v0, Lorg/telegram/ui/UsersSelectActivity;->doNotNewChats:Z

    .line 428
    new-instance v1, Lorg/telegram/ui/Business/BusinessRecipientsHelper$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Business/BusinessRecipientsHelper$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Business/BusinessRecipientsHelper;Z)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/UsersSelectActivity;->setDelegate(Lorg/telegram/ui/UsersSelectActivity$FilterUsersActivityDelegate;)V

    .line 446
    iget-object p1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method


# virtual methods
.method public doNotExcludeNewChats()V
    .locals 1

    const/4 v0, 0x1

    .line 419
    iput-boolean v0, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->doNotExcludeNewChats:Z

    return-void
.end method

.method public fillItems(Ljava/util/ArrayList;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 293
    invoke-virtual {v0}, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->getFlags()I

    move-result v2

    .line 294
    iget-boolean v3, v0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->exclude:Z

    const-string v4, "FilterShowMoreChats"

    const-string v5, "non_contacts"

    const-string v6, "contacts"

    const-string v7, "new_chats"

    const-string v8, "existing_chats"

    const/4 v9, 0x5

    const/4 v10, 0x4

    const/4 v11, 0x2

    const/16 v12, 0x8

    const/4 v14, 0x1

    if-nez v3, :cond_7

    .line 295
    sget v3, Lorg/telegram/messenger/R$string;->BusinessChatsIncluded:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/ui/Components/UItem;->asHeader(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    sget v3, Lorg/telegram/messenger/R$drawable;->msg2_chats_add:I

    sget v15, Lorg/telegram/messenger/R$string;->BusinessChatsIncludedAdd:I

    invoke-static {v15}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/16 v13, 0x65

    invoke-static {v13, v3, v15}, Lorg/telegram/ui/Components/UItem;->asButton(IILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/UItem;->accent()Lorg/telegram/ui/Components/UItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_0

    .line 298
    sget v3, Lorg/telegram/messenger/R$string;->FilterExistingChats:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3, v8, v14}, Lorg/telegram/ui/Components/UItem;->asFilterChat(ZLjava/lang/CharSequence;Ljava/lang/String;I)Lorg/telegram/ui/Components/UItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    and-int/lit8 v3, v2, 0x2

    if-eqz v3, :cond_1

    .line 301
    sget v3, Lorg/telegram/messenger/R$string;->FilterNewChats:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3, v7, v11}, Lorg/telegram/ui/Components/UItem;->asFilterChat(ZLjava/lang/CharSequence;Ljava/lang/String;I)Lorg/telegram/ui/Components/UItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    and-int/lit8 v3, v2, 0x4

    if-eqz v3, :cond_2

    .line 304
    sget v3, Lorg/telegram/messenger/R$string;->FilterContacts:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3, v6, v10}, Lorg/telegram/ui/Components/UItem;->asFilterChat(ZLjava/lang/CharSequence;Ljava/lang/String;I)Lorg/telegram/ui/Components/UItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    and-int/lit8 v3, v2, 0x8

    if-eqz v3, :cond_3

    .line 307
    sget v3, Lorg/telegram/messenger/R$string;->FilterNonContacts:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3, v5, v12}, Lorg/telegram/ui/Components/UItem;->asFilterChat(ZLjava/lang/CharSequence;Ljava/lang/String;I)Lorg/telegram/ui/Components/UItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 309
    :cond_3
    iget-object v3, v0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->alwaysShow:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    .line 310
    iget-boolean v3, v0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->includeExpanded:Z

    if-nez v3, :cond_5

    iget-object v3, v0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->alwaysShow:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v3, v12, :cond_4

    goto :goto_0

    :cond_4
    iget-object v3, v0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->alwaysShow:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v9, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_1

    :cond_5
    :goto_0
    iget-object v3, v0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->alwaysShow:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_1
    const/4 v13, 0x0

    :goto_2
    if-ge v13, v3, :cond_6

    .line 312
    iget-object v15, v0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->alwaysShow:Ljava/util/ArrayList;

    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Long;

    move/from16 v16, v12

    move/from16 v17, v13

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-static {v14, v12, v13}, Lorg/telegram/ui/Components/UItem;->asFilterChat(ZJ)Lorg/telegram/ui/Components/UItem;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v17, 0x1

    move/from16 v12, v16

    goto :goto_2

    :cond_6
    move/from16 v16, v12

    .line 314
    iget-object v12, v0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->alwaysShow:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-eq v3, v12, :cond_8

    .line 315
    sget v3, Lorg/telegram/messenger/R$drawable;->arrow_more:I

    iget-object v12, v0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->alwaysShow:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    sub-int/2addr v12, v9

    const/4 v13, 0x0

    new-array v15, v13, [Ljava/lang/Object;

    invoke-static {v4, v12, v15}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0x66

    invoke-static {v13, v3, v12}, Lorg/telegram/ui/Components/UItem;->asButton(IILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/UItem;->accent()Lorg/telegram/ui/Components/UItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    move/from16 v16, v12

    .line 319
    :cond_8
    :goto_3
    iget-boolean v3, v0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->bot:Z

    if-nez v3, :cond_9

    iget-boolean v12, v0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->exclude:Z

    if-eqz v12, :cond_13

    :cond_9
    if-eqz v3, :cond_a

    const/4 v3, 0x0

    .line 321
    invoke-static {v3}, Lorg/telegram/ui/Components/UItem;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 323
    :cond_a
    sget v3, Lorg/telegram/messenger/R$string;->BusinessChatsExcluded:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/ui/Components/UItem;->asHeader(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 324
    sget v3, Lorg/telegram/messenger/R$drawable;->msg2_chats_add:I

    sget v12, Lorg/telegram/messenger/R$string;->BusinessChatsExcludedAdd:I

    invoke-static {v12}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0x67

    invoke-static {v13, v3, v12}, Lorg/telegram/ui/Components/UItem;->asButton(IILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/UItem;->accent()Lorg/telegram/ui/Components/UItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 325
    iget-boolean v3, v0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->bot:Z

    if-eqz v3, :cond_c

    iget-boolean v3, v0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->exclude:Z

    if-eqz v3, :cond_b

    goto :goto_4

    :cond_b
    move/from16 v3, v16

    goto :goto_6

    :cond_c
    :goto_4
    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_d

    .line 327
    sget v3, Lorg/telegram/messenger/R$string;->FilterExistingChats:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v13, 0x0

    invoke-static {v13, v3, v8, v14}, Lorg/telegram/ui/Components/UItem;->asFilterChat(ZLjava/lang/CharSequence;Ljava/lang/String;I)Lorg/telegram/ui/Components/UItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_d
    const/4 v13, 0x0

    :goto_5
    and-int/lit8 v3, v2, 0x2

    if-eqz v3, :cond_e

    .line 330
    sget v3, Lorg/telegram/messenger/R$string;->FilterNewChats:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3, v7, v11}, Lorg/telegram/ui/Components/UItem;->asFilterChat(ZLjava/lang/CharSequence;Ljava/lang/String;I)Lorg/telegram/ui/Components/UItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    and-int/lit8 v3, v2, 0x4

    if-eqz v3, :cond_f

    .line 333
    sget v3, Lorg/telegram/messenger/R$string;->FilterContacts:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3, v6, v10}, Lorg/telegram/ui/Components/UItem;->asFilterChat(ZLjava/lang/CharSequence;Ljava/lang/String;I)Lorg/telegram/ui/Components/UItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_b

    .line 336
    sget v2, Lorg/telegram/messenger/R$string;->FilterNonContacts:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    move/from16 v3, v16

    invoke-static {v13, v2, v5, v3}, Lorg/telegram/ui/Components/UItem;->asFilterChat(ZLjava/lang/CharSequence;Ljava/lang/String;I)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 339
    :goto_6
    iget-object v2, v0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->neverShow:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_13

    .line 340
    iget-boolean v2, v0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->excludeExpanded:Z

    if-nez v2, :cond_11

    iget-object v2, v0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->neverShow:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v2, v3, :cond_10

    goto :goto_7

    :cond_10
    iget-object v2, v0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->neverShow:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v9, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_8

    :cond_11
    :goto_7
    iget-object v2, v0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->neverShow:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_8
    const/4 v13, 0x0

    :goto_9
    if-ge v13, v2, :cond_12

    .line 342
    iget-object v3, v0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->neverShow:Ljava/util/ArrayList;

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const/4 v3, 0x0

    invoke-static {v3, v5, v6}, Lorg/telegram/ui/Components/UItem;->asFilterChat(ZJ)Lorg/telegram/ui/Components/UItem;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    goto :goto_9

    .line 344
    :cond_12
    iget-object v3, v0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->neverShow:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v2, v3, :cond_13

    .line 345
    sget v2, Lorg/telegram/messenger/R$drawable;->arrow_more:I

    iget-object v3, v0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->neverShow:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v9

    const/4 v13, 0x0

    new-array v5, v13, [Ljava/lang/Object;

    invoke-static {v4, v3, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x68

    invoke-static {v4, v2, v3}, Lorg/telegram/ui/Components/UItem;->asButton(IILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/UItem;->accent()Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_13
    return-void
.end method

.method public getBotInputValue()Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessBotRecipients;
    .locals 8

    .line 237
    new-instance v0, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessBotRecipients;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessBotRecipients;-><init>()V

    .line 238
    invoke-virtual {p0}, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->getFlags()I

    move-result v1

    and-int/lit8 v2, v1, -0x31

    .line 239
    iput v2, v0, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessBotRecipients;->flags:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    .line 240
    :goto_0
    iput-boolean v2, v0, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessBotRecipients;->existing_chats:Z

    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_1

    move v2, v4

    goto :goto_1

    :cond_1
    move v2, v3

    .line 241
    :goto_1
    iput-boolean v2, v0, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessBotRecipients;->new_chats:Z

    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_2

    move v2, v4

    goto :goto_2

    :cond_2
    move v2, v3

    .line 242
    :goto_2
    iput-boolean v2, v0, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessBotRecipients;->contacts:Z

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    move v4, v3

    .line 243
    :goto_3
    iput-boolean v4, v0, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessBotRecipients;->non_contacts:Z

    .line 244
    iget-boolean v1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->exclude:Z

    iput-boolean v1, v0, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessBotRecipients;->exclude_selected:Z

    if-eqz v1, :cond_4

    .line 245
    iget-object v1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->neverShow:Ljava/util/ArrayList;

    goto :goto_4

    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->alwaysShow:Ljava/util/ArrayList;

    .line 246
    :goto_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    const-string v4, "businessRecipientsHelper: user not found "

    if-nez v2, :cond_6

    .line 247
    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    .line 248
    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    .line 250
    iget v5, v0, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessBotRecipients;->flags:I

    or-int/lit8 v5, v5, 0x10

    iput v5, v0, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessBotRecipients;->flags:I

    move v5, v3

    .line 251
    :goto_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_6

    .line 252
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lorg/telegram/messenger/MessagesController;->getInputUser(J)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v6

    if-nez v6, :cond_5

    .line 254
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    goto :goto_6

    .line 256
    :cond_5
    iget-object v7, v0, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessBotRecipients;->users:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 260
    :cond_6
    iget-boolean v1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->exclude:Z

    if-nez v1, :cond_8

    .line 261
    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    .line 262
    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    .line 264
    iget v2, v0, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessBotRecipients;->flags:I

    or-int/lit8 v2, v2, 0x40

    iput v2, v0, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessBotRecipients;->flags:I

    .line 265
    :goto_7
    iget-object v2, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->neverShow:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_8

    .line 266
    iget-object v2, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->neverShow:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Lorg/telegram/messenger/MessagesController;->getInputUser(J)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v2

    if-nez v2, :cond_7

    .line 268
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->neverShow:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    goto :goto_8

    .line 270
    :cond_7
    iget-object v5, v0, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessBotRecipients;->exclude_users:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_8
    return-object v0
.end method

.method public getBotValue()Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;
    .locals 8

    .line 169
    new-instance v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;-><init>()V

    .line 170
    invoke-virtual {p0}, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->getFlags()I

    move-result v1

    and-int/lit8 v2, v1, -0x31

    .line 171
    iput v2, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;->flags:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    .line 172
    :goto_0
    iput-boolean v2, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;->existing_chats:Z

    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_1

    move v2, v4

    goto :goto_1

    :cond_1
    move v2, v3

    .line 173
    :goto_1
    iput-boolean v2, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;->new_chats:Z

    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_2

    move v2, v4

    goto :goto_2

    :cond_2
    move v2, v3

    .line 174
    :goto_2
    iput-boolean v2, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;->contacts:Z

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    move v4, v3

    .line 175
    :goto_3
    iput-boolean v4, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;->non_contacts:Z

    .line 176
    iget-boolean v1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->exclude:Z

    iput-boolean v1, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;->exclude_selected:Z

    if-eqz v1, :cond_4

    .line 177
    iget-object v1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->neverShow:Ljava/util/ArrayList;

    goto :goto_4

    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->alwaysShow:Ljava/util/ArrayList;

    .line 178
    :goto_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    const-string v4, "businessRecipientsHelper: user not found "

    if-nez v2, :cond_6

    .line 179
    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    .line 180
    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    .line 182
    iget v5, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;->flags:I

    or-int/lit8 v5, v5, 0x10

    iput v5, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;->flags:I

    move v5, v3

    .line 183
    :goto_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_6

    .line 184
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lorg/telegram/messenger/MessagesController;->getInputUser(J)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v6

    if-nez v6, :cond_5

    .line 186
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    goto :goto_6

    .line 188
    :cond_5
    iget-object v6, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;->users:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 192
    :cond_6
    iget-boolean v1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->exclude:Z

    if-nez v1, :cond_8

    .line 193
    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    .line 194
    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    .line 196
    iget v2, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;->flags:I

    or-int/lit8 v2, v2, 0x40

    iput v2, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;->flags:I

    .line 197
    :goto_7
    iget-object v2, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->neverShow:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_8

    .line 198
    iget-object v2, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->neverShow:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Lorg/telegram/messenger/MessagesController;->getInputUser(J)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v2

    if-nez v2, :cond_7

    .line 200
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->neverShow:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    goto :goto_8

    .line 202
    :cond_7
    iget-object v2, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;->users:Ljava/util/ArrayList;

    iget-object v5, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->neverShow:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_8
    return-object v0
.end method

.method public getFlags()I
    .locals 1

    .line 47
    iget-boolean v0, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->exclude:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->excludeFlags:I

    return v0

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->includeFlags:I

    return v0
.end method

.method public getInputValue()Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessRecipients;
    .locals 6

    .line 210
    new-instance v0, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessRecipients;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessRecipients;-><init>()V

    .line 211
    invoke-virtual {p0}, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->getFlags()I

    move-result v1

    and-int/lit8 v2, v1, -0x31

    .line 212
    iput v2, v0, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessRecipients;->flags:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    .line 213
    :goto_0
    iput-boolean v2, v0, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessRecipients;->existing_chats:Z

    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_1

    move v2, v4

    goto :goto_1

    :cond_1
    move v2, v3

    .line 214
    :goto_1
    iput-boolean v2, v0, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessRecipients;->new_chats:Z

    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_2

    move v2, v4

    goto :goto_2

    :cond_2
    move v2, v3

    .line 215
    :goto_2
    iput-boolean v2, v0, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessRecipients;->contacts:Z

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    move v4, v3

    .line 216
    :goto_3
    iput-boolean v4, v0, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessRecipients;->non_contacts:Z

    .line 217
    iget-boolean v1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->exclude:Z

    iput-boolean v1, v0, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessRecipients;->exclude_selected:Z

    if-eqz v1, :cond_4

    .line 218
    iget-object v1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->neverShow:Ljava/util/ArrayList;

    goto :goto_4

    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->alwaysShow:Ljava/util/ArrayList;

    .line 219
    :goto_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 220
    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    .line 221
    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    .line 223
    iget v4, v0, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessRecipients;->flags:I

    or-int/lit8 v4, v4, 0x10

    iput v4, v0, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessRecipients;->flags:I

    .line 224
    :goto_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    .line 225
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lorg/telegram/messenger/MessagesController;->getInputUser(J)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v4

    if-nez v4, :cond_5

    .line 227
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "businessRecipientsHelper: user not found "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    goto :goto_6

    .line 229
    :cond_5
    iget-object v5, v0, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessRecipients;->users:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_6
    return-object v0
.end method

.method public getValue()Lorg/telegram/tgnet/tl/TL_account$TL_businessRecipients;
    .locals 6

    .line 142
    new-instance v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessRecipients;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_account$TL_businessRecipients;-><init>()V

    .line 143
    invoke-virtual {p0}, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->getFlags()I

    move-result v1

    and-int/lit8 v2, v1, -0x31

    .line 144
    iput v2, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessRecipients;->flags:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    .line 145
    :goto_0
    iput-boolean v2, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessRecipients;->existing_chats:Z

    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_1

    move v2, v4

    goto :goto_1

    :cond_1
    move v2, v3

    .line 146
    :goto_1
    iput-boolean v2, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessRecipients;->new_chats:Z

    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_2

    move v2, v4

    goto :goto_2

    :cond_2
    move v2, v3

    .line 147
    :goto_2
    iput-boolean v2, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessRecipients;->contacts:Z

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    move v4, v3

    .line 148
    :goto_3
    iput-boolean v4, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessRecipients;->non_contacts:Z

    .line 149
    iget-boolean v1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->exclude:Z

    iput-boolean v1, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessRecipients;->exclude_selected:Z

    if-eqz v1, :cond_4

    .line 150
    iget-object v1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->neverShow:Ljava/util/ArrayList;

    goto :goto_4

    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->alwaysShow:Ljava/util/ArrayList;

    .line 151
    :goto_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 152
    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    .line 153
    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    .line 155
    iget v4, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessRecipients;->flags:I

    or-int/lit8 v4, v4, 0x10

    iput v4, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessRecipients;->flags:I

    .line 156
    :goto_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    .line 157
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lorg/telegram/messenger/MessagesController;->getInputUser(J)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v4

    if-nez v4, :cond_5

    .line 159
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "businessRecipientsHelper: user not found "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    goto :goto_6

    .line 161
    :cond_5
    iget-object v4, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessRecipients;->users:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_6
    return-object v0
.end method

.method public hasChanges()Z
    .locals 6

    .line 53
    iget-object v0, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->currentValue:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 54
    :cond_0
    iget-boolean v2, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;->exclude_selected:Z

    iget-boolean v3, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->exclude:Z

    if-eq v2, v3, :cond_1

    return v1

    .line 55
    :cond_1
    iget v0, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;->flags:I

    and-int/lit8 v0, v0, -0x31

    invoke-virtual {p0}, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->getFlags()I

    move-result v2

    if-eq v0, v2, :cond_2

    return v1

    .line 56
    :cond_2
    iget-boolean v0, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->exclude:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->neverShow:Ljava/util/ArrayList;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->alwaysShow:Ljava/util/ArrayList;

    .line 57
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->currentValue:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;

    iget-object v3, v3, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;->users:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v2, v3, :cond_4

    return v1

    :cond_4
    const/4 v2, 0x0

    move v3, v2

    .line 58
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    .line 59
    iget-object v4, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->currentValue:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;

    iget-object v4, v4, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;->users:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    return v1

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 63
    :cond_6
    iget-boolean v0, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->bot:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->exclude:Z

    if-nez v0, :cond_9

    .line 64
    iget-object v0, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->neverShow:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v3, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->currentValue:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;

    iget-object v3, v3, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;->users:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v0, v3, :cond_7

    return v1

    :cond_7
    move v0, v2

    .line 65
    :goto_2
    iget-object v3, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->neverShow:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_9

    .line 66
    iget-object v3, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->currentValue:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;

    iget-object v3, v3, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;->users:Ljava/util/ArrayList;

    iget-object v4, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->neverShow:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    return v1

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_9
    return v2
.end method

.method public onClick(Lorg/telegram/ui/Components/UItem;)Z
    .locals 9

    .line 352
    iget v0, p1, Lorg/telegram/ui/Components/UItem;->id:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x65

    if-eq v0, v3, :cond_9

    const/16 v4, 0x67

    if-ne v0, v4, :cond_0

    goto/16 :goto_4

    :cond_0
    const/16 v3, 0x66

    if-ne v0, v3, :cond_1

    .line 356
    iput-boolean v2, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->includeExpanded:Z

    .line 357
    iget-object p1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->update:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return v2

    :cond_1
    const/16 v3, 0x68

    if-ne v0, v3, :cond_2

    .line 360
    iput-boolean v2, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->excludeExpanded:Z

    .line 361
    iget-object p1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->update:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return v2

    .line 363
    :cond_2
    iget v0, p1, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    const/16 v3, 0xb

    if-ne v0, v3, :cond_8

    .line 364
    iget-object v0, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-nez v0, :cond_3

    return v1

    .line 365
    :cond_3
    iget-boolean v0, p1, Lorg/telegram/ui/Components/UItem;->include:Z

    .line 366
    iget-object v3, p1, Lorg/telegram/ui/Components/UItem;->chatType:Ljava/lang/String;

    if-nez v3, :cond_4

    move v3, v1

    goto :goto_0

    :cond_4
    invoke-direct {p0, v3}, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->getFlag(Ljava/lang/String;)I

    move-result v3

    :goto_0
    if-nez v3, :cond_5

    .line 367
    iget-object v4, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-wide v5, p1, Lorg/telegram/ui/Components/UItem;->dialogId:J

    invoke-virtual {v4, v5, v6}, Lorg/telegram/messenger/MessagesController;->getPeerName(J)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_5
    invoke-direct {p0, v3}, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->getFlagName(I)Ljava/lang/String;

    move-result-object v4

    .line 368
    :goto_1
    iget-object v5, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    new-instance v6, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 369
    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v8}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    if-nez v0, :cond_6

    .line 370
    sget v7, Lorg/telegram/messenger/R$string;->BusinessRecipientsRemoveExcludeTitle:I

    goto :goto_2

    :cond_6
    sget v7, Lorg/telegram/messenger/R$string;->BusinessRecipientsRemoveIncludeTitle:I

    :goto_2
    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v6

    if-nez v0, :cond_7

    .line 371
    sget v7, Lorg/telegram/messenger/R$string;->BusinessRecipientsRemoveExcludeMessage:I

    goto :goto_3

    :cond_7
    sget v7, Lorg/telegram/messenger/R$string;->BusinessRecipientsRemoveIncludeMessage:I

    :goto_3
    new-array v8, v2, [Ljava/lang/Object;

    aput-object v4, v8, v1

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v1

    sget v4, Lorg/telegram/messenger/R$string;->Remove:I

    .line 372
    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lorg/telegram/ui/Business/BusinessRecipientsHelper$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0, v3, v0, p1}, Lorg/telegram/ui/Business/BusinessRecipientsHelper$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Business/BusinessRecipientsHelper;IZLorg/telegram/ui/Components/UItem;)V

    invoke-virtual {v1, v4, v6}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->Cancel:I

    .line 384
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    .line 385
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 368
    invoke-virtual {v5, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return v2

    :cond_8
    return v1

    :cond_9
    :goto_4
    if-ne v0, v3, :cond_a

    move v1, v2

    .line 353
    :cond_a
    invoke-direct {p0, v1}, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->selectChatsFor(Z)V

    return v2
.end method

.method public setExclude(Z)V
    .locals 0

    .line 289
    iput-boolean p1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->exclude:Z

    return-void
.end method

.method public setValue(Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;)V
    .locals 2

    const/4 v0, 0x1

    .line 114
    iput-boolean v0, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->bot:Z

    .line 115
    iput-object p1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->currentValue:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 117
    iput-boolean v0, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->exclude:Z

    .line 118
    iput v1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->excludeFlags:I

    .line 119
    iput v1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->includeFlags:I

    .line 120
    iget-object p1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->alwaysShow:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 121
    iget-object p1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->neverShow:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-void

    .line 123
    :cond_0
    iget-boolean v0, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;->exclude_selected:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->exclude:Z

    if-eqz v0, :cond_1

    .line 125
    iput v1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->includeFlags:I

    .line 126
    iget p1, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;->flags:I

    and-int/lit8 p1, p1, -0x31

    iput p1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->excludeFlags:I

    .line 127
    iget-object p1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->alwaysShow:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 128
    iget-object p1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->neverShow:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 129
    iget-object p1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->neverShow:Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->currentValue:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;

    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;->users:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void

    .line 131
    :cond_1
    iget p1, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;->flags:I

    and-int/lit8 p1, p1, -0x31

    iput p1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->includeFlags:I

    .line 132
    iput v1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->excludeFlags:I

    .line 133
    iget-object p1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->alwaysShow:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 134
    iget-object p1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->neverShow:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 135
    iget-object p1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->alwaysShow:Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->currentValue:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;

    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;->users:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 136
    iget-object p1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->neverShow:Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->currentValue:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;

    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;->exclude_users:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public setValue(Lorg/telegram/tgnet/tl/TL_account$TL_businessRecipients;)V
    .locals 3

    const/4 v0, 0x0

    .line 75
    iput-boolean v0, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->bot:Z

    if-eqz p1, :cond_0

    .line 77
    new-instance v1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;

    invoke-direct {v1}, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->currentValue:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;

    .line 78
    iget v2, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessRecipients;->flags:I

    iput v2, v1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;->flags:I

    .line 79
    iget-boolean v2, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessRecipients;->existing_chats:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;->existing_chats:Z

    .line 80
    iget-boolean v2, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessRecipients;->new_chats:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;->new_chats:Z

    .line 81
    iget-boolean v2, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessRecipients;->contacts:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;->contacts:Z

    .line 82
    iget-boolean v2, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessRecipients;->non_contacts:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;->non_contacts:Z

    .line 83
    iget-boolean v2, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessRecipients;->exclude_selected:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;->exclude_selected:Z

    .line 84
    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessRecipients;->users:Ljava/util/ArrayList;

    iput-object p1, v1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;->users:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 86
    iput-object p1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->currentValue:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;

    .line 88
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->currentValue:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 89
    iput-boolean p1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->exclude:Z

    .line 90
    iput v0, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->excludeFlags:I

    .line 91
    iput v0, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->includeFlags:I

    .line 92
    iget-object p1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->alwaysShow:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 93
    iget-object p1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->neverShow:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-void

    .line 95
    :cond_1
    iget-boolean v1, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;->exclude_selected:Z

    iput-boolean v1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->exclude:Z

    if-eqz v1, :cond_2

    .line 97
    iput v0, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->includeFlags:I

    .line 98
    iget p1, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;->flags:I

    and-int/lit8 p1, p1, -0x31

    iput p1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->excludeFlags:I

    .line 99
    iget-object p1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->alwaysShow:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 100
    iget-object p1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->neverShow:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 101
    iget-object p1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->neverShow:Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->currentValue:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;

    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;->users:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void

    .line 103
    :cond_2
    iget p1, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;->flags:I

    and-int/lit8 p1, p1, -0x31

    iput p1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->includeFlags:I

    .line 104
    iput v0, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->excludeFlags:I

    .line 105
    iget-object p1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->alwaysShow:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 106
    iget-object p1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->neverShow:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 107
    iget-object p1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->alwaysShow:Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->currentValue:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;

    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;->users:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 108
    iget-object p1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->neverShow:Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->currentValue:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;

    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;->exclude_users:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public validate(Lorg/telegram/ui/Components/UniversalRecyclerView;)Z
    .locals 3

    .line 279
    iget-boolean v0, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->exclude:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->alwaysShow:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->includeFlags:I

    if-nez v0, :cond_0

    .line 280
    sget-object v0, Lorg/telegram/messenger/BotWebViewVibrationEffect;->APP_ERROR:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    invoke-virtual {v0}, Lorg/telegram/messenger/BotWebViewVibrationEffect;->vibrate()V

    const/16 v0, 0x65

    .line 281
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/UniversalRecyclerView;->findViewByItemId(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->shiftDp:I

    neg-int v2, v2

    iput v2, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->shiftDp:I

    int-to-float v2, v2

    invoke-static {v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->shakeViewSpring(Landroid/view/View;F)V

    .line 282
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/UniversalRecyclerView;->findPositionByItemId(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
