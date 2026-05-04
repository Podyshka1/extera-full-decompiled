.class public Lorg/telegram/ui/ProfileActivity$SearchAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ProfileActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SearchAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;
    }
.end annotation


# instance fields
.field private final currentAccount:I

.field private faqSearchArray:Ljava/util/ArrayList;

.field private faqSearchResults:Ljava/util/ArrayList;

.field public faqWebPage:Lorg/telegram/tgnet/TLRPC$WebPage;

.field private final fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private lastSearchString:Ljava/lang/String;

.field private loadingFaqPage:Z

.field private final mContext:Landroid/content/Context;

.field private recentSearches:Ljava/util/ArrayList;

.field private resultNames:Ljava/util/ArrayList;

.field private searchArray:[Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

.field private searchResults:Ljava/util/ArrayList;

.field private searchRunnable:Ljava/lang/Runnable;

.field private searchWas:Z


# direct methods
.method public static synthetic $r8$lambda$-dYuA7KvyXsV9OsoRRRisvRpKas(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 2

    .line 15091
    new-instance v0, Lorg/telegram/ui/ThemeActivity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/telegram/ui/ThemeActivity;-><init>(I)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$-s7ZYyhqDpaaRgAZ_PN-QSuIfcc(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 1

    .line 15015
    new-instance v0, Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-direct {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;-><init>()V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$2N3c2u8o-88M_Z9QGHs5nUgUMPw(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 1

    .line 15022
    new-instance v0, Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-direct {v0}, Lorg/telegram/ui/PrivacySettingsActivity;-><init>()V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$2RHvF6suxWIVA5syFzWNj5uEAYw(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 1

    .line 15083
    new-instance v0, Lorg/telegram/ui/DataSettingsActivity;

    invoke-direct {v0}, Lorg/telegram/ui/DataSettingsActivity;-><init>()V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$3gREO3TbnQ7Mw-eD-YvgV7lCkdo(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 2

    .line 15113
    new-instance v0, Lorg/telegram/ui/ArchivedStickersActivity;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ArchivedStickersActivity;-><init>(I)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$3sMch1fGesmIWpyUiKMGr9wacLU(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 2

    .line 15069
    new-instance v0, Lorg/telegram/ui/DataAutoDownloadActivity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/telegram/ui/DataAutoDownloadActivity;-><init>(I)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$42rtanWfW-upVUCE872Oed_VQYw(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 3

    .line 15133
    new-instance v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;IZ)V

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->setForceAbout()Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method public static synthetic $r8$lambda$4oGkeXNN7HSo-l2H1e1Z8cUQiaA(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 2

    .line 15089
    new-instance v0, Lorg/telegram/ui/WallpapersListActivity;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/telegram/ui/WallpapersListActivity;-><init>(I)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$5LKrELCVwU9XvDOLG_1KBIXWL5k(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 1

    .line 15031
    new-instance v0, Lorg/telegram/ui/PrivacyUsersActivity;

    invoke-direct {v0}, Lorg/telegram/ui/PrivacyUsersActivity;-><init>()V

    invoke-virtual {v0}, Lorg/telegram/ui/PrivacyUsersActivity;->loadBlocked()Lorg/telegram/ui/PrivacyUsersActivity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$5yVG8bpibtpjr5pLOtAxZ4IIyl4(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 1

    .line 15029
    invoke-static {}, Lorg/telegram/ui/PasscodeActivity;->determineOpenFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$7UAmgm8amMs9XMTh2Uajv5O7_zo(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 1

    .line 15072
    new-instance v0, Lorg/telegram/ui/DataSettingsActivity;

    invoke-direct {v0}, Lorg/telegram/ui/DataSettingsActivity;-><init>()V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$7hVejEsGR6-hWG1RjYhmmsZTX3Y(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 2

    .line 15050
    new-instance v0, Lorg/telegram/ui/SessionsActivity;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/telegram/ui/SessionsActivity;-><init>(I)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$8K6NBwAR6v-nZfC6igcOTctpCYg(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 2

    .line 15094
    new-instance v0, Lorg/telegram/ui/ThemeActivity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/telegram/ui/ThemeActivity;-><init>(I)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$8Ne3CVXPYUqiM89iX6PcoOA5t7s(Lorg/telegram/ui/ProfileActivity$SearchAdapter;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$updateSearchArray$0(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$9FI1Eb1_k3NxEu_0546WM7zfXZw(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 1

    .line 15063
    new-instance v0, Lorg/telegram/ui/CacheControlActivity;

    invoke-direct {v0}, Lorg/telegram/ui/CacheControlActivity;-><init>()V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$9OJjkM9Ke5dqrNjhuaZvzyvraM8(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 2

    .line 15146
    new-instance v0, Lorg/telegram/ui/LiteModeSettingsActivity;

    invoke-direct {v0}, Lorg/telegram/ui/LiteModeSettingsActivity;-><init>()V

    .line 15147
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    const/4 p0, 0x3

    const/4 v1, 0x1

    .line 15148
    invoke-virtual {v0, p0, v1}, Lorg/telegram/ui/LiteModeSettingsActivity;->setExpanded(IZ)V

    .line 15149
    invoke-virtual {v0, v1}, Lorg/telegram/ui/LiteModeSettingsActivity;->scrollToFlags(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$A13PYz1RlL6ChHm3kJUSQFneIk0(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 2

    .line 15057
    new-instance v0, Lorg/telegram/ui/SessionsActivity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/telegram/ui/SessionsActivity;-><init>(I)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$AZHjtXStLjnbfIJ-c7RgmFkgGtc(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 3

    .line 15128
    new-instance v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;IZ)V

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->setForceAbout()Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method public static synthetic $r8$lambda$A_fBPlaxe6k3nJNVUMi0lYAyv9s(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 2

    .line 15032
    new-instance v0, Lorg/telegram/ui/SessionsActivity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/telegram/ui/SessionsActivity;-><init>(I)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$B1VPGLtxqiNBfUZqa-sWmw_ZSmw(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 3

    .line 15116
    new-instance v0, Lorg/telegram/ui/StickersActivity;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/StickersActivity;-><init>(ILjava/util/ArrayList;)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$BpLPSWlfBEzFYrpZ1b4FhvCJdxQ(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 1

    .line 15062
    new-instance v0, Lorg/telegram/ui/DataSettingsActivity;

    invoke-direct {v0}, Lorg/telegram/ui/DataSettingsActivity;-><init>()V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$BvXoCgW4_5gclrKG_jEqUH77Sj8(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 1

    .line 15141
    new-instance v0, Lorg/telegram/ui/LiteModeSettingsActivity;

    invoke-direct {v0}, Lorg/telegram/ui/LiteModeSettingsActivity;-><init>()V

    .line 15142
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    const/4 p0, 0x3

    .line 15143
    invoke-virtual {v0, p0}, Lorg/telegram/ui/LiteModeSettingsActivity;->scrollToFlags(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$CJ-XbyPvTp__1jrav5Pc2q-ivVc(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 1

    .line 15008
    new-instance v0, Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-direct {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;-><init>()V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$CPZ1pu8qCWTDfvTkgztHrd07ysY(I)[Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;
    .locals 0

    .line 15248
    new-array p0, p0, [Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    return-object p0
.end method

.method public static synthetic $r8$lambda$DmUi33h0QCM19d2lhG92_eOTogc(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 1

    .line 15047
    new-instance v0, Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-direct {v0}, Lorg/telegram/ui/PrivacySettingsActivity;-><init>()V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$F8FmiiVE4KKCQwx1STHuA7wFNrk(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 1

    .line 15065
    new-instance v0, Lorg/telegram/ui/CacheControlActivity;

    invoke-direct {v0}, Lorg/telegram/ui/CacheControlActivity;-><init>()V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$FNe4Iyvt4Nn7jemtxZdvgIXF0Lo(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 1

    .line 15119
    new-instance v0, Lorg/telegram/ui/ReactionsDoubleTapManageActivity;

    invoke-direct {v0}, Lorg/telegram/ui/ReactionsDoubleTapManageActivity;-><init>()V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$FP4DjDlKgAGGfrTb45jwvJ5QMbg(Lorg/telegram/ui/ProfileActivity$SearchAdapter;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$search$143(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FqEAKi8iKrpRQ5Nun4z2eWsQcS4(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 3

    .line 15118
    new-instance v0, Lorg/telegram/ui/StickersActivity;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/StickersActivity;-><init>(ILjava/util/ArrayList;)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$GFmgN2J9S3HcxCSeWfHTbocpvsc(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 2

    .line 15087
    new-instance v0, Lorg/telegram/ui/ThemeActivity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/telegram/ui/ThemeActivity;-><init>(I)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$GUy1QiQqLwodrRGz6pvafEA4zyI(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 2

    .line 15102
    new-instance v0, Lorg/telegram/ui/ThemeActivity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/telegram/ui/ThemeActivity;-><init>(I)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$GgZzLK2k9NUXNsUCJuPl_9wHxTE(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 1

    .line 15226
    new-instance v0, Lorg/telegram/ui/LiteModeSettingsActivity;

    invoke-direct {v0}, Lorg/telegram/ui/LiteModeSettingsActivity;-><init>()V

    .line 15227
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    const/16 p0, 0x800

    .line 15228
    invoke-virtual {v0, p0}, Lorg/telegram/ui/LiteModeSettingsActivity;->scrollToFlags(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$I1DU-20U0aL-MObaKhlUQUukTKg(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 3

    .line 15132
    new-instance v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;IZ)V

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->setForceAbout()Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method public static synthetic $r8$lambda$IYIQuA5S2vP13rqkvBh3bXLp7qM(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 1

    .line 15012
    new-instance v0, Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-direct {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;-><init>()V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$J4WHSCk0Vq70NYuIYndBGWcK-Yg(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 2

    .line 15059
    new-instance v0, Lorg/telegram/ui/SessionsActivity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/telegram/ui/SessionsActivity;-><init>(I)V

    invoke-virtual {v0}, Lorg/telegram/ui/SessionsActivity;->setHighlightLinkDesktopDevice()Lorg/telegram/ui/SessionsActivity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$JPvMdJfPJJgiwwfNZ_Hl41aKxIs(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 3

    .line 15137
    new-instance v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;IZ)V

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->setForceAbout()Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method public static synthetic $r8$lambda$K8s74-chnLZ6p-BK3BiF21z6NQE(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 3

    .line 15135
    new-instance v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;IZ)V

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->setForceAbout()Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method public static synthetic $r8$lambda$LMY9uFdBWylwJ1utR6dnEdZRpMs(Lorg/telegram/ui/ProfileActivity$SearchAdapter;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$loadFaqWebPage$140(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LVnCTlHynsliyivnrR0_O7C-dmc(ILorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 0

    .line 15025
    invoke-static {p0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/messenger/UserConfig;->getGlobalTTl()I

    move-result p0

    if-ltz p0, :cond_0

    .line 15026
    new-instance p0, Lorg/telegram/ui/AutoDeleteMessagesActivity;

    invoke-direct {p0}, Lorg/telegram/ui/AutoDeleteMessagesActivity;-><init>()V

    invoke-virtual {p1, p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$LZWskHm1PC3fiCWfqx9X1okpVgQ(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 4

    .line 15009
    new-instance v0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v3, v1, v2, v3}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;-><init>(ILjava/util/ArrayList;Ljava/util/ArrayList;Z)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$MBfbZ5vLFbJaLnUbqTQ6KCJRVik(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 1

    .line 15067
    new-instance v0, Lorg/telegram/ui/DataUsage2Activity;

    invoke-direct {v0}, Lorg/telegram/ui/DataUsage2Activity;-><init>()V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$N8AFbe1LRofCcCxXgQ6nMtOHz_Q(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 1

    .line 15017
    new-instance v0, Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-direct {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;-><init>()V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$NHNsPdphCX8ocitd6aByAmJD2Ho(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 1

    .line 15079
    new-instance v0, Lorg/telegram/ui/ProxyListActivity;

    invoke-direct {v0}, Lorg/telegram/ui/ProxyListActivity;-><init>()V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$OUH-c6aroPD8Wf3Zdsj5cQSkwyw(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 2

    .line 15086
    new-instance v0, Lorg/telegram/ui/ThemeActivity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/telegram/ui/ThemeActivity;-><init>(I)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$OfoLwYDJAABaJ_j1T-XliAgEKJI(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 3

    .line 15115
    new-instance v0, Lorg/telegram/ui/StickersActivity;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/StickersActivity;-><init>(ILjava/util/ArrayList;)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$Ox3uc_ul6MLIbAUQ_Mg1Bmcm47Q(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 1

    .line 15068
    new-instance v0, Lorg/telegram/ui/DataSettingsActivity;

    invoke-direct {v0}, Lorg/telegram/ui/DataSettingsActivity;-><init>()V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$PBNWLvzTzdOk7ODLrSlmWdI3cNo(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x10

    if-ge v0, v1, :cond_1

    .line 14991
    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->isClientActivated()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_1
    if-ltz v0, :cond_2

    .line 14997
    new-instance v1, Lorg/telegram/ui/LoginActivity;

    invoke-direct {v1, v0}, Lorg/telegram/ui/LoginActivity;-><init>(I)V

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_2
    return-void
.end method

.method public static synthetic $r8$lambda$PDZwiF_NMkr-8gs23C230m7DOkU(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 2

    .line 15169
    new-instance v0, Lorg/telegram/ui/LiteModeSettingsActivity;

    invoke-direct {v0}, Lorg/telegram/ui/LiteModeSettingsActivity;-><init>()V

    .line 15170
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    const/16 p0, 0x701c

    const/4 v1, 0x1

    .line 15171
    invoke-virtual {v0, p0, v1}, Lorg/telegram/ui/LiteModeSettingsActivity;->setExpanded(IZ)V

    const/16 p0, 0x2008

    .line 15172
    invoke-virtual {v0, p0}, Lorg/telegram/ui/LiteModeSettingsActivity;->scrollToFlags(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Q7mzQWoBuOSSsWndtWRsJTr7Cgc(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 1

    .line 15241
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p0

    sget v0, Lorg/telegram/messenger/R$string;->TelegramFaqUrl:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Q8XlRkU-q_HxHoIGgdr9yhiVNQ8(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 2

    .line 15210
    new-instance v0, Lorg/telegram/ui/LiteModeSettingsActivity;

    invoke-direct {v0}, Lorg/telegram/ui/LiteModeSettingsActivity;-><init>()V

    .line 15211
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    const p0, 0x581e0

    const/4 v1, 0x1

    .line 15212
    invoke-virtual {v0, p0, v1}, Lorg/telegram/ui/LiteModeSettingsActivity;->setExpanded(IZ)V

    const p0, 0x8000

    .line 15213
    invoke-virtual {v0, p0}, Lorg/telegram/ui/LiteModeSettingsActivity;->scrollToFlags(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$QXotjCeqejDpxpcpuaS2fyxqRQA(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 1

    .line 15084
    new-instance v0, Lorg/telegram/ui/DataSettingsActivity;

    invoke-direct {v0}, Lorg/telegram/ui/DataSettingsActivity;-><init>()V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$QjGAV4XDL_kQskiVWI0SwF15P68(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 2

    .line 15103
    new-instance v0, Lorg/telegram/ui/ThemeActivity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/telegram/ui/ThemeActivity;-><init>(I)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$R5S2hh4Pccn2M7ljGQAkrjOZM2o(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 1

    .line 15242
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p0

    sget v0, Lorg/telegram/messenger/R$string;->PrivacyPolicyUrl:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$R5vGPyXKOOJfhJQGO1dsBwEM6dU(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 3

    .line 15110
    new-instance v0, Lorg/telegram/ui/StickersActivity;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/StickersActivity;-><init>(ILjava/util/ArrayList;)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$RJ1yelUaxlnTNfZPR0zX3bFp9jM(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 1

    .line 15049
    new-instance v0, Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-direct {v0}, Lorg/telegram/ui/PrivacySettingsActivity;-><init>()V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$SNpPbEHNFmBDyP7se4jKs1WkCBs(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 2

    .line 15088
    new-instance v0, Lorg/telegram/ui/WallpapersListActivity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/telegram/ui/WallpapersListActivity;-><init>(I)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$Sui1SgD6OtFS3qESJWpBxays1W8(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 1

    .line 15231
    new-instance v0, Lorg/telegram/ui/LiteModeSettingsActivity;

    invoke-direct {v0}, Lorg/telegram/ui/LiteModeSettingsActivity;-><init>()V

    .line 15232
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    const/4 p0, 0x1

    .line 15233
    invoke-virtual {v0, p0}, Lorg/telegram/ui/LiteModeSettingsActivity;->scrollToType(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$T7KiKcWEu--gf7AdOgAtRZz_upo(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 3

    .line 15134
    new-instance v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;IZ)V

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->setForceAbout()Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method public static synthetic $r8$lambda$TIk-4_I_nyRVZHQ1ibg4j8aH2G8(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 2

    .line 15058
    new-instance v0, Lorg/telegram/ui/SessionsActivity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/telegram/ui/SessionsActivity;-><init>(I)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$TTCX6yz85G5vW4pnoKq3FULMyto(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 1

    .line 15064
    new-instance v0, Lorg/telegram/ui/CacheControlActivity;

    invoke-direct {v0}, Lorg/telegram/ui/CacheControlActivity;-><init>()V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$UUBCmoLT18rDjzRgmSObAxQmfNg(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 1

    .line 15077
    new-instance v0, Lorg/telegram/ui/DataSettingsActivity;

    invoke-direct {v0}, Lorg/telegram/ui/DataSettingsActivity;-><init>()V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$UaYawTT1jXCjFI3fWSWrDKk_V38(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 2

    .line 15192
    new-instance v0, Lorg/telegram/ui/LiteModeSettingsActivity;

    invoke-direct {v0}, Lorg/telegram/ui/LiteModeSettingsActivity;-><init>()V

    .line 15193
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    const p0, 0x581e0

    const/4 v1, 0x1

    .line 15194
    invoke-virtual {v0, p0, v1}, Lorg/telegram/ui/LiteModeSettingsActivity;->setExpanded(IZ)V

    const/16 p0, 0x40

    .line 15195
    invoke-virtual {v0, p0}, Lorg/telegram/ui/LiteModeSettingsActivity;->scrollToFlags(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Uiegm_E_PCo98zL3VWicZ3vRKvM(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 1

    .line 15061
    new-instance v0, Lorg/telegram/ui/DataSettingsActivity;

    invoke-direct {v0}, Lorg/telegram/ui/DataSettingsActivity;-><init>()V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$V0KiDs110KnXrseg-pej162errU(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 3

    .line 15129
    new-instance v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;IZ)V

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->setForceAbout()Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method public static synthetic $r8$lambda$VCJa4kVLLRa3eOo0lDI3Ge_4U5I(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 2

    .line 15093
    new-instance v0, Lorg/telegram/ui/ThemeActivity;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/telegram/ui/ThemeActivity;-><init>(I)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$Va0CnkBUZPBtnCBTBtbQkqVsMv8(Lorg/telegram/ui/ProfileActivity$SearchAdapter;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$loadFaqWebPage$141(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Vc7toREIjbYsZlucrOpPHYy6soU(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 2

    .line 15152
    new-instance v0, Lorg/telegram/ui/LiteModeSettingsActivity;

    invoke-direct {v0}, Lorg/telegram/ui/LiteModeSettingsActivity;-><init>()V

    .line 15153
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    const/4 p0, 0x3

    const/4 v1, 0x1

    .line 15154
    invoke-virtual {v0, p0, v1}, Lorg/telegram/ui/LiteModeSettingsActivity;->setExpanded(IZ)V

    const/4 p0, 0x2

    .line 15155
    invoke-virtual {v0, p0}, Lorg/telegram/ui/LiteModeSettingsActivity;->scrollToFlags(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$VmL2mnwH2BJDOKrOLRYsBGK1Wy4(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 1

    .line 15020
    new-instance v0, Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-direct {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;-><init>()V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$W6aLstqcvMH3dvIW-q2O8worAok(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 3

    .line 15038
    new-instance v0, Lorg/telegram/ui/PrivacyControlActivity;

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/PrivacyControlActivity;-><init>(IZ)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$WAXgMAl10Ko5ba7Hj7sxbdhSQIQ(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 3

    .line 15034
    new-instance v0, Lorg/telegram/ui/PrivacyControlActivity;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/PrivacyControlActivity;-><init>(IZ)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$WK5TTna6VPOvO0qR_e0fKDNmhD0(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 3

    .line 15130
    new-instance v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;IZ)V

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->setForceAbout()Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method public static synthetic $r8$lambda$WrMTiQ6IM2bfAzwswoSRP8bWsBs(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 1

    .line 15158
    new-instance v0, Lorg/telegram/ui/LiteModeSettingsActivity;

    invoke-direct {v0}, Lorg/telegram/ui/LiteModeSettingsActivity;-><init>()V

    .line 15159
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    const/16 p0, 0x701c

    .line 15160
    invoke-virtual {v0, p0}, Lorg/telegram/ui/LiteModeSettingsActivity;->scrollToFlags(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Wws9jBg8ERtRuhTqdSq4t6rjSSo(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 2

    .line 15125
    new-instance v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;IZ)V

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->setForceAbout()Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method public static synthetic $r8$lambda$XxZj-7-B1JBjEI0FXkt3UwOlIMU(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 1

    .line 15181
    new-instance v0, Lorg/telegram/ui/LiteModeSettingsActivity;

    invoke-direct {v0}, Lorg/telegram/ui/LiteModeSettingsActivity;-><init>()V

    .line 15182
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    const p0, 0x581e0

    .line 15183
    invoke-virtual {v0, p0}, Lorg/telegram/ui/LiteModeSettingsActivity;->scrollToFlags(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$YMCV2xwqyJvBwMLovvF8uBv8aZY(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 2

    .line 15163
    new-instance v0, Lorg/telegram/ui/LiteModeSettingsActivity;

    invoke-direct {v0}, Lorg/telegram/ui/LiteModeSettingsActivity;-><init>()V

    .line 15164
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    const/16 p0, 0x701c

    const/4 v1, 0x1

    .line 15165
    invoke-virtual {v0, p0, v1}, Lorg/telegram/ui/LiteModeSettingsActivity;->setExpanded(IZ)V

    const/16 p0, 0x4004

    .line 15166
    invoke-virtual {v0, p0}, Lorg/telegram/ui/LiteModeSettingsActivity;->scrollToFlags(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZS7F6H9HwaVlz4fGGcMLkfn6qsk(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 1

    .line 15076
    new-instance v0, Lorg/telegram/ui/DataSettingsActivity;

    invoke-direct {v0}, Lorg/telegram/ui/DataSettingsActivity;-><init>()V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$_2tnmFUALTyb7kff00FkPfo85F0(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 1

    .line 15054
    new-instance v0, Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-direct {v0}, Lorg/telegram/ui/PrivacySettingsActivity;-><init>()V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$_LUPxgN-LmxUceIy_8GVUQpzIrQ(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 2

    .line 15112
    new-instance v0, Lorg/telegram/ui/ArchivedStickersActivity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/telegram/ui/ArchivedStickersActivity;-><init>(I)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$_UOa4SzQYoQhVaQQ6G2KR_XdUf4(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 1

    .line 15023
    new-instance v0, Lorg/telegram/ui/TwoStepVerificationActivity;

    invoke-direct {v0}, Lorg/telegram/ui/TwoStepVerificationActivity;-><init>()V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$_aTr0TFIeHbsKTV59cAXicMTzfo(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 3

    .line 15114
    new-instance v0, Lorg/telegram/ui/StickersActivity;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/StickersActivity;-><init>(ILjava/util/ArrayList;)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$_efpJ7_G1Nh0MwE9_gf9IwF99EQ(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 2

    .line 15071
    new-instance v0, Lorg/telegram/ui/DataAutoDownloadActivity;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/telegram/ui/DataAutoDownloadActivity;-><init>(I)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$a3X-WtC1Bu92QWOKct0Kyl42XjI(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 3

    .line 15136
    new-instance v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    const/16 v1, 0xa

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;IZ)V

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->setForceAbout()Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method public static synthetic $r8$lambda$bqPqGevxw1JxCFVDbMaoM-Ml3js(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 1

    .line 15019
    new-instance v0, Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-direct {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;-><init>()V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$c1b_bVfTrfRiASnd2Js7wxWLflA(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 2

    .line 15097
    new-instance v0, Lorg/telegram/ui/ThemeActivity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/telegram/ui/ThemeActivity;-><init>(I)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$c4NYmZkzUW2gNzK29F2qg7GgkQQ(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 2

    .line 15100
    new-instance v0, Lorg/telegram/ui/ThemeActivity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/telegram/ui/ThemeActivity;-><init>(I)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$ctiCfYyYPr2YBzPQyagH6_Yb3Xg(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 2

    .line 15070
    new-instance v0, Lorg/telegram/ui/DataAutoDownloadActivity;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/telegram/ui/DataAutoDownloadActivity;-><init>(I)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$doRa-KnhEUFa9QDy3kHUZaZzmt8(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 1

    .line 15073
    new-instance v0, Lorg/telegram/ui/DataSettingsActivity;

    invoke-direct {v0}, Lorg/telegram/ui/DataSettingsActivity;-><init>()V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$dpaoZPtV6hWBvfgkFKH6DJQqgQo(Lorg/telegram/ui/ProfileActivity$SearchAdapter;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$search$142(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dxGpzsKwxtIMFkuAyV2WqmuNz64(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 2

    .line 15098
    new-instance v0, Lorg/telegram/ui/ThemeActivity;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ThemeActivity;-><init>(I)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$eAmmL-iRcbtq2JxgsUGbiIJqUfs(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 1

    .line 15018
    new-instance v0, Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-direct {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;-><init>()V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$eP8CT6vvyfDlcwKxyl3FR3kUE4Y(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 1

    .line 15052
    new-instance v0, Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-direct {v0}, Lorg/telegram/ui/PrivacySettingsActivity;-><init>()V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$elCOEGhSWqMh_Fe86Avb4K3Euu0(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 2

    .line 15099
    new-instance v0, Lorg/telegram/ui/ThemeActivity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/telegram/ui/ThemeActivity;-><init>(I)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$faDE69V6xtTaf1SY_JfLWbYuZ3A(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 2

    .line 15090
    new-instance v0, Lorg/telegram/ui/WallpapersListActivity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/telegram/ui/WallpapersListActivity;-><init>(I)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$g1P8FiR5Yh2jZ8Jqxob93JNhPNU(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 1

    .line 14986
    new-instance v0, Lorg/telegram/ui/ChangeNameActivity;

    invoke-direct {v0, p1}, Lorg/telegram/ui/ChangeNameActivity;-><init>(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$gQ3UNGMXtCq25beDpwV07YPR49A(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 1

    .line 15075
    new-instance v0, Lorg/telegram/ui/DataSettingsActivity;

    invoke-direct {v0}, Lorg/telegram/ui/DataSettingsActivity;-><init>()V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$gfJ4uqd307Z_EoS3BdIbrCuiro0(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 2

    .line 15186
    new-instance v0, Lorg/telegram/ui/LiteModeSettingsActivity;

    invoke-direct {v0}, Lorg/telegram/ui/LiteModeSettingsActivity;-><init>()V

    .line 15187
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    const p0, 0x581e0

    const/4 v1, 0x1

    .line 15188
    invoke-virtual {v0, p0, v1}, Lorg/telegram/ui/LiteModeSettingsActivity;->setExpanded(IZ)V

    const/16 p0, 0x20

    .line 15189
    invoke-virtual {v0, p0}, Lorg/telegram/ui/LiteModeSettingsActivity;->scrollToFlags(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$gkLuWkV135cUuXJvTtVXYDtWQCQ(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 1

    .line 15221
    new-instance v0, Lorg/telegram/ui/LiteModeSettingsActivity;

    invoke-direct {v0}, Lorg/telegram/ui/LiteModeSettingsActivity;-><init>()V

    .line 15222
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    const/16 p0, 0x400

    .line 15223
    invoke-virtual {v0, p0}, Lorg/telegram/ui/LiteModeSettingsActivity;->scrollToFlags(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$hULjB1frOSGh1eniKWNQTAJytMI(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 1

    .line 15066
    new-instance v0, Lorg/telegram/ui/CacheControlActivity;

    invoke-direct {v0}, Lorg/telegram/ui/CacheControlActivity;-><init>()V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$hy_d_pNSM3i59KOAZm4PrvyuTp0(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 3

    .line 15126
    new-instance v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;IZ)V

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->setForceAbout()Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method public static synthetic $r8$lambda$ibnv8R4Bc06FMFwCThu-YhmGqFo(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 1

    .line 15122
    new-instance v0, Lorg/telegram/ui/FiltersSetupActivity;

    invoke-direct {v0}, Lorg/telegram/ui/FiltersSetupActivity;-><init>()V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$ijFmjMcQyT2ocb6af0ScFRDamu0(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 3

    .line 15037
    new-instance v0, Lorg/telegram/ui/PrivacyControlActivity;

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/PrivacyControlActivity;-><init>(IZ)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$jA3oHBRLT_9NA9Mp2TS_UF7ni1o(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 2

    .line 15106
    new-instance v0, Lorg/telegram/ui/ThemeActivity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/telegram/ui/ThemeActivity;-><init>(I)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$jH16ADRSaGlFjuz-6fJNE3DmCo0(ILorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 2

    .line 15041
    invoke-static {p0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result p0

    if-nez p0, :cond_0

    .line 15042
    invoke-static {p1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BulletinFactory;->createRestrictVoiceMessagesPremiumBulletin()Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void

    .line 15045
    :cond_0
    new-instance p0, Lorg/telegram/ui/PrivacyControlActivity;

    const/16 v0, 0x8

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/PrivacyControlActivity;-><init>(IZ)V

    invoke-virtual {p1, p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$k7dpV6bknMYFwJeKjLDb7YP6E0s(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 3

    .line 15127
    new-instance v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;IZ)V

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->setForceAbout()Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method public static synthetic $r8$lambda$kzlzjKQ1yGXFqFH5uGB6QimznoI(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 1

    .line 15236
    new-instance v0, Lorg/telegram/ui/LanguageSelectActivity;

    invoke-direct {v0}, Lorg/telegram/ui/LanguageSelectActivity;-><init>()V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$mapyUbB7yHcBgT9s5PGFP-gzR6Y(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 1

    .line 15081
    new-instance v0, Lorg/telegram/ui/DataSettingsActivity;

    invoke-direct {v0}, Lorg/telegram/ui/DataSettingsActivity;-><init>()V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$mqm3Lpa60WMyMpk3j0-Nei8kir0(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 3

    .line 15036
    new-instance v0, Lorg/telegram/ui/PrivacyControlActivity;

    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/PrivacyControlActivity;-><init>(IZ)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$nhAptS3d2vLHKp6EAA_3nI-N2Ec(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 3

    .line 15033
    new-instance v0, Lorg/telegram/ui/PrivacyControlActivity;

    const/4 v1, 0x6

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/PrivacyControlActivity;-><init>(IZ)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$njJ-kuYQPPnEhBYHtZOzey0rQPM(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 2

    .line 15095
    new-instance v0, Lorg/telegram/ui/ThemeActivity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/telegram/ui/ThemeActivity;-><init>(I)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$nzrIJrmYImXMz_cOXWr6je0KwBc(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 2

    .line 15104
    new-instance v0, Lorg/telegram/ui/ThemeActivity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/telegram/ui/ThemeActivity;-><init>(I)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$oDXAaSCgLYwpc6s6eIXXcDYyxXg(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 1

    .line 15030
    new-instance v0, Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-direct {v0}, Lorg/telegram/ui/PrivacySettingsActivity;-><init>()V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$oa2OmjrA2Xq_zDryljxagtm2lzQ(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 1

    .line 15013
    new-instance v0, Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-direct {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;-><init>()V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$oyBDKIVmPNlJGB0WYxyMuQXkBQU(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 1

    .line 15016
    new-instance v0, Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-direct {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;-><init>()V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$pFUR9u5p0PtWvLKzPozMAw1WY00(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 3

    .line 15108
    new-instance v0, Lorg/telegram/ui/StickersActivity;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/StickersActivity;-><init>(ILjava/util/ArrayList;)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$pQ3wrufJoq_XBZ1Er8T6icBoXmI(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 2

    .line 15092
    new-instance v0, Lorg/telegram/ui/ThemeActivity;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/telegram/ui/ThemeActivity;-><init>(I)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$pd1WcAM3trNnTq4xC2FzpudnlyQ(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 3

    .line 15131
    new-instance v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;IZ)V

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->setForceAbout()Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method public static synthetic $r8$lambda$q2lCsXRL5uspXyxm80DfbwAn6XM(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 2

    .line 15039
    new-instance v0, Lorg/telegram/ui/PrivacyControlActivity;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1}, Lorg/telegram/ui/PrivacyControlActivity;-><init>(IZ)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$qPCs5OOzIgH2AYL9JplkH00kAJM(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 1

    .line 15121
    new-instance v0, Lorg/telegram/ui/FiltersSetupActivity;

    invoke-direct {v0}, Lorg/telegram/ui/FiltersSetupActivity;-><init>()V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$qXcYni3bKVdeCr-9ElyarWXg6ZE(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 3

    .line 15117
    new-instance v0, Lorg/telegram/ui/StickersActivity;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/StickersActivity;-><init>(ILjava/util/ArrayList;)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$qaLaXExKTwhaIkE6_arCA8mAHqA(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 3

    .line 15035
    new-instance v0, Lorg/telegram/ui/PrivacyControlActivity;

    const/4 v1, 0x4

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/PrivacyControlActivity;-><init>(IZ)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$qj2SgEzyEgbG2E6N8QPPKOrjMSI(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 2

    .line 15105
    new-instance v0, Lorg/telegram/ui/ThemeActivity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/telegram/ui/ThemeActivity;-><init>(I)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$rEkUWa7EubTgZCc_ZqL0GtD41_Y(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 1

    .line 15055
    new-instance v0, Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-direct {v0}, Lorg/telegram/ui/PrivacySettingsActivity;-><init>()V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$rPvKzEs6_KV59Vd_Q3iPMDyWZcc(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 2

    .line 14987
    new-instance v0, Lorg/telegram/ui/ActionIntroActivity;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionIntroActivity;-><init>(I)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$rW9J7UHejBeTLc9XJkRUW2kc4z8(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 1

    .line 15014
    new-instance v0, Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-direct {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;-><init>()V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$rj4eBS4oj1l0w-YEzpiPkYxQePI(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 1

    .line 15082
    new-instance v0, Lorg/telegram/ui/DataSettingsActivity;

    invoke-direct {v0}, Lorg/telegram/ui/DataSettingsActivity;-><init>()V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$sLBpTqOTxIg8mtdOKiMHryQ2OAk(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 2

    .line 15198
    new-instance v0, Lorg/telegram/ui/LiteModeSettingsActivity;

    invoke-direct {v0}, Lorg/telegram/ui/LiteModeSettingsActivity;-><init>()V

    .line 15199
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    const p0, 0x581e0

    const/4 v1, 0x1

    .line 15200
    invoke-virtual {v0, p0, v1}, Lorg/telegram/ui/LiteModeSettingsActivity;->setExpanded(IZ)V

    const/16 p0, 0x80

    .line 15201
    invoke-virtual {v0, p0}, Lorg/telegram/ui/LiteModeSettingsActivity;->scrollToFlags(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$st03JrcMw1ruHs81pxQ_caWNy4Y(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 3

    .line 15111
    new-instance v0, Lorg/telegram/ui/StickersActivity;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/StickersActivity;-><init>(ILjava/util/ArrayList;)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$t9QERW-hbY7Z9OPjOApO3gijxjs(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 1

    .line 15053
    new-instance v0, Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-direct {v0}, Lorg/telegram/ui/PrivacySettingsActivity;-><init>()V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$uQN7o7LZaBhRcE4gMFV0n_vWVmQ(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 5

    .line 15011
    new-instance v0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-direct {v0, v4, v1, v2, v3}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;-><init>(ILjava/util/ArrayList;Ljava/util/ArrayList;Z)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$uruqpOFvOaPLYhiiGEgkjxmlRro(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 2

    .line 15124
    new-instance v0, Lorg/telegram/ui/PremiumPreviewFragment;

    const-string/jumbo v1, "settings"

    invoke-direct {v0, v1}, Lorg/telegram/ui/PremiumPreviewFragment;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$vQngHNiBKGDu4_RGUvNjc_BfgK4(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 2

    .line 15204
    new-instance v0, Lorg/telegram/ui/LiteModeSettingsActivity;

    invoke-direct {v0}, Lorg/telegram/ui/LiteModeSettingsActivity;-><init>()V

    .line 15205
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    const p0, 0x581e0

    const/4 v1, 0x1

    .line 15206
    invoke-virtual {v0, p0, v1}, Lorg/telegram/ui/LiteModeSettingsActivity;->setExpanded(IZ)V

    const/16 p0, 0x100

    .line 15207
    invoke-virtual {v0, p0}, Lorg/telegram/ui/LiteModeSettingsActivity;->scrollToFlags(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$vgeZH0TTixiw1KRi-jcfELd8J-A(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 2

    .line 15175
    new-instance v0, Lorg/telegram/ui/LiteModeSettingsActivity;

    invoke-direct {v0}, Lorg/telegram/ui/LiteModeSettingsActivity;-><init>()V

    .line 15176
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    const/16 p0, 0x701c

    const/4 v1, 0x1

    .line 15177
    invoke-virtual {v0, p0, v1}, Lorg/telegram/ui/LiteModeSettingsActivity;->setExpanded(IZ)V

    const/16 p0, 0x1010

    .line 15178
    invoke-virtual {v0, p0}, Lorg/telegram/ui/LiteModeSettingsActivity;->scrollToFlags(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$w2KJpYvK0aounsConGhyJcuALNo(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 1

    .line 15048
    new-instance v0, Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-direct {v0}, Lorg/telegram/ui/PrivacySettingsActivity;-><init>()V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$wNWJh497dAuHfqHxWyapJKGxAU0(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 1

    .line 15051
    new-instance v0, Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-direct {v0}, Lorg/telegram/ui/PrivacySettingsActivity;-><init>()V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$wxR2rRgc_8kuxHG5EhCBSd9Ljpg(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 2

    .line 15096
    new-instance v0, Lorg/telegram/ui/ThemeActivity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/telegram/ui/ThemeActivity;-><init>(I)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$xEHmJuOGI-BrzwzWo9CaYSUujTY(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 5

    .line 15010
    new-instance v0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v0, v4, v1, v2, v3}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;-><init>(ILjava/util/ArrayList;Ljava/util/ArrayList;Z)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$xKCdgwf5hd20YWoic86gr4HMNZg(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 1

    .line 15216
    new-instance v0, Lorg/telegram/ui/LiteModeSettingsActivity;

    invoke-direct {v0}, Lorg/telegram/ui/LiteModeSettingsActivity;-><init>()V

    .line 15217
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    const/16 p0, 0x200

    .line 15218
    invoke-virtual {v0, p0}, Lorg/telegram/ui/LiteModeSettingsActivity;->scrollToFlags(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$xKM4dsubxF4z9SG3xH9QtmJngtU(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 2

    .line 15101
    new-instance v0, Lorg/telegram/ui/ThemeActivity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/telegram/ui/ThemeActivity;-><init>(I)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$xVYFrlo_Muxfpr8UsxkRk9gploI(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 3

    .line 15109
    new-instance v0, Lorg/telegram/ui/StickersActivity;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/StickersActivity;-><init>(ILjava/util/ArrayList;)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$xpHA7nu7_z3yr1TO21jA0ttZCd0(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 1

    const/4 v0, 0x0

    .line 15240
    invoke-static {p0, v0}, Lorg/telegram/ui/Components/AlertsCreator;->createSupportAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method public static synthetic $r8$lambda$yTYKzAdoy-DdbzGe-7Ea4vcA2s8(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 1

    .line 15078
    new-instance v0, Lorg/telegram/ui/ProxyListActivity;

    invoke-direct {v0}, Lorg/telegram/ui/ProxyListActivity;-><init>()V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$yp1aY3iLmu_Zo9FIMLyd9YWNYRQ(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 1

    .line 15139
    new-instance v0, Lorg/telegram/ui/LiteModeSettingsActivity;

    invoke-direct {v0}, Lorg/telegram/ui/LiteModeSettingsActivity;-><init>()V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$zUbL4G7j_PdVIsRdDFtLSAgAj0M(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 1

    .line 15074
    new-instance v0, Lorg/telegram/ui/DataSettingsActivity;

    invoke-direct {v0}, Lorg/telegram/ui/DataSettingsActivity;-><init>()V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$zp4VNRE8DfkQbnayeLf9lVLi2Ck(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 1

    .line 15080
    new-instance v0, Lorg/telegram/ui/DataSettingsActivity;

    invoke-direct {v0}, Lorg/telegram/ui/DataSettingsActivity;-><init>()V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetfaqSearchArray(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->faqSearchArray:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetfaqSearchResults(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->faqSearchResults:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlastSearchString(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lastSearchString:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetrecentSearches(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->recentSearches:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsearchResults(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->searchResults:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsearchWas(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->searchWas:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputsearchArray(Lorg/telegram/ui/ProfileActivity$SearchAdapter;[Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->searchArray:[Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    return-void
.end method

.method static bridge synthetic -$$Nest$monCreateSearchArray(Lorg/telegram/ui/ProfileActivity$SearchAdapter;Lorg/telegram/ui/ActionBar/BaseFragment;)[Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->onCreateSearchArray(Lorg/telegram/ui/ActionBar/BaseFragment;)[Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdateSearchArray(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->updateSearchArray()V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;)V
    .locals 1

    .line 14920
    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 14904
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->faqSearchArray:Ljava/util/ArrayList;

    .line 14910
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->resultNames:Ljava/util/ArrayList;

    .line 14911
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->searchResults:Ljava/util/ArrayList;

    .line 14912
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->faqSearchResults:Ljava/util/ArrayList;

    .line 14913
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->recentSearches:Ljava/util/ArrayList;

    .line 14921
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 14922
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->currentAccount:I

    .line 14923
    iput-object p2, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->mContext:Landroid/content/Context;

    .line 14924
    invoke-direct {p0, p1}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->onCreateSearchArray(Lorg/telegram/ui/ActionBar/BaseFragment;)[Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->searchArray:[Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    .line 14925
    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->updateSearchArray()V

    return-void
.end method

.method private getNum(Ljava/lang/Object;)I
    .locals 1

    .line 15504
    instance-of v0, p1, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    if-eqz v0, :cond_0

    .line 15505
    check-cast p1, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    iget p1, p1, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->num:I

    return p1

    .line 15506
    :cond_0
    instance-of v0, p1, Lorg/telegram/messenger/MessagesController$FaqSearchResult;

    if-eqz v0, :cond_1

    .line 15507
    check-cast p1, Lorg/telegram/messenger/MessagesController$FaqSearchResult;

    iget p1, p1, Lorg/telegram/messenger/MessagesController$FaqSearchResult;->num:I

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private static isPremiumFeatureAvailable(II)Z
    .locals 3

    .line 15252
    invoke-static {p0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->premiumFeaturesBlocked()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    return v0

    .line 15256
    :cond_1
    invoke-static {p0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    iget-object p0, p0, Lorg/telegram/messenger/MessagesController;->premiumFeaturesTypesToPosition:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    if-eq p0, v2, :cond_2

    return v0

    :cond_2
    return v1
.end method

.method private synthetic lambda$loadFaqWebPage$140(Ljava/util/ArrayList;)V
    .locals 1

    .line 15319
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->faqSearchArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 15320
    iget v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iput-object p1, v0, Lorg/telegram/messenger/MessagesController;->faqSearchArray:Ljava/util/ArrayList;

    .line 15321
    iget p1, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->faqWebPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iput-object v0, p1, Lorg/telegram/messenger/MessagesController;->faqWebPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    .line 15322
    iget-boolean p1, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->searchWas:Z

    if-nez p1, :cond_0

    .line 15323
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$loadFaqWebPage$141(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 12

    .line 15272
    instance-of p2, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_webPage;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 15273
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_messages_webPage;

    .line 15274
    iget p2, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_webPage;->users:Ljava/util/ArrayList;

    invoke-virtual {p2, v1, v0}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 15275
    iget p2, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_webPage;->chats:Ljava/util/ArrayList;

    invoke-virtual {p2, v1, v0}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 15276
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_webPage;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    .line 15278
    :cond_0
    instance-of p2, p1, Lorg/telegram/tgnet/TLRPC$WebPage;

    if-eqz p2, :cond_9

    .line 15279
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 15280
    check-cast p1, Lorg/telegram/tgnet/TLRPC$WebPage;

    .line 15281
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$WebPage;->cached_page:Lorg/telegram/tgnet/TLRPC$Page;

    if-eqz v1, :cond_8

    .line 15282
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Page;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_7

    .line 15283
    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$WebPage;->cached_page:Lorg/telegram/tgnet/TLRPC$Page;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Page;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$PageBlock;

    .line 15284
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockList;

    if-eqz v4, :cond_5

    if-eqz v2, :cond_1

    .line 15287
    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$WebPage;->cached_page:Lorg/telegram/tgnet/TLRPC$Page;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Page;->blocks:Ljava/util/ArrayList;

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$PageBlock;

    .line 15288
    instance-of v5, v4, Lorg/telegram/tgnet/TLRPC$TL_pageBlockParagraph;

    if-eqz v5, :cond_1

    .line 15289
    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_pageBlockParagraph;

    .line 15290
    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_pageBlockParagraph;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-static {v4}, Lorg/telegram/ui/ArticleViewer;->getPlainText(Lorg/telegram/tgnet/TLRPC$RichText;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 15293
    :goto_1
    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockList;

    .line 15294
    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockList;->items:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v0

    :goto_2
    if-ge v6, v5, :cond_6

    .line 15295
    iget-object v7, v3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockList;->items:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$PageListItem;

    .line 15296
    instance-of v8, v7, Lorg/telegram/tgnet/TLRPC$TL_pageListItemText;

    if-eqz v8, :cond_4

    .line 15297
    check-cast v7, Lorg/telegram/tgnet/TLRPC$TL_pageListItemText;

    .line 15298
    iget-object v8, v7, Lorg/telegram/tgnet/TLRPC$TL_pageListItemText;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-static {v8}, Lorg/telegram/ui/ArticleViewer;->getUrl(Lorg/telegram/tgnet/TLRPC$RichText;)Ljava/lang/String;

    move-result-object v8

    .line 15299
    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$TL_pageListItemText;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-static {v7}, Lorg/telegram/ui/ArticleViewer;->getPlainText(Lorg/telegram/tgnet/TLRPC$RichText;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 15300
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    goto :goto_4

    :cond_2
    const/4 v9, 0x1

    if-eqz v4, :cond_3

    const/4 v10, 0x2

    .line 15305
    new-array v10, v10, [Ljava/lang/String;

    sget v11, Lorg/telegram/messenger/R$string;->SettingsSearchFaq:I

    invoke-static {v11}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v0

    aput-object v4, v10, v9

    goto :goto_3

    .line 15307
    :cond_3
    new-array v10, v9, [Ljava/lang/String;

    sget v9, Lorg/telegram/messenger/R$string;->SettingsSearchFaq:I

    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v10, v0

    .line 15309
    :goto_3
    new-instance v9, Lorg/telegram/messenger/MessagesController$FaqSearchResult;

    invoke-direct {v9, v7, v10, v8}, Lorg/telegram/messenger/MessagesController$FaqSearchResult;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 15312
    :cond_5
    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAnchor;

    if-eqz v3, :cond_6

    goto :goto_5

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 15316
    :cond_7
    :goto_5
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->faqWebPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    .line 15318
    :cond_8
    new-instance p1, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda143;

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda143;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;Ljava/util/ArrayList;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 15327
    :cond_9
    iput-boolean v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->loadingFaqPage:Z

    return-void
.end method

.method private synthetic lambda$search$142(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1

    .line 15618
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lastSearchString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    .line 15621
    :cond_0
    iget-boolean p1, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->searchWas:Z

    if-nez p1, :cond_1

    .line 15622
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v0, p1, Lorg/telegram/ui/ProfileActivity;

    if-eqz v0, :cond_1

    .line 15624
    :try_start_0
    check-cast p1, Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetemptyView(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/ui/Components/StickerEmptyView;->stickerView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->startAnimation()V

    .line 15625
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    check-cast p1, Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetemptyView(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/ui/Components/StickerEmptyView;->title:Lorg/telegram/ui/Components/spoilers/SpoilersTextView;

    sget v0, Lorg/telegram/messenger/R$string;->SettingsNoResults:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 15626
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 15629
    iput-boolean p1, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->searchWas:Z

    .line 15630
    iput-object p2, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->searchResults:Ljava/util/ArrayList;

    .line 15631
    iput-object p3, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->faqSearchResults:Ljava/util/ArrayList;

    .line 15632
    iput-object p4, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->resultNames:Ljava/util/ArrayList;

    .line 15633
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 15634
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of p2, p1, Lorg/telegram/ui/ProfileActivity;

    if-eqz p2, :cond_2

    .line 15636
    :try_start_1
    check-cast p1, Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetemptyView(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/ui/Components/StickerEmptyView;->stickerView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->startAnimation()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 15637
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private synthetic lambda$search$143(Ljava/lang/String;)V
    .locals 18

    move-object/from16 v1, p0

    .line 15533
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 15534
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 15535
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 15536
    const-string v0, " "

    move-object/from16 v2, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 15537
    array-length v7, v6

    new-array v7, v7, [Ljava/lang/String;

    const/4 v9, 0x0

    .line 15538
    :goto_0
    array-length v10, v6

    const/4 v11, 0x0

    if-ge v9, v10, :cond_1

    .line 15539
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v10

    aget-object v12, v6, v9

    invoke-virtual {v10, v12}, Lorg/telegram/messenger/LocaleController;->getTranslitString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v9

    .line 15540
    aget-object v12, v6, v9

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 15541
    aput-object v11, v7, v9

    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_1
    const/4 v9, 0x0

    .line 15545
    :goto_1
    iget-object v10, v1, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->searchArray:[Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    array-length v12, v10

    if-ge v9, v12, :cond_b

    .line 15546
    aget-object v10, v10, v9

    if-nez v10, :cond_3

    :cond_2
    move-object/from16 v16, v7

    goto/16 :goto_7

    .line 15550
    :cond_3
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v10, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->searchTitle:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object v15, v11

    const/4 v14, 0x0

    .line 15552
    :goto_2
    array-length v8, v6

    if-ge v14, v8, :cond_2

    .line 15553
    aget-object v8, v6, v14

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_6

    .line 15554
    aget-object v8, v6, v14

    .line 15555
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    if-gez v11, :cond_4

    .line 15556
    aget-object v13, v7, v14

    if-eqz v13, :cond_4

    .line 15558
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    move-object v8, v13

    :cond_4
    if-ltz v11, :cond_2

    if-nez v15, :cond_5

    .line 15562
    new-instance v15, Landroid/text/SpannableStringBuilder;

    iget-object v13, v10, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->searchTitle:Ljava/lang/String;

    invoke-direct {v15, v13}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 15564
    :cond_5
    new-instance v13, Landroid/text/style/ForegroundColorSpan;

    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    move-object/from16 v16, v7

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText4:I

    invoke-virtual {v2, v7}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    invoke-direct {v13, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v11

    const/16 v7, 0x21

    invoke-virtual {v15, v13, v11, v2, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_3

    :cond_6
    move-object/from16 v16, v7

    :goto_3
    if-eqz v15, :cond_a

    .line 15569
    array-length v2, v6

    add-int/lit8 v2, v2, -0x1

    if-ne v14, v2, :cond_a

    .line 15570
    iget v2, v10, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->guid:I

    const/16 v7, 0x1f6

    if-ne v2, v7, :cond_9

    const/4 v2, 0x0

    :goto_4
    const/16 v7, 0x10

    if-ge v2, v7, :cond_8

    .line 15573
    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/messenger/UserConfig;->isClientActivated()Z

    move-result v7

    if-nez v7, :cond_7

    goto :goto_5

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_8
    const/4 v2, -0x1

    :goto_5
    if-gez v2, :cond_9

    goto :goto_6

    .line 15582
    :cond_9
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15583
    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    :goto_6
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v2, p1

    move-object/from16 v7, v16

    const/4 v11, 0x0

    goto/16 :goto_2

    :goto_7
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v2, p1

    move-object/from16 v7, v16

    const/4 v11, 0x0

    goto/16 :goto_1

    :cond_b
    move-object/from16 v16, v7

    .line 15587
    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->faqWebPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    if-eqz v2, :cond_11

    .line 15588
    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->faqSearchArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v7, 0x0

    :goto_8
    if-ge v7, v2, :cond_11

    .line 15589
    iget-object v8, v1, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->faqSearchArray:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/messenger/MessagesController$FaqSearchResult;

    .line 15590
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v8, Lorg/telegram/messenger/MessagesController$FaqSearchResult;->title:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 15592
    :goto_9
    array-length v12, v6

    if-ge v10, v12, :cond_e

    .line 15593
    aget-object v12, v6, v10

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_f

    .line 15594
    aget-object v12, v6, v10

    .line 15595
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    if-gez v13, :cond_c

    .line 15596
    aget-object v14, v16, v10

    if-eqz v14, :cond_c

    .line 15598
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    move-object v12, v14

    :cond_c
    if-ltz v13, :cond_e

    if-nez v11, :cond_d

    .line 15602
    new-instance v11, Landroid/text/SpannableStringBuilder;

    iget-object v14, v8, Lorg/telegram/messenger/MessagesController$FaqSearchResult;->title:Ljava/lang/String;

    invoke-direct {v11, v14}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 15604
    :cond_d
    new-instance v14, Landroid/text/style/ForegroundColorSpan;

    iget-object v15, v1, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    move-object/from16 v17, v0

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText4:I

    invoke-virtual {v15, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v0

    invoke-direct {v14, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v13

    const/16 v12, 0x21

    invoke-virtual {v11, v14, v13, v0, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_a

    :cond_e
    move-object/from16 v17, v0

    const/16 v12, 0x21

    goto :goto_b

    :cond_f
    move-object/from16 v17, v0

    const/16 v12, 0x21

    :goto_a
    if-eqz v11, :cond_10

    .line 15609
    array-length v0, v6

    add-int/lit8 v0, v0, -0x1

    if-ne v10, v0, :cond_10

    .line 15610
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15611
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, v17

    goto :goto_9

    :goto_b
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, v17

    goto/16 :goto_8

    .line 15617
    :cond_11
    new-instance v0, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda144;

    move-object/from16 v2, p1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda144;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$updateSearchArray$0(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 14970
    invoke-direct {p0, p1}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->getNum(Ljava/lang/Object;)I

    move-result p1

    .line 14971
    invoke-direct {p0, p2}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->getNum(Ljava/lang/Object;)I

    move-result p2

    if-ge p1, p2, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    if-le p1, p2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private onCreateSearchArray(Lorg/telegram/ui/ActionBar/BaseFragment;)[Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;
    .locals 159

    move-object/from16 v0, p1

    .line 14982
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result v1

    .line 14983
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    .line 14984
    invoke-static {}, Lcom/exteragram/messenger/preferences/utils/SettingsRegistry;->getInstance()Lcom/exteragram/messenger/preferences/utils/SettingsRegistry;

    move-result-object v3

    move-object/from16 v5, p0

    invoke-virtual {v3, v5}, Lcom/exteragram/messenger/preferences/utils/SettingsRegistry;->getSearchResults(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)[Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    move-result-object v3

    .line 14985
    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v6, Lorg/telegram/messenger/R$string;->EditName:I

    .line 14986
    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v9, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v9, v0, v2}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/16 v6, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v4 .. v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;ILjava/lang/Runnable;)V

    move-object v2, v4

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v5, Lorg/telegram/messenger/R$string;->ChangePhoneNumber:I

    .line 14987
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v9, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda51;

    invoke-direct {v9, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda51;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/16 v6, 0x1f5

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;ILjava/lang/Runnable;)V

    const-string/jumbo v5, "tg://settings/edit/change-number"

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->withLink(Ljava/lang/String;)Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    move-result-object v13

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v5, Lorg/telegram/messenger/R$string;->AddAnotherAccount:I

    .line 14988
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v9, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda62;

    invoke-direct {v9, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda62;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/16 v6, 0x1f6

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;ILjava/lang/Runnable;)V

    const-string/jumbo v5, "tg://settings/edit/add-account"

    .line 14999
    invoke-virtual {v4, v5}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->withLink(Ljava/lang/String;)Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    move-result-object v14

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v5, Lorg/telegram/messenger/R$string;->NotificationsAndSounds:I

    .line 15008
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v8, Lorg/telegram/messenger/R$drawable;->msg_notifications:I

    new-instance v9, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda73;

    invoke-direct {v9, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda73;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/4 v6, 0x1

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;ILjava/lang/Runnable;)V

    const-string/jumbo v5, "tg://settings/notifications"

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->withLink(Ljava/lang/String;)Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    move-result-object v15

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v5, Lorg/telegram/messenger/R$string;->NotificationsPrivateChats:I

    .line 15009
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v5, Lorg/telegram/messenger/R$string;->NotificationsAndSounds:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    sget v9, Lorg/telegram/messenger/R$drawable;->msg_notifications:I

    new-instance v10, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda84;

    invoke-direct {v10, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda84;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/4 v6, 0x2

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v10}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    const-string/jumbo v5, "tg://settings/notifications/private-chats"

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->withLink(Ljava/lang/String;)Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    move-result-object v16

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v5, Lorg/telegram/messenger/R$string;->NotificationsGroups:I

    .line 15010
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v5, Lorg/telegram/messenger/R$string;->NotificationsAndSounds:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    sget v9, Lorg/telegram/messenger/R$drawable;->msg_notifications:I

    new-instance v10, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda95;

    invoke-direct {v10, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda95;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/4 v6, 0x3

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v10}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    const-string/jumbo v5, "tg://settings/notifications/groups"

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->withLink(Ljava/lang/String;)Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    move-result-object v17

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v5, Lorg/telegram/messenger/R$string;->NotificationsChannels:I

    .line 15011
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v5, Lorg/telegram/messenger/R$string;->NotificationsAndSounds:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    sget v9, Lorg/telegram/messenger/R$drawable;->msg_notifications:I

    new-instance v10, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda106;

    invoke-direct {v10, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda106;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/4 v6, 0x4

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v10}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    const-string/jumbo v5, "tg://settings/notifications/channels"

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->withLink(Ljava/lang/String;)Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    move-result-object v18

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v5, Lorg/telegram/messenger/R$string;->VoipNotificationSettings:I

    .line 15012
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v5, Lorg/telegram/messenger/R$string;->NotificationsAndSounds:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    sget v10, Lorg/telegram/messenger/R$drawable;->msg_notifications:I

    new-instance v11, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda117;

    invoke-direct {v11, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda117;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/4 v6, 0x5

    const-string v8, "callsSectionRow"

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    move-object/from16 v19, v4

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v5, Lorg/telegram/messenger/R$string;->BadgeNumber:I

    .line 15013
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v5, Lorg/telegram/messenger/R$string;->NotificationsAndSounds:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    sget v10, Lorg/telegram/messenger/R$drawable;->msg_notifications:I

    new-instance v11, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda128;

    invoke-direct {v11, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda128;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/4 v6, 0x6

    const-string v8, "badgeNumberSection"

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    move-object/from16 v20, v4

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v5, Lorg/telegram/messenger/R$string;->InAppNotifications:I

    .line 15014
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v5, Lorg/telegram/messenger/R$string;->NotificationsAndSounds:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    sget v10, Lorg/telegram/messenger/R$drawable;->msg_notifications:I

    new-instance v11, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda139;

    invoke-direct {v11, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda139;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/4 v6, 0x7

    const-string v8, "inappSectionRow"

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    move-object/from16 v21, v4

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v5, Lorg/telegram/messenger/R$string;->ContactJoined:I

    .line 15015
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v5, Lorg/telegram/messenger/R$string;->NotificationsAndSounds:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    sget v10, Lorg/telegram/messenger/R$drawable;->msg_notifications:I

    new-instance v11, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda11;

    invoke-direct {v11, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/16 v6, 0x8

    const-string v8, "contactJoinedRow"

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    const-string/jumbo v5, "tg://settings/notifications/new-contacts"

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->withLink(Ljava/lang/String;)Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    move-result-object v22

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v5, Lorg/telegram/messenger/R$string;->PinnedMessages:I

    .line 15016
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v5, Lorg/telegram/messenger/R$string;->NotificationsAndSounds:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    sget v10, Lorg/telegram/messenger/R$drawable;->msg_notifications:I

    new-instance v11, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda22;

    invoke-direct {v11, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/16 v6, 0x9

    const-string v8, "pinnedMessageRow"

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    const-string/jumbo v5, "tg://settings/notifications/pinned-messages"

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->withLink(Ljava/lang/String;)Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    move-result-object v23

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v5, Lorg/telegram/messenger/R$string;->ResetAllNotifications:I

    .line 15017
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v5, Lorg/telegram/messenger/R$string;->NotificationsAndSounds:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    sget v10, Lorg/telegram/messenger/R$drawable;->msg_notifications:I

    new-instance v11, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda33;

    invoke-direct {v11, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda33;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/16 v6, 0xa

    const-string v8, "resetNotificationsRow"

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    const-string/jumbo v5, "tg://settings/notifications/reset"

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->withLink(Ljava/lang/String;)Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    move-result-object v24

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v5, Lorg/telegram/messenger/R$string;->NotificationsService:I

    .line 15018
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v5, Lorg/telegram/messenger/R$string;->NotificationsAndSounds:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    sget v10, Lorg/telegram/messenger/R$drawable;->msg_notifications:I

    new-instance v11, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda43;

    invoke-direct {v11, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda43;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/16 v6, 0xb

    const-string v8, "notificationsServiceRow"

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    move-object/from16 v25, v4

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v5, Lorg/telegram/messenger/R$string;->NotificationsServiceConnection:I

    .line 15019
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v5, Lorg/telegram/messenger/R$string;->NotificationsAndSounds:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    sget v10, Lorg/telegram/messenger/R$drawable;->msg_notifications:I

    new-instance v11, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda45;

    invoke-direct {v11, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda45;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/16 v6, 0xc

    const-string v8, "notificationsServiceConnectionRow"

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    move-object/from16 v26, v4

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v5, Lorg/telegram/messenger/R$string;->RepeatNotifications:I

    .line 15020
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v5, Lorg/telegram/messenger/R$string;->NotificationsAndSounds:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    sget v10, Lorg/telegram/messenger/R$drawable;->msg_notifications:I

    new-instance v11, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda46;

    invoke-direct {v11, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda46;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/16 v6, 0xd

    const-string v8, "repeatRow"

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    move-object/from16 v27, v4

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v5, Lorg/telegram/messenger/R$string;->PrivacySettings:I

    .line 15022
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v8, Lorg/telegram/messenger/R$drawable;->msg_secret:I

    new-instance v9, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda47;

    invoke-direct {v9, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda47;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/16 v6, 0x64

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;ILjava/lang/Runnable;)V

    const-string/jumbo v5, "tg://settings/privacy"

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->withLink(Ljava/lang/String;)Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    move-result-object v28

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v5, Lorg/telegram/messenger/R$string;->TwoStepVerification:I

    .line 15023
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v5, Lorg/telegram/messenger/R$string;->PrivacySettings:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    sget v9, Lorg/telegram/messenger/R$drawable;->msg2_secret:I

    new-instance v10, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda48;

    invoke-direct {v10, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda48;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/16 v6, 0x6d

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v10}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    const-string/jumbo v5, "tg://settings/privacy/2sv"

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->withLink(Ljava/lang/String;)Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    move-result-object v29

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v5, Lorg/telegram/messenger/R$string;->AutoDeleteMessages:I

    .line 15024
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v5, Lorg/telegram/messenger/R$string;->PrivacySettings:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    sget v9, Lorg/telegram/messenger/R$drawable;->msg2_secret:I

    new-instance v10, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda49;

    invoke-direct {v10, v1, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda49;-><init>(ILorg/telegram/ui/ActionBar/BaseFragment;)V

    const/16 v6, 0x7c

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v10}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    const-string/jumbo v5, "tg://settings/privacy/auto-delete"

    .line 15028
    invoke-virtual {v4, v5}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->withLink(Ljava/lang/String;)Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    move-result-object v30

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v5, Lorg/telegram/messenger/R$string;->Passcode:I

    .line 15029
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v5, Lorg/telegram/messenger/R$string;->PrivacySettings:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    sget v9, Lorg/telegram/messenger/R$drawable;->msg2_secret:I

    new-instance v10, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda50;

    invoke-direct {v10, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda50;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/16 v6, 0x6c

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v10}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    const-string/jumbo v5, "tg://settings/privacy/passcode"

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->withLink(Ljava/lang/String;)Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    move-result-object v31

    .line 15030
    sget-boolean v4, Lorg/telegram/messenger/SharedConfig;->hasEmailLogin:Z

    const/16 v32, 0x0

    if-eqz v4, :cond_0

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v5, Lorg/telegram/messenger/R$string;->EmailLogin:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v5, Lorg/telegram/messenger/R$string;->PrivacySettings:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    sget v10, Lorg/telegram/messenger/R$drawable;->msg2_secret:I

    new-instance v11, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda52;

    invoke-direct {v11, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda52;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/16 v6, 0x7d

    const-string v8, "emailLoginRow"

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    const-string/jumbo v5, "tg://settings/privacy/login-email"

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->withLink(Ljava/lang/String;)Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    move-result-object v4

    move-object/from16 v33, v4

    goto :goto_0

    :cond_0
    move-object/from16 v33, v32

    :goto_0
    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v5, Lorg/telegram/messenger/R$string;->BlockedUsers:I

    .line 15031
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v5, Lorg/telegram/messenger/R$string;->PrivacySettings:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    sget v9, Lorg/telegram/messenger/R$drawable;->msg_secret:I

    new-instance v10, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda53;

    invoke-direct {v10, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda53;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/16 v6, 0x65

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v10}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    const-string/jumbo v5, "tg://settings/privacy/blocked"

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->withLink(Ljava/lang/String;)Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    move-result-object v34

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v5, Lorg/telegram/messenger/R$string;->SessionsTitle:I

    .line 15032
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v8, Lorg/telegram/messenger/R$drawable;->msg2_secret:I

    new-instance v9, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda54;

    invoke-direct {v9, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda54;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/16 v6, 0x6e

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;ILjava/lang/Runnable;)V

    const-string/jumbo v12, "tg://settings/devices"

    invoke-virtual {v4, v12}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->withLink(Ljava/lang/String;)Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    move-result-object v35

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v5, Lorg/telegram/messenger/R$string;->PrivacyPhone:I

    .line 15033
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v5, Lorg/telegram/messenger/R$string;->PrivacySettings:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    sget v9, Lorg/telegram/messenger/R$drawable;->msg_secret:I

    new-instance v10, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda55;

    invoke-direct {v10, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda55;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/16 v6, 0x69

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v10}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    const-string/jumbo v5, "tg://settings/privacy/phone-number/"

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->withLink(Ljava/lang/String;)Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    move-result-object v36

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v5, Lorg/telegram/messenger/R$string;->PrivacyLastSeen:I

    .line 15034
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v5, Lorg/telegram/messenger/R$string;->PrivacySettings:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    sget v9, Lorg/telegram/messenger/R$drawable;->msg_secret:I

    new-instance v10, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda56;

    invoke-direct {v10, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda56;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/16 v6, 0x66

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v10}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    const-string/jumbo v5, "tg://settings/privacy/last-seen"

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->withLink(Ljava/lang/String;)Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    move-result-object v37

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v5, Lorg/telegram/messenger/R$string;->PrivacyProfilePhoto:I

    .line 15035
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v5, Lorg/telegram/messenger/R$string;->PrivacySettings:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    sget v9, Lorg/telegram/messenger/R$drawable;->msg_secret:I

    new-instance v10, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda57;

    invoke-direct {v10, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda57;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/16 v6, 0x67

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v10}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    const-string/jumbo v5, "tg://settings/privacy/profile-photos"

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->withLink(Ljava/lang/String;)Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    move-result-object v38

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v5, Lorg/telegram/messenger/R$string;->PrivacyForwards:I

    .line 15036
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v5, Lorg/telegram/messenger/R$string;->PrivacySettings:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    sget v9, Lorg/telegram/messenger/R$drawable;->msg_secret:I

    new-instance v10, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda58;

    invoke-direct {v10, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda58;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/16 v6, 0x68

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v10}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    const-string/jumbo v5, "tg://settings/privacy/forwards"

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->withLink(Ljava/lang/String;)Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    move-result-object v39

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v5, Lorg/telegram/messenger/R$string;->PrivacyP2P:I

    .line 15037
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v5, Lorg/telegram/messenger/R$string;->PrivacySettings:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    sget v9, Lorg/telegram/messenger/R$drawable;->msg_secret:I

    new-instance v10, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda59;

    invoke-direct {v10, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda59;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/16 v6, 0x7a

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v10}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    const-string/jumbo v5, "tg://settings/privacy/calls/p2p"

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->withLink(Ljava/lang/String;)Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    move-result-object v40

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v5, Lorg/telegram/messenger/R$string;->Calls:I

    .line 15038
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v5, Lorg/telegram/messenger/R$string;->PrivacySettings:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    sget v9, Lorg/telegram/messenger/R$drawable;->msg_secret:I

    new-instance v10, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda60;

    invoke-direct {v10, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda60;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/16 v6, 0x6a

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v10}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    const-string/jumbo v5, "tg://settings/privacy/calls"

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->withLink(Ljava/lang/String;)Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    move-result-object v41

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v5, Lorg/telegram/messenger/R$string;->PrivacyInvites:I

    .line 15039
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v5, Lorg/telegram/messenger/R$string;->PrivacySettings:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    sget v9, Lorg/telegram/messenger/R$drawable;->msg_secret:I

    new-instance v10, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda61;

    invoke-direct {v10, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda61;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/16 v6, 0x6b

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v10}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    const-string/jumbo v5, "tg://settings/privacy/invites"

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->withLink(Ljava/lang/String;)Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    move-result-object v42

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v5, Lorg/telegram/messenger/R$string;->PrivacyVoiceMessages:I

    .line 15040
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v5, Lorg/telegram/messenger/R$string;->PrivacySettings:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    sget v9, Lorg/telegram/messenger/R$drawable;->msg_secret:I

    new-instance v10, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda63;

    invoke-direct {v10, v1, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda63;-><init>(ILorg/telegram/ui/ActionBar/BaseFragment;)V

    const/16 v6, 0x7b

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v10}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    const-string/jumbo v5, "tg://settings/privacy/voice"

    .line 15046
    invoke-virtual {v4, v5}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->withLink(Ljava/lang/String;)Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    move-result-object v43

    .line 15047
    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-boolean v4, v4, Lorg/telegram/messenger/MessagesController;->autoarchiveAvailable:Z

    if-eqz v4, :cond_1

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v5, Lorg/telegram/messenger/R$string;->ArchiveAndMute:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v5, Lorg/telegram/messenger/R$string;->PrivacySettings:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    sget v10, Lorg/telegram/messenger/R$drawable;->msg2_secret:I

    new-instance v11, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda64;

    invoke-direct {v11, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda64;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/16 v6, 0x79

    const-string v8, "newChatsRow"

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    const-string/jumbo v5, "tg://settings/privacy/archive-and-mute"

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->withLink(Ljava/lang/String;)Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    move-result-object v4

    move-object/from16 v44, v4

    goto :goto_1

    :cond_1
    move-object/from16 v44, v32

    :goto_1
    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v5, Lorg/telegram/messenger/R$string;->DeleteAccountIfAwayFor2:I

    .line 15048
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v5, Lorg/telegram/messenger/R$string;->PrivacySettings:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    sget v10, Lorg/telegram/messenger/R$drawable;->msg2_secret:I

    new-instance v11, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda65;

    invoke-direct {v11, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda65;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/16 v6, 0x70

    const-string v8, "deleteAccountRow"

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    const-string/jumbo v5, "tg://settings/privacy/self-destruct"

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->withLink(Ljava/lang/String;)Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    move-result-object v45

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v5, Lorg/telegram/messenger/R$string;->PrivacyPaymentsClear:I

    .line 15049
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v5, Lorg/telegram/messenger/R$string;->PrivacySettings:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    sget v10, Lorg/telegram/messenger/R$drawable;->msg2_secret:I

    new-instance v11, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda66;

    invoke-direct {v11, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda66;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/16 v6, 0x71

    const-string v8, "paymentsClearRow"

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    const-string/jumbo v5, "tg://settings/privacy/data-settings/clear-payment-info"

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->withLink(Ljava/lang/String;)Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    move-result-object v46

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v5, Lorg/telegram/messenger/R$string;->WebSessionsTitle:I

    .line 15050
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v5, Lorg/telegram/messenger/R$string;->PrivacySettings:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    sget v9, Lorg/telegram/messenger/R$drawable;->msg2_secret:I

    new-instance v10, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda67;

    invoke-direct {v10, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda67;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/16 v6, 0x72

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v10}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    const-string/jumbo v5, "tg://settings/privacy/active-websites"

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->withLink(Ljava/lang/String;)Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    move-result-object v47

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v5, Lorg/telegram/messenger/R$string;->SyncContactsDelete:I

    .line 15051
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v5, Lorg/telegram/messenger/R$string;->PrivacySettings:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    sget v10, Lorg/telegram/messenger/R$drawable;->msg2_secret:I

    new-instance v11, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda68;

    invoke-direct {v11, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda68;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/16 v6, 0x73

    const-string v8, "contactsDeleteRow"

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    const-string/jumbo v5, "tg://settings/privacy/data-settings/delete-synced"

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->withLink(Ljava/lang/String;)Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    move-result-object v48

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v5, Lorg/telegram/messenger/R$string;->SyncContacts:I

    .line 15052
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v5, Lorg/telegram/messenger/R$string;->PrivacySettings:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    sget v10, Lorg/telegram/messenger/R$drawable;->msg2_secret:I

    new-instance v11, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda69;

    invoke-direct {v11, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda69;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/16 v6, 0x74

    const-string v8, "contactsSyncRow"

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    const-string/jumbo v5, "tg://settings/privacy/data-settings/sync-contacts"

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->withLink(Ljava/lang/String;)Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    move-result-object v49

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v5, Lorg/telegram/messenger/R$string;->SuggestContacts:I

    .line 15053
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v5, Lorg/telegram/messenger/R$string;->PrivacySettings:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    sget v10, Lorg/telegram/messenger/R$drawable;->msg2_secret:I

    new-instance v11, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda70;

    invoke-direct {v11, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda70;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/16 v6, 0x75

    const-string v8, "contactsSuggestRow"

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    const-string/jumbo v5, "tg://settings/privacy/data-settings/suggest-contacts"

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->withLink(Ljava/lang/String;)Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    move-result-object v50

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v5, Lorg/telegram/messenger/R$string;->MapPreviewProvider:I

    .line 15054
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v5, Lorg/telegram/messenger/R$string;->PrivacySettings:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    sget v10, Lorg/telegram/messenger/R$drawable;->msg2_secret:I

    new-instance v11, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda71;

    invoke-direct {v11, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda71;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/16 v6, 0x76

    const-string/jumbo v8, "secretMapRow"

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    const-string/jumbo v5, "tg://settings/privacy/data-settings/map-provider"

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->withLink(Ljava/lang/String;)Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    move-result-object v51

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v5, Lorg/telegram/messenger/R$string;->SecretWebPage:I

    .line 15055
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v5, Lorg/telegram/messenger/R$string;->PrivacySettings:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    sget v10, Lorg/telegram/messenger/R$drawable;->msg2_secret:I

    new-instance v11, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda72;

    invoke-direct {v11, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda72;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/16 v6, 0x77

    const-string/jumbo v8, "secretWebpageRow"

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    const-string/jumbo v5, "tg://settings/privacy/data-settings/link-previews"

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->withLink(Ljava/lang/String;)Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    move-result-object v52

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v5, Lorg/telegram/messenger/R$string;->Devices:I

    .line 15057
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v8, Lorg/telegram/messenger/R$drawable;->msg2_devices:I

    new-instance v9, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda74;

    invoke-direct {v9, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda74;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/16 v6, 0x78

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;ILjava/lang/Runnable;)V

    invoke-virtual {v4, v12}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->withLink(Ljava/lang/String;)Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    move-result-object v53

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v5, Lorg/telegram/messenger/R$string;->TerminateAllSessions:I

    .line 15058
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v5, Lorg/telegram/messenger/R$string;->Devices:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    sget v10, Lorg/telegram/messenger/R$drawable;->msg2_devices:I

    new-instance v11, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda75;

    invoke-direct {v11, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda75;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/16 v6, 0x79

    const-string/jumbo v8, "terminateAllSessionsRow"

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    const-string/jumbo v5, "tg://settings/devices/terminate-sessions"

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->withLink(Ljava/lang/String;)Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    move-result-object v54

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v5, Lorg/telegram/messenger/R$string;->LinkDesktopDevice:I

    .line 15059
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v5, Lorg/telegram/messenger/R$string;->Devices:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    sget v9, Lorg/telegram/messenger/R$drawable;->msg2_devices:I

    new-instance v10, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda76;

    invoke-direct {v10, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda76;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/16 v6, 0x7a

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v10}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    const-string/jumbo v5, "tg://settings/devices/link-desktop"

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->withLink(Ljava/lang/String;)Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    move-result-object v55

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v5, Lorg/telegram/messenger/R$string;->DataSettings:I

    .line 15061
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v8, Lorg/telegram/messenger/R$drawable;->msg2_data:I

    new-instance v9, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda77;

    invoke-direct {v9, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda77;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/16 v6, 0xc8

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;ILjava/lang/Runnable;)V

    const-string/jumbo v5, "tg://settings/privacy/data-settings"

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->withLink(Ljava/lang/String;)Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    move-result-object v56

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v5, Lorg/telegram/messenger/R$string;->DataUsage:I

    .line 15062
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v5, Lorg/telegram/messenger/R$string;->DataSettings:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    sget v10, Lorg/telegram/messenger/R$drawable;->msg2_data:I

    new-instance v11, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda78;

    invoke-direct {v11, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda78;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/16 v6, 0xc9

    const-string/jumbo v8, "usageSectionRow"

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    move-object/from16 v57, v4

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v5, Lorg/telegram/messenger/R$string;->StorageUsage:I

    .line 15063
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v5, Lorg/telegram/messenger/R$string;->DataSettings:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    sget v9, Lorg/telegram/messenger/R$drawable;->msg2_data:I

    new-instance v10, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda79;

    invoke-direct {v10, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda79;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/16 v6, 0xca

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v10}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    const-string/jumbo v5, "tg://settings/data/storage"

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->withLink(Ljava/lang/String;)Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    move-result-object v58

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v5, Lorg/telegram/messenger/R$string;->KeepMedia:I

    .line 15064
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v5, Lorg/telegram/messenger/R$string;->DataSettings:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    sget v5, Lorg/telegram/messenger/R$string;->StorageUsage:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    sget v11, Lorg/telegram/messenger/R$drawable;->msg2_data:I

    new-instance v12, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda80;

    invoke-direct {v12, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda80;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/16 v6, 0xcb

    const-string v8, "keepMediaRow"

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v12}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    move-object/from16 v59, v4

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v5, Lorg/telegram/messenger/R$string;->ClearMediaCache:I

    .line 15065
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v5, Lorg/telegram/messenger/R$string;->DataSettings:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    sget v5, Lorg/telegram/messenger/R$string;->StorageUsage:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    sget v11, Lorg/telegram/messenger/R$drawable;->msg2_data:I

    new-instance v12, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda81;

    invoke-direct {v12, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda81;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/16 v6, 0xcc

    const-string v8, "cacheRow"

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v12}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    move-object/from16 v60, v4

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v5, Lorg/telegram/messenger/R$string;->LocalDatabase:I

    .line 15066
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v5, Lorg/telegram/messenger/R$string;->DataSettings:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    sget v5, Lorg/telegram/messenger/R$string;->StorageUsage:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    sget v11, Lorg/telegram/messenger/R$drawable;->msg2_data:I

    new-instance v12, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda82;

    invoke-direct {v12, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda82;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/16 v6, 0xcd

    const-string v8, "databaseRow"

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v12}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    move-object/from16 v61, v4

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v5, Lorg/telegram/messenger/R$string;->NetworkUsage:I

    .line 15067
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v5, Lorg/telegram/messenger/R$string;->DataSettings:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    sget v9, Lorg/telegram/messenger/R$drawable;->msg2_data:I

    new-instance v10, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda83;

    invoke-direct {v10, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda83;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/16 v6, 0xce

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v10}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    const-string/jumbo v5, "tg://settings/data/usage"

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->withLink(Ljava/lang/String;)Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    move-result-object v62

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v5, Lorg/telegram/messenger/R$string;->AutomaticMediaDownload:I

    .line 15068
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v5, Lorg/telegram/messenger/R$string;->DataSettings:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    sget v10, Lorg/telegram/messenger/R$drawable;->msg2_data:I

    new-instance v11, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda85;

    invoke-direct {v11, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda85;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/16 v6, 0xcf

    const-string v8, "mediaDownloadSectionRow"

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    move-object/from16 v63, v4

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v5, Lorg/telegram/messenger/R$string;->WhenUsingMobileData:I

    .line 15069
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v5, Lorg/telegram/messenger/R$string;->DataSettings:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    sget v9, Lorg/telegram/messenger/R$drawable;->msg2_data:I

    new-instance v10, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda86;

    invoke-direct {v10, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda86;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/16 v6, 0xd0

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v10}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    move-object/from16 v64, v4

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v5, Lorg/telegram/messenger/R$string;->WhenConnectedOnWiFi:I

    .line 15070
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v5, Lorg/telegram/messenger/R$string;->DataSettings:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    sget v9, Lorg/telegram/messenger/R$drawable;->msg2_data:I

    new-instance v10, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda87;

    invoke-direct {v10, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda87;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/16 v6, 0xd1

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v10}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    move-object/from16 v65, v4

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v5, Lorg/telegram/messenger/R$string;->WhenRoaming:I

    .line 15071
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v5, Lorg/telegram/messenger/R$string;->DataSettings:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    sget v9, Lorg/telegram/messenger/R$drawable;->msg2_data:I

    new-instance v10, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda88;

    invoke-direct {v10, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda88;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/16 v6, 0xd2

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v10}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    move-object/from16 v66, v4

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v5, Lorg/telegram/messenger/R$string;->ResetAutomaticMediaDownload:I

    .line 15072
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v5, Lorg/telegram/messenger/R$string;->DataSettings:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    sget v10, Lorg/telegram/messenger/R$drawable;->msg2_data:I

    new-instance v11, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda89;

    invoke-direct {v11, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda89;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/16 v6, 0xd3

    const-string v8, "resetDownloadRow"

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    const-string/jumbo v5, "tg://settings/data/auto-download/reset"

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->withLink(Ljava/lang/String;)Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    move-result-object v67

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v5, Lorg/telegram/messenger/R$string;->Streaming:I

    .line 15073
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v5, Lorg/telegram/messenger/R$string;->DataSettings:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    sget v10, Lorg/telegram/messenger/R$drawable;->msg2_data:I

    new-instance v11, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda90;

    invoke-direct {v11, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda90;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/16 v6, 0xd7

    const-string/jumbo v8, "streamSectionRow"

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    move-object/from16 v68, v4

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v5, Lorg/telegram/messenger/R$string;->EnableStreaming:I

    .line 15074
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v5, Lorg/telegram/messenger/R$string;->DataSettings:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    sget v10, Lorg/telegram/messenger/R$drawable;->msg2_data:I

    new-instance v11, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda91;

    invoke-direct {v11, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda91;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/16 v6, 0xd8

    const-string v8, "enableStreamRow"

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    move-object/from16 v69, v4

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v5, Lorg/telegram/messenger/R$string;->Calls:I

    .line 15075
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v5, Lorg/telegram/messenger/R$string;->DataSettings:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    sget v10, Lorg/telegram/messenger/R$drawable;->msg2_data:I

    new-instance v11, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda92;

    invoke-direct {v11, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda92;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/16 v6, 0xd9

    const-string v8, "callsSectionRow"

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    move-object/from16 v70, v4

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v5, Lorg/telegram/messenger/R$string;->VoipUseLessData:I

    .line 15076
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v5, Lorg/telegram/messenger/R$string;->DataSettings:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    sget v10, Lorg/telegram/messenger/R$drawable;->msg2_data:I

    new-instance v11, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda93;

    invoke-direct {v11, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda93;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/16 v6, 0xda

    const-string/jumbo v8, "useLessDataForCallsRow"

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    const-string/jumbo v5, "tg://settings/data/use-less-data"

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->withLink(Ljava/lang/String;)Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    move-result-object v71

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v5, Lorg/telegram/messenger/R$string;->VoipQuickReplies:I

    .line 15077
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v5, Lorg/telegram/messenger/R$string;->DataSettings:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    sget v10, Lorg/telegram/messenger/R$drawable;->msg2_data:I

    new-instance v11, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda94;

    invoke-direct {v11, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda94;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/16 v6, 0xdb

    const-string v8, "quickRepliesRow"

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    move-object/from16 v72, v4

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v5, Lorg/telegram/messenger/R$string;->ProxySettings:I

    .line 15078
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v5, Lorg/telegram/messenger/R$string;->DataSettings:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    sget v9, Lorg/telegram/messenger/R$drawable;->msg2_data:I

    new-instance v10, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda96;

    invoke-direct {v10, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda96;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/16 v6, 0xdc

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v10}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    const-string/jumbo v5, "tg://settings/data/proxy"

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->withLink(Ljava/lang/String;)Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    move-result-object v73

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v5, Lorg/telegram/messenger/R$string;->UseProxyForCalls:I

    .line 15079
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v5, Lorg/telegram/messenger/R$string;->DataSettings:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    sget v5, Lorg/telegram/messenger/R$string;->ProxySettings:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    sget v11, Lorg/telegram/messenger/R$drawable;->msg2_data:I

    new-instance v12, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda97;

    invoke-direct {v12, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda97;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/16 v6, 0xdd

    const-string v8, "callsRow"

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v12}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    const-string/jumbo v5, "tg://settings/data/proxy/use-for-calls"

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->withLink(Ljava/lang/String;)Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    move-result-object v74

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v5, Lorg/telegram/messenger/R$string;->PrivacyDeleteCloudDrafts:I

    .line 15080
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v5, Lorg/telegram/messenger/R$string;->DataSettings:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    sget v10, Lorg/telegram/messenger/R$drawable;->msg2_data:I

    new-instance v11, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda98;

    invoke-direct {v11, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda98;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/16 v6, 0x6f

    const-string v8, "clearDraftsRow"

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    const-string/jumbo v5, "tg://settings/privacy/data-settings/delete-cloud-drafts"

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->withLink(Ljava/lang/String;)Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    move-result-object v75

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v5, Lorg/telegram/messenger/R$string;->SaveToGallery:I

    .line 15081
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v5, Lorg/telegram/messenger/R$string;->DataSettings:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    sget v10, Lorg/telegram/messenger/R$drawable;->msg2_data:I

    new-instance v11, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda99;

    invoke-direct {v11, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda99;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/16 v6, 0xde

    const-string v8, "saveToGallerySectionRow"

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    move-object/from16 v76, v4

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v5, Lorg/telegram/messenger/R$string;->SaveToGalleryPrivate:I

    .line 15082
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v5, Lorg/telegram/messenger/R$string;->DataSettings:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    sget v5, Lorg/telegram/messenger/R$string;->SaveToGallery:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    sget v11, Lorg/telegram/messenger/R$drawable;->msg2_data:I

    new-instance v12, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda100;

    invoke-direct {v12, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda100;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/16 v6, 0xdf

    const-string v8, "saveToGalleryPeerRow"

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v12}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    const-string/jumbo v5, "tg://settings/data/save-to-photos/chats"

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->withLink(Ljava/lang/String;)Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    move-result-object v77

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v5, Lorg/telegram/messenger/R$string;->SaveToGalleryGroups:I

    .line 15083
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v5, Lorg/telegram/messenger/R$string;->DataSettings:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    sget v5, Lorg/telegram/messenger/R$string;->SaveToGallery:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    sget v11, Lorg/telegram/messenger/R$drawable;->msg2_data:I

    new-instance v12, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda101;

    invoke-direct {v12, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda101;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/16 v6, 0xe0

    const-string v8, "saveToGalleryGroupsRow"

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v12}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    const-string/jumbo v5, "tg://settings/data/save-to-photos/groups"

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->withLink(Ljava/lang/String;)Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    move-result-object v78

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v5, Lorg/telegram/messenger/R$string;->SaveToGalleryChannels:I

    .line 15084
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v5, Lorg/telegram/messenger/R$string;->DataSettings:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    sget v5, Lorg/telegram/messenger/R$string;->SaveToGallery:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    sget v11, Lorg/telegram/messenger/R$drawable;->msg2_data:I

    new-instance v12, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda102;

    invoke-direct {v12, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda102;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/16 v6, 0xe1

    const-string v8, "saveToGalleryChannelsRow"

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v12}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    const-string/jumbo v5, "tg://settings/data/save-to-photos/channels"

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->withLink(Ljava/lang/String;)Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    move-result-object v79

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v5, Lorg/telegram/messenger/R$string;->ChatSettings:I

    .line 15086
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v8, Lorg/telegram/messenger/R$drawable;->msg2_discussion:I

    new-instance v9, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda103;

    invoke-direct {v9, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda103;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/16 v6, 0x12c

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;ILjava/lang/Runnable;)V

    const-string/jumbo v5, "tg://settings/appearance/themes"

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->withLink(Ljava/lang/String;)Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    move-result-object v80

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v5, Lorg/telegram/messenger/R$string;->TextSizeHeader:I

    .line 15087
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v5, Lorg/telegram/messenger/R$string;->ChatSettings:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    sget v10, Lorg/telegram/messenger/R$drawable;->msg2_discussion:I

    new-instance v11, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda104;

    invoke-direct {v11, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda104;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/16 v6, 0x12d

    const-string/jumbo v8, "textSizeHeaderRow"

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    const-string/jumbo v5, "tg://settings/appearance/text-size"

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->withLink(Ljava/lang/String;)Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    move-result-object v81

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v5, Lorg/telegram/messenger/R$string;->ChangeChatBackground:I

    .line 15088
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v5, Lorg/telegram/messenger/R$string;->ChatSettings:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    sget v9, Lorg/telegram/messenger/R$drawable;->msg2_discussion:I

    new-instance v10, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda105;

    invoke-direct {v10, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda105;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/16 v6, 0x12e

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v10}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    const-string/jumbo v5, "tg://settings/appearance/wallpapers"

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->withLink(Ljava/lang/String;)Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    move-result-object v82

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v5, Lorg/telegram/messenger/R$string;->SetColor:I

    .line 15089
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v5, Lorg/telegram/messenger/R$string;->ChatSettings:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    sget v5, Lorg/telegram/messenger/R$string;->ChatBackground:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    sget v11, Lorg/telegram/messenger/R$drawable;->msg2_discussion:I

    new-instance v12, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda107;

    invoke-direct {v12, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda107;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/16 v6, 0x12f

    const/4 v8, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v12}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    move-object/from16 v83, v4

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v5, Lorg/telegram/messenger/R$string;->ResetChatBackgrounds:I

    .line 15090
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v5, Lorg/telegram/messenger/R$string;->ChatSettings:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    sget v5, Lorg/telegram/messenger/R$string;->ChatBackground:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    sget v11, Lorg/telegram/messenger/R$drawable;->msg2_discussion:I

    new-instance v12, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda108;

    invoke-direct {v12, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda108;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/16 v6, 0x130

    const-string v8, "resetRow"

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v12}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    move-object/from16 v84, v4

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v5, Lorg/telegram/messenger/R$string;->ColorTheme:I

    .line 15091
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v5, Lorg/telegram/messenger/R$string;->ChatSettings:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    sget v10, Lorg/telegram/messenger/R$drawable;->msg2_discussion:I

    new-instance v11, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda109;

    invoke-direct {v11, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda109;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/16 v6, 0x132

    const-string/jumbo v8, "themeHeaderRow"

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    move-object/from16 v85, v4

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v5, Lorg/telegram/messenger/R$string;->BrowseThemes:I

    .line 15092
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v5, Lorg/telegram/messenger/R$string;->ChatSettings:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    sget v10, Lorg/telegram/messenger/R$drawable;->msg2_discussion:I

    new-instance v11, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda110;

    invoke-direct {v11, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda110;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/16 v6, 0x13f

    const/4 v8, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    move-object/from16 v86, v4

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v5, Lorg/telegram/messenger/R$string;->CreateNewTheme:I

    .line 15093
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v5, Lorg/telegram/messenger/R$string;->ChatSettings:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    sget v5, Lorg/telegram/messenger/R$string;->BrowseThemes:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    sget v11, Lorg/telegram/messenger/R$drawable;->msg2_discussion:I

    new-instance v12, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda111;

    invoke-direct {v12, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda111;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/16 v6, 0x140

    const-string v8, "createNewThemeRow"

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v12}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    const-string/jumbo v5, "tg://settings/appearance/themes/create"

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->withLink(Ljava/lang/String;)Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    move-result-object v87

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v5, Lorg/telegram/messenger/R$string;->BubbleRadius:I

    .line 15094
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v5, Lorg/telegram/messenger/R$string;->ChatSettings:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    sget v10, Lorg/telegram/messenger/R$drawable;->msg2_discussion:I

    new-instance v11, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda112;

    invoke-direct {v11, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda112;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/16 v6, 0x141

    const-string v8, "bubbleRadiusHeaderRow"

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    const-string/jumbo v5, "tg://settings/appearance/message-corners"

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->withLink(Ljava/lang/String;)Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    move-result-object v88

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v5, Lorg/telegram/messenger/R$string;->ChatList:I

    .line 15095
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v5, Lorg/telegram/messenger/R$string;->ChatSettings:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    sget v10, Lorg/telegram/messenger/R$drawable;->msg2_discussion:I

    new-instance v11, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda113;

    invoke-direct {v11, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda113;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/16 v6, 0x142

    const-string v8, "chatListHeaderRow"

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    move-object/from16 v89, v4

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v5, Lorg/telegram/messenger/R$string;->ChatListSwipeGesture:I

    .line 15096
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v5, Lorg/telegram/messenger/R$string;->ChatSettings:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    sget v10, Lorg/telegram/messenger/R$drawable;->msg2_discussion:I

    new-instance v11, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda114;

    invoke-direct {v11, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda114;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/16 v6, 0x143

    const-string/jumbo v8, "swipeGestureHeaderRow"

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    move-object/from16 v90, v4

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v5, Lorg/telegram/messenger/R$string;->AppIcon:I

    .line 15097
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v5, Lorg/telegram/messenger/R$string;->ChatSettings:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    sget v10, Lorg/telegram/messenger/R$drawable;->msg2_discussion:I

    new-instance v11, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda115;

    invoke-direct {v11, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda115;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/16 v6, 0x144

    const-string v8, "appIconHeaderRow"

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    const-string/jumbo v5, "tg://settings/appearance/app-icon"

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->withLink(Ljava/lang/String;)Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    move-result-object v91

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v5, Lorg/telegram/messenger/R$string;->AutoNightTheme:I

    .line 15098
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v5, Lorg/telegram/messenger/R$string;->ChatSettings:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    sget v9, Lorg/telegram/messenger/R$drawable;->msg2_discussion:I

    new-instance v10, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda116;

    invoke-direct {v10, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda116;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/16 v6, 0x131

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v10}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    move-object/from16 v92, v4

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v5, Lorg/telegram/messenger/R$string;->NextMediaTap:I

    .line 15099
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v5, Lorg/telegram/messenger/R$string;->ChatSettings:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    sget v10, Lorg/telegram/messenger/R$drawable;->msg2_discussion:I

    new-instance v11, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda118;

    invoke-direct {v11, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda118;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/16 v6, 0x148

    const-string v8, "nextMediaTapRow"

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    const-string/jumbo v5, "tg://settings/appearance/tap-for-next-media"

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->withLink(Ljava/lang/String;)Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    move-result-object v93

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v5, Lorg/telegram/messenger/R$string;->RaiseToListen:I

    .line 15100
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v5, Lorg/telegram/messenger/R$string;->ChatSettings:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    sget v10, Lorg/telegram/messenger/R$drawable;->msg2_discussion:I

    new-instance v11, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda119;

    invoke-direct {v11, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda119;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/16 v6, 0x147

    const-string v8, "raiseToListenRow"

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    const-string/jumbo v5, "tg://settings/data/raise-to-listen"

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->withLink(Ljava/lang/String;)Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    move-result-object v94

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v5, Lorg/telegram/messenger/R$string;->RaiseToSpeak:I

    .line 15101
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v5, Lorg/telegram/messenger/R$string;->ChatSettings:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    sget v10, Lorg/telegram/messenger/R$drawable;->msg2_discussion:I

    new-instance v11, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda120;

    invoke-direct {v11, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda120;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/16 v6, 0x136

    const-string v8, "raiseToSpeakRow"

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    const-string/jumbo v5, "tg://settings/data/raise-to-speak"

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->withLink(Ljava/lang/String;)Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    move-result-object v95

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v5, Lorg/telegram/messenger/R$string;->PauseMusicOnMedia:I

    .line 15102
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v5, Lorg/telegram/messenger/R$string;->ChatSettings:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    sget v10, Lorg/telegram/messenger/R$drawable;->msg2_discussion:I

    new-instance v11, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda121;

    invoke-direct {v11, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda121;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/16 v6, 0x146

    const-string v8, "pauseOnMediaRow"

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    const-string/jumbo v5, "tg://settings/data/pause-music"

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->withLink(Ljava/lang/String;)Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    move-result-object v96

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v5, Lorg/telegram/messenger/R$string;->MicrophoneForVoiceMessages:I

    .line 15103
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v5, Lorg/telegram/messenger/R$string;->ChatSettings:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    sget v10, Lorg/telegram/messenger/R$drawable;->msg2_discussion:I

    new-instance v11, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda122;

    invoke-direct {v11, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda122;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/16 v6, 0x145

    const-string v8, "bluetoothScoRow"

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    move-object/from16 v97, v4

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v5, Lorg/telegram/messenger/R$string;->DirectShare:I

    .line 15104
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v5, Lorg/telegram/messenger/R$string;->ChatSettings:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    sget v10, Lorg/telegram/messenger/R$drawable;->msg2_discussion:I

    new-instance v11, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda123;

    invoke-direct {v11, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda123;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/16 v6, 0x134

    const-string v8, "directShareRow"

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    move-object/from16 v98, v4

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v5, Lorg/telegram/messenger/R$string;->SendByEnter:I

    .line 15105
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v5, Lorg/telegram/messenger/R$string;->ChatSettings:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    sget v10, Lorg/telegram/messenger/R$drawable;->msg2_discussion:I

    new-instance v11, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda124;

    invoke-direct {v11, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda124;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/16 v6, 0x137

    const-string/jumbo v8, "sendByEnterRow"

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    move-object/from16 v99, v4

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v5, Lorg/telegram/messenger/R$string;->DistanceUnits:I

    .line 15106
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v5, Lorg/telegram/messenger/R$string;->ChatSettings:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    sget v10, Lorg/telegram/messenger/R$drawable;->msg2_discussion:I

    new-instance v11, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda125;

    invoke-direct {v11, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda125;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/16 v6, 0x13e

    const-string v8, "distanceRow"

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    move-object/from16 v100, v4

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v5, Lorg/telegram/messenger/R$string;->StickersName:I

    .line 15108
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v8, Lorg/telegram/messenger/R$drawable;->msg2_sticker:I

    new-instance v9, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda126;

    invoke-direct {v9, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda126;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/16 v6, 0x258

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;ILjava/lang/Runnable;)V

    const-string/jumbo v5, "tg://settings/appearance/stickers-and-emoji"

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->withLink(Ljava/lang/String;)Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    move-result-object v101

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v5, Lorg/telegram/messenger/R$string;->SuggestStickers:I

    .line 15109
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v5, Lorg/telegram/messenger/R$string;->StickersName:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    sget v10, Lorg/telegram/messenger/R$drawable;->msg2_sticker:I

    new-instance v11, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda127;

    invoke-direct {v11, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda127;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/16 v6, 0x259

    const-string/jumbo v8, "suggestRow"

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    move-object/from16 v102, v4

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v5, Lorg/telegram/messenger/R$string;->FeaturedStickers:I

    .line 15110
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v5, Lorg/telegram/messenger/R$string;->StickersName:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    sget v10, Lorg/telegram/messenger/R$drawable;->msg2_sticker:I

    new-instance v11, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda129;

    invoke-direct {v11, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda129;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/16 v6, 0x25a

    const-string v8, "featuredStickersHeaderRow"

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    move-object/from16 v103, v4

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v5, Lorg/telegram/messenger/R$string;->Masks:I

    .line 15111
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v5, Lorg/telegram/messenger/R$string;->StickersName:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    sget v10, Lorg/telegram/messenger/R$drawable;->msg2_sticker:I

    new-instance v11, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda130;

    invoke-direct {v11, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda130;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/16 v6, 0x25b

    const/4 v8, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    move-object/from16 v104, v4

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v5, Lorg/telegram/messenger/R$string;->ArchivedStickers:I

    .line 15112
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v5, Lorg/telegram/messenger/R$string;->StickersName:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    sget v10, Lorg/telegram/messenger/R$drawable;->msg2_sticker:I

    new-instance v11, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda131;

    invoke-direct {v11, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda131;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/16 v6, 0x25c

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    const-string/jumbo v5, "tg://settings/appearance/stickers-and-emoji/archived"

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->withLink(Ljava/lang/String;)Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    move-result-object v105

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v5, Lorg/telegram/messenger/R$string;->ArchivedMasks:I

    .line 15113
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v5, Lorg/telegram/messenger/R$string;->StickersName:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    sget v10, Lorg/telegram/messenger/R$drawable;->msg2_sticker:I

    new-instance v11, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda132;

    invoke-direct {v11, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda132;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/16 v6, 0x25d

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    move-object/from16 v106, v4

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v5, Lorg/telegram/messenger/R$string;->LargeEmoji:I

    .line 15114
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v5, Lorg/telegram/messenger/R$string;->StickersName:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    sget v10, Lorg/telegram/messenger/R$drawable;->msg2_sticker:I

    new-instance v11, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda133;

    invoke-direct {v11, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda133;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/16 v6, 0x25e

    const-string v8, "largeEmojiRow"

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    const-string/jumbo v5, "tg://settings/appearance/stickers-and-emoji/emoji/large"

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->withLink(Ljava/lang/String;)Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    move-result-object v107

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v5, Lorg/telegram/messenger/R$string;->LoopAnimatedStickers:I

    .line 15115
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v5, Lorg/telegram/messenger/R$string;->StickersName:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    sget v10, Lorg/telegram/messenger/R$drawable;->msg2_sticker:I

    new-instance v11, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda134;

    invoke-direct {v11, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda134;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/16 v6, 0x25f

    const-string v8, "loopRow"

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    move-object/from16 v108, v4

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v5, Lorg/telegram/messenger/R$string;->Emoji:I

    .line 15116
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v5, Lorg/telegram/messenger/R$string;->StickersName:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    sget v10, Lorg/telegram/messenger/R$drawable;->input_smile:I

    new-instance v11, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda135;

    invoke-direct {v11, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda135;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/16 v6, 0x260

    const/4 v8, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    const-string/jumbo v5, "tg://settings/appearance/stickers-and-emoji/emoji"

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->withLink(Ljava/lang/String;)Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    move-result-object v109

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v5, Lorg/telegram/messenger/R$string;->SuggestAnimatedEmoji:I

    .line 15117
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v5, Lorg/telegram/messenger/R$string;->StickersName:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    sget v5, Lorg/telegram/messenger/R$string;->Emoji:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    sget v11, Lorg/telegram/messenger/R$drawable;->input_smile:I

    new-instance v12, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda136;

    invoke-direct {v12, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda136;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/16 v6, 0x261

    const-string/jumbo v8, "suggestAnimatedEmojiRow"

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v12}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    const-string/jumbo v5, "tg://settings/appearance/stickers-and-emoji/emoji/suggest"

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->withLink(Ljava/lang/String;)Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    move-result-object v110

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v5, Lorg/telegram/messenger/R$string;->FeaturedEmojiPacks:I

    .line 15118
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v5, Lorg/telegram/messenger/R$string;->StickersName:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    sget v5, Lorg/telegram/messenger/R$string;->Emoji:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    sget v11, Lorg/telegram/messenger/R$drawable;->input_smile:I

    new-instance v12, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda137;

    invoke-direct {v12, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda137;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/16 v6, 0x262

    const-string v8, "featuredStickersHeaderRow"

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v12}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    move-object/from16 v111, v4

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v5, Lorg/telegram/messenger/R$string;->DoubleTapSetting:I

    .line 15119
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v5, Lorg/telegram/messenger/R$string;->StickersName:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    sget v10, Lorg/telegram/messenger/R$drawable;->msg2_sticker:I

    new-instance v11, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda138;

    invoke-direct {v11, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda138;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/16 v6, 0x263

    const/4 v8, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    const-string/jumbo v5, "tg://settings/appearance/stickers-and-emoji/emoji/quick-reaction"

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->withLink(Ljava/lang/String;)Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    move-result-object v112

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v5, Lorg/telegram/messenger/R$string;->Filters:I

    .line 15121
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v9, Lorg/telegram/messenger/R$drawable;->msg2_folder:I

    new-instance v10, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v10, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/16 v6, 0x2bc

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v10}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    const-string/jumbo v5, "tg://settings/folders"

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->withLink(Ljava/lang/String;)Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    move-result-object v113

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v5, Lorg/telegram/messenger/R$string;->CreateNewFilter:I

    .line 15122
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v5, Lorg/telegram/messenger/R$string;->Filters:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    sget v10, Lorg/telegram/messenger/R$drawable;->msg2_folder:I

    new-instance v11, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v11, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/16 v6, 0x2bd

    const-string v8, "createFilterRow"

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    const-string/jumbo v5, "tg://settings/folders/create"

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->withLink(Ljava/lang/String;)Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    move-result-object v114

    const/4 v4, -0x1

    .line 15124
    invoke-static {v1, v4}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->isPremiumFeatureAvailable(II)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v5, Lorg/telegram/messenger/R$string;->TelegramPremium:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v8, Lorg/telegram/messenger/R$drawable;->msg_settings_premium:I

    new-instance v9, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda3;

    invoke-direct {v9, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/16 v6, 0x320

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;ILjava/lang/Runnable;)V

    move-object/from16 v115, v4

    goto :goto_2

    :cond_2
    move-object/from16 v115, v32

    :goto_2
    const/4 v11, 0x0

    .line 15125
    invoke-static {v1, v11}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->isPremiumFeatureAvailable(II)Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v5, Lorg/telegram/messenger/R$string;->PremiumPreviewLimits:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v5, Lorg/telegram/messenger/R$string;->TelegramPremium:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    sget v9, Lorg/telegram/messenger/R$drawable;->msg_settings_premium:I

    new-instance v10, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda4;

    invoke-direct {v10, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/16 v6, 0x321

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v10}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    move-object/from16 v116, v4

    goto :goto_3

    :cond_3
    move-object/from16 v116, v32

    :goto_3
    const/16 v12, 0xb

    .line 15126
    invoke-static {v1, v12}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->isPremiumFeatureAvailable(II)Z

    move-result v4

    if-eqz v4, :cond_4

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v5, Lorg/telegram/messenger/R$string;->PremiumPreviewEmoji:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v5, Lorg/telegram/messenger/R$string;->TelegramPremium:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    sget v9, Lorg/telegram/messenger/R$drawable;->msg_settings_premium:I

    new-instance v10, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda5;

    invoke-direct {v10, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/16 v6, 0x322

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v10}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    move-object/from16 v117, v4

    goto :goto_4

    :cond_4
    move-object/from16 v117, v32

    :goto_4
    const/4 v4, 0x1

    .line 15127
    invoke-static {v1, v4}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->isPremiumFeatureAvailable(II)Z

    move-result v5

    if-eqz v5, :cond_5

    move v5, v4

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v6, Lorg/telegram/messenger/R$string;->PremiumPreviewUploads:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v6, Lorg/telegram/messenger/R$string;->TelegramPremium:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    sget v9, Lorg/telegram/messenger/R$drawable;->msg_settings_premium:I

    new-instance v10, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda6;

    invoke-direct {v10, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/16 v6, 0x323

    move-object/from16 v118, v2

    move v2, v5

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v10}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    move-object/from16 v119, v4

    goto :goto_5

    :cond_5
    move-object/from16 v118, v2

    move v2, v4

    move-object/from16 v119, v32

    :goto_5
    const/4 v4, 0x2

    .line 15128
    invoke-static {v1, v4}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->isPremiumFeatureAvailable(II)Z

    move-result v5

    if-eqz v5, :cond_6

    move v5, v4

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v6, Lorg/telegram/messenger/R$string;->PremiumPreviewDownloadSpeed:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v6, Lorg/telegram/messenger/R$string;->TelegramPremium:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    sget v9, Lorg/telegram/messenger/R$drawable;->msg_settings_premium:I

    new-instance v10, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda7;

    invoke-direct {v10, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/16 v6, 0x324

    move/from16 v120, v5

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v10}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    move-object/from16 v121, v4

    goto :goto_6

    :cond_6
    move/from16 v120, v4

    move-object/from16 v121, v32

    :goto_6
    const/16 v4, 0x8

    .line 15129
    invoke-static {v1, v4}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->isPremiumFeatureAvailable(II)Z

    move-result v5

    if-eqz v5, :cond_7

    move v5, v4

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v6, Lorg/telegram/messenger/R$string;->PremiumPreviewVoiceToText:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v6, Lorg/telegram/messenger/R$string;->TelegramPremium:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    sget v9, Lorg/telegram/messenger/R$drawable;->msg_settings_premium:I

    new-instance v10, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda8;

    invoke-direct {v10, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/16 v6, 0x325

    move/from16 v122, v5

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v10}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    move-object/from16 v123, v4

    goto :goto_7

    :cond_7
    move/from16 v122, v4

    move-object/from16 v123, v32

    :goto_7
    const/4 v4, 0x3

    .line 15130
    invoke-static {v1, v4}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->isPremiumFeatureAvailable(II)Z

    move-result v5

    if-eqz v5, :cond_8

    move v5, v4

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v6, Lorg/telegram/messenger/R$string;->PremiumPreviewNoAds:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v6, Lorg/telegram/messenger/R$string;->TelegramPremium:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    sget v9, Lorg/telegram/messenger/R$drawable;->msg_settings_premium:I

    new-instance v10, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda9;

    invoke-direct {v10, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/16 v6, 0x326

    move/from16 v124, v5

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v10}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    move-object/from16 v125, v4

    goto :goto_8

    :cond_8
    move/from16 v124, v4

    move-object/from16 v125, v32

    :goto_8
    const/4 v4, 0x4

    .line 15131
    invoke-static {v1, v4}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->isPremiumFeatureAvailable(II)Z

    move-result v5

    if-eqz v5, :cond_9

    move v5, v4

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v6, Lorg/telegram/messenger/R$string;->PremiumPreviewReactions:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v6, Lorg/telegram/messenger/R$string;->TelegramPremium:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    sget v9, Lorg/telegram/messenger/R$drawable;->msg_settings_premium:I

    new-instance v10, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda10;

    invoke-direct {v10, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/16 v6, 0x327

    move/from16 v126, v5

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v10}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    move-object/from16 v127, v4

    goto :goto_9

    :cond_9
    move/from16 v126, v4

    move-object/from16 v127, v32

    :goto_9
    const/4 v4, 0x5

    .line 15132
    invoke-static {v1, v4}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->isPremiumFeatureAvailable(II)Z

    move-result v5

    if-eqz v5, :cond_a

    move v5, v4

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v6, Lorg/telegram/messenger/R$string;->PremiumPreviewStickers:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v6, Lorg/telegram/messenger/R$string;->TelegramPremium:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    sget v9, Lorg/telegram/messenger/R$drawable;->msg_settings_premium:I

    new-instance v10, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda12;

    invoke-direct {v10, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/16 v6, 0x328

    move/from16 v128, v5

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v10}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    move-object/from16 v129, v4

    goto :goto_a

    :cond_a
    move/from16 v128, v4

    move-object/from16 v129, v32

    :goto_a
    const/16 v4, 0x9

    .line 15133
    invoke-static {v1, v4}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->isPremiumFeatureAvailable(II)Z

    move-result v5

    if-eqz v5, :cond_b

    move v5, v4

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v6, Lorg/telegram/messenger/R$string;->PremiumPreviewAdvancedChatManagement:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v6, Lorg/telegram/messenger/R$string;->TelegramPremium:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    sget v9, Lorg/telegram/messenger/R$drawable;->msg_settings_premium:I

    new-instance v10, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda13;

    invoke-direct {v10, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/16 v6, 0x329

    move/from16 v130, v5

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v10}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    move-object/from16 v131, v4

    goto :goto_b

    :cond_b
    move/from16 v130, v4

    move-object/from16 v131, v32

    :goto_b
    const/4 v4, 0x6

    .line 15134
    invoke-static {v1, v4}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->isPremiumFeatureAvailable(II)Z

    move-result v5

    if-eqz v5, :cond_c

    move v5, v4

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v6, Lorg/telegram/messenger/R$string;->PremiumPreviewProfileBadge:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v6, Lorg/telegram/messenger/R$string;->TelegramPremium:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    sget v9, Lorg/telegram/messenger/R$drawable;->msg_settings_premium:I

    new-instance v10, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda14;

    invoke-direct {v10, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/16 v6, 0x32a

    move/from16 v132, v5

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v10}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    move-object/from16 v133, v4

    goto :goto_c

    :cond_c
    move/from16 v132, v4

    move-object/from16 v133, v32

    :goto_c
    const/4 v4, 0x7

    .line 15135
    invoke-static {v1, v4}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->isPremiumFeatureAvailable(II)Z

    move-result v5

    if-eqz v5, :cond_d

    move v5, v4

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v6, Lorg/telegram/messenger/R$string;->PremiumPreviewAnimatedProfiles:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v6, Lorg/telegram/messenger/R$string;->TelegramPremium:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    sget v9, Lorg/telegram/messenger/R$drawable;->msg_settings_premium:I

    new-instance v10, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda15;

    invoke-direct {v10, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/16 v6, 0x32b

    move/from16 v134, v5

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v10}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    move-object/from16 v135, v4

    goto :goto_d

    :cond_d
    move/from16 v134, v4

    move-object/from16 v135, v32

    :goto_d
    const/16 v4, 0xa

    .line 15136
    invoke-static {v1, v4}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->isPremiumFeatureAvailable(II)Z

    move-result v5

    if-eqz v5, :cond_e

    move v5, v4

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v6, Lorg/telegram/messenger/R$string;->PremiumPreviewAppIcon:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v6, Lorg/telegram/messenger/R$string;->TelegramPremium:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    sget v9, Lorg/telegram/messenger/R$drawable;->msg_settings_premium:I

    new-instance v10, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda16;

    invoke-direct {v10, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/16 v6, 0x32c

    move/from16 v136, v5

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v10}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    move-object/from16 v137, v4

    goto :goto_e

    :cond_e
    move/from16 v136, v4

    move-object/from16 v137, v32

    :goto_e
    const/16 v4, 0xc

    .line 15137
    invoke-static {v1, v4}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->isPremiumFeatureAvailable(II)Z

    move-result v1

    if-eqz v1, :cond_f

    move v1, v4

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v5, Lorg/telegram/messenger/R$string;->PremiumPreviewEmojiStatus:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v5, Lorg/telegram/messenger/R$string;->TelegramPremium:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    sget v9, Lorg/telegram/messenger/R$drawable;->msg_settings_premium:I

    new-instance v10, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda17;

    invoke-direct {v10, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/16 v6, 0x32d

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v10}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    move-object/from16 v138, v4

    goto :goto_f

    :cond_f
    move v1, v4

    move-object/from16 v138, v32

    :goto_f
    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v5, Lorg/telegram/messenger/R$string;->PowerUsage:I

    .line 15139
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v9, Lorg/telegram/messenger/R$drawable;->msg2_battery:I

    new-instance v10, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda18;

    invoke-direct {v10, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/16 v6, 0x384

    const/4 v8, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v10}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    const-string/jumbo v5, "tg://settings/power-saving"

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->withLink(Ljava/lang/String;)Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    move-result-object v139

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v5, Lorg/telegram/messenger/R$string;->LiteOptionsStickers:I

    .line 15140
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v5, Lorg/telegram/messenger/R$string;->PowerUsage:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    sget v9, Lorg/telegram/messenger/R$drawable;->msg2_battery:I

    new-instance v10, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda19;

    invoke-direct {v10, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/16 v6, 0x385

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v10}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    const-string/jumbo v5, "tg://settings/power-saving/stickers"

    .line 15144
    invoke-virtual {v4, v5}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->withLink(Ljava/lang/String;)Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    move-result-object v140

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v5, Lorg/telegram/messenger/R$string;->LiteOptionsAutoplayKeyboard:I

    .line 15145
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v5, Lorg/telegram/messenger/R$string;->PowerUsage:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    sget v5, Lorg/telegram/messenger/R$string;->LiteOptionsStickers:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    move v5, v11

    sget v11, Lorg/telegram/messenger/R$drawable;->msg2_battery:I

    move v6, v12

    new-instance v12, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda20;

    invoke-direct {v12, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    move v8, v6

    const/16 v6, 0x386

    move/from16 v141, v8

    const/4 v8, 0x0

    move/from16 v142, v5

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v12}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    move-object/from16 v143, v4

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v5, Lorg/telegram/messenger/R$string;->LiteOptionsAutoplayChat:I

    .line 15151
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v5, Lorg/telegram/messenger/R$string;->PowerUsage:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    sget v5, Lorg/telegram/messenger/R$string;->LiteOptionsStickers:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    sget v11, Lorg/telegram/messenger/R$drawable;->msg2_battery:I

    new-instance v12, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda21;

    invoke-direct {v12, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/16 v6, 0x387

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v12}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    move-object/from16 v144, v4

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v5, Lorg/telegram/messenger/R$string;->LiteOptionsEmoji:I

    .line 15157
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v5, Lorg/telegram/messenger/R$string;->PowerUsage:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    sget v9, Lorg/telegram/messenger/R$drawable;->msg2_battery:I

    new-instance v10, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda23;

    invoke-direct {v10, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/16 v6, 0x388

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v10}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    const-string/jumbo v5, "tg://settings/power-saving/emoji"

    .line 15161
    invoke-virtual {v4, v5}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->withLink(Ljava/lang/String;)Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    move-result-object v145

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v5, Lorg/telegram/messenger/R$string;->LiteOptionsAutoplayKeyboard:I

    .line 15162
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v5, Lorg/telegram/messenger/R$string;->PowerUsage:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    sget v5, Lorg/telegram/messenger/R$string;->LiteOptionsEmoji:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    sget v11, Lorg/telegram/messenger/R$drawable;->msg2_battery:I

    new-instance v12, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda24;

    invoke-direct {v12, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda24;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/16 v6, 0x389

    const/4 v8, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v12}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    move-object/from16 v146, v4

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v5, Lorg/telegram/messenger/R$string;->LiteOptionsAutoplayReactions:I

    .line 15168
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v5, Lorg/telegram/messenger/R$string;->PowerUsage:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    sget v5, Lorg/telegram/messenger/R$string;->LiteOptionsEmoji:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    sget v11, Lorg/telegram/messenger/R$drawable;->msg2_battery:I

    new-instance v12, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda25;

    invoke-direct {v12, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda25;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/16 v6, 0x38a

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v12}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    move-object/from16 v147, v4

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v5, Lorg/telegram/messenger/R$string;->LiteOptionsAutoplayChat:I

    .line 15174
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v5, Lorg/telegram/messenger/R$string;->PowerUsage:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    sget v5, Lorg/telegram/messenger/R$string;->LiteOptionsEmoji:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    sget v11, Lorg/telegram/messenger/R$drawable;->msg2_battery:I

    new-instance v12, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda26;

    invoke-direct {v12, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda26;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/16 v6, 0x38b

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v12}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    move-object/from16 v148, v4

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v5, Lorg/telegram/messenger/R$string;->LiteOptionsChat:I

    .line 15180
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v5, Lorg/telegram/messenger/R$string;->PowerUsage:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    sget v9, Lorg/telegram/messenger/R$drawable;->msg2_battery:I

    new-instance v10, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda27;

    invoke-direct {v10, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda27;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/16 v6, 0x38c

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v10}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    const-string/jumbo v5, "tg://settings/power-saving/effects"

    .line 15184
    invoke-virtual {v4, v5}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->withLink(Ljava/lang/String;)Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    move-result-object v149

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v5, Lorg/telegram/messenger/R$string;->LiteOptionsBackground:I

    .line 15185
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v5, Lorg/telegram/messenger/R$string;->PowerUsage:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    sget v5, Lorg/telegram/messenger/R$string;->LiteOptionsChat:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    sget v11, Lorg/telegram/messenger/R$drawable;->msg2_battery:I

    new-instance v12, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda28;

    invoke-direct {v12, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda28;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/16 v6, 0x38d

    const/4 v8, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v12}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    const-string/jumbo v5, "tg://settings/power-saving/background"

    .line 15190
    invoke-virtual {v4, v5}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->withLink(Ljava/lang/String;)Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    move-result-object v150

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v5, Lorg/telegram/messenger/R$string;->LiteOptionsTopics:I

    .line 15191
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v5, Lorg/telegram/messenger/R$string;->PowerUsage:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    sget v5, Lorg/telegram/messenger/R$string;->LiteOptionsChat:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    sget v11, Lorg/telegram/messenger/R$drawable;->msg2_battery:I

    new-instance v12, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda29;

    invoke-direct {v12, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda29;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/16 v6, 0x38e

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v12}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    move-object/from16 v151, v4

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v5, Lorg/telegram/messenger/R$string;->LiteOptionsSpoiler:I

    .line 15197
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v5, Lorg/telegram/messenger/R$string;->PowerUsage:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    sget v5, Lorg/telegram/messenger/R$string;->LiteOptionsChat:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    sget v11, Lorg/telegram/messenger/R$drawable;->msg2_battery:I

    new-instance v12, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda30;

    invoke-direct {v12, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda30;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/16 v6, 0x38f

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v12}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    move-object/from16 v152, v4

    .line 15203
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v4

    if-lt v4, v2, :cond_10

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v5, Lorg/telegram/messenger/R$string;->LiteOptionsBlur2:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v5, Lorg/telegram/messenger/R$string;->PowerUsage:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    sget v5, Lorg/telegram/messenger/R$string;->LiteOptionsChat:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    sget v11, Lorg/telegram/messenger/R$drawable;->msg2_battery:I

    new-instance v12, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda31;

    invoke-direct {v12, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda31;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/16 v6, 0x146

    const/4 v8, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v12}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    move-object/from16 v32, v4

    .line 15208
    :cond_10
    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v5, Lorg/telegram/messenger/R$string;->LiteOptionsScale:I

    .line 15209
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v5, Lorg/telegram/messenger/R$string;->PowerUsage:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    sget v5, Lorg/telegram/messenger/R$string;->LiteOptionsChat:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    sget v11, Lorg/telegram/messenger/R$drawable;->msg2_battery:I

    new-instance v12, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda32;

    invoke-direct {v12, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda32;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/16 v6, 0x390

    const/4 v8, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v12}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    move-object v11, v4

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v5, Lorg/telegram/messenger/R$string;->LiteOptionsCalls:I

    .line 15215
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v5, Lorg/telegram/messenger/R$string;->PowerUsage:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    sget v9, Lorg/telegram/messenger/R$drawable;->msg2_battery:I

    new-instance v10, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda34;

    invoke-direct {v10, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda34;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/16 v6, 0x391

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v10}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    const-string/jumbo v5, "tg://settings/power-saving/call-animations"

    .line 15219
    invoke-virtual {v4, v5}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->withLink(Ljava/lang/String;)Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    move-result-object v12

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v5, Lorg/telegram/messenger/R$string;->LiteOptionsAutoplayVideo:I

    .line 15220
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v5, Lorg/telegram/messenger/R$string;->PowerUsage:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    sget v9, Lorg/telegram/messenger/R$drawable;->msg2_battery:I

    new-instance v10, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda35;

    invoke-direct {v10, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda35;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/16 v6, 0xd6

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v10}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    const-string/jumbo v5, "tg://settings/power-saving/videos"

    .line 15224
    invoke-virtual {v4, v5}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->withLink(Ljava/lang/String;)Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    move-result-object v153

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v5, Lorg/telegram/messenger/R$string;->LiteOptionsAutoplayGifs:I

    .line 15225
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v5, Lorg/telegram/messenger/R$string;->PowerUsage:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    sget v9, Lorg/telegram/messenger/R$drawable;->msg2_battery:I

    new-instance v10, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda36;

    invoke-direct {v10, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda36;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/16 v6, 0xd5

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v10}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    const-string/jumbo v5, "tg://settings/power-saving/gifs"

    .line 15229
    invoke-virtual {v4, v5}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->withLink(Ljava/lang/String;)Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    move-result-object v154

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v5, Lorg/telegram/messenger/R$string;->LiteSmoothTransitions:I

    .line 15230
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v5, Lorg/telegram/messenger/R$string;->PowerUsage:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    sget v9, Lorg/telegram/messenger/R$drawable;->msg2_battery:I

    new-instance v10, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda37;

    invoke-direct {v10, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda37;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/16 v6, 0x392

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v10}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    const-string/jumbo v5, "tg://settings/power-saving/transitions"

    .line 15234
    invoke-virtual {v4, v5}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->withLink(Ljava/lang/String;)Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    move-result-object v155

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v5, Lorg/telegram/messenger/R$string;->Language:I

    .line 15236
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v8, Lorg/telegram/messenger/R$drawable;->msg2_language:I

    new-instance v9, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda38;

    invoke-direct {v9, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda38;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/16 v6, 0x190

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;ILjava/lang/Runnable;)V

    const-string/jumbo v5, "tg://settings/language"

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->withLink(Ljava/lang/String;)Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    move-result-object v156

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v5, Lorg/telegram/messenger/R$string;->AskAQuestion:I

    .line 15240
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v5, Lorg/telegram/messenger/R$string;->SettingsHelp:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    sget v9, Lorg/telegram/messenger/R$drawable;->msg2_help:I

    new-instance v10, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda39;

    invoke-direct {v10, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda39;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/16 v6, 0x192

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v10}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    const-string/jumbo v5, "tg://settings/ask-question"

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->withLink(Ljava/lang/String;)Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    move-result-object v157

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v5, Lorg/telegram/messenger/R$string;->TelegramFAQ:I

    .line 15241
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v5, Lorg/telegram/messenger/R$string;->SettingsHelp:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    sget v9, Lorg/telegram/messenger/R$drawable;->msg2_help:I

    new-instance v10, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda40;

    invoke-direct {v10, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda40;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/16 v6, 0x193

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v10}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    const-string/jumbo v5, "tg://settings/faq"

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->withLink(Ljava/lang/String;)Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    move-result-object v158

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v5, Lorg/telegram/messenger/R$string;->PrivacyPolicy:I

    .line 15242
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v5, Lorg/telegram/messenger/R$string;->SettingsHelp:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    sget v9, Lorg/telegram/messenger/R$drawable;->msg2_help:I

    new-instance v10, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda41;

    invoke-direct {v10, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda41;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/16 v6, 0x194

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v10}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    const-string/jumbo v0, "tg://settings/privacy-policy"

    invoke-virtual {v4, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->withLink(Ljava/lang/String;)Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    move-result-object v0

    const/16 v4, 0x8a

    new-array v4, v4, [Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    aput-object v118, v4, v142

    aput-object v13, v4, v2

    aput-object v14, v4, v120

    aput-object v15, v4, v124

    aput-object v16, v4, v126

    aput-object v17, v4, v128

    aput-object v18, v4, v132

    aput-object v19, v4, v134

    aput-object v20, v4, v122

    aput-object v21, v4, v130

    aput-object v22, v4, v136

    aput-object v23, v4, v141

    aput-object v24, v4, v1

    const/16 v1, 0xd

    aput-object v25, v4, v1

    const/16 v1, 0xe

    aput-object v26, v4, v1

    const/16 v1, 0xf

    aput-object v27, v4, v1

    const/16 v1, 0x10

    aput-object v28, v4, v1

    const/16 v1, 0x11

    aput-object v29, v4, v1

    const/16 v1, 0x12

    aput-object v30, v4, v1

    const/16 v1, 0x13

    aput-object v31, v4, v1

    const/16 v1, 0x14

    aput-object v33, v4, v1

    const/16 v1, 0x15

    aput-object v34, v4, v1

    const/16 v1, 0x16

    aput-object v35, v4, v1

    const/16 v1, 0x17

    aput-object v36, v4, v1

    const/16 v1, 0x18

    aput-object v37, v4, v1

    const/16 v1, 0x19

    aput-object v38, v4, v1

    const/16 v1, 0x1a

    aput-object v39, v4, v1

    const/16 v1, 0x1b

    aput-object v40, v4, v1

    const/16 v1, 0x1c

    aput-object v41, v4, v1

    const/16 v1, 0x1d

    aput-object v42, v4, v1

    const/16 v1, 0x1e

    aput-object v43, v4, v1

    const/16 v1, 0x1f

    aput-object v44, v4, v1

    const/16 v1, 0x20

    aput-object v45, v4, v1

    const/16 v1, 0x21

    aput-object v46, v4, v1

    const/16 v1, 0x22

    aput-object v47, v4, v1

    const/16 v1, 0x23

    aput-object v48, v4, v1

    const/16 v1, 0x24

    aput-object v49, v4, v1

    const/16 v1, 0x25

    aput-object v50, v4, v1

    const/16 v1, 0x26

    aput-object v51, v4, v1

    const/16 v1, 0x27

    aput-object v52, v4, v1

    const/16 v1, 0x28

    aput-object v53, v4, v1

    const/16 v1, 0x29

    aput-object v54, v4, v1

    const/16 v1, 0x2a

    aput-object v55, v4, v1

    const/16 v1, 0x2b

    aput-object v56, v4, v1

    const/16 v1, 0x2c

    aput-object v57, v4, v1

    const/16 v1, 0x2d

    aput-object v58, v4, v1

    const/16 v1, 0x2e

    aput-object v59, v4, v1

    const/16 v1, 0x2f

    aput-object v60, v4, v1

    const/16 v1, 0x30

    aput-object v61, v4, v1

    const/16 v1, 0x31

    aput-object v62, v4, v1

    const/16 v1, 0x32

    aput-object v63, v4, v1

    const/16 v1, 0x33

    aput-object v64, v4, v1

    const/16 v1, 0x34

    aput-object v65, v4, v1

    const/16 v1, 0x35

    aput-object v66, v4, v1

    const/16 v1, 0x36

    aput-object v67, v4, v1

    const/16 v1, 0x37

    aput-object v68, v4, v1

    const/16 v1, 0x38

    aput-object v69, v4, v1

    const/16 v1, 0x39

    aput-object v70, v4, v1

    const/16 v1, 0x3a

    aput-object v71, v4, v1

    const/16 v1, 0x3b

    aput-object v72, v4, v1

    const/16 v1, 0x3c

    aput-object v73, v4, v1

    const/16 v1, 0x3d

    aput-object v74, v4, v1

    const/16 v1, 0x3e

    aput-object v75, v4, v1

    const/16 v1, 0x3f

    aput-object v76, v4, v1

    const/16 v1, 0x40

    aput-object v77, v4, v1

    const/16 v1, 0x41

    aput-object v78, v4, v1

    const/16 v1, 0x42

    aput-object v79, v4, v1

    const/16 v1, 0x43

    aput-object v80, v4, v1

    const/16 v1, 0x44

    aput-object v81, v4, v1

    const/16 v1, 0x45

    aput-object v82, v4, v1

    const/16 v1, 0x46

    aput-object v83, v4, v1

    const/16 v1, 0x47

    aput-object v84, v4, v1

    const/16 v1, 0x48

    aput-object v85, v4, v1

    const/16 v1, 0x49

    aput-object v86, v4, v1

    const/16 v1, 0x4a

    aput-object v87, v4, v1

    const/16 v1, 0x4b

    aput-object v88, v4, v1

    const/16 v1, 0x4c

    aput-object v89, v4, v1

    const/16 v1, 0x4d

    aput-object v90, v4, v1

    const/16 v1, 0x4e

    aput-object v91, v4, v1

    const/16 v1, 0x4f

    aput-object v92, v4, v1

    const/16 v1, 0x50

    aput-object v93, v4, v1

    const/16 v1, 0x51

    aput-object v94, v4, v1

    const/16 v1, 0x52

    aput-object v95, v4, v1

    const/16 v1, 0x53

    aput-object v96, v4, v1

    const/16 v1, 0x54

    aput-object v97, v4, v1

    const/16 v1, 0x55

    aput-object v98, v4, v1

    const/16 v1, 0x56

    aput-object v99, v4, v1

    const/16 v1, 0x57

    aput-object v100, v4, v1

    const/16 v1, 0x58

    aput-object v101, v4, v1

    const/16 v1, 0x59

    aput-object v102, v4, v1

    const/16 v1, 0x5a

    aput-object v103, v4, v1

    const/16 v1, 0x5b

    aput-object v104, v4, v1

    const/16 v1, 0x5c

    aput-object v105, v4, v1

    const/16 v1, 0x5d

    aput-object v106, v4, v1

    const/16 v1, 0x5e

    aput-object v107, v4, v1

    const/16 v1, 0x5f

    aput-object v108, v4, v1

    const/16 v1, 0x60

    aput-object v109, v4, v1

    const/16 v1, 0x61

    aput-object v110, v4, v1

    const/16 v1, 0x62

    aput-object v111, v4, v1

    const/16 v1, 0x63

    aput-object v112, v4, v1

    const/16 v1, 0x64

    aput-object v113, v4, v1

    const/16 v1, 0x65

    aput-object v114, v4, v1

    const/16 v1, 0x66

    aput-object v115, v4, v1

    const/16 v1, 0x67

    aput-object v116, v4, v1

    const/16 v1, 0x68

    aput-object v117, v4, v1

    const/16 v1, 0x69

    aput-object v119, v4, v1

    const/16 v1, 0x6a

    aput-object v121, v4, v1

    const/16 v1, 0x6b

    aput-object v123, v4, v1

    const/16 v1, 0x6c

    aput-object v125, v4, v1

    const/16 v1, 0x6d

    aput-object v127, v4, v1

    const/16 v1, 0x6e

    aput-object v129, v4, v1

    const/16 v1, 0x6f

    aput-object v131, v4, v1

    const/16 v1, 0x70

    aput-object v133, v4, v1

    const/16 v1, 0x71

    aput-object v135, v4, v1

    const/16 v1, 0x72

    aput-object v137, v4, v1

    const/16 v1, 0x73

    aput-object v138, v4, v1

    const/16 v1, 0x74

    aput-object v139, v4, v1

    const/16 v1, 0x75

    aput-object v140, v4, v1

    const/16 v1, 0x76

    aput-object v143, v4, v1

    const/16 v1, 0x77

    aput-object v144, v4, v1

    const/16 v1, 0x78

    aput-object v145, v4, v1

    const/16 v1, 0x79

    aput-object v146, v4, v1

    const/16 v1, 0x7a

    aput-object v147, v4, v1

    const/16 v1, 0x7b

    aput-object v148, v4, v1

    const/16 v1, 0x7c

    aput-object v149, v4, v1

    const/16 v1, 0x7d

    aput-object v150, v4, v1

    const/16 v1, 0x7e

    aput-object v151, v4, v1

    const/16 v1, 0x7f

    aput-object v152, v4, v1

    const/16 v1, 0x80

    aput-object v32, v4, v1

    const/16 v1, 0x81

    aput-object v11, v4, v1

    const/16 v1, 0x82

    aput-object v12, v4, v1

    const/16 v1, 0x83

    aput-object v153, v4, v1

    const/16 v1, 0x84

    aput-object v154, v4, v1

    const/16 v1, 0x85

    aput-object v155, v4, v1

    const/16 v1, 0x86

    aput-object v156, v4, v1

    const/16 v1, 0x87

    aput-object v157, v4, v1

    const/16 v1, 0x88

    aput-object v158, v4, v1

    const/16 v1, 0x89

    aput-object v0, v4, v1

    .line 15246
    invoke-static {v3}, Lj$/util/DesugarArrays;->stream([Ljava/lang/Object;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda42;

    invoke-direct {v1}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda42;-><init>()V

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v0

    .line 15247
    invoke-static {v4}, Lj$/util/DesugarArrays;->stream([Ljava/lang/Object;)Lj$/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda42;

    invoke-direct {v2}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda42;-><init>()V

    invoke-interface {v1, v2}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v1

    .line 15245
    invoke-static {v0, v1}, Lj$/util/stream/Stream$-CC;->concat(Lj$/util/stream/Stream;Lj$/util/stream/Stream;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda44;

    invoke-direct {v1}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda44;-><init>()V

    .line 15248
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    return-object v0
.end method

.method private updateSearchArray()V
    .locals 11

    .line 14929
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 14930
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->searchArray:[Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 14931
    aget-object v3, v3, v2

    if-nez v3, :cond_0

    goto :goto_1

    .line 14934
    :cond_0
    iget v3, v3, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->guid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->searchArray:[Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    aget-object v4, v4, v2

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 14936
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string/jumbo v3, "settingsSearchRecent2"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 14938
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :catch_0
    :cond_2
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 14940
    :try_start_0
    new-instance v5, Lorg/telegram/tgnet/SerializedData;

    invoke-static {v3}, Lorg/telegram/messenger/Utilities;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v5, v3}, Lorg/telegram/tgnet/SerializedData;-><init>([B)V

    .line 14941
    invoke-virtual {v5, v1}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v3

    .line 14942
    invoke-virtual {v5, v1}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v6

    if-nez v6, :cond_5

    .line 14944
    invoke-virtual {v5, v1}, Lorg/telegram/tgnet/SerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v6

    .line 14945
    invoke-virtual {v5, v1}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v7

    if-lez v7, :cond_3

    .line 14948
    new-array v8, v7, [Ljava/lang/String;

    move v9, v1

    :goto_3
    if-ge v9, v7, :cond_4

    .line 14950
    invoke-virtual {v5, v1}, Lorg/telegram/tgnet/SerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_3
    move-object v8, v4

    .line 14953
    :cond_4
    invoke-virtual {v5, v1}, Lorg/telegram/tgnet/SerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v5

    .line 14954
    new-instance v7, Lorg/telegram/messenger/MessagesController$FaqSearchResult;

    invoke-direct {v7, v6, v8, v5}, Lorg/telegram/messenger/MessagesController$FaqSearchResult;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 14955
    iput v3, v7, Lorg/telegram/messenger/MessagesController$FaqSearchResult;->num:I

    .line 14956
    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->recentSearches:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    .line 14958
    invoke-virtual {v5, v1}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    if-eqz v5, :cond_2

    .line 14960
    iput v3, v5, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->num:I

    .line 14961
    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->recentSearches:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 14969
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->recentSearches:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda141;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda141;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method


# virtual methods
.method public addRecent(Ljava/lang/Object;)V
    .locals 4

    .line 15473
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->recentSearches:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 15475
    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->recentSearches:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 15477
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->recentSearches:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 15478
    iget-boolean p1, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->searchWas:Z

    if-nez p1, :cond_1

    .line 15479
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 15481
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->recentSearches:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/16 v0, 0x14

    if-le p1, v0, :cond_2

    .line 15482
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->recentSearches:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 15484
    :cond_2
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 15485
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->recentSearches:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_5

    .line 15486
    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->recentSearches:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 15487
    instance-of v3, v2, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    if-eqz v3, :cond_3

    .line 15488
    move-object v3, v2

    check-cast v3, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    iput v1, v3, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->num:I

    goto :goto_1

    .line 15489
    :cond_3
    instance-of v3, v2, Lorg/telegram/messenger/MessagesController$FaqSearchResult;

    if-eqz v3, :cond_4

    .line 15490
    move-object v3, v2

    check-cast v3, Lorg/telegram/messenger/MessagesController$FaqSearchResult;

    iput v1, v3, Lorg/telegram/messenger/MessagesController$FaqSearchResult;->num:I

    .line 15492
    :cond_4
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 15494
    :cond_5
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "settingsSearchRecent2"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public clearRecent()V
    .locals 2

    .line 15498
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->recentSearches:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 15499
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "settingsSearchRecent2"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 15500
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public fillItems(Ljava/util/ArrayList;)V
    .locals 8

    .line 15401
    iget-boolean v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->searchWas:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 15402
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->searchResults:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v1

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    .line 15403
    iget-object v6, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->resultNames:Ljava/util/ArrayList;

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3, v5}, Lorg/telegram/ui/Cells/SettingsSearchCell$Factory;->of(Ljava/lang/CharSequence;Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;)Lorg/telegram/ui/Components/UItem;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v3, v7

    goto :goto_0

    .line 15405
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->faqSearchResults:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 15406
    sget v0, Lorg/telegram/messenger/R$string;->SettingsFaqSearchTitle:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem;->asGraySection(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15407
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->faqSearchResults:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_1
    if-ge v1, v2, :cond_5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v1, v1, 0x1

    check-cast v4, Lorg/telegram/messenger/MessagesController$FaqSearchResult;

    .line 15408
    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->resultNames:Ljava/util/ArrayList;

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3, v4}, Lorg/telegram/ui/Cells/SettingsSearchCell$Factory;->of(Ljava/lang/CharSequence;Lorg/telegram/messenger/MessagesController$FaqSearchResult;)Lorg/telegram/ui/Components/UItem;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v3, v6

    goto :goto_1

    .line 15412
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->recentSearches:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 15413
    sget v0, Lorg/telegram/messenger/R$string;->SettingsRecent:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem;->asGraySection(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15414
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->recentSearches:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v1

    :cond_2
    :goto_2
    if-ge v3, v2, :cond_4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    .line 15415
    instance-of v5, v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    if-eqz v5, :cond_3

    .line 15416
    check-cast v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    iget-object v5, v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->searchTitle:Ljava/lang/String;

    invoke-static {v5, v4}, Lorg/telegram/ui/Cells/SettingsSearchCell$Factory;->of(Ljava/lang/CharSequence;Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;)Lorg/telegram/ui/Components/UItem;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 15417
    :cond_3
    instance-of v5, v4, Lorg/telegram/messenger/MessagesController$FaqSearchResult;

    if-eqz v5, :cond_2

    .line 15418
    check-cast v4, Lorg/telegram/messenger/MessagesController$FaqSearchResult;

    iget-object v5, v4, Lorg/telegram/messenger/MessagesController$FaqSearchResult;->title:Ljava/lang/String;

    invoke-static {v5, v4}, Lorg/telegram/ui/Cells/SettingsSearchCell$Factory;->of(Ljava/lang/CharSequence;Lorg/telegram/messenger/MessagesController$FaqSearchResult;)Lorg/telegram/ui/Components/UItem;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 15422
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->faqSearchArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 15423
    sget v0, Lorg/telegram/messenger/R$string;->SettingsFaqSearchTitle:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem;->asGraySection(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15424
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->faqSearchArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_3
    if-ge v1, v2, :cond_5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    check-cast v3, Lorg/telegram/messenger/MessagesController$FaqSearchResult;

    .line 15425
    iget-object v4, v3, Lorg/telegram/messenger/MessagesController$FaqSearchResult;->title:Ljava/lang/String;

    invoke-static {v4, v3}, Lorg/telegram/ui/Cells/SettingsSearchCell$Factory;->of(Ljava/lang/CharSequence;Lorg/telegram/messenger/MessagesController$FaqSearchResult;)Lorg/telegram/ui/Components/UItem;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    return-void
.end method

.method public getItemCount()I
    .locals 3

    .line 15333
    iget-boolean v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->searchWas:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 15334
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->searchResults:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->faqSearchResults:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->faqSearchResults:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    :goto_0
    add-int/2addr v0, v1

    return v0

    .line 15336
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->recentSearches:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->recentSearches:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->faqSearchArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->faqSearchArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    :goto_2
    add-int/2addr v0, v1

    return v0
.end method

.method public getItemViewType(I)I
    .locals 3

    .line 15452
    iget-boolean v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->searchWas:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 15453
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->searchResults:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    return v1

    .line 15455
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->searchResults:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_4

    return v2

    :cond_1
    if-nez p1, :cond_3

    .line 15460
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->recentSearches:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x2

    return p1

    :cond_2
    return v2

    .line 15465
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->recentSearches:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->recentSearches:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, v2

    if-ne p1, v0, :cond_4

    return v2

    :cond_4
    return v1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    .line 15341
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isSearchWas()Z
    .locals 1

    .line 15644
    iget-boolean v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->searchWas:Z

    return v0
.end method

.method public loadFaqWebPage()V
    .locals 3

    .line 15260
    iget v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->faqWebPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iput-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->faqWebPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    if-eqz v0, :cond_0

    .line 15262
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->faqSearchArray:Ljava/util/ArrayList;

    iget v1, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController;->faqSearchArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 15264
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->faqWebPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->loadingFaqPage:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 15267
    iput-boolean v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->loadingFaqPage:Z

    .line 15268
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPage;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPage;-><init>()V

    .line 15269
    sget v1, Lorg/telegram/messenger/R$string;->TelegramFaqUrl:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPage;->url:Ljava/lang/String;

    const/4 v1, 0x0

    .line 15270
    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPage;->hash:I

    .line 15271
    iget v1, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda140;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda140;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 6

    .line 15346
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_1

    const/4 p2, 0x2

    if-eq v0, p2, :cond_0

    goto/16 :goto_4

    .line 15392
    :cond_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/HeaderCell;

    .line 15393
    sget p2, Lorg/telegram/messenger/R$string;->SettingsRecent:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 15387
    :cond_1
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/GraySectionCell;

    .line 15388
    sget p2, Lorg/telegram/messenger/R$string;->SettingsFaqSearchTitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 15348
    :cond_2
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/SettingsSearchCell;

    .line 15349
    iget-boolean v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->searchWas:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    .line 15350
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->searchResults:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_6

    .line 15351
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->searchResults:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    if-lez p2, :cond_3

    .line 15352
    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->searchResults:Ljava/util/ArrayList;

    add-int/lit8 v4, p2, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_4

    .line 15354
    iget v3, v3, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->iconResId:I

    iget v4, v0, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->iconResId:I

    if-ne v3, v4, :cond_4

    move v3, v2

    goto :goto_1

    .line 15357
    :cond_4
    iget v3, v0, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->iconResId:I

    .line 15359
    :goto_1
    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->resultNames:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->path:[Ljava/lang/String;

    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->searchResults:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v1

    if-ge p2, v5, :cond_5

    goto :goto_2

    :cond_5
    move v1, v2

    :goto_2
    invoke-virtual {p1, v4, v0, v3, v1}, Lorg/telegram/ui/Cells/SettingsSearchCell;->setTextAndValueAndIcon(Ljava/lang/CharSequence;[Ljava/lang/String;IZ)V

    return-void

    .line 15361
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->searchResults:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, v1

    sub-int/2addr p2, v0

    .line 15362
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->faqSearchResults:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessagesController$FaqSearchResult;

    .line 15363
    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->resultNames:Ljava/util/ArrayList;

    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->searchResults:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v4, p2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$FaqSearchResult;->path:[Ljava/lang/String;

    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->searchResults:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v1

    if-ge p2, v4, :cond_7

    move v2, v1

    :cond_7
    invoke-virtual {p1, v3, v0, v1, v2}, Lorg/telegram/ui/Cells/SettingsSearchCell;->setTextAndValue(Ljava/lang/CharSequence;[Ljava/lang/String;ZZ)V

    return-void

    .line 15366
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->recentSearches:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    add-int/lit8 p2, p2, -0x1

    .line 15369
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->recentSearches:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_e

    .line 15370
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->recentSearches:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 15371
    instance-of v3, v0, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    if-eqz v3, :cond_b

    .line 15372
    check-cast v0, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    .line 15373
    iget-object v3, v0, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->searchTitle:Ljava/lang/String;

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->path:[Ljava/lang/String;

    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->recentSearches:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v1

    if-ge p2, v4, :cond_a

    goto :goto_3

    :cond_a
    move v1, v2

    :goto_3
    invoke-virtual {p1, v3, v0, v2, v1}, Lorg/telegram/ui/Cells/SettingsSearchCell;->setTextAndValue(Ljava/lang/CharSequence;[Ljava/lang/String;ZZ)V

    return-void

    .line 15374
    :cond_b
    instance-of v3, v0, Lorg/telegram/messenger/MessagesController$FaqSearchResult;

    if-eqz v3, :cond_d

    .line 15375
    check-cast v0, Lorg/telegram/messenger/MessagesController$FaqSearchResult;

    .line 15376
    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$FaqSearchResult;->title:Ljava/lang/String;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$FaqSearchResult;->path:[Ljava/lang/String;

    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->recentSearches:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v1

    if-ge p2, v4, :cond_c

    move v2, v1

    :cond_c
    invoke-virtual {p1, v3, v0, v1, v2}, Lorg/telegram/ui/Cells/SettingsSearchCell;->setTextAndValue(Ljava/lang/CharSequence;[Ljava/lang/String;ZZ)V

    :cond_d
    :goto_4
    return-void

    .line 15379
    :cond_e
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->recentSearches:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, v1

    sub-int/2addr p2, v0

    .line 15380
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->faqSearchArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessagesController$FaqSearchResult;

    .line 15381
    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$FaqSearchResult;->title:Ljava/lang/String;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$FaqSearchResult;->path:[Ljava/lang/String;

    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->recentSearches:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v1

    if-ge p2, v4, :cond_f

    move v2, v1

    :cond_f
    invoke-virtual {p1, v3, v0, v1, v2}, Lorg/telegram/ui/Cells/SettingsSearchCell;->setTextAndValue(Ljava/lang/CharSequence;[Ljava/lang/String;ZZ)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    if-eqz p2, :cond_1

    const/4 p1, 0x1

    if-eq p2, p1, :cond_0

    .line 15443
    new-instance p1, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object p2, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->mContext:Landroid/content/Context;

    const/16 v0, 0x10

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    .line 15439
    :cond_0
    new-instance p1, Lorg/telegram/ui/Cells/GraySectionCell;

    iget-object p2, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/GraySectionCell;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 15436
    :cond_1
    new-instance p1, Lorg/telegram/ui/Cells/SettingsSearchCell;

    iget-object p2, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/SettingsSearchCell;-><init>(Landroid/content/Context;)V

    .line 15446
    :goto_0
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 15447
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public search(Ljava/lang/String;)V
    .locals 4

    .line 15513
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lastSearchString:Ljava/lang/String;

    .line 15514
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->searchRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 15515
    sget-object v0, Lorg/telegram/messenger/Utilities;->searchQueue:Lorg/telegram/messenger/DispatchQueue;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->searchRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->cancelRunnable(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 15516
    iput-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->searchRunnable:Ljava/lang/Runnable;

    .line 15518
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x0

    .line 15519
    iput-boolean p1, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->searchWas:Z

    .line 15520
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->searchResults:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 15521
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->faqSearchResults:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 15522
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->resultNames:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 15523
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v0, p1, Lorg/telegram/ui/ProfileActivity;

    if-eqz v0, :cond_1

    .line 15525
    :try_start_0
    check-cast p1, Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetemptyView(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/ui/Components/StickerEmptyView;->stickerView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->startAnimation()V

    .line 15526
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    check-cast p1, Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetemptyView(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/ui/Components/StickerEmptyView;->title:Lorg/telegram/ui/Components/spoilers/SpoilersTextView;

    sget v0, Lorg/telegram/messenger/R$string;->SettingsNoRecent:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 15527
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 15529
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void

    .line 15532
    :cond_2
    sget-object v0, Lorg/telegram/messenger/Utilities;->searchQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda142;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda142;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->searchRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;J)Z

    return-void
.end method
