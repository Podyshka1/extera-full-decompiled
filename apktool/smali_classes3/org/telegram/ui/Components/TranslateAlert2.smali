.class public abstract Lorg/telegram/ui/Components/TranslateAlert2;
.super Lorg/telegram/ui/ActionBar/BottomSheet;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/TranslateAlert2$ContainerView;,
        Lorg/telegram/ui/Components/TranslateAlert2$LoadingTextView;,
        Lorg/telegram/ui/Components/TranslateAlert2$PaddedAdapter;,
        Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;
    }
.end annotation


# static fields
.field private static localesByCode:Ljava/util/HashMap;

.field public static final userAgents:[Ljava/lang/String;


# instance fields
.field private adapter:Lorg/telegram/ui/Components/TranslateAlert2$PaddedAdapter;

.field private buttonShadowShown:Ljava/lang/Boolean;

.field private firstTranslation:Z

.field private fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private fromLanguage:Ljava/lang/String;

.field private headerView:Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;

.field private layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private loadingTextView:Lorg/telegram/ui/Components/TranslateAlert2$LoadingTextView;

.field private mainButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

.field private onLinkPress:Lorg/telegram/messenger/Utilities$CallbackReturn;

.field private prevToLanguage:Ljava/lang/String;

.field private reqId:Ljava/lang/Integer;

.field private reqMessageEntities:Ljava/util/ArrayList;

.field private reqMessageId:I

.field private reqPeer:Lorg/telegram/tgnet/TLRPC$InputPeer;

.field private reqSum:Z

.field private reqText:Ljava/lang/CharSequence;

.field private sheetTopAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

.field private sheetTopNotAnimate:Z

.field private textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

.field private textViewContainer:Landroid/widget/FrameLayout;

.field private toLanguage:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$7UpaItQfUhndm0FtClKv7YIUbb4(Lorg/telegram/ui/Components/TranslateAlert2;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/TranslateAlert2;->lambda$translateAlt$2(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$D67Dush9zFhkba3W5VBktSV1SOQ(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback2;Ljava/lang/Exception;)V
    .locals 0

    .line 504
    const-string p3, "en"

    invoke-static {p0, p3, p1, p2}, Lorg/telegram/ui/Components/TranslateAlert2;->alternativeTranslate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback2;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GC3bkLUx2yuwF5LlDdKEKVrnHH8(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback2;Ljava/lang/String;)V
    .locals 0

    .line 502
    invoke-static {p0, p3, p1, p2}, Lorg/telegram/ui/Components/TranslateAlert2;->alternativeTranslate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback2;)V

    return-void
.end method

.method public static synthetic $r8$lambda$To-1t_cnbWxgehmPB3tDGb0QF0g(Lorg/telegram/ui/Components/TranslateAlert2;Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/TranslateAlert2;->lambda$translate$1(Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nlKxrRvPtwwC8pDBgVp5OMawG9U([ZLjava/util/ArrayList;ILorg/telegram/messenger/Utilities$Callback2;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 2

    const/4 v0, 0x0

    .line 520
    aget-boolean v1, p0, v0

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    if-eqz p4, :cond_3

    .line 522
    invoke-virtual {p1, p2, p4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move p2, v0

    .line 524
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p4

    if-ge p2, p4, :cond_2

    .line 525
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    if-nez p4, :cond_1

    :goto_1
    return-void

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 531
    :cond_2
    aput-boolean v1, p0, v0

    .line 532
    const-string p0, ""

    invoke-static {p0, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p3, p0, p1}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 535
    :cond_3
    aput-boolean v1, p0, v0

    const/4 p0, 0x0

    .line 536
    invoke-interface {p3, p0, p5}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$szmsaOr0449pnp64ClhXmzcRG24(Lorg/telegram/ui/Components/TranslateAlert2;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/TranslateAlert2;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetadapter(Lorg/telegram/ui/Components/TranslateAlert2;)Lorg/telegram/ui/Components/TranslateAlert2$PaddedAdapter;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/TranslateAlert2;->adapter:Lorg/telegram/ui/Components/TranslateAlert2$PaddedAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetfirstTranslation(Lorg/telegram/ui/Components/TranslateAlert2;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/TranslateAlert2;->firstTranslation:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetfragment(Lorg/telegram/ui/Components/TranslateAlert2;)Lorg/telegram/ui/ActionBar/BaseFragment;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/TranslateAlert2;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetfromLanguage(Lorg/telegram/ui/Components/TranslateAlert2;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/TranslateAlert2;->fromLanguage:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetheaderView(Lorg/telegram/ui/Components/TranslateAlert2;)Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/TranslateAlert2;->headerView:Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlistView(Lorg/telegram/ui/Components/TranslateAlert2;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/TranslateAlert2;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetloadingTextView(Lorg/telegram/ui/Components/TranslateAlert2;)Lorg/telegram/ui/Components/TranslateAlert2$LoadingTextView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/TranslateAlert2;->loadingTextView:Lorg/telegram/ui/Components/TranslateAlert2$LoadingTextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmainButton(Lorg/telegram/ui/Components/TranslateAlert2;)Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/TranslateAlert2;->mainButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetonLinkPress(Lorg/telegram/ui/Components/TranslateAlert2;)Lorg/telegram/messenger/Utilities$CallbackReturn;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/TranslateAlert2;->onLinkPress:Lorg/telegram/messenger/Utilities$CallbackReturn;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettextView(Lorg/telegram/ui/Components/TranslateAlert2;)Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/TranslateAlert2;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettextViewContainer(Lorg/telegram/ui/Components/TranslateAlert2;)Landroid/widget/FrameLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/TranslateAlert2;->textViewContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettoLanguage(Lorg/telegram/ui/Components/TranslateAlert2;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/TranslateAlert2;->toLanguage:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputfirstTranslation(Lorg/telegram/ui/Components/TranslateAlert2;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/TranslateAlert2;->firstTranslation:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputprevToLanguage(Lorg/telegram/ui/Components/TranslateAlert2;Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/TranslateAlert2;->prevToLanguage:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputreqId(Lorg/telegram/ui/Components/TranslateAlert2;Ljava/lang/Integer;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/TranslateAlert2;->reqId:Ljava/lang/Integer;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputsheetTopNotAnimate(Lorg/telegram/ui/Components/TranslateAlert2;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/TranslateAlert2;->sheetTopNotAnimate:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputtoLanguage(Lorg/telegram/ui/Components/TranslateAlert2;Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/TranslateAlert2;->toLanguage:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetSheetTop(Lorg/telegram/ui/Components/TranslateAlert2;)F
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/TranslateAlert2;->getSheetTop()F

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetSheetTop(Lorg/telegram/ui/Components/TranslateAlert2;Z)F
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/TranslateAlert2;->getSheetTop(Z)F

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mhasEnoughHeight(Lorg/telegram/ui/Components/TranslateAlert2;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/TranslateAlert2;->hasEnoughHeight()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mpreprocessText(Lorg/telegram/ui/Components/TranslateAlert2;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/TranslateAlert2;->preprocessText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdateButtonShadow(Lorg/telegram/ui/Components/TranslateAlert2;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/TranslateAlert2;->updateButtonShadow(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    .line 420
    const-string v4, "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36"

    const-string v5, "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.55 Safari/537.36"

    const-string v0, "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36"

    const-string v1, "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36"

    const-string v2, "Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:94.0) Gecko/20100101 Firefox/94.0"

    const-string v3, "Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:95.0) Gecko/20100101 Firefox/95.0"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Components/TranslateAlert2;->userAgents:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$InputPeer;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 4

    const/4 p5, 0x0

    .line 134
    invoke-direct {p0, p1, p5, p9}, Lorg/telegram/ui/ActionBar/BottomSheet;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 v0, 0x1

    .line 117
    iput-boolean v0, p0, Lorg/telegram/ui/Components/TranslateAlert2;->firstTranslation:Z

    .line 136
    iput p5, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    .line 138
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->fixNavigationBar()V

    .line 140
    iput-object p4, p0, Lorg/telegram/ui/Components/TranslateAlert2;->reqText:Ljava/lang/CharSequence;

    .line 141
    iput-object p6, p0, Lorg/telegram/ui/Components/TranslateAlert2;->reqPeer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 142
    iput p7, p0, Lorg/telegram/ui/Components/TranslateAlert2;->reqMessageId:I

    .line 143
    iput-boolean p8, p0, Lorg/telegram/ui/Components/TranslateAlert2;->reqSum:Z

    .line 145
    iput-object p2, p0, Lorg/telegram/ui/Components/TranslateAlert2;->fromLanguage:Ljava/lang/String;

    .line 146
    iput-object p3, p0, Lorg/telegram/ui/Components/TranslateAlert2;->toLanguage:Ljava/lang/String;

    .line 148
    new-instance p2, Lorg/telegram/ui/Components/TranslateAlert2$ContainerView;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Components/TranslateAlert2$ContainerView;-><init>(Lorg/telegram/ui/Components/TranslateAlert2;Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    .line 149
    new-instance p3, Lorg/telegram/ui/Components/AnimatedFloat;

    const-wide/16 p6, 0x140

    sget-object p8, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-direct {p3, p2, p6, p7, p8}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JLandroid/animation/TimeInterpolator;)V

    iput-object p3, p0, Lorg/telegram/ui/Components/TranslateAlert2;->sheetTopAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 151
    new-instance p2, Lorg/telegram/ui/Components/TranslateAlert2$LoadingTextView;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Components/TranslateAlert2$LoadingTextView;-><init>(Lorg/telegram/ui/Components/TranslateAlert2;Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/TranslateAlert2;->loadingTextView:Lorg/telegram/ui/Components/TranslateAlert2$LoadingTextView;

    const/high16 p3, 0x41b00000    # 22.0f

    .line 152
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p6

    const/high16 p7, 0x41400000    # 12.0f

    invoke-static {p7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p8

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {p2, p6, p8, v1, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 153
    iget-object p2, p0, Lorg/telegram/ui/Components/TranslateAlert2;->loadingTextView:Lorg/telegram/ui/Components/TranslateAlert2$LoadingTextView;

    sget p6, Lorg/telegram/messenger/SharedConfig;->fontSize:I

    int-to-float p6, p6

    invoke-virtual {p2, v0, p6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 154
    iget-object p2, p0, Lorg/telegram/ui/Components/TranslateAlert2;->loadingTextView:Lorg/telegram/ui/Components/TranslateAlert2$LoadingTextView;

    sget p6, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-virtual {p0, p6}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p8

    invoke-virtual {p2, p8}, Lorg/telegram/ui/Components/TranslateAlert2$LoadingTextView;->setTextColor(I)V

    .line 155
    iget-object p2, p0, Lorg/telegram/ui/Components/TranslateAlert2;->loadingTextView:Lorg/telegram/ui/Components/TranslateAlert2$LoadingTextView;

    invoke-virtual {p0, p6}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p8

    const v1, 0x3e4ccccd    # 0.2f

    invoke-static {p8, v1}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result p8

    invoke-virtual {p2, p8}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 156
    iget-object p2, p0, Lorg/telegram/ui/Components/TranslateAlert2;->loadingTextView:Lorg/telegram/ui/Components/TranslateAlert2$LoadingTextView;

    if-nez p4, :cond_0

    const-string p4, ""

    goto :goto_0

    :cond_0
    invoke-interface {p4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p4

    :goto_0
    iget-object p8, p0, Lorg/telegram/ui/Components/TranslateAlert2;->loadingTextView:Lorg/telegram/ui/Components/TranslateAlert2$LoadingTextView;

    invoke-virtual {p8}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p8

    invoke-virtual {p8}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p8

    invoke-static {p4, p8, v0}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object p4

    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    new-instance p2, Lorg/telegram/ui/Components/TranslateAlert2$1;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Components/TranslateAlert2$1;-><init>(Lorg/telegram/ui/Components/TranslateAlert2;Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/TranslateAlert2;->textViewContainer:Landroid/widget/FrameLayout;

    .line 164
    new-instance p2, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-direct {p2, p1, p9}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/TranslateAlert2;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    .line 165
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->setDisablePaddingsOffsetY(Z)V

    .line 166
    iget-object p2, p0, Lorg/telegram/ui/Components/TranslateAlert2;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p4

    invoke-static {p7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p7

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p8

    invoke-virtual {p2, p4, p7, p3, p8}, Landroid/view/View;->setPadding(IIII)V

    .line 167
    iget-object p2, p0, Lorg/telegram/ui/Components/TranslateAlert2;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget p3, Lorg/telegram/messenger/SharedConfig;->fontSize:I

    int-to-float p3, p3

    invoke-virtual {p2, v0, p3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 168
    iget-object p2, p0, Lorg/telegram/ui/Components/TranslateAlert2;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p0, p6}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 169
    iget-object p2, p0, Lorg/telegram/ui/Components/TranslateAlert2;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget p3, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageLinkIn:I

    invoke-virtual {p0, p3}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 170
    iget-object p2, p0, Lorg/telegram/ui/Components/TranslateAlert2;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    .line 171
    iget-object p2, p0, Lorg/telegram/ui/Components/TranslateAlert2;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget p3, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inTextSelectionHighlight:I

    invoke-virtual {p0, p3}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 172
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_TextSelectionCursor:I

    invoke-virtual {p0, p2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p2

    .line 174
    :try_start_0
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p4, 0x1d

    if-lt p3, p4, :cond_1

    invoke-static {}, Lorg/telegram/messenger/XiaomiUtilities;->isMIUI()Z

    move-result p3

    if-nez p3, :cond_1

    .line 175
    iget-object p3, p0, Lorg/telegram/ui/Components/TranslateAlert2;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->getTextSelectHandleLeft()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 176
    sget-object p4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p3, p2, p4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 177
    iget-object p6, p0, Lorg/telegram/ui/Components/TranslateAlert2;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p6, p3}, Landroid/widget/TextView;->setTextSelectHandleLeft(Landroid/graphics/drawable/Drawable;)V

    .line 179
    iget-object p3, p0, Lorg/telegram/ui/Components/TranslateAlert2;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->getTextSelectHandleRight()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 180
    invoke-virtual {p3, p2, p4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 181
    iget-object p2, p0, Lorg/telegram/ui/Components/TranslateAlert2;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextSelectHandleRight(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    :catch_0
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Components/TranslateAlert2;->textViewContainer:Landroid/widget/FrameLayout;

    iget-object p3, p0, Lorg/telegram/ui/Components/TranslateAlert2;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/high16 p4, -0x40800000    # -1.0f

    const/4 p6, -0x1

    invoke-static {p6, p4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 186
    new-instance p2, Lorg/telegram/ui/Components/TranslateAlert2$2;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Components/TranslateAlert2$2;-><init>(Lorg/telegram/ui/Components/TranslateAlert2;Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/TranslateAlert2;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 204
    invoke-virtual {p2, v0}, Landroid/view/View;->setOverScrollMode(I)V

    .line 205
    iget-object p2, p0, Lorg/telegram/ui/Components/TranslateAlert2;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget p3, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    const/high16 p4, 0x42600000    # 56.0f

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p4

    add-int/2addr p3, p4

    const/high16 p4, 0x42a00000    # 80.0f

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p4

    invoke-virtual {p2, p5, p3, p5, p4}, Landroid/view/View;->setPadding(IIII)V

    .line 206
    iget-object p2, p0, Lorg/telegram/ui/Components/TranslateAlert2;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 207
    iget-object p2, p0, Lorg/telegram/ui/Components/TranslateAlert2;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {p3, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lorg/telegram/ui/Components/TranslateAlert2;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 208
    iget-object p2, p0, Lorg/telegram/ui/Components/TranslateAlert2;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance p3, Lorg/telegram/ui/Components/TranslateAlert2$PaddedAdapter;

    iget-object p4, p0, Lorg/telegram/ui/Components/TranslateAlert2;->loadingTextView:Lorg/telegram/ui/Components/TranslateAlert2$LoadingTextView;

    invoke-direct {p3, p1, p4}, Lorg/telegram/ui/Components/TranslateAlert2$PaddedAdapter;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object p3, p0, Lorg/telegram/ui/Components/TranslateAlert2;->adapter:Lorg/telegram/ui/Components/TranslateAlert2$PaddedAdapter;

    invoke-virtual {p2, p3}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 209
    iget-object p2, p0, Lorg/telegram/ui/Components/TranslateAlert2;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance p3, Lorg/telegram/ui/Components/TranslateAlert2$3;

    invoke-direct {p3, p0}, Lorg/telegram/ui/Components/TranslateAlert2$3;-><init>(Lorg/telegram/ui/Components/TranslateAlert2;)V

    invoke-virtual {p2, p3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 227
    new-instance p2, Lorg/telegram/ui/Components/TranslateAlert2$4;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/TranslateAlert2$4;-><init>(Lorg/telegram/ui/Components/TranslateAlert2;)V

    const-wide/16 p3, 0xb4

    .line 238
    invoke-virtual {p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setDurations(J)V

    .line 239
    new-instance p3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 240
    iget-object p3, p0, Lorg/telegram/ui/Components/TranslateAlert2;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p3, p2}, Lorg/telegram/ui/Components/RecyclerListView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 241
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object p3, p0, Lorg/telegram/ui/Components/TranslateAlert2;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 p4, -0x2

    const/16 p7, 0x50

    invoke-static {p6, p4, p7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 243
    new-instance p2, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;-><init>(Lorg/telegram/ui/Components/TranslateAlert2;Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/TranslateAlert2;->headerView:Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;

    .line 244
    iget-object p3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    const/16 p4, 0x4e

    const/16 p7, 0x37

    invoke-static {p6, p4, p7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p4

    invoke-virtual {p3, p2, p4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 251
    new-instance p2, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-direct {p2, p1, p9}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/TranslateAlert2;->mainButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    .line 252
    invoke-virtual {p2}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setRound()Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    .line 253
    iget-object p1, p0, Lorg/telegram/ui/Components/TranslateAlert2;->mainButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setColor(I)V

    .line 254
    iget-object p1, p0, Lorg/telegram/ui/Components/TranslateAlert2;->mainButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    sget p2, Lorg/telegram/messenger/R$string;->CloseTranslation:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, p5}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    .line 255
    iget-object p1, p0, Lorg/telegram/ui/Components/TranslateAlert2;->mainButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    .line 256
    iget-object p1, p0, Lorg/telegram/ui/Components/TranslateAlert2;->mainButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    new-instance p2, Lorg/telegram/ui/Components/TranslateAlert2$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/TranslateAlert2$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/TranslateAlert2;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object p2, p0, Lorg/telegram/ui/Components/TranslateAlert2;->mainButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    const/high16 p8, 0x41800000    # 16.0f

    const/high16 p9, 0x41800000    # 16.0f

    const/4 p3, -0x1

    const/high16 p4, 0x42400000    # 48.0f

    const/16 p5, 0x57

    const/high16 p6, 0x41800000    # 16.0f

    const/high16 p7, 0x41800000    # 16.0f

    invoke-static/range {p3 .. p9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 259
    invoke-virtual {p0}, Lorg/telegram/ui/Components/TranslateAlert2;->translate()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$InputPeer;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Components/TranslateAlert2-IA;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p9}, Lorg/telegram/ui/Components/TranslateAlert2;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$InputPeer;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/util/ArrayList;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 10

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v9, p6

    .line 125
    invoke-direct/range {v0 .. v9}, Lorg/telegram/ui/Components/TranslateAlert2;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$InputPeer;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/TranslateAlert2;)Landroid/view/ViewGroup;
    .locals 0

    .line 90
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/TranslateAlert2;)Landroid/view/ViewGroup;
    .locals 0

    .line 90
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/TranslateAlert2;I)I
    .locals 0

    .line 90
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/TranslateAlert2;I)I
    .locals 0

    .line 90
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/TranslateAlert2;I)I
    .locals 0

    .line 90
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/TranslateAlert2;I)I
    .locals 0

    .line 90
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Components/TranslateAlert2;I)I
    .locals 0

    .line 90
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Components/TranslateAlert2;I)I
    .locals 0

    .line 90
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Components/TranslateAlert2;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 90
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Components/TranslateAlert2;I)I
    .locals 0

    .line 90
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Components/TranslateAlert2;I)I
    .locals 0

    .line 90
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Components/TranslateAlert2;I)I
    .locals 0

    .line 90
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/TranslateAlert2;)Landroid/view/ViewGroup;
    .locals 0

    .line 90
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Components/TranslateAlert2;I)I
    .locals 0

    .line 90
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Components/TranslateAlert2;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 90
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/Components/TranslateAlert2;)Landroid/view/ViewGroup;
    .locals 0

    .line 90
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/Components/TranslateAlert2;I)I
    .locals 0

    .line 90
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/Components/TranslateAlert2;I)I
    .locals 0

    .line 90
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/Components/TranslateAlert2;)Landroid/view/ViewGroup;
    .locals 0

    .line 90
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/Components/TranslateAlert2;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 90
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/Components/TranslateAlert2;I)I
    .locals 0

    .line 90
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/Components/TranslateAlert2;I)I
    .locals 0

    .line 90
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/Components/TranslateAlert2;I)I
    .locals 0

    .line 90
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/TranslateAlert2;)Landroid/view/ViewGroup;
    .locals 0

    .line 90
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/TranslateAlert2;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 90
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/TranslateAlert2;)Landroid/view/ViewGroup;
    .locals 0

    .line 90
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/TranslateAlert2;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 90
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/TranslateAlert2;I)I
    .locals 0

    .line 90
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/TranslateAlert2;I)I
    .locals 0

    .line 90
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/TranslateAlert2;I)I
    .locals 0

    .line 90
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method public static alternativeTranslate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback2;)V
    .locals 5

    if-nez p3, :cond_0

    goto :goto_2

    :cond_0
    if-nez p1, :cond_1

    .line 501
    new-instance p1, Lorg/telegram/ui/Components/TranslateAlert2$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, p2, p3}, Lorg/telegram/ui/Components/TranslateAlert2$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback2;)V

    new-instance v0, Lorg/telegram/ui/Components/TranslateAlert2$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p2, p3}, Lorg/telegram/ui/Components/TranslateAlert2$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback2;)V

    invoke-static {p0, p1, v0}, Lorg/telegram/messenger/LanguageDetector;->detectLanguage(Ljava/lang/String;Lorg/telegram/messenger/LanguageDetector$StringCallback;Lorg/telegram/messenger/LanguageDetector$ExceptionCallback;)V

    return-void

    .line 508
    :cond_1
    invoke-static {p0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 509
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1388

    if-le v0, v1, :cond_4

    .line 510
    invoke-static {p0, v1}, Lorg/telegram/ui/Components/TranslateAlert2;->cut(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object p0

    .line 511
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 512
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    const/4 v3, 0x0

    .line 513
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    .line 516
    new-array v2, v2, [Z

    .line 517
    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 519
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Lorg/telegram/ui/Components/TranslateAlert2$$ExternalSyntheticLambda2;

    invoke-direct {v4, v2, v0, v1, p3}, Lorg/telegram/ui/Components/TranslateAlert2$$ExternalSyntheticLambda2;-><init>([ZLjava/util/ArrayList;ILorg/telegram/messenger/Utilities$Callback2;)V

    invoke-static {v3, p1, p2, v4}, Lorg/telegram/ui/Components/TranslateAlert2;->alternativeTranslateInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback2;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    return-void

    .line 541
    :cond_4
    invoke-static {p0, p1, p2, p3}, Lorg/telegram/ui/Components/TranslateAlert2;->alternativeTranslateInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback2;)V

    return-void
.end method

.method private static alternativeTranslateInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback2;)V
    .locals 1

    if-nez p3, :cond_0

    return-void

    .line 546
    :cond_0
    new-instance v0, Lorg/telegram/ui/Components/TranslateAlert2$7;

    invoke-direct {v0, p1, p2, p0, p3}, Lorg/telegram/ui/Components/TranslateAlert2$7;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback2;)V

    .line 615
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static capitalFirst(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3

    if-eqz p0, :cond_2

    .line 1514
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    .line 1517
    :cond_0
    instance-of v0, p0, Landroid/text/SpannableStringBuilder;

    if-eqz v0, :cond_1

    check-cast p0, Landroid/text/SpannableStringBuilder;

    goto :goto_0

    :cond_1
    invoke-static {p0}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    .line 1518
    :goto_0
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1519
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v2, v0}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    return-object p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static capitalFirst(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_1

    .line 1507
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 1510
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static cut(Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 5

    .line 476
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 478
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    add-int v2, v1, p1

    .line 479
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 482
    const-string v3, "%0A"

    invoke-static {p0, v3, v1, v2}, Lorg/telegram/ui/Components/TranslateAlert2;->lastIndexOfSafe(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 484
    const-string v3, "%20"

    invoke-static {p0, v3, v1, v2}, Lorg/telegram/ui/Components/TranslateAlert2;->lastIndexOfSafe(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v3

    :cond_0
    if-ne v3, v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x3

    move v2, v3

    .line 492
    :goto_1
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v2

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private getSheetTop()F
    .locals 1

    const/4 v0, 0x1

    .line 1143
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/TranslateAlert2;->getSheetTop(Z)F

    move-result v0

    return v0
.end method

.method private getSheetTop(Z)F
    .locals 4

    .line 1146
    iget-object v0, p0, Lorg/telegram/ui/Components/TranslateAlert2;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    .line 1147
    iget-object v1, p0, Lorg/telegram/ui/Components/TranslateAlert2;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    .line 1148
    iget-object v1, p0, Lorg/telegram/ui/Components/TranslateAlert2;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    const/4 v3, 0x0

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    :cond_0
    const/high16 v1, 0x429c0000    # 78.0f

    .line 1150
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    if-eqz p1, :cond_2

    .line 1151
    iget-object p1, p0, Lorg/telegram/ui/Components/TranslateAlert2;->sheetTopAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    if-eqz p1, :cond_2

    .line 1152
    iget-object v1, p0, Lorg/telegram/ui/Components/TranslateAlert2;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-boolean v1, v1, Lorg/telegram/ui/Components/RecyclerListView;->scrollingByUser:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lorg/telegram/ui/Components/TranslateAlert2;->sheetTopNotAnimate:Z

    if-nez v1, :cond_1

    .line 1153
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result p1

    return p1

    .line 1155
    :cond_1
    invoke-virtual {p1, v0, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    :cond_2
    return v0
.end method

.method public static getToLanguage()Ljava/lang/String;
    .locals 1

    .line 1755
    invoke-static {}, Lcom/exteragram/messenger/utils/text/TranslatorUtils;->getResolvedTargetLanguageCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static groupEmojiRanges(Ljava/lang/CharSequence;)Ljava/util/HashMap;
    .locals 6

    .line 915
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-nez p0, :cond_0

    goto :goto_2

    .line 919
    :cond_0
    invoke-static {p0}, Lorg/telegram/messenger/Emoji;->parseEmojis(Ljava/lang/CharSequence;)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_2

    .line 923
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    .line 924
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 925
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/Emoji$EmojiSpanRange;

    if-eqz v3, :cond_4

    .line 926
    iget-object v4, v3, Lorg/telegram/messenger/Emoji$EmojiSpanRange;->code:Ljava/lang/CharSequence;

    if-nez v4, :cond_2

    goto :goto_1

    .line 929
    :cond_2
    iget v4, v3, Lorg/telegram/messenger/Emoji$EmojiSpanRange;->start:I

    iget v5, v3, Lorg/telegram/messenger/Emoji$EmojiSpanRange;->end:I

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 930
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    if-nez v5, :cond_3

    .line 932
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 934
    :cond_3
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    :goto_2
    return-object v0
.end method

.method private hasEnoughHeight()Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v1

    .line 264
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Components/TranslateAlert2;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_1

    .line 265
    iget-object v3, p0, Lorg/telegram/ui/Components/TranslateAlert2;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 266
    iget-object v5, p0, Lorg/telegram/ui/Components/TranslateAlert2;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v5, v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v5

    if-ne v5, v4, :cond_0

    .line 267
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v0, v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 269
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/TranslateAlert2;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/TranslateAlert2;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/Components/TranslateAlert2;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_2

    return v4

    :cond_2
    return v1
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    .line 256
    invoke-virtual {p0}, Lorg/telegram/ui/Components/TranslateAlert2;->dismiss()V

    return-void
.end method

.method private synthetic lambda$translate$1(Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 6

    const/4 v0, 0x0

    .line 308
    iput-object v0, p0, Lorg/telegram/ui/Components/TranslateAlert2;->reqId:Ljava/lang/Integer;

    if-eqz p3, :cond_0

    .line 309
    const-string v0, "TRANSLATIONS_DISABLED_ALT"

    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 310
    invoke-direct {p0}, Lorg/telegram/ui/Components/TranslateAlert2;->translateAlt()V

    return-void

    :cond_0
    const/4 p3, 0x0

    if-eqz p2, :cond_1

    .line 312
    iput-boolean p3, p0, Lorg/telegram/ui/Components/TranslateAlert2;->firstTranslation:Z

    .line 313
    invoke-static {p1, p2}, Lorg/telegram/ui/Components/TranslateAlert2;->preprocess(Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;)Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    move-result-object p1

    .line 314
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->text:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 315
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->entities:Ljava/util/ArrayList;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static/range {v0 .. v5}, Lorg/telegram/messenger/MessageObject;->addEntitiesToText(Ljava/lang/CharSequence;Ljava/util/ArrayList;ZZZZ)Z

    .line 316
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/TranslateAlert2;->preprocessText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 317
    iget-object p2, p0, Lorg/telegram/ui/Components/TranslateAlert2;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 318
    iget-object p1, p0, Lorg/telegram/ui/Components/TranslateAlert2;->adapter:Lorg/telegram/ui/Components/TranslateAlert2$PaddedAdapter;

    iget-object p2, p0, Lorg/telegram/ui/Components/TranslateAlert2;->textViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/TranslateAlert2$PaddedAdapter;->updateMainView(Landroid/view/View;)V

    return-void

    .line 319
    :cond_1
    iget-boolean p1, p0, Lorg/telegram/ui/Components/TranslateAlert2;->firstTranslation:Z

    if-eqz p1, :cond_2

    .line 320
    invoke-virtual {p0}, Lorg/telegram/ui/Components/TranslateAlert2;->dismiss()V

    .line 321
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->showBulletin:I

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->TranslationFailedAlert2:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, p3

    aput-object v2, v3, v0

    invoke-virtual {p1, p2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void

    .line 323
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    check-cast p1, Landroid/widget/FrameLayout;

    iget-object p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->TranslationFailedAlert2:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/BulletinFactory;->createErrorBulletin(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    .line 324
    iget-object p1, p0, Lorg/telegram/ui/Components/TranslateAlert2;->headerView:Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;

    invoke-static {p1}, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->-$$Nest$fgettoLanguageTextView(Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;)Lorg/telegram/ui/Components/AnimatedTextView;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/TranslateAlert2;->prevToLanguage:Ljava/lang/String;

    iput-object p2, p0, Lorg/telegram/ui/Components/TranslateAlert2;->toLanguage:Ljava/lang/String;

    invoke-static {p2}, Lorg/telegram/ui/Components/TranslateAlert2;->languageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 325
    iget-object p1, p0, Lorg/telegram/ui/Components/TranslateAlert2;->adapter:Lorg/telegram/ui/Components/TranslateAlert2$PaddedAdapter;

    iget-object p2, p0, Lorg/telegram/ui/Components/TranslateAlert2;->textViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/TranslateAlert2$PaddedAdapter;->updateMainView(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$translateAlt$2(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 449
    iput-boolean v0, p0, Lorg/telegram/ui/Components/TranslateAlert2;->firstTranslation:Z

    .line 450
    iget-object p2, p0, Lorg/telegram/ui/Components/TranslateAlert2;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/TranslateAlert2;->preprocessText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 451
    iget-object p1, p0, Lorg/telegram/ui/Components/TranslateAlert2;->adapter:Lorg/telegram/ui/Components/TranslateAlert2$PaddedAdapter;

    iget-object p2, p0, Lorg/telegram/ui/Components/TranslateAlert2;->textViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/TranslateAlert2$PaddedAdapter;->updateMainView(Landroid/view/View;)V

    return-void

    .line 453
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->isDismissed()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 458
    :cond_1
    iget-boolean p1, p0, Lorg/telegram/ui/Components/TranslateAlert2;->firstTranslation:Z

    if-eqz p1, :cond_3

    .line 459
    invoke-virtual {p0}, Lorg/telegram/ui/Components/TranslateAlert2;->dismiss()V

    .line 460
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v1, Lorg/telegram/messenger/NotificationCenter;->showBulletin:I

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_2

    sget p2, Lorg/telegram/messenger/R$string;->TranslationFailedAlert1:I

    goto :goto_0

    :cond_2
    sget p2, Lorg/telegram/messenger/R$string;->TranslationFailedAlert2:I

    :goto_0
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v0

    aput-object p2, v4, v2

    invoke-virtual {p1, v1, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void

    .line 462
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    check-cast p1, Landroid/widget/FrameLayout;

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_4

    sget p2, Lorg/telegram/messenger/R$string;->TranslationFailedAlert1:I

    goto :goto_1

    :cond_4
    sget p2, Lorg/telegram/messenger/R$string;->TranslationFailedAlert2:I

    :goto_1
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/BulletinFactory;->createErrorBulletin(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    .line 463
    iget-object p1, p0, Lorg/telegram/ui/Components/TranslateAlert2;->headerView:Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;

    invoke-static {p1}, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->-$$Nest$fgettoLanguageTextView(Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;)Lorg/telegram/ui/Components/AnimatedTextView;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/TranslateAlert2;->prevToLanguage:Ljava/lang/String;

    iput-object p2, p0, Lorg/telegram/ui/Components/TranslateAlert2;->toLanguage:Ljava/lang/String;

    invoke-static {p2}, Lorg/telegram/ui/Components/TranslateAlert2;->languageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 464
    iget-object p1, p0, Lorg/telegram/ui/Components/TranslateAlert2;->adapter:Lorg/telegram/ui/Components/TranslateAlert2$PaddedAdapter;

    iget-object p2, p0, Lorg/telegram/ui/Components/TranslateAlert2;->textViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/TranslateAlert2$PaddedAdapter;->updateMainView(Landroid/view/View;)V

    return-void
.end method

.method public static languageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1524
    invoke-static {p0, v0}, Lorg/telegram/ui/Components/TranslateAlert2;->languageName(Ljava/lang/String;[Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static languageName(Ljava/lang/String;[Z)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    if-eqz p0, :cond_9

    .line 1528
    const-string/jumbo v1, "und"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "auto"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    .line 1532
    :cond_0
    const-string v1, "_"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 1533
    const-string v3, "nb"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "no"

    if-eqz v4, :cond_1

    move-object v1, v5

    :cond_1
    if-eqz p1, :cond_3

    .line 1539
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TranslateLanguage"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 1540
    const-string v6, "LOC_ERR"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    const/4 v6, 0x1

    goto :goto_0

    :cond_2
    move v6, v2

    :goto_0
    aput-boolean v6, p1, v2

    if-eqz v6, :cond_3

    return-object v4

    .line 1546
    :cond_3
    invoke-static {p0}, Lorg/telegram/ui/Components/TranslateAlert2;->systemLanguageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_4

    .line 1548
    invoke-static {v1}, Lorg/telegram/ui/Components/TranslateAlert2;->systemLanguageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_4
    if-eqz p1, :cond_5

    return-object p1

    .line 1555
    :cond_5
    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    move-object p0, v3

    .line 1558
    :cond_6
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/LocaleController;->getCurrentLocaleInfo()Lorg/telegram/messenger/LocaleController$LocaleInfo;

    move-result-object p1

    .line 1559
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/telegram/messenger/LocaleController;->getBuiltinLanguageByPlural(Ljava/lang/String;)Lorg/telegram/messenger/LocaleController$LocaleInfo;

    move-result-object p0

    if-nez p0, :cond_7

    return-object v0

    :cond_7
    if-eqz p1, :cond_8

    .line 1563
    const-string v0, "en"

    iget-object p1, p1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pluralLangCode:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 1565
    iget-object p0, p0, Lorg/telegram/messenger/LocaleController$LocaleInfo;->nameEnglish:Ljava/lang/String;

    return-object p0

    .line 1567
    :cond_8
    iget-object p0, p0, Lorg/telegram/messenger/LocaleController$LocaleInfo;->name:Ljava/lang/String;

    return-object p0

    :cond_9
    :goto_1
    return-object v0
.end method

.method public static languageNameCapital(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1572
    invoke-static {p0}, Lorg/telegram/ui/Components/TranslateAlert2;->languageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1574
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static lastIndexOfSafe(Ljava/lang/String;Ljava/lang/String;II)I
    .locals 0

    add-int/lit8 p3, p3, -0x1

    .line 471
    invoke-virtual {p0, p1, p3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result p0

    if-lt p0, p2, :cond_0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public static preprocess(Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;)Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;
    .locals 11

    if-eqz p1, :cond_10

    .line 824
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->text:Ljava/lang/String;

    if-nez v0, :cond_0

    goto/16 :goto_7

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 827
    :goto_0
    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->entities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 828
    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->entities:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$MessageEntity;

    .line 829
    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messageEntityTextUrl;

    if-eqz v3, :cond_3

    .line 830
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$MessageEntity;->url:Ljava/lang/String;

    if-nez v3, :cond_1

    goto/16 :goto_1

    .line 833
    :cond_1
    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->text:Ljava/lang/String;

    iget v4, v2, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    iget v5, v2, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    add-int/2addr v5, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 834
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$MessageEntity;->url:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 835
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messageEntityUrl;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messageEntityUrl;-><init>()V

    .line 836
    iget v4, v2, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    iput v4, v3, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    .line 837
    iget v2, v2, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    iput v2, v3, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    .line 838
    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->entities:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 839
    :cond_2
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$MessageEntity;->url:Ljava/lang/String;

    const-string v5, "https://t.me/"

    .line 840
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "@"

    .line 841
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    .line 842
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$MessageEntity;->url:Ljava/lang/String;

    const/16 v5, 0xd

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 844
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messageEntityMention;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messageEntityMention;-><init>()V

    .line 845
    iget v4, v2, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    iput v4, v3, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    .line 846
    iget v2, v2, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    iput v2, v3, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    .line 847
    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->entities:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 849
    :cond_3
    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messageEntityPre;

    if-eqz v3, :cond_4

    if-eqz p0, :cond_4

    .line 850
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->entities:Ljava/util/ArrayList;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->entities:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messageEntityPre;

    if-eqz v3, :cond_4

    .line 851
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->entities:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$MessageEntity;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageEntity;->language:Ljava/lang/String;

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$MessageEntity;->language:Ljava/lang/String;

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_5
    if-eqz p0, :cond_f

    .line 855
    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->text:Ljava/lang/String;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->entities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_f

    .line 856
    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->text:Ljava/lang/String;

    invoke-static {v1}, Lorg/telegram/ui/Components/TranslateAlert2;->groupEmojiRanges(Ljava/lang/CharSequence;)Ljava/util/HashMap;

    move-result-object v1

    .line 857
    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->text:Ljava/lang/String;

    invoke-static {v2}, Lorg/telegram/ui/Components/TranslateAlert2;->groupEmojiRanges(Ljava/lang/CharSequence;)Ljava/util/HashMap;

    move-result-object v2

    move v3, v0

    .line 859
    :goto_2
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->entities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_f

    .line 860
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->entities:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$MessageEntity;

    .line 861
    instance-of v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;

    if-eqz v5, :cond_e

    .line 862
    iget-object v5, p0, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->text:Ljava/lang/String;

    iget v6, v4, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    iget v7, v4, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    add-int/2addr v7, v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 863
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    goto/16 :goto_6

    .line 866
    :cond_6
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 867
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    if-eqz v6, :cond_e

    if-nez v5, :cond_7

    goto/16 :goto_6

    :cond_7
    move v7, v0

    .line 872
    :goto_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_9

    .line 873
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/messenger/Emoji$EmojiSpanRange;

    .line 874
    iget v9, v8, Lorg/telegram/messenger/Emoji$EmojiSpanRange;->start:I

    iget v10, v4, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    if-ne v9, v10, :cond_8

    iget v8, v8, Lorg/telegram/messenger/Emoji$EmojiSpanRange;->end:I

    iget v9, v4, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    add-int/2addr v10, v9

    if-ne v8, v10, :cond_8

    goto :goto_4

    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_9
    const/4 v7, -0x1

    :goto_4
    if-ltz v7, :cond_e

    .line 879
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v7, v6, :cond_a

    goto :goto_6

    .line 882
    :cond_a
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/Emoji$EmojiSpanRange;

    if-nez v5, :cond_b

    goto :goto_6

    :cond_b
    move v6, v0

    .line 888
    :goto_5
    iget-object v7, p1, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->entities:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_d

    .line 889
    iget-object v7, p1, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->entities:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$MessageEntity;

    .line 890
    instance-of v8, v7, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;

    if-eqz v8, :cond_c

    iget v8, v5, Lorg/telegram/messenger/Emoji$EmojiSpanRange;->start:I

    iget v9, v5, Lorg/telegram/messenger/Emoji$EmojiSpanRange;->end:I

    iget v10, v7, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    add-int/2addr v7, v10

    .line 892
    invoke-static {v8, v9, v10, v7}, Lorg/telegram/messenger/AndroidUtilities;->intersect1d(IIII)Z

    move-result v7

    if-eqz v7, :cond_c

    goto :goto_6

    :cond_c
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 902
    :cond_d
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;-><init>()V

    .line 903
    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;

    iget-wide v7, v4, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;->document_id:J

    iput-wide v7, v6, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;->document_id:J

    .line 904
    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iput-object v4, v6, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 905
    iget v4, v5, Lorg/telegram/messenger/Emoji$EmojiSpanRange;->start:I

    iput v4, v6, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    .line 906
    iget v5, v5, Lorg/telegram/messenger/Emoji$EmojiSpanRange;->end:I

    sub-int/2addr v5, v4

    iput v5, v6, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    .line 907
    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->entities:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    :cond_f
    return-object p1

    :cond_10
    :goto_7
    const/4 p0, 0x0

    return-object p0
.end method

.method private preprocessText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 6

    .line 950
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 952
    iget-object p1, p0, Lorg/telegram/ui/Components/TranslateAlert2;->onLinkPress:Lorg/telegram/messenger/Utilities$CallbackReturn;

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/TranslateAlert2;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz p1, :cond_3

    .line 953
    :cond_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const-class v1, Landroid/text/style/URLSpan;

    const/4 v2, 0x0

    invoke-interface {v0, v2, p1, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/text/style/URLSpan;

    .line 954
    :goto_0
    array-length v1, p1

    if-ge v2, v1, :cond_3

    .line 955
    aget-object v1, p1, v2

    .line 956
    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    .line 957
    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v3, v5, :cond_2

    if-ne v4, v5, :cond_1

    goto :goto_1

    .line 961
    :cond_1
    invoke-interface {v0, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 962
    new-instance v5, Lorg/telegram/ui/Components/TranslateAlert2$8;

    invoke-direct {v5, p0, v1}, Lorg/telegram/ui/Components/TranslateAlert2$8;-><init>(Lorg/telegram/ui/Components/TranslateAlert2;Landroid/text/style/URLSpan;)V

    const/16 v1, 0x21

    invoke-interface {v0, v5, v3, v4, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 990
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/TranslateAlert2;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public static setToLanguage(Ljava/lang/String;)V
    .locals 0

    .line 1759
    invoke-static {p0}, Lcom/exteragram/messenger/utils/text/TranslatorUtils;->setTargetLanguage(Ljava/lang/String;)V

    return-void
.end method

.method public static showAlert(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;ILjava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/util/ArrayList;ZLorg/telegram/messenger/Utilities$CallbackReturn;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/TranslateAlert2;
    .locals 8

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1732
    :cond_0
    new-instance v0, Lorg/telegram/ui/Components/TranslateAlert2$10;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object/from16 v7, p9

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Components/TranslateAlert2$10;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/util/ArrayList;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/Runnable;)V

    .line 1741
    invoke-virtual {v0, p7}, Lorg/telegram/ui/Components/TranslateAlert2;->setNoforwards(Z)V

    .line 1742
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/TranslateAlert2;->setFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    move-object/from16 p0, p8

    .line 1743
    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/TranslateAlert2;->setOnLinkPress(Lorg/telegram/messenger/Utilities$CallbackReturn;)V

    if-eqz p1, :cond_2

    .line 1745
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1746
    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    :cond_1
    return-object v0

    .line 1749
    :cond_2
    invoke-virtual {v0}, Lorg/telegram/ui/Components/TranslateAlert2;->show()V

    return-object v0
.end method

.method public static showAlert(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;ILorg/telegram/tgnet/TLRPC$InputPeer;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/util/ArrayList;ZLorg/telegram/messenger/Utilities$CallbackReturn;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/TranslateAlert2;
    .locals 11

    .line 1706
    new-instance v0, Lorg/telegram/ui/Components/TranslateAlert2$9;

    const/4 v9, 0x0

    move-object v1, p0

    move-object v6, p3

    move v7, p4

    move/from16 v8, p5

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    move-object/from16 v5, p9

    move-object/from16 v10, p12

    invoke-direct/range {v0 .. v10}, Lorg/telegram/ui/Components/TranslateAlert2$9;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$InputPeer;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/Runnable;)V

    move/from16 p0, p10

    .line 1715
    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/TranslateAlert2;->setNoforwards(Z)V

    .line 1716
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/TranslateAlert2;->setFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    move-object/from16 p0, p11

    .line 1717
    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/TranslateAlert2;->setOnLinkPress(Lorg/telegram/messenger/Utilities$CallbackReturn;)V

    if-eqz p1, :cond_1

    .line 1719
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1720
    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    :cond_0
    return-object v0

    .line 1723
    :cond_1
    invoke-virtual {v0}, Lorg/telegram/ui/Components/TranslateAlert2;->show()V

    return-object v0
.end method

.method public static systemLanguageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1578
    invoke-static {p0, v0}, Lorg/telegram/ui/Components/TranslateAlert2;->systemLanguageName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static systemLanguageName(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1586
    :cond_0
    sget-object v1, Lorg/telegram/ui/Components/TranslateAlert2;->localesByCode:Ljava/util/HashMap;

    const-string v2, "-"

    if-nez v1, :cond_2

    .line 1587
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lorg/telegram/ui/Components/TranslateAlert2;->localesByCode:Ljava/util/HashMap;

    .line 1589
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v1

    const/4 v3, 0x0

    .line 1590
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_2

    .line 1591
    sget-object v4, Lorg/telegram/ui/Components/TranslateAlert2;->localesByCode:Ljava/util/HashMap;

    aget-object v5, v1, v3

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    aget-object v6, v1, v3

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1592
    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1593
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 1594
    sget-object v5, Lorg/telegram/ui/Components/TranslateAlert2;->localesByCode:Ljava/util/HashMap;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, v1, v3

    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aget-object v6, v1, v3

    invoke-virtual {v5, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1599
    :catch_0
    :cond_2
    const-string v1, "_"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 1601
    :try_start_1
    sget-object v1, Lorg/telegram/ui/Components/TranslateAlert2;->localesByCode:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Locale;

    if-eqz v1, :cond_6

    if-eqz p1, :cond_3

    move-object v3, v1

    goto :goto_1

    .line 1603
    :cond_3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    :goto_1
    invoke-virtual {v1, v3}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 1604
    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_5

    if-eqz p1, :cond_4

    move-object p0, v1

    goto :goto_2

    .line 1605
    :cond_4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    :goto_2
    invoke-virtual {v1, p0}, Ljava/util/Locale;->getDisplayCountry(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 1606
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 1607
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_5
    return-object v3

    :catch_1
    :cond_6
    return-object v0
.end method

.method private translateAlt()V
    .locals 7

    .line 429
    iget-object v0, p0, Lorg/telegram/ui/Components/TranslateAlert2;->reqText:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 430
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/TranslateAlert2;->fromLanguage:Ljava/lang/String;

    const/4 v2, 0x0

    .line 431
    const-string v3, "_"

    if-eqz v1, :cond_1

    .line 432
    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v2

    .line 434
    :cond_1
    const-string v4, "nb"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "no"

    if-eqz v5, :cond_2

    move-object v1, v6

    .line 438
    :cond_2
    iget-object v5, p0, Lorg/telegram/ui/Components/TranslateAlert2;->toLanguage:Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 440
    invoke-virtual {v5, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v5, v3, v2

    .line 442
    :cond_3
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    move-object v6, v5

    .line 447
    :goto_1
    new-instance v2, Lorg/telegram/ui/Components/TranslateAlert2$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/TranslateAlert2$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/TranslateAlert2;)V

    invoke-static {v0, v1, v6, v2}, Lorg/telegram/ui/Components/TranslateAlert2;->alternativeTranslate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback2;)V

    return-void
.end method

.method private updateButtonShadow(Z)V
    .locals 1

    .line 1698
    iget-object v0, p0, Lorg/telegram/ui/Components/TranslateAlert2;->buttonShadowShown:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 1699
    :cond_1
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/TranslateAlert2;->buttonShadowShown:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method protected canDismissWithSwipe()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    .line 1638
    sget p2, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    if-ne p1, p2, :cond_0

    .line 1639
    iget-object p1, p0, Lorg/telegram/ui/Components/TranslateAlert2;->loadingTextView:Lorg/telegram/ui/Components/TranslateAlert2$LoadingTextView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 1640
    iget-object p1, p0, Lorg/telegram/ui/Components/TranslateAlert2;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public dismiss()V
    .locals 2

    .line 1627
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    .line 1628
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1629
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->translationModelDownloaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1630
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->translationModelDownloading:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public dismissInternal()V
    .locals 3

    .line 995
    iget-object v0, p0, Lorg/telegram/ui/Components/TranslateAlert2;->reqId:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 996
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/TranslateAlert2;->reqId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    const/4 v0, 0x0

    .line 997
    iput-object v0, p0, Lorg/telegram/ui/Components/TranslateAlert2;->reqId:Ljava/lang/Integer;

    .line 999
    :cond_0
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismissInternal()V

    return-void
.end method

.method public setFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 0

    .line 1003
    iput-object p1, p0, Lorg/telegram/ui/Components/TranslateAlert2;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    return-void
.end method

.method public setNoforwards(Z)V
    .locals 2

    .line 1011
    iget-object v0, p0, Lorg/telegram/ui/Components/TranslateAlert2;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    if-eqz v0, :cond_0

    xor-int/lit8 v1, p1, 0x1

    .line 1012
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    :cond_0
    const/16 v0, 0x2000

    if-eqz p1, :cond_1

    .line 1015
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 1016
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->logFlagSecure()V

    return-void

    .line 1018
    :cond_1
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    .line 1019
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->logFlagSecure()V

    return-void
.end method

.method public setOnLinkPress(Lorg/telegram/messenger/Utilities$CallbackReturn;)V
    .locals 0

    .line 1007
    iput-object p1, p0, Lorg/telegram/ui/Components/TranslateAlert2;->onLinkPress:Lorg/telegram/messenger/Utilities$CallbackReturn;

    return-void
.end method

.method public show()V
    .locals 2

    .line 1619
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    .line 1620
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1621
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->translationModelDownloaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1622
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->translationModelDownloading:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public translate()V
    .locals 8

    .line 273
    iget-object v0, p0, Lorg/telegram/ui/Components/TranslateAlert2;->reqId:Ljava/lang/Integer;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 274
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/TranslateAlert2;->reqId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    const/4 v0, 0x0

    .line 275
    iput-object v0, p0, Lorg/telegram/ui/Components/TranslateAlert2;->reqId:Ljava/lang/Integer;

    .line 278
    :cond_0
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->translationsManualEnabled:Ljava/lang/String;

    .line 279
    const-string v2, "alternative"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 280
    invoke-direct {p0}, Lorg/telegram/ui/Components/TranslateAlert2;->translateAlt()V

    return-void

    .line 287
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/TranslateAlert2;->toLanguage:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 289
    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    .line 291
    :cond_2
    const-string v2, "nb"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 292
    const-string v0, "no"

    :cond_3
    move-object v5, v0

    .line 295
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;-><init>()V

    .line 296
    iget-object v2, p0, Lorg/telegram/ui/Components/TranslateAlert2;->reqText:Ljava/lang/CharSequence;

    const-string v3, ""

    if-nez v2, :cond_4

    move-object v2, v3

    goto :goto_0

    :cond_4
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->text:Ljava/lang/String;

    .line 297
    iget-object v2, p0, Lorg/telegram/ui/Components/TranslateAlert2;->reqMessageEntities:Ljava/util/ArrayList;

    if-eqz v2, :cond_5

    .line 298
    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->entities:Ljava/util/ArrayList;

    .line 301
    :cond_5
    iget-boolean v2, p0, Lorg/telegram/ui/Components/TranslateAlert2;->reqSum:Z

    if-eqz v2, :cond_6

    iget-object v2, p0, Lorg/telegram/ui/Components/TranslateAlert2;->reqPeer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    if-eqz v2, :cond_6

    .line 302
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messages_summarizeText;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messages_summarizeText;-><init>()V

    .line 303
    iget v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_summarizeText;->flags:I

    or-int/2addr v1, v3

    iput v1, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_summarizeText;->flags:I

    .line 304
    iget-object v1, p0, Lorg/telegram/ui/Components/TranslateAlert2;->reqPeer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iput-object v1, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_summarizeText;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 305
    iget v1, p0, Lorg/telegram/ui/Components/TranslateAlert2;->reqMessageId:I

    iput v1, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_summarizeText;->id:I

    .line 306
    iput-object v5, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_summarizeText;->to_lang:Ljava/lang/String;

    .line 307
    iget v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v3, Lorg/telegram/messenger/BotForumHelper$$ExternalSyntheticLambda2;

    invoke-direct {v3}, Lorg/telegram/messenger/BotForumHelper$$ExternalSyntheticLambda2;-><init>()V

    new-instance v4, Lorg/telegram/ui/Components/TranslateAlert2$$ExternalSyntheticLambda4;

    invoke-direct {v4, p0, v0}, Lorg/telegram/ui/Components/TranslateAlert2$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/TranslateAlert2;Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;)V

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequestTyped(Lorg/telegram/tgnet/TLMethod;Ljava/util/concurrent/Executor;Lorg/telegram/messenger/Utilities$Callback2;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/TranslateAlert2;->reqId:Ljava/lang/Integer;

    return-void

    .line 331
    :cond_6
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messages_translateText;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messages_translateText;-><init>()V

    .line 332
    iget-object v4, p0, Lorg/telegram/ui/Components/TranslateAlert2;->reqPeer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    if-eqz v4, :cond_7

    .line 333
    iget v6, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_translateText;->flags:I

    or-int/2addr v1, v6

    iput v1, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_translateText;->flags:I

    .line 334
    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_translateText;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 335
    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_translateText;->id:Ljava/util/ArrayList;

    iget v4, p0, Lorg/telegram/ui/Components/TranslateAlert2;->reqMessageId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 337
    :cond_7
    iget v1, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_translateText;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_translateText;->flags:I

    .line 338
    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_translateText;->text:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    :goto_1
    iput-object v5, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_translateText;->to_lang:Ljava/lang/String;

    .line 347
    sget v1, Lcom/exteragram/messenger/ExteraConfig;->translationProvider:I

    if-nez v1, :cond_9

    .line 348
    iget-object v1, p0, Lorg/telegram/ui/Components/TranslateAlert2;->reqText:Ljava/lang/CharSequence;

    if-nez v1, :cond_8

    :goto_2
    move-object v2, v3

    goto :goto_3

    :cond_8
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :goto_3
    iget-object v3, p0, Lorg/telegram/ui/Components/TranslateAlert2;->reqPeer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iget v4, p0, Lorg/telegram/ui/Components/TranslateAlert2;->reqMessageId:I

    iget-object v6, p0, Lorg/telegram/ui/Components/TranslateAlert2;->reqMessageEntities:Ljava/util/ArrayList;

    new-instance v7, Lorg/telegram/ui/Components/TranslateAlert2$5;

    invoke-direct {v7, p0, v0, v5}, Lorg/telegram/ui/Components/TranslateAlert2$5;-><init>(Lorg/telegram/ui/Components/TranslateAlert2;Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;Ljava/lang/String;)V

    invoke-static/range {v2 .. v7}, Lcom/exteragram/messenger/utils/text/TranslatorUtils;->translateWithDefault(Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$InputPeer;ILjava/lang/String;Ljava/util/ArrayList;Lcom/exteragram/messenger/utils/text/TranslatorUtils$TranslateCallback;)V

    return-void

    .line 386
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/Components/TranslateAlert2;->reqText:Ljava/lang/CharSequence;

    if-nez v0, :cond_a

    goto :goto_4

    :cond_a
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_4
    iget-object v0, p0, Lorg/telegram/ui/Components/TranslateAlert2;->reqMessageEntities:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/Components/TranslateAlert2$6;

    invoke-direct {v1, p0, v5}, Lorg/telegram/ui/Components/TranslateAlert2$6;-><init>(Lorg/telegram/ui/Components/TranslateAlert2;Ljava/lang/String;)V

    invoke-static {v3, v5, v0, v1}, Lcom/exteragram/messenger/utils/text/TranslatorUtils;->translate(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/util/ArrayList;Lcom/exteragram/messenger/utils/text/TranslatorUtils$TranslateCallback;)V

    return-void
.end method
