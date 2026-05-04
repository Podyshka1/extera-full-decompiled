.class public final Lorg/telegram/ui/Components/BulletinFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/BulletinFactory$UndoObject;,
        Lorg/telegram/ui/Components/BulletinFactory$FileType;
    }
.end annotation


# instance fields
.field private final containerLayout:Landroid/widget/FrameLayout;

.field private final fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;


# direct methods
.method public static synthetic $r8$lambda$4nMiwG2pwddTbafjYrNEajoYRFs(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$InputStickerSet;)V
    .locals 0

    .line 877
    invoke-interface {p0, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8J3OiIFslIyIXkHdLTVDv63vF-s()V
    .locals 2

    .line 918
    sget-object v0, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 920
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW_DOWNLOADS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v1, 0x10008000

    .line 921
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 922
    sget-object v1, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic $r8$lambda$bNvrD_IXAgHTRtL8BQwlhaZLiQI(Lorg/telegram/ui/Components/Bulletin;Ljava/lang/CharSequence;)V
    .locals 0

    .line 864
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Bulletin;->onLoaded(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cmdwCWTjWScaKVp1N2mPSyjQJGc([ZLjava/lang/Runnable;)V
    .locals 2

    const/4 v0, 0x0

    .line 1334
    aget-boolean v1, p0, v0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 1335
    aput-boolean v1, p0, v0

    .line 1336
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$efZiD0xXuti1KR9p63wAu8mw3Qo(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$InputStickerSet;)V
    .locals 0

    .line 846
    invoke-interface {p0, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fjFmkJXXjN4xDfr4GJX14k_w6Wg(Lorg/telegram/ui/Components/Bulletin$LottieLayout;)V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x2

    .line 1270
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->performHapticFeedback(II)Z

    return-void
.end method

.method public static synthetic $r8$lambda$o9EtOcsiEQq5tWAmMCGKcHX1oHw(Lorg/telegram/ui/Components/Bulletin$LottieLayout;)V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x2

    .line 1415
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->performHapticFeedback(II)Z

    return-void
.end method

.method public static synthetic $r8$lambda$rGqRMmPy33W71zUl4SsdlueKl8w(Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/BaseFragment;J)V
    .locals 0

    if-eqz p0, :cond_0

    .line 1353
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    if-eqz p1, :cond_1

    .line 1356
    invoke-static {p2, p3}, Lorg/telegram/ui/ChatActivity;->of(J)Lorg/telegram/ui/ChatActivity;

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_1
    return-void
.end method

.method public static synthetic $r8$lambda$yygjfMhXwGKIBOss6ktGnM1K6ow(ILorg/telegram/ui/Components/Bulletin;JLorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V
    .locals 3

    if-eqz p4, :cond_2

    .line 852
    iget-object p4, p4, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-eqz p4, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    .line 854
    sget p0, Lorg/telegram/messenger/R$string;->TopicContainsEmojiPackSingle:I

    iget-object p4, p4, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p4, v1, v0

    const-string p4, "TopicContainsEmojiPackSingle"

    invoke-static {p4, p0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne p0, v2, :cond_1

    .line 856
    sget p0, Lorg/telegram/messenger/R$string;->StoryContainsEmojiPackSingle:I

    iget-object p4, p4, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p4, v1, v0

    const-string p4, "StoryContainsEmojiPackSingle"

    invoke-static {p4, p0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    goto :goto_0

    .line 858
    :cond_1
    sget p0, Lorg/telegram/messenger/R$string;->MessageContainsEmojiPackSingle:I

    iget-object p4, p4, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p4, v1, v0

    const-string p4, "MessageContainsEmojiPackSingle"

    invoke-static {p4, p0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    goto :goto_0

    .line 861
    :cond_2
    sget p0, Lorg/telegram/messenger/R$string;->AddEmojiNotFound:I

    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 863
    :goto_0
    new-instance p4, Lorg/telegram/ui/Components/BulletinFactory$$ExternalSyntheticLambda4;

    invoke-direct {p4, p1, p0}, Lorg/telegram/ui/Components/BulletinFactory$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/Bulletin;Ljava/lang/CharSequence;)V

    .line 865
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    sub-long/2addr p0, p2

    const-wide/16 p2, 0x2ee

    sub-long/2addr p2, p0

    const-wide/16 p0, 0x1

    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    .line 863
    invoke-static {p4, p0, p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetfragment(Lorg/telegram/ui/Components/BulletinFactory;)Lorg/telegram/ui/ActionBar/BaseFragment;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/BulletinFactory;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    return-object p0
.end method

.method private constructor <init>(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    iput-object p1, p0, Lorg/telegram/ui/Components/BulletinFactory;->containerLayout:Landroid/widget/FrameLayout;

    const/4 p1, 0x0

    .line 231
    iput-object p1, p0, Lorg/telegram/ui/Components/BulletinFactory;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 232
    iput-object p2, p0, Lorg/telegram/ui/Components/BulletinFactory;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-void
.end method

.method private constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 2

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 218
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLastStoryViewer()Lorg/telegram/ui/Stories/StoryViewer;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLastStoryViewer()Lorg/telegram/ui/Stories/StoryViewer;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/StoryViewer;->attachedToParent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 219
    iput-object v0, p0, Lorg/telegram/ui/Components/BulletinFactory;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 220
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLastStoryViewer()Lorg/telegram/ui/Stories/StoryViewer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoryViewer;->getContainerForBulletin()Landroid/widget/FrameLayout;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/BulletinFactory;->containerLayout:Landroid/widget/FrameLayout;

    .line 221
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLastStoryViewer()Lorg/telegram/ui/Stories/StoryViewer;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoryViewer;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/BulletinFactory;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-void

    .line 223
    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/Components/BulletinFactory;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 224
    iput-object v0, p0, Lorg/telegram/ui/Components/BulletinFactory;->containerLayout:Landroid/widget/FrameLayout;

    if-nez p1, :cond_1

    goto :goto_0

    .line 225
    :cond_1
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/telegram/ui/Components/BulletinFactory;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-void
.end method

.method public static canShowBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 76
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLayoutContainer()Landroid/widget/FrameLayout;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static createAddedAsAdminBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Lorg/telegram/ui/Components/Bulletin;
    .locals 5

    .line 1236
    new-instance v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1237
    sget v1, Lorg/telegram/messenger/R$raw;->ic_admin:I

    const-string v2, "Shield"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setAnimation(I[Ljava/lang/String;)V

    .line 1238
    iget-object v1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->UserAddedAsAdminHint:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const-string p1, "UserAddedAsAdminHint"

    invoke-static {p1, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p1, 0x5dc

    .line 1239
    invoke-static {p0, v0, p1}, Lorg/telegram/ui/Components/Bulletin;->make(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    return-object p0
.end method

.method public static createBanBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Lorg/telegram/ui/Components/Bulletin;
    .locals 6

    .line 1455
    new-instance v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    if-eqz p1, :cond_0

    .line 1458
    sget p1, Lorg/telegram/messenger/R$raw;->ic_ban:I

    const-string v1, "Hand"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setAnimation(I[Ljava/lang/String;)V

    .line 1459
    sget p1, Lorg/telegram/messenger/R$string;->UserBlocked:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1461
    :cond_0
    sget p1, Lorg/telegram/messenger/R$raw;->ic_unban:I

    const-string v1, "Finger 3"

    const-string v2, "Finger 4"

    const-string v3, "Main"

    const-string v4, "Finger 1"

    const-string v5, "Finger 2"

    filled-new-array {v3, v4, v5, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setAnimation(I[Ljava/lang/String;)V

    .line 1462
    sget p1, Lorg/telegram/messenger/R$string;->UserUnblocked:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 1464
    :goto_0
    iget-object v1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p1, 0x5dc

    .line 1465
    invoke-static {p0, v0, p1}, Lorg/telegram/ui/Components/Bulletin;->make(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    return-object p0
.end method

.method public static createCopyLinkBulletin(Landroid/widget/FrameLayout;)Lorg/telegram/ui/Components/Bulletin;
    .locals 1

    const/4 v0, 0x0

    .line 1510
    invoke-static {p0, v0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BulletinFactory;->createCopyLinkBulletin()Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    return-object p0
.end method

.method public static createCopyLinkBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/Bulletin;
    .locals 0

    .line 1505
    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BulletinFactory;->createCopyLinkBulletin()Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    return-object p0
.end method

.method public static createDissableSharingBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;Z)Lorg/telegram/ui/Components/Bulletin;
    .locals 4

    .line 1470
    new-instance v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 1474
    sget v2, Lorg/telegram/messenger/R$string;->DisableSharingToastDisabledPending:I

    goto :goto_0

    .line 1475
    :cond_0
    sget v2, Lorg/telegram/messenger/R$string;->DisableSharingToastEnabledPending:I

    :goto_0
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    .line 1473
    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_1
    if-eqz p2, :cond_2

    .line 1478
    sget v2, Lorg/telegram/messenger/R$string;->DisableSharingToastDisabled:I

    goto :goto_1

    .line 1479
    :cond_2
    sget v2, Lorg/telegram/messenger/R$string;->DisableSharingToastEnabled:I

    .line 1477
    :goto_1
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1482
    :goto_2
    iget-object v3, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez p2, :cond_4

    if-eqz p1, :cond_3

    goto :goto_3

    .line 1483
    :cond_3
    sget p1, Lorg/telegram/messenger/R$raw;->contact_check:I

    goto :goto_4

    :cond_4
    :goto_3
    sget p1, Lorg/telegram/messenger/R$raw;->e_hand_2:I

    :goto_4
    new-array p2, v1, [Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setAnimation(I[Ljava/lang/String;)V

    const/16 p1, 0x1388

    .line 1485
    invoke-static {p0, v0, p1}, Lorg/telegram/ui/Components/Bulletin;->make(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    return-object p0
.end method

.method public static createForwardedBulletin(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/widget/FrameLayout;IJIIII)Lorg/telegram/ui/Components/Bulletin;
    .locals 12

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide/from16 v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    .line 1319
    invoke-static/range {v0 .. v11}, Lorg/telegram/ui/Components/BulletinFactory;->createForwardedBulletin(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/widget/FrameLayout;IJIIIILjava/lang/Runnable;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    return-object p0
.end method

.method public static createForwardedBulletin(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/widget/FrameLayout;IJIIIILjava/lang/Runnable;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin;
    .locals 13

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move/from16 v3, p3

    move-wide/from16 v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    .line 1323
    invoke-static/range {v0 .. v12}, Lorg/telegram/ui/Components/BulletinFactory;->createForwardedBulletin(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/widget/FrameLayout;IJIIIIZLjava/lang/Runnable;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    return-object p0
.end method

.method public static createForwardedBulletin(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/widget/FrameLayout;IJIIIIZLjava/lang/Runnable;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin;
    .locals 17

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-wide/from16 v3, p4

    move/from16 v5, p6

    move/from16 v6, p9

    move-object/from16 v7, p11

    move-object/from16 v8, p12

    .line 1327
    sget v9, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v9}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v9

    const/4 v11, 0x1

    if-eqz v9, :cond_0

    if-eqz v0, :cond_0

    if-gt v2, v11, :cond_0

    sget v9, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v9}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v9

    iget-wide v12, v9, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    cmp-long v9, v3, v12

    if-nez v9, :cond_0

    if-nez p10, :cond_0

    .line 1328
    new-instance v9, Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions;

    invoke-direct {v9, v0, v5}, Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;I)V

    goto :goto_2

    .line 1329
    :cond_0
    new-instance v9, Lorg/telegram/ui/Components/Bulletin$LottieLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v12

    :goto_0
    move-object/from16 v13, p0

    move/from16 v14, p7

    move/from16 v15, p8

    goto :goto_1

    :cond_1
    const/4 v12, 0x0

    goto :goto_0

    :goto_1
    invoke-direct {v9, v13, v12, v14, v15}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;II)V

    :goto_2
    const/4 v12, 0x0

    if-nez v8, :cond_3

    if-eqz v7, :cond_2

    goto :goto_3

    :cond_2
    move v13, v12

    goto :goto_4

    :cond_3
    :goto_3
    move v13, v11

    .line 1332
    :goto_4
    new-array v14, v11, [Z

    aput-boolean v12, v14, v12

    if-eqz v8, :cond_4

    .line 1333
    new-instance v15, Lorg/telegram/ui/Components/BulletinFactory$$ExternalSyntheticLambda6;

    invoke-direct {v15, v14, v8}, Lorg/telegram/ui/Components/BulletinFactory$$ExternalSyntheticLambda6;-><init>([ZLjava/lang/Runnable;)V

    goto :goto_5

    :cond_4
    const/4 v15, 0x0

    :goto_5
    const/4 v14, 0x2

    if-gt v2, v11, :cond_11

    .line 1342
    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    move-object/from16 p0, v9

    iget-wide v8, v2, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    cmp-long v2, v3, v8

    const/4 v8, -0x1

    if-nez v2, :cond_7

    if-gt v5, v11, :cond_6

    .line 1344
    sget v2, Lorg/telegram/messenger/R$string;->FwdMessageToSavedMessages:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz p10, :cond_5

    new-instance v3, Lorg/telegram/ui/Components/BulletinFactory$$ExternalSyntheticLambda7;

    invoke-direct {v3}, Lorg/telegram/ui/Components/BulletinFactory$$ExternalSyntheticLambda7;-><init>()V

    goto :goto_6

    :cond_5
    new-instance v3, Lorg/telegram/ui/Components/BulletinFactory$$ExternalSyntheticLambda5;

    invoke-direct {v3}, Lorg/telegram/ui/Components/BulletinFactory$$ExternalSyntheticLambda5;-><init>()V

    :goto_6
    invoke-static {v2, v8, v14, v3}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;IILjava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    goto :goto_7

    .line 1346
    :cond_6
    sget v2, Lorg/telegram/messenger/R$string;->FwdMessagesToSavedMessages:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Components/BulletinFactory$$ExternalSyntheticLambda5;

    invoke-direct {v3}, Lorg/telegram/ui/Components/BulletinFactory$$ExternalSyntheticLambda5;-><init>()V

    invoke-static {v2, v8, v14, v3}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;IILjava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    .line 1348
    :goto_7
    sget v3, Lorg/telegram/messenger/R$raw;->saved_messages:I

    new-array v4, v12, [Ljava/lang/String;

    const/16 v5, 0x1e

    move-object/from16 v9, p0

    invoke-virtual {v9, v3, v5, v5, v4}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setAnimation(III[Ljava/lang/String;)V

    goto/16 :goto_c

    :cond_7
    move-object/from16 v9, p0

    .line 1351
    new-instance v2, Lorg/telegram/ui/Components/BulletinFactory$$ExternalSyntheticLambda8;

    invoke-direct {v2, v15, v0, v3, v4}, Lorg/telegram/ui/Components/BulletinFactory$$ExternalSyntheticLambda8;-><init>(Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/BaseFragment;J)V

    .line 1360
    invoke-static {v3, v4}, Lorg/telegram/messenger/DialogObject;->isChatDialog(J)Z

    move-result v16

    if-eqz v16, :cond_b

    .line 1361
    sget v16, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v10

    neg-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v10, v3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    if-gt v5, v11, :cond_9

    if-eqz v0, :cond_8

    .line 1364
    sget v4, Lorg/telegram/messenger/R$string;->FwdMessageToGroup:I

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    new-array v5, v11, [Ljava/lang/Object;

    aput-object v3, v5, v12

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v8, v14, v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;IILjava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    goto/16 :goto_a

    .line 1366
    :cond_8
    sget v2, Lorg/telegram/messenger/R$string;->FwdMessageToGroup:I

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    new-array v4, v11, [Ljava/lang/Object;

    aput-object v3, v4, v12

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    goto/16 :goto_a

    :cond_9
    if-eqz v0, :cond_a

    .line 1370
    sget v4, Lorg/telegram/messenger/R$string;->FwdMessagesToGroup:I

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    new-array v5, v11, [Ljava/lang/Object;

    aput-object v3, v5, v12

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v8, v14, v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;IILjava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    goto/16 :goto_a

    .line 1372
    :cond_a
    sget v2, Lorg/telegram/messenger/R$string;->FwdMessagesToGroup:I

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    new-array v4, v11, [Ljava/lang/Object;

    aput-object v3, v4, v12

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    goto :goto_a

    .line 1376
    :cond_b
    sget v10, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v10}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v10

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v10, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    if-gt v5, v11, :cond_e

    if-eqz v13, :cond_c

    .line 1378
    sget v4, Lorg/telegram/messenger/R$string;->FwdMessageToUserShort:I

    goto :goto_8

    :cond_c
    sget v4, Lorg/telegram/messenger/R$string;->FwdMessageToUser:I

    :goto_8
    if-eqz v0, :cond_d

    .line 1380
    invoke-static {v3}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v3

    new-array v5, v11, [Ljava/lang/Object;

    aput-object v3, v5, v12

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v8, v14, v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;IILjava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    goto :goto_a

    .line 1382
    :cond_d
    invoke-static {v3}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v11, [Ljava/lang/Object;

    aput-object v2, v3, v12

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    goto :goto_a

    :cond_e
    if-eqz v13, :cond_f

    .line 1385
    sget v4, Lorg/telegram/messenger/R$string;->FwdMessagesToUserShort:I

    goto :goto_9

    :cond_f
    sget v4, Lorg/telegram/messenger/R$string;->FwdMessagesToUser:I

    :goto_9
    if-eqz v0, :cond_10

    .line 1387
    invoke-static {v3}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v3

    new-array v5, v11, [Ljava/lang/Object;

    aput-object v3, v5, v12

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v8, v14, v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;IILjava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    goto :goto_a

    .line 1389
    :cond_10
    invoke-static {v3}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v11, [Ljava/lang/Object;

    aput-object v2, v3, v12

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    .line 1393
    :goto_a
    sget v3, Lorg/telegram/messenger/R$raw;->forward:I

    new-array v4, v12, [Ljava/lang/String;

    const/16 v5, 0x1e

    invoke-virtual {v9, v3, v5, v5, v4}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setAnimation(III[Ljava/lang/String;)V

    goto :goto_c

    :cond_11
    if-gt v5, v11, :cond_12

    .line 1398
    const-string v3, "FwdMessageToManyChats"

    new-array v4, v12, [Ljava/lang/Object;

    invoke-static {v3, v2, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    goto :goto_b

    .line 1400
    :cond_12
    const-string v3, "FwdMessagesToManyChats"

    new-array v4, v12, [Ljava/lang/Object;

    invoke-static {v3, v2, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    .line 1402
    :goto_b
    sget v3, Lorg/telegram/messenger/R$raw;->forward:I

    new-array v4, v12, [Ljava/lang/String;

    const/16 v5, 0x1e

    invoke-virtual {v9, v3, v5, v5, v4}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setAnimation(III[Ljava/lang/String;)V

    .line 1405
    :goto_c
    iget-object v3, v9, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v13, :cond_14

    .line 1407
    new-instance v2, Lorg/telegram/ui/Components/Bulletin$UndoButton;

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v10

    goto :goto_d

    :cond_13
    const/4 v10, 0x0

    :goto_d
    invoke-direct {v2, v3, v11, v11, v10}, Lorg/telegram/ui/Components/Bulletin$UndoButton;-><init>(Landroid/content/Context;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1408
    invoke-virtual {v2, v7}, Lorg/telegram/ui/Components/Bulletin$UndoButton;->setUndoAction(Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin$UndoButton;

    move-result-object v2

    .line 1409
    invoke-virtual {v2, v15}, Lorg/telegram/ui/Components/Bulletin$UndoButton;->setDelayedAction(Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin$UndoButton;

    move-result-object v2

    .line 1407
    invoke-virtual {v9, v2}, Lorg/telegram/ui/Components/Bulletin$ButtonLayout;->setButton(Lorg/telegram/ui/Components/Bulletin$Button;)V

    .line 1414
    :cond_14
    new-instance v2, Lorg/telegram/ui/Components/BulletinFactory$$ExternalSyntheticLambda9;

    invoke-direct {v2, v9}, Lorg/telegram/ui/Components/BulletinFactory$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Components/Bulletin$LottieLayout;)V

    const/16 v3, 0x12c

    int-to-long v3, v3

    invoke-virtual {v9, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    if-eqz v1, :cond_15

    .line 1421
    invoke-static {v1, v9, v6}, Lorg/telegram/ui/Components/Bulletin;->make(Landroid/widget/FrameLayout;Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    goto :goto_e

    :cond_15
    if-eqz v0, :cond_17

    .line 1423
    invoke-static {v0, v9, v6}, Lorg/telegram/ui/Components/Bulletin;->make(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    .line 1428
    :goto_e
    instance-of v1, v9, Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions;

    if-eqz v1, :cond_16

    .line 1429
    iget-object v1, v9, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1430
    iget-object v1, v9, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {v1, v14}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1431
    check-cast v9, Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions;

    invoke-virtual {v9, v0}, Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions;->setBulletin(Lorg/telegram/ui/Components/Bulletin;)V

    .line 1433
    invoke-virtual {v0, v12}, Lorg/telegram/ui/Components/Bulletin;->hideAfterBottomSheet(Z)Lorg/telegram/ui/Components/Bulletin;

    :cond_16
    return-object v0

    .line 1425
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static createInviteSentBulletin(Landroid/content/Context;Landroid/widget/FrameLayout;IJIII)Lorg/telegram/ui/Components/Bulletin;
    .locals 4

    .line 1244
    new-instance p5, Lorg/telegram/ui/Components/Bulletin$LottieLayout;

    const/4 v0, 0x0

    invoke-direct {p5, p0, v0, p6, p7}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;II)V

    const/16 p0, 0x12c

    const/4 p6, 0x0

    const/16 p7, 0x1e

    const/4 v0, 0x1

    if-gt p2, v0, :cond_2

    .line 1248
    sget p2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p2

    iget-wide v1, p2, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    cmp-long p2, p3, v1

    if-nez p2, :cond_0

    .line 1249
    sget p0, Lorg/telegram/messenger/R$string;->InvLinkToSavedMessages:I

    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    .line 1250
    sget p2, Lorg/telegram/messenger/R$raw;->saved_messages:I

    new-array p3, p6, [Ljava/lang/String;

    invoke-virtual {p5, p2, p7, p7, p3}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setAnimation(III[Ljava/lang/String;)V

    const/4 p2, -0x1

    goto/16 :goto_2

    .line 1252
    :cond_0
    invoke-static {p3, p4}, Lorg/telegram/messenger/DialogObject;->isChatDialog(J)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1253
    sget p2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    neg-long p3, p3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p2

    .line 1254
    sget p3, Lorg/telegram/messenger/R$string;->InvLinkToGroup:I

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    new-array p4, v0, [Ljava/lang/Object;

    aput-object p2, p4, p6

    const-string p2, "InvLinkToGroup"

    invoke-static {p2, p3, p4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    goto :goto_0

    .line 1256
    :cond_1
    sget p2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p2

    .line 1257
    sget p3, Lorg/telegram/messenger/R$string;->InvLinkToUser:I

    invoke-static {p2}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object p2

    new-array p4, v0, [Ljava/lang/Object;

    aput-object p2, p4, p6

    const-string p2, "InvLinkToUser"

    invoke-static {p2, p3, p4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    .line 1259
    :goto_0
    sget p3, Lorg/telegram/messenger/R$raw;->forward:I

    new-array p4, p6, [Ljava/lang/String;

    invoke-virtual {p5, p3, p7, p7, p4}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setAnimation(III[Ljava/lang/String;)V

    :goto_1
    move-object v3, p2

    move p2, p0

    move-object p0, v3

    goto :goto_2

    .line 1263
    :cond_2
    sget p3, Lorg/telegram/messenger/R$string;->InvLinkToChats:I

    const-string p4, "Chats"

    new-array v1, p6, [Ljava/lang/Object;

    invoke-static {p4, p2, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    new-array p4, v0, [Ljava/lang/Object;

    aput-object p2, p4, p6

    const-string p2, "InvLinkToChats"

    invoke-static {p2, p3, p4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    .line 1264
    sget p3, Lorg/telegram/messenger/R$raw;->forward:I

    new-array p4, p6, [Ljava/lang/String;

    invoke-virtual {p5, p3, p7, p7, p4}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setAnimation(III[Ljava/lang/String;)V

    goto :goto_1

    .line 1267
    :goto_2
    iget-object p3, p5, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {p3, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-lez p2, :cond_3

    .line 1269
    new-instance p0, Lorg/telegram/ui/Components/BulletinFactory$$ExternalSyntheticLambda10;

    invoke-direct {p0, p5}, Lorg/telegram/ui/Components/BulletinFactory$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Components/Bulletin$LottieLayout;)V

    int-to-long p2, p2

    invoke-virtual {p5, p0, p2, p3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    const/16 p0, 0x5dc

    .line 1273
    invoke-static {p1, p5, p0}, Lorg/telegram/ui/Components/Bulletin;->make(Landroid/widget/FrameLayout;Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    return-object p0
.end method

.method public static createMuteBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;I)Lorg/telegram/ui/Components/Bulletin;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1099
    invoke-static {p0, p1, v0, v1}, Lorg/telegram/ui/Components/BulletinFactory;->createMuteBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    return-object p0
.end method

.method public static createMuteBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;
    .locals 5

    .line 1104
    new-instance v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1110
    const-string p3, "Hours"

    const-string v1, "NotificationsMutedForHint"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_5

    if-eq p1, v2, :cond_4

    const/4 p3, 0x2

    if-eq p1, p3, :cond_3

    const/4 p3, 0x3

    if-eq p1, p3, :cond_2

    const/4 p3, 0x4

    if-eq p1, p3, :cond_1

    const/4 p3, 0x5

    if-ne p1, p3, :cond_0

    .line 1112
    sget p1, Lorg/telegram/messenger/R$string;->NotificationsMutedForHint:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->formatTTLString(I)Ljava/lang/String;

    move-result-object p2

    new-array p3, v2, [Ljava/lang/Object;

    aput-object p2, p3, v3

    invoke-static {v1, p1, p3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    move p2, v2

    goto :goto_1

    .line 1137
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 1133
    :cond_1
    sget p1, Lorg/telegram/messenger/R$string;->NotificationsUnmutedHint:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    move p2, v3

    move v2, p2

    goto :goto_1

    .line 1129
    :cond_2
    sget p1, Lorg/telegram/messenger/R$string;->NotificationsMutedHint:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    move p2, v2

    move v2, v3

    goto :goto_1

    .line 1125
    :cond_3
    sget p1, Lorg/telegram/messenger/R$string;->NotificationsMutedForHint:I

    const-string p2, "Days"

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p2, p3, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    new-array p3, v2, [Ljava/lang/Object;

    aput-object p2, p3, v3

    invoke-static {v1, p1, p3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1121
    :cond_4
    sget p1, Lorg/telegram/messenger/R$string;->NotificationsMutedForHint:I

    const/16 p2, 0x8

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p3, p2, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    new-array p3, v2, [Ljava/lang/Object;

    aput-object p2, p3, v3

    invoke-static {v1, p1, p3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1117
    :cond_5
    sget p1, Lorg/telegram/messenger/R$string;->NotificationsMutedForHint:I

    new-array p2, v3, [Ljava/lang/Object;

    invoke-static {p3, v2, p2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    new-array p3, v2, [Ljava/lang/Object;

    aput-object p2, p3, v3

    invoke-static {v1, p1, p3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :goto_1
    if-eqz v2, :cond_6

    .line 1141
    sget p2, Lorg/telegram/messenger/R$raw;->mute_for:I

    new-array p3, v3, [Ljava/lang/String;

    invoke-virtual {v0, p2, p3}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setAnimation(I[Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    if-eqz p2, :cond_7

    .line 1143
    sget p2, Lorg/telegram/messenger/R$raw;->ic_mute:I

    const-string p3, "Curve Big"

    const-string v1, "Curve Small"

    const-string v2, "Body Main"

    const-string v3, "Body Top"

    const-string v4, "Line"

    filled-new-array {v2, v3, v4, p3, v1}, [Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p2, p3}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setAnimation(I[Ljava/lang/String;)V

    goto :goto_2

    .line 1145
    :cond_7
    sget p2, Lorg/telegram/messenger/R$raw;->ic_unmute:I

    const-string p3, "Wibe Big 3"

    const-string v1, "Wibe Small"

    const-string v2, "BODY"

    const-string v3, "Wibe Big"

    filled-new-array {v2, v3, p3, v1}, [Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p2, p3}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setAnimation(I[Ljava/lang/String;)V

    .line 1148
    :goto_2
    iget-object p2, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p1, 0x5dc

    .line 1149
    invoke-static {p0, v0, p1}, Lorg/telegram/ui/Components/Bulletin;->make(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    return-object p0
.end method

.method public static createMuteBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;ZILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;
    .locals 4

    .line 1154
    new-instance v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1155
    iget-object p3, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 1157
    const-string v2, "NotificationsMutedHintChats"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, p2, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 1158
    :cond_0
    const-string v2, "NotificationsUnmutedHintChats"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, p2, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 1155
    :goto_0
    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_1

    .line 1161
    sget p1, Lorg/telegram/messenger/R$raw;->ic_mute:I

    const-string p2, "Curve Big"

    const-string p3, "Curve Small"

    const-string v1, "Body Main"

    const-string v2, "Body Top"

    const-string v3, "Line"

    filled-new-array {v1, v2, v3, p2, p3}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setAnimation(I[Ljava/lang/String;)V

    goto :goto_1

    .line 1163
    :cond_1
    sget p1, Lorg/telegram/messenger/R$raw;->ic_unmute:I

    const-string p2, "Wibe Big 3"

    const-string p3, "Wibe Small"

    const-string v1, "BODY"

    const-string v2, "Wibe Big"

    filled-new-array {v1, v2, p2, p3}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setAnimation(I[Ljava/lang/String;)V

    :goto_1
    const/16 p1, 0x5dc

    .line 1165
    invoke-static {p0, v0, p1}, Lorg/telegram/ui/Components/Bulletin;->make(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    return-object p0
.end method

.method public static createMuteBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    const/4 v0, 0x0

    .line 1170
    invoke-static {p0, p1, v0, p2}, Lorg/telegram/ui/Components/BulletinFactory;->createMuteBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    return-object p0
.end method

.method public static createPinMessageBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1515
    invoke-static {p0, v0, v1, v1, p1}, Lorg/telegram/ui/Components/BulletinFactory;->createPinMessageBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;ZLjava/lang/Runnable;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    return-object p0
.end method

.method private static createPinMessageBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;ZLjava/lang/Runnable;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;
    .locals 4

    .line 1525
    new-instance v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p4}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    if-eqz p1, :cond_0

    .line 1526
    sget v1, Lorg/telegram/messenger/R$raw;->ic_pin:I

    goto :goto_0

    :cond_0
    sget v1, Lorg/telegram/messenger/R$raw;->ic_unpin:I

    :goto_0
    const-string v2, "Pin"

    const-string v3, "Line"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1c

    invoke-virtual {v0, v1, v3, v3, v2}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setAnimation(III[Ljava/lang/String;)V

    .line 1527
    iget-object v1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const-string v2, "MessagePinnedHint"

    goto :goto_1

    :cond_1
    const-string v2, "MessageUnpinnedHint"

    :goto_1
    if-eqz p1, :cond_2

    sget v3, Lorg/telegram/messenger/R$string;->MessagePinnedHint:I

    goto :goto_2

    :cond_2
    sget v3, Lorg/telegram/messenger/R$string;->MessageUnpinnedHint:I

    :goto_2
    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez p1, :cond_3

    .line 1529
    new-instance v1, Lorg/telegram/ui/Components/Bulletin$UndoButton;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, p4}, Lorg/telegram/ui/Components/Bulletin$UndoButton;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v1, p2}, Lorg/telegram/ui/Components/Bulletin$UndoButton;->setUndoAction(Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin$UndoButton;

    move-result-object p2

    invoke-virtual {p2, p3}, Lorg/telegram/ui/Components/Bulletin$UndoButton;->setDelayedAction(Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin$UndoButton;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/telegram/ui/Components/Bulletin$ButtonLayout;->setButton(Lorg/telegram/ui/Components/Bulletin$Button;)V

    :cond_3
    if-eqz p1, :cond_4

    const/16 p1, 0x5dc

    goto :goto_3

    :cond_4
    const/16 p1, 0x1388

    .line 1531
    :goto_3
    invoke-static {p0, v0, p1}, Lorg/telegram/ui/Components/Bulletin;->make(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    return-object p0
.end method

.method public static createPromoteToAdminBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Lorg/telegram/ui/Components/Bulletin;
    .locals 5

    .line 1228
    new-instance v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1229
    sget v1, Lorg/telegram/messenger/R$raw;->ic_admin:I

    const-string v2, "Shield"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setAnimation(I[Ljava/lang/String;)V

    .line 1230
    iget-object v1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->UserSetAsAdminHint:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const-string p1, "UserSetAsAdminHint"

    invoke-static {p1, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p1, 0x5dc

    .line 1231
    invoke-static {p0, v0, p1}, Lorg/telegram/ui/Components/Bulletin;->make(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    return-object p0
.end method

.method public static createRemoveFromChatBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;)Lorg/telegram/ui/Components/Bulletin;
    .locals 5

    .line 1441
    new-instance v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1442
    sget v1, Lorg/telegram/messenger/R$raw;->ic_ban:I

    const-string v2, "Hand"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setAnimation(I[Ljava/lang/String;)V

    .line 1444
    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$User;->deleted:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1445
    sget p1, Lorg/telegram/messenger/R$string;->HiddenName:I

    new-array v1, v2, [Ljava/lang/Object;

    const-string v3, "HiddenName"

    invoke-static {v3, p1, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1447
    :cond_0
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    .line 1449
    :goto_0
    iget-object v1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->UserRemovedFromChatHint:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v2

    const/4 p1, 0x1

    aput-object p2, v4, p1

    const-string p1, "UserRemovedFromChatHint"

    invoke-static {p1, v3, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p1, 0x5dc

    .line 1450
    invoke-static {p0, v0, p1}, Lorg/telegram/ui/Components/Bulletin;->make(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    return-object p0
.end method

.method public static createSaveToGalleryBulletin(Landroid/widget/FrameLayout;IZII)Lorg/telegram/ui/Components/Bulletin;
    .locals 1

    const/4 v0, 0x0

    .line 1223
    invoke-static {p0, v0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p0

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    if-le p1, v0, :cond_0

    sget-object p2, Lorg/telegram/ui/Components/BulletinFactory$FileType;->VIDEOS:Lorg/telegram/ui/Components/BulletinFactory$FileType;

    goto :goto_0

    :cond_0
    sget-object p2, Lorg/telegram/ui/Components/BulletinFactory$FileType;->VIDEO:Lorg/telegram/ui/Components/BulletinFactory$FileType;

    goto :goto_0

    :cond_1
    if-le p1, v0, :cond_2

    sget-object p2, Lorg/telegram/ui/Components/BulletinFactory$FileType;->PHOTOS:Lorg/telegram/ui/Components/BulletinFactory$FileType;

    goto :goto_0

    :cond_2
    sget-object p2, Lorg/telegram/ui/Components/BulletinFactory$FileType;->PHOTO:Lorg/telegram/ui/Components/BulletinFactory$FileType;

    :goto_0
    invoke-virtual {p0, p2, p1, p3, p4}, Lorg/telegram/ui/Components/BulletinFactory;->createDownloadBulletin(Lorg/telegram/ui/Components/BulletinFactory$FileType;III)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    return-object p0
.end method

.method public static createSaveToGalleryBulletin(Landroid/widget/FrameLayout;ZII)Lorg/telegram/ui/Components/Bulletin;
    .locals 1

    const/4 v0, 0x0

    .line 1218
    invoke-static {p0, v0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p0

    if-eqz p1, :cond_0

    sget-object p1, Lorg/telegram/ui/Components/BulletinFactory$FileType;->VIDEO:Lorg/telegram/ui/Components/BulletinFactory$FileType;

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/telegram/ui/Components/BulletinFactory$FileType;->PHOTO:Lorg/telegram/ui/Components/BulletinFactory$FileType;

    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2, p3}, Lorg/telegram/ui/Components/BulletinFactory;->createDownloadBulletin(Lorg/telegram/ui/Components/BulletinFactory$FileType;III)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    return-object p0
.end method

.method public static createSaveToGalleryBulletin(Landroid/widget/FrameLayout;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;
    .locals 0

    .line 1213
    invoke-static {p0, p2}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p0

    if-eqz p1, :cond_0

    sget-object p1, Lorg/telegram/ui/Components/BulletinFactory$FileType;->VIDEO:Lorg/telegram/ui/Components/BulletinFactory$FileType;

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/telegram/ui/Components/BulletinFactory$FileType;->PHOTO:Lorg/telegram/ui/Components/BulletinFactory$FileType;

    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Components/BulletinFactory;->createDownloadBulletin(Lorg/telegram/ui/Components/BulletinFactory$FileType;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    return-object p0
.end method

.method public static createSaveToGalleryBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;
    .locals 0

    .line 1208
    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p0

    if-eqz p1, :cond_0

    sget-object p1, Lorg/telegram/ui/Components/BulletinFactory$FileType;->VIDEO:Lorg/telegram/ui/Components/BulletinFactory$FileType;

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/telegram/ui/Components/BulletinFactory$FileType;->PHOTO:Lorg/telegram/ui/Components/BulletinFactory$FileType;

    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Components/BulletinFactory;->createDownloadBulletin(Lorg/telegram/ui/Components/BulletinFactory$FileType;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    return-object p0
.end method

.method public static createSoundEnabledBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;
    .locals 2

    .line 1536
    new-instance v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 p2, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    if-ne p1, p2, :cond_0

    .line 1547
    sget p1, Lorg/telegram/messenger/R$string;->SoundOffHint:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    move p2, v1

    goto :goto_0

    .line 1551
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 1543
    :cond_1
    sget p1, Lorg/telegram/messenger/R$string;->SoundOnHint:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-eqz p2, :cond_2

    .line 1555
    sget p2, Lorg/telegram/messenger/R$raw;->sound_on:I

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, p2, v1}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setAnimation(I[Ljava/lang/String;)V

    goto :goto_1

    .line 1557
    :cond_2
    sget p2, Lorg/telegram/messenger/R$raw;->sound_off:I

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, p2, v1}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setAnimation(I[Ljava/lang/String;)V

    .line 1560
    :goto_1
    iget-object p2, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p1, 0x5dc

    .line 1561
    invoke-static {p0, v0, p1}, Lorg/telegram/ui/Components/Bulletin;->make(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    return-object p0
.end method

.method public static createUnpinAllMessagesBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;IZLjava/lang/Runnable;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;
    .locals 4

    .line 1183
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    if-eqz p4, :cond_0

    .line 1185
    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    :cond_0
    const/4 p0, 0x0

    return-object p0

    .line 1190
    :cond_1
    const-string v0, "Line"

    const-string v1, "Pin"

    const/16 v2, 0x1c

    if-eqz p2, :cond_2

    .line 1191
    new-instance p1, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2, p5}, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1192
    sget p2, Lorg/telegram/messenger/R$raw;->ic_unpin:I

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v2, v2, v0}, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;->setAnimation(III[Ljava/lang/String;)V

    .line 1193
    iget-object p2, p1, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;->titleTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v0, Lorg/telegram/messenger/R$string;->PinnedMessagesHidden:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1194
    iget-object p2, p1, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;->subtitleTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v0, Lorg/telegram/messenger/R$string;->PinnedMessagesHiddenInfo:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1197
    :cond_2
    new-instance p2, Lorg/telegram/ui/Components/Bulletin$LottieLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {p2, v3, p5}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1198
    sget v3, Lorg/telegram/messenger/R$raw;->ic_unpin:I

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v3, v2, v2, v0}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setAnimation(III[Ljava/lang/String;)V

    .line 1199
    iget-object v0, p2, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "MessagesUnpinned"

    invoke-static {v2, p1, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object p1, p2

    .line 1202
    :goto_0
    new-instance p2, Lorg/telegram/ui/Components/Bulletin$UndoButton;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p2, v0, v1, p5}, Lorg/telegram/ui/Components/Bulletin$UndoButton;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {p2, p3}, Lorg/telegram/ui/Components/Bulletin$UndoButton;->setUndoAction(Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin$UndoButton;

    move-result-object p2

    invoke-virtual {p2, p4}, Lorg/telegram/ui/Components/Bulletin$UndoButton;->setDelayedAction(Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin$UndoButton;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Bulletin$ButtonLayout;->setButton(Lorg/telegram/ui/Components/Bulletin$Button;)V

    const/16 p2, 0x1388

    .line 1203
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Components/Bulletin;->make(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    return-object p0
.end method

.method public static createUnpinMessageBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/Runnable;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;
    .locals 1

    const/4 v0, 0x0

    .line 1520
    invoke-static {p0, v0, p1, p2, p3}, Lorg/telegram/ui/Components/BulletinFactory;->createPinMessageBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;ZLjava/lang/Runnable;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    return-object p0
.end method

.method public static global()Lorg/telegram/ui/Components/BulletinFactory;
    .locals 3

    .line 83
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 85
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/telegram/ui/Components/Bulletin$BulletinWindow;->make(Landroid/content/Context;)Lorg/telegram/ui/Components/Bulletin$BulletinWindow$BulletinWindowLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    return-object v0

    .line 87
    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;

    instance-of v2, v1, Lorg/telegram/ui/ActionBar/BottomSheet;

    if-eqz v2, :cond_1

    .line 88
    check-cast v1, Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v1, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    return-object v0

    .line 90
    :cond_1
    invoke-static {v0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    return-object v0
.end method

.method public static of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;
    .locals 1

    .line 72
    new-instance v0, Lorg/telegram/ui/Components/BulletinFactory;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/BulletinFactory;-><init>(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-object v0
.end method

.method public static of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;
    .locals 1

    if-nez p0, :cond_0

    .line 67
    invoke-static {}, Lorg/telegram/ui/Components/BulletinFactory;->global()Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p0

    return-object p0

    .line 68
    :cond_0
    new-instance v0, Lorg/telegram/ui/Components/BulletinFactory;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/BulletinFactory;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return-object v0
.end method

.method public static showError(Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 4

    .line 134
    sget-boolean v0, Lorg/telegram/ui/LaunchActivity;->isActive:Z

    if-nez v0, :cond_0

    return-void

    .line 135
    :cond_0
    invoke-static {}, Lorg/telegram/ui/Components/BulletinFactory;->global()Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->UnknownErrorCode:I

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/BulletinFactory;->createErrorBulletin(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method


# virtual methods
.method public create(Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;
    .locals 1

    .line 1068
    iget-object v0, p0, Lorg/telegram/ui/Components/BulletinFactory;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v0, :cond_0

    .line 1069
    invoke-static {v0, p1, p2}, Lorg/telegram/ui/Components/Bulletin;->make(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1

    .line 1071
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/BulletinFactory;->containerLayout:Landroid/widget/FrameLayout;

    invoke-static {v0, p1, p2}, Lorg/telegram/ui/Components/Bulletin;->make(Landroid/widget/FrameLayout;Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createAdReportedBulletin(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;
    .locals 3

    .line 1277
    invoke-virtual {p0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance p1, Lorg/telegram/ui/Components/Bulletin$EmptyBulletin;

    invoke-direct {p1}, Lorg/telegram/ui/Components/Bulletin$EmptyBulletin;-><init>()V

    return-object p1

    .line 1278
    :cond_0
    new-instance v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/BulletinFactory;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1279
    sget v1, Lorg/telegram/messenger/R$raw;->ic_admin:I

    const-string v2, "Shield"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setAnimation(I[Ljava/lang/String;)V

    .line 1280
    iget-object v1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1281
    iget-object v1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1282
    iget-object v1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p1, 0xabe

    .line 1283
    invoke-virtual {p0, v0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->create(Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createBanBulletin(Z)Lorg/telegram/ui/Components/Bulletin;
    .locals 6

    .line 1490
    new-instance v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/BulletinFactory;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    if-eqz p1, :cond_0

    .line 1493
    sget p1, Lorg/telegram/messenger/R$raw;->ic_ban:I

    const-string v1, "Hand"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setAnimation(I[Ljava/lang/String;)V

    .line 1494
    sget p1, Lorg/telegram/messenger/R$string;->UserBlocked:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1496
    :cond_0
    sget p1, Lorg/telegram/messenger/R$raw;->ic_unban:I

    const-string v1, "Finger 3"

    const-string v2, "Finger 4"

    const-string v3, "Main"

    const-string v4, "Finger 1"

    const-string v5, "Finger 2"

    filled-new-array {v3, v4, v5, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setAnimation(I[Ljava/lang/String;)V

    .line 1497
    sget p1, Lorg/telegram/messenger/R$string;->UserUnblocked:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 1499
    :goto_0
    iget-object v1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p1, 0x5dc

    .line 1500
    invoke-virtual {p0, v0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->create(Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createCaptionLimitBulletin(ILjava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin;
    .locals 7

    .line 957
    new-instance v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 958
    sget v1, Lorg/telegram/messenger/R$raw;->caption_limit:I

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setAnimation(I[Ljava/lang/String;)V

    .line 959
    const-string v1, "ChannelCaptionLimitPremiumPromo"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, p1, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 960
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-static {v1}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    const/16 v3, 0x2a

    .line 961
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    add-int/lit8 v6, v3, 0x1

    .line 962
    invoke-virtual {p1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v4, v6, p1}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 963
    new-instance p1, Lorg/telegram/ui/Components/BulletinFactory$1;

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/Components/BulletinFactory$1;-><init>(Lorg/telegram/ui/Components/BulletinFactory;Ljava/lang/Runnable;)V

    add-int/lit8 v3, v3, -0x1

    const/16 p2, 0x21

    invoke-virtual {v1, p1, v4, v3, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 975
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 976
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 977
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMaxLines(I)V

    const/16 p1, 0x1388

    .line 978
    invoke-virtual {p0, v0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->create(Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createChatsBulletin(Ljava/util/List;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;
    .locals 9

    .line 635
    new-instance v0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p3, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    iget-object v5, p0, Lorg/telegram/ui/Components/BulletinFactory;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v4, v5}, Lorg/telegram/ui/Components/Bulletin$UsersLayout;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    if-eqz p1, :cond_5

    move v1, v2

    move v4, v1

    .line 638
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_3

    const/4 v5, 0x3

    if-lt v4, v5, :cond_1

    goto :goto_2

    .line 641
    :cond_1
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLObject;

    if-eqz v5, :cond_2

    .line 643
    iget-object v6, v0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/AvatarsImageView;->setCount(I)V

    .line 644
    iget-object v6, v0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

    sget v8, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-virtual {v6, v4, v8, v5}, Lorg/telegram/ui/Components/AvatarsImageView;->setObject(IILorg/telegram/tgnet/TLObject;)V

    move v4, v7

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 647
    :cond_3
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v3, :cond_4

    .line 648
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 649
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

    const v1, 0x3f99999a    # 1.2f

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    .line 650
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    goto :goto_3

    .line 652
    :cond_4
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    .line 653
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    goto :goto_3

    :cond_5
    move v4, v2

    .line 656
    :goto_3
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/AvatarsImageView;->commitTransition(Z)V

    if-eqz p3, :cond_7

    .line 659
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 660
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 661
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 662
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->subtitleView:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 663
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->subtitleView:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 664
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->subtitleView:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 665
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    instance-of p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p1, :cond_9

    rsub-int/lit8 p1, v4, 0x3

    mul-int/lit8 p1, p1, 0xc

    rsub-int/lit8 p1, p1, 0x4a

    int-to-float p1, p1

    .line 666
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    .line 667
    sget-boolean p2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p2, :cond_6

    .line 668
    iget-object p2, v0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    iput p1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_4

    .line 670
    :cond_6
    iget-object p2, v0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    iput p1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_4

    .line 674
    :cond_7
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 675
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->textView:Landroid/widget/TextView;

    const/4 p3, 0x2

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 676
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 677
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    instance-of p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p1, :cond_9

    rsub-int/lit8 p1, v4, 0x3

    mul-int/lit8 p1, p1, 0xc

    rsub-int/lit8 p1, p1, 0x4a

    int-to-float p1, p1

    .line 678
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    .line 679
    sget-boolean p2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p2, :cond_8

    .line 680
    iget-object p2, v0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    iput p1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_4

    .line 682
    :cond_8
    iget-object p2, v0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    iput p1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 686
    :cond_9
    :goto_4
    sget-boolean p1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p1, :cond_a

    .line 687
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

    sub-int/2addr v4, v3

    mul-int/lit8 v4, v4, 0xc

    rsub-int/lit8 p2, v4, 0x20

    int-to-float p2, p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    :cond_a
    const/16 p1, 0x1388

    .line 690
    invoke-virtual {p0, v0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->create(Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createContainsEmojiBulletin(Lorg/telegram/tgnet/TLRPC$Document;ILorg/telegram/messenger/Utilities$Callback;)Lorg/telegram/ui/Components/Bulletin;
    .locals 9

    .line 820
    invoke-static {p1}, Lorg/telegram/messenger/MessageObject;->getInputStickerSet(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 824
    :cond_0
    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lorg/telegram/messenger/MediaDataController;->getStickerSet(Lorg/telegram/tgnet/TLRPC$InputStickerSet;Z)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v2

    const/4 v4, 0x0

    .line 825
    const-string v5, "MessageContainsEmojiPackSingle"

    const-string v6, "StoryContainsEmojiPackSingle"

    const/4 v7, 0x2

    const-string v8, "TopicContainsEmojiPackSingle"

    if-eqz v2, :cond_4

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    if-ne p2, v3, :cond_2

    .line 871
    sget p2, Lorg/telegram/messenger/R$string;->TopicContainsEmojiPackSingle:I

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    new-array v2, v3, [Ljava/lang/Object;

    aput-object v1, v2, v4

    invoke-static {v8, p2, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    goto :goto_0

    :cond_2
    if-ne p2, v7, :cond_3

    .line 873
    sget p2, Lorg/telegram/messenger/R$string;->StoryContainsEmojiPackSingle:I

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    new-array v2, v3, [Ljava/lang/Object;

    aput-object v1, v2, v4

    invoke-static {v6, p2, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    goto :goto_0

    .line 875
    :cond_3
    sget p2, Lorg/telegram/messenger/R$string;->MessageContainsEmojiPackSingle:I

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    new-array v2, v3, [Ljava/lang/Object;

    aput-object v1, v2, v4

    invoke-static {v5, p2, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    .line 877
    :goto_0
    sget v1, Lorg/telegram/messenger/R$string;->ViewAction:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/BulletinFactory$$ExternalSyntheticLambda3;

    invoke-direct {v2, p3, v0}, Lorg/telegram/ui/Components/BulletinFactory$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$InputStickerSet;)V

    invoke-virtual {p0, p1, p2, v1, v2}, Lorg/telegram/ui/Components/BulletinFactory;->createEmojiBulletin(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1

    .line 828
    :cond_4
    :goto_1
    const-string v2, "<{LOADING}>"

    if-ne p2, v3, :cond_5

    .line 829
    new-instance v5, Landroid/text/SpannableStringBuilder;

    sget v6, Lorg/telegram/messenger/R$string;->TopicContainsEmojiPackSingle:I

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v4

    invoke-static {v8, v6, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-direct {v5, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_5
    if-ne p2, v7, :cond_6

    .line 831
    new-instance v5, Landroid/text/SpannableStringBuilder;

    sget v7, Lorg/telegram/messenger/R$string;->StoryContainsEmojiPackSingle:I

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v4

    invoke-static {v6, v7, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-direct {v5, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 833
    :cond_6
    new-instance v6, Landroid/text/SpannableStringBuilder;

    sget v7, Lorg/telegram/messenger/R$string;->MessageContainsEmojiPackSingle:I

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v4

    invoke-static {v5, v7, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-direct {v6, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    move-object v5, v6

    .line 837
    :goto_2
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_7

    .line 838
    new-instance v3, Lorg/telegram/ui/Components/LoadingSpan;

    const/high16 v6, 0x42c80000    # 100.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    iget-object v8, p0, Lorg/telegram/ui/Components/BulletinFactory;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v3, v1, v6, v7, v8}, Lorg/telegram/ui/Components/LoadingSpan;-><init>(Landroid/view/View;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    add-int/lit8 v6, v2, 0xb

    const/16 v7, 0x21

    invoke-virtual {v5, v3, v2, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 839
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_undo_infoColor:I

    iget-object v6, p0, Lorg/telegram/ui/Components/BulletinFactory;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 840
    invoke-static {v2, v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v6

    const/16 v7, 0x20

    invoke-static {v6, v7}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v6

    iget-object v7, p0, Lorg/telegram/ui/Components/BulletinFactory;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 841
    invoke-static {v2, v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    const/16 v7, 0x48

    invoke-static {v2, v7}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v2

    .line 839
    invoke-virtual {v3, v6, v2}, Lorg/telegram/ui/Components/LoadingSpan;->setColors(II)V

    goto :goto_3

    :cond_7
    move-object v3, v1

    .line 844
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 846
    sget v2, Lorg/telegram/messenger/R$string;->ViewAction:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v8, Lorg/telegram/ui/Components/BulletinFactory$$ExternalSyntheticLambda1;

    invoke-direct {v8, p3, v0}, Lorg/telegram/ui/Components/BulletinFactory$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$InputStickerSet;)V

    invoke-virtual {p0, p1, v5, v2, v8}, Lorg/telegram/ui/Components/BulletinFactory;->createEmojiLoadingBulletin(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    if-eqz v3, :cond_8

    .line 847
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->getLayout()Lorg/telegram/ui/Components/Bulletin$Layout;

    move-result-object p3

    instance-of p3, p3, Lorg/telegram/ui/Components/Bulletin$LoadingLottieLayout;

    if-eqz p3, :cond_8

    .line 848
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->getLayout()Lorg/telegram/ui/Components/Bulletin$Layout;

    move-result-object p3

    check-cast p3, Lorg/telegram/ui/Components/Bulletin$LoadingLottieLayout;

    iget-object p3, p3, Lorg/telegram/ui/Components/Bulletin$LoadingLottieLayout;->textLoadingView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v3, p3}, Lorg/telegram/ui/Components/LoadingSpan;->setView(Landroid/view/View;)V

    .line 850
    :cond_8
    sget p3, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p3

    new-instance v2, Lorg/telegram/ui/Components/BulletinFactory$$ExternalSyntheticLambda2;

    invoke-direct {v2, p2, p1, v6, v7}, Lorg/telegram/ui/Components/BulletinFactory$$ExternalSyntheticLambda2;-><init>(ILorg/telegram/ui/Components/Bulletin;J)V

    invoke-virtual {p3, v0, v1, v4, v2}, Lorg/telegram/messenger/MediaDataController;->getStickerSet(Lorg/telegram/tgnet/TLRPC$InputStickerSet;Ljava/lang/Integer;ZLorg/telegram/messenger/Utilities$Callback;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    return-object p1
.end method

.method public createCopyBulletin(Ljava/lang/String;)Lorg/telegram/ui/Components/Bulletin;
    .locals 1

    const/4 v0, 0x0

    .line 1023
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createCopyBulletin(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createCopyBulletin(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;
    .locals 4

    .line 1028
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->shouldShowClipboardToast()Z

    move-result p2

    if-nez p2, :cond_0

    .line 1029
    new-instance p1, Lorg/telegram/ui/Components/Bulletin$EmptyBulletin;

    invoke-direct {p1}, Lorg/telegram/ui/Components/Bulletin$EmptyBulletin;-><init>()V

    return-object p1

    .line 1031
    :cond_0
    new-instance p2, Lorg/telegram/ui/Components/Bulletin$LottieLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1032
    sget v0, Lorg/telegram/messenger/R$raw;->copy:I

    const-string v1, "Back"

    const-string v2, "Front"

    const-string v3, "NULL ROTATION"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x24

    invoke-virtual {p2, v0, v2, v2, v1}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setAnimation(III[Ljava/lang/String;)V

    .line 1033
    iget-object v0, p2, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p1, 0x5dc

    .line 1034
    invoke-virtual {p0, p2, p1}, Lorg/telegram/ui/Components/BulletinFactory;->create(Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createCopyLinkBulletin()Lorg/telegram/ui/Components/Bulletin;
    .locals 1

    const/4 v0, 0x0

    .line 1018
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createCopyLinkBulletin(Z)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    return-object v0
.end method

.method public createCopyLinkBulletin(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;
    .locals 3

    .line 1058
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->shouldShowClipboardToast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1059
    new-instance p1, Lorg/telegram/ui/Components/Bulletin$EmptyBulletin;

    invoke-direct {p1}, Lorg/telegram/ui/Components/Bulletin$EmptyBulletin;-><init>()V

    return-object p1

    .line 1061
    :cond_0
    new-instance v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1062
    sget p2, Lorg/telegram/messenger/R$raw;->voip_invite:I

    const-string v1, "Wibe"

    const-string v2, "Circle"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x24

    invoke-virtual {v0, p2, v2, v2, v1}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setAnimation(III[Ljava/lang/String;)V

    .line 1063
    iget-object p2, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p1, 0x5dc

    .line 1064
    invoke-virtual {p0, v0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->create(Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createCopyLinkBulletin(Z)Lorg/telegram/ui/Components/Bulletin;
    .locals 5

    .line 1039
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->shouldShowClipboardToast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1040
    new-instance p1, Lorg/telegram/ui/Components/Bulletin$EmptyBulletin;

    invoke-direct {p1}, Lorg/telegram/ui/Components/Bulletin$EmptyBulletin;-><init>()V

    return-object p1

    .line 1042
    :cond_0
    const-string v0, "Circle"

    const-string v1, "Wibe"

    const/16 v2, 0x24

    if-eqz p1, :cond_1

    .line 1043
    new-instance p1, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/Components/BulletinFactory;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p1, v3, v4}, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1044
    sget v3, Lorg/telegram/messenger/R$raw;->voip_invite:I

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v3, v2, v2, v0}, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;->setAnimation(III[Ljava/lang/String;)V

    .line 1045
    iget-object v0, p1, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;->titleTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v1, Lorg/telegram/messenger/R$string;->LinkCopied:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1046
    iget-object v0, p1, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;->subtitleTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v1, Lorg/telegram/messenger/R$string;->LinkCopiedPrivateInfo:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0xabe

    .line 1047
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/BulletinFactory;->create(Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1

    .line 1049
    :cond_1
    new-instance p1, Lorg/telegram/ui/Components/Bulletin$LottieLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/Components/BulletinFactory;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p1, v3, v4}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1050
    sget v3, Lorg/telegram/messenger/R$raw;->voip_invite:I

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v3, v2, v2, v0}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setAnimation(III[Ljava/lang/String;)V

    .line 1051
    iget-object v0, p1, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/messenger/R$string;->LinkCopied:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0x5dc

    .line 1052
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/BulletinFactory;->create(Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createDownloadBulletin(Lorg/telegram/ui/Components/BulletinFactory$FileType;)Lorg/telegram/ui/Components/Bulletin;
    .locals 1

    .line 883
    iget-object v0, p0, Lorg/telegram/ui/Components/BulletinFactory;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createDownloadBulletin(Lorg/telegram/ui/Components/BulletinFactory$FileType;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createDownloadBulletin(Lorg/telegram/ui/Components/BulletinFactory$FileType;III)Lorg/telegram/ui/Components/Bulletin;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 905
    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/BulletinFactory;->createDownloadBulletin(Lorg/telegram/ui/Components/BulletinFactory$FileType;IIILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createDownloadBulletin(Lorg/telegram/ui/Components/BulletinFactory$FileType;IIILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;
    .locals 2

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    .line 912
    new-instance v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p5, p3, p4}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;II)V

    goto :goto_0

    .line 914
    :cond_0
    new-instance v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {v0, p3, p5}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 916
    :goto_0
    invoke-static {p1}, Lorg/telegram/ui/Components/BulletinFactory$FileType;->-$$Nest$fgeticon(Lorg/telegram/ui/Components/BulletinFactory$FileType;)Lorg/telegram/ui/Components/BulletinFactory$FileType$Icon;

    move-result-object p3

    invoke-static {p3}, Lorg/telegram/ui/Components/BulletinFactory$FileType$Icon;->-$$Nest$fgetresId(Lorg/telegram/ui/Components/BulletinFactory$FileType$Icon;)I

    move-result p3

    invoke-static {p1}, Lorg/telegram/ui/Components/BulletinFactory$FileType;->-$$Nest$fgeticon(Lorg/telegram/ui/Components/BulletinFactory$FileType;)Lorg/telegram/ui/Components/BulletinFactory$FileType$Icon;

    move-result-object p4

    invoke-static {p4}, Lorg/telegram/ui/Components/BulletinFactory$FileType$Icon;->-$$Nest$fgetlayers(Lorg/telegram/ui/Components/BulletinFactory$FileType$Icon;)[Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p3, p4}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setAnimation(I[Ljava/lang/String;)V

    .line 917
    iget-object p3, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/BulletinFactory$FileType;->-$$Nest$mgetText(Lorg/telegram/ui/Components/BulletinFactory$FileType;I)Ljava/lang/String;

    move-result-object p2

    new-instance p4, Lorg/telegram/ui/Components/BulletinFactory$$ExternalSyntheticLambda0;

    invoke-direct {p4}, Lorg/telegram/ui/Components/BulletinFactory$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p2, p4}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 924
    invoke-static {p1}, Lorg/telegram/ui/Components/BulletinFactory$FileType;->-$$Nest$fgeticon(Lorg/telegram/ui/Components/BulletinFactory$FileType;)Lorg/telegram/ui/Components/BulletinFactory$FileType$Icon;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/BulletinFactory$FileType$Icon;->-$$Nest$fgetpaddingBottom(Lorg/telegram/ui/Components/BulletinFactory$FileType$Icon;)I

    move-result p2

    if-eqz p2, :cond_1

    .line 925
    invoke-static {p1}, Lorg/telegram/ui/Components/BulletinFactory$FileType;->-$$Nest$fgeticon(Lorg/telegram/ui/Components/BulletinFactory$FileType;)Lorg/telegram/ui/Components/BulletinFactory$FileType$Icon;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/Components/BulletinFactory$FileType$Icon;->-$$Nest$fgetpaddingBottom(Lorg/telegram/ui/Components/BulletinFactory$FileType$Icon;)I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setIconPaddingBottom(I)V

    :cond_1
    const/16 p1, 0x5dc

    .line 927
    invoke-virtual {p0, v0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->create(Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createDownloadBulletin(Lorg/telegram/ui/Components/BulletinFactory$FileType;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, p3

    .line 893
    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/BulletinFactory;->createDownloadBulletin(Lorg/telegram/ui/Components/BulletinFactory$FileType;IIILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createDownloadBulletin(Lorg/telegram/ui/Components/BulletinFactory$FileType;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;
    .locals 1

    const/4 v0, 0x1

    .line 888
    invoke-virtual {p0, p1, v0, p2}, Lorg/telegram/ui/Components/BulletinFactory;->createDownloadBulletin(Lorg/telegram/ui/Components/BulletinFactory$FileType;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createEmojiBulletin(Ljava/lang/String;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;
    .locals 4

    .line 714
    new-instance v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/BulletinFactory;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 715
    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/telegram/messenger/MediaDataController;->getEmojiAnimatedSticker(Ljava/lang/CharSequence;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p1

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    const/16 v3, 0x24

    invoke-virtual {v0, p1, v3, v3, v2}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setAnimation(Lorg/telegram/tgnet/TLRPC$Document;II[Ljava/lang/String;)V

    .line 716
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 717
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 718
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMaxLines(I)V

    const/16 p1, 0xabe

    .line 719
    invoke-virtual {p0, v0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->create(Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createEmojiBulletin(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;
    .locals 5

    .line 727
    new-instance v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/BulletinFactory;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 728
    invoke-static {p1}, Lorg/telegram/messenger/MessageObject;->isTextColorEmoji(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 729
    iget-object v1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_undo_infoColor:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    const/4 v1, 0x0

    .line 731
    new-array v2, v1, [Ljava/lang/String;

    const/16 v3, 0x24

    invoke-virtual {v0, p1, v3, v3, v2}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setAnimation(Lorg/telegram/tgnet/TLRPC$Document;II[Ljava/lang/String;)V

    .line 732
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 733
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {p1, v2}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 735
    :cond_1
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 736
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    const/4 p2, 0x1

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {p1, p2, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 737
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 738
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMaxLines(I)V

    const/16 p1, 0xabe

    .line 739
    invoke-virtual {p0, v0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->create(Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createEmojiBulletin(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;
    .locals 5

    .line 743
    new-instance v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/BulletinFactory;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 744
    invoke-static {p1}, Lorg/telegram/messenger/MessageObject;->isTextColorEmoji(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 745
    iget-object v1, v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_undo_infoColor:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    const/4 v1, 0x0

    .line 747
    new-array v1, v1, [Ljava/lang/String;

    const/16 v2, 0x24

    invoke-virtual {v0, p1, v2, v2, v1}, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;->setAnimation(Lorg/telegram/tgnet/TLRPC$Document;II[Ljava/lang/String;)V

    .line 748
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;->titleTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 749
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;->subtitleTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 750
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p2

    add-int/2addr p1, p2

    const/16 p2, 0x14

    if-ge p1, p2, :cond_1

    const/16 p1, 0x5dc

    goto :goto_0

    :cond_1
    const/16 p1, 0xabe

    :goto_0
    invoke-virtual {p0, v0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->create(Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createEmojiBulletin(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin;
    .locals 5

    .line 780
    new-instance v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/BulletinFactory;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 781
    invoke-static {p1}, Lorg/telegram/messenger/MessageObject;->isTextColorEmoji(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 782
    iget-object v1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_undo_infoColor:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    const/4 v1, 0x0

    .line 784
    new-array v2, v1, [Ljava/lang/String;

    const/16 v3, 0x24

    invoke-virtual {v0, p1, v3, v3, v2}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setAnimation(Lorg/telegram/tgnet/TLRPC$Document;II[Ljava/lang/String;)V

    .line 785
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 786
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {p1, v2}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 788
    :cond_1
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "**"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    :cond_2
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 789
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    const/high16 p2, 0x41600000    # 14.0f

    const/4 v2, 0x1

    invoke-virtual {p1, v2, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 790
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 791
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMaxLines(I)V

    if-eqz p3, :cond_3

    if-eqz p4, :cond_3

    .line 793
    new-instance p1, Lorg/telegram/ui/Components/Bulletin$UndoButton;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v1, p0, Lorg/telegram/ui/Components/BulletinFactory;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p1, p2, v2, v1}, Lorg/telegram/ui/Components/Bulletin$UndoButton;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Components/Bulletin$UndoButton;->setText(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin$UndoButton;

    move-result-object p1

    invoke-virtual {p1, p4}, Lorg/telegram/ui/Components/Bulletin$UndoButton;->setUndoAction(Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin$UndoButton;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Bulletin$ButtonLayout;->setButton(Lorg/telegram/ui/Components/Bulletin$Button;)V

    :cond_3
    const/16 p1, 0xabe

    .line 795
    invoke-virtual {p0, v0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->create(Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createEmojiLoadingBulletin(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin;
    .locals 5

    .line 799
    new-instance v0, Lorg/telegram/ui/Components/Bulletin$LoadingLottieLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/BulletinFactory;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Bulletin$LoadingLottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 800
    invoke-static {p1}, Lorg/telegram/messenger/MessageObject;->isTextColorEmoji(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 801
    iget-object v1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_undo_infoColor:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    const/4 v1, 0x0

    .line 803
    new-array v2, v1, [Ljava/lang/String;

    const/16 v3, 0x24

    invoke-virtual {v0, p1, v3, v3, v2}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setAnimation(Lorg/telegram/tgnet/TLRPC$Document;II[Ljava/lang/String;)V

    .line 804
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    const/4 v2, 0x1

    const/high16 v3, 0x41600000    # 14.0f

    invoke-virtual {p1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 805
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 806
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    const/4 v4, 0x3

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 807
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LoadingLottieLayout;->textLoadingView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 808
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LoadingLottieLayout;->textLoadingView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 809
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LoadingLottieLayout;->textLoadingView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 810
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LoadingLottieLayout;->textLoadingView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 811
    new-instance p1, Lorg/telegram/ui/Components/Bulletin$UndoButton;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v1, p0, Lorg/telegram/ui/Components/BulletinFactory;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p1, p2, v2, v1}, Lorg/telegram/ui/Components/Bulletin$UndoButton;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Components/Bulletin$UndoButton;->setText(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin$UndoButton;

    move-result-object p1

    invoke-virtual {p1, p4}, Lorg/telegram/ui/Components/Bulletin$UndoButton;->setUndoAction(Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin$UndoButton;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Bulletin$ButtonLayout;->setButton(Lorg/telegram/ui/Components/Bulletin$Button;)V

    const/16 p1, 0xabe

    .line 812
    invoke-virtual {p0, v0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->create(Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createErrorBulletin(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;
    .locals 1

    const/4 v0, 0x0

    .line 931
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createErrorBulletin(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createErrorBulletin(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;
    .locals 3

    .line 935
    new-instance v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 936
    sget p2, Lorg/telegram/messenger/R$raw;->chats_infotip:I

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    invoke-virtual {v0, p2, v2}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setAnimation(I[Ljava/lang/String;)V

    .line 937
    iget-object p2, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 938
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 939
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMaxLines(I)V

    const/16 p1, 0x5dc

    .line 940
    invoke-virtual {p0, v0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->create(Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createErrorBulletinSubtitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;
    .locals 2

    .line 1009
    new-instance v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1010
    sget p3, Lorg/telegram/messenger/R$raw;->chats_infotip:I

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, p3, v1}, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;->setAnimation(I[Ljava/lang/String;)V

    .line 1011
    iget-object p3, v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;->titleTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1012
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;->subtitleTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p1, 0x5dc

    .line 1013
    invoke-virtual {p0, v0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->create(Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createImageBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;
    .locals 3

    .line 357
    new-instance v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/BulletinFactory;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 358
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_undo_background:I

    iget-object v2, p0, Lorg/telegram/ui/Components/BulletinFactory;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/Bulletin$Layout;->setBackground(II)V

    .line 359
    iget-object v1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/RLottieImageView;->setImageResource(I)V

    .line 360
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 361
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 362
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setLines(I)V

    .line 363
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 364
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    iget-object v1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-static {p2, v1}, Lorg/telegram/ui/Stories/recorder/HintView2;->cutInFancyHalf(Ljava/lang/CharSequence;Landroid/text/TextPaint;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 365
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    const p2, 0x3faa3d71    # 1.33f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2, v1}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 366
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 p2, 0x41400000    # 12.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 367
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin$ButtonLayout;->setWrapWidth()V

    const/16 p1, 0x1388

    .line 368
    invoke-virtual {p0, v0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->create(Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createMessagesTaggedBulletin(ILorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin;
    .locals 8

    .line 1565
    new-instance v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/BulletinFactory;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1566
    sget v1, Lorg/telegram/messenger/R$raw;->tag_icon_3:I

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    const/16 v4, 0x24

    invoke-virtual {v0, v1, v4, v4, v3}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setAnimation(III[Ljava/lang/String;)V

    .line 1567
    iget-object v1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1568
    new-instance v1, Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    .line 1569
    sget-object v3, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1570
    iget-object v1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    const/high16 v3, 0x41700000    # 15.0f

    const/4 v4, 0x1

    invoke-virtual {v1, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1571
    iget-object v1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1572
    iget-object v1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v1, v2, v2, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1574
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    const/high16 v3, 0x41a00000    # 20.0f

    .line 1575
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1576
    new-instance v3, Landroid/text/SpannableString;

    const-string v5, "d"

    invoke-direct {v3, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1577
    new-instance v5, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    invoke-direct {v5, p2, v1}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;-><init>(Lorg/telegram/tgnet/TLRPC$Document;Landroid/graphics/Paint$FontMetricsInt;)V

    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result p2

    const/16 v1, 0x21

    invoke-virtual {v3, v5, v2, p2, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1578
    iget-object p2, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    new-instance v1, Landroid/text/SpannableStringBuilder;

    if-le p1, v4, :cond_0

    .line 1580
    const-string v5, "SavedTagMessagesTagged"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v5, p1, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1581
    :cond_0
    sget p1, Lorg/telegram/messenger/R$string;->SavedTagMessageTagged:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-direct {v1, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string p1, " "

    .line 1582
    invoke-virtual {v1, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    .line 1583
    invoke-virtual {p1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    .line 1578
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p3, :cond_1

    .line 1587
    new-instance p1, Lorg/telegram/ui/Components/Bulletin$UndoButton;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v1, p0, Lorg/telegram/ui/Components/BulletinFactory;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p1, p2, v4, v1}, Lorg/telegram/ui/Components/Bulletin$UndoButton;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget p2, Lorg/telegram/messenger/R$string;->ViewAction:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Bulletin$UndoButton;->setText(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin$UndoButton;

    move-result-object p1

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Components/Bulletin$UndoButton;->setUndoAction(Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin$UndoButton;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Bulletin$ButtonLayout;->setButton(Lorg/telegram/ui/Components/Bulletin$Button;)V

    .line 1590
    :cond_1
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_undo_infoColor:I

    iget-object p2, p0, Lorg/telegram/ui/Components/BulletinFactory;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setTextColor(I)V

    .line 1591
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    const/high16 v6, 0x41000000    # 8.0f

    const/4 v7, 0x0

    const/high16 v1, -0x40000000    # -2.0f

    const/high16 v2, -0x40000000    # -2.0f

    const v3, 0x800013

    const/high16 v4, 0x42600000    # 56.0f

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameRelatively(FFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 p1, 0xabe

    .line 1593
    invoke-virtual {p0, v0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->create(Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createReportSent(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;
    .locals 2

    .line 897
    new-instance v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 898
    sget p1, Lorg/telegram/messenger/R$raw;->chats_infotip:I

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setAnimation(I[Ljava/lang/String;)V

    .line 899
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/messenger/R$string;->ReportChatSent:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p1, 0x5dc

    .line 900
    invoke-virtual {p0, v0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->create(Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createRestrictVoiceMessagesPremiumBulletin()Lorg/telegram/ui/Components/Bulletin;
    .locals 8

    .line 982
    new-instance v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 983
    sget v1, Lorg/telegram/messenger/R$raw;->voip_muted:I

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setAnimation(I[Ljava/lang/String;)V

    .line 984
    sget v1, Lorg/telegram/messenger/R$string;->PrivacyVoiceMessagesPremiumOnly:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 985
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/16 v4, 0x2a

    .line 986
    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    if-ltz v5, :cond_0

    add-int/lit8 v6, v4, 0x1

    add-int/lit8 v7, v5, 0x1

    .line 988
    invoke-virtual {v1, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v5, v6, v1}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 989
    new-instance v1, Lorg/telegram/ui/Components/BulletinFactory$2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/BulletinFactory$2;-><init>(Lorg/telegram/ui/Components/BulletinFactory;)V

    add-int/lit8 v4, v4, -0x1

    const/16 v6, 0x21

    invoke-virtual {v3, v1, v5, v4, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1002
    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1003
    iget-object v1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1004
    iget-object v1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    const/16 v1, 0xabe

    .line 1005
    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/BulletinFactory;->create(Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    return-object v0
.end method

.method public createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;
    .locals 1

    const/16 v0, 0x24

    .line 244
    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletinWithIconSize(ILjava/lang/CharSequence;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createSimpleBulletin(ILjava/lang/CharSequence;I)Lorg/telegram/ui/Components/Bulletin;
    .locals 8

    .line 383
    new-instance v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/BulletinFactory;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 v1, 0x0

    .line 384
    new-array v2, v1, [Ljava/lang/String;

    const/16 v3, 0x24

    invoke-virtual {v0, p1, v3, v3, v2}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setAnimation(III[Ljava/lang/String;)V

    if-eqz p2, :cond_3

    .line 386
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 387
    instance-of v2, p2, Landroid/text/SpannableStringBuilder;

    if-eqz v2, :cond_0

    move-object v2, p2

    check-cast v2, Landroid/text/SpannableStringBuilder;

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    :goto_0
    const/16 v3, 0xa

    .line 388
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    move v5, v1

    :goto_1
    if-ltz v4, :cond_2

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-ge v4, v6, :cond_2

    if-lt v5, p3, :cond_1

    add-int/lit8 v6, v4, 0x1

    .line 390
    const-string v7, " "

    invoke-virtual {v2, v4, v6, v7}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_1
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x1

    .line 388
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    goto :goto_1

    :cond_2
    move-object p2, v2

    .line 395
    :cond_3
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 396
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 397
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 398
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/16 p2, 0x14

    if-ge p1, p2, :cond_4

    const/16 p1, 0x5dc

    goto :goto_2

    :cond_4
    const/16 p1, 0xabe

    :goto_2
    invoke-virtual {p0, v0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->create(Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createSimpleBulletin(ILjava/lang/CharSequence;II)Lorg/telegram/ui/Components/Bulletin;
    .locals 8

    .line 403
    new-instance v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/BulletinFactory;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 v1, 0x0

    .line 404
    new-array v2, v1, [Ljava/lang/String;

    const/16 v3, 0x24

    invoke-virtual {v0, p1, v3, v3, v2}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setAnimation(III[Ljava/lang/String;)V

    if-eqz p2, :cond_3

    .line 406
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 407
    instance-of v2, p2, Landroid/text/SpannableStringBuilder;

    if-eqz v2, :cond_0

    move-object v2, p2

    check-cast v2, Landroid/text/SpannableStringBuilder;

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    :goto_0
    const/16 v3, 0xa

    .line 408
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    move v5, v1

    :goto_1
    if-ltz v4, :cond_2

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-ge v4, v6, :cond_2

    if-lt v5, p3, :cond_1

    add-int/lit8 v6, v4, 0x1

    .line 410
    const-string v7, " "

    invoke-virtual {v2, v4, v6, v7}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_1
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x1

    .line 408
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    goto :goto_1

    :cond_2
    move-object p2, v2

    .line 415
    :cond_3
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 416
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 417
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 418
    invoke-virtual {p0, v0, p4}, Lorg/telegram/ui/Components/BulletinFactory;->create(Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createSimpleBulletin(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;
    .locals 3

    .line 422
    new-instance v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/BulletinFactory;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 v1, 0x0

    .line 423
    new-array v1, v1, [Ljava/lang/String;

    const/16 v2, 0x24

    invoke-virtual {v0, p1, v2, v2, v1}, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;->setAnimation(III[Ljava/lang/String;)V

    .line 424
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;->titleTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 425
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;->subtitleTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 426
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p2

    add-int/2addr p1, p2

    const/16 p2, 0x14

    if-ge p1, p2, :cond_0

    const/16 p1, 0x5dc

    goto :goto_0

    :cond_0
    const/16 p1, 0xabe

    :goto_0
    invoke-virtual {p0, v0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->create(Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createSimpleBulletin(ILjava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin;
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, p5

    .line 443
    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;Ljava/lang/CharSequence;IZLjava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createSimpleBulletin(ILjava/lang/CharSequence;Ljava/lang/CharSequence;IZLjava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin;
    .locals 5

    .line 447
    new-instance v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/BulletinFactory;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 449
    new-array v3, v2, [Ljava/lang/String;

    const/16 v4, 0x24

    invoke-virtual {v0, p1, v4, v4, v3}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setAnimation(III[Ljava/lang/String;)V

    goto :goto_0

    .line 451
    :cond_0
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 452
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iput v3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 454
    :goto_0
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    const/high16 v3, 0x41600000    # 14.0f

    const/4 v4, 0x1

    invoke-virtual {p1, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 455
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    const/4 v3, 0x5

    invoke-virtual {p1, v3}, Landroid/view/View;->setTextDirection(I)V

    .line 456
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 457
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 458
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 459
    new-instance p1, Lorg/telegram/ui/Components/Bulletin$UndoButton;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v1, p0, Lorg/telegram/ui/Components/BulletinFactory;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p1, p2, v4, p5, v1}, Lorg/telegram/ui/Components/Bulletin$UndoButton;-><init>(Landroid/content/Context;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Components/Bulletin$UndoButton;->setText(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin$UndoButton;

    move-result-object p1

    invoke-virtual {p1, p6}, Lorg/telegram/ui/Components/Bulletin$UndoButton;->setUndoAction(Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin$UndoButton;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Bulletin$ButtonLayout;->setButton(Lorg/telegram/ui/Components/Bulletin$Button;)V

    .line 460
    invoke-virtual {p0, v0, p4}, Lorg/telegram/ui/Components/BulletinFactory;->create(Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createSimpleBulletin(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin;
    .locals 3

    .line 434
    new-instance v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/BulletinFactory;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 v1, 0x0

    .line 435
    new-array v1, v1, [Ljava/lang/String;

    const/16 v2, 0x24

    invoke-virtual {v0, p1, v2, v2, v1}, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;->setAnimation(III[Ljava/lang/String;)V

    .line 436
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;->titleTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 437
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;->subtitleTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 438
    new-instance p1, Lorg/telegram/ui/Components/Bulletin$UndoButton;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object p2

    const/4 p3, 0x1

    iget-object v1, p0, Lorg/telegram/ui/Components/BulletinFactory;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p1, p2, p3, v1}, Lorg/telegram/ui/Components/Bulletin$UndoButton;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {p1, p4}, Lorg/telegram/ui/Components/Bulletin$UndoButton;->setText(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin$UndoButton;

    move-result-object p1

    invoke-virtual {p1, p5}, Lorg/telegram/ui/Components/Bulletin$UndoButton;->setUndoAction(Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin$UndoButton;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Bulletin$ButtonLayout;->setButton(Lorg/telegram/ui/Components/Bulletin$Button;)V

    const/16 p1, 0x1388

    .line 439
    invoke-virtual {p0, v0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->create(Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createSimpleBulletin(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin;
    .locals 7

    .line 430
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    const/16 v0, 0x5dc

    :goto_0
    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    move v5, v0

    goto :goto_1

    :cond_0
    const/16 v0, 0xabe

    goto :goto_0

    :goto_1
    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createSimpleBulletin(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;
    .locals 3

    .line 474
    new-instance v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/BulletinFactory;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 475
    iget-object v1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 476
    instance-of v1, p1, Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;

    if-eqz v1, :cond_0

    .line 477
    check-cast p1, Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;

    iget-object v1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;->setView(Landroid/view/View;)Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;

    .line 479
    :cond_0
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 480
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 481
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMaxLines(I)V

    const/16 p1, 0xabe

    .line 482
    invoke-virtual {p0, v0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->create(Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createSimpleBulletin(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;
    .locals 3

    .line 486
    new-instance v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/BulletinFactory;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 487
    iget-object v1, v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 488
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;->titleTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 489
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;->subtitleTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p1, 0xabe

    .line 490
    invoke-virtual {p0, v0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->create(Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createSimpleBulletin(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin;
    .locals 3

    .line 502
    new-instance v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/BulletinFactory;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 503
    iget-object v1, v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 504
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;->titleTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 505
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;->subtitleTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 506
    new-instance p1, Lorg/telegram/ui/Components/Bulletin$UndoButton;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object p2

    const/4 p3, 0x1

    iget-object v1, p0, Lorg/telegram/ui/Components/BulletinFactory;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p1, p2, p3, v1}, Lorg/telegram/ui/Components/Bulletin$UndoButton;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {p1, p4}, Lorg/telegram/ui/Components/Bulletin$UndoButton;->setText(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin$UndoButton;

    move-result-object p1

    invoke-virtual {p1, p5}, Lorg/telegram/ui/Components/Bulletin$UndoButton;->setUndoAction(Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin$UndoButton;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Bulletin$ButtonLayout;->setButton(Lorg/telegram/ui/Components/Bulletin$Button;)V

    const/16 p1, 0xabe

    .line 507
    invoke-virtual {p0, v0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->create(Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createSimpleBulletin(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;
    .locals 3

    .line 494
    new-instance v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/BulletinFactory;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 495
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;->hideImage()V

    .line 496
    iget-object v1, v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;->titleTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 497
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;->subtitleTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p1, 0x1388

    .line 498
    invoke-virtual {p0, v0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->create(Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createSimpleBulletin(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Lorg/telegram/ui/Components/Bulletin;
    .locals 3

    .line 236
    new-instance v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/BulletinFactory;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 237
    invoke-virtual {v0, p3}, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;->setSticker(I)V

    .line 238
    iget-object p3, v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;->titleTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;->subtitleTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p1, 0x1388

    .line 240
    invoke-virtual {p0, v0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->create(Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createSimpleBulletin(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-nez v1, :cond_0

    .line 257
    new-instance v1, Lorg/telegram/ui/Components/Bulletin$EmptyBulletin;

    invoke-direct {v1}, Lorg/telegram/ui/Components/Bulletin$EmptyBulletin;-><init>()V

    return-object v1

    .line 258
    :cond_0
    new-instance v2, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/ui/Components/BulletinFactory;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v2, v3, v4}, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 259
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    const/high16 v4, 0x41e00000    # 28.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v3, v5, v6, v7, v8}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZLorg/telegram/tgnet/TLRPC$PhotoSize;Z)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v3

    .line 260
    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v5, v4, v6, v3, v6}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZLorg/telegram/tgnet/TLRPC$PhotoSize;Z)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v4

    .line 261
    iget-object v9, v2, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    .line 262
    invoke-static {v4, v1}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v10

    .line 263
    invoke-static {v3, v1}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v12

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 261
    const-string v11, "28_28"

    const-string v13, "28_28"

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    invoke-virtual/range {v9 .. v18}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Ljava/lang/String;JILjava/lang/Object;)V

    .line 266
    iget-object v1, v2, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 267
    iget-object v1, v2, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->titleTextView:Landroid/widget/TextView;

    move-object/from16 v3, p2

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    iget-object v1, v2, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 269
    iget-object v1, v2, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->titleTextView:Landroid/widget/TextView;

    const/high16 v4, 0x41700000    # 15.0f

    invoke-virtual {v1, v6, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 270
    iget-object v1, v2, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->titleTextView:Landroid/widget/TextView;

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 271
    iget-object v1, v2, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 272
    iget-object v1, v2, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->subtitleTextView:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 273
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/16 v3, 0x14

    if-ge v1, v3, :cond_1

    const/16 v1, 0x5dc

    goto :goto_0

    :cond_1
    const/16 v1, 0xabe

    :goto_0
    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/Components/BulletinFactory;->create(Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v1

    return-object v1
.end method

.method public createSimpleBulletin(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-nez v1, :cond_0

    .line 297
    new-instance v1, Lorg/telegram/ui/Components/Bulletin$EmptyBulletin;

    invoke-direct {v1}, Lorg/telegram/ui/Components/Bulletin$EmptyBulletin;-><init>()V

    return-object v1

    .line 298
    :cond_0
    new-instance v2, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/ui/Components/BulletinFactory;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v2, v3, v4}, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 299
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    const/high16 v4, 0x41e00000    # 28.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static {v3, v5, v7, v6, v8}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZLorg/telegram/tgnet/TLRPC$PhotoSize;Z)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v3

    .line 300
    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v5, v4, v7, v3, v7}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZLorg/telegram/tgnet/TLRPC$PhotoSize;Z)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v4

    .line 301
    iget-object v9, v2, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    .line 302
    invoke-static {v4, v1}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v10

    .line 303
    invoke-static {v3, v1}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v12

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 301
    const-string v11, "28_28"

    const-string v13, "28_28"

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    invoke-virtual/range {v9 .. v18}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Ljava/lang/String;JILjava/lang/Object;)V

    .line 306
    iget-object v1, v2, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 307
    iget-object v1, v2, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->titleTextView:Landroid/widget/TextView;

    move-object/from16 v3, p2

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 308
    iget-object v1, v2, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 309
    iget-object v1, v2, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->titleTextView:Landroid/widget/TextView;

    const/high16 v3, 0x41700000    # 15.0f

    invoke-virtual {v1, v7, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 310
    iget-object v1, v2, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 311
    iget-object v1, v2, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->titleTextView:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 312
    iget-object v1, v2, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->subtitleTextView:Landroid/widget/TextView;

    move-object/from16 v3, p3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    iget-object v1, v2, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->subtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 314
    iget-object v1, v2, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->subtitleTextView:Landroid/widget/TextView;

    const/4 v4, 0x5

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 315
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/16 v3, 0x14

    if-ge v1, v3, :cond_1

    const/16 v1, 0x5dc

    goto :goto_0

    :cond_1
    const/16 v1, 0xabe

    :goto_0
    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/Components/BulletinFactory;->create(Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v1

    return-object v1
.end method

.method public createSimpleBulletinDetail(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;
    .locals 4

    .line 347
    new-instance v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/BulletinFactory;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 v1, 0x0

    .line 348
    new-array v2, v1, [Ljava/lang/String;

    const/16 v3, 0x24

    invoke-virtual {v0, p1, v3, v3, v2}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setAnimation(III[Ljava/lang/String;)V

    .line 349
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 350
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 351
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {p1, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 352
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 353
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/16 p2, 0x14

    if-ge p1, p2, :cond_0

    const/16 p1, 0x5dc

    goto :goto_0

    :cond_0
    const/16 p1, 0xabe

    :goto_0
    invoke-virtual {p0, v0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->create(Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createSimpleBulletinWithIconSize(ILjava/lang/CharSequence;I)Lorg/telegram/ui/Components/Bulletin;
    .locals 3

    .line 338
    new-instance v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/BulletinFactory;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 v1, 0x0

    .line 339
    new-array v2, v1, [Ljava/lang/String;

    invoke-virtual {v0, p1, p3, p3, v2}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setAnimation(III[Ljava/lang/String;)V

    .line 340
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 341
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 342
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    const/4 p3, 0x2

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 343
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/16 p2, 0x14

    if-ge p1, p2, :cond_0

    const/16 p1, 0x5dc

    goto :goto_0

    :cond_0
    const/16 p1, 0xabe

    :goto_0
    invoke-virtual {p0, v0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->create(Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createSimpleLargeBulletin(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;
    .locals 3

    .line 372
    new-instance v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/BulletinFactory;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 373
    iget-object v1, v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/BackupImageView;->setImageResource(I)V

    .line 374
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 376
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->subtitleTextView:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 377
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->subtitleTextView:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 378
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->subtitleTextView:Landroid/widget/TextView;

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMaxLines(I)V

    const/16 p1, 0x1388

    .line 379
    invoke-virtual {p0, v0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->create(Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createSimpleMultiBulletin(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-nez v1, :cond_0

    .line 277
    new-instance v1, Lorg/telegram/ui/Components/Bulletin$EmptyBulletin;

    invoke-direct {v1}, Lorg/telegram/ui/Components/Bulletin$EmptyBulletin;-><init>()V

    return-object v1

    .line 278
    :cond_0
    new-instance v2, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/ui/Components/BulletinFactory;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v2, v3, v4}, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 279
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    const/high16 v4, 0x41e00000    # 28.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v3, v5, v6, v7, v8}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZLorg/telegram/tgnet/TLRPC$PhotoSize;Z)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v3

    .line 280
    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v5, v4, v6, v3, v6}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZLorg/telegram/tgnet/TLRPC$PhotoSize;Z)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v4

    .line 281
    iget-object v9, v2, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    .line 282
    invoke-static {v4, v1}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v10

    .line 283
    invoke-static {v3, v1}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v12

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 281
    const-string v11, "28_28"

    const-string v13, "28_28"

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    invoke-virtual/range {v9 .. v18}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Ljava/lang/String;JILjava/lang/Object;)V

    .line 286
    iget-object v1, v2, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 287
    iget-object v1, v2, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 288
    iget-object v1, v2, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->titleTextView:Landroid/widget/TextView;

    move-object/from16 v3, p2

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    iget-object v1, v2, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->titleTextView:Landroid/widget/TextView;

    const/high16 v4, 0x41600000    # 14.0f

    invoke-virtual {v1, v6, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 290
    iget-object v1, v2, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->titleTextView:Landroid/widget/TextView;

    const/4 v4, 0x3

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 291
    iget-object v1, v2, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 292
    iget-object v1, v2, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->subtitleTextView:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 293
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/16 v3, 0x14

    if-ge v1, v3, :cond_1

    const/16 v1, 0x5dc

    goto :goto_0

    :cond_1
    const/16 v1, 0xabe

    :goto_0
    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/Components/BulletinFactory;->create(Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v1

    return-object v1
.end method

.method public createStaticEmojiBulletin(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;
    .locals 5

    .line 766
    new-instance v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/BulletinFactory;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 767
    invoke-static {p1}, Lorg/telegram/messenger/MessageObject;->isTextColorEmoji(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 768
    iget-object v1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_undo_infoColor:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    const/4 v1, 0x0

    .line 770
    new-array v2, v1, [Ljava/lang/String;

    const/16 v3, 0x24

    invoke-virtual {v0, p1, v3, v3, v2}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setAnimation(Lorg/telegram/tgnet/TLRPC$Document;II[Ljava/lang/String;)V

    .line 771
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieImageView;->stopAnimation()V

    .line 772
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 773
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    const/4 p2, 0x1

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {p1, p2, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 774
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 775
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMaxLines(I)V

    const/16 p1, 0xabe

    .line 776
    invoke-virtual {p0, v0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->create(Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createSuccessBulletin(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;
    .locals 1

    const/4 v0, 0x0

    .line 944
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createSuccessBulletin(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createSuccessBulletin(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;
    .locals 3

    .line 948
    new-instance v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 949
    sget p2, Lorg/telegram/messenger/R$raw;->contact_check:I

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    invoke-virtual {v0, p2, v2}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setAnimation(I[Ljava/lang/String;)V

    .line 950
    iget-object p2, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 951
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 952
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMaxLines(I)V

    const/16 p1, 0x5dc

    .line 953
    invoke-virtual {p0, v0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->create(Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createUndoBulletin(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLjava/lang/Runnable;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin;
    .locals 3

    .line 533
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 534
    new-instance v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/BulletinFactory;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 535
    iget-object v1, v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;->titleTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 536
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;->subtitleTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 539
    :cond_0
    new-instance v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v1, p0, Lorg/telegram/ui/Components/BulletinFactory;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, p2, v1}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 540
    iget-object p2, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 541
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 542
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 545
    :goto_0
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin$ButtonLayout;->setTimer()V

    .line 546
    new-instance p1, Lorg/telegram/ui/Components/Bulletin$UndoButton;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object p2

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/telegram/ui/Components/BulletinFactory;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p1, p2, v1, p3, v2}, Lorg/telegram/ui/Components/Bulletin$UndoButton;-><init>(Landroid/content/Context;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget p2, Lorg/telegram/messenger/R$string;->UndoNoCaps:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Bulletin$UndoButton;->setText(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin$UndoButton;

    move-result-object p1

    invoke-virtual {p1, p4}, Lorg/telegram/ui/Components/Bulletin$UndoButton;->setUndoAction(Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin$UndoButton;

    move-result-object p1

    invoke-virtual {p1, p5}, Lorg/telegram/ui/Components/Bulletin$UndoButton;->setDelayedAction(Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin$UndoButton;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Bulletin$ButtonLayout;->setButton(Lorg/telegram/ui/Components/Bulletin$Button;)V

    const/16 p1, 0x1388

    .line 547
    invoke-virtual {p0, v0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->create(Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createUndoBulletin(Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin;
    .locals 1

    const/4 v0, 0x0

    .line 520
    invoke-virtual {p0, p1, v0, p2, p3}, Lorg/telegram/ui/Components/BulletinFactory;->createUndoBulletin(Ljava/lang/CharSequence;ZLjava/lang/Runnable;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createUndoBulletin(Ljava/lang/CharSequence;ZLjava/lang/Runnable;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin;
    .locals 6

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 524
    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/BulletinFactory;->createUndoBulletin(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLjava/lang/Runnable;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createUsersAddedBulletin(Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/ui/Components/Bulletin;
    .locals 5

    if-eqz p1, :cond_4

    .line 695
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 697
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    .line 698
    invoke-static {p2}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p2

    const-string v0, "**"

    if-eqz p2, :cond_1

    .line 699
    sget p2, Lorg/telegram/messenger/R$string;->HasBeenAddedToChannel:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v4}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    const-string v0, "HasBeenAddedToChannel"

    invoke-static {v0, p2, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    goto :goto_1

    .line 701
    :cond_1
    sget p2, Lorg/telegram/messenger/R$string;->HasBeenAddedToGroup:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v4}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    const-string v0, "HasBeenAddedToGroup"

    invoke-static {v0, p2, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    goto :goto_1

    .line 704
    :cond_2
    invoke-static {p2}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 705
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "AddedMembersToChannel"

    invoke-static {v1, p2, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    goto :goto_1

    .line 707
    :cond_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "AddedSubscribersToChannel"

    invoke-static {v1, p2, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p2, 0x0

    .line 710
    :goto_1
    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Components/BulletinFactory;->createUsersBulletin(Ljava/util/List;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createUsersBulletin(Ljava/util/List;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;
    .locals 1

    const/4 v0, 0x0

    .line 551
    invoke-virtual {p0, p1, p2, v0, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createUsersBulletin(Ljava/util/List;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lorg/telegram/ui/Components/BulletinFactory$UndoObject;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createUsersBulletin(Ljava/util/List;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;
    .locals 1

    const/4 v0, 0x0

    .line 563
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createUsersBulletin(Ljava/util/List;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lorg/telegram/ui/Components/BulletinFactory$UndoObject;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createUsersBulletin(Ljava/util/List;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lorg/telegram/ui/Components/BulletinFactory$UndoObject;)Lorg/telegram/ui/Components/Bulletin;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    .line 567
    new-instance v5, Lorg/telegram/ui/Components/Bulletin$UsersLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v3, :cond_0

    move v9, v8

    goto :goto_0

    :cond_0
    move v9, v7

    :goto_0
    iget-object v10, v0, Lorg/telegram/ui/Components/BulletinFactory;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v5, v6, v9, v10}, Lorg/telegram/ui/Components/Bulletin$UsersLayout;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v10, 0x3

    if-eqz v1, :cond_5

    move v11, v7

    move v12, v11

    .line 570
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v13

    if-ge v11, v13, :cond_1

    if-lt v12, v10, :cond_2

    :cond_1
    const/high16 v16, 0x40800000    # 4.0f

    goto :goto_3

    .line 573
    :cond_2
    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/telegram/tgnet/TLObject;

    if-eqz v13, :cond_3

    .line 575
    iget-object v14, v5, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

    add-int/lit8 v15, v12, 0x1

    invoke-virtual {v14, v15}, Lorg/telegram/ui/Components/AvatarsImageView;->setCount(I)V

    .line 576
    iget-object v14, v5, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

    const/high16 v16, 0x40800000    # 4.0f

    sget v9, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-virtual {v14, v12, v9, v13}, Lorg/telegram/ui/Components/AvatarsImageView;->setObject(IILorg/telegram/tgnet/TLObject;)V

    move v12, v15

    goto :goto_2

    :cond_3
    const/high16 v16, 0x40800000    # 4.0f

    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 579
    :goto_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v8, :cond_4

    .line 580
    iget-object v1, v5, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v1, v9}, Landroid/view/View;->setTranslationX(F)V

    .line 581
    iget-object v1, v5, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

    const v9, 0x3f99999a    # 1.2f

    invoke-virtual {v1, v9}, Landroid/view/View;->setScaleX(F)V

    .line 582
    iget-object v1, v5, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

    invoke-virtual {v1, v9}, Landroid/view/View;->setScaleY(F)V

    goto :goto_4

    .line 584
    :cond_4
    iget-object v1, v5, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

    invoke-virtual {v1, v6}, Landroid/view/View;->setScaleX(F)V

    .line 585
    iget-object v1, v5, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

    invoke-virtual {v1, v6}, Landroid/view/View;->setScaleY(F)V

    goto :goto_4

    :cond_5
    const/high16 v16, 0x40800000    # 4.0f

    move v12, v7

    .line 588
    :goto_4
    iget-object v1, v5, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

    invoke-virtual {v1, v7}, Lorg/telegram/ui/Components/AvatarsImageView;->commitTransition(Z)V

    if-eqz v3, :cond_8

    .line 592
    iget-object v1, v5, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 593
    iget-object v1, v5, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 594
    iget-object v1, v5, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 595
    iget-object v1, v5, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->subtitleView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 596
    iget-object v1, v5, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->subtitleView:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 597
    iget-object v1, v5, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->subtitleView:Landroid/widget/TextView;

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 598
    iget-object v1, v5, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_b

    rsub-int/lit8 v1, v12, 0x3

    mul-int/lit8 v1, v1, 0xc

    rsub-int/lit8 v1, v1, 0x46

    int-to-float v1, v1

    .line 599
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    if-ne v12, v8, :cond_6

    .line 601
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v1, v2

    .line 603
    :cond_6
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_7

    .line 604
    iget-object v2, v5, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_5

    .line 606
    :cond_7
    iget-object v2, v5, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_5

    .line 610
    :cond_8
    iget-object v1, v5, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 611
    iget-object v1, v5, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->textView:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 612
    iget-object v1, v5, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 613
    iget-object v1, v5, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_b

    rsub-int/lit8 v1, v12, 0x3

    mul-int/lit8 v1, v1, 0xc

    rsub-int/lit8 v1, v1, 0x46

    int-to-float v1, v1

    .line 614
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    if-ne v12, v8, :cond_9

    .line 616
    iget-object v2, v5, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->textView:Landroid/widget/TextView;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 617
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v1, v2

    .line 619
    :cond_9
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_a

    .line 620
    iget-object v2, v5, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_5

    .line 622
    :cond_a
    iget-object v2, v5, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :cond_b
    :goto_5
    if-eqz v4, :cond_c

    .line 628
    new-instance v1, Lorg/telegram/ui/Components/Bulletin$UndoButton;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/Components/BulletinFactory;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v1, v2, v8, v3}, Lorg/telegram/ui/Components/Bulletin$UndoButton;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget v2, Lorg/telegram/messenger/R$string;->UndoNoCaps:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/Bulletin$UndoButton;->setText(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin$UndoButton;

    move-result-object v1

    iget-object v2, v4, Lorg/telegram/ui/Components/BulletinFactory$UndoObject;->onUndo:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/Bulletin$UndoButton;->setUndoAction(Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin$UndoButton;

    move-result-object v1

    iget-object v2, v4, Lorg/telegram/ui/Components/BulletinFactory$UndoObject;->onAction:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/Bulletin$UndoButton;->setDelayedAction(Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin$UndoButton;

    move-result-object v1

    invoke-virtual {v5, v1}, Lorg/telegram/ui/Components/Bulletin$ButtonLayout;->setButton(Lorg/telegram/ui/Components/Bulletin$Button;)V

    :cond_c
    const/16 v1, 0x1388

    .line 631
    invoke-virtual {v0, v5, v1}, Lorg/telegram/ui/Components/BulletinFactory;->create(Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v1

    return-object v1
.end method

.method public createUsersBulletin(Lorg/telegram/tgnet/TLObject;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;
    .locals 2

    const/4 v0, 0x1

    .line 559
    new-array v0, v0, [Lorg/telegram/tgnet/TLObject;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createUsersBulletin(Ljava/util/List;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lorg/telegram/ui/Components/BulletinFactory$UndoObject;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createUsersBulletin(Lorg/telegram/tgnet/TLObject;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;
    .locals 2

    const/4 v0, 0x1

    .line 555
    new-array v0, v0, [Lorg/telegram/tgnet/TLObject;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createUsersBulletin(Ljava/util/List;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lorg/telegram/ui/Components/BulletinFactory$UndoObject;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public getContext()Landroid/content/Context;
    .locals 2

    .line 1077
    iget-object v0, p0, Lorg/telegram/ui/Components/BulletinFactory;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v0, :cond_0

    .line 1078
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1079
    iget-object v1, p0, Lorg/telegram/ui/Components/BulletinFactory;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLayoutContainer()Landroid/widget/FrameLayout;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1080
    iget-object v0, p0, Lorg/telegram/ui/Components/BulletinFactory;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLayoutContainer()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    .line 1082
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/BulletinFactory;->containerLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    .line 1083
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    if-nez v0, :cond_3

    .line 1086
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    :cond_3
    return-object v0
.end method

.method public getResourcesProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 1

    .line 1092
    iget-object v0, p0, Lorg/telegram/ui/Components/BulletinFactory;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object v0
.end method

.method public makeForError(Lorg/telegram/tgnet/TLRPC$TL_error;)Lorg/telegram/ui/Components/Bulletin;
    .locals 3

    .line 94
    sget-boolean v0, Lorg/telegram/ui/LaunchActivity;->isActive:Z

    if-nez v0, :cond_0

    new-instance p1, Lorg/telegram/ui/Components/Bulletin$EmptyBulletin;

    invoke-direct {p1}, Lorg/telegram/ui/Components/Bulletin$EmptyBulletin;-><init>()V

    return-object p1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 96
    sget p1, Lorg/telegram/messenger/R$string;->UnknownError:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->createErrorBulletin(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1

    .line 98
    :cond_1
    sget v1, Lorg/telegram/messenger/R$string;->UnknownErrorCode:I

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v0

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->createErrorBulletin(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public showForError(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 118
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/BulletinFactory;->showForError(Ljava/lang/String;Z)V

    return-void
.end method

.method public showForError(Ljava/lang/String;Z)V
    .locals 3

    .line 121
    sget-boolean v0, Lorg/telegram/ui/LaunchActivity;->isActive:Z

    if-nez v0, :cond_0

    return-void

    .line 122
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 123
    sget p1, Lorg/telegram/messenger/R$string;->UnknownError:I

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->createErrorBulletin(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    .line 124
    iput-boolean v1, p1, Lorg/telegram/ui/Components/Bulletin;->hideAfterBottomSheet:Z

    .line 125
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Bulletin;->show(Z)Lorg/telegram/ui/Components/Bulletin;

    return-void

    .line 127
    :cond_1
    sget v0, Lorg/telegram/messenger/R$string;->UnknownErrorCode:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-static {v0, v2}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->createErrorBulletin(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    .line 128
    iput-boolean v1, p1, Lorg/telegram/ui/Components/Bulletin;->hideAfterBottomSheet:Z

    .line 129
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Bulletin;->show(Z)Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method public showForError(Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    const/4 v0, 0x0

    .line 103
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/BulletinFactory;->showForError(Lorg/telegram/tgnet/TLRPC$TL_error;Z)V

    return-void
.end method

.method public showForError(Lorg/telegram/tgnet/TLRPC$TL_error;Z)V
    .locals 3

    .line 106
    sget-boolean v0, Lorg/telegram/ui/LaunchActivity;->isActive:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 108
    sget p1, Lorg/telegram/messenger/R$string;->UnknownError:I

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1, v1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->createErrorBulletin(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    .line 109
    iput-boolean v0, p1, Lorg/telegram/ui/Components/Bulletin;->hideAfterBottomSheet:Z

    .line 110
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Bulletin;->show(Z)Lorg/telegram/ui/Components/Bulletin;

    return-void

    .line 112
    :cond_1
    sget v1, Lorg/telegram/messenger/R$string;->UnknownErrorCode:I

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v0

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->createErrorBulletin(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    .line 113
    iput-boolean v0, p1, Lorg/telegram/ui/Components/Bulletin;->hideAfterBottomSheet:Z

    .line 114
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Bulletin;->show(Z)Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method public showForwardedBulletinWithTag(JI)Z
    .locals 5

    .line 1287
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1290
    :cond_0
    new-instance v0, Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions;

    iget-object v2, p0, Lorg/telegram/ui/Components/BulletinFactory;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-direct {v0, v2, p3}, Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;I)V

    .line 1292
    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    iget-wide v2, v2, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    cmp-long p1, p1, v2

    if-nez p1, :cond_2

    const/4 p1, -0x1

    const/4 p2, 0x2

    const/4 v2, 0x1

    if-gt p3, v2, :cond_1

    .line 1294
    sget p3, Lorg/telegram/messenger/R$string;->FwdMessageToSavedMessages:I

    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p3

    new-instance v3, Lorg/telegram/ui/Components/BulletinFactory$$ExternalSyntheticLambda5;

    invoke-direct {v3}, Lorg/telegram/ui/Components/BulletinFactory$$ExternalSyntheticLambda5;-><init>()V

    invoke-static {p3, p1, p2, v3}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;IILjava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    goto :goto_0

    .line 1296
    :cond_1
    sget p3, Lorg/telegram/messenger/R$string;->FwdMessagesToSavedMessages:I

    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p3

    new-instance v3, Lorg/telegram/ui/Components/BulletinFactory$$ExternalSyntheticLambda5;

    invoke-direct {v3}, Lorg/telegram/ui/Components/BulletinFactory$$ExternalSyntheticLambda5;-><init>()V

    invoke-static {p3, p1, p2, v3}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;IILjava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    .line 1301
    :goto_0
    sget p3, Lorg/telegram/messenger/R$raw;->saved_messages:I

    new-array v3, v1, [Ljava/lang/String;

    const/16 v4, 0x24

    invoke-virtual {v0, p3, v4, v4, v3}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setAnimation(III[Ljava/lang/String;)V

    .line 1302
    iget-object p3, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1303
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1304
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMaxLines(I)V

    const/16 p1, 0xdac

    .line 1305
    invoke-virtual {p0, v0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->create(Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    .line 1306
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions;->setBulletin(Lorg/telegram/ui/Components/Bulletin;)V

    .line 1307
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/Bulletin;->hideAfterBottomSheet(Z)Lorg/telegram/ui/Components/Bulletin;

    .line 1308
    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/Bulletin;->show(Z)Lorg/telegram/ui/Components/Bulletin;

    return v2

    :cond_2
    return v1
.end method
