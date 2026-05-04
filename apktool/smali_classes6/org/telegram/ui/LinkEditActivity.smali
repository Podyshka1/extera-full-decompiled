.class public Lorg/telegram/ui/LinkEditActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/LinkEditActivity$Callback;
    }
.end annotation


# instance fields
.field private approveCell:Lorg/telegram/ui/Cells/TextCheckCell;

.field private approveHintCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

.field private buttonLayout:Landroid/widget/FrameLayout;

.field private buttonTextView:Landroid/widget/TextView;

.field private callback:Lorg/telegram/ui/LinkEditActivity$Callback;

.field private final chatId:J

.field private createTextView:Landroid/widget/TextView;

.field currentInviteDate:I

.field private final defaultDates:[I

.field private final defaultUses:[I

.field private dispalyedDates:Ljava/util/ArrayList;

.field private dispalyedUses:Ljava/util/ArrayList;

.field private divider:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

.field private dividerName:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

.field private dividerUses:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

.field private finished:Z

.field private firstLayout:Z

.field private ignoreSet:Z

.field inviteToEdit:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

.field loading:Z

.field private nameEditText:Landroid/widget/EditText;

.field progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

.field private revokeLink:Lorg/telegram/ui/Cells/TextSettingsCell;

.field scrollToEnd:Z

.field scrollToStart:Z

.field private scrollView:Lorg/telegram/ui/Components/SectionsScrollView;

.field private shakeDp:I

.field private subCell:Lorg/telegram/ui/Cells/TextCheckCell;

.field private subEditPriceCell:Lorg/telegram/ui/Cells/EditTextCell;

.field private subInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

.field private subPriceView:Landroid/widget/TextView;

.field private timeChooseView:Lorg/telegram/ui/Components/SlideChooseView;

.field private timeEditText:Landroid/widget/TextView;

.field private timeHeaderCell:Lorg/telegram/ui/Cells/HeaderCell;

.field private type:I

.field private usesChooseView:Lorg/telegram/ui/Components/SlideChooseView;

.field private usesEditText:Landroid/widget/EditText;

.field private usesHeaderCell:Lorg/telegram/ui/Cells/HeaderCell;


# direct methods
.method public static synthetic $r8$lambda$-Wxozuw3YDXmzMaNrHu8FZ7D5i0(Lorg/telegram/ui/LinkEditActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LinkEditActivity;->lambda$onCreateClicked$14(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$541SMVRPEXCVfbuf3MAvlvQoEXo(Lorg/telegram/ui/LinkEditActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/LinkEditActivity;->lambda$createView$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$EpMrRg807wV2F9AkfxiGPhrrr04(Lorg/telegram/ui/LinkEditActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/LinkEditActivity;->lambda$createView$10(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OktdMNzKJdvvXn8SI4Gn3wegbhk(Lorg/telegram/ui/LinkEditActivity;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/LinkEditActivity;->lambda$createView$7(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$PtMwoxo3HJKRJNJVDYxszG_lC40(Ljava/lang/Integer;)V
    .locals 0

    .line 0
    return-void
.end method

.method public static synthetic $r8$lambda$QF3Zii0dJAH3y66BbXSjKUI9p0o(Lorg/telegram/ui/LinkEditActivity;Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LinkEditActivity;->lambda$createView$6(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UvgZq6fKYdNHfc5NPoKaKR-PpzY(Lorg/telegram/ui/LinkEditActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/LinkEditActivity;->lambda$createView$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$Vdhk6mNHRpQyMAMf3r-75YrT35E(Lorg/telegram/ui/LinkEditActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/LinkEditActivity;->lambda$getThemeDescriptions$16()V

    return-void
.end method

.method public static synthetic $r8$lambda$_U2SbjHj9_FDOsvYmpEQFJZATOk(Lorg/telegram/ui/LinkEditActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/LinkEditActivity;->lambda$createView$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bWRgrOP74WGpii0v7x4bHP5rD9A(Lorg/telegram/ui/LinkEditActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/LinkEditActivity;->lambda$createView$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$fUSJ7HOGnQCC4Qb6r9ydMOncwoI(Lorg/telegram/ui/LinkEditActivity;[Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LinkEditActivity;->lambda$createView$3([Ljava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hq1ymIohu2YUBmvujhyeaCumSp4(Lorg/telegram/ui/LinkEditActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/LinkEditActivity;->onCreateClicked(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kRKVdBWoqZv9PqbKpSXCtO_rW7s(Lorg/telegram/ui/LinkEditActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LinkEditActivity;->lambda$onCreateClicked$12(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$njsI3Z27Ul1bgi7vckrY1z-8c7A(Lorg/telegram/ui/LinkEditActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LinkEditActivity;->lambda$onCreateClicked$15(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oYKslG3Hc8sH6Ej4Dq_mKaAUHfI(Lorg/telegram/ui/LinkEditActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LinkEditActivity;->lambda$onCreateClicked$13(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rFRKiSGXp9o7d-uA3A4TWaen7Fk(Lorg/telegram/ui/LinkEditActivity;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/LinkEditActivity;->lambda$createView$8(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$x7OzNDKui0VVR7mltmV9_nTkbQY(Lorg/telegram/ui/LinkEditActivity;ZII)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/LinkEditActivity;->lambda$createView$5(ZII)V

    return-void
.end method

.method public static synthetic $r8$lambda$y_7bBiiiWtlZLggvGiQCzuC3FRI(Lorg/telegram/ui/LinkEditActivity;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LinkEditActivity;->lambda$createView$9(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetbuttonLayout(Lorg/telegram/ui/LinkEditActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/LinkEditActivity;->buttonLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetignoreSet(Lorg/telegram/ui/LinkEditActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/LinkEditActivity;->ignoreSet:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetnameEditText(Lorg/telegram/ui/LinkEditActivity;)Landroid/widget/EditText;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/LinkEditActivity;->nameEditText:Landroid/widget/EditText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetscrollView(Lorg/telegram/ui/LinkEditActivity;)Lorg/telegram/ui/Components/SectionsScrollView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/LinkEditActivity;->scrollView:Lorg/telegram/ui/Components/SectionsScrollView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsubPriceView(Lorg/telegram/ui/LinkEditActivity;)Landroid/widget/TextView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/LinkEditActivity;->subPriceView:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetusesEditText(Lorg/telegram/ui/LinkEditActivity;)Landroid/widget/EditText;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/LinkEditActivity;->usesEditText:Landroid/widget/EditText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputfirstLayout(Lorg/telegram/ui/LinkEditActivity;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/LinkEditActivity;->firstLayout:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mchooseUses(Lorg/telegram/ui/LinkEditActivity;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/LinkEditActivity;->chooseUses(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mresetUses(Lorg/telegram/ui/LinkEditActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/LinkEditActivity;->resetUses()V

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 4

    .line 103
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    const/4 v0, -0x3

    .line 97
    iput v0, p0, Lorg/telegram/ui/LinkEditActivity;->shakeDp:I

    const/4 v0, 0x1

    .line 101
    iput-boolean v0, p0, Lorg/telegram/ui/LinkEditActivity;->firstLayout:Z

    .line 108
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/LinkEditActivity;->dispalyedDates:Ljava/util/ArrayList;

    const v1, 0x15180

    const v2, 0x93a80

    const/16 v3, 0xe10

    .line 109
    filled-new-array {v3, v1, v2}, [I

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/LinkEditActivity;->defaultDates:[I

    .line 110
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/LinkEditActivity;->dispalyedUses:Ljava/util/ArrayList;

    const/16 v1, 0xa

    const/16 v2, 0x64

    .line 111
    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/LinkEditActivity;->defaultUses:[I

    .line 104
    iput p1, p0, Lorg/telegram/ui/LinkEditActivity;->type:I

    .line 105
    iput-wide p2, p0, Lorg/telegram/ui/LinkEditActivity;->chatId:J

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/LinkEditActivity;)I
    .locals 0

    .line 67
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method private chooseDate(I)V
    .locals 13

    .line 854
    iget-object v0, p0, Lorg/telegram/ui/LinkEditActivity;->timeEditText:Landroid/widget/TextView;

    int-to-long v1, p1

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatDateAudio(JZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 857
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v0

    sub-int/2addr p1, v0

    .line 861
    iget-object v0, p0, Lorg/telegram/ui/LinkEditActivity;->dispalyedDates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    move v0, v3

    move v4, v0

    move v5, v4

    .line 862
    :goto_0
    iget-object v6, p0, Lorg/telegram/ui/LinkEditActivity;->defaultDates:[I

    array-length v7, v6

    const/4 v8, 0x1

    if-ge v0, v7, :cond_1

    if-nez v4, :cond_0

    .line 863
    aget v6, v6, v0

    if-ge p1, v6, :cond_0

    .line 864
    iget-object v4, p0, Lorg/telegram/ui/LinkEditActivity;->dispalyedDates:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v5, v0

    move v4, v8

    .line 868
    :cond_0
    iget-object v6, p0, Lorg/telegram/ui/LinkEditActivity;->dispalyedDates:Ljava/util/ArrayList;

    iget-object v7, p0, Lorg/telegram/ui/LinkEditActivity;->defaultDates:[I

    aget v7, v7, v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-nez v4, :cond_2

    .line 871
    iget-object v0, p0, Lorg/telegram/ui/LinkEditActivity;->dispalyedDates:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 872
    iget-object v0, p0, Lorg/telegram/ui/LinkEditActivity;->defaultDates:[I

    array-length v5, v0

    .line 874
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/LinkEditActivity;->dispalyedDates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v4, v0, 0x1

    new-array v6, v4, [Ljava/lang/String;

    move v7, v3

    :goto_1
    if-ge v7, v4, :cond_9

    if-ne v7, v0, :cond_3

    .line 877
    sget v9, Lorg/telegram/messenger/R$string;->NoLimit:I

    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v7

    goto/16 :goto_2

    .line 879
    :cond_3
    iget-object v9, p0, Lorg/telegram/ui/LinkEditActivity;->dispalyedDates:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-object v10, p0, Lorg/telegram/ui/LinkEditActivity;->defaultDates:[I

    aget v10, v10, v3

    if-ne v9, v10, :cond_4

    .line 880
    const-string v9, "Hours"

    new-array v10, v3, [Ljava/lang/Object;

    invoke-static {v9, v8, v10}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v7

    goto/16 :goto_2

    .line 881
    :cond_4
    iget-object v9, p0, Lorg/telegram/ui/LinkEditActivity;->dispalyedDates:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-object v10, p0, Lorg/telegram/ui/LinkEditActivity;->defaultDates:[I

    aget v10, v10, v8

    if-ne v9, v10, :cond_5

    .line 882
    const-string v9, "Days"

    new-array v10, v3, [Ljava/lang/Object;

    invoke-static {v9, v8, v10}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v7

    goto :goto_2

    .line 883
    :cond_5
    iget-object v9, p0, Lorg/telegram/ui/LinkEditActivity;->dispalyedDates:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-object v10, p0, Lorg/telegram/ui/LinkEditActivity;->defaultDates:[I

    const/4 v11, 0x2

    aget v10, v10, v11

    if-ne v9, v10, :cond_6

    .line 884
    const-string v9, "Weeks"

    new-array v10, v3, [Ljava/lang/Object;

    invoke-static {v9, v8, v10}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v7

    goto :goto_2

    :cond_6
    int-to-long v9, p1

    const-wide/32 v11, 0x15180

    cmp-long v11, v9, v11

    if-gez v11, :cond_7

    .line 887
    sget v9, Lorg/telegram/messenger/R$string;->MessageScheduleToday:I

    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v7

    goto :goto_2

    :cond_7
    const-wide/32 v11, 0x1dfe200

    cmp-long v9, v9, v11

    const-wide/16 v10, 0x3e8

    if-gez v9, :cond_8

    .line 889
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/messenger/LocaleController;->getFormatterScheduleDay()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v9

    mul-long/2addr v10, v1

    invoke-virtual {v9, v10, v11}, Lorg/telegram/messenger/time/FastDateFormat;->format(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v7

    goto :goto_2

    .line 891
    :cond_8
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/messenger/LocaleController;->getFormatterYear()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v9

    mul-long/2addr v10, v1

    invoke-virtual {v9, v10, v11}, Lorg/telegram/messenger/time/FastDateFormat;->format(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v7

    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 896
    :cond_9
    iget-object p1, p0, Lorg/telegram/ui/LinkEditActivity;->timeChooseView:Lorg/telegram/ui/Components/SlideChooseView;

    invoke-virtual {p1, v5, v6}, Lorg/telegram/ui/Components/SlideChooseView;->setOptions(I[Ljava/lang/String;)V

    return-void
.end method

.method private chooseUses(I)V
    .locals 6

    .line 826
    iget-object v0, p0, Lorg/telegram/ui/LinkEditActivity;->dispalyedUses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    move v3, v2

    .line 827
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/LinkEditActivity;->defaultUses:[I

    array-length v5, v4

    if-ge v1, v5, :cond_2

    if-nez v2, :cond_1

    .line 828
    aget v4, v4, v1

    if-gt p1, v4, :cond_1

    if-eq p1, v4, :cond_0

    .line 830
    iget-object v2, p0, Lorg/telegram/ui/LinkEditActivity;->dispalyedUses:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v2, 0x1

    move v3, v1

    .line 836
    :cond_1
    iget-object v4, p0, Lorg/telegram/ui/LinkEditActivity;->dispalyedUses:Ljava/util/ArrayList;

    iget-object v5, p0, Lorg/telegram/ui/LinkEditActivity;->defaultUses:[I

    aget v5, v5, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-nez v2, :cond_3

    .line 839
    iget-object v1, p0, Lorg/telegram/ui/LinkEditActivity;->dispalyedUses:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 840
    iget-object p1, p0, Lorg/telegram/ui/LinkEditActivity;->defaultUses:[I

    array-length v3, p1

    .line 842
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/LinkEditActivity;->dispalyedUses:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 v1, p1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    :goto_1
    if-ge v0, v1, :cond_5

    if-ne v0, p1, :cond_4

    .line 845
    sget v4, Lorg/telegram/messenger/R$string;->NoLimit:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    goto :goto_2

    .line 847
    :cond_4
    iget-object v4, p0, Lorg/telegram/ui/LinkEditActivity;->dispalyedUses:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 850
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/LinkEditActivity;->usesChooseView:Lorg/telegram/ui/Components/SlideChooseView;

    invoke-virtual {p1, v3, v2}, Lorg/telegram/ui/Components/SlideChooseView;->setOptions(I[Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$createView$0(Landroid/view/View;)V
    .locals 3

    .line 337
    iget-object v0, p0, Lorg/telegram/ui/LinkEditActivity;->subCell:Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/TextCheckCell;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    iget-object p1, p0, Lorg/telegram/ui/LinkEditActivity;->subCell:Lorg/telegram/ui/Cells/TextCheckCell;

    iget v0, p0, Lorg/telegram/ui/LinkEditActivity;->shakeDp:I

    neg-int v0, v0

    iput v0, p0, Lorg/telegram/ui/LinkEditActivity;->shakeDp:I

    int-to-float v0, v0

    invoke-static {p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->shakeViewSpring(Landroid/view/View;F)V

    return-void

    .line 342
    :cond_0
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 343
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextCheckCell;->isChecked()Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    if-nez v0, :cond_1

    .line 344
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundChecked:I

    goto :goto_0

    :cond_1
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundUnchecked:I

    :goto_0
    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lorg/telegram/ui/Cells/TextCheckCell;->setBackgroundColorAnimated(ZI)V

    .line 345
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    .line 346
    invoke-direct {p0, v0}, Lorg/telegram/ui/LinkEditActivity;->setUsesVisible(Z)V

    const/4 v0, 0x1

    .line 347
    iput-boolean v0, p0, Lorg/telegram/ui/LinkEditActivity;->firstLayout:Z

    .line 349
    iget-object v0, p0, Lorg/telegram/ui/LinkEditActivity;->subCell:Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v0, :cond_3

    .line 350
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextCheckCell;->isChecked()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 351
    iget-object p1, p0, Lorg/telegram/ui/LinkEditActivity;->subCell:Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    .line 352
    iget-object p1, p0, Lorg/telegram/ui/LinkEditActivity;->subCell:Lorg/telegram/ui/Cells/TextCheckCell;

    sget v0, Lorg/telegram/messenger/R$drawable;->permission_locked:I

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->setCheckBoxIcon(I)V

    .line 353
    iget-object p1, p0, Lorg/telegram/ui/LinkEditActivity;->subEditPriceCell:Lorg/telegram/ui/Cells/EditTextCell;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 354
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/LinkEditActivity;->inviteToEdit:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    if-nez p1, :cond_3

    .line 355
    iget-object p1, p0, Lorg/telegram/ui/LinkEditActivity;->subCell:Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->setCheckBoxIcon(I)V

    :cond_3
    return-void
.end method

.method private synthetic lambda$createView$1()V
    .locals 1

    .line 394
    iget-object v0, p0, Lorg/telegram/ui/LinkEditActivity;->subEditPriceCell:Lorg/telegram/ui/Cells/EditTextCell;

    iget-object v0, v0, Lorg/telegram/ui/Cells/EditTextCell;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 395
    iget-object v0, p0, Lorg/telegram/ui/LinkEditActivity;->subEditPriceCell:Lorg/telegram/ui/Cells/EditTextCell;

    iget-object v0, v0, Lorg/telegram/ui/Cells/EditTextCell;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    return-void
.end method

.method private synthetic lambda$createView$10(Landroid/view/View;)V
    .locals 2

    .line 603
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 604
    sget v0, Lorg/telegram/messenger/R$string;->RevokeAlert:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 605
    sget v0, Lorg/telegram/messenger/R$string;->RevokeLink:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 606
    sget v0, Lorg/telegram/messenger/R$string;->RevokeButton:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/LinkEditActivity$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0}, Lorg/telegram/ui/LinkEditActivity$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/LinkEditActivity;)V

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 610
    sget v0, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 611
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method private synthetic lambda$createView$2()V
    .locals 1

    .line 401
    iget-object v0, p0, Lorg/telegram/ui/LinkEditActivity;->subEditPriceCell:Lorg/telegram/ui/Cells/EditTextCell;

    iget-object v0, v0, Lorg/telegram/ui/Cells/EditTextCell;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 402
    iget-object v0, p0, Lorg/telegram/ui/LinkEditActivity;->subEditPriceCell:Lorg/telegram/ui/Cells/EditTextCell;

    iget-object v0, v0, Lorg/telegram/ui/Cells/EditTextCell;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$createView$3([Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 3

    .line 377
    iget-object v0, p0, Lorg/telegram/ui/LinkEditActivity;->inviteToEdit:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    if-eqz v0, :cond_0

    return-void

    .line 380
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/LinkEditActivity;->approveCell:Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/TextCheckCell;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 381
    iget-object p1, p0, Lorg/telegram/ui/LinkEditActivity;->approveCell:Lorg/telegram/ui/Cells/TextCheckCell;

    iget p2, p0, Lorg/telegram/ui/LinkEditActivity;->shakeDp:I

    neg-int p2, p2

    iput p2, p0, Lorg/telegram/ui/LinkEditActivity;->shakeDp:I

    int-to-float p2, p2

    invoke-static {p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->shakeViewSpring(Landroid/view/View;F)V

    return-void

    .line 385
    :cond_1
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 386
    invoke-virtual {p2}, Lorg/telegram/ui/Cells/TextCheckCell;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    .line 387
    iget-object v0, p0, Lorg/telegram/ui/LinkEditActivity;->subEditPriceCell:Lorg/telegram/ui/Cells/EditTextCell;

    invoke-virtual {p2}, Lorg/telegram/ui/Cells/TextCheckCell;->isChecked()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 388
    aget-object v0, p1, v2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 389
    invoke-virtual {p2}, Lorg/telegram/ui/Cells/TextCheckCell;->isChecked()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 390
    iget-object p2, p0, Lorg/telegram/ui/LinkEditActivity;->approveCell:Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {p2, v2}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    .line 391
    iget-object p2, p0, Lorg/telegram/ui/LinkEditActivity;->approveCell:Lorg/telegram/ui/Cells/TextCheckCell;

    sget v0, Lorg/telegram/messenger/R$drawable;->permission_locked:I

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->setCheckBoxIcon(I)V

    .line 392
    iget-object p2, p0, Lorg/telegram/ui/LinkEditActivity;->approveHintCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    sget v0, Lorg/telegram/messenger/R$string;->ApproveNewMembersDescriptionFrozen:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 393
    new-instance p2, Lorg/telegram/ui/LinkEditActivity$$ExternalSyntheticLambda10;

    invoke-direct {p2, p0}, Lorg/telegram/ui/LinkEditActivity$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/LinkEditActivity;)V

    aput-object p2, p1, v2

    const-wide/16 v0, 0x3c

    invoke-static {p2, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void

    .line 398
    :cond_3
    iget-object p2, p0, Lorg/telegram/ui/LinkEditActivity;->approveCell:Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {p2, v2}, Lorg/telegram/ui/Cells/TextCheckCell;->setCheckBoxIcon(I)V

    .line 399
    iget-object p2, p0, Lorg/telegram/ui/LinkEditActivity;->approveHintCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    sget v0, Lorg/telegram/messenger/R$string;->ApproveNewMembersDescription:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 400
    new-instance p2, Lorg/telegram/ui/LinkEditActivity$$ExternalSyntheticLambda11;

    invoke-direct {p2, p0}, Lorg/telegram/ui/LinkEditActivity$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/LinkEditActivity;)V

    aput-object p2, p1, v2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$createView$4()V
    .locals 2

    .line 457
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->RequireMonthlyFeeInfoLink:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$createView$5(ZII)V
    .locals 0

    .line 474
    invoke-direct {p0, p2}, Lorg/telegram/ui/LinkEditActivity;->chooseDate(I)V

    return-void
.end method

.method private synthetic lambda$createView$6(Landroid/content/Context;Landroid/view/View;)V
    .locals 6

    .line 474
    sget p2, Lorg/telegram/messenger/R$string;->ExpireAfter:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget p2, Lorg/telegram/messenger/R$string;->SetTimeLimit:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lorg/telegram/ui/LinkEditActivity$$ExternalSyntheticLambda12;

    invoke-direct {v5, p0}, Lorg/telegram/ui/LinkEditActivity$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/LinkEditActivity;)V

    const-wide/16 v3, -0x1

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Components/AlertsCreator;->createDatePickerDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerDelegate;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    return-void
.end method

.method private synthetic lambda$createView$7(I)V
    .locals 3

    .line 477
    iget-object v0, p0, Lorg/telegram/ui/LinkEditActivity;->dispalyedDates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 478
    iget-object v0, p0, Lorg/telegram/ui/LinkEditActivity;->dispalyedDates:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v0

    add-int/2addr p1, v0

    int-to-long v0, p1

    .line 479
    iget-object p1, p0, Lorg/telegram/ui/LinkEditActivity;->timeEditText:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatDateAudio(JZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 481
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/LinkEditActivity;->timeEditText:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic lambda$createView$8(I)V
    .locals 2

    .line 496
    iget-object v0, p0, Lorg/telegram/ui/LinkEditActivity;->usesEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    const/4 v0, 0x1

    .line 497
    iput-boolean v0, p0, Lorg/telegram/ui/LinkEditActivity;->ignoreSet:Z

    .line 498
    iget-object v0, p0, Lorg/telegram/ui/LinkEditActivity;->dispalyedUses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 499
    iget-object v0, p0, Lorg/telegram/ui/LinkEditActivity;->usesEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lorg/telegram/ui/LinkEditActivity;->dispalyedUses:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 501
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/LinkEditActivity;->usesEditText:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    const/4 p1, 0x0

    .line 503
    iput-boolean p1, p0, Lorg/telegram/ui/LinkEditActivity;->ignoreSet:Z

    return-void
.end method

.method private synthetic lambda$createView$9(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 607
    iget-object p1, p0, Lorg/telegram/ui/LinkEditActivity;->callback:Lorg/telegram/ui/LinkEditActivity$Callback;

    iget-object p2, p0, Lorg/telegram/ui/LinkEditActivity;->inviteToEdit:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    invoke-interface {p1, p2}, Lorg/telegram/ui/LinkEditActivity$Callback;->revokeLink(Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;)V

    .line 608
    invoke-virtual {p0}, Lorg/telegram/ui/LinkEditActivity;->finishFragment()V

    return-void
.end method

.method private synthetic lambda$getThemeDescriptions$16()V
    .locals 4

    .line 996
    iget-object v0, p0, Lorg/telegram/ui/LinkEditActivity;->dividerUses:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    if-eqz v0, :cond_1

    .line 997
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 998
    iget-object v0, p0, Lorg/telegram/ui/LinkEditActivity;->buttonTextView:Landroid/widget/TextView;

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButtonPressed:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1000
    iget-object v0, p0, Lorg/telegram/ui/LinkEditActivity;->usesEditText:Landroid/widget/EditText;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1001
    iget-object v0, p0, Lorg/telegram/ui/LinkEditActivity;->usesEditText:Landroid/widget/EditText;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 1003
    iget-object v0, p0, Lorg/telegram/ui/LinkEditActivity;->timeEditText:Landroid/widget/TextView;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1004
    iget-object v0, p0, Lorg/telegram/ui/LinkEditActivity;->timeEditText:Landroid/widget/TextView;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 1005
    iget-object v0, p0, Lorg/telegram/ui/LinkEditActivity;->buttonTextView:Landroid/widget/TextView;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_buttonText:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1006
    iget-object v0, p0, Lorg/telegram/ui/LinkEditActivity;->revokeLink:Lorg/telegram/ui/Cells/TextSettingsCell;

    if-eqz v0, :cond_0

    .line 1007
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextColor(I)V

    .line 1010
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/LinkEditActivity;->createTextView:Landroid/widget/TextView;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultTitle:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1011
    iget-object v0, p0, Lorg/telegram/ui/LinkEditActivity;->nameEditText:Landroid/widget/EditText;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1012
    iget-object v0, p0, Lorg/telegram/ui/LinkEditActivity;->nameEditText:Landroid/widget/EditText;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHintTextColor(I)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$onCreateClicked$12(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 1

    const/4 v0, 0x0

    .line 722
    iput-boolean v0, p0, Lorg/telegram/ui/LinkEditActivity;->loading:Z

    .line 723
    iget-object v0, p0, Lorg/telegram/ui/LinkEditActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    if-eqz v0, :cond_0

    .line 724
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    :cond_0
    if-nez p1, :cond_2

    .line 727
    iget-object p1, p0, Lorg/telegram/ui/LinkEditActivity;->callback:Lorg/telegram/ui/LinkEditActivity$Callback;

    if-eqz p1, :cond_1

    .line 728
    invoke-interface {p1, p2}, Lorg/telegram/ui/LinkEditActivity$Callback;->onLinkCreated(Lorg/telegram/tgnet/TLObject;)V

    .line 730
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/LinkEditActivity;->finishFragment()V

    return-void

    .line 732
    :cond_2
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/app/Dialog;

    return-void
.end method

.method private synthetic lambda$onCreateClicked$13(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 721
    new-instance v0, Lorg/telegram/ui/LinkEditActivity$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/LinkEditActivity$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/LinkEditActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onCreateClicked$14(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 1

    const/4 v0, 0x0

    .line 801
    iput-boolean v0, p0, Lorg/telegram/ui/LinkEditActivity;->loading:Z

    .line 802
    iget-object v0, p0, Lorg/telegram/ui/LinkEditActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    if-eqz v0, :cond_0

    .line 803
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    :cond_0
    if-nez p1, :cond_3

    .line 806
    instance-of p1, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_exportedChatInvite;

    if-eqz p1, :cond_1

    .line 807
    move-object p1, p2

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_messages_exportedChatInvite;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$messages_ExportedChatInvite;->invite:Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    iput-object p1, p0, Lorg/telegram/ui/LinkEditActivity;->inviteToEdit:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    .line 809
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/LinkEditActivity;->callback:Lorg/telegram/ui/LinkEditActivity$Callback;

    if-eqz p1, :cond_2

    .line 810
    iget-object v0, p0, Lorg/telegram/ui/LinkEditActivity;->inviteToEdit:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    invoke-interface {p1, v0, p2}, Lorg/telegram/ui/LinkEditActivity$Callback;->onLinkEdited(Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;Lorg/telegram/tgnet/TLObject;)V

    .line 812
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/LinkEditActivity;->finishFragment()V

    return-void

    .line 814
    :cond_3
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/app/Dialog;

    return-void
.end method

.method private synthetic lambda$onCreateClicked$15(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 800
    new-instance v0, Lorg/telegram/ui/LinkEditActivity$$ExternalSyntheticLambda17;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/LinkEditActivity$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/LinkEditActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private onCreateClicked(Landroid/view/View;)V
    .locals 10

    .line 657
    iget-boolean p1, p0, Lorg/telegram/ui/LinkEditActivity;->loading:Z

    if-eqz p1, :cond_0

    goto/16 :goto_a

    .line 661
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/LinkEditActivity;->timeChooseView:Lorg/telegram/ui/Components/SlideChooseView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SlideChooseView;->getSelectedIndex()I

    move-result p1

    .line 662
    iget-object v0, p0, Lorg/telegram/ui/LinkEditActivity;->dispalyedDates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/LinkEditActivity;->dispalyedDates:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-gez p1, :cond_1

    .line 663
    iget-object p1, p0, Lorg/telegram/ui/LinkEditActivity;->timeEditText:Landroid/widget/TextView;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->shakeView(Landroid/view/View;)V

    .line 664
    invoke-static {}, Lcom/exteragram/messenger/utils/system/VibratorUtils;->vibrate()V

    return-void

    .line 669
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/LinkEditActivity;->subCell:Lorg/telegram/ui/Cells/TextCheckCell;

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextCheckCell;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 671
    :try_start_0
    iget-object p1, p0, Lorg/telegram/ui/LinkEditActivity;->subEditPriceCell:Lorg/telegram/ui/Cells/EditTextCell;

    iget-object p1, p1, Lorg/telegram/ui/Cells/EditTextCell;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 673
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_2
    move-wide v2, v0

    .line 677
    :goto_0
    iget p1, p0, Lorg/telegram/ui/LinkEditActivity;->type:I

    const-wide/16 v4, 0x1f4

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-nez p1, :cond_b

    .line 678
    iget-object p1, p0, Lorg/telegram/ui/LinkEditActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    if-eqz p1, :cond_3

    .line 679
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    .line 681
    :cond_3
    iput-boolean v8, p0, Lorg/telegram/ui/LinkEditActivity;->loading:Z

    .line 682
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {p1, v9, v6}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lorg/telegram/ui/LinkEditActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 683
    invoke-virtual {p1, v4, v5}, Lorg/telegram/ui/ActionBar/AlertDialog;->showDelayed(J)V

    .line 684
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_messages_exportChatInvite;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_messages_exportChatInvite;-><init>()V

    .line 685
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-wide v5, p0, Lorg/telegram/ui/LinkEditActivity;->chatId:J

    neg-long v5, v5

    invoke-virtual {v4, v5, v6}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v4

    iput-object v4, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_exportChatInvite;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 686
    iput-boolean v7, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_exportChatInvite;->legacy_revoke_permanent:Z

    .line 688
    iget-object v4, p0, Lorg/telegram/ui/LinkEditActivity;->timeChooseView:Lorg/telegram/ui/Components/SlideChooseView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/SlideChooseView;->getSelectedIndex()I

    move-result v4

    .line 689
    iget v5, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_exportChatInvite;->flags:I

    or-int/2addr v5, v8

    iput v5, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_exportChatInvite;->flags:I

    .line 690
    iget-object v5, p0, Lorg/telegram/ui/LinkEditActivity;->dispalyedDates:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 691
    iget-object v5, p0, Lorg/telegram/ui/LinkEditActivity;->dispalyedDates:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_exportChatInvite;->expire_date:I

    goto :goto_1

    .line 693
    :cond_4
    iput v7, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_exportChatInvite;->expire_date:I

    .line 696
    :goto_1
    iget-object v4, p0, Lorg/telegram/ui/LinkEditActivity;->usesChooseView:Lorg/telegram/ui/Components/SlideChooseView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/SlideChooseView;->getSelectedIndex()I

    move-result v4

    .line 697
    iget v5, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_exportChatInvite;->flags:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_exportChatInvite;->flags:I

    .line 698
    iget-object v5, p0, Lorg/telegram/ui/LinkEditActivity;->dispalyedUses:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 699
    iget-object v5, p0, Lorg/telegram/ui/LinkEditActivity;->dispalyedUses:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_exportChatInvite;->usage_limit:I

    goto :goto_2

    .line 701
    :cond_5
    iput v7, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_exportChatInvite;->usage_limit:I

    .line 704
    :goto_2
    iget-object v4, p0, Lorg/telegram/ui/LinkEditActivity;->approveCell:Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lorg/telegram/ui/Cells/TextCheckCell;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_3

    :cond_6
    move v8, v7

    :goto_3
    iput-boolean v8, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_exportChatInvite;->request_needed:Z

    if-eqz v8, :cond_7

    .line 706
    iput v7, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_exportChatInvite;->usage_limit:I

    .line 709
    :cond_7
    iget-object v4, p0, Lorg/telegram/ui/LinkEditActivity;->nameEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_exportChatInvite;->title:Ljava/lang/String;

    .line 710
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 711
    iget v4, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_exportChatInvite;->flags:I

    or-int/lit8 v4, v4, 0x10

    iput v4, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_exportChatInvite;->flags:I

    :cond_8
    cmp-long v0, v2, v0

    if-lez v0, :cond_a

    .line 715
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_exportChatInvite;->flags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_exportChatInvite;->flags:I

    .line 716
    new-instance v0, Lorg/telegram/tgnet/tl/TL_stars$TL_starsSubscriptionPricing;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stars$TL_starsSubscriptionPricing;-><init>()V

    iput-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_exportChatInvite;->subscription_pricing:Lorg/telegram/tgnet/tl/TL_stars$TL_starsSubscriptionPricing;

    .line 717
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/tgnet/ConnectionsManager;->isTestBackend()Z

    move-result v1

    if-eqz v1, :cond_9

    const/16 v1, 0x12c

    goto :goto_4

    :cond_9
    const v1, 0x278d00

    :goto_4
    iput v1, v0, Lorg/telegram/tgnet/tl/TL_stars$TL_starsSubscriptionPricing;->period:I

    .line 718
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_exportChatInvite;->subscription_pricing:Lorg/telegram/tgnet/tl/TL_stars$TL_starsSubscriptionPricing;

    iput-wide v2, v0, Lorg/telegram/tgnet/tl/TL_stars$TL_starsSubscriptionPricing;->amount:J

    .line 721
    :cond_a
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/LinkEditActivity$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0}, Lorg/telegram/ui/LinkEditActivity$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/LinkEditActivity;)V

    invoke-virtual {v0, p1, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto/16 :goto_a

    :cond_b
    if-ne p1, v8, :cond_17

    .line 736
    iget-object p1, p0, Lorg/telegram/ui/LinkEditActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    if-eqz p1, :cond_c

    .line 737
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    .line 740
    :cond_c
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_messages_editExportedChatInvite;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_messages_editExportedChatInvite;-><init>()V

    .line 741
    iget-object v0, p0, Lorg/telegram/ui/LinkEditActivity;->inviteToEdit:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->link:Ljava/lang/String;

    iput-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_editExportedChatInvite;->link:Ljava/lang/String;

    .line 742
    iput-boolean v7, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_editExportedChatInvite;->revoked:Z

    .line 743
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/LinkEditActivity;->chatId:J

    neg-long v1, v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v0

    iput-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_editExportedChatInvite;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 747
    iget-object v0, p0, Lorg/telegram/ui/LinkEditActivity;->timeChooseView:Lorg/telegram/ui/Components/SlideChooseView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SlideChooseView;->getSelectedIndex()I

    move-result v0

    .line 748
    iget-object v1, p0, Lorg/telegram/ui/LinkEditActivity;->dispalyedDates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_d

    .line 749
    iget v1, p0, Lorg/telegram/ui/LinkEditActivity;->currentInviteDate:I

    iget-object v2, p0, Lorg/telegram/ui/LinkEditActivity;->dispalyedDates:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v1, v2, :cond_e

    .line 750
    iget v1, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_editExportedChatInvite;->flags:I

    or-int/2addr v1, v8

    iput v1, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_editExportedChatInvite;->flags:I

    .line 751
    iget-object v1, p0, Lorg/telegram/ui/LinkEditActivity;->dispalyedDates:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_editExportedChatInvite;->expire_date:I

    :goto_5
    move v0, v8

    goto :goto_6

    .line 755
    :cond_d
    iget v0, p0, Lorg/telegram/ui/LinkEditActivity;->currentInviteDate:I

    if-eqz v0, :cond_e

    .line 756
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_editExportedChatInvite;->flags:I

    or-int/2addr v0, v8

    iput v0, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_editExportedChatInvite;->flags:I

    .line 757
    iput v7, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_editExportedChatInvite;->expire_date:I

    goto :goto_5

    :cond_e
    move v0, v7

    .line 762
    :goto_6
    iget-object v1, p0, Lorg/telegram/ui/LinkEditActivity;->usesChooseView:Lorg/telegram/ui/Components/SlideChooseView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/SlideChooseView;->getSelectedIndex()I

    move-result v1

    .line 764
    iget-object v2, p0, Lorg/telegram/ui/LinkEditActivity;->dispalyedUses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_f

    .line 765
    iget-object v2, p0, Lorg/telegram/ui/LinkEditActivity;->dispalyedUses:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 766
    iget-object v2, p0, Lorg/telegram/ui/LinkEditActivity;->inviteToEdit:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->usage_limit:I

    if-eq v2, v1, :cond_10

    .line 767
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_editExportedChatInvite;->flags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_editExportedChatInvite;->flags:I

    .line 768
    iput v1, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_editExportedChatInvite;->usage_limit:I

    goto :goto_7

    .line 772
    :cond_f
    iget-object v1, p0, Lorg/telegram/ui/LinkEditActivity;->inviteToEdit:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->usage_limit:I

    if-eqz v1, :cond_10

    .line 773
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_editExportedChatInvite;->flags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_editExportedChatInvite;->flags:I

    .line 774
    iput v7, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_editExportedChatInvite;->usage_limit:I

    :goto_7
    move v0, v8

    .line 779
    :cond_10
    iget-object v1, p0, Lorg/telegram/ui/LinkEditActivity;->inviteToEdit:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->request_needed:Z

    iget-object v2, p0, Lorg/telegram/ui/LinkEditActivity;->approveCell:Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v2, :cond_11

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/TextCheckCell;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_11

    move v2, v8

    goto :goto_8

    :cond_11
    move v2, v7

    :goto_8
    if-eq v1, v2, :cond_14

    .line 780
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_editExportedChatInvite;->flags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_editExportedChatInvite;->flags:I

    .line 781
    iget-object v0, p0, Lorg/telegram/ui/LinkEditActivity;->approveCell:Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/TextCheckCell;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_12

    move v0, v8

    goto :goto_9

    :cond_12
    move v0, v7

    :goto_9
    iput-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_editExportedChatInvite;->request_needed:Z

    if-eqz v0, :cond_13

    .line 783
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_editExportedChatInvite;->flags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_editExportedChatInvite;->flags:I

    .line 784
    iput v7, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_editExportedChatInvite;->usage_limit:I

    :cond_13
    move v0, v8

    .line 789
    :cond_14
    iget-object v1, p0, Lorg/telegram/ui/LinkEditActivity;->nameEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 790
    iget-object v2, p0, Lorg/telegram/ui/LinkEditActivity;->inviteToEdit:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->title:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 791
    iput-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_editExportedChatInvite;->title:Ljava/lang/String;

    .line 792
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_editExportedChatInvite;->flags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_editExportedChatInvite;->flags:I

    move v0, v8

    :cond_15
    if-eqz v0, :cond_16

    .line 797
    iput-boolean v8, p0, Lorg/telegram/ui/LinkEditActivity;->loading:Z

    .line 798
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lorg/telegram/ui/LinkEditActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 799
    invoke-virtual {v0, v4, v5}, Lorg/telegram/ui/ActionBar/AlertDialog;->showDelayed(J)V

    .line 800
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/LinkEditActivity$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0}, Lorg/telegram/ui/LinkEditActivity$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/LinkEditActivity;)V

    invoke-virtual {v0, p1, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_a

    .line 818
    :cond_16
    invoke-virtual {p0}, Lorg/telegram/ui/LinkEditActivity;->finishFragment()V

    :cond_17
    :goto_a
    return-void
.end method

.method private resetDates()V
    .locals 5

    .line 900
    iget-object v0, p0, Lorg/telegram/ui/LinkEditActivity;->dispalyedDates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    move v1, v0

    .line 901
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/LinkEditActivity;->defaultDates:[I

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 902
    iget-object v3, p0, Lorg/telegram/ui/LinkEditActivity;->dispalyedDates:Ljava/util/ArrayList;

    aget v2, v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 904
    :cond_0
    const-string v1, "Hours"

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x1

    invoke-static {v1, v3, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Days"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "Weeks"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v4, v3, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/R$string;->NoLimit:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v1, v2, v0, v3}, [Ljava/lang/String;

    move-result-object v0

    .line 905
    iget-object v1, p0, Lorg/telegram/ui/LinkEditActivity;->timeChooseView:Lorg/telegram/ui/Components/SlideChooseView;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, Lorg/telegram/ui/Components/SlideChooseView;->setOptions(I[Ljava/lang/String;)V

    return-void
.end method

.method private resetUses()V
    .locals 4

    .line 913
    iget-object v0, p0, Lorg/telegram/ui/LinkEditActivity;->dispalyedUses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 914
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/LinkEditActivity;->defaultUses:[I

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 915
    iget-object v2, p0, Lorg/telegram/ui/LinkEditActivity;->dispalyedUses:Ljava/util/ArrayList;

    aget v1, v1, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 917
    :cond_0
    sget v0, Lorg/telegram/messenger/R$string;->NoLimit:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    const-string v2, "10"

    const-string v3, "100"

    filled-new-array {v1, v2, v3, v0}, [Ljava/lang/String;

    move-result-object v0

    .line 918
    iget-object v1, p0, Lorg/telegram/ui/LinkEditActivity;->usesChooseView:Lorg/telegram/ui/Components/SlideChooseView;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, Lorg/telegram/ui/Components/SlideChooseView;->setOptions(I[Ljava/lang/String;)V

    return-void
.end method

.method private setUsesVisible(Z)V
    .locals 4

    .line 969
    iget-object v0, p0, Lorg/telegram/ui/LinkEditActivity;->usesHeaderCell:Lorg/telegram/ui/Cells/HeaderCell;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 970
    iget-object v0, p0, Lorg/telegram/ui/LinkEditActivity;->usesChooseView:Lorg/telegram/ui/Components/SlideChooseView;

    if-eqz p1, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 971
    iget-object v0, p0, Lorg/telegram/ui/LinkEditActivity;->usesEditText:Landroid/widget/EditText;

    if-eqz p1, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    move v3, v1

    :goto_2
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 972
    iget-object v0, p0, Lorg/telegram/ui/LinkEditActivity;->dividerUses:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    if-eqz p1, :cond_3

    move v1, v2

    :cond_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 30

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 123
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v3, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 124
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 125
    iget v0, v1, Lorg/telegram/ui/LinkEditActivity;->type:I

    if-nez v0, :cond_0

    .line 126
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v3, Lorg/telegram/messenger/R$string;->NewLink:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    if-ne v0, v8, :cond_1

    .line 128
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v3, Lorg/telegram/messenger/R$string;->EditLink:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 130
    :cond_1
    :goto_0
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v3, Lorg/telegram/ui/LinkEditActivity$1;

    invoke-direct {v3, v1}, Lorg/telegram/ui/LinkEditActivity$1;-><init>(Lorg/telegram/ui/LinkEditActivity;)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 140
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/LinkEditActivity;->createTextView:Landroid/widget/TextView;

    .line 141
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 142
    iget-object v0, v1, Lorg/telegram/ui/LinkEditActivity;->createTextView:Landroid/widget/TextView;

    const/16 v9, 0x10

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 143
    iget-object v0, v1, Lorg/telegram/ui/LinkEditActivity;->createTextView:Landroid/widget/TextView;

    new-instance v3, Lorg/telegram/ui/LinkEditActivity$$ExternalSyntheticLambda1;

    invoke-direct {v3, v1}, Lorg/telegram/ui/LinkEditActivity$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/LinkEditActivity;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    iget-object v0, v1, Lorg/telegram/ui/LinkEditActivity;->createTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 145
    iget v0, v1, Lorg/telegram/ui/LinkEditActivity;->type:I

    if-nez v0, :cond_2

    .line 146
    iget-object v0, v1, Lorg/telegram/ui/LinkEditActivity;->createTextView:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->CreateLinkHeader:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    if-ne v0, v8, :cond_3

    .line 148
    iget-object v0, v1, Lorg/telegram/ui/LinkEditActivity;->createTextView:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->SaveLinkHeader:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    :cond_3
    :goto_1
    iget-object v0, v1, Lorg/telegram/ui/LinkEditActivity;->createTextView:Landroid/widget/TextView;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultTitle:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 151
    iget-object v0, v1, Lorg/telegram/ui/LinkEditActivity;->createTextView:Landroid/widget/TextView;

    const/high16 v3, 0x41600000    # 14.0f

    invoke-virtual {v0, v8, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 152
    iget-object v0, v1, Lorg/telegram/ui/LinkEditActivity;->createTextView:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 153
    iget-object v0, v1, Lorg/telegram/ui/LinkEditActivity;->createTextView:Landroid/widget/TextView;

    const/high16 v4, 0x41900000    # 18.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/high16 v6, 0x41000000    # 8.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v0, v5, v7, v4, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 154
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->getOccupyStatusBar()Z

    move-result v0

    const/4 v10, 0x0

    if-eqz v0, :cond_4

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    div-int/2addr v0, v4

    goto :goto_2

    :cond_4
    move v0, v10

    .line 155
    :goto_2
    iget-object v4, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v5, v1, Lorg/telegram/ui/LinkEditActivity;->createTextView:Landroid/widget/TextView;

    int-to-float v15, v0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v11, -0x2

    const/high16 v12, -0x40000000    # -2.0f

    const v13, 0x800015

    const/4 v14, 0x0

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 157
    new-instance v11, Lorg/telegram/ui/LinkEditActivity$2;

    invoke-direct {v11, v1, v2}, Lorg/telegram/ui/LinkEditActivity$2;-><init>(Lorg/telegram/ui/LinkEditActivity;Landroid/content/Context;)V

    .line 196
    new-instance v0, Lorg/telegram/ui/Components/SectionsScrollView;

    iget-object v4, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v2, v11, v4}, Lorg/telegram/ui/Components/SectionsScrollView;-><init>(Landroid/content/Context;Landroid/widget/LinearLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v1, Lorg/telegram/ui/LinkEditActivity;->scrollView:Lorg/telegram/ui/Components/SectionsScrollView;

    .line 197
    iget-object v4, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v4, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setAdaptiveBackground(Lorg/telegram/ui/Components/SectionsScrollView;)V

    .line 198
    new-instance v12, Lorg/telegram/ui/LinkEditActivity$3;

    invoke-direct {v12, v1, v2}, Lorg/telegram/ui/LinkEditActivity$3;-><init>(Lorg/telegram/ui/LinkEditActivity;Landroid/content/Context;)V

    .line 290
    iput-object v12, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 292
    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    const-wide/16 v4, 0x1a4

    .line 293
    invoke-virtual {v0, v4, v5}, Landroid/animation/LayoutTransition;->setDuration(J)V

    .line 294
    sget-object v4, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const/4 v13, 0x2

    invoke-virtual {v0, v13, v4}, Landroid/animation/LayoutTransition;->setInterpolator(ILandroid/animation/TimeInterpolator;)V

    .line 295
    invoke-virtual {v0, v10, v4}, Landroid/animation/LayoutTransition;->setInterpolator(ILandroid/animation/TimeInterpolator;)V

    const/4 v5, 0x4

    .line 296
    invoke-virtual {v0, v5, v4}, Landroid/animation/LayoutTransition;->setInterpolator(ILandroid/animation/TimeInterpolator;)V

    .line 297
    invoke-virtual {v0, v8, v4}, Landroid/animation/LayoutTransition;->setInterpolator(ILandroid/animation/TimeInterpolator;)V

    const/4 v5, 0x3

    .line 298
    invoke-virtual {v0, v5, v4}, Landroid/animation/LayoutTransition;->setInterpolator(ILandroid/animation/TimeInterpolator;)V

    .line 299
    invoke-virtual {v11, v0}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 300
    invoke-virtual {v11, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v0, 0x41400000    # 12.0f

    .line 301
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/high16 v5, 0x40800000    # 4.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    const/high16 v6, 0x42b60000    # 91.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v11, v4, v5, v0, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 302
    iget-object v0, v1, Lorg/telegram/ui/LinkEditActivity;->scrollView:Lorg/telegram/ui/Components/SectionsScrollView;

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 304
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/LinkEditActivity;->buttonTextView:Landroid/widget/TextView;

    const v4, 0x3ca3d70a    # 0.02f

    const/high16 v5, 0x3fc00000    # 1.5f

    .line 305
    invoke-static {v0, v4, v5}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;FF)V

    .line 307
    iget-object v0, v1, Lorg/telegram/ui/LinkEditActivity;->buttonTextView:Landroid/widget/TextView;

    const/high16 v4, 0x42080000    # 34.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v0, v5, v10, v4, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 308
    iget-object v0, v1, Lorg/telegram/ui/LinkEditActivity;->buttonTextView:Landroid/widget/TextView;

    const/16 v4, 0x11

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 309
    iget-object v0, v1, Lorg/telegram/ui/LinkEditActivity;->buttonTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v8, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 310
    iget-object v0, v1, Lorg/telegram/ui/LinkEditActivity;->buttonTextView:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 312
    iget v0, v1, Lorg/telegram/ui/LinkEditActivity;->type:I

    if-nez v0, :cond_5

    .line 313
    iget-object v0, v1, Lorg/telegram/ui/LinkEditActivity;->buttonTextView:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->CreateLink:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_5
    if-ne v0, v8, :cond_6

    .line 315
    iget-object v0, v1, Lorg/telegram/ui/LinkEditActivity;->buttonTextView:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->SaveLink:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 318
    :cond_6
    :goto_3
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v3, v1, Lorg/telegram/ui/LinkEditActivity;->chatId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    const/high16 v3, 0x41800000    # 16.0f

    const/16 v4, 0xc

    const/4 v5, -0x1

    if-eqz v0, :cond_8

    .line 319
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    if-nez v0, :cond_7

    goto :goto_4

    :cond_7
    move v8, v4

    move v9, v5

    const/high16 v17, -0x40800000    # -1.0f

    goto/16 :goto_8

    .line 320
    :cond_8
    :goto_4
    new-instance v0, Lorg/telegram/ui/LinkEditActivity$4;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/LinkEditActivity$4;-><init>(Lorg/telegram/ui/LinkEditActivity;Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/LinkEditActivity;->approveCell:Lorg/telegram/ui/Cells/TextCheckCell;

    .line 329
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundUnchecked:I

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v7

    invoke-virtual {v0, v7}, Lorg/telegram/ui/Cells/TextCheckCell;->setBackgroundColor(I)V

    .line 330
    iget-object v0, v1, Lorg/telegram/ui/LinkEditActivity;->approveCell:Lorg/telegram/ui/Cells/TextCheckCell;

    sget v17, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundCheckText:I

    sget v18, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackBlue:I

    sget v19, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackBlueChecked:I

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackBlueThumb:I

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackBlueThumbChecked:I

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v21}, Lorg/telegram/ui/Cells/TextCheckCell;->setColors(IIIII)V

    .line 331
    iget-object v0, v1, Lorg/telegram/ui/LinkEditActivity;->approveCell:Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {v0, v8}, Lorg/telegram/ui/Cells/TextCheckCell;->setDrawCheckRipple(Z)V

    .line 332
    iget-object v0, v1, Lorg/telegram/ui/LinkEditActivity;->approveCell:Lorg/telegram/ui/Cells/TextCheckCell;

    const/16 v7, 0x38

    invoke-virtual {v0, v7}, Lorg/telegram/ui/Cells/TextCheckCell;->setHeight(I)V

    .line 333
    iget-object v0, v1, Lorg/telegram/ui/LinkEditActivity;->approveCell:Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 334
    iget-object v0, v1, Lorg/telegram/ui/LinkEditActivity;->approveCell:Lorg/telegram/ui/Cells/TextCheckCell;

    sget v6, Lorg/telegram/messenger/R$string;->ApproveNewMembers:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6, v10, v10}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    .line 335
    iget-object v0, v1, Lorg/telegram/ui/LinkEditActivity;->approveCell:Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/telegram/ui/Cells/TextCheckCell;->setTypeface(Landroid/graphics/Typeface;)V

    .line 336
    iget-object v0, v1, Lorg/telegram/ui/LinkEditActivity;->approveCell:Lorg/telegram/ui/Cells/TextCheckCell;

    new-instance v6, Lorg/telegram/ui/LinkEditActivity$$ExternalSyntheticLambda2;

    invoke-direct {v6, v1}, Lorg/telegram/ui/LinkEditActivity$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/LinkEditActivity;)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 359
    iget-object v0, v1, Lorg/telegram/ui/LinkEditActivity;->approveCell:Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-static {v5, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v11, v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 361
    new-instance v0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object v6, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v2, v4, v6}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v1, Lorg/telegram/ui/LinkEditActivity;->approveHintCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 362
    sget v6, Lorg/telegram/messenger/R$string;->ApproveNewMembersDescription:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 363
    iget-object v0, v1, Lorg/telegram/ui/LinkEditActivity;->approveHintCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-virtual {v11, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 365
    iget v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v6, v1, Lorg/telegram/ui/LinkEditActivity;->chatId:J

    invoke-virtual {v0, v6, v7}, Lorg/telegram/messenger/MessagesController;->getChatFull(J)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v0

    .line 366
    iget-object v6, v1, Lorg/telegram/ui/LinkEditActivity;->inviteToEdit:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    if-nez v6, :cond_9

    iget v6, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    const/high16 v17, -0x40800000    # -1.0f

    iget-wide v14, v1, Lorg/telegram/ui/LinkEditActivity;->chatId:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v6

    if-eqz v6, :cond_a

    if-eqz v0, :cond_a

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->paid_media_allowed:Z

    if-nez v0, :cond_b

    goto :goto_5

    :cond_9
    const/high16 v17, -0x40800000    # -1.0f

    :cond_a
    :goto_5
    iget-object v0, v1, Lorg/telegram/ui/LinkEditActivity;->inviteToEdit:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    if-eqz v0, :cond_f

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->subscription_pricing:Lorg/telegram/tgnet/tl/TL_stars$TL_starsSubscriptionPricing;

    if-eqz v0, :cond_f

    .line 367
    :cond_b
    new-instance v0, Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/LinkEditActivity;->subCell:Lorg/telegram/ui/Cells/TextCheckCell;

    .line 368
    sget v14, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v14}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    invoke-virtual {v0, v6}, Lorg/telegram/ui/Cells/TextCheckCell;->setBackgroundColor(I)V

    .line 369
    iget-object v0, v1, Lorg/telegram/ui/LinkEditActivity;->subCell:Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {v0, v8}, Lorg/telegram/ui/Cells/TextCheckCell;->setDrawCheckRipple(Z)V

    .line 370
    iget-object v0, v1, Lorg/telegram/ui/LinkEditActivity;->subCell:Lorg/telegram/ui/Cells/TextCheckCell;

    sget v6, Lorg/telegram/messenger/R$string;->RequireMonthlyFee:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6, v10, v8}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    .line 371
    iget-object v0, v1, Lorg/telegram/ui/LinkEditActivity;->inviteToEdit:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    if-eqz v0, :cond_c

    .line 372
    iget-object v0, v1, Lorg/telegram/ui/LinkEditActivity;->subCell:Lorg/telegram/ui/Cells/TextCheckCell;

    sget v6, Lorg/telegram/messenger/R$drawable;->permission_locked:I

    invoke-virtual {v0, v6}, Lorg/telegram/ui/Cells/TextCheckCell;->setCheckBoxIcon(I)V

    .line 373
    iget-object v0, v1, Lorg/telegram/ui/LinkEditActivity;->subCell:Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {v0, v10}, Lorg/telegram/ui/Cells/TextCheckCell;->setEnabled(Z)V

    .line 375
    :cond_c
    new-array v0, v8, [Ljava/lang/Runnable;

    .line 376
    iget-object v6, v1, Lorg/telegram/ui/LinkEditActivity;->subCell:Lorg/telegram/ui/Cells/TextCheckCell;

    new-instance v7, Lorg/telegram/ui/LinkEditActivity$$ExternalSyntheticLambda3;

    invoke-direct {v7, v1, v0}, Lorg/telegram/ui/LinkEditActivity$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/LinkEditActivity;[Ljava/lang/Runnable;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 406
    iget-object v0, v1, Lorg/telegram/ui/LinkEditActivity;->subCell:Lorg/telegram/ui/Cells/TextCheckCell;

    const/16 v15, 0x30

    invoke-static {v5, v15}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v11, v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 408
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/LinkEditActivity;->subPriceView:Landroid/widget/TextView;

    .line 409
    invoke-virtual {v0, v8, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 410
    iget-object v0, v1, Lorg/telegram/ui/LinkEditActivity;->subPriceView:Landroid/widget/TextView;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText3:I

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 411
    new-instance v0, Lorg/telegram/ui/LinkEditActivity$5;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/tgnet/ConnectionsManager;->isTestBackend()Z

    move-result v6

    if-eqz v6, :cond_d

    sget v6, Lorg/telegram/messenger/R$string;->RequireMonthlyFeePriceHintTest5Minutes:I

    goto :goto_6

    :cond_d
    sget v6, Lorg/telegram/messenger/R$string;->RequireMonthlyFeePriceHint:I

    :goto_6
    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    move v7, v3

    move-object v3, v6

    const/4 v6, -0x1

    move/from16 v18, v7

    iget-object v7, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move/from16 v19, v4

    const/4 v4, 0x0

    move/from16 v20, v5

    const/4 v5, 0x0

    move/from16 v8, v19

    move/from16 v9, v20

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/LinkEditActivity$5;-><init>(Lorg/telegram/ui/LinkEditActivity;Landroid/content/Context;Ljava/lang/String;ZZILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v1, Lorg/telegram/ui/LinkEditActivity;->subEditPriceCell:Lorg/telegram/ui/Cells/EditTextCell;

    .line 438
    iget-object v0, v0, Lorg/telegram/ui/Cells/EditTextCell;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setInputType(I)V

    .line 439
    iget-object v0, v1, Lorg/telegram/ui/LinkEditActivity;->subEditPriceCell:Lorg/telegram/ui/Cells/EditTextCell;

    iget-object v0, v0, Lorg/telegram/ui/Cells/EditTextCell;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setRawInputType(I)V

    .line 440
    iget-object v0, v1, Lorg/telegram/ui/LinkEditActivity;->subEditPriceCell:Lorg/telegram/ui/Cells/EditTextCell;

    invoke-virtual {v1, v14}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 441
    iget-object v0, v1, Lorg/telegram/ui/LinkEditActivity;->subEditPriceCell:Lorg/telegram/ui/Cells/EditTextCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/EditTextCell;->hideKeyboardOnEnter()V

    .line 442
    iget-object v0, v1, Lorg/telegram/ui/LinkEditActivity;->subEditPriceCell:Lorg/telegram/ui/Cells/EditTextCell;

    iget-object v3, v1, Lorg/telegram/ui/LinkEditActivity;->subPriceView:Landroid/widget/TextView;

    const/high16 v28, 0x41980000    # 19.0f

    const/16 v29, 0x0

    const/16 v23, -0x2

    const/high16 v24, -0x40000000    # -2.0f

    const/16 v25, 0x15

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-static/range {v23 .. v29}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 444
    iget-object v0, v1, Lorg/telegram/ui/LinkEditActivity;->subEditPriceCell:Lorg/telegram/ui/Cells/EditTextCell;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$drawable;->star_small_inner:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Cells/EditTextCell;->setLeftDrawable(Landroid/graphics/drawable/Drawable;)Landroid/widget/ImageView;

    move-result-object v0

    const v3, 0x3f547ae1    # 0.83f

    .line 445
    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleX(F)V

    .line 446
    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleY(F)V

    .line 447
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    const/high16 v3, 0x3f800000    # 1.0f

    .line 448
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 449
    iget-object v0, v1, Lorg/telegram/ui/LinkEditActivity;->subEditPriceCell:Lorg/telegram/ui/Cells/EditTextCell;

    invoke-static {v9, v15}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v11, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 450
    iget-object v0, v1, Lorg/telegram/ui/LinkEditActivity;->subEditPriceCell:Lorg/telegram/ui/Cells/EditTextCell;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 452
    new-instance v0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object v3, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v2, v8, v3}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v1, Lorg/telegram/ui/LinkEditActivity;->subInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 453
    iget-object v3, v1, Lorg/telegram/ui/LinkEditActivity;->inviteToEdit:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    if-eqz v3, :cond_e

    .line 454
    sget v3, Lorg/telegram/messenger/R$string;->RequireMonthlyFeeInfoFrozen:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 456
    :cond_e
    sget v3, Lorg/telegram/messenger/R$string;->RequireMonthlyFeeInfo:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/LinkEditActivity$$ExternalSyntheticLambda4;

    invoke-direct {v4, v1}, Lorg/telegram/ui/LinkEditActivity$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/LinkEditActivity;)V

    invoke-static {v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->withLearnMore(Ljava/lang/CharSequence;Ljava/lang/Runnable;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 460
    :goto_7
    iget-object v0, v1, Lorg/telegram/ui/LinkEditActivity;->subInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const/4 v3, -0x2

    invoke-static {v9, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v11, v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_8

    :cond_f
    move v8, v4

    move v9, v5

    .line 464
    :goto_8
    new-instance v0, Lorg/telegram/ui/Cells/HeaderCell;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/LinkEditActivity;->timeHeaderCell:Lorg/telegram/ui/Cells/HeaderCell;

    .line 465
    sget v3, Lorg/telegram/messenger/R$string;->LimitByPeriod:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    .line 466
    iget-object v0, v1, Lorg/telegram/ui/LinkEditActivity;->timeHeaderCell:Lorg/telegram/ui/Cells/HeaderCell;

    invoke-virtual {v11, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 467
    new-instance v0, Lorg/telegram/ui/Components/SlideChooseView;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/SlideChooseView;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/LinkEditActivity;->timeChooseView:Lorg/telegram/ui/Components/SlideChooseView;

    .line 468
    invoke-virtual {v11, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 469
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/LinkEditActivity;->timeEditText:Landroid/widget/TextView;

    const/high16 v3, 0x41b00000    # 22.0f

    .line 470
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v0, v4, v10, v5, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 471
    iget-object v0, v1, Lorg/telegram/ui/LinkEditActivity;->timeEditText:Landroid/widget/TextView;

    const/16 v4, 0x10

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 472
    iget-object v0, v1, Lorg/telegram/ui/LinkEditActivity;->timeEditText:Landroid/widget/TextView;

    const/4 v4, 0x1

    const/high16 v7, 0x41800000    # 16.0f

    invoke-virtual {v0, v4, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 473
    iget-object v0, v1, Lorg/telegram/ui/LinkEditActivity;->timeEditText:Landroid/widget/TextView;

    sget v4, Lorg/telegram/messenger/R$string;->TimeLimitHint:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 474
    iget-object v0, v1, Lorg/telegram/ui/LinkEditActivity;->timeEditText:Landroid/widget/TextView;

    new-instance v4, Lorg/telegram/ui/LinkEditActivity$$ExternalSyntheticLambda5;

    invoke-direct {v4, v1, v2}, Lorg/telegram/ui/LinkEditActivity$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/LinkEditActivity;Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 476
    iget-object v0, v1, Lorg/telegram/ui/LinkEditActivity;->timeChooseView:Lorg/telegram/ui/Components/SlideChooseView;

    new-instance v4, Lorg/telegram/ui/LinkEditActivity$$ExternalSyntheticLambda6;

    invoke-direct {v4, v1}, Lorg/telegram/ui/LinkEditActivity$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/LinkEditActivity;)V

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/SlideChooseView;->setCallback(Lorg/telegram/ui/Components/SlideChooseView$Callback;)V

    .line 484
    invoke-direct {v1}, Lorg/telegram/ui/LinkEditActivity;->resetDates()V

    .line 485
    iget-object v0, v1, Lorg/telegram/ui/LinkEditActivity;->timeEditText:Landroid/widget/TextView;

    const/16 v4, 0x32

    invoke-static {v9, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v11, v0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 487
    new-instance v0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object v5, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v2, v8, v5}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v1, Lorg/telegram/ui/LinkEditActivity;->divider:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 488
    sget v5, Lorg/telegram/messenger/R$string;->TimeLimitHelp:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 489
    iget-object v0, v1, Lorg/telegram/ui/LinkEditActivity;->divider:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-virtual {v11, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 491
    new-instance v0, Lorg/telegram/ui/Cells/HeaderCell;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/LinkEditActivity;->usesHeaderCell:Lorg/telegram/ui/Cells/HeaderCell;

    .line 492
    sget v5, Lorg/telegram/messenger/R$string;->LimitNumberOfUses:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    .line 493
    iget-object v0, v1, Lorg/telegram/ui/LinkEditActivity;->usesHeaderCell:Lorg/telegram/ui/Cells/HeaderCell;

    invoke-virtual {v11, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 494
    new-instance v0, Lorg/telegram/ui/Components/SlideChooseView;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/SlideChooseView;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/LinkEditActivity;->usesChooseView:Lorg/telegram/ui/Components/SlideChooseView;

    .line 495
    new-instance v5, Lorg/telegram/ui/LinkEditActivity$$ExternalSyntheticLambda7;

    invoke-direct {v5, v1}, Lorg/telegram/ui/LinkEditActivity$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/LinkEditActivity;)V

    invoke-virtual {v0, v5}, Lorg/telegram/ui/Components/SlideChooseView;->setCallback(Lorg/telegram/ui/Components/SlideChooseView$Callback;)V

    .line 505
    invoke-direct {v1}, Lorg/telegram/ui/LinkEditActivity;->resetUses()V

    .line 506
    iget-object v0, v1, Lorg/telegram/ui/LinkEditActivity;->usesChooseView:Lorg/telegram/ui/Components/SlideChooseView;

    invoke-virtual {v11, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 508
    new-instance v0, Lorg/telegram/ui/LinkEditActivity$6;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/LinkEditActivity$6;-><init>(Lorg/telegram/ui/LinkEditActivity;Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/LinkEditActivity;->usesEditText:Landroid/widget/EditText;

    .line 517
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v0, v5, v10, v6, v10}, Landroid/view/View;->setPadding(IIII)V

    .line 518
    iget-object v0, v1, Lorg/telegram/ui/LinkEditActivity;->usesEditText:Landroid/widget/EditText;

    const/16 v5, 0x10

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 519
    iget-object v0, v1, Lorg/telegram/ui/LinkEditActivity;->usesEditText:Landroid/widget/EditText;

    const/4 v5, 0x1

    invoke-virtual {v0, v5, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 520
    iget-object v0, v1, Lorg/telegram/ui/LinkEditActivity;->usesEditText:Landroid/widget/EditText;

    sget v5, Lorg/telegram/messenger/R$string;->UsesLimitHint:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 521
    iget-object v0, v1, Lorg/telegram/ui/LinkEditActivity;->usesEditText:Landroid/widget/EditText;

    const-string v5, "0123456789."

    invoke-static {v5}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 522
    iget-object v0, v1, Lorg/telegram/ui/LinkEditActivity;->usesEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setInputType(I)V

    .line 523
    iget-object v0, v1, Lorg/telegram/ui/LinkEditActivity;->usesEditText:Landroid/widget/EditText;

    new-instance v5, Lorg/telegram/ui/LinkEditActivity$7;

    invoke-direct {v5, v1}, Lorg/telegram/ui/LinkEditActivity$7;-><init>(Lorg/telegram/ui/LinkEditActivity;)V

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 557
    iget-object v0, v1, Lorg/telegram/ui/LinkEditActivity;->usesEditText:Landroid/widget/EditText;

    invoke-static {v9, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v11, v0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 559
    new-instance v0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object v5, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v2, v8, v5}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v1, Lorg/telegram/ui/LinkEditActivity;->dividerUses:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 560
    sget v5, Lorg/telegram/messenger/R$string;->UsesLimitHelp:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 561
    iget-object v0, v1, Lorg/telegram/ui/LinkEditActivity;->dividerUses:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-virtual {v11, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 563
    new-instance v0, Lorg/telegram/ui/LinkEditActivity$8;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/LinkEditActivity$8;-><init>(Lorg/telegram/ui/LinkEditActivity;Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/LinkEditActivity;->nameEditText:Landroid/widget/EditText;

    .line 573
    new-instance v5, Lorg/telegram/ui/LinkEditActivity$9;

    invoke-direct {v5, v1}, Lorg/telegram/ui/LinkEditActivity$9;-><init>(Lorg/telegram/ui/LinkEditActivity;)V

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 581
    iget-object v0, v1, Lorg/telegram/ui/LinkEditActivity;->nameEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setCursorVisible(Z)V

    .line 582
    iget-object v0, v1, Lorg/telegram/ui/LinkEditActivity;->nameEditText:Landroid/widget/EditText;

    new-instance v5, Landroid/text/InputFilter$LengthFilter;

    const/16 v6, 0x20

    invoke-direct {v5, v6}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v6, 0x1

    new-array v13, v6, [Landroid/text/InputFilter;

    aput-object v5, v13, v10

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 583
    iget-object v0, v1, Lorg/telegram/ui/LinkEditActivity;->nameEditText:Landroid/widget/EditText;

    const/16 v5, 0x10

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 584
    iget-object v0, v1, Lorg/telegram/ui/LinkEditActivity;->nameEditText:Landroid/widget/EditText;

    sget v5, Lorg/telegram/messenger/R$string;->LinkNameHint:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 585
    iget-object v0, v1, Lorg/telegram/ui/LinkEditActivity;->nameEditText:Landroid/widget/EditText;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 586
    iget-object v0, v1, Lorg/telegram/ui/LinkEditActivity;->nameEditText:Landroid/widget/EditText;

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setLines(I)V

    .line 587
    iget-object v0, v1, Lorg/telegram/ui/LinkEditActivity;->nameEditText:Landroid/widget/EditText;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v0, v6, v10, v3, v10}, Landroid/view/View;->setPadding(IIII)V

    .line 588
    iget-object v0, v1, Lorg/telegram/ui/LinkEditActivity;->nameEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 589
    iget-object v0, v1, Lorg/telegram/ui/LinkEditActivity;->nameEditText:Landroid/widget/EditText;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 590
    iget-object v0, v1, Lorg/telegram/ui/LinkEditActivity;->nameEditText:Landroid/widget/EditText;

    const/4 v6, 0x1

    invoke-virtual {v0, v6, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 591
    iget-object v0, v1, Lorg/telegram/ui/LinkEditActivity;->nameEditText:Landroid/widget/EditText;

    invoke-static {v9, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v11, v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 593
    new-instance v0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object v4, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v2, v8, v4}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v1, Lorg/telegram/ui/LinkEditActivity;->dividerName:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 594
    sget v4, Lorg/telegram/messenger/R$string;->LinkNameHelp:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 595
    iget-object v0, v1, Lorg/telegram/ui/LinkEditActivity;->dividerName:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-virtual {v11, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 597
    iget v0, v1, Lorg/telegram/ui/LinkEditActivity;->type:I

    const/4 v6, 0x1

    if-ne v0, v6, :cond_10

    .line 598
    new-instance v0, Lorg/telegram/ui/Cells/TextSettingsCell;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/LinkEditActivity;->revokeLink:Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 599
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 600
    iget-object v0, v1, Lorg/telegram/ui/LinkEditActivity;->revokeLink:Lorg/telegram/ui/Cells/TextSettingsCell;

    sget v4, Lorg/telegram/messenger/R$string;->RevokeLink:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v10}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/CharSequence;Z)V

    .line 601
    iget-object v0, v1, Lorg/telegram/ui/LinkEditActivity;->revokeLink:Lorg/telegram/ui/Cells/TextSettingsCell;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextColor(I)V

    .line 602
    iget-object v0, v1, Lorg/telegram/ui/LinkEditActivity;->revokeLink:Lorg/telegram/ui/Cells/TextSettingsCell;

    new-instance v4, Lorg/telegram/ui/LinkEditActivity$$ExternalSyntheticLambda8;

    invoke-direct {v4, v1}, Lorg/telegram/ui/LinkEditActivity$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/LinkEditActivity;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 614
    iget-object v0, v1, Lorg/telegram/ui/LinkEditActivity;->revokeLink:Lorg/telegram/ui/Cells/TextSettingsCell;

    invoke-virtual {v11, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 617
    :cond_10
    iget-object v0, v1, Lorg/telegram/ui/LinkEditActivity;->scrollView:Lorg/telegram/ui/Components/SectionsScrollView;

    move/from16 v4, v17

    invoke-static {v9, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v12, v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 619
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/LinkEditActivity;->buttonLayout:Landroid/widget/FrameLayout;

    .line 620
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 621
    new-instance v0, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    new-instance v4, Lorg/telegram/ui/LinkEditActivity$$ExternalSyntheticLambda9;

    invoke-direct {v4}, Lorg/telegram/ui/LinkEditActivity$$ExternalSyntheticLambda9;-><init>()V

    invoke-direct {v0, v12, v4}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;-><init>(Landroid/view/View;Lorg/telegram/messenger/Utilities$Callback;)V

    .line 624
    iget-object v0, v1, Lorg/telegram/ui/LinkEditActivity;->buttonLayout:Landroid/widget/FrameLayout;

    iget-object v4, v1, Lorg/telegram/ui/LinkEditActivity;->buttonTextView:Landroid/widget/TextView;

    const/high16 v22, 0x41800000    # 16.0f

    const/high16 v23, 0x41800000    # 16.0f

    const/16 v17, -0x1

    const/high16 v18, 0x42400000    # 48.0f

    const/16 v19, 0x57

    const/high16 v20, 0x41800000    # 16.0f

    const/high16 v21, 0x41700000    # 15.0f

    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 625
    iget-object v0, v1, Lorg/telegram/ui/LinkEditActivity;->buttonLayout:Landroid/widget/FrameLayout;

    const/16 v4, 0x50

    const/4 v6, -0x2

    invoke-static {v9, v6, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v12, v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 627
    iget-object v0, v1, Lorg/telegram/ui/LinkEditActivity;->timeHeaderCell:Lorg/telegram/ui/Cells/HeaderCell;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 628
    iget-object v0, v1, Lorg/telegram/ui/LinkEditActivity;->timeChooseView:Lorg/telegram/ui/Components/SlideChooseView;

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 629
    iget-object v0, v1, Lorg/telegram/ui/LinkEditActivity;->timeEditText:Landroid/widget/TextView;

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 630
    iget-object v0, v1, Lorg/telegram/ui/LinkEditActivity;->usesHeaderCell:Lorg/telegram/ui/Cells/HeaderCell;

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 631
    iget-object v0, v1, Lorg/telegram/ui/LinkEditActivity;->usesChooseView:Lorg/telegram/ui/Components/SlideChooseView;

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 632
    iget-object v0, v1, Lorg/telegram/ui/LinkEditActivity;->usesEditText:Landroid/widget/EditText;

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 633
    iget-object v0, v1, Lorg/telegram/ui/LinkEditActivity;->nameEditText:Landroid/widget/EditText;

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 634
    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 636
    iget-object v0, v1, Lorg/telegram/ui/LinkEditActivity;->buttonTextView:Landroid/widget/TextView;

    new-instance v2, Lorg/telegram/ui/LinkEditActivity$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Lorg/telegram/ui/LinkEditActivity$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/LinkEditActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 637
    iget-object v0, v1, Lorg/telegram/ui/LinkEditActivity;->buttonTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_buttonText:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 638
    iget-object v0, v1, Lorg/telegram/ui/LinkEditActivity;->buttonTextView:Landroid/widget/TextView;

    const/high16 v2, 0x41c00000    # 24.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButtonPressed:I

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    invoke-static {v2, v4, v6}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 640
    iget-object v0, v1, Lorg/telegram/ui/LinkEditActivity;->usesEditText:Landroid/widget/EditText;

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 641
    iget-object v0, v1, Lorg/telegram/ui/LinkEditActivity;->usesEditText:Landroid/widget/EditText;

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 643
    iget-object v0, v1, Lorg/telegram/ui/LinkEditActivity;->timeEditText:Landroid/widget/TextView;

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 644
    iget-object v0, v1, Lorg/telegram/ui/LinkEditActivity;->timeEditText:Landroid/widget/TextView;

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 646
    iget-object v0, v1, Lorg/telegram/ui/LinkEditActivity;->usesEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setCursorVisible(Z)V

    .line 647
    iget-object v0, v1, Lorg/telegram/ui/LinkEditActivity;->inviteToEdit:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/LinkEditActivity;->setInviteToEdit(Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;)V

    .line 649
    invoke-virtual {v12, v10}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 650
    iget-object v0, v1, Lorg/telegram/ui/LinkEditActivity;->scrollView:Lorg/telegram/ui/Components/SectionsScrollView;

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 651
    invoke-virtual {v11, v10}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    return-object v12
.end method

.method public finishFragment()V
    .locals 2

    .line 987
    iget-object v0, p0, Lorg/telegram/ui/LinkEditActivity;->scrollView:Lorg/telegram/ui/Components/SectionsScrollView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/LinkEditActivity;->scrollView:Lorg/telegram/ui/Components/SectionsScrollView;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v0, 0x1

    .line 988
    iput-boolean v0, p0, Lorg/telegram/ui/LinkEditActivity;->finished:Z

    .line 989
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 27

    move-object/from16 v0, p0

    .line 995
    new-instance v7, Lorg/telegram/ui/LinkEditActivity$$ExternalSyntheticLambda0;

    invoke-direct {v7, v0}, Lorg/telegram/ui/LinkEditActivity$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/LinkEditActivity;)V

    .line 1015
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1016
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v11, v0, Lorg/telegram/ui/LinkEditActivity;->timeHeaderCell:Lorg/telegram/ui/Cells/HeaderCell;

    const/4 v1, 0x1

    new-array v13, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lorg/telegram/ui/Cells/HeaderCell;

    aput-object v3, v13, v2

    const-string v4, "textView"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v14

    sget v18, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueHeader:I

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v10 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1017
    new-instance v15, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/LinkEditActivity;->usesHeaderCell:Lorg/telegram/ui/Cells/HeaderCell;

    new-array v6, v1, [Ljava/lang/Class;

    aput-object v3, v6, v2

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v19

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v17, 0x0

    const/16 v20, 0x0

    move-object/from16 v16, v5

    move/from16 v23, v18

    move-object/from16 v18, v6

    invoke-direct/range {v15 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1019
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/LinkEditActivity;->timeHeaderCell:Lorg/telegram/ui/Cells/HeaderCell;

    sget v18, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    sget v26, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    const/16 v19, 0x0

    move-object/from16 v17, v3

    move/from16 v23, v26

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v3, v16

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1020
    new-instance v19, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/LinkEditActivity;->usesHeaderCell:Lorg/telegram/ui/Cells/HeaderCell;

    sget v21, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v23, 0x0

    move-object/from16 v20, v3

    invoke-direct/range {v19 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v3, v19

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1021
    new-instance v19, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/LinkEditActivity;->timeChooseView:Lorg/telegram/ui/Components/SlideChooseView;

    sget v21, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    move-object/from16 v20, v3

    invoke-direct/range {v19 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v3, v19

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1022
    new-instance v19, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/LinkEditActivity;->usesChooseView:Lorg/telegram/ui/Components/SlideChooseView;

    sget v21, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    move-object/from16 v20, v3

    invoke-direct/range {v19 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v3, v19

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1023
    new-instance v19, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/LinkEditActivity;->timeEditText:Landroid/widget/TextView;

    sget v21, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    move-object/from16 v20, v3

    invoke-direct/range {v19 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v3, v19

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1024
    new-instance v19, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/LinkEditActivity;->usesEditText:Landroid/widget/EditText;

    sget v21, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    move-object/from16 v20, v3

    invoke-direct/range {v19 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v3, v19

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1025
    new-instance v19, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/LinkEditActivity;->revokeLink:Lorg/telegram/ui/Cells/TextSettingsCell;

    sget v21, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    move-object/from16 v20, v3

    invoke-direct/range {v19 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v3, v19

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1027
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v11, v0, Lorg/telegram/ui/LinkEditActivity;->divider:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    new-array v13, v1, [Ljava/lang/Class;

    const-class v3, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v3, v13, v2

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v14

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText4:I

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v18, v23

    invoke-direct/range {v10 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1028
    new-instance v15, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/LinkEditActivity;->dividerUses:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    new-array v6, v1, [Ljava/lang/Class;

    aput-object v3, v6, v2

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v19

    const/16 v21, 0x0

    const/16 v17, 0x0

    const/16 v20, 0x0

    move-object/from16 v16, v5

    move-object/from16 v18, v6

    invoke-direct/range {v15 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1029
    new-instance v15, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/LinkEditActivity;->dividerName:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    new-array v1, v1, [Ljava/lang/Class;

    aput-object v3, v1, v2

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v19

    move-object/from16 v18, v1

    move-object/from16 v16, v5

    invoke-direct/range {v15 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1031
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    sget v18, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    const/16 v19, 0x0

    move-object/from16 v17, v1

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v1, v16

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1033
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v11, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v12, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/16 v16, 0x0

    sget v17, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v10 .. v17}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1034
    new-instance v11, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    const/16 v17, 0x0

    sget v18, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultIcon:I

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1035
    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v13, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v14, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    const/16 v18, 0x0

    sget v19, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultTitle:I

    invoke-direct/range {v12 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1036
    new-instance v13, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const/16 v19, 0x0

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSelector:I

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1037
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v6, 0x0

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1038
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButtonPressed:I

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1039
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1040
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1041
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_buttonText:I

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1042
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v9
.end method

.method public setCallback(Lorg/telegram/ui/LinkEditActivity$Callback;)V
    .locals 0

    .line 909
    iput-object p1, p0, Lorg/telegram/ui/LinkEditActivity;->callback:Lorg/telegram/ui/LinkEditActivity$Callback;

    return-void
.end method

.method public setInviteToEdit(Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;)V
    .locals 4

    .line 922
    iput-object p1, p0, Lorg/telegram/ui/LinkEditActivity;->inviteToEdit:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    .line 923
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    if-eqz v0, :cond_a

    if-eqz p1, :cond_a

    .line 924
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->expire_date:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 925
    invoke-direct {p0, v0}, Lorg/telegram/ui/LinkEditActivity;->chooseDate(I)V

    .line 926
    iget-object v0, p0, Lorg/telegram/ui/LinkEditActivity;->dispalyedDates:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/LinkEditActivity;->timeChooseView:Lorg/telegram/ui/Components/SlideChooseView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/SlideChooseView;->getSelectedIndex()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/LinkEditActivity;->currentInviteDate:I

    goto :goto_0

    .line 928
    :cond_0
    iput v1, p0, Lorg/telegram/ui/LinkEditActivity;->currentInviteDate:I

    .line 930
    :goto_0
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->usage_limit:I

    if-lez v0, :cond_1

    .line 931
    invoke-direct {p0, v0}, Lorg/telegram/ui/LinkEditActivity;->chooseUses(I)V

    .line 932
    iget-object v0, p0, Lorg/telegram/ui/LinkEditActivity;->usesEditText:Landroid/widget/EditText;

    iget v2, p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->usage_limit:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 934
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/LinkEditActivity;->approveCell:Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v0, :cond_3

    .line 935
    iget-boolean v2, p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->request_needed:Z

    if-eqz v2, :cond_2

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundChecked:I

    goto :goto_1

    :cond_2
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundUnchecked:I

    :goto_1
    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/TextCheckCell;->setBackgroundColor(I)V

    .line 936
    iget-object v0, p0, Lorg/telegram/ui/LinkEditActivity;->approveCell:Lorg/telegram/ui/Cells/TextCheckCell;

    iget-boolean v2, p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->request_needed:Z

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    .line 938
    :cond_3
    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->request_needed:Z

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    invoke-direct {p0, v0}, Lorg/telegram/ui/LinkEditActivity;->setUsesVisible(Z)V

    .line 939
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->title:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 940
    new-instance v0, Landroid/text/SpannableStringBuilder;

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->title:Ljava/lang/String;

    invoke-direct {v0, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 941
    iget-object v3, p0, Lorg/telegram/ui/LinkEditActivity;->nameEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v3

    invoke-static {v0, v3, v1}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    .line 942
    iget-object v3, p0, Lorg/telegram/ui/LinkEditActivity;->nameEditText:Landroid/widget/EditText;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 945
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/LinkEditActivity;->subCell:Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v0, :cond_6

    .line 946
    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->subscription_pricing:Lorg/telegram/tgnet/tl/TL_stars$TL_starsSubscriptionPricing;

    if-eqz v3, :cond_5

    goto :goto_2

    :cond_5
    move v2, v1

    :goto_2
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    .line 948
    :cond_6
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->subscription_pricing:Lorg/telegram/tgnet/tl/TL_stars$TL_starsSubscriptionPricing;

    if-eqz v0, :cond_8

    .line 949
    iget-object v0, p0, Lorg/telegram/ui/LinkEditActivity;->approveCell:Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v0, :cond_7

    .line 950
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    .line 951
    iget-object v0, p0, Lorg/telegram/ui/LinkEditActivity;->approveCell:Lorg/telegram/ui/Cells/TextCheckCell;

    sget v2, Lorg/telegram/messenger/R$drawable;->permission_locked:I

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/TextCheckCell;->setCheckBoxIcon(I)V

    .line 953
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/LinkEditActivity;->approveHintCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    if-eqz v0, :cond_8

    .line 954
    sget v2, Lorg/telegram/messenger/R$string;->ApproveNewMembersDescriptionFrozen:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 957
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/LinkEditActivity;->subEditPriceCell:Lorg/telegram/ui/Cells/EditTextCell;

    if-eqz v0, :cond_a

    .line 958
    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->subscription_pricing:Lorg/telegram/tgnet/tl/TL_stars$TL_starsSubscriptionPricing;

    if-eqz v2, :cond_9

    move v2, v1

    goto :goto_3

    :cond_9
    const/16 v2, 0x8

    :goto_3
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 959
    iget-object v0, p0, Lorg/telegram/ui/LinkEditActivity;->subEditPriceCell:Lorg/telegram/ui/Cells/EditTextCell;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->subscription_pricing:Lorg/telegram/tgnet/tl/TL_stars$TL_starsSubscriptionPricing;

    iget-wide v2, p1, Lorg/telegram/tgnet/tl/TL_stars$TL_starsSubscriptionPricing;->amount:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Cells/EditTextCell;->setText(Ljava/lang/CharSequence;)V

    .line 960
    iget-object p1, p0, Lorg/telegram/ui/LinkEditActivity;->subEditPriceCell:Lorg/telegram/ui/Cells/EditTextCell;

    iget-object p1, p1, Lorg/telegram/ui/Cells/EditTextCell;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {p1, v1}, Landroid/view/View;->setClickable(Z)V

    .line 961
    iget-object p1, p0, Lorg/telegram/ui/LinkEditActivity;->subEditPriceCell:Lorg/telegram/ui/Cells/EditTextCell;

    iget-object p1, p1, Lorg/telegram/ui/Cells/EditTextCell;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 962
    iget-object p1, p0, Lorg/telegram/ui/LinkEditActivity;->subEditPriceCell:Lorg/telegram/ui/Cells/EditTextCell;

    iget-object p1, p1, Lorg/telegram/ui/Cells/EditTextCell;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 963
    iget-object p1, p0, Lorg/telegram/ui/LinkEditActivity;->subEditPriceCell:Lorg/telegram/ui/Cells/EditTextCell;

    iget-object p1, p1, Lorg/telegram/ui/Cells/EditTextCell;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {p1, v1}, Landroid/view/View;->setLongClickable(Z)V

    :cond_a
    return-void
.end method
