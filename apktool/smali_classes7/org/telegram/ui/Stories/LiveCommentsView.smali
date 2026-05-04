.class public abstract Lorg/telegram/ui/Stories/LiveCommentsView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Stories/LiveCommentsView$TopSender;,
        Lorg/telegram/ui/Stories/LiveCommentsView$Message;,
        Lorg/telegram/ui/Stories/LiveCommentsView$LiveCommentView;,
        Lorg/telegram/ui/Stories/LiveCommentsView$LiveTopSenderView;,
        Lorg/telegram/ui/Stories/LiveCommentsView$CrownDrawable;
    }
.end annotation


# instance fields
.field private final adapter:Lorg/telegram/ui/Components/UniversalAdapter;

.field private allowTouches:Z

.field public final arrowButton:Landroid/widget/ImageView;

.field private bulletinButton:Lorg/telegram/ui/Components/Bulletin$UndoButton;

.field private bulletinLayout:Lorg/telegram/ui/Components/Bulletin$TwoLineAnimatedLottieLayout;

.field private callHighlight:Z

.field private closeBulletin:Ljava/lang/Runnable;

.field private collapseAnimator:Landroid/animation/ValueAnimator;

.field private collapsed:Z

.field private final currentAccount:I

.field private dialogId:J

.field private final gradientClip:Lorg/telegram/ui/GradientClip;

.field private hasTopMessages:Z

.field private highlightingDialog:J

.field private highlightingMessageId:I

.field private inputCall:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

.field private keyboardFinalOffset:F

.field private keyboardOffset:F

.field private keyboardT:F

.field private lastMinStars:J

.field private lastNow:I

.field private final layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field public final listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private livePlayer:Lorg/telegram/ui/Stories/LivePlayer;

.field private localStars:J

.field public maxReadId:I

.field private final messages:Ljava/util/ArrayList;

.field private pollStarsRunnable:Ljava/lang/Runnable;

.field private polling:Z

.field private removeTopSendersRunnable:Ljava/lang/Runnable;

.field private sentStars:Z

.field private final shadowView:Landroid/view/View;

.field private starsBulletin:Lorg/telegram/ui/Components/Bulletin;

.field private final storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

.field private timerView:Lorg/telegram/ui/Components/Bulletin$TimerView;

.field private final topAdapter:Lorg/telegram/ui/Components/UniversalAdapter;

.field private final topBulletinContainer:Landroid/widget/FrameLayout;

.field private topDonors:Ljava/util/ArrayList;

.field private final topLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field public final topListView:Lorg/telegram/ui/Components/RecyclerListView;

.field private final topMessages:Ljava/util/ArrayList;

.field private final topPlaces:Ljava/util/HashMap;

.field private totalStars:J

.field private final updateAdapters:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$-ueX5Ja1dicqtbnuDU4QaGnurRg(Lorg/telegram/ui/Stories/LiveCommentsView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/LiveCommentsView;->lambda$scheduleRemovingTopSenders$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$5F6k-6vdPzVlmU98j6NJwQ-srmg(Lorg/telegram/ui/Stories/LiveCommentsView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/LiveCommentsView;->lambda$new$9()V

    return-void
.end method

.method public static synthetic $r8$lambda$AtcPunXeFJjB-movfxBcbFvK2nM(Lorg/telegram/ui/Stories/LiveCommentsView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/LiveCommentsView;->lambda$new$12()V

    return-void
.end method

.method public static synthetic $r8$lambda$EjvO3DU6M9mVi-vO9ff3IEzcnnc(Lorg/telegram/ui/Stories/LiveCommentsView;Lorg/telegram/tgnet/tl/TL_phone$getGroupCallStars;Lorg/telegram/tgnet/tl/TL_phone$groupCallStars;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/LiveCommentsView;->lambda$pollStars$10(Lorg/telegram/tgnet/tl/TL_phone$getGroupCallStars;Lorg/telegram/tgnet/tl/TL_phone$groupCallStars;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HIx6XSSS3Ak7pwgVPzYa2aam-rI(Lorg/telegram/ui/Stories/LiveCommentsView;ILorg/telegram/tgnet/TLRPC$TL_error;JJLorg/telegram/tgnet/TLRPC$TL_textWithEntities;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p7}, Lorg/telegram/ui/Stories/LiveCommentsView;->lambda$send$15(ILorg/telegram/tgnet/TLRPC$TL_error;JJLorg/telegram/tgnet/TLRPC$TL_textWithEntities;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IGb63cLWxy5voNbOrMvavZuKxWo(Lorg/telegram/ui/Stories/LiveCommentsView;Lorg/telegram/ui/Stories/LiveCommentsView$LiveCommentView;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/LiveCommentsView;->lambda$new$2(Lorg/telegram/ui/Stories/LiveCommentsView$LiveCommentView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IIq7NUSqv2LOVGbmuoVA6U1zQu4(Lorg/telegram/ui/Stories/LiveCommentsView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/LiveCommentsView;->lambda$setCollapsed$13(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IORWpoLeBlzLWFWGTT3GuZwuvJg(Lorg/telegram/ui/Stories/LiveCommentsView;Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/LiveCommentsView;->fillItems(Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NFKKi_6j4akGbmJFA9TLwIltdOA(Lorg/telegram/ui/Stories/LiveCommentsView;Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Integer;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/LiveCommentsView;->lambda$openStarsSheet$11(Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Qgc8B_u6RK44YO0D_Ii_rHh9WBg(Lorg/telegram/ui/Stories/LiveCommentsView;Lorg/telegram/ui/Stories/LiveCommentsView$Message;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Stories/LiveCommentsView;->lambda$new$3(Lorg/telegram/ui/Stories/LiveCommentsView$Message;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Rkiw0cZMP7nzAtys3pkwMYKiues(Lorg/telegram/ui/Cells/CheckBoxCell;Landroid/view/View;)V
    .locals 1

    .line 2134
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/CheckBoxCell;->isChecked()Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Cells/CheckBoxCell;->setChecked(ZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$SYF2Z4QrCyRmnenMMOXObHqw2u4(Lorg/telegram/ui/Stories/LiveCommentsView;Landroid/view/View;IFF)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Stories/LiveCommentsView;->lambda$new$7(Landroid/view/View;IFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$TGLMu4EJIB8lp-xmkPuJaSP3-lY(Lorg/telegram/ui/Stories/LiveCommentsView;Landroid/view/ViewGroup;Lorg/telegram/ui/Stories/StoryViewer;Landroid/view/View;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Stories/LiveCommentsView;->lambda$new$5(Landroid/view/ViewGroup;Lorg/telegram/ui/Stories/StoryViewer;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$VjgXh1po6s-4UWjYaqiZtizPE2k(Lorg/telegram/ui/Stories/LiveCommentsView;Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/LiveCommentsView;->fillTopItems(Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZH4F5qdWA7jhBki2jSq5_onFrV0(Lorg/telegram/ui/Stories/LiveCommentsView;JLorg/telegram/tgnet/TLRPC$TL_textWithEntities;J)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Stories/LiveCommentsView;->lambda$send$14(JLorg/telegram/tgnet/TLRPC$TL_textWithEntities;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$bi_6IPui0vc4eRoFAvIm42mGX0k(Lorg/telegram/ui/Stories/LiveCommentsView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/LiveCommentsView;->lambda$new$17()V

    return-void
.end method

.method public static synthetic $r8$lambda$cx80IySZ0ZW7rzxIwarf9KavZ0U(Lorg/telegram/ui/Stories/LiveCommentsView;Lorg/telegram/ui/Stories/LiveCommentsView$TopSender;Lorg/telegram/ui/Stories/LiveCommentsView$TopSender;)I
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/LiveCommentsView;->sortTopMessages(Lorg/telegram/ui/Stories/LiveCommentsView$TopSender;Lorg/telegram/ui/Stories/LiveCommentsView$TopSender;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$dcLSomt6nt2WWc38QL0SAeezAM0(Lorg/telegram/ui/Cells/CheckBoxCell;Landroid/view/View;)V
    .locals 1

    .line 2125
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/CheckBoxCell;->isChecked()Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Cells/CheckBoxCell;->setChecked(ZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$gTpcrXKXW3G4czLK6ZDPFAbMT8w(Lorg/telegram/ui/Stories/LiveCommentsView;Lorg/telegram/tgnet/tl/TL_phone$sendGroupCallMessage;IJJLorg/telegram/tgnet/TLRPC$TL_textWithEntities;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p9}, Lorg/telegram/ui/Stories/LiveCommentsView;->lambda$send$16(Lorg/telegram/tgnet/tl/TL_phone$sendGroupCallMessage;IJJLorg/telegram/tgnet/TLRPC$TL_textWithEntities;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jmfyXPO07HtNBDdnhW47zhF5dzI(Lorg/telegram/ui/Cells/CheckBoxCell;Lorg/telegram/ui/Cells/CheckBoxCell;Lorg/telegram/ui/Cells/CheckBoxCell;Lorg/telegram/messenger/Utilities$Callback3;Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/view/View;)V
    .locals 0

    .line 2148
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/CheckBoxCell;->isChecked()Z

    move-result p0

    .line 2149
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/CheckBoxCell;->isChecked()Z

    move-result p1

    .line 2150
    invoke-virtual {p2}, Lorg/telegram/ui/Cells/CheckBoxCell;->isChecked()Z

    move-result p2

    .line 2152
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p3, p0, p1, p2}, Lorg/telegram/messenger/Utilities$Callback3;->run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2153
    invoke-virtual {p4}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method public static synthetic $r8$lambda$m8DgmOXJsgbUUsocvyxYD6SOT1M(Lorg/telegram/ui/Stories/LiveCommentsView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/LiveCommentsView;->lambda$new$6(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sc5GzASxq_qsPdmswJeXfGUMOyU(Lorg/telegram/ui/Cells/CheckBoxCell;Landroid/view/View;)V
    .locals 1

    .line 2116
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/CheckBoxCell;->isChecked()Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Cells/CheckBoxCell;->setChecked(ZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$wrOT480S2dIWY7XZ4Qt8hiBh9wk(Lorg/telegram/ui/Stories/LiveCommentsView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/LiveCommentsView;->lambda$updateTopMessages$8(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wuKQW6P5hIT50vzcHU-n5qJIY6I(Lorg/telegram/ui/Stories/LiveCommentsView;Lorg/telegram/ui/Stories/LiveCommentsView$Message;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/LiveCommentsView;->lambda$new$4(Lorg/telegram/ui/Stories/LiveCommentsView$Message;)V

    return-void
.end method

.method public static synthetic $r8$lambda$y3Wo3-CjgU70cCc3MVU1TZwWVTU(Lorg/telegram/tgnet/tl/TL_phone$groupCallDonor;Lorg/telegram/tgnet/tl/TL_phone$groupCallDonor;)I
    .locals 2

    .line 1427
    iget-wide v0, p1, Lorg/telegram/tgnet/tl/TL_phone$groupCallDonor;->stars:J

    iget-wide p0, p0, Lorg/telegram/tgnet/tl/TL_phone$groupCallDonor;->stars:J

    sub-long/2addr v0, p0

    long-to-int p0, v0

    return p0
.end method

.method public static synthetic $r8$lambda$yRXhfRAzvv6nqrulicTMz6sMXac(Lorg/telegram/ui/Stories/StoryViewer;Lorg/telegram/ui/Stories/LiveCommentsView$Message;)V
    .locals 2

    .line 354
    iget-wide v0, p1, Lorg/telegram/ui/Stories/LiveCommentsView$Message;->dialogId:J

    invoke-static {v0, v1}, Lorg/telegram/ui/ProfileActivity;->of(J)Lorg/telegram/ui/ProfileActivity;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/StoryViewer;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetcallHighlight(Lorg/telegram/ui/Stories/LiveCommentsView;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->callHighlight:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcollapsed(Lorg/telegram/ui/Stories/LiveCommentsView;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->collapsed:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgethighlightingMessageId(Lorg/telegram/ui/Stories/LiveCommentsView;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->highlightingMessageId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetshadowView(Lorg/telegram/ui/Stories/LiveCommentsView;)Landroid/view/View;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->shadowView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputcallHighlight(Lorg/telegram/ui/Stories/LiveCommentsView;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->callHighlight:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/Stories/StoryViewer;Landroid/view/ViewGroup;Landroid/view/View;Landroid/widget/FrameLayout;)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v9, p2

    move-object/from16 v0, p4

    .line 258
    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 210
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v1, Lorg/telegram/ui/Stories/LiveCommentsView;->messages:Ljava/util/ArrayList;

    .line 211
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v1, Lorg/telegram/ui/Stories/LiveCommentsView;->topMessages:Ljava/util/ArrayList;

    .line 212
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v1, Lorg/telegram/ui/Stories/LiveCommentsView;->topPlaces:Ljava/util/HashMap;

    const/4 v10, -0x1

    .line 255
    iput v10, v1, Lorg/telegram/ui/Stories/LiveCommentsView;->maxReadId:I

    const/4 v3, 0x1

    .line 545
    iput-boolean v3, v1, Lorg/telegram/ui/Stories/LiveCommentsView;->allowTouches:Z

    .line 594
    new-instance v4, Lorg/telegram/ui/GradientClip;

    invoke-direct {v4}, Lorg/telegram/ui/GradientClip;-><init>()V

    iput-object v4, v1, Lorg/telegram/ui/Stories/LiveCommentsView;->gradientClip:Lorg/telegram/ui/GradientClip;

    .line 680
    sget v4, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v4, v1, Lorg/telegram/ui/Stories/LiveCommentsView;->currentAccount:I

    .line 761
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v1, Lorg/telegram/ui/Stories/LiveCommentsView;->topDonors:Ljava/util/ArrayList;

    .line 764
    new-instance v5, Lorg/telegram/ui/Stories/LiveCommentsView$$ExternalSyntheticLambda1;

    invoke-direct {v5, v1}, Lorg/telegram/ui/Stories/LiveCommentsView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/LiveCommentsView;)V

    iput-object v5, v1, Lorg/telegram/ui/Stories/LiveCommentsView;->pollStarsRunnable:Ljava/lang/Runnable;

    .line 923
    new-instance v5, Lorg/telegram/ui/Stories/LiveCommentsView$$ExternalSyntheticLambda2;

    invoke-direct {v5, v1}, Lorg/telegram/ui/Stories/LiveCommentsView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Stories/LiveCommentsView;)V

    iput-object v5, v1, Lorg/telegram/ui/Stories/LiveCommentsView;->closeBulletin:Ljava/lang/Runnable;

    const/4 v11, 0x0

    .line 965
    iput-boolean v11, v1, Lorg/telegram/ui/Stories/LiveCommentsView;->collapsed:Z

    .line 1416
    new-instance v5, Lorg/telegram/ui/Stories/LiveCommentsView$$ExternalSyntheticLambda3;

    invoke-direct {v5, v1}, Lorg/telegram/ui/Stories/LiveCommentsView$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Stories/LiveCommentsView;)V

    iput-object v5, v1, Lorg/telegram/ui/Stories/LiveCommentsView;->updateAdapters:Ljava/lang/Runnable;

    .line 260
    iput-object v0, v1, Lorg/telegram/ui/Stories/LiveCommentsView;->shadowView:Landroid/view/View;

    .line 261
    iput-object v9, v1, Lorg/telegram/ui/Stories/LiveCommentsView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    move-object/from16 v5, p5

    .line 262
    iput-object v5, v1, Lorg/telegram/ui/Stories/LiveCommentsView;->topBulletinContainer:Landroid/widget/FrameLayout;

    const/high16 v5, 0x3f000000    # 0.5f

    .line 264
    invoke-virtual {v0, v5}, Landroid/view/View;->setAlpha(F)V

    .line 266
    new-instance v0, Lorg/telegram/ui/Stories/LiveCommentsView$1;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Stories/LiveCommentsView$1;-><init>(Lorg/telegram/ui/Stories/LiveCommentsView;Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/Stories/LiveCommentsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 316
    invoke-virtual {v0, v11}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 317
    new-instance v5, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v5, v2, v3, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object v5, v1, Lorg/telegram/ui/Stories/LiveCommentsView;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    move-object v2, v0

    .line 318
    new-instance v0, Lorg/telegram/ui/Stories/LiveCommentsView$2;

    new-instance v7, Lorg/telegram/ui/Stories/LiveCommentsView$$ExternalSyntheticLambda4;

    invoke-direct {v7, v1}, Lorg/telegram/ui/Stories/LiveCommentsView$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Stories/LiveCommentsView;)V

    new-instance v8, Lorg/telegram/ui/Stories/DarkThemeResourceProvider;

    invoke-direct {v8}, Lorg/telegram/ui/Stories/DarkThemeResourceProvider;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v3, p1

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/Stories/LiveCommentsView$2;-><init>(Lorg/telegram/ui/Stories/LiveCommentsView;Lorg/telegram/ui/Components/RecyclerListView;Landroid/content/Context;IIZLorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    move-object v7, v1

    move-object v1, v0

    move-object v0, v2

    move-object v2, v3

    move v3, v4

    iput-object v1, v7, Lorg/telegram/ui/Stories/LiveCommentsView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 342
    invoke-virtual {v1, v11}, Lorg/telegram/ui/Components/UniversalAdapter;->setApplyBackground(Z)V

    const/high16 v8, 0x41000000    # 8.0f

    .line 343
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/high16 v4, 0x40f00000    # 7.5f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v0, v1, v5, v6, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 344
    invoke-virtual {v0, v11}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    const/16 v17, 0x0

    const/high16 v18, 0x42080000    # 34.0f

    const/4 v12, -0x1

    const/high16 v13, -0x40800000    # -1.0f

    const/16 v14, 0x57

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 345
    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 346
    new-instance v1, Lorg/telegram/ui/Stories/LiveCommentsView$$ExternalSyntheticLambda5;

    move-object/from16 v4, p3

    invoke-direct {v1, v7, v4, v9}, Lorg/telegram/ui/Stories/LiveCommentsView$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Stories/LiveCommentsView;Landroid/view/ViewGroup;Lorg/telegram/ui/Stories/StoryViewer;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 403
    new-instance v1, Lorg/telegram/ui/Stories/LiveCommentsView$3;

    invoke-direct {v1, v7}, Lorg/telegram/ui/Stories/LiveCommentsView$3;-><init>(Lorg/telegram/ui/Stories/LiveCommentsView;)V

    .line 421
    invoke-virtual {v1, v11}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 422
    invoke-virtual {v1, v11}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setDelayAnimations(Z)V

    .line 423
    sget-object v9, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v9}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v4, 0x118

    .line 424
    invoke-virtual {v1, v4, v5}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setDurations(J)V

    const-wide/16 v4, 0xe

    .line 425
    invoke-virtual {v1, v4, v5}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setDelayIncrement(J)V

    .line 426
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 428
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, v7, Lorg/telegram/ui/Stories/LiveCommentsView;->arrowButton:Landroid/widget/ImageView;

    .line 429
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_arrowright:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 430
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v10, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const/high16 v1, 0x42b40000    # 90.0f

    .line 431
    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    const v1, 0x40ffffff    # 7.9999995f

    .line 432
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 434
    new-instance v1, Lorg/telegram/ui/Stories/LiveCommentsView$$ExternalSyntheticLambda6;

    invoke-direct {v1, v7}, Lorg/telegram/ui/Stories/LiveCommentsView$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Stories/LiveCommentsView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 438
    new-instance v1, Lorg/telegram/ui/Stories/LiveCommentsView$4;

    invoke-direct {v1, v7, v2}, Lorg/telegram/ui/Stories/LiveCommentsView$4;-><init>(Lorg/telegram/ui/Stories/LiveCommentsView;Landroid/content/Context;)V

    iput-object v1, v7, Lorg/telegram/ui/Stories/LiveCommentsView;->topListView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 444
    invoke-virtual {v1, v11}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 445
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, v2, v11, v11}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, v7, Lorg/telegram/ui/Stories/LiveCommentsView;->topLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 446
    new-instance v0, Lorg/telegram/ui/Components/UniversalAdapter;

    new-instance v5, Lorg/telegram/ui/Stories/LiveCommentsView$$ExternalSyntheticLambda7;

    invoke-direct {v5, v7}, Lorg/telegram/ui/Stories/LiveCommentsView$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Stories/LiveCommentsView;)V

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/UniversalAdapter;-><init>(Lorg/telegram/ui/Components/RecyclerListView;Landroid/content/Context;IILorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v7, Lorg/telegram/ui/Stories/LiveCommentsView;->topAdapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 447
    invoke-virtual {v0, v11}, Lorg/telegram/ui/Components/UniversalAdapter;->setApplyBackground(Z)V

    .line 448
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v1, v0, v11, v2, v11}, Landroid/view/View;->setPadding(IIII)V

    .line 449
    invoke-virtual {v1, v11}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    const v18, 0x411a8f5c    # 9.66f

    const/high16 v13, 0x41d00000    # 26.0f

    .line 450
    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v7, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 451
    new-instance v0, Lorg/telegram/ui/Stories/LiveCommentsView$$ExternalSyntheticLambda8;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Stories/LiveCommentsView$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Stories/LiveCommentsView;)V

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListenerExtended;)V

    .line 510
    new-instance v0, Lorg/telegram/ui/Stories/LiveCommentsView$5;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Stories/LiveCommentsView$5;-><init>(Lorg/telegram/ui/Stories/LiveCommentsView;)V

    .line 516
    invoke-virtual {v0, v11}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 517
    invoke-virtual {v0, v11}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setDelayAnimations(Z)V

    .line 518
    invoke-virtual {v0, v9}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0x15e

    .line 519
    invoke-virtual {v0, v2, v3}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setDurations(J)V

    .line 520
    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 522
    invoke-direct {v7, v11}, Lorg/telegram/ui/Stories/LiveCommentsView;->updateTopMessages(Z)V

    return-void
.end method

.method private fillItems(Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .locals 5

    .line 569
    iget-object p2, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->livePlayer:Lorg/telegram/ui/Stories/LivePlayer;

    if-nez p2, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lorg/telegram/ui/Stories/LivePlayer;->getSendPaidMessagesStars()J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->lastMinStars:J

    const/4 p2, 0x0

    .line 570
    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p2, v2, :cond_3

    .line 571
    iget-object v2, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Stories/LiveCommentsView$Message;

    .line 573
    iget-boolean v3, v2, Lorg/telegram/ui/Stories/LiveCommentsView$Message;->fromAdmin:Z

    if-nez v3, :cond_1

    iget-boolean v3, v2, Lorg/telegram/ui/Stories/LiveCommentsView$Message;->isReaction:Z

    if-eqz v3, :cond_1

    iget-wide v3, v2, Lorg/telegram/ui/Stories/LiveCommentsView$Message;->stars:J

    cmp-long v3, v3, v0

    if-ltz v3, :cond_2

    .line 574
    :cond_1
    invoke-static {v2}, Lorg/telegram/ui/Stories/LiveCommentsView$LiveCommentView$Factory;->of(Lorg/telegram/ui/Stories/LiveCommentsView$Message;)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private fillTopItems(Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .locals 1

    const/4 p2, 0x0

    .line 580
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->topMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 581
    iget-object v0, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->topMessages:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Stories/LiveCommentsView$TopSender;

    invoke-static {v0}, Lorg/telegram/ui/Stories/LiveCommentsView$LiveTopSenderView$Factory;->of(Lorg/telegram/ui/Stories/LiveCommentsView$TopSender;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getDefaultPeerId()J
    .locals 2

    .line 1132
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/LiveCommentsView;->getDefaultSendAs()Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v0

    .line 1133
    iget-object v1, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->livePlayer:Lorg/telegram/ui/Stories/LivePlayer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/LivePlayer;->isAdmin()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->livePlayer:Lorg/telegram/ui/Stories/LivePlayer;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/LivePlayer;->sendAsDisabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1134
    iget-wide v0, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->dialogId:J

    return-wide v0

    :cond_0
    if-nez v0, :cond_1

    .line 1136
    iget v0, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v0

    return-wide v0

    :cond_1
    invoke-static {v0}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v0

    return-wide v0
.end method

.method private getListViewTop()I
    .locals 3

    .line 586
    iget-object v0, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    const/4 v1, 0x0

    .line 587
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 588
    iget-object v2, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 589
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 591
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int/2addr v1, v0

    return v1
.end method

.method private getPlace(J)I
    .locals 1

    .line 1487
    iget-object v0, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->topPlaces:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v0, p1, p2}, Lj$/util/Map$-EL;->getOrDefault(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method private getStarsToastSubtitle()Ljava/lang/CharSequence;
    .locals 2

    .line 957
    iget-wide v0, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->localStars:J

    long-to-int v0, v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const-string v1, "PaidMessageSentSubtitle"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method private getStarsToastTitle()Ljava/lang/String;
    .locals 1

    .line 952
    sget v0, Lorg/telegram/messenger/R$string;->StarsSentTitle:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTotalMyStars()I
    .locals 5

    const/4 v0, 0x0

    int-to-long v1, v0

    .line 865
    iget-wide v3, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->localStars:J

    add-long/2addr v1, v3

    long-to-int v1, v1

    .line 866
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->topDonors:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 867
    iget-object v2, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->topDonors:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/tl/TL_phone$groupCallDonor;

    iget-boolean v2, v2, Lorg/telegram/tgnet/tl/TL_phone$groupCallDonor;->my:Z

    if-eqz v2, :cond_0

    int-to-long v1, v1

    .line 868
    iget-object v3, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->topDonors:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/tl/TL_phone$groupCallDonor;

    iget-wide v3, v3, Lorg/telegram/tgnet/tl/TL_phone$groupCallDonor;->stars:J

    add-long/2addr v1, v3

    long-to-int v1, v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private synthetic lambda$new$12()V
    .locals 5

    .line 924
    iget-object v0, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->closeBulletin:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 925
    iget-object v0, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->starsBulletin:Lorg/telegram/ui/Components/Bulletin;

    if-eqz v0, :cond_0

    .line 926
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->hide()V

    const/4 v0, 0x0

    .line 927
    iput-object v0, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->starsBulletin:Lorg/telegram/ui/Components/Bulletin;

    .line 929
    :cond_0
    iget-wide v0, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->localStars:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 931
    iput-wide v2, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->localStars:J

    const/4 v2, 0x1

    .line 932
    iput-boolean v2, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->sentStars:Z

    .line 933
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;-><init>()V

    invoke-virtual {p0, v2, v0, v1}, Lorg/telegram/ui/Stories/LiveCommentsView;->send(Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;J)I

    return-void

    .line 935
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/LiveCommentsView;->onStarsCountUpdated()V

    return-void
.end method

.method private synthetic lambda$new$17()V
    .locals 2

    .line 1417
    iget-object v0, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    .line 1418
    iget-object v0, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->topAdapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    return-void
.end method

.method private synthetic lambda$new$2(Lorg/telegram/ui/Stories/LiveCommentsView$LiveCommentView;)V
    .locals 2

    .line 357
    iget-object p1, p1, Lorg/telegram/ui/Stories/LiveCommentsView$LiveCommentView;->text:Ljava/lang/CharSequence;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->addToClipboard(Ljava/lang/CharSequence;)Z

    .line 358
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->shouldShowClipboardToast()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 359
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->TextCopied:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$3(Lorg/telegram/ui/Stories/LiveCommentsView$Message;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 6

    .line 374
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 375
    new-instance p3, Lorg/telegram/tgnet/tl/TL_phone$deleteGroupCallParticipantMessages;

    invoke-direct {p3}, Lorg/telegram/tgnet/tl/TL_phone$deleteGroupCallParticipantMessages;-><init>()V

    .line 376
    iget-object v1, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->inputCall:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    iput-object v1, p3, Lorg/telegram/tgnet/tl/TL_phone$deleteGroupCallParticipantMessages;->call:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    .line 377
    iget v1, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p1, Lorg/telegram/ui/Stories/LiveCommentsView$Message;->dialogId:J

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v1

    iput-object v1, p3, Lorg/telegram/tgnet/tl/TL_phone$deleteGroupCallParticipantMessages;->participant:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 378
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iput-boolean p2, p3, Lorg/telegram/tgnet/tl/TL_phone$deleteGroupCallParticipantMessages;->report_spam:Z

    .line 379
    iget p2, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    invoke-virtual {p2, p3, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 381
    iget-wide p2, p1, Lorg/telegram/ui/Stories/LiveCommentsView$Message;->dialogId:J

    invoke-virtual {p0, p2, p3}, Lorg/telegram/ui/Stories/LiveCommentsView;->deleteAllFrom(J)V

    goto :goto_0

    .line 383
    :cond_0
    new-instance p2, Lorg/telegram/tgnet/tl/TL_phone$deleteGroupCallMessages;

    invoke-direct {p2}, Lorg/telegram/tgnet/tl/TL_phone$deleteGroupCallMessages;-><init>()V

    .line 384
    iget-object p3, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->inputCall:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    iput-object p3, p2, Lorg/telegram/tgnet/tl/TL_phone$deleteGroupCallMessages;->call:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    .line 385
    iget-object p3, p2, Lorg/telegram/tgnet/tl/TL_phone$deleteGroupCallMessages;->messages:Ljava/util/ArrayList;

    iget v1, p1, Lorg/telegram/ui/Stories/LiveCommentsView$Message;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    iget p3, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p3

    invoke-virtual {p3, p2, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 388
    iget p2, p1, Lorg/telegram/ui/Stories/LiveCommentsView$Message;->id:I

    invoke-virtual {p0, p2}, Lorg/telegram/ui/Stories/LiveCommentsView;->delete(I)V

    .line 391
    :goto_0
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 392
    iget-wide p2, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->dialogId:J

    const-wide/16 v0, 0x0

    cmp-long p2, p2, v0

    if-ltz p2, :cond_1

    .line 393
    iget p1, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-wide p2, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->dialogId:J

    invoke-virtual {p1, p2, p3}, Lorg/telegram/messenger/MessagesController;->blockPeer(J)V

    return-void

    .line 395
    :cond_1
    iget p2, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide p2, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->dialogId:J

    neg-long v1, p2

    iget p2, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-wide p3, p1, Lorg/telegram/ui/Stories/LiveCommentsView$Message;->dialogId:J

    invoke-virtual {p2, p3, p4}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/MessagesController;->deleteParticipantFromChat(JLorg/telegram/tgnet/TLRPC$InputPeer;ZZ)V

    :cond_2
    return-void
.end method

.method private synthetic lambda$new$4(Lorg/telegram/ui/Stories/LiveCommentsView$Message;)V
    .locals 4

    .line 365
    iget-wide v0, p1, Lorg/telegram/ui/Stories/LiveCommentsView$Message;->dialogId:J

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Stories/LiveCommentsView;->isMe(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 366
    new-instance v0, Lorg/telegram/tgnet/tl/TL_phone$deleteGroupCallMessages;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_phone$deleteGroupCallMessages;-><init>()V

    .line 367
    iget-object v1, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->inputCall:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_phone$deleteGroupCallMessages;->call:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    .line 368
    iget-object v1, v0, Lorg/telegram/tgnet/tl/TL_phone$deleteGroupCallMessages;->messages:Ljava/util/ArrayList;

    iget v2, p1, Lorg/telegram/ui/Stories/LiveCommentsView$Message;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 369
    iget v1, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 370
    iget p1, p1, Lorg/telegram/ui/Stories/LiveCommentsView$Message;->id:I

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/LiveCommentsView;->delete(I)V

    return-void

    .line 373
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-wide v1, p1, Lorg/telegram/ui/Stories/LiveCommentsView$Message;->dialogId:J

    new-instance v3, Lorg/telegram/ui/Stories/LiveCommentsView$$ExternalSyntheticLambda20;

    invoke-direct {v3, p0, p1}, Lorg/telegram/ui/Stories/LiveCommentsView$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/Stories/LiveCommentsView;Lorg/telegram/ui/Stories/LiveCommentsView$Message;)V

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/ui/Stories/LiveCommentsView;->openDeleteMessage(Landroid/content/Context;JLorg/telegram/messenger/Utilities$Callback3;)V

    return-void
.end method

.method private synthetic lambda$new$5(Landroid/view/ViewGroup;Lorg/telegram/ui/Stories/StoryViewer;Landroid/view/View;I)V
    .locals 5

    .line 347
    move-object p4, p3

    check-cast p4, Lorg/telegram/ui/Stories/LiveCommentsView$LiveCommentView;

    .line 348
    invoke-static {p4}, Lorg/telegram/ui/Stories/LiveCommentsView$LiveCommentView;->-$$Nest$fgetmessage(Lorg/telegram/ui/Stories/LiveCommentsView$LiveCommentView;)Lorg/telegram/ui/Stories/LiveCommentsView$Message;

    move-result-object v0

    .line 350
    new-instance v1, Lorg/telegram/ui/Stories/DarkThemeResourceProvider;

    invoke-direct {v1}, Lorg/telegram/ui/Stories/DarkThemeResourceProvider;-><init>()V

    invoke-static {p1, v1, p3}, Lorg/telegram/ui/Components/ItemOptions;->makeOptions(Landroid/view/ViewGroup;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    .line 351
    sget p3, Lorg/telegram/messenger/R$string;->LiveStoryMessageSent:I

    iget v1, v0, Lorg/telegram/ui/Stories/LiveCommentsView$Message;->date:I

    int-to-long v1, v1

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatDateTime(JZ)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v2, v4

    invoke-static {p3, v2}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const/16 v1, 0xf

    invoke-virtual {p1, p3, v1}, Lorg/telegram/ui/Components/ItemOptions;->addText(Ljava/lang/CharSequence;I)Lorg/telegram/ui/Components/ItemOptions;

    .line 352
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ItemOptions;->addGap()Lorg/telegram/ui/Components/ItemOptions;

    .line 353
    sget p3, Lorg/telegram/messenger/R$drawable;->msg_openprofile:I

    sget v1, Lorg/telegram/messenger/R$string;->OpenProfile:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Stories/LiveCommentsView$$ExternalSyntheticLambda13;

    invoke-direct {v2, p2, v0}, Lorg/telegram/ui/Stories/LiveCommentsView$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/Stories/StoryViewer;Lorg/telegram/ui/Stories/LiveCommentsView$Message;)V

    invoke-virtual {p1, p3, v1, v2}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    .line 356
    iget-boolean p2, v0, Lorg/telegram/ui/Stories/LiveCommentsView$Message;->isReaction:Z

    xor-int/2addr p2, v3

    sget p3, Lorg/telegram/messenger/R$drawable;->msg_copy:I

    sget v1, Lorg/telegram/messenger/R$string;->Copy:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Stories/LiveCommentsView$$ExternalSyntheticLambda14;

    invoke-direct {v2, p0, p4}, Lorg/telegram/ui/Stories/LiveCommentsView$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/Stories/LiveCommentsView;Lorg/telegram/ui/Stories/LiveCommentsView$LiveCommentView;)V

    invoke-virtual {p1, p2, p3, v1, v2}, Lorg/telegram/ui/Components/ItemOptions;->addIf(ZILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    .line 362
    iget-wide p2, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->dialogId:J

    iget p4, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->currentAccount:I

    .line 363
    invoke-static {p4}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p4

    invoke-virtual {p4}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v1

    cmp-long p2, p2, v1

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/LiveCommentsView;->isAdmin()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move v3, v4

    :cond_1
    :goto_0
    sget p2, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    sget p3, Lorg/telegram/messenger/R$string;->Delete:I

    .line 364
    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p3

    new-instance p4, Lorg/telegram/ui/Stories/LiveCommentsView$$ExternalSyntheticLambda15;

    invoke-direct {p4, p0, v0}, Lorg/telegram/ui/Stories/LiveCommentsView$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/Stories/LiveCommentsView;Lorg/telegram/ui/Stories/LiveCommentsView$Message;)V

    .line 362
    invoke-virtual {p1, v3, p2, p3, p4}, Lorg/telegram/ui/Components/ItemOptions;->addIf(ZILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    .line 400
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ItemOptions;->show()Lorg/telegram/ui/Components/ItemOptions;

    return-void
.end method

.method private synthetic lambda$new$6(Landroid/view/View;)V
    .locals 1

    .line 435
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->collapsed:Z

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Stories/LiveCommentsView;->setCollapsed(ZZ)V

    return-void
.end method

.method private synthetic lambda$new$7(Landroid/view/View;IFF)V
    .locals 9

    .line 452
    check-cast p1, Lorg/telegram/ui/Stories/LiveCommentsView$LiveTopSenderView;

    .line 453
    invoke-static {p1}, Lorg/telegram/ui/Stories/LiveCommentsView$LiveTopSenderView;->-$$Nest$fgetsender(Lorg/telegram/ui/Stories/LiveCommentsView$LiveTopSenderView;)Lorg/telegram/ui/Stories/LiveCommentsView$TopSender;

    move-result-object p1

    .line 455
    iget p2, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result p2

    .line 456
    new-instance p3, Ljava/util/HashSet;

    invoke-direct {p3}, Ljava/util/HashSet;-><init>()V

    const/4 p4, 0x0

    move v0, p4

    .line 457
    :goto_0
    iget-object v1, p1, Lorg/telegram/ui/Stories/LiveCommentsView$TopSender;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v2, 0x0

    if-ge v0, v1, :cond_1

    .line 458
    iget-object v1, p1, Lorg/telegram/ui/Stories/LiveCommentsView$TopSender;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Stories/LiveCommentsView$Message;

    .line 459
    iget-wide v4, v1, Lorg/telegram/ui/Stories/LiveCommentsView$Message;->stars:J

    cmp-long v2, v4, v2

    if-lez v2, :cond_0

    iget v2, v1, Lorg/telegram/ui/Stories/LiveCommentsView$Message;->date:I

    sub-int v2, p2, v2

    iget v3, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->currentAccount:I

    long-to-int v4, v4

    sget v5, Lorg/telegram/ui/Stories/HighlightMessageSheet;->TIER_PERIOD:I

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/Stories/HighlightMessageSheet;->getTierOption(III)I

    move-result v3

    if-gt v2, v3, :cond_0

    .line 460
    iget v1, v1, Lorg/telegram/ui/Stories/LiveCommentsView$Message;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 464
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->livePlayer:Lorg/telegram/ui/Stories/LivePlayer;

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Lorg/telegram/ui/Stories/LivePlayer;->getSendPaidMessagesStars()J

    move-result-wide v2

    :goto_1
    move p2, p4

    move v0, p2

    .line 467
    :goto_2
    iget-object v1, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v4, -0x1

    if-ge p2, v1, :cond_7

    .line 468
    iget-object v1, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Stories/LiveCommentsView$Message;

    .line 469
    iget-boolean v5, v1, Lorg/telegram/ui/Stories/LiveCommentsView$Message;->fromAdmin:Z

    if-nez v5, :cond_3

    iget-boolean v5, v1, Lorg/telegram/ui/Stories/LiveCommentsView$Message;->isReaction:Z

    if-eqz v5, :cond_3

    iget-wide v5, v1, Lorg/telegram/ui/Stories/LiveCommentsView$Message;->stars:J

    cmp-long v5, v5, v2

    if-ltz v5, :cond_6

    .line 470
    :cond_3
    iget v5, v1, Lorg/telegram/ui/Stories/LiveCommentsView$Message;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-wide v5, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->highlightingDialog:J

    iget-wide v7, p1, Lorg/telegram/ui/Stories/LiveCommentsView$TopSender;->dialogId:J

    cmp-long v5, v5, v7

    if-nez v5, :cond_4

    iget v5, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->highlightingMessageId:I

    if-eqz v5, :cond_4

    iget v6, v1, Lorg/telegram/ui/Stories/LiveCommentsView$Message;->id:I

    if-ge v6, v5, :cond_5

    .line 471
    :cond_4
    iget p2, v1, Lorg/telegram/ui/Stories/LiveCommentsView$Message;->id:I

    goto :goto_3

    :cond_5
    add-int/lit8 v0, v0, 0x1

    :cond_6
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_7
    move p2, v4

    :goto_3
    if-gez p2, :cond_c

    move p2, p4

    .line 480
    :goto_4
    iget-object v0, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p4, v0, :cond_9

    .line 481
    iget-object v0, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Stories/LiveCommentsView$Message;

    .line 482
    iget-boolean v1, v0, Lorg/telegram/ui/Stories/LiveCommentsView$Message;->fromAdmin:Z

    if-nez v1, :cond_8

    iget-boolean v1, v0, Lorg/telegram/ui/Stories/LiveCommentsView$Message;->isReaction:Z

    if-eqz v1, :cond_8

    iget-wide v5, v0, Lorg/telegram/ui/Stories/LiveCommentsView$Message;->stars:J

    cmp-long v1, v5, v2

    if-ltz v1, :cond_b

    .line 483
    :cond_8
    iget v1, v0, Lorg/telegram/ui/Stories/LiveCommentsView$Message;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 484
    iget v4, v0, Lorg/telegram/ui/Stories/LiveCommentsView$Message;->id:I

    :cond_9
    move v0, p2

    goto :goto_5

    :cond_a
    add-int/lit8 p2, p2, 0x1

    :cond_b
    add-int/lit8 p4, p4, 0x1

    goto :goto_4

    :cond_c
    move v4, p2

    :goto_5
    if-gez v4, :cond_d

    return-void

    .line 493
    :cond_d
    iget-wide p1, p1, Lorg/telegram/ui/Stories/LiveCommentsView$TopSender;->dialogId:J

    iput-wide p1, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->highlightingDialog:J

    .line 494
    iput v4, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->highlightingMessageId:I

    const/4 p1, 0x1

    .line 495
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->callHighlight:Z

    .line 497
    iget-object p2, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object p2

    .line 498
    iget-object p3, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 p4, 0x0

    invoke-virtual {p3, p4}, Lorg/telegram/ui/Components/RecyclerListView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 499
    iget-object p3, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object p4, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p4}, Landroid/view/View;->getHeight()I

    move-result p4

    div-int/lit8 p4, p4, 0x2

    invoke-virtual {p3, v0, p4, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(IIZ)V

    .line 500
    iget-object p1, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 501
    iget-object p1, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    return-void
.end method

.method private synthetic lambda$new$9()V
    .locals 0

    .line 764
    invoke-direct {p0}, Lorg/telegram/ui/Stories/LiveCommentsView;->pollStars()V

    return-void
.end method

.method private synthetic lambda$openStarsSheet$11(Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Integer;
    .locals 8

    .line 900
    iget-object p1, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->closeBulletin:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 901
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->localStars:J

    .line 902
    iget-object p1, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->topBulletinContainer:Landroid/widget/FrameLayout;

    new-instance v0, Lorg/telegram/ui/Stories/DarkThemeResourceProvider;

    invoke-direct {v0}, Lorg/telegram/ui/Stories/DarkThemeResourceProvider;-><init>()V

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$raw;->stars_topup:I

    .line 903
    invoke-direct {p0}, Lorg/telegram/ui/Stories/LiveCommentsView;->getStarsToastTitle()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lorg/telegram/ui/Stories/LiveCommentsView;->getStarsToastSubtitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    const/4 v0, 0x0

    .line 904
    iput-boolean v0, p1, Lorg/telegram/ui/Components/Bulletin;->hideAfterBottomSheet:Z

    const/4 v1, 0x1

    .line 905
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/Bulletin;->show(Z)Lorg/telegram/ui/Components/Bulletin;

    const-wide/16 v2, 0x0

    .line 907
    iput-wide v2, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->localStars:J

    .line 908
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->sentStars:Z

    .line 910
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p0, p1, v4, v5}, Lorg/telegram/ui/Stories/LiveCommentsView;->send(Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;J)I

    move-result p1

    .line 912
    iget-object v4, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->livePlayer:Lorg/telegram/ui/Stories/LivePlayer;

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Lorg/telegram/ui/Stories/LivePlayer;->getSendPaidMessagesStars()J

    move-result-wide v2

    .line 913
    :goto_0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/LiveCommentsView;->getDefaultPeerId()J

    move-result-wide v4

    iget-wide v6, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->dialogId:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/LiveCommentsView;->isAdmin()Z

    move-result v4

    if-eqz v4, :cond_1

    move v0, v1

    .line 914
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long p2, v4, v2

    if-gez p2, :cond_2

    if-nez v0, :cond_2

    const/high16 p1, -0x80000000

    .line 915
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 918
    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$pollStars$10(Lorg/telegram/tgnet/tl/TL_phone$getGroupCallStars;Lorg/telegram/tgnet/tl/TL_phone$groupCallStars;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 6

    const/4 p3, 0x0

    .line 774
    iput-boolean p3, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->polling:Z

    .line 775
    iget-object v0, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->inputCall:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    if-eqz v0, :cond_7

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$InputGroupCall;->id:J

    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_phone$getGroupCallStars;->call:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$InputGroupCall;->id:J

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    goto/16 :goto_2

    :cond_0
    if-eqz p2, :cond_6

    .line 780
    iget p1, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object v0, p2, Lorg/telegram/tgnet/tl/TL_phone$groupCallStars;->users:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, p3}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 781
    iget p1, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object v0, p2, Lorg/telegram/tgnet/tl/TL_phone$groupCallStars;->chats:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, p3}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    move p1, p3

    .line 784
    :goto_0
    iget-object v0, p2, Lorg/telegram/tgnet/tl/TL_phone$groupCallStars;->top_donors:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge p1, v0, :cond_2

    .line 785
    iget-object v0, p2, Lorg/telegram/tgnet/tl/TL_phone$groupCallStars;->top_donors:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/tl/TL_phone$groupCallDonor;

    iget-boolean v0, v0, Lorg/telegram/tgnet/tl/TL_phone$groupCallDonor;->my:Z

    if-eqz v0, :cond_1

    .line 786
    iget-object v0, p2, Lorg/telegram/tgnet/tl/TL_phone$groupCallStars;->top_donors:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/tl/TL_phone$groupCallDonor;

    iget-wide v2, p1, Lorg/telegram/tgnet/tl/TL_phone$groupCallDonor;->stars:J

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-lez p1, :cond_2

    move p1, v1

    goto :goto_1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    move p1, p3

    .line 790
    :goto_1
    iget-wide v2, p2, Lorg/telegram/tgnet/tl/TL_phone$groupCallStars;->total_stars:J

    iget-wide v4, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->totalStars:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->sentStars:Z

    if-eq v0, p1, :cond_4

    :cond_3
    move p3, v1

    .line 791
    :cond_4
    iput-wide v2, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->totalStars:J

    .line 792
    iget-object p2, p2, Lorg/telegram/tgnet/tl/TL_phone$groupCallStars;->top_donors:Ljava/util/ArrayList;

    iput-object p2, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->topDonors:Ljava/util/ArrayList;

    .line 793
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->sentStars:Z

    if-eqz p3, :cond_5

    .line 796
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/LiveCommentsView;->onStarsCountUpdated()V

    .line 798
    :cond_5
    invoke-direct {p0}, Lorg/telegram/ui/Stories/LiveCommentsView;->updateMessagesPlaces()V

    .line 801
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 802
    iget-object p1, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->pollStarsRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 803
    iget-object p1, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->pollStarsRunnable:Ljava/lang/Runnable;

    const-wide/16 p2, 0x1388

    invoke-static {p1, p2, p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_7
    :goto_2
    return-void
.end method

.method private synthetic lambda$scheduleRemovingTopSenders$0()V
    .locals 0

    .line 252
    invoke-direct {p0}, Lorg/telegram/ui/Stories/LiveCommentsView;->removeTopSenders()V

    return-void
.end method

.method private synthetic lambda$send$14(JLorg/telegram/tgnet/TLRPC$TL_textWithEntities;J)V
    .locals 0

    .line 1168
    invoke-virtual/range {p0 .. p5}, Lorg/telegram/ui/Stories/LiveCommentsView;->send(JLorg/telegram/tgnet/TLRPC$TL_textWithEntities;J)I

    return-void
.end method

.method private synthetic lambda$send$15(ILorg/telegram/tgnet/TLRPC$TL_error;JJLorg/telegram/tgnet/TLRPC$TL_textWithEntities;)V
    .locals 10

    .line 1166
    invoke-virtual/range {p0 .. p1}, Lorg/telegram/ui/Stories/LiveCommentsView;->delete(I)V

    .line 1167
    const-string p1, "BALANCE_TOO_LOW"

    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1168
    new-instance v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Stories/DarkThemeResourceProvider;

    invoke-direct {v2}, Lorg/telegram/ui/Stories/DarkThemeResourceProvider;-><init>()V

    new-instance v3, Lorg/telegram/ui/Stories/LiveCommentsView$$ExternalSyntheticLambda22;

    move-object v4, p0

    move-wide v8, p3

    move-wide v5, p5

    move-object/from16 v7, p7

    invoke-direct/range {v3 .. v9}, Lorg/telegram/ui/Stories/LiveCommentsView$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/ui/Stories/LiveCommentsView;JLorg/telegram/tgnet/TLRPC$TL_textWithEntities;J)V

    iget-wide v8, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->dialogId:J

    const/16 v5, 0x11

    const-string v6, ""

    move-object v7, v3

    move-wide v3, p3

    invoke-direct/range {v0 .. v9}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;JILjava/lang/String;Ljava/lang/Runnable;J)V

    invoke-virtual {v0}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet;->show()V

    return-void

    .line 1169
    :cond_0
    const-string v0, "GROUPCALL_INVALID"

    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1170
    iget-object p2, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->livePlayer:Lorg/telegram/ui/Stories/LivePlayer;

    if-eqz p2, :cond_1

    .line 1171
    invoke-virtual {p2}, Lorg/telegram/ui/Stories/LivePlayer;->storyDeleted()V

    :cond_1
    return-void

    .line 1174
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->topBulletinContainer:Landroid/widget/FrameLayout;

    new-instance v1, Lorg/telegram/ui/Stories/DarkThemeResourceProvider;

    invoke-direct {v1}, Lorg/telegram/ui/Stories/DarkThemeResourceProvider;-><init>()V

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Lorg/telegram/ui/Components/BulletinFactory;->showForError(Lorg/telegram/tgnet/TLRPC$TL_error;Z)V

    return-void
.end method

.method private synthetic lambda$send$16(Lorg/telegram/tgnet/tl/TL_phone$sendGroupCallMessage;IJJLorg/telegram/tgnet/TLRPC$TL_textWithEntities;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 12

    move-object/from16 v0, p8

    .line 1156
    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$Updates;

    if-eqz v2, :cond_2

    .line 1157
    check-cast v0, Lorg/telegram/tgnet/TLRPC$Updates;

    .line 1158
    const-class v2, Lorg/telegram/tgnet/TLRPC$TL_updateMessageID;

    invoke-static {v0, v2}, Lorg/telegram/messenger/MessagesController;->findUpdatesAndRemove(Lorg/telegram/tgnet/TLRPC$Updates;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :cond_0
    :goto_0
    if-ge v5, v3, :cond_1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_updateMessageID;

    .line 1159
    iget-wide v8, p1, Lorg/telegram/tgnet/tl/TL_phone$sendGroupCallMessage;->random_id:J

    iget-wide v10, v6, Lorg/telegram/tgnet/TLRPC$TL_updateMessageID;->random_id:J

    cmp-long v8, v8, v10

    if-nez v8, :cond_0

    .line 1160
    iget v6, v6, Lorg/telegram/tgnet/TLRPC$TL_updateMessageID;->id:I

    invoke-direct {p0, p2, v6}, Lorg/telegram/ui/Stories/LiveCommentsView;->updateMessageId(II)V

    goto :goto_0

    .line 1163
    :cond_1
    iget v2, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v2, v0, v4}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    return-void

    :cond_2
    if-eqz p9, :cond_3

    .line 1165
    new-instance v0, Lorg/telegram/ui/Stories/LiveCommentsView$$ExternalSyntheticLambda21;

    move-object v1, p0

    move v2, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v3, p9

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/Stories/LiveCommentsView$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/ui/Stories/LiveCommentsView;ILorg/telegram/tgnet/TLRPC$TL_error;JJLorg/telegram/tgnet/TLRPC$TL_textWithEntities;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_3
    return-void
.end method

.method private synthetic lambda$setCollapsed$13(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 980
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 981
    iget-object v0, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 982
    iget-object v0, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->shadowView:Landroid/view/View;

    const/4 v1, 0x0

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-static {v1, v2, p1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 983
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$updateTopMessages$8(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 638
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public static openDeleteMessage(Landroid/content/Context;JLorg/telegram/messenger/Utilities$Callback3;)V
    .locals 21

    move-object/from16 v1, p0

    .line 2089
    new-instance v5, Lorg/telegram/ui/Stories/LiveCommentsView$8;

    invoke-direct {v5}, Lorg/telegram/ui/Stories/LiveCommentsView$8;-><init>()V

    .line 2095
    new-instance v11, Lorg/telegram/ui/ActionBar/BottomSheet;

    const/4 v6, 0x0

    invoke-direct {v11, v1, v6, v5}, Lorg/telegram/ui/ActionBar/BottomSheet;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 2096
    invoke-virtual {v11}, Lorg/telegram/ui/ActionBar/BottomSheet;->fixNavigationBar()V

    .line 2098
    new-instance v12, Landroid/widget/LinearLayout;

    invoke-direct {v12, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v7, 0x1

    .line 2099
    invoke-virtual {v12, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2101
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v2, 0x41a00000    # 20.0f

    .line 2102
    invoke-virtual {v0, v7, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2103
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-static {v2, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2104
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2105
    sget v2, Lorg/telegram/messenger/R$string;->DeleteSingleMessagesTitle:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v17, 0x41b00000    # 22.0f

    const/16 v18, 0x0

    const/4 v13, -0x1

    const/4 v14, -0x2

    const/high16 v15, 0x41b00000    # 22.0f

    const/high16 v16, 0x41400000    # 12.0f

    .line 2106
    invoke-static/range {v13 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v12, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2108
    new-instance v0, Lorg/telegram/ui/Cells/HeaderCell;

    invoke-direct {v0, v1, v5}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 2109
    sget v2, Lorg/telegram/messenger/R$string;->DeleteAdditionalActions:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    const/16 v17, 0x0

    const/high16 v18, 0x40800000    # 4.0f

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 2110
    invoke-static/range {v13 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v12, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2112
    new-instance v0, Lorg/telegram/ui/Cells/CheckBoxCell;

    const/16 v3, 0x15

    const/4 v4, 0x1

    const/4 v2, 0x4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Cells/CheckBoxCell;-><init>(Landroid/content/Context;IIZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    move-object v8, v0

    .line 2113
    invoke-virtual {v8}, Lorg/telegram/ui/Cells/CheckBoxCell;->getCheckBoxRound()Lorg/telegram/ui/Components/CheckBox2;

    move-result-object v0

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_switch2TrackChecked:I

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_radioBackground:I

    sget v13, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxCheck:I

    invoke-virtual {v0, v9, v10, v13}, Lorg/telegram/ui/Components/CheckBox2;->setColor(III)V

    .line 2114
    sget v0, Lorg/telegram/messenger/R$string;->DeleteReportSpam:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v14, 0x0

    invoke-virtual {v8, v0, v14, v6, v7}, Lorg/telegram/ui/Cells/CheckBoxCell;->setText(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)V

    .line 2115
    new-instance v0, Lorg/telegram/ui/Stories/LiveCommentsView$$ExternalSyntheticLambda23;

    invoke-direct {v0, v8}, Lorg/telegram/ui/Stories/LiveCommentsView$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/ui/Cells/CheckBoxCell;)V

    invoke-virtual {v8, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2118
    sget v15, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-static {v15, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, -0x1

    const/4 v2, -0x2

    .line 2119
    invoke-static {v0, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v12, v8, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move v3, v0

    .line 2121
    new-instance v0, Lorg/telegram/ui/Cells/CheckBoxCell;

    move v4, v3

    const/16 v3, 0x15

    move/from16 v16, v4

    const/4 v4, 0x1

    move/from16 v17, v2

    const/4 v2, 0x4

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Cells/CheckBoxCell;-><init>(Landroid/content/Context;IIZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    move-object/from16 v16, v8

    move-object v8, v0

    .line 2122
    invoke-virtual {v8}, Lorg/telegram/ui/Cells/CheckBoxCell;->getCheckBoxRound()Lorg/telegram/ui/Components/CheckBox2;

    move-result-object v0

    invoke-virtual {v0, v9, v10, v13}, Lorg/telegram/ui/Components/CheckBox2;->setColor(III)V

    .line 2123
    sget v0, Lorg/telegram/messenger/R$string;->DeleteAllFrom:I

    invoke-static/range {p1 .. p2}, Lorg/telegram/messenger/DialogObject;->getName(J)Ljava/lang/String;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/Object;

    aput-object v1, v2, v6

    invoke-static {v0, v2}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0, v14, v6, v7}, Lorg/telegram/ui/Cells/CheckBoxCell;->setText(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)V

    .line 2124
    new-instance v0, Lorg/telegram/ui/Stories/LiveCommentsView$$ExternalSyntheticLambda24;

    invoke-direct {v0, v8}, Lorg/telegram/ui/Stories/LiveCommentsView$$ExternalSyntheticLambda24;-><init>(Lorg/telegram/ui/Cells/CheckBoxCell;)V

    invoke-virtual {v8, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2127
    invoke-static {v15, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, -0x1

    const/4 v2, -0x2

    .line 2128
    invoke-static {v0, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v12, v8, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move v3, v0

    .line 2130
    new-instance v0, Lorg/telegram/ui/Cells/CheckBoxCell;

    move v4, v3

    const/16 v3, 0x15

    move/from16 v20, v4

    const/4 v4, 0x1

    move/from16 v17, v2

    const/4 v2, 0x4

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Cells/CheckBoxCell;-><init>(Landroid/content/Context;IIZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 2131
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/CheckBoxCell;->getCheckBoxRound()Lorg/telegram/ui/Components/CheckBox2;

    move-result-object v2

    invoke-virtual {v2, v9, v10, v13}, Lorg/telegram/ui/Components/CheckBox2;->setColor(III)V

    .line 2132
    sget v2, Lorg/telegram/messenger/R$string;->DeleteBan:I

    invoke-static/range {p1 .. p2}, Lorg/telegram/messenger/DialogObject;->getName(J)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v3, v4, v6

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v14, v6, v6}, Lorg/telegram/ui/Cells/CheckBoxCell;->setText(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)V

    .line 2133
    new-instance v2, Lorg/telegram/ui/Stories/LiveCommentsView$$ExternalSyntheticLambda25;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Stories/LiveCommentsView$$ExternalSyntheticLambda25;-><init>(Lorg/telegram/ui/Cells/CheckBoxCell;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2136
    invoke-static {v15, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v2, -0x2

    const/4 v3, -0x1

    .line 2137
    invoke-static {v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v12, v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2139
    new-instance v4, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-direct {v4, v1, v5}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/high16 v7, -0x1000000

    .line 2140
    invoke-virtual {v4, v7}, Landroid/view/View;->setBackgroundColor(I)V

    const/16 v7, 0xc

    .line 2141
    invoke-virtual {v4, v7}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setFixedSize(I)V

    .line 2142
    invoke-static {v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v12, v4, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2144
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2145
    new-instance v13, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-direct {v13, v1, v5}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 2146
    sget v1, Lorg/telegram/messenger/R$string;->DeleteProceedBtn:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1, v6}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    .line 2147
    new-instance v6, Lorg/telegram/ui/Stories/LiveCommentsView$$ExternalSyntheticLambda26;

    move-object/from16 v10, p3

    move-object v9, v0

    move-object/from16 v7, v16

    invoke-direct/range {v6 .. v11}, Lorg/telegram/ui/Stories/LiveCommentsView$$ExternalSyntheticLambda26;-><init>(Lorg/telegram/ui/Cells/CheckBoxCell;Lorg/telegram/ui/Cells/CheckBoxCell;Lorg/telegram/ui/Cells/CheckBoxCell;Lorg/telegram/messenger/Utilities$Callback3;Lorg/telegram/ui/ActionBar/BottomSheet;)V

    invoke-virtual {v13, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/high16 v19, 0x41800000    # 16.0f

    const/high16 v20, 0x41800000    # 16.0f

    const/4 v14, -0x1

    const/high16 v15, 0x42400000    # 48.0f

    const/16 v16, 0x77

    const/high16 v17, 0x41800000    # 16.0f

    const/high16 v18, 0x41800000    # 16.0f

    .line 2155
    invoke-static/range {v14 .. v20}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v4, v13, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2156
    invoke-static {v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v12, v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2158
    invoke-virtual {v11, v12}, Lorg/telegram/ui/ActionBar/BottomSheet;->setCustomView(Landroid/view/View;)V

    .line 2159
    invoke-virtual {v11}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    return-void
.end method

.method private pollStars()V
    .locals 4

    .line 766
    iget-object v0, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->inputCall:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->polling:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 768
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->pollStarsRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    .line 769
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->polling:Z

    .line 771
    new-instance v0, Lorg/telegram/tgnet/tl/TL_phone$getGroupCallStars;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_phone$getGroupCallStars;-><init>()V

    .line 772
    iget-object v1, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->inputCall:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_phone$getGroupCallStars;->call:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    .line 773
    iget v1, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/BotForumHelper$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lorg/telegram/messenger/BotForumHelper$$ExternalSyntheticLambda2;-><init>()V

    new-instance v3, Lorg/telegram/ui/Stories/LiveCommentsView$$ExternalSyntheticLambda9;

    invoke-direct {v3, p0, v0}, Lorg/telegram/ui/Stories/LiveCommentsView$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Stories/LiveCommentsView;Lorg/telegram/tgnet/tl/TL_phone$getGroupCallStars;)V

    invoke-virtual {v1, v0, v2, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequestTyped(Lorg/telegram/tgnet/TLMethod;Ljava/util/concurrent/Executor;Lorg/telegram/messenger/Utilities$Callback2;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private removeTopSenders()V
    .locals 4

    .line 220
    iget-object v0, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->removeTopSendersRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 221
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 222
    iput-object v0, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->removeTopSendersRunnable:Ljava/lang/Runnable;

    .line 225
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v0

    .line 226
    iget-object v1, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->topMessages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_2

    .line 227
    iget-object v3, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->topMessages:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Stories/LiveCommentsView$TopSender;

    invoke-virtual {v3, v0}, Lorg/telegram/ui/Stories/LiveCommentsView$TopSender;->isExpired(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 228
    iget-object v3, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->topMessages:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 231
    :cond_2
    iput v0, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->lastNow:I

    .line 232
    iget-object v0, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->topMessages:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/Stories/LiveCommentsView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/LiveCommentsView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/LiveCommentsView;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 233
    iget-object v0, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->topAdapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    .line 235
    invoke-direct {p0, v2}, Lorg/telegram/ui/Stories/LiveCommentsView;->updateTopMessages(Z)V

    .line 236
    invoke-direct {p0}, Lorg/telegram/ui/Stories/LiveCommentsView;->scheduleRemovingTopSenders()V

    return-void
.end method

.method private scheduleRemovingTopSenders()V
    .locals 12

    .line 239
    iget-object v0, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->removeTopSendersRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 240
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 241
    iput-object v0, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->removeTopSendersRunnable:Ljava/lang/Runnable;

    .line 243
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v0

    .line 245
    iget-object v1, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->topMessages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const-wide v3, 0x7fffffffffffffffL

    const/4 v5, 0x0

    move-wide v6, v3

    :goto_0
    if-ge v5, v2, :cond_1

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v5, v5, 0x1

    check-cast v8, Lorg/telegram/ui/Stories/LiveCommentsView$TopSender;

    .line 246
    invoke-virtual {v8, v0}, Lorg/telegram/ui/Stories/LiveCommentsView$TopSender;->expiresAfter(I)I

    move-result v8

    int-to-long v8, v8

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    goto :goto_0

    :cond_1
    cmp-long v0, v6, v3

    if-ltz v0, :cond_2

    return-void

    .line 252
    :cond_2
    new-instance v0, Lorg/telegram/ui/Stories/LiveCommentsView$$ExternalSyntheticLambda17;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/LiveCommentsView$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/Stories/LiveCommentsView;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->removeTopSendersRunnable:Ljava/lang/Runnable;

    invoke-static {v0, v6, v7}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private sortTopMessages(Lorg/telegram/ui/Stories/LiveCommentsView$TopSender;Lorg/telegram/ui/Stories/LiveCommentsView$TopSender;)I
    .locals 0

    .line 1072
    iget p2, p2, Lorg/telegram/ui/Stories/LiveCommentsView$TopSender;->lastSentDate:I

    iget p1, p1, Lorg/telegram/ui/Stories/LiveCommentsView$TopSender;->lastSentDate:I

    sub-int/2addr p2, p1

    return p2
.end method

.method private updateMessageId(II)V
    .locals 5

    .line 1215
    iget-object v0, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lorg/telegram/ui/Stories/LiveCommentsView$Message;

    .line 1216
    iget v4, v3, Lorg/telegram/ui/Stories/LiveCommentsView$Message;->id:I

    if-ne v4, p1, :cond_0

    .line 1217
    iput p2, v3, Lorg/telegram/ui/Stories/LiveCommentsView$Message;->id:I

    :cond_1
    return-void
.end method

.method private updateMessagesPlaces()V
    .locals 10

    .line 1422
    iget-object v0, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->topPlaces:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1423
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1424
    iget-object v1, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->topDonors:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 1425
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1427
    :cond_0
    new-instance v1, Lorg/telegram/ui/Stories/LiveCommentsView$$ExternalSyntheticLambda11;

    invoke-direct {v1}, Lorg/telegram/ui/Stories/LiveCommentsView$$ExternalSyntheticLambda11;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1431
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/high16 v3, -0x80000000

    move v4, v2

    move v5, v4

    :goto_0
    if-ge v5, v1, :cond_3

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Lorg/telegram/tgnet/tl/TL_phone$groupCallDonor;

    .line 1432
    iget-wide v7, v6, Lorg/telegram/tgnet/tl/TL_phone$groupCallDonor;->stars:J

    long-to-int v7, v7

    if-eq v7, v3, :cond_1

    add-int/lit8 v4, v4, 0x1

    move v3, v7

    :cond_1
    const/4 v7, 0x3

    if-le v4, v7, :cond_2

    goto :goto_1

    .line 1440
    :cond_2
    iget-object v7, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->topPlaces:Ljava/util/HashMap;

    iget-object v6, v6, Lorg/telegram/tgnet/tl/TL_phone$groupCallDonor;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v6}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    :goto_1
    move v0, v2

    .line 1443
    :goto_2
    iget-object v1, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 1444
    iget-object v1, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1445
    instance-of v3, v1, Lorg/telegram/ui/Stories/LiveCommentsView$LiveCommentView;

    if-eqz v3, :cond_4

    .line 1446
    check-cast v1, Lorg/telegram/ui/Stories/LiveCommentsView$LiveCommentView;

    .line 1447
    invoke-static {v1}, Lorg/telegram/ui/Stories/LiveCommentsView$LiveCommentView;->-$$Nest$fgetmessage(Lorg/telegram/ui/Stories/LiveCommentsView$LiveCommentView;)Lorg/telegram/ui/Stories/LiveCommentsView$Message;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 1448
    invoke-static {v1}, Lorg/telegram/ui/Stories/LiveCommentsView$LiveCommentView;->-$$Nest$fgetmessage(Lorg/telegram/ui/Stories/LiveCommentsView$LiveCommentView;)Lorg/telegram/ui/Stories/LiveCommentsView$Message;

    move-result-object v3

    iget-wide v3, v3, Lorg/telegram/ui/Stories/LiveCommentsView$Message;->dialogId:J

    invoke-direct {p0, v3, v4}, Lorg/telegram/ui/Stories/LiveCommentsView;->getPlace(J)I

    move-result v3

    .line 1449
    invoke-static {v1}, Lorg/telegram/ui/Stories/LiveCommentsView$LiveCommentView;->-$$Nest$fgetmessage(Lorg/telegram/ui/Stories/LiveCommentsView$LiveCommentView;)Lorg/telegram/ui/Stories/LiveCommentsView$Message;

    move-result-object v4

    iget v4, v4, Lorg/telegram/ui/Stories/LiveCommentsView$Message;->place:I

    if-eq v3, v4, :cond_4

    .line 1450
    invoke-static {v1}, Lorg/telegram/ui/Stories/LiveCommentsView$LiveCommentView;->-$$Nest$fgetmessage(Lorg/telegram/ui/Stories/LiveCommentsView$LiveCommentView;)Lorg/telegram/ui/Stories/LiveCommentsView$Message;

    move-result-object v4

    iput v3, v4, Lorg/telegram/ui/Stories/LiveCommentsView$Message;->place:I

    .line 1451
    invoke-static {v1}, Lorg/telegram/ui/Stories/LiveCommentsView$LiveCommentView;->-$$Nest$fgetmessage(Lorg/telegram/ui/Stories/LiveCommentsView$LiveCommentView;)Lorg/telegram/ui/Stories/LiveCommentsView$Message;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Stories/LiveCommentsView$LiveCommentView;->set(Lorg/telegram/ui/Stories/LiveCommentsView$Message;)V

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    move v0, v2

    .line 1456
    :goto_3
    iget-object v1, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 1457
    iget-object v1, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Stories/LiveCommentsView$Message;

    .line 1458
    iget-wide v3, v1, Lorg/telegram/ui/Stories/LiveCommentsView$Message;->dialogId:J

    invoke-direct {p0, v3, v4}, Lorg/telegram/ui/Stories/LiveCommentsView;->getPlace(J)I

    move-result v3

    .line 1459
    iget v4, v1, Lorg/telegram/ui/Stories/LiveCommentsView$Message;->place:I

    if-eq v3, v4, :cond_6

    .line 1460
    iput v3, v1, Lorg/telegram/ui/Stories/LiveCommentsView$Message;->place:I

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    move v0, v2

    .line 1464
    :goto_4
    iget-object v1, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->topListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_9

    .line 1465
    iget-object v1, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->topListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1466
    instance-of v3, v1, Lorg/telegram/ui/Stories/LiveCommentsView$LiveTopSenderView;

    if-eqz v3, :cond_8

    .line 1467
    check-cast v1, Lorg/telegram/ui/Stories/LiveCommentsView$LiveTopSenderView;

    .line 1468
    invoke-static {v1}, Lorg/telegram/ui/Stories/LiveCommentsView$LiveTopSenderView;->-$$Nest$fgetsender(Lorg/telegram/ui/Stories/LiveCommentsView$LiveTopSenderView;)Lorg/telegram/ui/Stories/LiveCommentsView$TopSender;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 1469
    invoke-static {v1}, Lorg/telegram/ui/Stories/LiveCommentsView$LiveTopSenderView;->-$$Nest$fgetsender(Lorg/telegram/ui/Stories/LiveCommentsView$LiveTopSenderView;)Lorg/telegram/ui/Stories/LiveCommentsView$TopSender;

    move-result-object v3

    iget-wide v3, v3, Lorg/telegram/ui/Stories/LiveCommentsView$TopSender;->dialogId:J

    invoke-direct {p0, v3, v4}, Lorg/telegram/ui/Stories/LiveCommentsView;->getPlace(J)I

    move-result v3

    .line 1470
    invoke-static {v1}, Lorg/telegram/ui/Stories/LiveCommentsView$LiveTopSenderView;->-$$Nest$fgetsender(Lorg/telegram/ui/Stories/LiveCommentsView$LiveTopSenderView;)Lorg/telegram/ui/Stories/LiveCommentsView$TopSender;

    move-result-object v4

    iget v4, v4, Lorg/telegram/ui/Stories/LiveCommentsView$TopSender;->place:I

    if-eq v3, v4, :cond_8

    .line 1471
    invoke-static {v1}, Lorg/telegram/ui/Stories/LiveCommentsView$LiveTopSenderView;->-$$Nest$fgetsender(Lorg/telegram/ui/Stories/LiveCommentsView$LiveTopSenderView;)Lorg/telegram/ui/Stories/LiveCommentsView$TopSender;

    move-result-object v4

    iput v3, v4, Lorg/telegram/ui/Stories/LiveCommentsView$TopSender;->place:I

    .line 1472
    invoke-static {v1}, Lorg/telegram/ui/Stories/LiveCommentsView$LiveTopSenderView;->-$$Nest$fgetsender(Lorg/telegram/ui/Stories/LiveCommentsView$LiveTopSenderView;)Lorg/telegram/ui/Stories/LiveCommentsView$TopSender;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Stories/LiveCommentsView$LiveTopSenderView;->set(Lorg/telegram/ui/Stories/LiveCommentsView$TopSender;)V

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1477
    :cond_9
    :goto_5
    iget-object v0, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->topMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_b

    .line 1478
    iget-object v0, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->topMessages:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Stories/LiveCommentsView$TopSender;

    .line 1479
    iget-wide v3, v0, Lorg/telegram/ui/Stories/LiveCommentsView$TopSender;->dialogId:J

    invoke-direct {p0, v3, v4}, Lorg/telegram/ui/Stories/LiveCommentsView;->getPlace(J)I

    move-result v1

    .line 1480
    iget v3, v0, Lorg/telegram/ui/Stories/LiveCommentsView$TopSender;->place:I

    if-eq v1, v3, :cond_a

    .line 1481
    iput v1, v0, Lorg/telegram/ui/Stories/LiveCommentsView$TopSender;->place:I

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_b
    return-void
.end method

.method private updateTopMessages(Z)V
    .locals 7

    if-eqz p1, :cond_0

    .line 629
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->hasTopMessages:Z

    iget-object v1, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->topMessages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 631
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->topMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    iput-boolean v1, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->hasTopMessages:Z

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x420c0000    # 35.0f

    const/4 v3, 0x0

    if-eqz p1, :cond_4

    .line 634
    iget-object p1, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 635
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->hasTopMessages:Z

    if-eqz v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    .line 636
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v4, Lorg/telegram/ui/Stories/LiveCommentsView$$ExternalSyntheticLambda19;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Stories/LiveCommentsView$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/Stories/LiveCommentsView;)V

    .line 637
    invoke-virtual {p1, v4}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v4, 0x1a4

    .line 640
    invoke-virtual {p1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 641
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 642
    iget-object p1, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->topListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 643
    iget-boolean v6, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->hasTopMessages:Z

    if-eqz v6, :cond_2

    move v2, v3

    goto :goto_1

    :cond_2
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    :goto_1
    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 644
    iget-boolean v2, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->hasTopMessages:Z

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    move v1, v3

    :goto_2
    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 645
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 646
    invoke-virtual {p1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 647
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void

    .line 649
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-nez v0, :cond_5

    move v0, v3

    goto :goto_3

    :cond_5
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    :goto_3
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setTranslationY(F)V

    .line 650
    iget-object p1, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->topListView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->hasTopMessages:Z

    if-eqz v0, :cond_6

    move v0, v3

    goto :goto_4

    :cond_6
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    :goto_4
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setTranslationY(F)V

    .line 651
    iget-object p1, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->topListView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->hasTopMessages:Z

    if-eqz v0, :cond_7

    goto :goto_5

    :cond_7
    move v1, v3

    :goto_5
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 652
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method public areSendingStars()Z
    .locals 1

    .line 1258
    iget-object v0, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->starsBulletin:Lorg/telegram/ui/Components/Bulletin;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public cancelStars()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 940
    iput-wide v0, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->localStars:J

    .line 941
    invoke-direct {p0}, Lorg/telegram/ui/Stories/LiveCommentsView;->getDefaultPeerId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Stories/LiveCommentsView;->onCancelledStarReaction(J)V

    .line 942
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/LiveCommentsView;->onStarsButtonCancelled()V

    .line 943
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/LiveCommentsView;->onStarsCountUpdated()V

    return-void
.end method

.method public clear()V
    .locals 2

    .line 675
    iget-object v0, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 676
    iget-object v0, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    return-void
.end method

.method public delete(I)V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    .line 1028
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1029
    iget-object v2, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Stories/LiveCommentsView$Message;

    iget v2, v2, Lorg/telegram/ui/Stories/LiveCommentsView$Message;->id:I

    if-ne v2, p1, :cond_0

    .line 1030
    iget-object p1, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->messages:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Stories/LiveCommentsView$Message;

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    const/4 p1, 0x0

    :goto_1
    if-nez p1, :cond_2

    goto/16 :goto_4

    .line 1037
    :cond_2
    iget v2, p1, Lorg/telegram/ui/Stories/LiveCommentsView$Message;->id:I

    if-gez v2, :cond_3

    iget-boolean v2, p1, Lorg/telegram/ui/Stories/LiveCommentsView$Message;->isReaction:Z

    if-eqz v2, :cond_3

    iget-wide v2, p1, Lorg/telegram/ui/Stories/LiveCommentsView$Message;->stars:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_3

    .line 1038
    iget-wide v4, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->totalStars:J

    sub-long/2addr v4, v2

    iput-wide v4, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->totalStars:J

    .line 1039
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/LiveCommentsView;->onStarsCountUpdated()V

    :cond_3
    move v2, v0

    .line 1043
    :goto_2
    iget-object v3, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->topMessages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_6

    .line 1044
    iget-object v3, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->topMessages:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Stories/LiveCommentsView$TopSender;

    iget-object v3, v3, Lorg/telegram/ui/Stories/LiveCommentsView$TopSender;->messages:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1045
    iget-object v3, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->topMessages:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Stories/LiveCommentsView$TopSender;

    iget-object v3, v3, Lorg/telegram/ui/Stories/LiveCommentsView$TopSender;->messages:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1046
    iget-object p1, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->topMessages:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Stories/LiveCommentsView$TopSender;

    iget-object p1, p1, Lorg/telegram/ui/Stories/LiveCommentsView$TopSender;->messages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1047
    iget-object p1, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->topMessages:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v0, v4

    goto :goto_3

    .line 1050
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->topMessages:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Stories/LiveCommentsView$TopSender;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/LiveCommentsView$TopSender;->updateLastSentDate()V

    .line 1051
    invoke-direct {p0}, Lorg/telegram/ui/Stories/LiveCommentsView;->scheduleRemovingTopSenders()V

    goto :goto_3

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1057
    :cond_6
    :goto_3
    iget-object p1, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->messages:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1058
    iget-object p1, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p1, v4}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    if-eqz v0, :cond_7

    .line 1061
    iget p1, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->lastNow:I

    .line 1062
    iget-object p1, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->topMessages:Ljava/util/ArrayList;

    new-instance v0, Lorg/telegram/ui/Stories/LiveCommentsView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/LiveCommentsView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/LiveCommentsView;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1063
    iget-object p1, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->topAdapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p1, v4}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    .line 1064
    invoke-direct {p0}, Lorg/telegram/ui/Stories/LiveCommentsView;->updateMessagesPlaces()V

    .line 1066
    invoke-direct {p0, v4}, Lorg/telegram/ui/Stories/LiveCommentsView;->updateTopMessages(Z)V

    :cond_7
    :goto_4
    return-void
.end method

.method public deleteAllFrom(J)V
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 1078
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->messages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v1, v3, :cond_4

    .line 1079
    iget-object v3, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->messages:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Stories/LiveCommentsView$Message;

    iget-wide v5, v3, Lorg/telegram/ui/Stories/LiveCommentsView$Message;->dialogId:J

    cmp-long v3, v5, p1

    if-nez v3, :cond_3

    .line 1080
    iget-object v3, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->messages:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Stories/LiveCommentsView$Message;

    move v5, v0

    .line 1082
    :goto_1
    iget-object v6, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->topMessages:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 1083
    iget-object v6, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->topMessages:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/Stories/LiveCommentsView$TopSender;

    iget-object v6, v6, Lorg/telegram/ui/Stories/LiveCommentsView$TopSender;->messages:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1084
    iget-object v6, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->topMessages:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/Stories/LiveCommentsView$TopSender;

    iget-object v6, v6, Lorg/telegram/ui/Stories/LiveCommentsView$TopSender;->messages:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1085
    iget-object v3, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->topMessages:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Stories/LiveCommentsView$TopSender;

    iget-object v3, v3, Lorg/telegram/ui/Stories/LiveCommentsView$TopSender;->messages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1086
    iget-object v2, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->topMessages:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v2, v4

    goto :goto_2

    .line 1089
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/LiveCommentsView;->scheduleRemovingTopSenders()V

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1095
    :cond_2
    :goto_2
    iget-object v3, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->messages:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1096
    iget-object v3, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    add-int/lit8 v1, v1, -0x1

    :cond_3
    add-int/2addr v1, v4

    goto :goto_0

    :cond_4
    if-eqz v2, :cond_5

    .line 1102
    iget p1, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->lastNow:I

    .line 1103
    iget-object p1, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->topMessages:Ljava/util/ArrayList;

    new-instance p2, Lorg/telegram/ui/Stories/LiveCommentsView$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Stories/LiveCommentsView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/LiveCommentsView;)V

    invoke-static {p1, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1104
    iget-object p1, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->topAdapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p1, v4}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    .line 1105
    invoke-direct {p0}, Lorg/telegram/ui/Stories/LiveCommentsView;->updateMessagesPlaces()V

    :cond_5
    return-void
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 12

    .line 1005
    sget p2, Lorg/telegram/messenger/NotificationCenter;->liveStoryMessageUpdate:I

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    .line 1006
    aget-object p2, p3, p1

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const/4 p2, 0x1

    .line 1007
    aget-object p2, p3, p2

    check-cast p2, Lorg/telegram/tgnet/TLObject;

    const/4 v2, 0x2

    .line 1008
    aget-object p3, p3, v2

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    .line 1009
    instance-of p3, p2, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallMessage;

    if-eqz p3, :cond_1

    .line 1010
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallMessage;

    .line 1011
    iget-object p1, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->inputCall:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    if-eqz p1, :cond_0

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$InputGroupCall;->id:J

    cmp-long p1, v2, v0

    if-nez p1, :cond_0

    .line 1012
    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallMessage;->message:Lorg/telegram/tgnet/TLRPC$GroupCallMessage;

    iget v3, p1, Lorg/telegram/tgnet/TLRPC$GroupCallMessage;->date:I

    iget v4, p1, Lorg/telegram/tgnet/TLRPC$GroupCallMessage;->id:I

    iget-boolean v5, p1, Lorg/telegram/tgnet/TLRPC$GroupCallMessage;->from_admin:Z

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$GroupCallMessage;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {p1}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v6

    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallMessage;->message:Lorg/telegram/tgnet/TLRPC$GroupCallMessage;

    iget-object v8, p1, Lorg/telegram/tgnet/TLRPC$GroupCallMessage;->message:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    iget-wide v9, p1, Lorg/telegram/tgnet/TLRPC$GroupCallMessage;->paid_message_stars:J

    move-object v2, p0

    invoke-virtual/range {v2 .. v11}, Lorg/telegram/ui/Stories/LiveCommentsView;->push(IIZJLorg/telegram/tgnet/TLRPC$TL_textWithEntities;JZ)V

    return-void

    :cond_0
    move-object v2, p0

    goto :goto_1

    :cond_1
    move-object v2, p0

    .line 1014
    instance-of p3, p2, Lorg/telegram/tgnet/TLRPC$TL_updateDeleteGroupCallMessages;

    if-eqz p3, :cond_2

    .line 1015
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_updateDeleteGroupCallMessages;

    .line 1016
    iget-object p3, v2, Lorg/telegram/ui/Stories/LiveCommentsView;->inputCall:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    if-eqz p3, :cond_2

    iget-wide v3, p3, Lorg/telegram/tgnet/TLRPC$InputGroupCall;->id:J

    cmp-long p3, v3, v0

    if-nez p3, :cond_2

    .line 1017
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_updateDeleteGroupCallMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p3

    :goto_0
    if-ge p1, p3, :cond_2

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 p1, p1, 0x1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1018
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/LiveCommentsView;->delete(I)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 548
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->allowTouches:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 549
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/LiveCommentsView;->top()F

    move-result v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    return v1

    .line 552
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 11

    .line 598
    iget-object v0, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-ne p2, v0, :cond_1

    .line 599
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    const/4 v2, 0x1

    if-gtz v0, :cond_0

    return v2

    .line 603
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    iget v3, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->keyboardOffset:F

    iget-object v4, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    add-float/2addr v0, v3

    .line 605
    iget-object v3, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v5

    iget-object v3, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v6

    iget-object v3, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    add-float v7, v3, v4

    iget-object v3, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    add-float v8, v3, v4

    const/16 v9, 0xff

    const/16 v10, 0x1f

    move-object v4, p1

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 606
    invoke-virtual {v4}, Landroid/graphics/Canvas;->save()I

    .line 608
    iget-object p1, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p1

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float p1, v3, p1

    iget-object v5, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v5}, Landroid/view/View;->getY()F

    move-result v5

    iget-object v6, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    sub-float/2addr v5, v0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/LiveCommentsView;->getListViewTop()I

    move-result v6

    int-to-float v6, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    mul-float/2addr p1, v5

    invoke-virtual {v4, v1, p1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 610
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v1, v0, p1, v5}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 611
    invoke-super {p0, v4, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    .line 612
    invoke-virtual {v4}, Landroid/graphics/Canvas;->restore()V

    .line 614
    sget-object p2, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p3

    int-to-float p3, p3

    const/high16 p4, 0x41400000    # 12.0f

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v0

    invoke-virtual {p2, v1, v0, p3, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 615
    iget-object p3, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->gradientClip:Lorg/telegram/ui/GradientClip;

    invoke-virtual {p3, v4, p2, v2, v3}, Lorg/telegram/ui/GradientClip;->draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;IF)V

    .line 617
    iget-object p3, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p3}, Landroid/view/View;->getY()F

    move-result p3

    iget-object v0, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p3, v0

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p4

    int-to-float p4, p4

    sub-float/2addr p3, p4

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p4

    int-to-float p4, p4

    iget-object v0, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    int-to-float v0, v0

    invoke-virtual {p2, v1, p3, p4, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 618
    iget-object p3, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->gradientClip:Lorg/telegram/ui/GradientClip;

    const/4 p4, 0x3

    invoke-virtual {p3, v4, p2, p4, v3}, Lorg/telegram/ui/GradientClip;->draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;IF)V

    .line 620
    invoke-virtual {v4}, Landroid/graphics/Canvas;->restore()V

    return p1

    :cond_1
    move-object v4, p1

    .line 624
    invoke-super {p0, v4, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method public findComment(I)Lorg/telegram/ui/Stories/LiveCommentsView$LiveCommentView;
    .locals 3

    const/4 v0, 0x0

    .line 809
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 810
    iget-object v1, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 811
    instance-of v2, v1, Lorg/telegram/ui/Stories/LiveCommentsView$LiveCommentView;

    if-eqz v2, :cond_0

    .line 812
    check-cast v1, Lorg/telegram/ui/Stories/LiveCommentsView$LiveCommentView;

    .line 813
    invoke-static {v1}, Lorg/telegram/ui/Stories/LiveCommentsView$LiveCommentView;->-$$Nest$fgetmessage(Lorg/telegram/ui/Stories/LiveCommentsView$LiveCommentView;)Lorg/telegram/ui/Stories/LiveCommentsView$Message;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lorg/telegram/ui/Stories/LiveCommentsView$LiveCommentView;->-$$Nest$fgetmessage(Lorg/telegram/ui/Stories/LiveCommentsView$LiveCommentView;)Lorg/telegram/ui/Stories/LiveCommentsView$Message;

    move-result-object v2

    iget v2, v2, Lorg/telegram/ui/Stories/LiveCommentsView$Message;->id:I

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected getDefaultSendAs()Lorg/telegram/tgnet/TLRPC$Peer;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getListViewContentTop()I
    .locals 3

    .line 526
    iget-object v0, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    const/4 v1, 0x0

    .line 527
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 528
    iget-object v2, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public getMessagesCount()I
    .locals 1

    .line 1224
    iget-object v0, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getStarsCount()J
    .locals 4

    .line 1250
    iget-wide v0, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->totalStars:J

    iget-wide v2, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->localStars:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getUnreadMessagesCount()I
    .locals 7

    .line 1228
    iget v0, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->maxReadId:I

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return v1

    .line 1230
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->livePlayer:Lorg/telegram/ui/Stories/LivePlayer;

    if-nez v0, :cond_1

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/LivePlayer;->getSendPaidMessagesStars()J

    move-result-wide v2

    :goto_0
    move v0, v1

    .line 1232
    :goto_1
    iget-object v4, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->messages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 1233
    iget-object v4, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->messages:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Stories/LiveCommentsView$Message;

    .line 1234
    iget v5, v4, Lorg/telegram/ui/Stories/LiveCommentsView$Message;->id:I

    if-ltz v5, :cond_3

    .line 1235
    iget v6, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->maxReadId:I

    if-le v5, v6, :cond_3

    iget-boolean v5, v4, Lorg/telegram/ui/Stories/LiveCommentsView$Message;->fromAdmin:Z

    if-nez v5, :cond_2

    iget-boolean v5, v4, Lorg/telegram/ui/Stories/LiveCommentsView$Message;->isReaction:Z

    if-eqz v5, :cond_2

    iget-wide v4, v4, Lorg/telegram/ui/Stories/LiveCommentsView$Message;->stars:J

    cmp-long v4, v4, v2

    if-ltz v4, :cond_3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return v0
.end method

.method public isAdmin()Z
    .locals 8

    .line 1118
    invoke-direct {p0}, Lorg/telegram/ui/Stories/LiveCommentsView;->getDefaultPeerId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-gez v0, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/LiveCommentsView;->getDefaultPeerId()J

    move-result-wide v4

    iget-wide v6, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->dialogId:J

    cmp-long v0, v4, v6

    if-eqz v0, :cond_0

    return v1

    .line 1120
    :cond_0
    iget-wide v4, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->dialogId:J

    cmp-long v0, v4, v2

    const/4 v2, 0x1

    if-ltz v0, :cond_2

    .line 1121
    iget v0, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-nez v0, :cond_1

    return v2

    :cond_1
    return v1

    .line 1123
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->livePlayer:Lorg/telegram/ui/Stories/LivePlayer;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->inputCall:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    if-eqz v1, :cond_3

    iget-wide v3, v1, Lorg/telegram/tgnet/TLRPC$InputGroupCall;->id:J

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/LivePlayer;->getCallId()J

    move-result-wide v0

    cmp-long v0, v3, v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->livePlayer:Lorg/telegram/ui/Stories/LivePlayer;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/LivePlayer;->isCreator()Z

    move-result v0

    if-eqz v0, :cond_3

    return v2

    .line 1126
    :cond_3
    iget v0, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->dialogId:J

    neg-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 1127
    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->canManageCalls(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    return v0
.end method

.method public isCollapsed()Z
    .locals 1

    .line 961
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->collapsed:Z

    return v0
.end method

.method protected abstract isMe(J)Z
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 738
    iget v0, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->liveStoryMessageUpdate:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    const/4 v0, 0x1

    .line 740
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/LiveCommentsView;->setAllowTouches(Z)V

    .line 741
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 742
    iget-object v0, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->inputCall:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    if-eqz v0, :cond_0

    .line 743
    iget-object v0, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->pollStarsRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 744
    iget-object v0, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->pollStarsRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method protected abstract onCancelledStarReaction(J)V
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 750
    iget v0, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->liveStoryMessageUpdate:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 752
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 753
    iget-object v0, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->inputCall:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    if-eqz v0, :cond_0

    .line 754
    iget-object v0, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->pollStarsRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 539
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/LiveCommentsView;->top()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 542
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected abstract onMessagesCountUpdated()V
.end method

.method protected abstract onStarReaction(JII)V
.end method

.method protected abstract onStarsButtonCancelled()V
.end method

.method protected abstract onStarsButtonPressed(JZ)V
.end method

.method protected abstract onStarsCountUpdated()V
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 557
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/LiveCommentsView;->top()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 560
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public openStarsSheet(Z)V
    .locals 14

    .line 875
    iget-object v0, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->closeBulletin:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 876
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 877
    iget-object v0, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->topDonors:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 878
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->topDonors:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 879
    iget-object v1, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->topDonors:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/tl/TL_phone$groupCallDonor;

    .line 880
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messageReactor;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messageReactor;-><init>()V

    .line 881
    iget-boolean v3, v1, Lorg/telegram/tgnet/tl/TL_phone$groupCallDonor;->anonymous:Z

    iput-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$MessageReactor;->anonymous:Z

    .line 882
    iget-boolean v3, v1, Lorg/telegram/tgnet/tl/TL_phone$groupCallDonor;->my:Z

    iput-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$MessageReactor;->my:Z

    .line 883
    iget-wide v3, v1, Lorg/telegram/tgnet/tl/TL_phone$groupCallDonor;->stars:J

    long-to-int v3, v3

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$MessageReactor;->count:I

    .line 884
    iget-object v1, v1, Lorg/telegram/tgnet/tl/TL_phone$groupCallDonor;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iput-object v1, v2, Lorg/telegram/tgnet/TLRPC$MessageReactor;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 885
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 888
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v0

    .line 889
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/LiveCommentsView;->getDefaultSendAs()Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 891
    invoke-static {v2}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v0

    :cond_1
    move-wide v11, v0

    .line 892
    new-instance v1, Lorg/telegram/ui/Stars/StarsReactionsSheet;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->currentAccount:I

    iget-wide v4, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->dialogId:J

    xor-int/lit8 v9, p1, 0x1

    new-instance v13, Lorg/telegram/ui/Stories/LiveCommentsView$6;

    invoke-direct {v13, p0}, Lorg/telegram/ui/Stories/LiveCommentsView$6;-><init>(Lorg/telegram/ui/Stories/LiveCommentsView;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x1

    invoke-direct/range {v1 .. v13}, Lorg/telegram/ui/Stars/StarsReactionsSheet;-><init>(Landroid/content/Context;IJLorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;ZZJLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 898
    invoke-virtual {v1, p0}, Lorg/telegram/ui/Stars/StarsReactionsSheet;->setLiveCommentsView(Lorg/telegram/ui/Stories/LiveCommentsView;)Lorg/telegram/ui/Stars/StarsReactionsSheet;

    .line 899
    new-instance p1, Lorg/telegram/ui/Stories/LiveCommentsView$$ExternalSyntheticLambda10;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Stories/LiveCommentsView$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Stories/LiveCommentsView;)V

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Stars/StarsReactionsSheet;->setOnSend(Lorg/telegram/messenger/Utilities$Callback2Return;)Lorg/telegram/ui/Stars/StarsReactionsSheet;

    .line 920
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    return-void
.end method

.method public push(IIZJLorg/telegram/tgnet/TLRPC$TL_textWithEntities;JZ)V
    .locals 13

    move-wide/from16 v1, p4

    move-object/from16 v3, p6

    const/4 v4, 0x0

    move v5, v4

    .line 1294
    :goto_0
    iget-object v6, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->messages:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 1295
    iget-object v6, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->messages:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/Stories/LiveCommentsView$Message;

    iget v6, v6, Lorg/telegram/ui/Stories/LiveCommentsView$Message;->id:I

    if-ne v6, p2, :cond_0

    return-void

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1300
    :cond_1
    iget v5, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v5

    .line 1302
    new-instance v6, Lorg/telegram/ui/Stories/LiveCommentsView$Message;

    invoke-direct {v6}, Lorg/telegram/ui/Stories/LiveCommentsView$Message;-><init>()V

    .line 1303
    iput p1, v6, Lorg/telegram/ui/Stories/LiveCommentsView$Message;->date:I

    move/from16 p1, p3

    .line 1304
    iput-boolean p1, v6, Lorg/telegram/ui/Stories/LiveCommentsView$Message;->fromAdmin:Z

    .line 1305
    iput-wide v1, v6, Lorg/telegram/ui/Stories/LiveCommentsView$Message;->dialogId:J

    .line 1306
    iput-object v3, v6, Lorg/telegram/ui/Stories/LiveCommentsView$Message;->text:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    move-wide/from16 v7, p7

    .line 1307
    iput-wide v7, v6, Lorg/telegram/ui/Stories/LiveCommentsView$Message;->stars:J

    .line 1308
    iput p2, v6, Lorg/telegram/ui/Stories/LiveCommentsView$Message;->id:I

    .line 1309
    iget-object p1, v3, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->text:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, v6, Lorg/telegram/ui/Stories/LiveCommentsView$Message;->isReaction:Z

    .line 1311
    iget p1, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->currentAccount:I

    iget-wide v7, v6, Lorg/telegram/ui/Stories/LiveCommentsView$Message;->stars:J

    long-to-int v3, v7

    sget v7, Lorg/telegram/ui/Stories/HighlightMessageSheet;->TIER_PERIOD:I

    invoke-static {p1, v3, v7}, Lorg/telegram/ui/Stories/HighlightMessageSheet;->getTierOption(III)I

    move-result p1

    .line 1312
    iget-wide v7, v6, Lorg/telegram/ui/Stories/LiveCommentsView$Message;->stars:J

    const-wide/16 v9, 0x0

    cmp-long v3, v7, v9

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-lez v3, :cond_6

    if-lez p1, :cond_6

    iget v3, v6, Lorg/telegram/ui/Stories/LiveCommentsView$Message;->date:I

    sub-int v3, v5, v3

    if-gt v3, p1, :cond_6

    move p1, v4

    .line 1314
    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->topMessages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p1, v3, :cond_3

    .line 1315
    iget-object v3, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->topMessages:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Stories/LiveCommentsView$TopSender;

    iget-wide v11, v3, Lorg/telegram/ui/Stories/LiveCommentsView$TopSender;->dialogId:J

    cmp-long v3, v11, v1

    if-nez v3, :cond_2

    .line 1316
    iget-object v3, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->topMessages:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Stories/LiveCommentsView$TopSender;

    goto :goto_2

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_3
    move-object p1, v7

    :goto_2
    if-nez p1, :cond_4

    .line 1322
    new-instance p1, Lorg/telegram/ui/Stories/LiveCommentsView$TopSender;

    invoke-direct {p1}, Lorg/telegram/ui/Stories/LiveCommentsView$TopSender;-><init>()V

    .line 1323
    iget v3, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->currentAccount:I

    iput v3, p1, Lorg/telegram/ui/Stories/LiveCommentsView$TopSender;->currentAccount:I

    .line 1324
    iput-wide v1, p1, Lorg/telegram/ui/Stories/LiveCommentsView$TopSender;->dialogId:J

    .line 1325
    iget-object v1, p1, Lorg/telegram/ui/Stories/LiveCommentsView$TopSender;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1326
    iget-object v1, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->topMessages:Ljava/util/ArrayList;

    invoke-virtual {v1, v4, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move v1, v8

    goto :goto_3

    .line 1329
    :cond_4
    iget-object v1, p1, Lorg/telegram/ui/Stories/LiveCommentsView$TopSender;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1330
    iget-object v1, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->topListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RecyclerListView;->invalidateViews()V

    move v1, v4

    .line 1332
    :goto_3
    invoke-virtual {p1}, Lorg/telegram/ui/Stories/LiveCommentsView$TopSender;->updateLastSentDate()V

    .line 1333
    invoke-direct {p0, v8}, Lorg/telegram/ui/Stories/LiveCommentsView;->updateTopMessages(Z)V

    .line 1334
    invoke-direct {p0}, Lorg/telegram/ui/Stories/LiveCommentsView;->scheduleRemovingTopSenders()V

    .line 1336
    iput v5, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->lastNow:I

    .line 1337
    iget-object p1, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->topMessages:Ljava/util/ArrayList;

    new-instance v2, Lorg/telegram/ui/Stories/LiveCommentsView$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Stories/LiveCommentsView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/LiveCommentsView;)V

    invoke-static {p1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    if-nez p9, :cond_5

    .line 1339
    iget-object p1, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->topAdapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p1, v8}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    :cond_5
    if-eqz v1, :cond_6

    .line 1342
    iget-object p1, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->topLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPosition(I)V

    :cond_6
    if-nez p9, :cond_7

    .line 1346
    iget-boolean p1, v6, Lorg/telegram/ui/Stories/LiveCommentsView$Message;->isReaction:Z

    if-eqz p1, :cond_7

    iget-wide v1, v6, Lorg/telegram/ui/Stories/LiveCommentsView$Message;->stars:J

    cmp-long p1, v1, v9

    if-lez p1, :cond_7

    .line 1347
    iget-wide v11, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->totalStars:J

    add-long/2addr v11, v1

    iput-wide v11, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->totalStars:J

    .line 1348
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/LiveCommentsView;->onStarsCountUpdated()V

    .line 1352
    :cond_7
    iget p1, v6, Lorg/telegram/ui/Stories/LiveCommentsView$Message;->id:I

    if-ltz p1, :cond_9

    .line 1353
    iget-object p1, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->messages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v8

    :goto_4
    if-ltz p1, :cond_9

    .line 1354
    iget v1, v6, Lorg/telegram/ui/Stories/LiveCommentsView$Message;->id:I

    iget-object v2, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Stories/LiveCommentsView$Message;

    iget v2, v2, Lorg/telegram/ui/Stories/LiveCommentsView$Message;->id:I

    if-ge v1, v2, :cond_8

    add-int/2addr p1, v8

    goto :goto_5

    :cond_8
    add-int/lit8 p1, p1, -0x1

    goto :goto_4

    :cond_9
    move p1, v4

    .line 1360
    :goto_5
    iget-object v1, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    if-nez p9, :cond_b

    .line 1362
    iget-object v1, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x7d0

    if-le v1, v2, :cond_a

    .line 1363
    iget-object v1, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1365
    :cond_a
    iget-object v1, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {v1, v8}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    :cond_b
    if-gtz p1, :cond_d

    if-nez p9, :cond_d

    .line 1368
    iget-object p1, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, v8}, Lorg/telegram/ui/Components/RecyclerListView;->canScrollVertically(I)Z

    move-result p1

    if-eqz p1, :cond_c

    iget p1, v6, Lorg/telegram/ui/Stories/LiveCommentsView$Message;->id:I

    if-gez p1, :cond_d

    .line 1369
    :cond_c
    iget-object p1, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {p1, v4, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 1370
    iget p1, v6, Lorg/telegram/ui/Stories/LiveCommentsView$Message;->id:I

    if-lez p1, :cond_d

    .line 1371
    iput p1, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->maxReadId:I

    .line 1375
    :cond_d
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 1376
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/LiveCommentsView;->onMessagesCountUpdated()V

    if-nez p9, :cond_14

    if-lez p2, :cond_14

    .line 1378
    iget-wide v0, v6, Lorg/telegram/ui/Stories/LiveCommentsView$Message;->stars:J

    cmp-long p1, v0, v9

    if-lez p1, :cond_14

    move p1, v4

    .line 1382
    :goto_6
    iget-object v0, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->topDonors:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_f

    .line 1383
    iget-object v0, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->topDonors:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/tl/TL_phone$groupCallDonor;

    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_phone$groupCallDonor;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v0}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v0

    iget-wide v2, v6, Lorg/telegram/ui/Stories/LiveCommentsView$Message;->dialogId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_e

    .line 1384
    iget-object v0, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->topDonors:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v7, p1

    check-cast v7, Lorg/telegram/tgnet/tl/TL_phone$groupCallDonor;

    goto :goto_7

    :cond_e
    add-int/lit8 p1, p1, 0x1

    goto :goto_6

    :cond_f
    :goto_7
    if-nez v7, :cond_13

    .line 1389
    new-instance v7, Lorg/telegram/tgnet/tl/TL_phone$groupCallDonor;

    invoke-direct {v7}, Lorg/telegram/tgnet/tl/TL_phone$groupCallDonor;-><init>()V

    .line 1390
    iget p1, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v0

    iget-wide v2, v6, Lorg/telegram/ui/Stories/LiveCommentsView$Message;->dialogId:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_10

    goto :goto_8

    :cond_10
    move v8, v4

    :goto_8
    iput-boolean v8, v7, Lorg/telegram/tgnet/tl/TL_phone$groupCallDonor;->my:Z

    .line 1391
    iget p1, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-wide v0, v6, Lorg/telegram/ui/Stories/LiveCommentsView$Message;->dialogId:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/MessagesController;->getPeer(J)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object p1

    iput-object p1, v7, Lorg/telegram/tgnet/tl/TL_phone$groupCallDonor;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 1392
    iput-wide v9, v7, Lorg/telegram/tgnet/tl/TL_phone$groupCallDonor;->stars:J

    .line 1393
    :goto_9
    iget-object p1, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->topMessages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v4, p1, :cond_12

    .line 1394
    iget-object p1, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->topMessages:Ljava/util/ArrayList;

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Stories/LiveCommentsView$TopSender;

    iget-wide v0, p1, Lorg/telegram/ui/Stories/LiveCommentsView$TopSender;->dialogId:J

    iget-wide v2, v6, Lorg/telegram/ui/Stories/LiveCommentsView$Message;->dialogId:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_11

    .line 1395
    iget-object p1, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->topMessages:Ljava/util/ArrayList;

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Stories/LiveCommentsView$TopSender;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/LiveCommentsView$TopSender;->getStars()I

    .line 1396
    iget-wide v0, v7, Lorg/telegram/tgnet/tl/TL_phone$groupCallDonor;->stars:J

    iget-object p1, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->topMessages:Ljava/util/ArrayList;

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Stories/LiveCommentsView$TopSender;

    invoke-static {p1}, Lorg/telegram/ui/Stories/LiveCommentsView$TopSender;->-$$Nest$fgetmax_stars(Lorg/telegram/ui/Stories/LiveCommentsView$TopSender;)J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, v7, Lorg/telegram/tgnet/tl/TL_phone$groupCallDonor;->stars:J

    :cond_11
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 1399
    :cond_12
    iget-object p1, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->topDonors:Ljava/util/ArrayList;

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1401
    :cond_13
    iget-wide v0, v7, Lorg/telegram/tgnet/tl/TL_phone$groupCallDonor;->stars:J

    iget-wide v2, v6, Lorg/telegram/ui/Stories/LiveCommentsView$Message;->stars:J

    add-long/2addr v0, v2

    iput-wide v0, v7, Lorg/telegram/tgnet/tl/TL_phone$groupCallDonor;->stars:J

    long-to-int p1, v0

    .line 1404
    iget-wide v0, v6, Lorg/telegram/ui/Stories/LiveCommentsView$Message;->dialogId:J

    long-to-int v2, v2

    invoke-virtual {p0, v0, v1, p1, v2}, Lorg/telegram/ui/Stories/LiveCommentsView;->onStarReaction(JII)V

    .line 1406
    :cond_14
    invoke-direct {p0}, Lorg/telegram/ui/Stories/LiveCommentsView;->updateMessagesPlaces()V

    if-eqz p9, :cond_15

    .line 1409
    iget-object p1, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->updateAdapters:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1410
    iget-object p1, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->updateAdapters:Ljava/lang/Runnable;

    const-wide/16 v0, 0x64

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 1413
    :cond_15
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/LiveCommentsView;->saveHistory()V

    return-void
.end method

.method public saveHistory()V
    .locals 2

    .line 710
    iget-object v0, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->livePlayer:Lorg/telegram/ui/Stories/LivePlayer;

    if-eqz v0, :cond_0

    .line 711
    iget-object v1, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->messages:Ljava/util/ArrayList;

    iput-object v1, v0, Lorg/telegram/ui/Stories/LivePlayer;->messages:Ljava/util/ArrayList;

    .line 712
    iget-object v1, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->topMessages:Ljava/util/ArrayList;

    iput-object v1, v0, Lorg/telegram/ui/Stories/LivePlayer;->topMessages:Ljava/util/ArrayList;

    :cond_0
    return-void
.end method

.method public send(JLorg/telegram/tgnet/TLRPC$TL_textWithEntities;J)I
    .locals 16

    move-object/from16 v0, p0

    move-wide/from16 v4, p1

    move-wide/from16 v7, p4

    .line 1144
    iget v1, v0, Lorg/telegram/ui/Stories/LiveCommentsView;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->getNewMessageId()I

    move-result v2

    move v3, v2

    .line 1145
    new-instance v2, Lorg/telegram/tgnet/tl/TL_phone$sendGroupCallMessage;

    invoke-direct {v2}, Lorg/telegram/tgnet/tl/TL_phone$sendGroupCallMessage;-><init>()V

    .line 1146
    iget-object v1, v0, Lorg/telegram/ui/Stories/LiveCommentsView;->inputCall:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    iput-object v1, v2, Lorg/telegram/tgnet/tl/TL_phone$sendGroupCallMessage;->call:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    move-object/from16 v6, p3

    .line 1147
    iput-object v6, v2, Lorg/telegram/tgnet/tl/TL_phone$sendGroupCallMessage;->message:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    const/4 v10, 0x1

    if-lez v9, :cond_0

    .line 1149
    iget v1, v2, Lorg/telegram/tgnet/tl/TL_phone$sendGroupCallMessage;->flags:I

    or-int/2addr v1, v10

    iput v1, v2, Lorg/telegram/tgnet/tl/TL_phone$sendGroupCallMessage;->flags:I

    .line 1150
    iput-wide v7, v2, Lorg/telegram/tgnet/tl/TL_phone$sendGroupCallMessage;->allow_paid_stars:J

    .line 1152
    :cond_0
    sget-object v1, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    move-result-wide v11

    iput-wide v11, v2, Lorg/telegram/tgnet/tl/TL_phone$sendGroupCallMessage;->random_id:J

    .line 1153
    iget v1, v2, Lorg/telegram/tgnet/tl/TL_phone$sendGroupCallMessage;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v2, Lorg/telegram/tgnet/tl/TL_phone$sendGroupCallMessage;->flags:I

    .line 1154
    iget v1, v0, Lorg/telegram/ui/Stories/LiveCommentsView;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v1

    iput-object v1, v2, Lorg/telegram/tgnet/tl/TL_phone$sendGroupCallMessage;->send_as:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 1155
    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v11

    new-instance v0, Lorg/telegram/ui/Stories/LiveCommentsView$$ExternalSyntheticLambda18;

    move-wide v14, v7

    move-object v8, v6

    move-wide v6, v4

    move-wide v4, v14

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/Stories/LiveCommentsView$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/Stories/LiveCommentsView;Lorg/telegram/tgnet/tl/TL_phone$sendGroupCallMessage;IJJLorg/telegram/tgnet/TLRPC$TL_textWithEntities;)V

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    move-wide v14, v6

    move-wide v7, v4

    move-wide v4, v14

    invoke-virtual {v11, v2, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 1180
    iget-object v1, v0, Lorg/telegram/ui/Stories/LiveCommentsView;->topDonors:Ljava/util/ArrayList;

    const/4 v11, 0x0

    if-eqz v1, :cond_4

    if-lez v9, :cond_4

    move v1, v11

    .line 1182
    :goto_0
    iget-object v2, v0, Lorg/telegram/ui/Stories/LiveCommentsView;->topDonors:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1183
    iget-object v2, v0, Lorg/telegram/ui/Stories/LiveCommentsView;->topDonors:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/tl/TL_phone$groupCallDonor;

    iget-boolean v2, v2, Lorg/telegram/tgnet/tl/TL_phone$groupCallDonor;->my:Z

    if-eqz v2, :cond_1

    .line 1184
    iget-object v2, v0, Lorg/telegram/ui/Stories/LiveCommentsView;->topDonors:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/tl/TL_phone$groupCallDonor;

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_3

    .line 1189
    iget-wide v12, v1, Lorg/telegram/tgnet/tl/TL_phone$groupCallDonor;->stars:J

    add-long/2addr v12, v7

    iput-wide v12, v1, Lorg/telegram/tgnet/tl/TL_phone$groupCallDonor;->stars:J

    goto :goto_2

    .line 1191
    :cond_3
    new-instance v1, Lorg/telegram/tgnet/tl/TL_phone$groupCallDonor;

    invoke-direct {v1}, Lorg/telegram/tgnet/tl/TL_phone$groupCallDonor;-><init>()V

    .line 1192
    iput-boolean v10, v1, Lorg/telegram/tgnet/tl/TL_phone$groupCallDonor;->my:Z

    .line 1193
    iput-boolean v11, v1, Lorg/telegram/tgnet/tl/TL_phone$groupCallDonor;->anonymous:Z

    .line 1194
    iget v2, v0, Lorg/telegram/ui/Stories/LiveCommentsView;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Lorg/telegram/messenger/MessagesController;->getPeer(J)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/tgnet/tl/TL_phone$groupCallDonor;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 1195
    iput-wide v7, v1, Lorg/telegram/tgnet/tl/TL_phone$groupCallDonor;->stars:J

    .line 1196
    iget-object v2, v0, Lorg/telegram/ui/Stories/LiveCommentsView;->topDonors:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1200
    :cond_4
    :goto_2
    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    .line 1201
    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v1

    iget-wide v12, v0, Lorg/telegram/ui/Stories/LiveCommentsView;->dialogId:J

    cmp-long v2, v4, v12

    if-eqz v2, :cond_6

    .line 1203
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/LiveCommentsView;->isAdmin()Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_3

    :cond_5
    move v2, v3

    move v3, v11

    goto :goto_4

    :cond_6
    :goto_3
    move v2, v3

    move v3, v10

    :goto_4
    const/4 v9, 0x0

    move-object/from16 v6, p3

    .line 1200
    invoke-virtual/range {v0 .. v9}, Lorg/telegram/ui/Stories/LiveCommentsView;->push(IIZJLorg/telegram/tgnet/TLRPC$TL_textWithEntities;JZ)V

    move v3, v2

    .line 1210
    invoke-virtual {v0, v11, v10}, Lorg/telegram/ui/Stories/LiveCommentsView;->setCollapsed(ZZ)V

    return v3
.end method

.method public send(Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;J)I
    .locals 6

    .line 1140
    invoke-direct {p0}, Lorg/telegram/ui/Stories/LiveCommentsView;->getDefaultPeerId()J

    move-result-wide v1

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Stories/LiveCommentsView;->send(JLorg/telegram/tgnet/TLRPC$TL_textWithEntities;J)I

    move-result p1

    return p1
.end method

.method public sendStars(JZ)V
    .locals 14

    .line 828
    iget-object v0, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->starsBulletin:Lorg/telegram/ui/Components/Bulletin;

    const-wide/16 v1, 0x1388

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 829
    :cond_0
    new-instance v0, Lorg/telegram/ui/Stories/DarkThemeResourceProvider;

    invoke-direct {v0}, Lorg/telegram/ui/Stories/DarkThemeResourceProvider;-><init>()V

    .line 830
    new-instance v3, Lorg/telegram/ui/Components/Bulletin$TwoLineAnimatedLottieLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lorg/telegram/ui/Components/Bulletin$TwoLineAnimatedLottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v3, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->bulletinLayout:Lorg/telegram/ui/Components/Bulletin$TwoLineAnimatedLottieLayout;

    .line 831
    sget v4, Lorg/telegram/messenger/R$raw;->stars_topup:I

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/String;

    invoke-virtual {v3, v4, v6}, Lorg/telegram/ui/Components/Bulletin$TwoLineAnimatedLottieLayout;->setAnimation(I[Ljava/lang/String;)V

    .line 832
    iget-object v3, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->bulletinLayout:Lorg/telegram/ui/Components/Bulletin$TwoLineAnimatedLottieLayout;

    iget-object v3, v3, Lorg/telegram/ui/Components/Bulletin$TwoLineAnimatedLottieLayout;->titleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-direct {p0}, Lorg/telegram/ui/Stories/LiveCommentsView;->getStarsToastTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 833
    new-instance v3, Lorg/telegram/ui/Components/Bulletin$UndoButton;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v6, 0x1

    invoke-direct {v3, v4, v6, v5, v0}, Lorg/telegram/ui/Components/Bulletin$UndoButton;-><init>(Landroid/content/Context;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v3, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->bulletinButton:Lorg/telegram/ui/Components/Bulletin$UndoButton;

    .line 834
    sget v4, Lorg/telegram/messenger/R$string;->StarsSentUndo:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/Bulletin$UndoButton;->setText(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin$UndoButton;

    .line 835
    iget-object v3, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->bulletinButton:Lorg/telegram/ui/Components/Bulletin$UndoButton;

    new-instance v4, Lorg/telegram/ui/Stories/LiveCommentsView$$ExternalSyntheticLambda12;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Stories/LiveCommentsView$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/Stories/LiveCommentsView;)V

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/Bulletin$UndoButton;->setUndoAction(Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin$UndoButton;

    .line 836
    new-instance v3, Lorg/telegram/ui/Components/Bulletin$TimerView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lorg/telegram/ui/Components/Bulletin$TimerView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v3, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->timerView:Lorg/telegram/ui/Components/Bulletin$TimerView;

    .line 837
    iput-wide v1, v3, Lorg/telegram/ui/Components/Bulletin$TimerView;->timeLeft:J

    .line 838
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_undo_cancelColor:I

    invoke-static {v4, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/Bulletin$TimerView;->setColor(I)V

    .line 839
    iget-object v3, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->bulletinButton:Lorg/telegram/ui/Components/Bulletin$UndoButton;

    iget-object v4, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->timerView:Lorg/telegram/ui/Components/Bulletin$TimerView;

    const/high16 v12, 0x41400000    # 12.0f

    const/4 v13, 0x0

    const/16 v7, 0x14

    const/high16 v8, 0x41a00000    # 20.0f

    const/16 v9, 0x15

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v7 .. v13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v3, v4, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 840
    iget-object v3, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->bulletinButton:Lorg/telegram/ui/Components/Bulletin$UndoButton;

    iget-object v3, v3, Lorg/telegram/ui/Components/Bulletin$UndoButton;->undoTextView:Landroid/widget/TextView;

    const/high16 v4, 0x41400000    # 12.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/high16 v7, 0x41000000    # 8.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    const/high16 v9, 0x41f00000    # 30.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-virtual {v3, v4, v8, v9, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 841
    iget-object v3, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->bulletinLayout:Lorg/telegram/ui/Components/Bulletin$TwoLineAnimatedLottieLayout;

    iget-object v4, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->bulletinButton:Lorg/telegram/ui/Components/Bulletin$UndoButton;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/Bulletin$ButtonLayout;->setButton(Lorg/telegram/ui/Components/Bulletin$Button;)V

    .line 842
    iget-object v3, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->topBulletinContainer:Landroid/widget/FrameLayout;

    invoke-static {v3, v0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->bulletinLayout:Lorg/telegram/ui/Components/Bulletin$TwoLineAnimatedLottieLayout;

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/Components/BulletinFactory;->create(Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->starsBulletin:Lorg/telegram/ui/Components/Bulletin;

    .line 843
    iput-boolean v5, v0, Lorg/telegram/ui/Components/Bulletin;->hideAfterBottomSheet:Z

    .line 844
    invoke-virtual {v0, v6}, Lorg/telegram/ui/Components/Bulletin;->show(Z)Lorg/telegram/ui/Components/Bulletin;

    .line 845
    iget-object v0, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->starsBulletin:Lorg/telegram/ui/Components/Bulletin;

    iget-object v3, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->closeBulletin:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/Bulletin;->setOnHideListener(Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin;

    .line 848
    :cond_1
    iget-wide v3, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->localStars:J

    add-long/2addr v3, p1

    iput-wide v3, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->localStars:J

    .line 849
    invoke-direct {p0}, Lorg/telegram/ui/Stories/LiveCommentsView;->getDefaultPeerId()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lorg/telegram/ui/Stories/LiveCommentsView;->onCancelledStarReaction(J)V

    .line 850
    invoke-direct {p0}, Lorg/telegram/ui/Stories/LiveCommentsView;->getDefaultPeerId()J

    move-result-wide v3

    invoke-direct {p0}, Lorg/telegram/ui/Stories/LiveCommentsView;->getTotalMyStars()I

    move-result v0

    iget-wide v5, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->localStars:J

    long-to-int v5, v5

    invoke-virtual {p0, v3, v4, v0, v5}, Lorg/telegram/ui/Stories/LiveCommentsView;->onStarReaction(JII)V

    .line 852
    iget-object v0, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->bulletinLayout:Lorg/telegram/ui/Components/Bulletin$TwoLineAnimatedLottieLayout;

    iget-object v0, v0, Lorg/telegram/ui/Components/Bulletin$TwoLineAnimatedLottieLayout;->titleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-direct {p0}, Lorg/telegram/ui/Stories/LiveCommentsView;->getStarsToastTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 853
    iget-object v0, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->bulletinLayout:Lorg/telegram/ui/Components/Bulletin$TwoLineAnimatedLottieLayout;

    iget-object v0, v0, Lorg/telegram/ui/Components/Bulletin$TwoLineAnimatedLottieLayout;->subtitleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-direct {p0}, Lorg/telegram/ui/Stories/LiveCommentsView;->getStarsToastSubtitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 854
    iget-object v0, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->timerView:Lorg/telegram/ui/Components/Bulletin$TimerView;

    iput-wide v1, v0, Lorg/telegram/ui/Components/Bulletin$TimerView;->timeLeft:J

    .line 856
    iget-object v0, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->closeBulletin:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 857
    iget-object v0, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->closeBulletin:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 859
    iget-wide v0, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->localStars:J

    move/from16 v2, p3

    invoke-virtual {p0, v0, v1, v2}, Lorg/telegram/ui/Stories/LiveCommentsView;->onStarsButtonPressed(JZ)V

    .line 860
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/LiveCommentsView;->onStarsCountUpdated()V

    return-void
.end method

.method public setAllowTouches(Z)V
    .locals 0

    .line 564
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->allowTouches:Z

    return-void
.end method

.method public setCollapsed(ZZ)V
    .locals 3

    if-eqz p2, :cond_0

    .line 967
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->collapsed:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 970
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->collapsed:Z

    .line 971
    iget-object v0, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->collapseAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 972
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    .line 973
    iput-object v0, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->collapseAnimator:Landroid/animation/ValueAnimator;

    .line 975
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    if-eqz p2, :cond_3

    .line 978
    iget-object p2, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p2}, Landroid/view/View;->getAlpha()F

    move-result p2

    if-eqz p1, :cond_2

    move v0, v1

    :cond_2
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p2, v1, v2

    const/4 p2, 0x1

    aput v0, v1, p2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->collapseAnimator:Landroid/animation/ValueAnimator;

    .line 979
    new-instance v0, Lorg/telegram/ui/Stories/LiveCommentsView$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/LiveCommentsView$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/Stories/LiveCommentsView;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 985
    iget-object p2, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->collapseAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/Stories/LiveCommentsView$7;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Stories/LiveCommentsView$7;-><init>(Lorg/telegram/ui/Stories/LiveCommentsView;Z)V

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 993
    iget-object p1, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->collapseAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x1a4

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 994
    iget-object p1, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->collapseAnimator:Landroid/animation/ValueAnimator;

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 995
    iget-object p1, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->collapseAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    .line 997
    :cond_3
    iget-object p2, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->shadowView:Landroid/view/View;

    if-eqz p1, :cond_4

    move v2, v1

    goto :goto_0

    :cond_4
    const/high16 v2, 0x3f000000    # 0.5f

    :goto_0
    invoke-virtual {p2, v2}, Landroid/view/View;->setAlpha(F)V

    .line 998
    iget-object p2, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz p1, :cond_5

    move v0, v1

    :cond_5
    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    .line 1000
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setKeyboardOffset(FFF)V
    .locals 4

    .line 660
    iput p1, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->keyboardT:F

    .line 661
    iput p2, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->keyboardOffset:F

    .line 662
    iget p1, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->keyboardFinalOffset:F

    sub-float/2addr p1, p3

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const p2, 0x3dcccccd    # 0.1f

    cmpl-float p1, p1, p2

    if-lez p1, :cond_0

    .line 663
    iput p3, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->keyboardFinalOffset:F

    .line 664
    iget-object p1, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/high16 p2, 0x41000000    # 8.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    const/high16 v1, 0x40f00000    # 7.5f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    float-to-int p3, p3

    iget-object v3, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr p3, v3

    const/4 v3, 0x0

    invoke-static {v3, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    add-int/2addr v2, p3

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    invoke-virtual {p1, v0, v2, p2, p3}, Landroid/view/View;->setPadding(IIII)V

    .line 666
    iget-object p1, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView;->canScrollVertically(I)Z

    move-result p1

    if-nez p1, :cond_0

    .line 667
    iget-object p1, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    const/high16 p2, 0x42c80000    # 100.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    invoke-virtual {p1, v3, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 670
    :cond_0
    iget p1, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->keyboardOffset:F

    neg-float p1, p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 671
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setLivePlayer(Lorg/telegram/ui/Stories/LivePlayer;)V
    .locals 5

    .line 718
    iget-object v0, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->livePlayer:Lorg/telegram/ui/Stories/LivePlayer;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 719
    :goto_0
    iput-object p1, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->livePlayer:Lorg/telegram/ui/Stories/LivePlayer;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 720
    iget-object v0, p1, Lorg/telegram/ui/Stories/LivePlayer;->messages:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v3, p1, Lorg/telegram/ui/Stories/LivePlayer;->topMessages:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    iget-object v4, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->messages:Ljava/util/ArrayList;

    if-eq v0, v4, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->topMessages:Ljava/util/ArrayList;

    if-eq v3, v0, :cond_1

    .line 724
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->topMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 726
    iget-object v0, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->messages:Ljava/util/ArrayList;

    iget-object v3, p1, Lorg/telegram/ui/Stories/LivePlayer;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 727
    iget-object v0, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->topMessages:Ljava/util/ArrayList;

    iget-object p1, p1, Lorg/telegram/ui/Stories/LivePlayer;->topMessages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 728
    iget-object p1, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    .line 729
    iget p1, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->lastNow:I

    .line 730
    iget-object p1, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->topMessages:Ljava/util/ArrayList;

    new-instance v0, Lorg/telegram/ui/Stories/LiveCommentsView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/LiveCommentsView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/LiveCommentsView;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 731
    iget-object p1, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->topAdapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    .line 732
    invoke-direct {p0, v1}, Lorg/telegram/ui/Stories/LiveCommentsView;->updateTopMessages(Z)V

    :cond_1
    return-void
.end method

.method public setup(JLorg/telegram/tgnet/TLRPC$InputGroupCall;)Z
    .locals 5

    .line 684
    iget-object v0, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->inputCall:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    move-wide v3, v1

    goto :goto_0

    :cond_0
    iget-wide v3, v0, Lorg/telegram/tgnet/TLRPC$InputGroupCall;->id:J

    :goto_0
    if-nez p3, :cond_1

    goto :goto_1

    :cond_1
    iget-wide v1, p3, Lorg/telegram/tgnet/TLRPC$InputGroupCall;->id:J

    :goto_1
    cmp-long v0, v3, v1

    if-eqz v0, :cond_2

    .line 685
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/LiveCommentsView;->clear()V

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    .line 693
    :goto_2
    iput-wide p1, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->dialogId:J

    .line 694
    iput-object p3, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->inputCall:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    if-eqz v0, :cond_4

    .line 699
    iget-object p1, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->closeBulletin:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    if-nez p3, :cond_3

    .line 701
    iget-object p1, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->pollStarsRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    return v0

    .line 703
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->pollStarsRunnable:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_4
    return v0
.end method

.method public top()F
    .locals 3

    .line 534
    iget-object v0, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->keyboardOffset:F

    iget-object v2, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/LiveCommentsView;->getListViewContentTop()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public updatedMinStars()V
    .locals 4

    .line 1243
    iget-object v0, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->livePlayer:Lorg/telegram/ui/Stories/LivePlayer;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/LivePlayer;->getSendPaidMessagesStars()J

    move-result-wide v0

    .line 1244
    :goto_0
    iget-wide v2, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->lastMinStars:J

    cmp-long v0, v2, v0

    if-eqz v0, :cond_1

    .line 1245
    iget-object v0, p0, Lorg/telegram/ui/Stories/LiveCommentsView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    :cond_1
    return-void
.end method
