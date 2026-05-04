.class public abstract Lcom/exteragram/messenger/ai/ui/ResponseAlert;
.super Lorg/telegram/ui/ActionBar/BottomSheet;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/exteragram/messenger/ai/ui/ResponseAlert$ContainerView;,
        Lcom/exteragram/messenger/ai/ui/ResponseAlert$LoadingTextView;,
        Lcom/exteragram/messenger/ai/ui/ResponseAlert$PaddedAdapter;,
        Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView;
    }
.end annotation


# instance fields
.field private final adapter:Lcom/exteragram/messenger/ai/ui/ResponseAlert$PaddedAdapter;

.field private final client:Lcom/exteragram/messenger/ai/network/Client;

.field private currentRequestId:Ljava/lang/String;

.field private currentResponse:Ljava/lang/CharSequence;

.field ellipsizeSpanAnimator:Lorg/telegram/ui/Components/EllipsizeSpanAnimator;

.field private fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private final headerView:Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView;

.field private imagePath:Ljava/lang/String;

.field private final listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private final loadingTextView:Lcom/exteragram/messenger/ai/ui/ResponseAlert$LoadingTextView;

.field private final mainButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

.field private onInsertPress:Lorg/telegram/messenger/Utilities$Callback2;

.field private onLinkPress:Lorg/telegram/messenger/Utilities$CallbackReturn;

.field private prompt:Ljava/lang/String;

.field private final sheetTopAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

.field private sheetTopNotAnimate:Z

.field private spannedPrompt:Landroid/text/Spanned;

.field private final textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

.field private final textViewContainer:Landroid/widget/FrameLayout;

.field private useHistory:Z


# direct methods
.method public static synthetic $r8$lambda$0XpLZoxn3Fh74tlcmQPveqJxi7g(Lcom/exteragram/messenger/ai/ui/ResponseAlert;Lcom/exteragram/messenger/ai/network/Client;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->lambda$new$0(Lcom/exteragram/messenger/ai/network/Client;Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetadapter(Lcom/exteragram/messenger/ai/ui/ResponseAlert;)Lcom/exteragram/messenger/ai/ui/ResponseAlert$PaddedAdapter;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->adapter:Lcom/exteragram/messenger/ai/ui/ResponseAlert$PaddedAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetclient(Lcom/exteragram/messenger/ai/ui/ResponseAlert;)Lcom/exteragram/messenger/ai/network/Client;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->client:Lcom/exteragram/messenger/ai/network/Client;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentResponse(Lcom/exteragram/messenger/ai/ui/ResponseAlert;)Ljava/lang/CharSequence;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->currentResponse:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetfragment(Lcom/exteragram/messenger/ai/ui/ResponseAlert;)Lorg/telegram/ui/ActionBar/BaseFragment;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetheaderView(Lcom/exteragram/messenger/ai/ui/ResponseAlert;)Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->headerView:Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetimagePath(Lcom/exteragram/messenger/ai/ui/ResponseAlert;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->imagePath:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlistView(Lcom/exteragram/messenger/ai/ui/ResponseAlert;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetloadingTextView(Lcom/exteragram/messenger/ai/ui/ResponseAlert;)Lcom/exteragram/messenger/ai/ui/ResponseAlert$LoadingTextView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->loadingTextView:Lcom/exteragram/messenger/ai/ui/ResponseAlert$LoadingTextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetonInsertPress(Lcom/exteragram/messenger/ai/ui/ResponseAlert;)Lorg/telegram/messenger/Utilities$Callback2;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->onInsertPress:Lorg/telegram/messenger/Utilities$Callback2;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetonLinkPress(Lcom/exteragram/messenger/ai/ui/ResponseAlert;)Lorg/telegram/messenger/Utilities$CallbackReturn;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->onLinkPress:Lorg/telegram/messenger/Utilities$CallbackReturn;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetprompt(Lcom/exteragram/messenger/ai/ui/ResponseAlert;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->prompt:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettextView(Lcom/exteragram/messenger/ai/ui/ResponseAlert;)Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettextViewContainer(Lcom/exteragram/messenger/ai/ui/ResponseAlert;)Landroid/widget/FrameLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->textViewContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetuseHistory(Lcom/exteragram/messenger/ai/ui/ResponseAlert;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->useHistory:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputcurrentResponse(Lcom/exteragram/messenger/ai/ui/ResponseAlert;Ljava/lang/CharSequence;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->currentResponse:Ljava/lang/CharSequence;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputimagePath(Lcom/exteragram/messenger/ai/ui/ResponseAlert;Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->imagePath:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputsheetTopNotAnimate(Lcom/exteragram/messenger/ai/ui/ResponseAlert;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->sheetTopNotAnimate:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputuseHistory(Lcom/exteragram/messenger/ai/ui/ResponseAlert;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->useHistory:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mformatResponse(Lcom/exteragram/messenger/ai/ui/ResponseAlert;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->formatResponse(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgenerate(Lcom/exteragram/messenger/ai/ui/ResponseAlert;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->generate()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetSheetTop(Lcom/exteragram/messenger/ai/ui/ResponseAlert;)F
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->getSheetTop()F

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetSheetTop(Lcom/exteragram/messenger/ai/ui/ResponseAlert;Z)F
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->getSheetTop(Z)F

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mhasEnoughHeight(Lcom/exteragram/messenger/ai/ui/ResponseAlert;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->hasEnoughHeight()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mupdateMainButton(Lcom/exteragram/messenger/ai/ui/ResponseAlert;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->updateMainButton(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateMainButton(Lcom/exteragram/messenger/ai/ui/ResponseAlert;ZZ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->updateMainButton(ZZ)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/exteragram/messenger/ai/network/Client;Ljava/lang/String;Ljava/lang/String;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 7

    const/4 v0, 0x0

    .line 118
    invoke-direct {p0, p1, v0, p6}, Lorg/telegram/ui/ActionBar/BottomSheet;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 120
    iput-object p2, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->client:Lcom/exteragram/messenger/ai/network/Client;

    .line 121
    iput-object p4, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->imagePath:Ljava/lang/String;

    .line 122
    iput-boolean p5, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->useHistory:Z

    .line 124
    iput v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    .line 126
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->fixNavigationBar()V

    .line 128
    new-instance p4, Lcom/exteragram/messenger/ai/ui/ResponseAlert$ContainerView;

    invoke-direct {p4, p0, p1}, Lcom/exteragram/messenger/ai/ui/ResponseAlert$ContainerView;-><init>(Lcom/exteragram/messenger/ai/ui/ResponseAlert;Landroid/content/Context;)V

    iput-object p4, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    .line 129
    new-instance p5, Lorg/telegram/ui/Components/AnimatedFloat;

    const-wide/16 v1, 0x140

    sget-object v3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-direct {p5, p4, v1, v2, v3}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JLandroid/animation/TimeInterpolator;)V

    iput-object p5, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->sheetTopAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 131
    new-instance p4, Lcom/exteragram/messenger/ai/ui/ResponseAlert$LoadingTextView;

    invoke-direct {p4, p1}, Lcom/exteragram/messenger/ai/ui/ResponseAlert$LoadingTextView;-><init>(Landroid/content/Context;)V

    iput-object p4, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->loadingTextView:Lcom/exteragram/messenger/ai/ui/ResponseAlert$LoadingTextView;

    const/high16 p5, 0x41b00000    # 22.0f

    .line 132
    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/high16 v5, 0x40c00000    # 6.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {p4, v1, v3, v4, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 133
    sget v1, Lorg/telegram/messenger/SharedConfig;->fontSize:I

    int-to-float v1, v1

    const/4 v3, 0x1

    invoke-virtual {p4, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 134
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v4

    invoke-virtual {p4, v4}, Lcom/exteragram/messenger/ai/ui/ResponseAlert$LoadingTextView;->setTextColor(I)V

    .line 135
    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v4

    const v6, 0x3e4ccccd    # 0.2f

    invoke-static {v4, v6}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v4

    invoke-virtual {p4, v4}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 137
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->setPrompt(Ljava/lang/String;)V

    .line 139
    new-instance p3, Lcom/exteragram/messenger/ai/ui/ResponseAlert$1;

    invoke-direct {p3, p0, p1}, Lcom/exteragram/messenger/ai/ui/ResponseAlert$1;-><init>(Lcom/exteragram/messenger/ai/ui/ResponseAlert;Landroid/content/Context;)V

    iput-object p3, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->textViewContainer:Landroid/widget/FrameLayout;

    .line 145
    new-instance p3, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-direct {p3, p1, p6}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object p3, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    .line 146
    invoke-virtual {p3, v3}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->setDisablePaddingsOffsetY(Z)V

    .line 147
    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p5

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {p3, p4, v2, p5, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 148
    sget p4, Lorg/telegram/messenger/SharedConfig;->fontSize:I

    int-to-float p4, p4

    invoke-virtual {p3, v3, p4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 149
    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p4

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 150
    sget p4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageLinkIn:I

    invoke-virtual {p0, p4}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p4

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 151
    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    .line 152
    sget p4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inTextSelectionHighlight:I

    invoke-virtual {p0, p4}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p4

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 153
    sget p4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_TextSelectionCursor:I

    invoke-virtual {p0, p4}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p4

    .line 155
    :try_start_0
    sget p5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt p5, v1, :cond_1

    invoke-static {}, Lorg/telegram/messenger/XiaomiUtilities;->isMIUI()Z

    move-result p5

    if-nez p5, :cond_1

    .line 156
    invoke-virtual {p3}, Landroid/widget/TextView;->getTextSelectHandleLeft()Landroid/graphics/drawable/Drawable;

    move-result-object p5

    if-eqz p5, :cond_0

    .line 158
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p5, p4, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 159
    invoke-virtual {p3, p5}, Landroid/widget/TextView;->setTextSelectHandleLeft(Landroid/graphics/drawable/Drawable;)V

    .line 162
    :cond_0
    invoke-virtual {p3}, Landroid/widget/TextView;->getTextSelectHandleRight()Landroid/graphics/drawable/Drawable;

    move-result-object p5

    if-eqz p5, :cond_1

    .line 164
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p5, p4, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 165
    invoke-virtual {p3, p5}, Landroid/widget/TextView;->setTextSelectHandleRight(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    :catch_0
    :cond_1
    iget-object p3, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->textViewContainer:Landroid/widget/FrameLayout;

    iget-object p4, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/high16 p5, -0x40800000    # -1.0f

    const/4 v1, -0x1

    invoke-static {v1, p5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p5

    invoke-virtual {p3, p4, p5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    new-instance p3, Lcom/exteragram/messenger/ai/ui/ResponseAlert$2;

    invoke-direct {p3, p0, p1, p6}, Lcom/exteragram/messenger/ai/ui/ResponseAlert$2;-><init>(Lcom/exteragram/messenger/ai/ui/ResponseAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object p3, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 192
    invoke-virtual {p3, v3}, Landroid/view/View;->setOverScrollMode(I)V

    .line 193
    sget p4, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    const/high16 p5, 0x42600000    # 56.0f

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p5

    add-int/2addr p4, p5

    const/high16 p5, 0x42a00000    # 80.0f

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p5

    invoke-virtual {p3, v0, p4, v0, p5}, Landroid/view/View;->setPadding(IIII)V

    .line 194
    invoke-virtual {p3, v3}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 195
    new-instance p4, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {p4, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p3, p4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 196
    new-instance p4, Lcom/exteragram/messenger/ai/ui/ResponseAlert$PaddedAdapter;

    iget-object p5, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->loadingTextView:Lcom/exteragram/messenger/ai/ui/ResponseAlert$LoadingTextView;

    invoke-direct {p4, p1, p5}, Lcom/exteragram/messenger/ai/ui/ResponseAlert$PaddedAdapter;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object p4, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->adapter:Lcom/exteragram/messenger/ai/ui/ResponseAlert$PaddedAdapter;

    .line 197
    invoke-virtual {p3, p4}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 198
    new-instance p4, Lcom/exteragram/messenger/ai/ui/ResponseAlert$3;

    invoke-direct {p4, p0}, Lcom/exteragram/messenger/ai/ui/ResponseAlert$3;-><init>(Lcom/exteragram/messenger/ai/ui/ResponseAlert;)V

    invoke-virtual {p3, p4}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 215
    new-instance p4, Lcom/exteragram/messenger/ai/ui/ResponseAlert$4;

    invoke-direct {p4, p0}, Lcom/exteragram/messenger/ai/ui/ResponseAlert$4;-><init>(Lcom/exteragram/messenger/ai/ui/ResponseAlert;)V

    const-wide/16 v4, 0xb4

    .line 226
    invoke-virtual {p4, v4, v5}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setDurations(J)V

    .line 227
    new-instance p5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p4, p5}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 228
    invoke-virtual {p3, p4}, Lorg/telegram/ui/Components/RecyclerListView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 229
    iget-object p4, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    const/4 p5, -0x2

    const/16 v2, 0x50

    invoke-static {v1, p5, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p5

    invoke-virtual {p4, p3, p5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 231
    new-instance p3, Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView;

    invoke-direct {p3, p0, p1}, Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView;-><init>(Lcom/exteragram/messenger/ai/ui/ResponseAlert;Landroid/content/Context;)V

    iput-object p3, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->headerView:Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView;

    .line 232
    iget-object p4, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    const/16 p5, 0x4e

    const/16 v2, 0x37

    invoke-static {v1, p5, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p5

    invoke-virtual {p4, p3, p5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 234
    new-instance p3, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-direct {p3, p1, p6}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object p3, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->mainButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    .line 235
    invoke-virtual {p3}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setRound()Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    .line 236
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p1

    invoke-virtual {p3, p1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setColor(I)V

    .line 237
    sget p1, Lorg/telegram/messenger/R$string;->Close:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1, v0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    .line 238
    invoke-virtual {p3, v3}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    .line 239
    new-instance p1, Lcom/exteragram/messenger/ai/ui/ResponseAlert$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, p2}, Lcom/exteragram/messenger/ai/ui/ResponseAlert$$ExternalSyntheticLambda0;-><init>(Lcom/exteragram/messenger/ai/ui/ResponseAlert;Lcom/exteragram/messenger/ai/network/Client;)V

    invoke-virtual {p3, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    const/high16 v5, 0x41800000    # 16.0f

    const/high16 v6, 0x41800000    # 16.0f

    const/4 v0, -0x1

    const/high16 v1, 0x42400000    # 48.0f

    const/16 v2, 0x57

    const/high16 v3, 0x41800000    # 16.0f

    const/high16 v4, 0x41800000    # 16.0f

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/exteragram/messenger/ai/network/Client;Ljava/lang/String;Ljava/lang/String;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lcom/exteragram/messenger/ai/ui/ResponseAlert-IA;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/exteragram/messenger/ai/ui/ResponseAlert;-><init>(Landroid/content/Context;Lcom/exteragram/messenger/ai/network/Client;Ljava/lang/String;Ljava/lang/String;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method static synthetic access$000(Lcom/exteragram/messenger/ai/ui/ResponseAlert;)Landroid/view/ViewGroup;
    .locals 0

    .line 86
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$100(Lcom/exteragram/messenger/ai/ui/ResponseAlert;)Landroid/view/ViewGroup;
    .locals 0

    .line 86
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/exteragram/messenger/ai/ui/ResponseAlert;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 86
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/exteragram/messenger/ai/ui/ResponseAlert;I)I
    .locals 0

    .line 86
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$1200(Lcom/exteragram/messenger/ai/ui/ResponseAlert;I)I
    .locals 0

    .line 86
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$1300(Lcom/exteragram/messenger/ai/ui/ResponseAlert;I)I
    .locals 0

    .line 86
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$1400(Lcom/exteragram/messenger/ai/ui/ResponseAlert;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 86
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/exteragram/messenger/ai/ui/ResponseAlert;I)I
    .locals 0

    .line 86
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$1600(Lcom/exteragram/messenger/ai/ui/ResponseAlert;I)I
    .locals 0

    .line 86
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$1700(Lcom/exteragram/messenger/ai/ui/ResponseAlert;I)I
    .locals 0

    .line 86
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$1800(Lcom/exteragram/messenger/ai/ui/ResponseAlert;I)I
    .locals 0

    .line 86
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$1900(Lcom/exteragram/messenger/ai/ui/ResponseAlert;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 86
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$200(Lcom/exteragram/messenger/ai/ui/ResponseAlert;)Landroid/view/ViewGroup;
    .locals 0

    .line 86
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/exteragram/messenger/ai/ui/ResponseAlert;)Landroid/view/ViewGroup;
    .locals 0

    .line 86
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/exteragram/messenger/ai/ui/ResponseAlert;I)I
    .locals 0

    .line 86
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$2200(Lcom/exteragram/messenger/ai/ui/ResponseAlert;I)I
    .locals 0

    .line 86
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$2300(Lcom/exteragram/messenger/ai/ui/ResponseAlert;I)I
    .locals 0

    .line 86
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$2400(Lcom/exteragram/messenger/ai/ui/ResponseAlert;I)I
    .locals 0

    .line 86
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$2500(Lcom/exteragram/messenger/ai/ui/ResponseAlert;)Landroid/view/ViewGroup;
    .locals 0

    .line 86
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/exteragram/messenger/ai/ui/ResponseAlert;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 86
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/exteragram/messenger/ai/ui/ResponseAlert;I)I
    .locals 0

    .line 86
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$2800(Lcom/exteragram/messenger/ai/ui/ResponseAlert;I)I
    .locals 0

    .line 86
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$2900(Lcom/exteragram/messenger/ai/ui/ResponseAlert;I)I
    .locals 0

    .line 86
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/exteragram/messenger/ai/ui/ResponseAlert;)Landroid/view/ViewGroup;
    .locals 0

    .line 86
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$400(Lcom/exteragram/messenger/ai/ui/ResponseAlert;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 86
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$500(Lcom/exteragram/messenger/ai/ui/ResponseAlert;I)I
    .locals 0

    .line 86
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/exteragram/messenger/ai/ui/ResponseAlert;I)I
    .locals 0

    .line 86
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/exteragram/messenger/ai/ui/ResponseAlert;I)I
    .locals 0

    .line 86
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/exteragram/messenger/ai/ui/ResponseAlert;I)I
    .locals 0

    .line 86
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/exteragram/messenger/ai/ui/ResponseAlert;I)I
    .locals 0

    .line 86
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method private formatPrompt()V
    .locals 6

    .line 290
    new-instance v0, Lorg/telegram/ui/Components/ColoredImageSpan;

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_mini_arrow_mediathin:I

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(I)V

    .line 291
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_player_actionBarSubtitle:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ColoredImageSpan;->setColorKey(I)V

    const/high16 v2, 0x3f800000    # 1.0f

    .line 292
    invoke-virtual {v0, v2, v2}, Lorg/telegram/ui/Components/ColoredImageSpan;->setScale(FF)V

    const/high16 v2, 0x3fc00000    # 1.5f

    .line 293
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/ColoredImageSpan;->setTranslateY(F)V

    const v2, 0x3f733333    # 0.95f

    .line 294
    iput v2, v0, Lorg/telegram/ui/Components/ColoredImageSpan;->spaceScaleX:F

    .line 296
    new-instance v2, Landroid/text/SpannableStringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u2192 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->prompt:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v5, 0x21

    .line 297
    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 298
    new-instance v0, Lorg/telegram/ui/Cells/DialogCell$FixedWidthSpan;

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-direct {v0, v3}, Lorg/telegram/ui/Cells/DialogCell$FixedWidthSpan;-><init>(I)V

    const/4 v3, 0x2

    invoke-virtual {v2, v0, v4, v3, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 299
    new-instance v0, Landroid/text/style/RelativeSizeSpan;

    const v4, 0x3f4ccccd    # 0.8f

    invoke-direct {v0, v4}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 300
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    invoke-virtual {v2, v0, v3, v1, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 301
    iput-object v2, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->spannedPrompt:Landroid/text/Spanned;

    return-void
.end method

.method private formatResponse(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    .line 305
    sget-boolean v0, Lcom/exteragram/messenger/ai/AiConfig;->showResponseOnly:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->spannedPrompt:Landroid/text/Spanned;

    if-nez v0, :cond_0

    goto :goto_0

    .line 308
    :cond_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->spannedPrompt:Landroid/text/Spanned;

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->replaceLinks(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    return-object p1

    .line 306
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->replaceLinks(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method private generate()V
    .locals 6

    .line 313
    iget-object v0, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->client:Lcom/exteragram/messenger/ai/network/Client;

    iget-object v1, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->prompt:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->useHistory:Z

    sget-boolean v3, Lcom/exteragram/messenger/ai/AiConfig;->responseStreaming:Z

    iget-object v4, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->imagePath:Ljava/lang/String;

    new-instance v5, Lcom/exteragram/messenger/ai/ui/ResponseAlert$6;

    invoke-direct {v5, p0}, Lcom/exteragram/messenger/ai/ui/ResponseAlert$6;-><init>(Lcom/exteragram/messenger/ai/ui/ResponseAlert;)V

    invoke-virtual/range {v0 .. v5}, Lcom/exteragram/messenger/ai/network/Client;->getResponse(Ljava/lang/String;ZZLjava/lang/String;Lcom/exteragram/messenger/ai/network/GenerationCallback;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->currentRequestId:Ljava/lang/String;

    return-void
.end method

.method private getSheetTop()F
    .locals 1

    const/4 v0, 0x1

    .line 426
    invoke-direct {p0, v0}, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->getSheetTop(Z)F

    move-result v0

    return v0
.end method

.method private getSheetTop(Z)F
    .locals 4

    .line 430
    iget-object v0, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    .line 431
    iget-object v1, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    .line 432
    iget-object v1, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

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

    .line 434
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    if-eqz p1, :cond_2

    .line 435
    iget-object p1, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->sheetTopAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    if-eqz p1, :cond_2

    .line 436
    iget-object v1, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-boolean v1, v1, Lorg/telegram/ui/Components/RecyclerListView;->scrollingByUser:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->sheetTopNotAnimate:Z

    if-nez v1, :cond_1

    .line 437
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result p1

    return p1

    .line 439
    :cond_1
    invoke-virtual {p1, v0, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    :cond_2
    return v0
.end method

.method private hasEnoughHeight()Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v1

    .line 386
    :goto_0
    iget-object v3, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_1

    .line 387
    iget-object v3, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 388
    iget-object v5, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v5, v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v5

    if-ne v5, v4, :cond_0

    .line 389
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v0, v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 391
    :cond_1
    iget-object v2, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

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

.method private synthetic lambda$new$0(Lcom/exteragram/messenger/ai/network/Client;Landroid/view/View;)V
    .locals 0

    .line 240
    iget-object p2, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->currentRequestId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/exteragram/messenger/ai/network/Client;->stopRequest(Ljava/lang/String;)V

    .line 241
    invoke-virtual {p0}, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->dismiss()V

    return-void
.end method

.method private setOnInsertPress(Lorg/telegram/messenger/Utilities$Callback2;)V
    .locals 0

    .line 403
    iput-object p1, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->onInsertPress:Lorg/telegram/messenger/Utilities$Callback2;

    return-void
.end method

.method public static showAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/exteragram/messenger/ai/network/Client;Ljava/lang/String;Ljava/lang/String;ZZLorg/telegram/messenger/Utilities$CallbackReturn;Ljava/lang/Runnable;Lorg/telegram/messenger/Utilities$Callback2;)Lcom/exteragram/messenger/ai/ui/ResponseAlert;
    .locals 8

    .line 251
    new-instance v0, Lcom/exteragram/messenger/ai/ui/ResponseAlert$5;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v6

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/exteragram/messenger/ai/ui/ResponseAlert$5;-><init>(Landroid/content/Context;Lcom/exteragram/messenger/ai/network/Client;Ljava/lang/String;Ljava/lang/String;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/Runnable;)V

    .line 260
    invoke-virtual {v0, p5}, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->setNoforwards(Z)V

    .line 261
    invoke-virtual {v0, p0}, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->setFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 262
    invoke-virtual {v0, p6}, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->setOnLinkPress(Lorg/telegram/messenger/Utilities$CallbackReturn;)V

    move-object/from16 p1, p8

    .line 263
    invoke-direct {v0, p1}, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->setOnInsertPress(Lorg/telegram/messenger/Utilities$Callback2;)V

    .line 264
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 265
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 267
    :cond_0
    invoke-direct {v0}, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->generate()V

    return-object v0
.end method

.method public static showAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/exteragram/messenger/ai/network/Client;Ljava/lang/String;ZZLorg/telegram/messenger/Utilities$CallbackReturn;Ljava/lang/Runnable;Lorg/telegram/messenger/Utilities$Callback2;)Lcom/exteragram/messenger/ai/ui/ResponseAlert;
    .locals 9

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    .line 247
    invoke-static/range {v0 .. v8}, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->showAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/exteragram/messenger/ai/network/Client;Ljava/lang/String;Ljava/lang/String;ZZLorg/telegram/messenger/Utilities$CallbackReturn;Ljava/lang/Runnable;Lorg/telegram/messenger/Utilities$Callback2;)Lcom/exteragram/messenger/ai/ui/ResponseAlert;

    move-result-object p0

    return-object p0
.end method

.method private updateMainButton(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 278
    invoke-direct {p0, p1, v0}, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->updateMainButton(ZZ)V

    return-void
.end method

.method private updateMainButton(ZZ)V
    .locals 5

    .line 282
    iget-object v0, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->mainButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    .line 283
    iget-object v0, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->headerView:Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView;

    iget-object v0, v0, Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    const/high16 v4, 0x3f000000    # 0.5f

    invoke-static {v0, v3, v4, v2}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    .line 284
    iget-object v0, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->onInsertPress:Lorg/telegram/messenger/Utilities$Callback2;

    if-eqz v0, :cond_2

    .line 285
    iget-object v0, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->headerView:Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView;

    iget-object v0, v0, Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView;->insertButton:Landroid/widget/ImageView;

    if-nez p1, :cond_1

    if-nez p2, :cond_1

    move v1, v2

    :cond_1
    invoke-static {v0, v1, v4, v2}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    :cond_2
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

    .line 459
    sget p2, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    if-ne p1, p2, :cond_0

    .line 460
    iget-object p1, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->loadingTextView:Lcom/exteragram/messenger/ai/ui/ResponseAlert$LoadingTextView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 461
    iget-object p1, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public dismiss()V
    .locals 2

    .line 453
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    .line 454
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public replaceLinks(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 7

    .line 343
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 344
    sget-object v1, Lorg/telegram/messenger/LinkifyPort;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    .line 346
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 347
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v4

    invoke-virtual {v0, p1, v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    const/4 v3, 0x1

    .line 348
    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    .line 349
    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 350
    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    if-eqz v3, :cond_0

    .line 353
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v5, v3

    goto :goto_1

    :cond_0
    move v5, v2

    .line 355
    :goto_1
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    .line 356
    new-instance v6, Lcom/exteragram/messenger/ai/ui/ResponseAlert$7;

    invoke-direct {v6, p0, v4}, Lcom/exteragram/messenger/ai/ui/ResponseAlert$7;-><init>(Lcom/exteragram/messenger/ai/ui/ResponseAlert;Ljava/lang/String;)V

    const/16 v4, 0x21

    invoke-virtual {v0, v6, v5, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 378
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    goto :goto_0

    .line 380
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {v0, p1, v3, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    .line 381
    iget-object p1, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v2, v1}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z[I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public setFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 0

    .line 395
    iput-object p1, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    return-void
.end method

.method public setNoforwards(Z)V
    .locals 2

    .line 407
    iget-object v0, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    if-eqz v0, :cond_0

    xor-int/lit8 v1, p1, 0x1

    .line 408
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    .line 410
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_2

    const/16 v0, 0x2000

    if-eqz p1, :cond_1

    .line 413
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    return-void

    .line 415
    :cond_1
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    :cond_2
    return-void
.end method

.method public setOnLinkPress(Lorg/telegram/messenger/Utilities$CallbackReturn;)V
    .locals 0

    .line 399
    iput-object p1, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->onLinkPress:Lorg/telegram/messenger/Utilities$CallbackReturn;

    return-void
.end method

.method public setPrompt(Ljava/lang/String;)V
    .locals 3

    .line 272
    iput-object p1, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->prompt:Ljava/lang/String;

    .line 273
    iget-object v0, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->loadingTextView:Lcom/exteragram/messenger/ai/ui/ResponseAlert$LoadingTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p1, v1, v2}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    invoke-direct {p0}, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->formatPrompt()V

    return-void
.end method

.method public show()V
    .locals 2

    .line 447
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    .line 448
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method
