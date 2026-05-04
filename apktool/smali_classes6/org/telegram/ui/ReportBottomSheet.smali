.class public Lorg/telegram/ui/ReportBottomSheet;
.super Lorg/telegram/ui/ActionBar/BottomSheet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/ReportBottomSheet$ContainerView;,
        Lorg/telegram/ui/ReportBottomSheet$Page;,
        Lorg/telegram/ui/ReportBottomSheet$Listener;
    }
.end annotation


# instance fields
.field private final backgroundPaint:Landroid/graphics/Paint;

.field private final dialogId:J

.field private listener:Lorg/telegram/ui/ReportBottomSheet$Listener;

.field private final messageIds:Ljava/util/ArrayList;

.field private final sponsored:Z

.field private final sponsoredId:[B

.field private final stories:Z

.field private final viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;


# direct methods
.method public static synthetic $r8$lambda$1K8bRS1AwsKLBzU1me3usTTHEN0(Lorg/telegram/ui/ChatActivity;ILorg/telegram/messenger/MessageObject;)V
    .locals 2

    .line 1010
    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->AdHidden:I

    .line 1011
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BulletinFactory;->createAdReportedBulletin(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    .line 1012
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    .line 1013
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/MessagesController;->disableAds(Z)V

    .line 1014
    invoke-virtual {p0, p2}, Lorg/telegram/ui/ChatActivity;->removeFromSponsored(Lorg/telegram/messenger/MessageObject;)V

    .line 1015
    invoke-virtual {p0, p2}, Lorg/telegram/ui/ChatActivity;->removeMessageWithThanos(Lorg/telegram/messenger/MessageObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4dP6GcZQU6PjDemQ6CNeJ9bRhzI(Lorg/telegram/ui/ReportBottomSheet;Ljava/lang/CharSequence;[BLjava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/ReportBottomSheet;->lambda$submitOption$4(Ljava/lang/CharSequence;[BLjava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9uQCA3prmXbd8k4AqaaI_7WqJZs([Landroid/view/View;Lorg/telegram/tgnet/TLRPC$TL_reportResultChooseOption;)V
    .locals 1

    const/4 v0, 0x0

    .line 204
    aget-object p0, p0, v0

    check-cast p0, Lorg/telegram/ui/ReportBottomSheet$Page;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ReportBottomSheet$Page;->setOption(Lorg/telegram/tgnet/TLRPC$TL_reportResultChooseOption;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AQ5MNSBPftcFtQalPgZYIk7T_Aw(Lorg/telegram/ui/ReportBottomSheet;Lorg/telegram/tgnet/TLObject;Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$TL_error;[BLjava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/ReportBottomSheet;->lambda$submitOption$3(Lorg/telegram/tgnet/TLObject;Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$TL_error;[BLjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$E8gLE8NDPDAmCdIxkyetrnDw60s([Landroid/view/View;Lorg/telegram/tgnet/TLRPC$TL_channels_sponsoredMessageReportResultChooseOption;)V
    .locals 1

    const/4 v0, 0x0

    .line 192
    aget-object p0, p0, v0

    check-cast p0, Lorg/telegram/ui/ReportBottomSheet$Page;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ReportBottomSheet$Page;->setOption(Lorg/telegram/tgnet/TLRPC$TL_channels_sponsoredMessageReportResultChooseOption;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ETelEKv7CkBWtzTNzC102Hg34KI([ZLorg/telegram/messenger/Utilities$Callback;)V
    .locals 2

    const/4 v0, 0x0

    .line 899
    aget-boolean v1, p0, v0

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    .line 900
    aput-boolean v1, p0, v0

    .line 901
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, p0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$FqqHYsf7PuWoyR3cEHgsyAz2QTw(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;J[BLjava/lang/Runnable;Lorg/telegram/ui/Components/BulletinFactory;Ljava/lang/Runnable;ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 4

    const-wide/16 v0, 0xc8

    if-eqz p9, :cond_2

    .line 1061
    instance-of p10, p9, Lorg/telegram/tgnet/TLRPC$TL_channels_sponsoredMessageReportResultChooseOption;

    if-eqz p10, :cond_0

    move-object p8, p6

    move-object p6, p4

    move-wide v2, p2

    move-object p2, p0

    move-object p3, p1

    move-object p1, p9

    move-object p9, p7

    move-object p7, p5

    move-wide p4, v2

    .line 1062
    new-instance p0, Lorg/telegram/ui/ReportBottomSheet$$ExternalSyntheticLambda4;

    invoke-direct/range {p0 .. p9}, Lorg/telegram/ui/ReportBottomSheet$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/tgnet/TLObject;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;J[BLjava/lang/Runnable;Lorg/telegram/ui/Components/BulletinFactory;Ljava/lang/Runnable;)V

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    move-object p2, p0

    move-object p3, p1

    move-object p7, p5

    move p0, p8

    move-object p1, p9

    move-object p8, p6

    .line 1111
    instance-of p4, p1, Lorg/telegram/tgnet/TLRPC$TL_channels_sponsoredMessageReportResultReported;

    if-eqz p4, :cond_1

    .line 1112
    new-instance p0, Lorg/telegram/ui/ReportBottomSheet$$ExternalSyntheticLambda5;

    invoke-direct {p0, p7, p8, p2, p3}, Lorg/telegram/ui/ReportBottomSheet$$ExternalSyntheticLambda5;-><init>(Ljava/lang/Runnable;Lorg/telegram/ui/Components/BulletinFactory;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-static {p0, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void

    .line 1131
    :cond_1
    instance-of p1, p1, Lorg/telegram/tgnet/TLRPC$TL_channels_sponsoredMessageReportResultAdsHidden;

    if-eqz p1, :cond_3

    .line 1132
    new-instance p1, Lorg/telegram/ui/ReportBottomSheet$$ExternalSyntheticLambda6;

    invoke-direct {p1, p7, p8, p0}, Lorg/telegram/ui/ReportBottomSheet$$ExternalSyntheticLambda6;-><init>(Ljava/lang/Runnable;Lorg/telegram/ui/Components/BulletinFactory;I)V

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void

    :cond_2
    move-object p2, p0

    move-object p3, p1

    move-object p7, p5

    move-object p8, p6

    if-eqz p10, :cond_3

    .line 1145
    const-string p0, "AD_EXPIRED"

    iget-object p1, p10, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 1146
    new-instance p0, Lorg/telegram/ui/ReportBottomSheet$$ExternalSyntheticLambda7;

    invoke-direct {p0, p7, p8, p2, p3}, Lorg/telegram/ui/ReportBottomSheet$$ExternalSyntheticLambda7;-><init>(Ljava/lang/Runnable;Lorg/telegram/ui/Components/BulletinFactory;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-static {p0, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_3
    return-void
.end method

.method public static synthetic $r8$lambda$JW7DkMxbR-p6jyvb_DBXh3lYlSg(Landroid/content/Context;)V
    .locals 1

    .line 1026
    const-string v0, "https://promote.telegram.org/guidelines"

    invoke-static {p0, v0}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KeAm4zgD_DLzLN_dbqZA5DNe0pU(Ljava/lang/Runnable;Lorg/telegram/ui/Components/BulletinFactory;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 1114
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 1117
    :cond_0
    sget p0, Lorg/telegram/messenger/R$string;->AdReported:I

    .line 1120
    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lorg/telegram/ui/ReportBottomSheet$$ExternalSyntheticLambda9;

    invoke-direct {v0, p2}, Lorg/telegram/ui/ReportBottomSheet$$ExternalSyntheticLambda9;-><init>(Landroid/content/Context;)V

    const/4 p2, -0x1

    const/4 v1, 0x2

    .line 1119
    invoke-static {p0, p2, v1, v0, p3}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;IILjava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    .line 1118
    invoke-virtual {p1, p0}, Lorg/telegram/ui/Components/BulletinFactory;->createAdReportedBulletin(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    .line 1127
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method public static synthetic $r8$lambda$LdliikvjVao17jOMKxVO-JD9Vrs(Landroid/content/Context;)V
    .locals 1

    .line 1123
    const-string v0, "https://promote.telegram.org/guidelines"

    invoke-static {p0, v0}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Lm9P7ATXMCvW70ucnC9iVcs3ppo(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;J[BLorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 4

    const-wide/16 v0, 0xc8

    if-eqz p8, :cond_2

    .line 949
    instance-of p9, p8, Lorg/telegram/tgnet/TLRPC$TL_channels_sponsoredMessageReportResultChooseOption;

    if-eqz p9, :cond_0

    move-object p7, p5

    move-wide v2, p2

    move-object p2, p0

    move-object p3, p1

    move-object p1, p8

    move-object p8, p6

    move-object p6, p4

    move-wide p4, v2

    .line 950
    new-instance p0, Lorg/telegram/ui/ReportBottomSheet$$ExternalSyntheticLambda16;

    invoke-direct/range {p0 .. p8}, Lorg/telegram/ui/ReportBottomSheet$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/tgnet/TLObject;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;J[BLorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;)V

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    move-object p2, p0

    move-object p3, p1

    move p0, p7

    move-object p1, p8

    move-object p7, p5

    move-object p8, p6

    .line 992
    instance-of p4, p1, Lorg/telegram/tgnet/TLRPC$TL_channels_sponsoredMessageReportResultReported;

    if-eqz p4, :cond_1

    .line 993
    new-instance p0, Lorg/telegram/ui/ReportBottomSheet$$ExternalSyntheticLambda17;

    invoke-direct {p0, p7, p2, p3, p8}, Lorg/telegram/ui/ReportBottomSheet$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/ChatActivity;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/messenger/MessageObject;)V

    invoke-static {p0, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void

    .line 1008
    :cond_1
    instance-of p1, p1, Lorg/telegram/tgnet/TLRPC$TL_channels_sponsoredMessageReportResultAdsHidden;

    if-eqz p1, :cond_3

    .line 1009
    new-instance p1, Lorg/telegram/ui/ReportBottomSheet$$ExternalSyntheticLambda18;

    invoke-direct {p1, p7, p0, p8}, Lorg/telegram/ui/ReportBottomSheet$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/ChatActivity;ILorg/telegram/messenger/MessageObject;)V

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void

    :cond_2
    move-object p2, p0

    move-object p3, p1

    move-object p7, p5

    move-object p8, p6

    if-eqz p9, :cond_3

    .line 1018
    const-string p0, "AD_EXPIRED"

    iget-object p1, p9, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 1019
    new-instance p0, Lorg/telegram/ui/ReportBottomSheet$$ExternalSyntheticLambda19;

    invoke-direct {p0, p7, p2, p3, p8}, Lorg/telegram/ui/ReportBottomSheet$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/ChatActivity;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/messenger/MessageObject;)V

    invoke-static {p0, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_3
    return-void
.end method

.method public static synthetic $r8$lambda$M_WfqrZ8xZuG8vbY74nKtmM0Sz0(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ZJLjava/util/ArrayList;Lorg/telegram/tgnet/TLObject;[ZLorg/telegram/messenger/Utilities$Callback;Lorg/telegram/ui/Components/BulletinFactory;)V
    .locals 10

    move-object/from16 v0, p6

    move-object/from16 v1, p7

    move-object/from16 v2, p8

    .line 870
    new-instance v3, Lorg/telegram/ui/ReportBottomSheet;

    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move-wide v7, p3

    move-object v9, p5

    invoke-direct/range {v3 .. v9}, Lorg/telegram/ui/ReportBottomSheet;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ZJLjava/util/ArrayList;)V

    .line 871
    instance-of p0, v0, Lorg/telegram/tgnet/TLRPC$TL_reportResultChooseOption;

    if-eqz p0, :cond_0

    .line 872
    move-object p0, v0

    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_reportResultChooseOption;

    invoke-virtual {v3, p0}, Lorg/telegram/ui/ReportBottomSheet;->setReportChooseOption(Lorg/telegram/tgnet/TLRPC$TL_reportResultChooseOption;)Lorg/telegram/ui/ReportBottomSheet;

    goto :goto_0

    .line 873
    :cond_0
    instance-of p0, v0, Lorg/telegram/tgnet/TLRPC$TL_reportResultAddComment;

    if-eqz p0, :cond_1

    .line 874
    move-object p0, v0

    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_reportResultAddComment;

    invoke-virtual {v3, p0}, Lorg/telegram/ui/ReportBottomSheet;->setReportChooseOption(Lorg/telegram/tgnet/TLRPC$TL_reportResultAddComment;)Lorg/telegram/ui/ReportBottomSheet;

    .line 876
    :cond_1
    :goto_0
    new-instance p0, Lorg/telegram/ui/ReportBottomSheet$3;

    move-object/from16 p1, p9

    invoke-direct {p0, v1, v2, p1}, Lorg/telegram/ui/ReportBottomSheet$3;-><init>([ZLorg/telegram/messenger/Utilities$Callback;Lorg/telegram/ui/Components/BulletinFactory;)V

    invoke-virtual {v3, p0}, Lorg/telegram/ui/ReportBottomSheet;->setListener(Lorg/telegram/ui/ReportBottomSheet$Listener;)Lorg/telegram/ui/ReportBottomSheet;

    .line 898
    new-instance p0, Lorg/telegram/ui/ReportBottomSheet$$ExternalSyntheticLambda20;

    invoke-direct {p0, v1, v2}, Lorg/telegram/ui/ReportBottomSheet$$ExternalSyntheticLambda20;-><init>([ZLorg/telegram/messenger/Utilities$Callback;)V

    invoke-virtual {v3, p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->setOnDismissListener(Ljava/lang/Runnable;)V

    .line 904
    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    return-void
.end method

.method public static synthetic $r8$lambda$Mxuk_1Vu4dgtBBTOV4Kd1uQCSSA(Lorg/telegram/ui/ChatActivity;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/messenger/MessageObject;)V
    .locals 4

    .line 994
    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->AdReported:I

    .line 997
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ReportBottomSheet$$ExternalSyntheticLambda23;

    invoke-direct {v2, p1}, Lorg/telegram/ui/ReportBottomSheet$$ExternalSyntheticLambda23;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    const/4 v3, 0x2

    .line 996
    invoke-static {v1, p1, v3, v2, p2}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;IILjava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    .line 995
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->createAdReportedBulletin(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    .line 1004
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    .line 1005
    invoke-virtual {p0, p3}, Lorg/telegram/ui/ChatActivity;->removeFromSponsored(Lorg/telegram/messenger/MessageObject;)V

    .line 1006
    invoke-virtual {p0, p3}, Lorg/telegram/ui/ChatActivity;->removeMessageWithThanos(Lorg/telegram/messenger/MessageObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PPSjjvmWMonRZbPSMqlQPPL9uOM([Landroid/view/View;Lorg/telegram/tgnet/TLRPC$TL_reportResultAddComment;)V
    .locals 1

    const/4 v0, 0x0

    .line 216
    aget-object p0, p0, v0

    check-cast p0, Lorg/telegram/ui/ReportBottomSheet$Page;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ReportBottomSheet$Page;->setOption(Lorg/telegram/tgnet/TLRPC$TL_reportResultAddComment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QaunPFdbeXW4vJHpER-FBtC1Oq4(Landroid/content/Context;)V
    .locals 1

    .line 1256
    const-string v0, "https://promote.telegram.org/guidelines"

    invoke-static {p0, v0}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TqPdTY5VVxXX2Lp4bJSVd6Sq_J0(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;[BLorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/Runnable;ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2

    const-wide/16 v0, 0xc8

    if-eqz p6, :cond_2

    .line 1183
    instance-of p7, p6, Lorg/telegram/tgnet/TLRPC$TL_channels_sponsoredMessageReportResultChooseOption;

    if-eqz p7, :cond_0

    move-object p5, p3

    move-object p3, p1

    move-object p1, p6

    move-object p6, p4

    move-object p4, p2

    move-object p2, p0

    .line 1184
    new-instance p0, Lorg/telegram/ui/ReportBottomSheet$$ExternalSyntheticLambda27;

    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/ReportBottomSheet$$ExternalSyntheticLambda27;-><init>(Lorg/telegram/tgnet/TLObject;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;[BLorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/Runnable;)V

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    move-object p2, p0

    move p0, p5

    move-object p5, p3

    move-object p3, p1

    move-object p1, p6

    move-object p6, p4

    .line 1224
    instance-of p4, p1, Lorg/telegram/tgnet/TLRPC$TL_channels_sponsoredMessageReportResultReported;

    if-eqz p4, :cond_1

    .line 1225
    new-instance p0, Lorg/telegram/ui/ReportBottomSheet$$ExternalSyntheticLambda28;

    invoke-direct {p0, p5, p2, p3, p6}, Lorg/telegram/ui/ReportBottomSheet$$ExternalSyntheticLambda28;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/Runnable;)V

    invoke-static {p0, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void

    .line 1239
    :cond_1
    instance-of p1, p1, Lorg/telegram/tgnet/TLRPC$TL_channels_sponsoredMessageReportResultAdsHidden;

    if-eqz p1, :cond_3

    .line 1240
    new-instance p1, Lorg/telegram/ui/ReportBottomSheet$$ExternalSyntheticLambda29;

    invoke-direct {p1, p5, p0, p6}, Lorg/telegram/ui/ReportBottomSheet$$ExternalSyntheticLambda29;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;ILjava/lang/Runnable;)V

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void

    :cond_2
    move-object p2, p0

    move-object p5, p3

    move-object p6, p4

    move-object p3, p1

    if-eqz p7, :cond_3

    .line 1248
    const-string p0, "AD_EXPIRED"

    iget-object p1, p7, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 1249
    new-instance p0, Lorg/telegram/ui/ReportBottomSheet$$ExternalSyntheticLambda30;

    invoke-direct {p0, p5, p2, p3, p6}, Lorg/telegram/ui/ReportBottomSheet$$ExternalSyntheticLambda30;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/Runnable;)V

    invoke-static {p0, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_3
    return-void
.end method

.method public static synthetic $r8$lambda$WAgpFa3S1ODPqa9Nu4hxZ2WRJjw(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ZJLjava/util/ArrayList;[ZLorg/telegram/messenger/Utilities$Callback;Lorg/telegram/ui/Components/BulletinFactory;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 11

    move-object/from16 v7, p9

    if-eqz v7, :cond_2

    .line 868
    instance-of v0, v7, Lorg/telegram/tgnet/TLRPC$TL_reportResultChooseOption;

    if-nez v0, :cond_0

    instance-of v0, v7, Lorg/telegram/tgnet/TLRPC$TL_reportResultAddComment;

    if-eqz v0, :cond_1

    :cond_0
    move-object/from16 v8, p6

    move-object/from16 v9, p7

    goto :goto_0

    .line 906
    :cond_1
    instance-of p0, v7, Lorg/telegram/tgnet/TLRPC$TL_reportResultReported;

    if-eqz p0, :cond_2

    .line 907
    new-instance p0, Lorg/telegram/ui/ReportBottomSheet$$ExternalSyntheticLambda14;

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct {p0, v8, v9}, Lorg/telegram/ui/ReportBottomSheet$$ExternalSyntheticLambda14;-><init>([ZLorg/telegram/messenger/Utilities$Callback;)V

    const-wide/16 p1, 0xc8

    invoke-static {p0, p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void

    .line 869
    :goto_0
    new-instance v0, Lorg/telegram/ui/ReportBottomSheet$$ExternalSyntheticLambda13;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move-object/from16 v6, p5

    move-object/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Lorg/telegram/ui/ReportBottomSheet$$ExternalSyntheticLambda13;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ZJLjava/util/ArrayList;Lorg/telegram/tgnet/TLObject;[ZLorg/telegram/messenger/Utilities$Callback;Lorg/telegram/ui/Components/BulletinFactory;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method public static synthetic $r8$lambda$aK11pUqREi_nmZM03TbUDNd6tSc(Lorg/telegram/tgnet/TLObject;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;[BLorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/Runnable;)V
    .locals 6

    .line 1185
    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_channels_sponsoredMessageReportResultChooseOption;

    .line 1186
    new-instance v0, Lorg/telegram/ui/ReportBottomSheet;

    const-wide/16 v3, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ReportBottomSheet;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;J[B)V

    .line 1187
    invoke-virtual {v0, p0}, Lorg/telegram/ui/ReportBottomSheet;->setReportChooseOption(Lorg/telegram/tgnet/TLRPC$TL_channels_sponsoredMessageReportResultChooseOption;)Lorg/telegram/ui/ReportBottomSheet;

    move-result-object p0

    new-instance p1, Lorg/telegram/ui/ReportBottomSheet$6;

    invoke-direct {p1, p4, v1, v2, p5}, Lorg/telegram/ui/ReportBottomSheet$6;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/Runnable;)V

    .line 1188
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ReportBottomSheet;->setListener(Lorg/telegram/ui/ReportBottomSheet$Listener;)Lorg/telegram/ui/ReportBottomSheet;

    move-result-object p0

    .line 1222
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    return-void
.end method

.method public static synthetic $r8$lambda$bTHvJhLzcmJEZrs2qBhlG5EJbD4(Ljava/lang/Runnable;Lorg/telegram/ui/Components/BulletinFactory;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 1148
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 1150
    :cond_0
    sget p0, Lorg/telegram/messenger/R$string;->AdReported:I

    .line 1153
    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lorg/telegram/ui/ReportBottomSheet$$ExternalSyntheticLambda8;

    invoke-direct {v0, p2}, Lorg/telegram/ui/ReportBottomSheet$$ExternalSyntheticLambda8;-><init>(Landroid/content/Context;)V

    const/4 p2, -0x1

    const/4 v1, 0x2

    .line 1152
    invoke-static {p0, p2, v1, v0, p3}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;IILjava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    .line 1151
    invoke-virtual {p1, p0}, Lorg/telegram/ui/Components/BulletinFactory;->createAdReportedBulletin(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    .line 1160
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method public static synthetic $r8$lambda$eEsRKBS9r6RgYSvL-bsc-W_A598(Lorg/telegram/ui/ActionBar/BaseFragment;ILjava/lang/Runnable;)V
    .locals 1

    .line 1241
    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p0

    sget v0, Lorg/telegram/messenger/R$string;->AdHidden:I

    .line 1242
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createAdReportedBulletin(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    .line 1243
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    .line 1244
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/MessagesController;->disableAds(Z)V

    .line 1245
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jg3_EKwdyJKPyGfPfJD-lN4dz-E(Lorg/telegram/tgnet/TLObject;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;J[BLorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;)V
    .locals 6

    .line 951
    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_channels_sponsoredMessageReportResultChooseOption;

    .line 952
    new-instance v0, Lorg/telegram/ui/ReportBottomSheet;

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ReportBottomSheet;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;J[B)V

    .line 953
    invoke-virtual {v0, p0}, Lorg/telegram/ui/ReportBottomSheet;->setReportChooseOption(Lorg/telegram/tgnet/TLRPC$TL_channels_sponsoredMessageReportResultChooseOption;)Lorg/telegram/ui/ReportBottomSheet;

    move-result-object p0

    new-instance p1, Lorg/telegram/ui/ReportBottomSheet$4;

    invoke-direct {p1, p6, v1, v2, p7}, Lorg/telegram/ui/ReportBottomSheet$4;-><init>(Lorg/telegram/ui/ChatActivity;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/messenger/MessageObject;)V

    .line 954
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ReportBottomSheet;->setListener(Lorg/telegram/ui/ReportBottomSheet$Listener;)Lorg/telegram/ui/ReportBottomSheet;

    move-result-object p0

    .line 990
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    return-void
.end method

.method public static synthetic $r8$lambda$kAPvFu7v_7hhZ0wAFveAEnpKbuQ(Ljava/lang/Runnable;Lorg/telegram/ui/Components/BulletinFactory;I)V
    .locals 0

    if-eqz p0, :cond_0

    .line 1134
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 1137
    :cond_0
    sget p0, Lorg/telegram/messenger/R$string;->AdHidden:I

    .line 1138
    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/telegram/ui/Components/BulletinFactory;->createAdReportedBulletin(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    .line 1139
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    .line 1140
    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/MessagesController;->disableAds(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$li9vdl1VFAfDQyvILFv4gJ6Pl2Q([ZLorg/telegram/messenger/Utilities$Callback;)V
    .locals 2

    const/4 v0, 0x0

    .line 908
    aget-boolean v1, p0, v0

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    .line 909
    aput-boolean v1, p0, v0

    .line 910
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, p0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    .line 912
    :cond_0
    new-instance p0, Lorg/telegram/ui/ReportBottomSheet$$ExternalSyntheticLambda15;

    invoke-direct {p0}, Lorg/telegram/ui/ReportBottomSheet$$ExternalSyntheticLambda15;-><init>()V

    const-wide/16 v0, 0xdc

    .line 926
    invoke-static {p0, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$mqlBm1MlX1KcZzfyUunR5cYwsZE(Landroid/content/Context;)V
    .locals 1

    .line 1232
    const-string v0, "https://promote.telegram.org/guidelines"

    invoke-static {p0, v0}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oHuYbSCdLn-d216WMX2Z4Bj-QmM(Lorg/telegram/tgnet/TLObject;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;J[BLjava/lang/Runnable;Lorg/telegram/ui/Components/BulletinFactory;Ljava/lang/Runnable;)V
    .locals 6

    .line 1063
    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_channels_sponsoredMessageReportResultChooseOption;

    .line 1064
    new-instance v0, Lorg/telegram/ui/ReportBottomSheet;

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ReportBottomSheet;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;J[B)V

    move-object p4, v1

    move-object p5, v2

    .line 1065
    invoke-virtual {v0, p0}, Lorg/telegram/ui/ReportBottomSheet;->setReportChooseOption(Lorg/telegram/tgnet/TLRPC$TL_channels_sponsoredMessageReportResultChooseOption;)Lorg/telegram/ui/ReportBottomSheet;

    move-result-object p0

    new-instance p1, Lorg/telegram/ui/ReportBottomSheet$5;

    move-object p2, p6

    move-object p3, p7

    move-object p6, p8

    invoke-direct/range {p1 .. p6}, Lorg/telegram/ui/ReportBottomSheet$5;-><init>(Ljava/lang/Runnable;Lorg/telegram/ui/Components/BulletinFactory;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/Runnable;)V

    .line 1066
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ReportBottomSheet;->setListener(Lorg/telegram/ui/ReportBottomSheet$Listener;)Lorg/telegram/ui/ReportBottomSheet;

    move-result-object p0

    .line 1109
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    return-void
.end method

.method public static synthetic $r8$lambda$qccbcIsr_o1YahgTVc8jwK_xB-c()V
    .locals 4

    .line 913
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 915
    :cond_0
    invoke-static {v0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    .line 917
    :cond_1
    sget v1, Lorg/telegram/messenger/R$raw;->msg_antispam:I

    sget v2, Lorg/telegram/messenger/R$string;->ReportChatSent:I

    .line 920
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->Reported2:I

    .line 921
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 918
    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    const/16 v1, 0x1388

    .line 923
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Bulletin;->setDuration(I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    .line 924
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method public static synthetic $r8$lambda$tSiSeU2ldF9U7FjyHNznWxZullw(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/Runnable;)V
    .locals 3

    .line 1226
    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p0

    sget v0, Lorg/telegram/messenger/R$string;->AdReported:I

    .line 1229
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/ReportBottomSheet$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lorg/telegram/ui/ReportBottomSheet$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    const/4 v2, 0x2

    .line 1228
    invoke-static {v0, p1, v2, v1, p2}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;IILjava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    .line 1227
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->createAdReportedBulletin(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    .line 1236
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    .line 1237
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wXnSOreB0BS7L1ca2agch63MxYs(Landroid/content/Context;)V
    .locals 1

    .line 1156
    const-string v0, "https://promote.telegram.org/guidelines"

    invoke-static {p0, v0}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$x0YXT5NZTPFkfPtxSYEmMflxA64(Landroid/content/Context;)V
    .locals 1

    .line 1000
    const-string v0, "https://promote.telegram.org/guidelines"

    invoke-static {p0, v0}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$x0fgiqYJUAeZ5FQTI3RNnSPRWlU(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/Runnable;)V
    .locals 3

    .line 1250
    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p0

    sget v0, Lorg/telegram/messenger/R$string;->AdReported:I

    .line 1253
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/ReportBottomSheet$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lorg/telegram/ui/ReportBottomSheet$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    const/4 v2, 0x2

    .line 1252
    invoke-static {v0, p1, v2, v1, p2}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;IILjava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    .line 1251
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->createAdReportedBulletin(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    .line 1260
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    .line 1261
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zQCeOkSflZrgrux4xzW-1PPnGCY(Lorg/telegram/ui/ChatActivity;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/messenger/MessageObject;)V
    .locals 4

    .line 1020
    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->AdReported:I

    .line 1023
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ReportBottomSheet$$ExternalSyntheticLambda21;

    invoke-direct {v2, p1}, Lorg/telegram/ui/ReportBottomSheet$$ExternalSyntheticLambda21;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    const/4 v3, 0x2

    .line 1022
    invoke-static {v1, p1, v3, v2, p2}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;IILjava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    .line 1021
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->createAdReportedBulletin(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    .line 1030
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    .line 1031
    invoke-virtual {p0, p3}, Lorg/telegram/ui/ChatActivity;->removeFromSponsored(Lorg/telegram/messenger/MessageObject;)V

    .line 1032
    invoke-virtual {p0, p3}, Lorg/telegram/ui/ChatActivity;->removeMessageWithThanos(Lorg/telegram/messenger/MessageObject;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetbackgroundPaint(Lorg/telegram/ui/ReportBottomSheet;)Landroid/graphics/Paint;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ReportBottomSheet;->backgroundPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdialogId(Lorg/telegram/ui/ReportBottomSheet;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lorg/telegram/ui/ReportBottomSheet;->dialogId:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmessageIds(Lorg/telegram/ui/ReportBottomSheet;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ReportBottomSheet;->messageIds:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsponsored(Lorg/telegram/ui/ReportBottomSheet;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/ReportBottomSheet;->sponsored:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetstories(Lorg/telegram/ui/ReportBottomSheet;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/ReportBottomSheet;->stories:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetviewPager(Lorg/telegram/ui/ReportBottomSheet;)Lorg/telegram/ui/Components/ViewPagerFixed;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ReportBottomSheet;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msubmitOption(Lorg/telegram/ui/ReportBottomSheet;Ljava/lang/CharSequence;[BLjava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ReportBottomSheet;->submitOption(Ljava/lang/CharSequence;[BLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;J[B)V
    .locals 9

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v1, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v8, p5

    .line 105
    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ReportBottomSheet;-><init>(ZLandroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;JZLjava/util/ArrayList;[B)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ZJLjava/util/ArrayList;)V
    .locals 9

    const/4 v1, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v6, p3

    move-wide v4, p4

    move-object v7, p6

    .line 96
    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ReportBottomSheet;-><init>(ZLandroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;JZLjava/util/ArrayList;[B)V

    return-void
.end method

.method public constructor <init>(ZLandroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;JZLjava/util/ArrayList;[B)V
    .locals 2

    const/4 v0, 0x1

    .line 117
    invoke-direct {p0, p2, v0, p3}, Lorg/telegram/ui/ActionBar/BottomSheet;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 65
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/ReportBottomSheet;->backgroundPaint:Landroid/graphics/Paint;

    .line 118
    iput-boolean p1, p0, Lorg/telegram/ui/ReportBottomSheet;->sponsored:Z

    .line 119
    iput-object p7, p0, Lorg/telegram/ui/ReportBottomSheet;->messageIds:Ljava/util/ArrayList;

    .line 120
    iput-boolean p6, p0, Lorg/telegram/ui/ReportBottomSheet;->stories:Z

    .line 121
    iput-object p8, p0, Lorg/telegram/ui/ReportBottomSheet;->sponsoredId:[B

    .line 122
    iput-wide p4, p0, Lorg/telegram/ui/ReportBottomSheet;->dialogId:J

    .line 123
    sget p4, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-static {p4, p3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p5

    invoke-virtual {v1, p5}, Landroid/graphics/Paint;->setColor(I)V

    .line 124
    invoke-static {p4, p3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p3

    invoke-virtual {p0, p3}, Lorg/telegram/ui/ActionBar/BottomSheet;->fixNavigationBar(I)V

    .line 125
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->smoothKeyboardAnimationEnabled:Z

    .line 126
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->smoothKeyboardByBottom:Z

    .line 127
    new-instance p3, Lorg/telegram/ui/ReportBottomSheet$ContainerView;

    invoke-direct {p3, p0, p2}, Lorg/telegram/ui/ReportBottomSheet$ContainerView;-><init>(Lorg/telegram/ui/ReportBottomSheet;Landroid/content/Context;)V

    iput-object p3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    .line 128
    new-instance p3, Lorg/telegram/ui/ReportBottomSheet$1;

    invoke-direct {p3, p0, p2}, Lorg/telegram/ui/ReportBottomSheet$1;-><init>(Lorg/telegram/ui/ReportBottomSheet;Landroid/content/Context;)V

    iput-object p3, p0, Lorg/telegram/ui/ReportBottomSheet;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    .line 150
    iget p4, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    const/4 p5, 0x0

    invoke-virtual {p3, p4, p5, p4, p5}, Landroid/view/View;->setPadding(IIII)V

    .line 151
    iget-object p4, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    const/4 p5, -0x1

    const/16 p6, 0x77

    invoke-static {p5, p5, p6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p5

    invoke-virtual {p4, p3, p5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 152
    new-instance p4, Lorg/telegram/ui/ReportBottomSheet$2;

    invoke-direct {p4, p0, p2}, Lorg/telegram/ui/ReportBottomSheet$2;-><init>(Lorg/telegram/ui/ReportBottomSheet;Landroid/content/Context;)V

    invoke-virtual {p3, p4}, Lorg/telegram/ui/Components/ViewPagerFixed;->setAdapter(Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;)V

    if-nez p7, :cond_1

    if-nez p8, :cond_1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 181
    invoke-virtual {p0, p2}, Lorg/telegram/ui/ReportBottomSheet;->setReportChooseOption(Lorg/telegram/tgnet/TLRPC$TL_channels_sponsoredMessageReportResultChooseOption;)Lorg/telegram/ui/ReportBottomSheet;

    return-void

    .line 183
    :cond_0
    invoke-virtual {p0, p2}, Lorg/telegram/ui/ReportBottomSheet;->setReportChooseOption(Lorg/telegram/tgnet/TLRPC$TL_reportResultChooseOption;)Lorg/telegram/ui/ReportBottomSheet;

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/ReportBottomSheet;)Landroid/view/ViewGroup;
    .locals 0

    .line 60
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/ReportBottomSheet;)I
    .locals 0

    .line 60
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/ReportBottomSheet;)Landroid/view/ViewGroup;
    .locals 0

    .line 60
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/ReportBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 60
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/ReportBottomSheet;I)I
    .locals 0

    .line 60
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/ReportBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 60
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/ReportBottomSheet;)I
    .locals 0

    .line 60
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/ReportBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 60
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/ReportBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 60
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/ReportBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 60
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/ReportBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 60
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/ReportBottomSheet;I)I
    .locals 0

    .line 60
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/ReportBottomSheet;)I
    .locals 0

    .line 60
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/ReportBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 60
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/ReportBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 60
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/ReportBottomSheet;)Landroid/view/ViewGroup;
    .locals 0

    .line 60
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/ReportBottomSheet;I)I
    .locals 0

    .line 60
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/ReportBottomSheet;I)I
    .locals 0

    .line 60
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/ReportBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 60
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/ReportBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 60
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/ReportBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 60
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/ReportBottomSheet;)I
    .locals 0

    .line 60
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/ReportBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 60
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method public static continueReport(Lorg/telegram/ui/ChatActivity;[BLjava/lang/String;Ljava/util/ArrayList;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 11

    if-nez p0, :cond_0

    goto :goto_0

    .line 816
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result v0

    .line 817
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 818
    invoke-virtual {p0}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v2

    if-nez v1, :cond_1

    :goto_0
    return-void

    .line 821
    :cond_1
    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v6

    invoke-virtual {p0}, Lorg/telegram/ui/ChatActivity;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v7

    const/4 v4, 0x0

    move-object v8, p1

    move-object v9, p2

    move-object v5, p3

    move-object v10, p4

    invoke-static/range {v0 .. v10}, Lorg/telegram/ui/ReportBottomSheet;->open(ILandroid/content/Context;JZLjava/util/ArrayList;Lorg/telegram/ui/Components/BulletinFactory;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;[BLjava/lang/String;Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method private synthetic lambda$submitOption$3(Lorg/telegram/tgnet/TLObject;Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$TL_error;[BLjava/lang/String;)V
    .locals 3

    .line 281
    iget-object v0, p0, Lorg/telegram/ui/ReportBottomSheet;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ViewPagerFixed;->getCurrentView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/ReportBottomSheet$Page;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lorg/telegram/ui/ReportBottomSheet;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ViewPagerFixed;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ReportBottomSheet$Page;

    .line 283
    invoke-static {v0}, Lorg/telegram/ui/ReportBottomSheet$Page;->-$$Nest$fgetbutton(Lorg/telegram/ui/ReportBottomSheet$Page;)Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 284
    invoke-static {v0}, Lorg/telegram/ui/ReportBottomSheet$Page;->-$$Nest$fgetbutton(Lorg/telegram/ui/ReportBottomSheet$Page;)Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    :cond_0
    if-eqz p1, :cond_8

    .line 288
    instance-of p3, p1, Lorg/telegram/tgnet/TLRPC$TL_channels_sponsoredMessageReportResultChooseOption;

    if-nez p3, :cond_4

    instance-of p4, p1, Lorg/telegram/tgnet/TLRPC$TL_reportResultChooseOption;

    if-nez p4, :cond_4

    instance-of p4, p1, Lorg/telegram/tgnet/TLRPC$TL_reportResultAddComment;

    if-eqz p4, :cond_1

    goto :goto_0

    .line 308
    :cond_1
    instance-of p2, p1, Lorg/telegram/tgnet/TLRPC$TL_channels_sponsoredMessageReportResultAdsHidden;

    if-eqz p2, :cond_2

    .line 309
    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/MessagesController;->disableAds(Z)V

    .line 310
    iget-object p1, p0, Lorg/telegram/ui/ReportBottomSheet;->listener:Lorg/telegram/ui/ReportBottomSheet$Listener;

    if-eqz p1, :cond_c

    .line 311
    invoke-interface {p1}, Lorg/telegram/ui/ReportBottomSheet$Listener;->onHidden()V

    .line 312
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void

    .line 314
    :cond_2
    instance-of p2, p1, Lorg/telegram/tgnet/TLRPC$TL_channels_sponsoredMessageReportResultReported;

    if-nez p2, :cond_3

    instance-of p1, p1, Lorg/telegram/tgnet/TLRPC$TL_reportResultReported;

    if-eqz p1, :cond_c

    .line 318
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/ReportBottomSheet;->listener:Lorg/telegram/ui/ReportBottomSheet$Listener;

    if-eqz p1, :cond_c

    .line 319
    invoke-interface {p1}, Lorg/telegram/ui/ReportBottomSheet$Listener;->onReported()V

    .line 320
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void

    .line 293
    :cond_4
    :goto_0
    iget-object p4, p0, Lorg/telegram/ui/ReportBottomSheet;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    iget p5, p4, Lorg/telegram/ui/Components/ViewPagerFixed;->currentPosition:I

    const/4 v0, 0x1

    add-int/2addr p5, v0

    .line 294
    invoke-virtual {p4, p5}, Lorg/telegram/ui/Components/ViewPagerFixed;->scrollToPosition(I)Z

    .line 295
    iget-object p4, p0, Lorg/telegram/ui/ReportBottomSheet;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {p4}, Lorg/telegram/ui/Components/ViewPagerFixed;->getViewPages()[Landroid/view/View;

    move-result-object p4

    aget-object p4, p4, v0

    check-cast p4, Lorg/telegram/ui/ReportBottomSheet$Page;

    if-eqz p4, :cond_c

    .line 297
    instance-of p5, p1, Lorg/telegram/tgnet/TLRPC$TL_reportResultChooseOption;

    if-eqz p5, :cond_5

    .line 298
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_reportResultChooseOption;

    invoke-virtual {p4, p1}, Lorg/telegram/ui/ReportBottomSheet$Page;->setOption(Lorg/telegram/tgnet/TLRPC$TL_reportResultChooseOption;)V

    goto :goto_1

    .line 299
    :cond_5
    instance-of p5, p1, Lorg/telegram/tgnet/TLRPC$TL_reportResultAddComment;

    if-eqz p5, :cond_6

    .line 300
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_reportResultAddComment;

    invoke-virtual {p4, p1}, Lorg/telegram/ui/ReportBottomSheet$Page;->setOption(Lorg/telegram/tgnet/TLRPC$TL_reportResultAddComment;)V

    goto :goto_1

    :cond_6
    if-eqz p3, :cond_7

    .line 302
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_channels_sponsoredMessageReportResultChooseOption;

    invoke-virtual {p4, p1}, Lorg/telegram/ui/ReportBottomSheet$Page;->setOption(Lorg/telegram/tgnet/TLRPC$TL_channels_sponsoredMessageReportResultChooseOption;)V

    :cond_7
    :goto_1
    if-eqz p2, :cond_c

    .line 305
    invoke-virtual {p4, p2}, Lorg/telegram/ui/ReportBottomSheet$Page;->setHeaderText(Ljava/lang/CharSequence;)V

    return-void

    :cond_8
    if-eqz p3, :cond_c

    .line 324
    iget-boolean p1, p0, Lorg/telegram/ui/ReportBottomSheet;->sponsored:Z

    if-nez p1, :cond_9

    const-string p1, "MESSAGE_ID_REQUIRED"

    iget-object v0, p3, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 325
    iget-wide v0, p0, Lorg/telegram/ui/ReportBottomSheet;->dialogId:J

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1, p4, p5}, Lorg/telegram/ui/ChatActivity;->openReportChat(JLjava/lang/String;[BLjava/lang/String;)Lorg/telegram/ui/ChatActivity;

    goto :goto_2

    .line 326
    :cond_9
    const-string p1, "PREMIUM_ACCOUNT_REQUIRED"

    iget-object p2, p3, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 327
    iget-object p1, p0, Lorg/telegram/ui/ReportBottomSheet;->listener:Lorg/telegram/ui/ReportBottomSheet$Listener;

    if-eqz p1, :cond_b

    .line 328
    invoke-interface {p1}, Lorg/telegram/ui/ReportBottomSheet$Listener;->onPremiumRequired()V

    goto :goto_2

    .line 330
    :cond_a
    const-string p1, "AD_EXPIRED"

    iget-object p2, p3, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 331
    iget-object p1, p0, Lorg/telegram/ui/ReportBottomSheet;->listener:Lorg/telegram/ui/ReportBottomSheet$Listener;

    if-eqz p1, :cond_b

    .line 332
    invoke-interface {p1}, Lorg/telegram/ui/ReportBottomSheet$Listener;->onReported()V

    .line 335
    :cond_b
    :goto_2
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    :cond_c
    return-void
.end method

.method private synthetic lambda$submitOption$4(Ljava/lang/CharSequence;[BLjava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 7

    .line 280
    new-instance v0, Lorg/telegram/ui/ReportBottomSheet$$ExternalSyntheticLambda25;

    move-object v1, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    move-object v2, p4

    move-object v4, p5

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/ReportBottomSheet$$ExternalSyntheticLambda25;-><init>(Lorg/telegram/ui/ReportBottomSheet;Lorg/telegram/tgnet/TLObject;Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$TL_error;[BLjava/lang/String;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static open(ILandroid/content/Context;JZLjava/util/ArrayList;Lorg/telegram/ui/Components/BulletinFactory;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;[BLjava/lang/String;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 11

    move-object/from16 v6, p5

    move-object/from16 v0, p8

    if-eqz p1, :cond_4

    if-nez v6, :cond_0

    goto :goto_4

    :cond_0
    const/4 v1, 0x1

    .line 849
    new-array v7, v1, [Z

    const/4 v1, 0x0

    aput-boolean v1, v7, v1

    .line 851
    const-string v1, ""

    if-eqz p4, :cond_2

    .line 852
    new-instance v2, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_report;

    invoke-direct {v2}, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_report;-><init>()V

    .line 853
    invoke-static {p0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v3

    iput-object v3, v2, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_report;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 854
    iget-object v3, v2, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_report;->id:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 855
    iput-object v0, v2, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_report;->option:[B

    .line 856
    invoke-static/range {p9 .. p9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move-object/from16 v1, p9

    :goto_0
    iput-object v1, v2, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_report;->message:Ljava/lang/String;

    :goto_1
    move-object v10, v2

    goto :goto_3

    .line 859
    :cond_2
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messages_report;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messages_report;-><init>()V

    .line 860
    invoke-static {p0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v3

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_report;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 861
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_report;->id:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 862
    iput-object v0, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_report;->option:[B

    .line 863
    invoke-static/range {p9 .. p9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    move-object/from16 v1, p9

    :goto_2
    iput-object v1, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_report;->message:Ljava/lang/String;

    goto :goto_1

    .line 866
    :goto_3
    invoke-static {p0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p0

    new-instance v0, Lorg/telegram/ui/ReportBottomSheet$$ExternalSyntheticLambda3;

    move-object v1, p1

    move-wide v4, p2

    move v3, p4

    move-object/from16 v9, p6

    move-object/from16 v2, p7

    move-object/from16 v8, p10

    invoke-direct/range {v0 .. v9}, Lorg/telegram/ui/ReportBottomSheet$$ExternalSyntheticLambda3;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ZJLjava/util/ArrayList;[ZLorg/telegram/messenger/Utilities$Callback;Lorg/telegram/ui/Components/BulletinFactory;)V

    invoke-virtual {p0, v10, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_4
    :goto_4
    return-void
.end method

.method public static openChat(Lorg/telegram/ui/ActionBar/BaseFragment;J)V
    .locals 11

    if-nez p0, :cond_0

    goto :goto_0

    .line 775
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result v0

    .line 776
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_1

    :goto_0
    return-void

    .line 779
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 p0, 0x0

    new-array v8, p0, [B

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-wide v2, p1

    invoke-static/range {v0 .. v10}, Lorg/telegram/ui/ReportBottomSheet;->open(ILandroid/content/Context;JZLjava/util/ArrayList;Lorg/telegram/ui/Components/BulletinFactory;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;[BLjava/lang/String;Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method public static openChat(Lorg/telegram/ui/ChatActivity;)V
    .locals 11

    if-nez p0, :cond_0

    goto :goto_0

    .line 762
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result v0

    .line 763
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 764
    invoke-virtual {p0}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v2

    if-nez v1, :cond_1

    :goto_0
    return-void

    .line 767
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 p0, 0x0

    new-array v8, p0, [B

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v10}, Lorg/telegram/ui/ReportBottomSheet;->open(ILandroid/content/Context;JZLjava/util/ArrayList;Lorg/telegram/ui/Components/BulletinFactory;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;[BLjava/lang/String;Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method public static openMessage(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/MessageObject;)V
    .locals 11

    if-nez p0, :cond_0

    goto :goto_0

    .line 787
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result v0

    .line 788
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_1

    :goto_0
    return-void

    .line 791
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 792
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v2

    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v6

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v7

    const/4 p0, 0x0

    new-array v8, p0, [B

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v10}, Lorg/telegram/ui/ReportBottomSheet;->open(ILandroid/content/Context;JZLjava/util/ArrayList;Lorg/telegram/ui/Components/BulletinFactory;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;[BLjava/lang/String;Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method public static openSponsored(ILandroid/content/Context;JLorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;Lorg/telegram/ui/Components/BulletinFactory;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 12

    if-nez p1, :cond_0

    return-void

    .line 1056
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_reportSponsoredMessage;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_reportSponsoredMessage;-><init>()V

    move-object/from16 v1, p4

    .line 1057
    iget-object v6, v1, Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;->random_id:[B

    iput-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_reportSponsoredMessage;->random_id:[B

    const/4 v1, 0x0

    .line 1058
    new-array v1, v1, [B

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_reportSponsoredMessage;->option:[B

    .line 1059
    invoke-static {p0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v11

    new-instance v1, Lorg/telegram/ui/ReportBottomSheet$$ExternalSyntheticLambda2;

    move v10, p0

    move-object v2, p1

    move-wide v4, p2

    move-object/from16 v8, p5

    move-object/from16 v3, p6

    move-object/from16 v9, p7

    move-object/from16 v7, p8

    invoke-direct/range {v1 .. v10}, Lorg/telegram/ui/ReportBottomSheet$$ExternalSyntheticLambda2;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;J[BLjava/lang/Runnable;Lorg/telegram/ui/Components/BulletinFactory;Ljava/lang/Runnable;I)V

    invoke-virtual {v11, v0, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method public static openSponsored(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 11

    if-nez p0, :cond_0

    goto :goto_0

    .line 939
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result v8

    .line 940
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 941
    invoke-virtual {p0}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v3

    if-nez v1, :cond_1

    :goto_0
    return-void

    .line 944
    :cond_1
    new-instance v9, Lorg/telegram/tgnet/TLRPC$TL_messages_reportSponsoredMessage;

    invoke-direct {v9}, Lorg/telegram/tgnet/TLRPC$TL_messages_reportSponsoredMessage;-><init>()V

    .line 945
    iget-object v5, p1, Lorg/telegram/messenger/MessageObject;->sponsoredId:[B

    iput-object v5, v9, Lorg/telegram/tgnet/TLRPC$TL_messages_reportSponsoredMessage;->random_id:[B

    const/4 v0, 0x0

    .line 946
    new-array v0, v0, [B

    iput-object v0, v9, Lorg/telegram/tgnet/TLRPC$TL_messages_reportSponsoredMessage;->option:[B

    .line 947
    invoke-static {v8}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v10

    new-instance v0, Lorg/telegram/ui/ReportBottomSheet$$ExternalSyntheticLambda10;

    move-object v6, p0

    move-object v7, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ReportBottomSheet$$ExternalSyntheticLambda10;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;J[BLorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;I)V

    invoke-virtual {v10, v9, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method public static openSponsoredPeer(Lorg/telegram/ui/ActionBar/BaseFragment;[BLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/Runnable;)V
    .locals 9

    if-nez p0, :cond_0

    goto :goto_0

    .line 1174
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result v6

    .line 1175
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_1

    :goto_0
    return-void

    .line 1178
    :cond_1
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_messages_reportSponsoredMessage;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_messages_reportSponsoredMessage;-><init>()V

    .line 1179
    iput-object p1, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_reportSponsoredMessage;->random_id:[B

    const/4 v0, 0x0

    .line 1180
    new-array v0, v0, [B

    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_reportSponsoredMessage;->option:[B

    .line 1181
    invoke-static {v6}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v8

    new-instance v0, Lorg/telegram/ui/ReportBottomSheet$$ExternalSyntheticLambda26;

    move-object v4, p0

    move-object v3, p1

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/ReportBottomSheet$$ExternalSyntheticLambda26;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;[BLorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/Runnable;I)V

    invoke-virtual {v8, v7, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method public static openStory(ILandroid/content/Context;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/Components/BulletinFactory;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 11

    .line 832
    new-instance v5, Ljava/util/ArrayList;

    iget v0, p2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 833
    iget-wide v2, p2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->dialogId:J

    const/4 p2, 0x0

    new-array v8, p2, [B

    const/4 v9, 0x0

    const/4 v4, 0x1

    move v0, p0

    move-object v1, p1

    move-object v6, p3

    move-object v7, p4

    move-object/from16 v10, p5

    invoke-static/range {v0 .. v10}, Lorg/telegram/ui/ReportBottomSheet;->open(ILandroid/content/Context;JZLjava/util/ArrayList;Lorg/telegram/ui/Components/BulletinFactory;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;[BLjava/lang/String;Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method private submitOption(Ljava/lang/CharSequence;[BLjava/lang/String;)V
    .locals 5

    .line 255
    iget-boolean v0, p0, Lorg/telegram/ui/ReportBottomSheet;->sponsored:Z

    if-eqz v0, :cond_0

    .line 256
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_reportSponsoredMessage;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_reportSponsoredMessage;-><init>()V

    .line 257
    iget-object v1, p0, Lorg/telegram/ui/ReportBottomSheet;->sponsoredId:[B

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_reportSponsoredMessage;->random_id:[B

    .line 258
    iput-object p2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_reportSponsoredMessage;->option:[B

    goto :goto_2

    .line 260
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/ReportBottomSheet;->stories:Z

    const-string v1, ""

    if-eqz v0, :cond_3

    .line 261
    new-instance v0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_report;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_report;-><init>()V

    .line 262
    iget v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-wide v3, p0, Lorg/telegram/ui/ReportBottomSheet;->dialogId:J

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_report;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 263
    iget-object v2, p0, Lorg/telegram/ui/ReportBottomSheet;->messageIds:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 264
    iget-object v3, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_report;->id:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    if-nez p3, :cond_2

    goto :goto_0

    :cond_2
    move-object v1, p3

    .line 266
    :goto_0
    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_report;->message:Ljava/lang/String;

    .line 267
    iput-object p2, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_report;->option:[B

    goto :goto_2

    .line 270
    :cond_3
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_report;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_report;-><init>()V

    .line 271
    iget v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-wide v3, p0, Lorg/telegram/ui/ReportBottomSheet;->dialogId:J

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_report;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 272
    iget-object v2, p0, Lorg/telegram/ui/ReportBottomSheet;->messageIds:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    .line 273
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_report;->id:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_4
    if-nez p3, :cond_5

    goto :goto_1

    :cond_5
    move-object v1, p3

    .line 275
    :goto_1
    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_report;->message:Ljava/lang/String;

    .line 276
    iput-object p2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_report;->option:[B

    .line 279
    :goto_2
    iget v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ReportBottomSheet$$ExternalSyntheticLambda24;

    invoke-direct {v2, p0, p1, p2, p3}, Lorg/telegram/ui/ReportBottomSheet$$ExternalSyntheticLambda24;-><init>(Lorg/telegram/ui/ReportBottomSheet;Ljava/lang/CharSequence;[BLjava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method


# virtual methods
.method protected canDismissWithSwipe()Z
    .locals 2

    .line 246
    iget-object v0, p0, Lorg/telegram/ui/ReportBottomSheet;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ViewPagerFixed;->getCurrentView()Landroid/view/View;

    move-result-object v0

    .line 247
    instance-of v1, v0, Lorg/telegram/ui/ReportBottomSheet$Page;

    if-eqz v1, :cond_0

    .line 248
    check-cast v0, Lorg/telegram/ui/ReportBottomSheet$Page;

    invoke-virtual {v0}, Lorg/telegram/ui/ReportBottomSheet$Page;->atTop()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onBackPressed()V
    .locals 2

    .line 231
    iget-object v0, p0, Lorg/telegram/ui/ReportBottomSheet;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ViewPagerFixed;->getCurrentView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/ReportBottomSheet$Page;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lorg/telegram/ui/ReportBottomSheet;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ViewPagerFixed;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ReportBottomSheet$Page;

    .line 233
    invoke-static {v0}, Lorg/telegram/ui/ReportBottomSheet$Page;->-$$Nest$fgeteditTextCell(Lorg/telegram/ui/ReportBottomSheet$Page;)Lorg/telegram/ui/Cells/EditTextCell;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 234
    invoke-static {v0}, Lorg/telegram/ui/ReportBottomSheet$Page;->-$$Nest$fgeteditTextCell(Lorg/telegram/ui/ReportBottomSheet$Page;)Lorg/telegram/ui/Cells/EditTextCell;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 237
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ReportBottomSheet;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ViewPagerFixed;->getCurrentPosition()I

    move-result v0

    if-lez v0, :cond_1

    .line 238
    iget-object v0, p0, Lorg/telegram/ui/ReportBottomSheet;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ViewPagerFixed;->getCurrentPosition()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ViewPagerFixed;->scrollToPosition(I)Z

    return-void

    .line 241
    :cond_1
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->onBackPressed()V

    return-void
.end method

.method public setListener(Lorg/telegram/ui/ReportBottomSheet$Listener;)Lorg/telegram/ui/ReportBottomSheet;
    .locals 0

    .line 225
    iput-object p1, p0, Lorg/telegram/ui/ReportBottomSheet;->listener:Lorg/telegram/ui/ReportBottomSheet$Listener;

    return-object p0
.end method

.method public setReportChooseOption(Lorg/telegram/tgnet/TLRPC$TL_channels_sponsoredMessageReportResultChooseOption;)Lorg/telegram/ui/ReportBottomSheet;
    .locals 4

    .line 189
    iget-object v0, p0, Lorg/telegram/ui/ReportBottomSheet;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ViewPagerFixed;->getViewPages()[Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    .line 190
    aget-object v2, v0, v1

    instance-of v3, v2, Lorg/telegram/ui/ReportBottomSheet$Page;

    if-eqz v3, :cond_0

    .line 191
    check-cast v2, Lorg/telegram/ui/ReportBottomSheet$Page;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/ReportBottomSheet$Page;->bind(I)V

    .line 192
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    new-instance v2, Lorg/telegram/ui/ReportBottomSheet$$ExternalSyntheticLambda12;

    invoke-direct {v2, v0, p1}, Lorg/telegram/ui/ReportBottomSheet$$ExternalSyntheticLambda12;-><init>([Landroid/view/View;Lorg/telegram/tgnet/TLRPC$TL_channels_sponsoredMessageReportResultChooseOption;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 p1, 0x1

    .line 194
    aget-object v0, v0, p1

    instance-of v1, v0, Lorg/telegram/ui/ReportBottomSheet$Page;

    if-eqz v1, :cond_1

    .line 195
    check-cast v0, Lorg/telegram/ui/ReportBottomSheet$Page;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ReportBottomSheet$Page;->bind(I)V

    :cond_1
    return-object p0
.end method

.method public setReportChooseOption(Lorg/telegram/tgnet/TLRPC$TL_reportResultAddComment;)Lorg/telegram/ui/ReportBottomSheet;
    .locals 4

    .line 213
    iget-object v0, p0, Lorg/telegram/ui/ReportBottomSheet;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ViewPagerFixed;->getViewPages()[Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    .line 214
    aget-object v2, v0, v1

    instance-of v3, v2, Lorg/telegram/ui/ReportBottomSheet$Page;

    if-eqz v3, :cond_0

    .line 215
    check-cast v2, Lorg/telegram/ui/ReportBottomSheet$Page;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/ReportBottomSheet$Page;->bind(I)V

    .line 216
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    new-instance v2, Lorg/telegram/ui/ReportBottomSheet$$ExternalSyntheticLambda22;

    invoke-direct {v2, v0, p1}, Lorg/telegram/ui/ReportBottomSheet$$ExternalSyntheticLambda22;-><init>([Landroid/view/View;Lorg/telegram/tgnet/TLRPC$TL_reportResultAddComment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 p1, 0x1

    .line 218
    aget-object v0, v0, p1

    instance-of v1, v0, Lorg/telegram/ui/ReportBottomSheet$Page;

    if-eqz v1, :cond_1

    .line 219
    check-cast v0, Lorg/telegram/ui/ReportBottomSheet$Page;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ReportBottomSheet$Page;->bind(I)V

    :cond_1
    return-object p0
.end method

.method public setReportChooseOption(Lorg/telegram/tgnet/TLRPC$TL_reportResultChooseOption;)Lorg/telegram/ui/ReportBottomSheet;
    .locals 4

    .line 201
    iget-object v0, p0, Lorg/telegram/ui/ReportBottomSheet;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ViewPagerFixed;->getViewPages()[Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    .line 202
    aget-object v2, v0, v1

    instance-of v3, v2, Lorg/telegram/ui/ReportBottomSheet$Page;

    if-eqz v3, :cond_0

    .line 203
    check-cast v2, Lorg/telegram/ui/ReportBottomSheet$Page;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/ReportBottomSheet$Page;->bind(I)V

    .line 204
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    new-instance v2, Lorg/telegram/ui/ReportBottomSheet$$ExternalSyntheticLambda11;

    invoke-direct {v2, v0, p1}, Lorg/telegram/ui/ReportBottomSheet$$ExternalSyntheticLambda11;-><init>([Landroid/view/View;Lorg/telegram/tgnet/TLRPC$TL_reportResultChooseOption;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 p1, 0x1

    .line 206
    aget-object v0, v0, p1

    instance-of v1, v0, Lorg/telegram/ui/ReportBottomSheet$Page;

    if-eqz v1, :cond_1

    .line 207
    check-cast v0, Lorg/telegram/ui/ReportBottomSheet$Page;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ReportBottomSheet$Page;->bind(I)V

    :cond_1
    return-object p0
.end method
