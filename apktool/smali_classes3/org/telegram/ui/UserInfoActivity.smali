.class public Lorg/telegram/ui/UserInfoActivity;
.super Lorg/telegram/ui/Components/UniversalFragment;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/UserInfoActivity$AdminedChannelsFetcher;,
        Lorg/telegram/ui/UserInfoActivity$InfoCell;,
        Lorg/telegram/ui/UserInfoActivity$ChooseChannelFragment;
    }
.end annotation


# instance fields
.field private final accountNumbers:Ljava/util/ArrayList;

.field public addAccountRow:I
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private bioEdit:Lorg/telegram/ui/Cells/EditTextCell;

.field private bioInfo:Ljava/lang/CharSequence;

.field public bioRow:I
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private birthday:Lorg/telegram/tgnet/tl/TL_account$TL_birthday;

.field private birthdayInfo:Ljava/lang/CharSequence;

.field public birthdayRow:I
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private channel:Lorg/telegram/tgnet/TLRPC$Chat;

.field public channelRow:I
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private channels:Lorg/telegram/ui/UserInfoActivity$AdminedChannelsFetcher;

.field private currentBio:Ljava/lang/String;

.field private currentBirthday:Lorg/telegram/tgnet/tl/TL_account$TL_birthday;

.field private currentChannel:J

.field private currentFirstName:Ljava/lang/String;

.field private currentLastName:Ljava/lang/String;

.field private doneButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private doneButtonDrawable:Lorg/telegram/ui/Components/CrossfadeDrawable;

.field private firstNameEdit:Lorg/telegram/ui/Cells/EditTextCell;

.field public firstNameRow:I
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private hadHours:Z

.field private hadLocation:Z

.field private lastNameEdit:Lorg/telegram/ui/Cells/EditTextCell;

.field public lastNameRow:I
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field public listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

.field public logoutRow:I
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private nowPlayingService:Lcom/exteragram/messenger/api/model/NowPlayingServiceType;

.field public numberRow:I
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private shiftDp:I

.field public usernameRow:I
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private valueSet:Z

.field private wasSaved:Z


# direct methods
.method public static synthetic $r8$lambda$-EEdZr-LoaNfePj9c9wxBiufMU0(Lorg/telegram/ui/UserInfoActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/tl/TL_account$TL_birthday;Lorg/telegram/tgnet/TLRPC$UserFull;[ILjava/util/ArrayList;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p7}, Lorg/telegram/ui/UserInfoActivity;->lambda$processDone$10(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/tl/TL_account$TL_birthday;Lorg/telegram/tgnet/TLRPC$UserFull;[ILjava/util/ArrayList;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$2CdBzJk573FimflIbSWieEAV0Lk(Lorg/telegram/ui/UserInfoActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/UserInfoActivity;->lambda$fillItems$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$71xnDT9bIq9GuA09eR_3hfi033Y(Lorg/telegram/ui/UserInfoActivity;Lorg/telegram/tgnet/tl/TL_account$TL_birthday;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/UserInfoActivity;->lambda$onClick$4(Lorg/telegram/tgnet/tl/TL_account$TL_birthday;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ch0Rk8_PDj4BiXiKFxRQyBHpFvY(Lorg/telegram/ui/UserInfoActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/UserInfoActivity;->lambda$createView$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$Jmg5919uLMlzviCnSkp7aLpXUt8(Lorg/telegram/ui/UserInfoActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/tl/TL_account$TL_birthday;Lorg/telegram/tgnet/TLRPC$UserFull;Lorg/telegram/tgnet/TLObject;[ILjava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p7}, Lorg/telegram/ui/UserInfoActivity;->lambda$processDone$9(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/tl/TL_account$TL_birthday;Lorg/telegram/tgnet/TLRPC$UserFull;Lorg/telegram/tgnet/TLObject;[ILjava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ldf9NtjiRsqLAx-ODHDibL3i6rE(Lorg/telegram/ui/UserInfoActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/UserInfoActivity;->lambda$onResume$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$lZrRJqqFTGXj5vn9LSv99NKKwIE(Lorg/telegram/ui/UserInfoActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/UserInfoActivity;->lambda$fillItems$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$r2we3DhZmZutKhGc1e0Q0n0nvvI(Ljava/lang/Integer;Ljava/lang/Integer;)I
    .locals 2

    .line 196
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p0

    iget p0, p0, Lorg/telegram/messenger/UserConfig;->loginTime:I

    int-to-long v0, p0

    .line 197
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p0

    iget p0, p0, Lorg/telegram/messenger/UserConfig;->loginTime:I

    int-to-long p0, p0

    cmp-long p0, v0, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-gez p0, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$uO-y2XktgUz-W1TmAq0a9BQLML0(Lorg/telegram/ui/UserInfoActivity;Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/UserInfoActivity;->lambda$onClick$5(Lorg/telegram/tgnet/TLRPC$Chat;)V

    return-void
.end method

.method public static synthetic $r8$lambda$y-NEMVPDY_0sr5BiiMuPyJgRBOk(Lorg/telegram/ui/UserInfoActivity;Lcom/exteragram/messenger/api/dto/NowPlayingInfoDTO;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/UserInfoActivity;->lambda$setValue$8(Lcom/exteragram/messenger/api/dto/NowPlayingInfoDTO;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zFX0ey6eaT3ttfENyVnay4qJ2Co(Lorg/telegram/ui/UserInfoActivity;Lcom/exteragram/messenger/api/dto/NowPlayingInfoDTO;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/UserInfoActivity;->lambda$setValue$7(Lcom/exteragram/messenger/api/dto/NowPlayingInfoDTO;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckDone(Lorg/telegram/ui/UserInfoActivity;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/UserInfoActivity;->checkDone(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mprocessDone(Lorg/telegram/ui/UserInfoActivity;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/UserInfoActivity;->processDone(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 72
    invoke-direct {p0}, Lorg/telegram/ui/Components/UniversalFragment;-><init>()V

    .line 187
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/UserInfoActivity;->accountNumbers:Ljava/util/ArrayList;

    .line 496
    new-instance v0, Lorg/telegram/ui/UserInfoActivity$AdminedChannelsFetcher;

    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/UserInfoActivity$AdminedChannelsFetcher;-><init>(IZ)V

    iput-object v0, p0, Lorg/telegram/ui/UserInfoActivity;->channels:Lorg/telegram/ui/UserInfoActivity$AdminedChannelsFetcher;

    const/4 v0, 0x0

    .line 574
    iput-boolean v0, p0, Lorg/telegram/ui/UserInfoActivity;->wasSaved:Z

    const/4 v0, -0x4

    .line 575
    iput v0, p0, Lorg/telegram/ui/UserInfoActivity;->shiftDp:I

    return-void
.end method

.method public static birthdayString(Lorg/telegram/tgnet/tl/TL_account$TL_birthday;)Ljava/lang/String;
    .locals 5

    if-nez p0, :cond_0

    .line 341
    const-string/jumbo p0, "\u2014"

    return-object p0

    .line 343
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_birthday;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x5

    const/4 v3, 0x2

    if-eqz v0, :cond_1

    .line 344
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 345
    iget v4, p0, Lorg/telegram/tgnet/tl/TL_account$TL_birthday;->year:I

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    .line 346
    iget v4, p0, Lorg/telegram/tgnet/tl/TL_account$TL_birthday;->month:I

    sub-int/2addr v4, v1

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 347
    iget p0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_birthday;->day:I

    invoke-virtual {v0, v2, p0}, Ljava/util/Calendar;->set(II)V

    .line 348
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/messenger/LocaleController;->getFormatterBoostExpired()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object p0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/telegram/messenger/time/FastDateFormat;->format(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 350
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 351
    iget v4, p0, Lorg/telegram/tgnet/tl/TL_account$TL_birthday;->month:I

    sub-int/2addr v4, v1

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 352
    iget p0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_birthday;->day:I

    invoke-virtual {v0, v2, p0}, Ljava/util/Calendar;->set(II)V

    .line 353
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/messenger/LocaleController;->getFormatterDayMonth()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object p0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/telegram/messenger/time/FastDateFormat;->format(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static birthdaysEqual(Lorg/telegram/tgnet/tl/TL_account$TL_birthday;Lorg/telegram/tgnet/tl/TL_account$TL_birthday;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    if-eqz p1, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v0

    :goto_1
    if-eq v2, v3, :cond_3

    if-eqz p0, :cond_2

    .line 558
    iget v2, p0, Lorg/telegram/tgnet/tl/TL_account$TL_birthday;->day:I

    iget v3, p1, Lorg/telegram/tgnet/tl/TL_account$TL_birthday;->day:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lorg/telegram/tgnet/tl/TL_account$TL_birthday;->month:I

    iget v3, p1, Lorg/telegram/tgnet/tl/TL_account$TL_birthday;->month:I

    if-ne v2, v3, :cond_3

    iget p0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_birthday;->year:I

    iget p1, p1, Lorg/telegram/tgnet/tl/TL_account$TL_birthday;->year:I

    if-ne p0, p1, :cond_3

    :cond_2
    return v1

    :cond_3
    return v0
.end method

.method private checkDone(Z)V
    .locals 4

    .line 562
    iget-object v0, p0, Lorg/telegram/ui/UserInfoActivity;->doneButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-nez v0, :cond_0

    return-void

    .line 563
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/UserInfoActivity;->hasChanges()Z

    move-result v0

    .line 564
    iget-object v1, p0, Lorg/telegram/ui/UserInfoActivity;->doneButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p1, :cond_4

    .line 566
    iget-object p1, p0, Lorg/telegram/ui/UserInfoActivity;->doneButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    if-eqz v0, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    if-eqz v0, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    if-eqz v0, :cond_3

    move v1, v2

    :cond_3
    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0xb4

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void

    .line 568
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/UserInfoActivity;->doneButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v0, :cond_5

    move v3, v2

    goto :goto_2

    :cond_5
    move v3, v1

    :goto_2
    invoke-virtual {p1, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setAlpha(F)V

    .line 569
    iget-object p1, p0, Lorg/telegram/ui/UserInfoActivity;->doneButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v0, :cond_6

    move v3, v2

    goto :goto_3

    :cond_6
    move v3, v1

    :goto_3
    invoke-virtual {p1, v3}, Landroid/view/View;->setScaleX(F)V

    .line 570
    iget-object p1, p0, Lorg/telegram/ui/UserInfoActivity;->doneButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v0, :cond_7

    move v1, v2

    :cond_7
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method private synthetic lambda$createView$0()V
    .locals 3

    .line 143
    new-instance v0, Lorg/telegram/ui/PrivacyControlActivity;

    const/16 v1, 0x9

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/PrivacyControlActivity;-><init>(IZ)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$fillItems$2()V
    .locals 2

    .line 266
    new-instance v0, Lorg/telegram/ui/PrivacyControlActivity;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lorg/telegram/ui/PrivacyControlActivity;-><init>(I)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$fillItems$3()V
    .locals 2

    .line 326
    new-instance v0, Lorg/telegram/ui/PremiumPreviewFragment;

    const-string v1, "add_account"

    invoke-direct {v0, v1}, Lorg/telegram/ui/PremiumPreviewFragment;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$onClick$4(Lorg/telegram/tgnet/tl/TL_account$TL_birthday;)V
    .locals 1

    .line 390
    iput-object p1, p0, Lorg/telegram/ui/UserInfoActivity;->birthday:Lorg/telegram/tgnet/tl/TL_account$TL_birthday;

    .line 391
    iget-object p1, p0, Lorg/telegram/ui/UserInfoActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 392
    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    .line 394
    :cond_0
    invoke-direct {p0, v0}, Lorg/telegram/ui/UserInfoActivity;->checkDone(Z)V

    return-void
.end method

.method private synthetic lambda$onClick$5(Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 2

    .line 409
    iget-object v0, p0, Lorg/telegram/ui/UserInfoActivity;->channel:Lorg/telegram/tgnet/TLRPC$Chat;

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 410
    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/UserInfoActivity;->channel:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz p1, :cond_1

    .line 412
    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$raw;->contact_check:I

    sget v1, Lorg/telegram/messenger/R$string;->EditProfileChannelSet:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    :cond_1
    const/4 p1, 0x1

    .line 414
    invoke-direct {p0, p1}, Lorg/telegram/ui/UserInfoActivity;->checkDone(Z)V

    .line 415
    iget-object v0, p0, Lorg/telegram/ui/UserInfoActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    if-eqz v0, :cond_2

    .line 416
    iget-object v0, v0, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method private synthetic lambda$onResume$6()V
    .locals 2

    .line 473
    iget-object v0, p0, Lorg/telegram/ui/UserInfoActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, v0, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$processDone$10(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/tl/TL_account$TL_birthday;Lorg/telegram/tgnet/TLRPC$UserFull;[ILjava/util/ArrayList;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 9

    .line 658
    new-instance v0, Lorg/telegram/ui/UserInfoActivity$$ExternalSyntheticLambda4;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v7, p4

    move-object v8, p5

    move-object v6, p6

    move-object/from16 v2, p7

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/UserInfoActivity$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/UserInfoActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/tl/TL_account$TL_birthday;Lorg/telegram/tgnet/TLRPC$UserFull;Lorg/telegram/tgnet/TLObject;[ILjava/util/ArrayList;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$processDone$9(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/tl/TL_account$TL_birthday;Lorg/telegram/tgnet/TLRPC$UserFull;Lorg/telegram/tgnet/TLObject;[ILjava/util/ArrayList;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 660
    iget-object p5, p0, Lorg/telegram/ui/UserInfoActivity;->doneButtonDrawable:Lorg/telegram/ui/Components/CrossfadeDrawable;

    invoke-virtual {p5, v0}, Lorg/telegram/ui/Components/CrossfadeDrawable;->animateToProgress(F)V

    .line 661
    instance-of p2, p2, Lorg/telegram/tgnet/tl/TL_account$updateBirthday;

    if-eqz p2, :cond_0

    iget-object p5, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    if-eqz p5, :cond_0

    const-string p6, "FLOOD_WAIT_"

    invoke-virtual {p5, p6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p5

    if-eqz p5, :cond_0

    .line 662
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 663
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 664
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p5

    iget-object p6, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p1, p5, p6}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget p5, Lorg/telegram/messenger/R$string;->PrivacyBirthdayTooOftenTitle:I

    .line 665
    invoke-static {p5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p1, p5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget p5, Lorg/telegram/messenger/R$string;->PrivacyBirthdayTooOftenMessage:I

    .line 666
    invoke-static {p5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p1, p5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget p5, Lorg/telegram/messenger/R$string;->OK:I

    .line 667
    invoke-static {p5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p5

    const/4 p6, 0x0

    invoke-virtual {p1, p5, p6}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    .line 668
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 663
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_0

    .line 672
    :cond_0
    invoke-static {p1}, Lorg/telegram/ui/Components/BulletinFactory;->showError(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    :cond_1
    :goto_0
    if-eqz p2, :cond_6

    if-eqz p3, :cond_2

    .line 676
    iget p1, p4, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p4, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    goto :goto_1

    .line 678
    :cond_2
    iget p1, p4, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    and-int/lit8 p1, p1, -0x21

    iput p1, p4, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    .line 680
    :goto_1
    iput-object p3, p4, Lorg/telegram/tgnet/TLRPC$UserFull;->birthday:Lorg/telegram/tgnet/tl/TL_account$TL_birthday;

    .line 681
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object p1

    invoke-virtual {p1, p4, v1}, Lorg/telegram/messenger/MessagesStorage;->updateUserInfo(Lorg/telegram/tgnet/TLRPC$UserFull;Z)V

    return-void

    .line 683
    :cond_3
    instance-of p1, p5, Lorg/telegram/tgnet/TLRPC$TL_boolFalse;

    if-eqz p1, :cond_4

    .line 684
    iget-object p1, p0, Lorg/telegram/ui/UserInfoActivity;->doneButtonDrawable:Lorg/telegram/ui/Components/CrossfadeDrawable;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/CrossfadeDrawable;->animateToProgress(F)V

    .line 685
    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->UnknownError:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/BulletinFactory;->createErrorBulletin(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void

    :cond_4
    const/4 p1, 0x1

    .line 687
    iput-boolean p1, p0, Lorg/telegram/ui/UserInfoActivity;->wasSaved:Z

    .line 688
    aget p2, p6, v1

    add-int/2addr p2, p1

    aput p2, p6, v1

    .line 689
    invoke-virtual {p7}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p2, p1, :cond_6

    .line 690
    sget p1, Lcom/exteragram/messenger/ExteraConfig;->titleText:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_5

    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->currentUserPremiumStatusChanged:I

    new-array p3, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 691
    :cond_5
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    :cond_6
    return-void
.end method

.method private synthetic lambda$setValue$7(Lcom/exteragram/messenger/api/dto/NowPlayingInfoDTO;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 533
    :cond_0
    invoke-virtual {p1}, Lcom/exteragram/messenger/api/dto/NowPlayingInfoDTO;->getServiceType()Lcom/exteragram/messenger/api/model/NowPlayingServiceType;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/telegram/ui/UserInfoActivity;->nowPlayingService:Lcom/exteragram/messenger/api/model/NowPlayingServiceType;

    .line 534
    iget-object p1, p0, Lorg/telegram/ui/UserInfoActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    if-eqz p1, :cond_1

    .line 535
    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$setValue$8(Lcom/exteragram/messenger/api/dto/NowPlayingInfoDTO;)V
    .locals 3

    .line 532
    new-instance v0, Lorg/telegram/ui/UserInfoActivity$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/UserInfoActivity$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/UserInfoActivity;Lcom/exteragram/messenger/api/dto/NowPlayingInfoDTO;)V

    const-wide/16 v1, 0x64

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private processDone(Z)V
    .locals 12

    .line 577
    iget-object v0, p0, Lorg/telegram/ui/UserInfoActivity;->doneButtonDrawable:Lorg/telegram/ui/Components/CrossfadeDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CrossfadeDrawable;->getProgress()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    :cond_0
    :goto_0
    move-object v4, p0

    goto/16 :goto_6

    :cond_1
    if-eqz p1, :cond_2

    .line 579
    iget-object p1, p0, Lorg/telegram/ui/UserInfoActivity;->firstNameEdit:Lorg/telegram/ui/Cells/EditTextCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/EditTextCell;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 580
    sget-object p1, Lorg/telegram/messenger/BotWebViewVibrationEffect;->APP_ERROR:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    invoke-virtual {p1}, Lorg/telegram/messenger/BotWebViewVibrationEffect;->vibrate()V

    .line 581
    iget-object p1, p0, Lorg/telegram/ui/UserInfoActivity;->firstNameEdit:Lorg/telegram/ui/Cells/EditTextCell;

    iget v0, p0, Lorg/telegram/ui/UserInfoActivity;->shiftDp:I

    neg-int v0, v0

    iput v0, p0, Lorg/telegram/ui/UserInfoActivity;->shiftDp:I

    int-to-float v0, v0

    invoke-static {p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->shakeViewSpring(Landroid/view/View;F)V

    return-void

    .line 585
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/UserInfoActivity;->doneButtonDrawable:Lorg/telegram/ui/Components/CrossfadeDrawable;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/CrossfadeDrawable;->animateToProgress(F)V

    .line 586
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    .line 587
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->getUserFull(J)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v7

    if-eqz p1, :cond_0

    if-nez v7, :cond_3

    goto :goto_0

    .line 590
    :cond_3
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 592
    iget-object v0, p0, Lorg/telegram/ui/UserInfoActivity;->firstNameEdit:Lorg/telegram/ui/Cells/EditTextCell;

    .line 593
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/EditTextCell;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/UserInfoActivity;->currentFirstName:Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/ui/UserInfoActivity;->firstNameEdit:Lorg/telegram/ui/Cells/EditTextCell;

    .line 595
    invoke-virtual {v2}, Lorg/telegram/ui/Cells/EditTextCell;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/UserInfoActivity;->currentLastName:Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/ui/UserInfoActivity;->lastNameEdit:Lorg/telegram/ui/Cells/EditTextCell;

    .line 596
    invoke-virtual {v2}, Lorg/telegram/ui/Cells/EditTextCell;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/UserInfoActivity;->currentBio:Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/ui/UserInfoActivity;->bioEdit:Lorg/telegram/ui/Cells/EditTextCell;

    .line 597
    invoke-virtual {v2}, Lorg/telegram/ui/Cells/EditTextCell;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 600
    :cond_4
    new-instance v0, Lorg/telegram/tgnet/tl/TL_account$updateProfile;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_account$updateProfile;-><init>()V

    .line 602
    iget v2, v0, Lorg/telegram/tgnet/tl/TL_account$updateProfile;->flags:I

    or-int/2addr v2, v1

    iput v2, v0, Lorg/telegram/tgnet/tl/TL_account$updateProfile;->flags:I

    .line 603
    iget-object v2, p0, Lorg/telegram/ui/UserInfoActivity;->firstNameEdit:Lorg/telegram/ui/Cells/EditTextCell;

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/EditTextCell;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iput-object v2, v0, Lorg/telegram/tgnet/tl/TL_account$updateProfile;->first_name:Ljava/lang/String;

    .line 605
    iget v2, v0, Lorg/telegram/tgnet/tl/TL_account$updateProfile;->flags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v0, Lorg/telegram/tgnet/tl/TL_account$updateProfile;->flags:I

    .line 606
    iget-object v2, p0, Lorg/telegram/ui/UserInfoActivity;->lastNameEdit:Lorg/telegram/ui/Cells/EditTextCell;

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/EditTextCell;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    iput-object v2, v0, Lorg/telegram/tgnet/tl/TL_account$updateProfile;->last_name:Ljava/lang/String;

    .line 608
    iget p1, v0, Lorg/telegram/tgnet/tl/TL_account$updateProfile;->flags:I

    or-int/lit8 p1, p1, 0x4

    iput p1, v0, Lorg/telegram/tgnet/tl/TL_account$updateProfile;->flags:I

    .line 609
    iget-object p1, p0, Lorg/telegram/ui/UserInfoActivity;->bioEdit:Lorg/telegram/ui/Cells/EditTextCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/EditTextCell;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v7, Lorg/telegram/tgnet/TLRPC$UserFull;->about:Ljava/lang/String;

    iput-object p1, v0, Lorg/telegram/tgnet/tl/TL_account$updateProfile;->about:Ljava/lang/String;

    .line 610
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget p1, v7, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    and-int/lit8 p1, p1, -0x3

    goto :goto_1

    :cond_5
    iget p1, v7, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    or-int/lit8 p1, p1, 0x2

    :goto_1
    iput p1, v7, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    .line 612
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 615
    :cond_6
    iget-object v6, v7, Lorg/telegram/tgnet/TLRPC$UserFull;->birthday:Lorg/telegram/tgnet/tl/TL_account$TL_birthday;

    .line 616
    iget-object p1, p0, Lorg/telegram/ui/UserInfoActivity;->currentBirthday:Lorg/telegram/tgnet/tl/TL_account$TL_birthday;

    iget-object v0, p0, Lorg/telegram/ui/UserInfoActivity;->birthday:Lorg/telegram/tgnet/tl/TL_account$TL_birthday;

    invoke-static {p1, v0}, Lorg/telegram/ui/UserInfoActivity;->birthdaysEqual(Lorg/telegram/tgnet/tl/TL_account$TL_birthday;Lorg/telegram/tgnet/tl/TL_account$TL_birthday;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_8

    .line 617
    new-instance p1, Lorg/telegram/tgnet/tl/TL_account$updateBirthday;

    invoke-direct {p1}, Lorg/telegram/tgnet/tl/TL_account$updateBirthday;-><init>()V

    .line 618
    iget-object v2, p0, Lorg/telegram/ui/UserInfoActivity;->birthday:Lorg/telegram/tgnet/tl/TL_account$TL_birthday;

    if-eqz v2, :cond_7

    .line 619
    iget v3, v7, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    or-int/lit8 v3, v3, 0x20

    iput v3, v7, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    .line 620
    iput-object v2, v7, Lorg/telegram/tgnet/TLRPC$UserFull;->birthday:Lorg/telegram/tgnet/tl/TL_account$TL_birthday;

    .line 621
    iget v3, p1, Lorg/telegram/tgnet/tl/TL_account$updateBirthday;->flags:I

    or-int/2addr v3, v1

    iput v3, p1, Lorg/telegram/tgnet/tl/TL_account$updateBirthday;->flags:I

    .line 622
    iput-object v2, p1, Lorg/telegram/tgnet/tl/TL_account$updateBirthday;->birthday:Lorg/telegram/tgnet/tl/TL_account$TL_birthday;

    goto :goto_2

    .line 624
    :cond_7
    iget v2, v7, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    and-int/lit8 v2, v2, -0x21

    iput v2, v7, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    const/4 v2, 0x0

    .line 625
    iput-object v2, v7, Lorg/telegram/tgnet/TLRPC$UserFull;->birthday:Lorg/telegram/tgnet/tl/TL_account$TL_birthday;

    .line 627
    :goto_2
    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 628
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->invalidateContentSettings()V

    .line 630
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->premiumPromoUpdated:I

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 633
    :cond_8
    iget-wide v2, p0, Lorg/telegram/ui/UserInfoActivity;->currentChannel:J

    iget-object p1, p0, Lorg/telegram/ui/UserInfoActivity;->channel:Lorg/telegram/tgnet/TLRPC$Chat;

    const-wide/16 v4, 0x0

    if-eqz p1, :cond_9

    iget-wide v10, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    goto :goto_3

    :cond_9
    move-wide v10, v4

    :goto_3
    cmp-long p1, v2, v10

    if-eqz p1, :cond_c

    .line 634
    new-instance p1, Lorg/telegram/tgnet/tl/TL_account$updatePersonalChannel;

    invoke-direct {p1}, Lorg/telegram/tgnet/tl/TL_account$updatePersonalChannel;-><init>()V

    .line 635
    iget-object v2, p0, Lorg/telegram/ui/UserInfoActivity;->channel:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInputChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v2

    iput-object v2, p1, Lorg/telegram/tgnet/tl/TL_account$updatePersonalChannel;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 636
    iget-object v2, p0, Lorg/telegram/ui/UserInfoActivity;->channel:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v2, :cond_b

    .line 637
    iget v3, v7, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    or-int/lit8 v3, v3, 0x40

    iput v3, v7, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    .line 638
    iget-wide v3, v7, Lorg/telegram/tgnet/TLRPC$UserFull;->personal_channel_id:J

    iget-wide v10, v2, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    cmp-long v2, v3, v10

    if-eqz v2, :cond_a

    .line 639
    iput v0, v7, Lorg/telegram/tgnet/TLRPC$UserFull;->personal_channel_message:I

    .line 641
    :cond_a
    iput-wide v10, v7, Lorg/telegram/tgnet/TLRPC$UserFull;->personal_channel_id:J

    goto :goto_4

    .line 643
    :cond_b
    iget v2, v7, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    and-int/lit8 v2, v2, -0x41

    iput v2, v7, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    .line 644
    iput v0, v7, Lorg/telegram/tgnet/TLRPC$UserFull;->personal_channel_message:I

    .line 645
    iput-wide v4, v7, Lorg/telegram/tgnet/TLRPC$UserFull;->personal_channel_id:J

    .line 647
    :goto_4
    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 650
    :cond_c
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 651
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void

    .line 655
    :cond_d
    filled-new-array {v0}, [I

    move-result-object v8

    move p1, v0

    .line 656
    :goto_5
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_e

    .line 657
    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lorg/telegram/tgnet/TLObject;

    .line 658
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/UserInfoActivity$$ExternalSyntheticLambda3;

    move-object v4, p0

    invoke-direct/range {v3 .. v9}, Lorg/telegram/ui/UserInfoActivity$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/UserInfoActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/tl/TL_account$TL_birthday;Lorg/telegram/tgnet/TLRPC$UserFull;[ILjava/util/ArrayList;)V

    const/16 v10, 0x400

    invoke-virtual {v2, v5, v3, v10}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    :cond_e
    move-object v4, p0

    .line 696
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object p1

    invoke-virtual {p1, v7, v0}, Lorg/telegram/messenger/MessagesStorage;->updateUserInfo(Lorg/telegram/tgnet/TLRPC$UserFull;Z)V

    .line 697
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 699
    iget p1, v4, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->mainUserInfoChanged:I

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 700
    iget p1, v4, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    sget v3, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_NAME:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v3, v1, v0

    invoke-virtual {p1, v2, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :goto_6
    return-void
.end method

.method private setValue()V
    .locals 5

    .line 500
    iget-boolean v0, p0, Lorg/telegram/ui/UserInfoActivity;->valueSet:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 502
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v0

    .line 503
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lorg/telegram/messenger/MessagesController;->getUserFull(J)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 505
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getClassGuid()I

    move-result v3

    invoke-virtual {v0, v2, v1, v3}, Lorg/telegram/messenger/MessagesController;->loadUserInfo(Lorg/telegram/tgnet/TLRPC$User;ZI)V

    return-void

    .line 509
    :cond_1
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$UserFull;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-nez v2, :cond_2

    .line 511
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    :cond_2
    if-nez v2, :cond_3

    :goto_0
    return-void

    .line 518
    :cond_3
    iget-object v3, p0, Lorg/telegram/ui/UserInfoActivity;->firstNameEdit:Lorg/telegram/ui/Cells/EditTextCell;

    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iput-object v4, p0, Lorg/telegram/ui/UserInfoActivity;->currentFirstName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Cells/EditTextCell;->setText(Ljava/lang/CharSequence;)V

    .line 519
    iget-object v3, p0, Lorg/telegram/ui/UserInfoActivity;->lastNameEdit:Lorg/telegram/ui/Cells/EditTextCell;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    iput-object v2, p0, Lorg/telegram/ui/UserInfoActivity;->currentLastName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Cells/EditTextCell;->setText(Ljava/lang/CharSequence;)V

    .line 520
    iget-object v2, p0, Lorg/telegram/ui/UserInfoActivity;->bioEdit:Lorg/telegram/ui/Cells/EditTextCell;

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$UserFull;->about:Ljava/lang/String;

    iput-object v3, p0, Lorg/telegram/ui/UserInfoActivity;->currentBio:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/EditTextCell;->setText(Ljava/lang/CharSequence;)V

    .line 521
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$UserFull;->birthday:Lorg/telegram/tgnet/tl/TL_account$TL_birthday;

    iput-object v2, p0, Lorg/telegram/ui/UserInfoActivity;->currentBirthday:Lorg/telegram/tgnet/tl/TL_account$TL_birthday;

    iput-object v2, p0, Lorg/telegram/ui/UserInfoActivity;->birthday:Lorg/telegram/tgnet/tl/TL_account$TL_birthday;

    .line 522
    iget v2, v0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_4

    .line 523
    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$UserFull;->personal_channel_id:J

    iput-wide v2, p0, Lorg/telegram/ui/UserInfoActivity;->currentChannel:J

    .line 524
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-wide v3, p0, Lorg/telegram/ui/UserInfoActivity;->currentChannel:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/UserInfoActivity;->channel:Lorg/telegram/tgnet/TLRPC$Chat;

    goto :goto_1

    :cond_4
    const-wide/16 v2, 0x0

    .line 526
    iput-wide v2, p0, Lorg/telegram/ui/UserInfoActivity;->currentChannel:J

    const/4 v2, 0x0

    .line 527
    iput-object v2, p0, Lorg/telegram/ui/UserInfoActivity;->channel:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 529
    :goto_1
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$UserFull;->business_work_hours:Lorg/telegram/tgnet/tl/TL_account$TL_businessWorkHours;

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    move v2, v1

    goto :goto_2

    :cond_5
    move v2, v3

    :goto_2
    iput-boolean v2, p0, Lorg/telegram/ui/UserInfoActivity;->hadHours:Z

    .line 530
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$UserFull;->business_location:Lorg/telegram/tgnet/TLRPC$TL_businessLocation;

    if-eqz v0, :cond_6

    move v3, v1

    :cond_6
    iput-boolean v3, p0, Lorg/telegram/ui/UserInfoActivity;->hadLocation:Z

    .line 532
    new-instance v0, Lorg/telegram/ui/UserInfoActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/UserInfoActivity$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/UserInfoActivity;)V

    invoke-static {v0}, Lcom/exteragram/messenger/nowplaying/NowPlayingController;->getNowPlayingInfo(Ljava/util/function/Consumer;)V

    .line 539
    invoke-direct {p0, v1}, Lorg/telegram/ui/UserInfoActivity;->checkDone(Z)V

    .line 541
    iget-object v0, p0, Lorg/telegram/ui/UserInfoActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    if-eqz v0, :cond_7

    iget-object v0, v0, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    if-eqz v0, :cond_7

    .line 542
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    .line 544
    :cond_7
    iput-boolean v1, p0, Lorg/telegram/ui/UserInfoActivity;->valueSet:Z

    return-void
.end method

.method private updateAccounts()V
    .locals 3

    .line 189
    iget-object v0, p0, Lorg/telegram/ui/UserInfoActivity;->accountNumbers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x10

    if-ge v0, v1, :cond_1

    .line 191
    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->isClientActivated()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    if-eq v1, v0, :cond_0

    .line 192
    iget-object v1, p0, Lorg/telegram/ui/UserInfoActivity;->accountNumbers:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 195
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/UserInfoActivity;->accountNumbers:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/UserInfoActivity$$ExternalSyntheticLambda10;

    invoke-direct {v1}, Lorg/telegram/ui/UserInfoActivity$$ExternalSyntheticLambda10;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 9

    .line 116
    new-instance v0, Lorg/telegram/ui/UserInfoActivity$1;

    sget v2, Lorg/telegram/messenger/R$string;->EditProfileFirstName:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v6, -0x1

    iget-object v7, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/UserInfoActivity$1;-><init>(Lorg/telegram/ui/UserInfoActivity;Landroid/content/Context;Ljava/lang/String;ZZILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/UserInfoActivity;->firstNameEdit:Lorg/telegram/ui/Cells/EditTextCell;

    const/4 v8, 0x1

    .line 123
    invoke-virtual {v0, v8}, Lorg/telegram/ui/Cells/EditTextCell;->setDivider(Z)V

    .line 124
    iget-object v0, p0, Lorg/telegram/ui/UserInfoActivity;->firstNameEdit:Lorg/telegram/ui/Cells/EditTextCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/EditTextCell;->hideKeyboardOnEnter()V

    .line 125
    new-instance v0, Lorg/telegram/ui/UserInfoActivity$2;

    sget v2, Lorg/telegram/messenger/R$string;->EditProfileLastName:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v7, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/UserInfoActivity$2;-><init>(Lorg/telegram/ui/UserInfoActivity;Landroid/content/Context;Ljava/lang/String;ZZILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/UserInfoActivity;->lastNameEdit:Lorg/telegram/ui/Cells/EditTextCell;

    .line 132
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/EditTextCell;->hideKeyboardOnEnter()V

    .line 133
    new-instance v0, Lorg/telegram/ui/UserInfoActivity$3;

    sget v2, Lorg/telegram/messenger/R$string;->EditProfileBioHint:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessagesController;->getAboutLimit()I

    move-result v6

    iget-object v7, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v4, 0x1

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/UserInfoActivity$3;-><init>(Lorg/telegram/ui/UserInfoActivity;Landroid/content/Context;Ljava/lang/String;ZZILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/UserInfoActivity;->bioEdit:Lorg/telegram/ui/Cells/EditTextCell;

    .line 140
    invoke-virtual {v0, v8}, Lorg/telegram/ui/Cells/EditTextCell;->setShowLimitWhenEmpty(Z)V

    .line 142
    sget v0, Lorg/telegram/messenger/R$string;->EditProfileBioInfo:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/UserInfoActivity$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/UserInfoActivity$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/UserInfoActivity;)V

    invoke-static {v0, v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/UserInfoActivity;->bioInfo:Ljava/lang/CharSequence;

    .line 146
    invoke-super/range {p0 .. p1}, Lorg/telegram/ui/Components/UniversalFragment;->createView(Landroid/content/Context;)Landroid/view/View;

    .line 147
    iget-object v0, p0, Lorg/telegram/ui/Components/UniversalFragment;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iput-object v0, p0, Lorg/telegram/ui/UserInfoActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    .line 148
    invoke-virtual {v0}, Lorg/telegram/ui/Components/UniversalRecyclerView;->setSections()V

    .line 149
    iget-object v0, p0, Lorg/telegram/ui/UserInfoActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 150
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v3, p0, Lorg/telegram/ui/UserInfoActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setAdaptiveBackground(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 152
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v3, Lorg/telegram/ui/UserInfoActivity$4;

    invoke-direct {v3, p0}, Lorg/telegram/ui/UserInfoActivity$4;-><init>(Lorg/telegram/ui/UserInfoActivity;)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 164
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/R$drawable;->ic_ab_done:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 165
    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultIcon:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v5, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 166
    new-instance v3, Lorg/telegram/ui/Components/CrossfadeDrawable;

    new-instance v5, Lorg/telegram/ui/Components/CircularProgressDrawable;

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-direct {v5, v4}, Lorg/telegram/ui/Components/CircularProgressDrawable;-><init>(I)V

    invoke-direct {v3, v0, v5}, Lorg/telegram/ui/Components/CrossfadeDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v3, p0, Lorg/telegram/ui/UserInfoActivity;->doneButtonDrawable:Lorg/telegram/ui/Components/CrossfadeDrawable;

    .line 167
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/UserInfoActivity;->doneButtonDrawable:Lorg/telegram/ui/Components/CrossfadeDrawable;

    const/high16 v4, 0x42600000    # 56.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sget v5, Lorg/telegram/messenger/R$string;->Done:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v8, v3, v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(ILandroid/graphics/drawable/Drawable;ILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/UserInfoActivity;->doneButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 168
    invoke-direct {p0, v2}, Lorg/telegram/ui/UserInfoActivity;->checkDone(Z)V

    .line 170
    invoke-direct {p0}, Lorg/telegram/ui/UserInfoActivity;->setValue()V

    .line 172
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object v0
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 1

    .line 450
    sget p2, Lorg/telegram/messenger/NotificationCenter;->userInfoDidLoad:I

    if-ne p1, p2, :cond_0

    .line 451
    invoke-direct {p0}, Lorg/telegram/ui/UserInfoActivity;->setValue()V

    return-void

    .line 452
    :cond_0
    sget p2, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    const/4 v0, 0x1

    if-ne p1, p2, :cond_1

    .line 453
    iget-object p1, p0, Lorg/telegram/ui/UserInfoActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    if-eqz p1, :cond_4

    .line 454
    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    return-void

    .line 456
    :cond_1
    sget p2, Lorg/telegram/messenger/NotificationCenter;->privacyRulesUpdated:I

    if-eq p1, p2, :cond_2

    sget p2, Lorg/telegram/messenger/NotificationCenter;->nowPlayingUpdated:I

    if-ne p1, p2, :cond_4

    .line 457
    :cond_2
    sget p2, Lorg/telegram/messenger/NotificationCenter;->nowPlayingUpdated:I

    if-ne p1, p2, :cond_3

    const/4 p1, 0x0

    .line 458
    aget-object p1, p3, p1

    instance-of p2, p1, Lcom/exteragram/messenger/api/model/NowPlayingServiceType;

    if-eqz p2, :cond_3

    .line 459
    check-cast p1, Lcom/exteragram/messenger/api/model/NowPlayingServiceType;

    iput-object p1, p0, Lorg/telegram/ui/UserInfoActivity;->nowPlayingService:Lcom/exteragram/messenger/api/model/NowPlayingServiceType;

    .line 462
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/UserInfoActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    if-eqz p1, :cond_4

    .line 463
    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    :cond_4
    return-void
.end method

.method protected fillItems(Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .locals 8

    const/4 p2, -0x1

    .line 228
    iput p2, p0, Lorg/telegram/ui/UserInfoActivity;->addAccountRow:I

    .line 229
    iput p2, p0, Lorg/telegram/ui/UserInfoActivity;->numberRow:I

    .line 230
    invoke-direct {p0}, Lorg/telegram/ui/UserInfoActivity;->updateAccounts()V

    .line 232
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    .line 233
    sget v1, Lorg/telegram/messenger/R$string;->EditAccountInfoHeader:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/Components/UItem;->asHeader(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 235
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, p0, Lorg/telegram/ui/UserInfoActivity;->numberRow:I

    .line 236
    sget v2, Lorg/telegram/messenger/R$drawable;->menu_phone:I

    invoke-static {}, Lorg/telegram/PhoneFormat/PhoneFormat;->getInstance()Lorg/telegram/PhoneFormat/PhoneFormat;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/PhoneFormat/PhoneFormat;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$string;->TapToChangePhone:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x6

    invoke-static {v5, v2, v3, v4, v1}, Lorg/telegram/ui/UserInfoActivity$InfoCell$Factory;->of(IILjava/lang/CharSequence;Ljava/lang/CharSequence;I)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, p0, Lorg/telegram/ui/UserInfoActivity;->usernameRow:I

    .line 239
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x7

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 240
    sget v2, Lorg/telegram/messenger/R$drawable;->menu_username_change:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "@"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v5, Lorg/telegram/messenger/R$string;->Username:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v2, v0, v5, v1}, Lorg/telegram/ui/UserInfoActivity$InfoCell$Factory;->of(IILjava/lang/CharSequence;Ljava/lang/CharSequence;I)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 242
    :cond_1
    sget v0, Lorg/telegram/messenger/R$drawable;->menu_username_set:I

    sget v2, Lorg/telegram/messenger/R$string;->AddUsername:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v0, v2, v4, v1}, Lorg/telegram/ui/UserInfoActivity$InfoCell$Factory;->of(IILjava/lang/CharSequence;Ljava/lang/CharSequence;I)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/UItem;->accent()Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/UserInfoActivity;->birthdayRow:I

    .line 245
    iget-object v0, p0, Lorg/telegram/ui/UserInfoActivity;->birthday:Lorg/telegram/tgnet/tl/TL_account$TL_birthday;

    const/16 v2, 0x8

    if-eqz v0, :cond_2

    .line 246
    sget v3, Lorg/telegram/messenger/R$drawable;->menu_birthday:I

    invoke-static {v0}, Lorg/telegram/ui/UserInfoActivity;->birthdayString(Lorg/telegram/tgnet/tl/TL_account$TL_birthday;)Ljava/lang/String;

    move-result-object v0

    sget v5, Lorg/telegram/messenger/R$string;->ContactBirthday:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v0, v5, v1}, Lorg/telegram/ui/UserInfoActivity$InfoCell$Factory;->of(IILjava/lang/CharSequence;Ljava/lang/CharSequence;I)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 248
    :cond_2
    sget v0, Lorg/telegram/messenger/R$drawable;->menu_birthday:I

    sget v3, Lorg/telegram/messenger/R$string;->AddBirthday:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3, v4, v1}, Lorg/telegram/ui/UserInfoActivity$InfoCell$Factory;->of(IILjava/lang/CharSequence;Ljava/lang/CharSequence;I)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/UItem;->accent()Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    :goto_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContactsController()Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/ContactsController;->getLoadingPrivacyInfo(I)Z

    move-result v0

    const/4 v3, 0x1

    if-nez v0, :cond_7

    .line 251
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContactsController()Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/ContactsController;->getPrivacyRules(I)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 252
    iget-object v5, p0, Lorg/telegram/ui/UserInfoActivity;->birthdayInfo:Ljava/lang/CharSequence;

    if-nez v5, :cond_7

    .line 253
    sget v5, Lorg/telegram/messenger/R$string;->EditProfileBirthdayInfoContacts:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 254
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_6

    move v6, v1

    .line 255
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_6

    .line 256
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Lorg/telegram/tgnet/TLRPC$TL_privacyValueAllowContacts;

    if-eqz v7, :cond_3

    .line 257
    sget v0, Lorg/telegram/messenger/R$string;->EditProfileBirthdayInfoContacts:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 260
    :cond_3
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Lorg/telegram/tgnet/TLRPC$TL_privacyValueAllowAll;

    if-nez v7, :cond_4

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Lorg/telegram/tgnet/TLRPC$TL_privacyValueDisallowAll;

    if-eqz v7, :cond_5

    .line 261
    :cond_4
    sget v5, Lorg/telegram/messenger/R$string;->EditProfileBirthdayInfo:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 265
    :cond_6
    :goto_3
    new-instance v0, Lorg/telegram/ui/UserInfoActivity$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lorg/telegram/ui/UserInfoActivity$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/UserInfoActivity;)V

    invoke-static {v5, v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-static {v0, v3}, Lorg/telegram/messenger/AndroidUtilities;->replaceArrows(Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/UserInfoActivity;->birthdayInfo:Ljava/lang/CharSequence;

    .line 270
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/UserInfoActivity;->birthdayInfo:Ljava/lang/CharSequence;

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    sget v0, Lorg/telegram/messenger/R$string;->EditProfileName:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem;->asHeader(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/UserInfoActivity;->firstNameRow:I

    .line 274
    iget-object v0, p0, Lorg/telegram/ui/UserInfoActivity;->firstNameEdit:Lorg/telegram/ui/Cells/EditTextCell;

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem;->asCustom(Landroid/view/View;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/UserInfoActivity;->lastNameRow:I

    .line 276
    iget-object v0, p0, Lorg/telegram/ui/UserInfoActivity;->lastNameEdit:Lorg/telegram/ui/Cells/EditTextCell;

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem;->asCustom(Landroid/view/View;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    invoke-static {p2, v4}, Lorg/telegram/ui/Components/UItem;->asShadow(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    sget-object p2, Lcom/exteragram/messenger/badges/BadgesController;->INSTANCE:Lcom/exteragram/messenger/badges/BadgesController;

    invoke-virtual {p2}, Lcom/exteragram/messenger/badges/BadgesController;->hasBadge()Z

    move-result p2

    if-eqz p2, :cond_8

    iget-object p2, p0, Lorg/telegram/ui/UserInfoActivity;->nowPlayingService:Lcom/exteragram/messenger/api/model/NowPlayingServiceType;

    if-eqz p2, :cond_8

    .line 279
    sget p2, Lorg/telegram/messenger/R$string;->NowPlaying:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asHeader(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    sget p2, Lorg/telegram/messenger/R$string;->ScrobblingService:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/UserInfoActivity;->nowPlayingService:Lcom/exteragram/messenger/api/model/NowPlayingServiceType;

    invoke-virtual {v0}, Lcom/exteragram/messenger/api/model/NowPlayingServiceType;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, p2, v0}, Lorg/telegram/ui/Components/UItem;->asButton(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    invoke-static {v4}, Lorg/telegram/ui/Components/UItem;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    :cond_8
    sget p2, Lorg/telegram/messenger/R$string;->EditProfileBio:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asHeader(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    iput p2, p0, Lorg/telegram/ui/UserInfoActivity;->bioRow:I

    .line 285
    iget-object p2, p0, Lorg/telegram/ui/UserInfoActivity;->bioEdit:Lorg/telegram/ui/Cells/EditTextCell;

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asCustom(Landroid/view/View;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    iget-object p2, p0, Lorg/telegram/ui/UserInfoActivity;->bioInfo:Ljava/lang/CharSequence;

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p2, -0x2

    .line 289
    invoke-static {p2, v4}, Lorg/telegram/ui/Components/UItem;->asShadow(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    iput p2, p0, Lorg/telegram/ui/UserInfoActivity;->channelRow:I

    .line 291
    iget-object p2, p0, Lorg/telegram/ui/UserInfoActivity;->channel:Lorg/telegram/tgnet/TLRPC$Chat;

    const/4 v0, 0x3

    if-nez p2, :cond_9

    .line 292
    sget p2, Lorg/telegram/messenger/R$drawable;->msg_channel_create:I

    sget v2, Lorg/telegram/messenger/R$string;->EditProfileChannelTitleAdd:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p2, v2, v4, v1}, Lorg/telegram/ui/UserInfoActivity$InfoCell$Factory;->of(IILjava/lang/CharSequence;Ljava/lang/CharSequence;I)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/UItem;->accent()Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 294
    :cond_9
    sget p2, Lorg/telegram/messenger/R$string;->EditProfileChannelTitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object v2, p0, Lorg/telegram/ui/UserInfoActivity;->channel:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-static {v0, p2, v2}, Lorg/telegram/ui/Components/UItem;->asButton(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    :goto_4
    iget-boolean p2, p0, Lorg/telegram/ui/UserInfoActivity;->hadLocation:Z

    if-eqz p2, :cond_a

    .line 302
    sget p2, Lorg/telegram/messenger/R$drawable;->menu_premium_clock:I

    sget v0, Lorg/telegram/messenger/R$string;->EditProfileHours:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x4

    invoke-static {v2, p2, v0}, Lorg/telegram/ui/Components/UItem;->asButton(IILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    :cond_a
    iget-boolean p2, p0, Lorg/telegram/ui/UserInfoActivity;->hadLocation:Z

    if-eqz p2, :cond_b

    .line 305
    sget p2, Lorg/telegram/messenger/R$drawable;->msg_map:I

    sget v0, Lorg/telegram/messenger/R$string;->EditProfileLocation:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x5

    invoke-static {v2, p2, v0}, Lorg/telegram/ui/Components/UItem;->asButton(IILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    const/4 p2, -0x3

    .line 307
    invoke-static {p2, v4}, Lorg/telegram/ui/Components/UItem;->asShadow(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getActivatedAccountsCount()I

    move-result p2

    const/16 v0, 0x10

    if-ge p2, v0, :cond_c

    move p2, v3

    goto :goto_5

    :cond_c
    move p2, v1

    :goto_5
    if-eqz p2, :cond_d

    .line 310
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/UserInfoActivity;->addAccountRow:I

    .line 311
    sget v0, Lorg/telegram/messenger/R$drawable;->outline_add_account:I

    sget v2, Lorg/telegram/messenger/R$string;->AddAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x9

    invoke-static {v5, v0, v2, v4, v1}, Lorg/telegram/ui/UserInfoActivity$InfoCell$Factory;->of(IILjava/lang/CharSequence;Ljava/lang/CharSequence;I)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/UItem;->accent()Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    :cond_d
    iget-object v0, p0, Lorg/telegram/ui/UserInfoActivity;->accountNumbers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    if-nez p2, :cond_e

    .line 315
    sget p2, Lorg/telegram/messenger/R$string;->SettingsAccounts:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asHeader(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    move p2, v1

    .line 317
    :goto_6
    iget-object v0, p0, Lorg/telegram/ui/UserInfoActivity;->accountNumbers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_f

    .line 318
    iget-object v0, p0, Lorg/telegram/ui/UserInfoActivity;->accountNumbers:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p2, v0}, Lorg/telegram/ui/SettingsActivity$AccountCell$Factory;->of(II)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_6

    .line 320
    :cond_f
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->hasPremiumOnAccounts()Z

    move-result p2

    if-nez p2, :cond_11

    .line 321
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getMaxAccountCount()I

    move-result p2

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getActivatedAccountsCount()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    if-lez p2, :cond_10

    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AddAccountInfo1"

    invoke-static {v2, p2}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_7

    :cond_10
    const-string p2, ""

    :goto_7
    const-string v0, "AddAccountInfo2"

    .line 325
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getMaxAccountCount()I

    move-result v2

    invoke-static {v0, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/UserInfoActivity$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0}, Lorg/telegram/ui/UserInfoActivity$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/UserInfoActivity;)V

    invoke-static {v0, v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/CharSequence;

    aput-object p2, v2, v1

    aput-object v0, v2, v3

    .line 323
    invoke-static {v2}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    .line 322
    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 331
    :cond_11
    invoke-static {v4}, Lorg/telegram/ui/Components/UItem;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    :cond_12
    :goto_8
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    iput p2, p0, Lorg/telegram/ui/UserInfoActivity;->logoutRow:I

    .line 335
    sget p2, Lorg/telegram/messenger/R$drawable;->msg_leave:I

    sget v0, Lorg/telegram/messenger/R$string;->LogOut:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v1, p2, v0}, Lorg/telegram/ui/Components/UItem;->asButton(IILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/UItem;->red()Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p2, -0x4

    .line 336
    invoke-static {p2, v4}, Lorg/telegram/ui/Components/UItem;->asShadow(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 83
    sget v0, Lorg/telegram/messenger/R$string;->EditAccountInfo2:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasChanges()Z
    .locals 4

    .line 549
    iget-object v0, p0, Lorg/telegram/ui/UserInfoActivity;->currentFirstName:Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_0

    move-object v0, v1

    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/UserInfoActivity;->firstNameEdit:Lorg/telegram/ui/Cells/EditTextCell;

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/EditTextCell;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 550
    iget-object v0, p0, Lorg/telegram/ui/UserInfoActivity;->currentLastName:Ljava/lang/String;

    if-nez v0, :cond_1

    move-object v0, v1

    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/UserInfoActivity;->lastNameEdit:Lorg/telegram/ui/Cells/EditTextCell;

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/EditTextCell;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 551
    iget-object v0, p0, Lorg/telegram/ui/UserInfoActivity;->currentBio:Ljava/lang/String;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move-object v1, v0

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/UserInfoActivity;->bioEdit:Lorg/telegram/ui/Cells/EditTextCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/EditTextCell;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/UserInfoActivity;->currentBirthday:Lorg/telegram/tgnet/tl/TL_account$TL_birthday;

    iget-object v1, p0, Lorg/telegram/ui/UserInfoActivity;->birthday:Lorg/telegram/tgnet/tl/TL_account$TL_birthday;

    .line 552
    invoke-static {v0, v1}, Lorg/telegram/ui/UserInfoActivity;->birthdaysEqual(Lorg/telegram/tgnet/tl/TL_account$TL_birthday;Lorg/telegram/tgnet/tl/TL_account$TL_birthday;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-wide v0, p0, Lorg/telegram/ui/UserInfoActivity;->currentChannel:J

    .line 553
    iget-object v2, p0, Lorg/telegram/ui/UserInfoActivity;->channel:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v2, :cond_3

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    goto :goto_1

    :cond_3
    const-wide/16 v2, 0x0

    :goto_1
    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    return v0

    :cond_5
    :goto_2
    const/4 v0, 0x1

    return v0
.end method

.method public isSupportEdgeToEdge()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onClick(Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)V
    .locals 11

    .line 359
    iget p2, p1, Lorg/telegram/ui/Components/UItem;->id:I

    const/16 p3, 0x9

    const/4 p4, 0x0

    const/4 v0, 0x0

    if-ne p2, p3, :cond_4

    const/16 p1, 0xf

    :goto_0
    if-ltz p1, :cond_1

    .line 363
    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/UserConfig;->isClientActivated()Z

    move-result p2

    if-nez p2, :cond_0

    add-int/lit8 v0, v0, 0x1

    if-nez p4, :cond_0

    .line 366
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    move-object p4, p2

    :cond_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 370
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->hasPremiumOnAccounts()Z

    move-result p1

    if-nez p1, :cond_2

    add-int/lit8 v0, v0, -0x8

    :cond_2
    if-lez v0, :cond_3

    if-eqz p4, :cond_3

    .line 374
    new-instance p1, Lorg/telegram/ui/LoginActivity;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/LoginActivity;-><init>(I)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    .line 375
    :cond_3
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->hasPremiumOnAccounts()Z

    move-result p1

    if-nez p1, :cond_10

    .line 376
    new-instance v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v4, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    const/4 v5, 0x0

    const/4 v3, 0x7

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void

    .line 378
    :cond_4
    const-class p2, Lorg/telegram/ui/SettingsActivity$AccountCell$Factory;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/UItem;->instanceOf(Ljava/lang/Class;)Z

    move-result p2

    const/4 p3, 0x1

    if-eqz p2, :cond_5

    .line 379
    iget p1, p1, Lorg/telegram/ui/Components/UItem;->intValue:I

    .line 380
    sget-object p2, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    if-eqz p2, :cond_10

    .line 381
    invoke-virtual {p2, p1, p3}, Lorg/telegram/ui/LaunchActivity;->switchToAccount(IZ)V

    return-void

    .line 383
    :cond_5
    iget p1, p1, Lorg/telegram/ui/Components/UItem;->id:I

    if-eq p1, p3, :cond_11

    const/16 p2, 0x8

    if-ne p1, p2, :cond_6

    goto/16 :goto_2

    :cond_6
    const/4 p2, 0x2

    if-ne p1, p2, :cond_8

    .line 400
    iput-object p4, p0, Lorg/telegram/ui/UserInfoActivity;->birthday:Lorg/telegram/tgnet/tl/TL_account$TL_birthday;

    .line 401
    iget-object p1, p0, Lorg/telegram/ui/UserInfoActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    if-eqz p1, :cond_7

    .line 402
    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    .line 404
    :cond_7
    invoke-direct {p0, p3}, Lorg/telegram/ui/UserInfoActivity;->checkDone(Z)V

    return-void

    :cond_8
    const/4 p2, 0x3

    if-ne p1, p2, :cond_a

    .line 406
    new-instance p1, Lorg/telegram/ui/UserInfoActivity$ChooseChannelFragment;

    iget-object p2, p0, Lorg/telegram/ui/UserInfoActivity;->channels:Lorg/telegram/ui/UserInfoActivity$AdminedChannelsFetcher;

    .line 408
    iget-object p3, p0, Lorg/telegram/ui/UserInfoActivity;->channel:Lorg/telegram/tgnet/TLRPC$Chat;

    if-nez p3, :cond_9

    const-wide/16 p3, 0x0

    goto :goto_1

    :cond_9
    iget-wide p3, p3, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    :goto_1
    new-instance v0, Lorg/telegram/ui/UserInfoActivity$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lorg/telegram/ui/UserInfoActivity$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/UserInfoActivity;)V

    invoke-direct {p1, p2, p3, p4, v0}, Lorg/telegram/ui/UserInfoActivity$ChooseChannelFragment;-><init>(Lorg/telegram/ui/UserInfoActivity$AdminedChannelsFetcher;JLorg/telegram/messenger/Utilities$Callback;)V

    .line 406
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    :cond_a
    const/4 p3, 0x5

    if-ne p1, p3, :cond_b

    .line 429
    new-instance p1, Lorg/telegram/ui/Business/LocationActivity;

    invoke-direct {p1}, Lorg/telegram/ui/Business/LocationActivity;-><init>()V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    :cond_b
    const/16 p3, 0xb

    if-ne p1, p3, :cond_c

    .line 431
    new-instance p1, Lcom/exteragram/messenger/nowplaying/ui/SetupNowPlayingActivity;

    invoke-direct {p1}, Lcom/exteragram/messenger/nowplaying/ui/SetupNowPlayingActivity;-><init>()V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    :cond_c
    const/4 p3, 0x4

    if-ne p1, p3, :cond_d

    .line 433
    new-instance p1, Lorg/telegram/ui/Business/OpeningHoursActivity;

    invoke-direct {p1}, Lorg/telegram/ui/Business/OpeningHoursActivity;-><init>()V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    :cond_d
    const/4 p3, 0x6

    if-ne p1, p3, :cond_e

    .line 435
    new-instance p1, Lorg/telegram/ui/ActionIntroActivity;

    invoke-direct {p1, p2}, Lorg/telegram/ui/ActionIntroActivity;-><init>(I)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    :cond_e
    const/4 p2, 0x7

    if-ne p1, p2, :cond_f

    .line 437
    new-instance p1, Lorg/telegram/ui/ChangeUsernameActivity;

    invoke-direct {p1}, Lorg/telegram/ui/ChangeUsernameActivity;-><init>()V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    :cond_f
    const/16 p2, 0xa

    if-ne p1, p2, :cond_10

    .line 439
    new-instance p1, Lorg/telegram/ui/LogoutActivity;

    invoke-direct {p1}, Lorg/telegram/ui/LogoutActivity;-><init>()V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_10
    return-void

    .line 385
    :cond_11
    :goto_2
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    sget p1, Lorg/telegram/messenger/R$string;->EditProfileBirthdayTitle:I

    .line 386
    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget p1, Lorg/telegram/messenger/R$string;->EditProfileBirthdayButton:I

    .line 387
    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/UserInfoActivity;->birthday:Lorg/telegram/tgnet/tl/TL_account$TL_birthday;

    new-instance v6, Lorg/telegram/ui/UserInfoActivity$$ExternalSyntheticLambda5;

    invoke-direct {v6, p0}, Lorg/telegram/ui/UserInfoActivity$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/UserInfoActivity;)V

    iget-object p1, p0, Lorg/telegram/ui/UserInfoActivity;->birthday:Lorg/telegram/tgnet/tl/TL_account$TL_birthday;

    if-eqz p1, :cond_12

    move v9, p3

    goto :goto_3

    :cond_12
    move v9, v0

    .line 397
    :goto_3
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v10

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 384
    invoke-static/range {v2 .. v10}, Lorg/telegram/ui/Components/AlertsCreator;->createBirthdayPickerDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/tl/TL_account$TL_birthday;Lorg/telegram/messenger/Utilities$Callback;Ljava/lang/Runnable;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    move-result-object p1

    .line 398
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->create()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object p1

    .line 384
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method public onFragmentCreate()Z
    .locals 2

    .line 94
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->userInfoDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 95
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->privacyRulesUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 96
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 97
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->nowPlayingUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 98
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContactsController()Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ContactsController;->loadPrivacySettings()V

    .line 99
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 2

    .line 104
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->userInfoDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 105
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->privacyRulesUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 106
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 107
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->nowPlayingUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 108
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 109
    iget-boolean v0, p0, Lorg/telegram/ui/UserInfoActivity;->wasSaved:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 110
    invoke-direct {p0, v0}, Lorg/telegram/ui/UserInfoActivity;->processDone(Z)V

    :cond_0
    return-void
.end method

.method public onInsets(IIII)V
    .locals 0

    .line 995
    iget-object p1, p0, Lorg/telegram/ui/UserInfoActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2, p2, p4}, Landroid/view/View;->setPadding(IIII)V

    .line 996
    iget-object p1, p0, Lorg/telegram/ui/UserInfoActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    return-void
.end method

.method protected onLongClick(Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onResume()V
    .locals 2

    .line 470
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 471
    iget-object v0, p0, Lorg/telegram/ui/UserInfoActivity;->channels:Lorg/telegram/ui/UserInfoActivity$AdminedChannelsFetcher;

    invoke-virtual {v0}, Lorg/telegram/ui/UserInfoActivity$AdminedChannelsFetcher;->invalidate()V

    .line 472
    iget-object v0, p0, Lorg/telegram/ui/UserInfoActivity;->channels:Lorg/telegram/ui/UserInfoActivity$AdminedChannelsFetcher;

    new-instance v1, Lorg/telegram/ui/UserInfoActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/UserInfoActivity$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/UserInfoActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/UserInfoActivity$AdminedChannelsFetcher;->subscribe(Ljava/lang/Runnable;)V

    .line 477
    iget-object v0, p0, Lorg/telegram/ui/UserInfoActivity;->channels:Lorg/telegram/ui/UserInfoActivity$AdminedChannelsFetcher;

    invoke-virtual {v0}, Lorg/telegram/ui/UserInfoActivity$AdminedChannelsFetcher;->fetch()V

    const/4 v0, 0x0

    .line 478
    iput-object v0, p0, Lorg/telegram/ui/UserInfoActivity;->birthdayInfo:Ljava/lang/CharSequence;

    .line 479
    iget-object v0, p0, Lorg/telegram/ui/UserInfoActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, v0, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    :cond_0
    return-void
.end method
