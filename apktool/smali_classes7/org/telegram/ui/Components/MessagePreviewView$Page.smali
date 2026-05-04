.class Lorg/telegram/ui/Components/MessagePreviewView$Page;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/MessagePreviewView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Page"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/MessagePreviewView$Page$Adapter;
    }
.end annotation


# instance fields
.field actionBar:Lorg/telegram/ui/Components/MessagePreviewView$ActionBar;

.field adapter:Lorg/telegram/ui/Components/MessagePreviewView$Page$Adapter;

.field private buttonsHeight:I

.field changePositionBtn:Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;

.field changeSizeBtn:Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;

.field changeSizeBtnContainer:Landroid/widget/FrameLayout;

.field chatLayoutManager:Landroidx/recyclerview/widget/GridLayoutManagerFixed;

.field chatListView:Lorg/telegram/ui/Components/RecyclerListView;

.field chatPreviewContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

.field chatTopOffset:I

.field clearQuoteButton:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

.field public currentTab:I

.field currentTopOffset:I

.field currentYOffset:F

.field deleteReplyButton:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

.field private firstAttach:Z

.field private firstLayout:Z

.field itemAnimator:Landroidx/recyclerview/widget/ChatListItemAnimator;

.field lastSize:I

.field menu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

.field menuBack:I

.field messages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

.field quoteAnotherChatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

.field quoteButton:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

.field private quoteSwitcher:Landroid/animation/AnimatorSet;

.field rect:Landroid/graphics/Rect;

.field replyAnotherChatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

.field scrollToOffset:I

.field sharedResources:Lorg/telegram/messenger/ChatMessageSharedResources;

.field textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;

.field textSelectionOverlay:Landroid/view/View;

.field final synthetic this$0:Lorg/telegram/ui/Components/MessagePreviewView;

.field toQuote:Z

.field updateAfterAnimations:Z

.field private updateScroll:Z

.field videoChangeSizeBtn:Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;

.field yOffset:F


# direct methods
.method public static synthetic $r8$lambda$5XL6oa3j_10-cQUxrwJrjBnOBlU(Lorg/telegram/ui/Components/MessagePreviewView$Page;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->lambda$new$11(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8zRfXYdFmQUWfHd8YeH2KQl-1WA(Lorg/telegram/ui/Components/MessagePreviewView$Page;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->lambda$new$13(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Dfo3ePPTpsMfw-XmSyV39WuHJW4(Lorg/telegram/ui/Components/MessagePreviewView$Page;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->lambda$new$6(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FH5FLmMybP6raRI_ky1TNZH2Njs(Lorg/telegram/ui/Components/MessagePreviewView$Page;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->lambda$new$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FfH1fdqLKn-cRegA96DUQ8QmXRk(Lorg/telegram/ui/Components/MessagePreviewView$Page;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->lambda$new$10(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HsJyMRgBpZZoLc6q7UocJNNVeNw(Lorg/telegram/ui/Components/MessagePreviewView$Page;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->lambda$new$7(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KPp38F-9UkzFeeY-VtMb5T07a4g(Lorg/telegram/ui/Components/MessagePreviewView$Page;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->lambda$new$17(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ltu_S70m1lJprWdm0gRkRR8mNDM(Lorg/telegram/ui/Components/MessagePreviewView$Page;Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->lambda$new$14(Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QMIl1XabvuCwxTjAO8ZLYm4kEBU(Lorg/telegram/ui/Components/MessagePreviewView$Page;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->lambda$new$8(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RRL1djlyeVXM15AaNFFBA1uTM8Y(Lorg/telegram/ui/Components/MessagePreviewView$Page;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->lambda$new$12(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$S_p8dGTsEOeGODzxSKJohWiEGmE(Lorg/telegram/ui/Components/MessagePreviewView$Page;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->lambda$updateMessages$21(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WLEOXErueVYv44r_NqQa4RPeKwU(Lorg/telegram/ui/Components/MessagePreviewView$Page;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->lambda$checkScroll$20()V

    return-void
.end method

.method public static synthetic $r8$lambda$ZDVrabV2xRoWkxDWcGzm7lzgA4c(Lorg/telegram/ui/Components/MessagePreviewView$Page;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->lambda$new$18(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$a09D5zwBUKwrL5Y1f1KaIAXTq5w(Lorg/telegram/ui/Components/MessagePreviewView$Page;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->lambda$new$16(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$g00CrFy6R6gwhc8EnEnmmhBBSVU(Lorg/telegram/ui/Components/MessagePreviewView$Page;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->lambda$onAttachedToWindow$22(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iBqXjPxEwhYMYDaBPH6jnrQRyDY(Lorg/telegram/ui/Components/MessagePreviewView$Page;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->lambda$new$0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$j5N8kNOKqMPx_sU3C0e6_Z0pv9M(Lorg/telegram/ui/Components/MessagePreviewView$Page;Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->lambda$new$15(Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$q64O-yqcDOD49irK6lnCchRR-XM(Lorg/telegram/ui/Components/MessagePreviewView$Page;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->lambda$new$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$rxjAr5QB8I-DEy3iNuHiaSSF2GE(Lorg/telegram/ui/Components/MessagePreviewView$Page;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->lambda$new$19(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uOzZiIfJg360gHdtv8QMmuansEk(Lorg/telegram/ui/Components/MessagePreviewView$Page;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->lambda$new$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vFzkG4fqgah9IE_tZ5vXKT8JFJ0(Lorg/telegram/ui/Components/MessagePreviewView$Page;IFLandroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->lambda$updatePositions$23(IFLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wKUndCKnPNFriKb61yKYI5QxKUA(Lorg/telegram/ui/Components/MessagePreviewView$Page;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->lambda$new$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ylsICbi4slORlmXk3rx2lUBPeNs(Lorg/telegram/ui/Components/MessagePreviewView$Page;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->lambda$new$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zUH0Yxba5dhz_5hx2U16DJ0Ucio(Lorg/telegram/ui/Components/MessagePreviewView$Page;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->lambda$new$9(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetfirstAttach(Lorg/telegram/ui/Components/MessagePreviewView$Page;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->firstAttach:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetfirstLayout(Lorg/telegram/ui/Components/MessagePreviewView$Page;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->firstLayout:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputfirstAttach(Lorg/telegram/ui/Components/MessagePreviewView$Page;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->firstAttach:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputfirstLayout(Lorg/telegram/ui/Components/MessagePreviewView$Page;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->firstLayout:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputquoteSwitcher(Lorg/telegram/ui/Components/MessagePreviewView$Page;Landroid/animation/AnimatorSet;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->quoteSwitcher:Landroid/animation/AnimatorSet;

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckScroll(Lorg/telegram/ui/Components/MessagePreviewView$Page;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->checkScroll()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetValidGroupedMessage(Lorg/telegram/ui/Components/MessagePreviewView$Page;Lorg/telegram/messenger/MessageObject;)Lorg/telegram/messenger/MessageObject$GroupedMessages;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->getValidGroupedMessage(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetOffset(Lorg/telegram/ui/Components/MessagePreviewView$Page;FI)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->setOffset(FI)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowQuoteLengthError(Lorg/telegram/ui/Components/MessagePreviewView$Page;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->showQuoteLengthError()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mswitchToQuote(Lorg/telegram/ui/Components/MessagePreviewView$Page;ZZ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->switchToQuote(ZZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateLinkHighlight(Lorg/telegram/ui/Components/MessagePreviewView$Page;Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->updateLinkHighlight(Lorg/telegram/ui/Cells/ChatMessageCell;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateMessages(Lorg/telegram/ui/Components/MessagePreviewView$Page;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->updateMessages()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdatePositions(Lorg/telegram/ui/Components/MessagePreviewView$Page;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->updatePositions()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateSubtitle(Lorg/telegram/ui/Components/MessagePreviewView$Page;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->updateSubtitle(Z)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/MessagePreviewView;Landroid/content/Context;I)V
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v7, p1

    move-object/from16 v6, p2

    move/from16 v8, p3

    .line 270
    iput-object v7, v1, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    .line 271
    invoke-direct {v1, v6}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v9, 0x1

    .line 827
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 145
    iput-boolean v9, v1, Lorg/telegram/ui/Components/MessagePreviewView$Page;->firstLayout:Z

    const/4 v11, -0x1

    .line 147
    iput v11, v1, Lorg/telegram/ui/Components/MessagePreviewView$Page;->scrollToOffset:I

    .line 263
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, v1, Lorg/telegram/ui/Components/MessagePreviewView$Page;->rect:Landroid/graphics/Rect;

    const/4 v12, 0x0

    .line 1192
    iput-boolean v12, v1, Lorg/telegram/ui/Components/MessagePreviewView$Page;->updateScroll:Z

    .line 1401
    iput-boolean v9, v1, Lorg/telegram/ui/Components/MessagePreviewView$Page;->firstAttach:Z

    .line 272
    new-instance v0, Lorg/telegram/messenger/ChatMessageSharedResources;

    invoke-direct {v0, v6}, Lorg/telegram/messenger/ChatMessageSharedResources;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/Components/MessagePreviewView$Page;->sharedResources:Lorg/telegram/messenger/ChatMessageSharedResources;

    .line 274
    iput v8, v1, Lorg/telegram/ui/Components/MessagePreviewView$Page;->currentTab:I

    .line 276
    new-instance v0, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda0;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 283
    new-instance v0, Lorg/telegram/ui/Components/MessagePreviewView$Page$2;

    invoke-direct {v0, v1, v6, v7}, Lorg/telegram/ui/Components/MessagePreviewView$Page$2;-><init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;Landroid/content/Context;Lorg/telegram/ui/Components/MessagePreviewView;)V

    iput-object v0, v1, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatPreviewContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    .line 298
    invoke-static {v7}, Lorg/telegram/ui/Components/MessagePreviewView;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/Components/MessagePreviewView;)Lorg/telegram/ui/Components/MessagePreviewView$ResourcesDelegate;

    move-result-object v2

    invoke-interface {v2}, Lorg/telegram/ui/Components/MessagePreviewView$ResourcesDelegate;->getWallpaperDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v7}, Lorg/telegram/ui/Components/MessagePreviewView;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/Components/MessagePreviewView;)Lorg/telegram/ui/Components/MessagePreviewView$ResourcesDelegate;

    move-result-object v3

    invoke-interface {v3}, Lorg/telegram/ui/Components/MessagePreviewView$ResourcesDelegate;->isWallpaperMotion()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->setBackgroundImage(Landroid/graphics/drawable/Drawable;Z)V

    .line 299
    iget-object v0, v1, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatPreviewContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v0, v12}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->setOccupyStatusBar(Z)V

    .line 302
    iget-object v0, v1, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatPreviewContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    new-instance v2, Lorg/telegram/ui/Components/MessagePreviewView$Page$3;

    invoke-direct {v2, v1, v7}, Lorg/telegram/ui/Components/MessagePreviewView$Page$3;-><init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;Lorg/telegram/ui/Components/MessagePreviewView;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 309
    iget-object v0, v1, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatPreviewContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v0, v9}, Landroid/view/View;->setClipToOutline(Z)V

    .line 310
    iget-object v0, v1, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatPreviewContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    const/high16 v13, 0x40800000    # 4.0f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setElevation(F)V

    .line 313
    new-instance v0, Lorg/telegram/ui/Components/MessagePreviewView$ActionBar;

    invoke-static {v7}, Lorg/telegram/ui/Components/MessagePreviewView;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/Components/MessagePreviewView;)Lorg/telegram/ui/Components/MessagePreviewView$ResourcesDelegate;

    move-result-object v2

    invoke-direct {v0, v7, v6, v2}, Lorg/telegram/ui/Components/MessagePreviewView$ActionBar;-><init>(Lorg/telegram/ui/Components/MessagePreviewView;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v1, Lorg/telegram/ui/Components/MessagePreviewView$Page;->actionBar:Lorg/telegram/ui/Components/MessagePreviewView$ActionBar;

    .line 314
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    invoke-static {v7, v2}, Lorg/telegram/ui/Components/MessagePreviewView;->-$$Nest$mgetThemedColor(Lorg/telegram/ui/Components/MessagePreviewView;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 316
    new-instance v0, Lorg/telegram/ui/Components/MessagePreviewView$Page$4;

    invoke-direct {v0, v1, v7}, Lorg/telegram/ui/Components/MessagePreviewView$Page$4;-><init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;Lorg/telegram/ui/Components/MessagePreviewView;)V

    iput-object v0, v1, Lorg/telegram/ui/Components/MessagePreviewView$Page;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;

    .line 365
    new-instance v2, Lorg/telegram/ui/Components/MessagePreviewView$Page$5;

    invoke-direct {v2, v1, v7}, Lorg/telegram/ui/Components/MessagePreviewView$Page$5;-><init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;Lorg/telegram/ui/Components/MessagePreviewView;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/TextSelectionHelper;->setCallback(Lorg/telegram/ui/Cells/TextSelectionHelper$Callback;)V

    .line 393
    new-instance v14, Lorg/telegram/ui/Components/MessagePreviewView$Page$6;

    invoke-static {v7}, Lorg/telegram/ui/Components/MessagePreviewView;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/Components/MessagePreviewView;)Lorg/telegram/ui/Components/MessagePreviewView$ResourcesDelegate;

    move-result-object v0

    invoke-direct {v14, v1, v6, v0, v7}, Lorg/telegram/ui/Components/MessagePreviewView$Page$6;-><init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Components/MessagePreviewView;)V

    iput-object v14, v1, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 612
    new-instance v0, Lorg/telegram/ui/Components/MessagePreviewView$Page$7;

    iget-object v3, v1, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v7}, Lorg/telegram/ui/Components/MessagePreviewView;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/Components/MessagePreviewView;)Lorg/telegram/ui/Components/MessagePreviewView$ResourcesDelegate;

    move-result-object v4

    const/4 v2, 0x0

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/MessagePreviewView$Page$7;-><init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/Components/RecyclerListView;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Components/MessagePreviewView;)V

    iput-object v0, v1, Lorg/telegram/ui/Components/MessagePreviewView$Page;->itemAnimator:Landroidx/recyclerview/widget/ChatListItemAnimator;

    invoke-virtual {v14, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 667
    iget-object v0, v1, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/Components/MessagePreviewView$Page$8;

    invoke-direct {v2, v1, v7}, Lorg/telegram/ui/Components/MessagePreviewView$Page$8;-><init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;Lorg/telegram/ui/Components/MessagePreviewView;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 682
    iget-object v0, v1, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/Components/MessagePreviewView$Page$9;

    invoke-direct {v2, v1, v7}, Lorg/telegram/ui/Components/MessagePreviewView$Page$9;-><init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;Lorg/telegram/ui/Components/MessagePreviewView;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 704
    iget-object v0, v1, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/Components/MessagePreviewView$Page$Adapter;

    const/4 v14, 0x0

    invoke-direct {v2, v1, v14}, Lorg/telegram/ui/Components/MessagePreviewView$Page$Adapter;-><init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;Lorg/telegram/ui/Components/MessagePreviewView-IA;)V

    iput-object v2, v1, Lorg/telegram/ui/Components/MessagePreviewView$Page;->adapter:Lorg/telegram/ui/Components/MessagePreviewView$Page$Adapter;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 705
    iget-object v0, v1, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v0, v12, v2, v12, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 706
    new-instance v0, Lorg/telegram/ui/Components/MessagePreviewView$Page$10;

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/16 v3, 0x3e8

    move-object v2, v6

    move-object v6, v7

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/MessagePreviewView$Page$10;-><init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;Landroid/content/Context;IIZLorg/telegram/ui/Components/MessagePreviewView;)V

    move-object v6, v1

    move-object v1, v2

    iput-object v0, v6, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatLayoutManager:Landroidx/recyclerview/widget/GridLayoutManagerFixed;

    .line 750
    new-instance v2, Lorg/telegram/ui/Components/MessagePreviewView$Page$11;

    invoke-direct {v2, v6, v7}, Lorg/telegram/ui/Components/MessagePreviewView$Page$11;-><init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;Lorg/telegram/ui/Components/MessagePreviewView;)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 764
    iget-object v0, v6, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v12}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 765
    iget-object v0, v6, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v2, v6, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatLayoutManager:Landroidx/recyclerview/widget/GridLayoutManagerFixed;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 766
    iget-object v0, v6, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/Components/MessagePreviewView$Page$12;

    invoke-direct {v2, v6, v7}, Lorg/telegram/ui/Components/MessagePreviewView$Page$12;-><init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;Lorg/telegram/ui/Components/MessagePreviewView;)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 800
    iget-object v0, v6, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatPreviewContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v2, v6, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 801
    iget-object v0, v6, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatPreviewContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    const/high16 v20, 0x41000000    # 8.0f

    const/16 v21, 0x0

    const/4 v15, -0x1

    const/high16 v16, 0x43c80000    # 400.0f

    const/16 v17, 0x0

    const/high16 v18, 0x41000000    # 8.0f

    const/16 v19, 0x0

    invoke-static/range {v15 .. v21}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v6, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 802
    iget-object v0, v6, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatPreviewContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v2, v6, Lorg/telegram/ui/Components/MessagePreviewView$Page;->actionBar:Lorg/telegram/ui/Components/MessagePreviewView$ActionBar;

    const/high16 v3, -0x40000000    # -2.0f

    invoke-static {v11, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 804
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v4, Lorg/telegram/messenger/R$drawable;->popup_fixed_alert2:I

    invoke-static {v7}, Lorg/telegram/ui/Components/MessagePreviewView;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/Components/MessagePreviewView;)Lorg/telegram/ui/Components/MessagePreviewView$ResourcesDelegate;

    move-result-object v5

    invoke-direct {v0, v2, v4, v5, v9}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V

    iput-object v0, v6, Lorg/telegram/ui/Components/MessagePreviewView$Page;->menu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    .line 805
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getSwipeBack()Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda11;

    invoke-direct {v2, v6}, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/PopupSwipeBackLayout;->setOnForegroundOpenFinished(Ljava/lang/Runnable;)V

    .line 808
    iget-object v0, v6, Lorg/telegram/ui/Components/MessagePreviewView$Page;->menu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/4 v2, -0x2

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v6, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v0, 0x8

    const/16 v2, 0x30

    if-nez v8, :cond_7

    .line 810
    iget-object v3, v7, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-object v4, v3, Lorg/telegram/messenger/MessagePreviewParams;->replyMessage:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    if-eqz v4, :cond_7

    .line 811
    iget-boolean v4, v4, Lorg/telegram/messenger/MessagePreviewParams$Messages;->hasText:Z

    const/high16 v8, 0x42400000    # 48.0f

    if-eqz v4, :cond_2

    iget-boolean v3, v3, Lorg/telegram/messenger/MessagePreviewParams;->isSecret:Z

    if-nez v3, :cond_2

    .line 812
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 813
    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 815
    iget-boolean v4, v7, Lorg/telegram/ui/Components/MessagePreviewView;->showOutdatedQuote:Z

    if-nez v4, :cond_0

    move v4, v0

    .line 816
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move v5, v4

    const/4 v4, 0x0

    move/from16 v16, v5

    invoke-static {v7}, Lorg/telegram/ui/Components/MessagePreviewView;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/Components/MessagePreviewView;)Lorg/telegram/ui/Components/MessagePreviewView$ResourcesDelegate;

    move-result-object v5

    move/from16 v17, v2

    const/4 v2, 0x0

    move-object/from16 v18, v3

    const/4 v3, 0x1

    move/from16 v14, v16

    move/from16 v15, v17

    move-object/from16 v13, v18

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 817
    sget v2, Lorg/telegram/messenger/R$string;->Back:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_arrow_back:I

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 818
    new-instance v2, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda12;

    invoke-direct {v2, v6}, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 824
    invoke-static {v11, v15}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v13, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 826
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;

    invoke-static {v7}, Lorg/telegram/ui/Components/MessagePreviewView;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/Components/MessagePreviewView;)Lorg/telegram/ui/Components/MessagePreviewView$ResourcesDelegate;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 827
    sget v2, Lorg/telegram/messenger/R$id;->fit_width_tag:I

    invoke-virtual {v0, v2, v10}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 828
    invoke-static {v11, v14}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v13, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 830
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    const/4 v4, 0x1

    invoke-static {v7}, Lorg/telegram/ui/Components/MessagePreviewView;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/Components/MessagePreviewView;)Lorg/telegram/ui/Components/MessagePreviewView$ResourcesDelegate;

    move-result-object v5

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 831
    sget v2, Lorg/telegram/messenger/R$string;->QuoteSelectedPart:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->menu_quote_specific:I

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 832
    new-instance v2, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda13;

    invoke-direct {v2, v6}, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 851
    invoke-static {v11, v15}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v13, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    move v14, v0

    move v15, v2

    move-object v13, v3

    .line 854
    :goto_0
    iget-object v0, v6, Lorg/telegram/ui/Components/MessagePreviewView$Page;->menu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v0, v13}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addViewToSwipeBack(Landroid/view/View;)I

    move-result v0

    iput v0, v6, Lorg/telegram/ui/Components/MessagePreviewView$Page;->menuBack:I

    .line 855
    iget-object v0, v6, Lorg/telegram/ui/Components/MessagePreviewView$Page;->menu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getSwipeBack()Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    move-result-object v0

    invoke-virtual {v0, v9}, Lorg/telegram/ui/Components/PopupSwipeBackLayout;->setStickToRight(Z)V

    .line 857
    new-instance v13, Landroid/widget/FrameLayout;

    invoke-direct {v13, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 858
    new-instance v0, Lorg/telegram/ui/Components/MessagePreviewView$Page$13;

    const/4 v5, 0x0

    invoke-static {v7}, Lorg/telegram/ui/Components/MessagePreviewView;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/Components/MessagePreviewView;)Lorg/telegram/ui/Components/MessagePreviewView$ResourcesDelegate;

    move-result-object v6

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object v2, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Components/MessagePreviewView$Page$13;-><init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;Landroid/content/Context;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Components/MessagePreviewView;)V

    iput-object v0, v1, Lorg/telegram/ui/Components/MessagePreviewView$Page;->quoteButton:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 872
    iget-boolean v2, v7, Lorg/telegram/ui/Components/MessagePreviewView;->showOutdatedQuote:Z

    if-eqz v2, :cond_1

    sget v2, Lorg/telegram/messenger/R$string;->QuoteSelectedPart:I

    goto :goto_1

    :cond_1
    sget v2, Lorg/telegram/messenger/R$string;->SelectSpecificQuote:I

    :goto_1
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->menu_select_quote:I

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 873
    new-instance v0, Lorg/telegram/ui/Components/MessagePreviewView$Page$14;

    const/4 v5, 0x0

    invoke-static {v7}, Lorg/telegram/ui/Components/MessagePreviewView;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/Components/MessagePreviewView;)Lorg/telegram/ui/Components/MessagePreviewView$ResourcesDelegate;

    move-result-object v6

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object/from16 v2, p2

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Components/MessagePreviewView$Page$14;-><init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;Landroid/content/Context;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Components/MessagePreviewView;)V

    move-object v6, v7

    move-object v7, v1

    move-object v1, v2

    iput-object v0, v7, Lorg/telegram/ui/Components/MessagePreviewView$Page;->clearQuoteButton:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 887
    sget v2, Lorg/telegram/messenger/R$string;->ClearQuote:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->menu_quote_delete:I

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 888
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_dialogButtonSelector:I

    invoke-static {v6, v0}, Lorg/telegram/ui/Components/MessagePreviewView;->-$$Nest$mgetThemedColor(Lorg/telegram/ui/Components/MessagePreviewView;I)I

    move-result v0

    const/4 v2, 0x6

    invoke-static {v0, v2, v12}, Lorg/telegram/ui/ActionBar/Theme;->createRadSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 889
    new-instance v0, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda14;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;)V

    invoke-virtual {v13, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 930
    iget-object v0, v7, Lorg/telegram/ui/Components/MessagePreviewView$Page;->quoteButton:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-static {v11, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v13, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 931
    iget-object v0, v7, Lorg/telegram/ui/Components/MessagePreviewView$Page;->clearQuoteButton:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-static {v11, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v13, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 932
    iget-object v0, v7, Lorg/telegram/ui/Components/MessagePreviewView$Page;->menu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-static {v11, v15}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v13, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    goto :goto_2

    :cond_2
    move-object v14, v7

    move-object v7, v6

    move-object v6, v14

    move v14, v0

    move v15, v2

    .line 935
    :goto_2
    iget-object v0, v6, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean v2, v0, Lorg/telegram/messenger/MessagePreviewParams;->monoforum:Z

    if-nez v2, :cond_3

    iget-boolean v2, v0, Lorg/telegram/messenger/MessagePreviewParams;->noforwards:Z

    if-nez v2, :cond_3

    iget-boolean v0, v0, Lorg/telegram/messenger/MessagePreviewParams;->hasSecretMessages:Z

    if-nez v0, :cond_3

    .line 936
    new-instance v13, Landroid/widget/FrameLayout;

    invoke-direct {v13, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 937
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    const/4 v4, 0x0

    invoke-static {v6}, Lorg/telegram/ui/Components/MessagePreviewView;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/Components/MessagePreviewView;)Lorg/telegram/ui/Components/MessagePreviewView$ResourcesDelegate;

    move-result-object v5

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v7, Lorg/telegram/ui/Components/MessagePreviewView$Page;->replyAnotherChatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 938
    sget v1, Lorg/telegram/messenger/R$string;->ReplyToAnotherChat:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_forward_replace:I

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 939
    iget-object v0, v7, Lorg/telegram/ui/Components/MessagePreviewView$Page;->replyAnotherChatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    new-instance v1, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda15;

    invoke-direct {v1, v7}, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 940
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-static {v6}, Lorg/telegram/ui/Components/MessagePreviewView;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/Components/MessagePreviewView;)Lorg/telegram/ui/Components/MessagePreviewView$ResourcesDelegate;

    move-result-object v5

    const/4 v2, 0x1

    move-object/from16 v1, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v7, Lorg/telegram/ui/Components/MessagePreviewView$Page;->quoteAnotherChatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 941
    sget v2, Lorg/telegram/messenger/R$string;->QuoteToAnotherChat:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_forward_replace:I

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 942
    iget-object v0, v7, Lorg/telegram/ui/Components/MessagePreviewView$Page;->quoteAnotherChatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    new-instance v2, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda16;

    invoke-direct {v2, v7}, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 943
    iget-object v0, v7, Lorg/telegram/ui/Components/MessagePreviewView$Page;->quoteAnotherChatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-static {v11, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v13, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 944
    iget-object v0, v7, Lorg/telegram/ui/Components/MessagePreviewView$Page;->replyAnotherChatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-static {v11, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v13, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 945
    iget-object v0, v7, Lorg/telegram/ui/Components/MessagePreviewView$Page;->menu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-static {v11, v15}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v13, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 948
    :cond_3
    iget-object v0, v6, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean v2, v0, Lorg/telegram/messenger/MessagePreviewParams;->noforwards:Z

    if-nez v2, :cond_4

    iget-boolean v0, v0, Lorg/telegram/messenger/MessagePreviewParams;->hasSecretMessages:Z

    if-nez v0, :cond_4

    .line 949
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;

    invoke-static {v6}, Lorg/telegram/ui/Components/MessagePreviewView;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/Components/MessagePreviewView;)Lorg/telegram/ui/Components/MessagePreviewView$ResourcesDelegate;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 950
    sget v2, Lorg/telegram/messenger/R$id;->fit_width_tag:I

    invoke-virtual {v0, v2, v10}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 951
    iget-object v2, v7, Lorg/telegram/ui/Components/MessagePreviewView$Page;->menu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-static {v11, v14}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 954
    :cond_4
    iget-object v0, v6, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-object v0, v0, Lorg/telegram/messenger/MessagePreviewParams;->quote:Lorg/telegram/ui/ChatActivity$ReplyQuote;

    if-eqz v0, :cond_5

    move v0, v9

    goto :goto_3

    :cond_5
    move v0, v12

    :goto_3
    invoke-direct {v7, v0, v12}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->switchToQuote(ZZ)V

    .line 956
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    const/4 v4, 0x0

    invoke-static {v6}, Lorg/telegram/ui/Components/MessagePreviewView;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/Components/MessagePreviewView;)Lorg/telegram/ui/Components/MessagePreviewView$ResourcesDelegate;

    move-result-object v5

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 957
    sget v1, Lorg/telegram/messenger/R$string;->ApplyChanges:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_select:I

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 958
    new-instance v1, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda17;

    invoke-direct {v1, v7}, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 959
    iget-object v1, v7, Lorg/telegram/ui/Components/MessagePreviewView$Page;->menu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-static {v11, v15}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 961
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-static {v6}, Lorg/telegram/ui/Components/MessagePreviewView;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/Components/MessagePreviewView;)Lorg/telegram/ui/Components/MessagePreviewView$ResourcesDelegate;

    move-result-object v5

    const/4 v2, 0x1

    move-object/from16 v1, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 962
    sget v1, Lorg/telegram/messenger/R$string;->ViewInChat:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_view_file:I

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 963
    new-instance v1, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda18;

    invoke-direct {v1, v7}, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 964
    iget-object v1, v7, Lorg/telegram/ui/Components/MessagePreviewView$Page;->menu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-static {v11, v15}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 966
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    const/4 v4, 0x1

    invoke-static {v6}, Lorg/telegram/ui/Components/MessagePreviewView;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/Components/MessagePreviewView;)Lorg/telegram/ui/Components/MessagePreviewView$ResourcesDelegate;

    move-result-object v5

    const/4 v2, 0x1

    move-object/from16 v1, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v7, Lorg/telegram/ui/Components/MessagePreviewView$Page;->deleteReplyButton:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 967
    iget-boolean v1, v6, Lorg/telegram/ui/Components/MessagePreviewView;->showOutdatedQuote:Z

    if-eqz v1, :cond_6

    sget v1, Lorg/telegram/messenger/R$string;->DoNotQuote:I

    goto :goto_4

    :cond_6
    sget v1, Lorg/telegram/messenger/R$string;->DoNotReply:I

    :goto_4
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 968
    iget-object v0, v7, Lorg/telegram/ui/Components/MessagePreviewView$Page;->deleteReplyButton:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-static {v6, v1}, Lorg/telegram/ui/Components/MessagePreviewView;->-$$Nest$mgetThemedColor(Lorg/telegram/ui/Components/MessagePreviewView;I)I

    move-result v1

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-static {v6, v2}, Lorg/telegram/ui/Components/MessagePreviewView;->-$$Nest$mgetThemedColor(Lorg/telegram/ui/Components/MessagePreviewView;I)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setColors(II)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 969
    iget-object v0, v7, Lorg/telegram/ui/Components/MessagePreviewView$Page;->deleteReplyButton:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    const v2, 0x3df5c28f    # 0.12f

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setSelectorColor(I)V

    .line 970
    iget-object v0, v7, Lorg/telegram/ui/Components/MessagePreviewView$Page;->deleteReplyButton:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    new-instance v1, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda19;

    invoke-direct {v1, v7}, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 977
    iget-object v0, v7, Lorg/telegram/ui/Components/MessagePreviewView$Page;->menu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    iget-object v1, v7, Lorg/telegram/ui/Components/MessagePreviewView$Page;->deleteReplyButton:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-static {v11, v15}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    move-object/from16 v1, p2

    move-object v13, v6

    goto/16 :goto_e

    :cond_7
    move-object v14, v7

    move-object v7, v6

    move-object v6, v14

    move v14, v0

    move v15, v2

    if-ne v8, v9, :cond_c

    .line 979
    iget-object v0, v6, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-object v1, v0, Lorg/telegram/messenger/MessagePreviewParams;->forwardMessages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    if-eqz v1, :cond_c

    .line 981
    new-instance v1, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;

    sget v2, Lorg/telegram/messenger/R$raw;->name_hide:I

    .line 983
    iget-boolean v0, v0, Lorg/telegram/messenger/MessagePreviewParams;->multipleUsers:Z

    if-eqz v0, :cond_8

    sget v0, Lorg/telegram/messenger/R$string;->ShowSenderNames:I

    :goto_5
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto :goto_6

    :cond_8
    sget v0, Lorg/telegram/messenger/R$string;->ShowSendersName:I

    goto :goto_5

    :goto_6
    sget v4, Lorg/telegram/messenger/R$raw;->name_show:I

    .line 984
    iget-object v0, v6, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean v0, v0, Lorg/telegram/messenger/MessagePreviewParams;->multipleUsers:Z

    if-eqz v0, :cond_9

    sget v0, Lorg/telegram/messenger/R$string;->HideSenderNames:I

    :goto_7
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto :goto_8

    :cond_9
    sget v0, Lorg/telegram/messenger/R$string;->HideSendersName:I

    goto :goto_7

    :goto_8
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/MessagePreviewView;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/Components/MessagePreviewView;)Lorg/telegram/ui/Components/MessagePreviewView$ResourcesDelegate;

    move-result-object v6

    move-object/from16 v13, p1

    move-object v0, v1

    move-object/from16 v1, p2

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;-><init>(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    move-object v8, v0

    .line 987
    iget-object v0, v7, Lorg/telegram/ui/Components/MessagePreviewView$Page;->menu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-static {v11, v15}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v8, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 990
    iget-object v0, v13, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean v0, v0, Lorg/telegram/messenger/MessagePreviewParams;->hasCaption:Z

    if-eqz v0, :cond_a

    .line 991
    new-instance v0, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;

    sget v2, Lorg/telegram/messenger/R$raw;->caption_hide:I

    sget v1, Lorg/telegram/messenger/R$string;->ShowCaption:I

    .line 993
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$raw;->caption_show:I

    sget v1, Lorg/telegram/messenger/R$string;->HideCaption:I

    .line 994
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v13}, Lorg/telegram/ui/Components/MessagePreviewView;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/Components/MessagePreviewView;)Lorg/telegram/ui/Components/MessagePreviewView$ResourcesDelegate;

    move-result-object v6

    move-object/from16 v1, p2

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;-><init>(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 997
    iget-object v2, v13, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean v2, v2, Lorg/telegram/messenger/MessagePreviewParams;->hideCaption:Z

    invoke-virtual {v0, v2, v12}, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;->setState(ZZ)V

    .line 998
    iget-object v2, v7, Lorg/telegram/ui/Components/MessagePreviewView$Page;->menu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-static {v11, v15}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    move-object v6, v0

    goto :goto_9

    :cond_a
    move-object/from16 v1, p2

    const/4 v6, 0x0

    .line 1003
    :goto_9
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-static {v13}, Lorg/telegram/ui/Components/MessagePreviewView;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/Components/MessagePreviewView;)Lorg/telegram/ui/Components/MessagePreviewView$ResourcesDelegate;

    move-result-object v2

    invoke-direct {v0, v1, v9, v12, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1004
    new-instance v2, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda1;

    invoke-direct {v2, v7}, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1005
    sget v2, Lorg/telegram/messenger/R$string;->ChangeRecipient:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_forward_replace:I

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 1006
    iget-object v2, v7, Lorg/telegram/ui/Components/MessagePreviewView$Page;->menu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-static {v11, v15}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 1008
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;

    invoke-static {v13}, Lorg/telegram/ui/Components/MessagePreviewView;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/Components/MessagePreviewView;)Lorg/telegram/ui/Components/MessagePreviewView$ResourcesDelegate;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1009
    sget v2, Lorg/telegram/messenger/R$id;->fit_width_tag:I

    invoke-virtual {v0, v2, v10}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1010
    iget-object v2, v7, Lorg/telegram/ui/Components/MessagePreviewView$Page;->menu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-static {v11, v14}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 1012
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    const/4 v4, 0x0

    invoke-static {v13}, Lorg/telegram/ui/Components/MessagePreviewView;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/Components/MessagePreviewView;)Lorg/telegram/ui/Components/MessagePreviewView$ResourcesDelegate;

    move-result-object v5

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1013
    sget v2, Lorg/telegram/messenger/R$string;->ApplyChanges:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_select:I

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 1014
    new-instance v2, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda2;

    invoke-direct {v2, v7}, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1015
    iget-object v2, v7, Lorg/telegram/ui/Components/MessagePreviewView$Page;->menu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-static {v11, v15}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 1017
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-static {v13}, Lorg/telegram/ui/Components/MessagePreviewView;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/Components/MessagePreviewView;)Lorg/telegram/ui/Components/MessagePreviewView$ResourcesDelegate;

    move-result-object v2

    invoke-direct {v0, v1, v12, v12, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1018
    sget v2, Lorg/telegram/messenger/R$string;->ForwardSendMessages:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_send:I

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 1019
    iget-object v2, v7, Lorg/telegram/ui/Components/MessagePreviewView$Page;->menu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-static {v11, v15}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 1020
    new-instance v2, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda3;

    invoke-direct {v2, v7}, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1022
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    const/4 v4, 0x1

    invoke-static {v13}, Lorg/telegram/ui/Components/MessagePreviewView;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/Components/MessagePreviewView;)Lorg/telegram/ui/Components/MessagePreviewView$ResourcesDelegate;

    move-result-object v5

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1023
    sget v1, Lorg/telegram/messenger/R$string;->DoNotForward:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 1024
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-static {v13, v1}, Lorg/telegram/ui/Components/MessagePreviewView;->-$$Nest$mgetThemedColor(Lorg/telegram/ui/Components/MessagePreviewView;I)I

    move-result v1

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-static {v13, v2}, Lorg/telegram/ui/Components/MessagePreviewView;->-$$Nest$mgetThemedColor(Lorg/telegram/ui/Components/MessagePreviewView;I)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setColors(II)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 1025
    new-instance v1, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda4;

    invoke-direct {v1, v7}, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1026
    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    const v2, 0x3df5c28f    # 0.12f

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setSelectorColor(I)V

    .line 1027
    iget-object v1, v7, Lorg/telegram/ui/Components/MessagePreviewView$Page;->menu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-static {v11, v15}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 1034
    invoke-virtual {v13}, Lorg/telegram/ui/Components/MessagePreviewView;->isForwardNoQuote()Z

    move-result v0

    invoke-virtual {v8, v0, v12}, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;->setState(ZZ)V

    .line 1035
    new-instance v0, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda5;

    invoke-direct {v0, v7, v6, v8}, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;)V

    invoke-virtual {v8, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v6, :cond_b

    .line 1050
    new-instance v0, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda6;

    invoke-direct {v0, v7, v6, v8}, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;)V

    invoke-virtual {v6, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_b
    move-object/from16 v1, p2

    goto/16 :goto_e

    :cond_c
    move-object v13, v6

    const/4 v0, 0x2

    if-ne v8, v0, :cond_b

    .line 1070
    iget-object v0, v13, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-object v0, v0, Lorg/telegram/messenger/MessagePreviewParams;->linkMessage:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    if-eqz v0, :cond_b

    .line 1072
    new-instance v0, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;

    sget v2, Lorg/telegram/messenger/R$raw;->position_below:I

    sget v1, Lorg/telegram/messenger/R$string;->LinkAbove:I

    .line 1074
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$raw;->position_above:I

    sget v1, Lorg/telegram/messenger/R$string;->LinkBelow:I

    .line 1075
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v13}, Lorg/telegram/ui/Components/MessagePreviewView;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/Components/MessagePreviewView;)Lorg/telegram/ui/Components/MessagePreviewView$ResourcesDelegate;

    move-result-object v6

    move-object/from16 v1, p2

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;-><init>(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v7, Lorg/telegram/ui/Components/MessagePreviewView$Page;->changePositionBtn:Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;

    .line 1078
    iget-object v2, v13, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean v2, v2, Lorg/telegram/messenger/MessagePreviewParams;->webpageTop:Z

    xor-int/2addr v2, v9

    invoke-virtual {v0, v2, v12}, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;->setState(ZZ)V

    .line 1079
    iget-object v0, v7, Lorg/telegram/ui/Components/MessagePreviewView$Page;->menu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    iget-object v2, v7, Lorg/telegram/ui/Components/MessagePreviewView$Page;->changePositionBtn:Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;

    invoke-static {v11, v15}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 1081
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v7, Lorg/telegram/ui/Components/MessagePreviewView$Page;->changeSizeBtnContainer:Landroid/widget/FrameLayout;

    .line 1082
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogButtonSelector:I

    invoke-static {v13, v2}, Lorg/telegram/ui/Components/MessagePreviewView;->-$$Nest$mgetThemedColor(Lorg/telegram/ui/Components/MessagePreviewView;I)I

    move-result v2

    invoke-static {v2, v12, v12}, Lorg/telegram/ui/ActionBar/Theme;->createRadSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1083
    new-instance v0, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;

    sget v2, Lorg/telegram/messenger/R$raw;->media_shrink:I

    sget v3, Lorg/telegram/messenger/R$string;->LinkMediaLarger:I

    .line 1085
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$raw;->media_enlarge:I

    sget v5, Lorg/telegram/messenger/R$string;->LinkMediaSmaller:I

    .line 1086
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v13}, Lorg/telegram/ui/Components/MessagePreviewView;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/Components/MessagePreviewView;)Lorg/telegram/ui/Components/MessagePreviewView$ResourcesDelegate;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;-><init>(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v7, Lorg/telegram/ui/Components/MessagePreviewView$Page;->changeSizeBtn:Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;

    const/4 v1, 0x0

    .line 1089
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1090
    iget-object v0, v7, Lorg/telegram/ui/Components/MessagePreviewView$Page;->changeSizeBtn:Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;

    iget-object v1, v13, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean v1, v1, Lorg/telegram/messenger/MessagePreviewParams;->isVideo:Z

    const/4 v8, 0x4

    if-eqz v1, :cond_d

    move v1, v8

    goto :goto_a

    :cond_d
    move v1, v12

    :goto_a
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1091
    iget-object v0, v7, Lorg/telegram/ui/Components/MessagePreviewView$Page;->changeSizeBtnContainer:Landroid/widget/FrameLayout;

    iget-object v1, v7, Lorg/telegram/ui/Components/MessagePreviewView$Page;->changeSizeBtn:Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;

    invoke-static {v11, v15}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1092
    new-instance v0, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;

    sget v2, Lorg/telegram/messenger/R$raw;->media_shrink:I

    sget v1, Lorg/telegram/messenger/R$string;->LinkVideoLarger:I

    .line 1094
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$raw;->media_enlarge:I

    sget v1, Lorg/telegram/messenger/R$string;->LinkVideoSmaller:I

    .line 1095
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v13}, Lorg/telegram/ui/Components/MessagePreviewView;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/Components/MessagePreviewView;)Lorg/telegram/ui/Components/MessagePreviewView$ResourcesDelegate;

    move-result-object v6

    move-object/from16 v1, p2

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;-><init>(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v7, Lorg/telegram/ui/Components/MessagePreviewView$Page;->videoChangeSizeBtn:Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;

    const/4 v2, 0x0

    .line 1098
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1099
    iget-object v0, v7, Lorg/telegram/ui/Components/MessagePreviewView$Page;->videoChangeSizeBtn:Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;

    iget-object v2, v13, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean v2, v2, Lorg/telegram/messenger/MessagePreviewParams;->isVideo:Z

    if-nez v2, :cond_e

    goto :goto_b

    :cond_e
    move v8, v12

    :goto_b
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1100
    iget-object v0, v7, Lorg/telegram/ui/Components/MessagePreviewView$Page;->changeSizeBtnContainer:Landroid/widget/FrameLayout;

    iget-object v2, v13, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean v2, v2, Lorg/telegram/messenger/MessagePreviewParams;->hasMedia:Z

    if-eqz v2, :cond_f

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_c

    :cond_f
    const/high16 v2, 0x3f000000    # 0.5f

    :goto_c
    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1101
    iget-object v0, v7, Lorg/telegram/ui/Components/MessagePreviewView$Page;->changeSizeBtnContainer:Landroid/widget/FrameLayout;

    iget-object v2, v7, Lorg/telegram/ui/Components/MessagePreviewView$Page;->videoChangeSizeBtn:Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;

    invoke-static {v11, v15}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1102
    iget-object v0, v7, Lorg/telegram/ui/Components/MessagePreviewView$Page;->menu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    iget-object v2, v7, Lorg/telegram/ui/Components/MessagePreviewView$Page;->changeSizeBtnContainer:Landroid/widget/FrameLayout;

    invoke-static {v11, v15}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 1103
    iget-object v0, v7, Lorg/telegram/ui/Components/MessagePreviewView$Page;->changeSizeBtnContainer:Landroid/widget/FrameLayout;

    iget-object v2, v13, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean v3, v2, Lorg/telegram/messenger/MessagePreviewParams;->singleLink:Z

    if-eqz v3, :cond_10

    iget-boolean v2, v2, Lorg/telegram/messenger/MessagePreviewParams;->hasMedia:Z

    if-nez v2, :cond_10

    move v2, v14

    goto :goto_d

    :cond_10
    move v2, v12

    :goto_d
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1104
    iget-object v0, v7, Lorg/telegram/ui/Components/MessagePreviewView$Page;->changeSizeBtn:Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;

    iget-object v2, v13, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean v2, v2, Lorg/telegram/messenger/MessagePreviewParams;->webpageSmall:Z

    invoke-virtual {v0, v2, v12}, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;->setState(ZZ)V

    .line 1105
    iget-object v0, v7, Lorg/telegram/ui/Components/MessagePreviewView$Page;->videoChangeSizeBtn:Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;

    iget-object v2, v13, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean v2, v2, Lorg/telegram/messenger/MessagePreviewParams;->webpageSmall:Z

    invoke-virtual {v0, v2, v12}, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;->setState(ZZ)V

    .line 1107
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;

    invoke-static {v13}, Lorg/telegram/ui/Components/MessagePreviewView;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/Components/MessagePreviewView;)Lorg/telegram/ui/Components/MessagePreviewView$ResourcesDelegate;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1108
    sget v2, Lorg/telegram/messenger/R$id;->fit_width_tag:I

    invoke-virtual {v0, v2, v10}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1109
    iget-object v2, v7, Lorg/telegram/ui/Components/MessagePreviewView$Page;->menu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-static {v11, v14}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 1111
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    const/4 v4, 0x0

    invoke-static {v13}, Lorg/telegram/ui/Components/MessagePreviewView;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/Components/MessagePreviewView;)Lorg/telegram/ui/Components/MessagePreviewView$ResourcesDelegate;

    move-result-object v5

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1112
    sget v1, Lorg/telegram/messenger/R$string;->ApplyChanges:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_select:I

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 1113
    new-instance v1, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda7;

    invoke-direct {v1, v7}, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1114
    iget-object v1, v7, Lorg/telegram/ui/Components/MessagePreviewView$Page;->menu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-static {v11, v15}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 1116
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    const/4 v4, 0x1

    invoke-static {v13}, Lorg/telegram/ui/Components/MessagePreviewView;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/Components/MessagePreviewView;)Lorg/telegram/ui/Components/MessagePreviewView$ResourcesDelegate;

    move-result-object v5

    const/4 v2, 0x1

    move-object/from16 v1, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1117
    sget v2, Lorg/telegram/messenger/R$string;->DoNotLinkPreview:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 1118
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-static {v13, v2}, Lorg/telegram/ui/Components/MessagePreviewView;->-$$Nest$mgetThemedColor(Lorg/telegram/ui/Components/MessagePreviewView;I)I

    move-result v2

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-static {v13, v3}, Lorg/telegram/ui/Components/MessagePreviewView;->-$$Nest$mgetThemedColor(Lorg/telegram/ui/Components/MessagePreviewView;I)I

    move-result v4

    invoke-virtual {v0, v2, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setColors(II)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 1119
    new-instance v2, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda8;

    invoke-direct {v2, v7}, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1120
    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    const v3, 0x3df5c28f    # 0.12f

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setSelectorColor(I)V

    .line 1121
    iget-object v2, v7, Lorg/telegram/ui/Components/MessagePreviewView$Page;->menu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-static {v11, v15}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 1123
    iget-object v0, v7, Lorg/telegram/ui/Components/MessagePreviewView$Page;->changeSizeBtnContainer:Landroid/widget/FrameLayout;

    new-instance v2, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda9;

    invoke-direct {v2, v7}, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1148
    iget-object v0, v7, Lorg/telegram/ui/Components/MessagePreviewView$Page;->changePositionBtn:Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;

    new-instance v2, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda10;

    invoke-direct {v2, v7}, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1168
    :goto_e
    iget v0, v7, Lorg/telegram/ui/Components/MessagePreviewView$Page;->currentTab:I

    if-ne v0, v9, :cond_11

    .line 1169
    iget-object v0, v13, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-object v0, v0, Lorg/telegram/messenger/MessagePreviewParams;->forwardMessages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    iput-object v0, v7, Lorg/telegram/ui/Components/MessagePreviewView$Page;->messages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    goto :goto_f

    :cond_11
    if-nez v0, :cond_12

    .line 1171
    iget-object v0, v13, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-object v0, v0, Lorg/telegram/messenger/MessagePreviewParams;->replyMessage:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    iput-object v0, v7, Lorg/telegram/ui/Components/MessagePreviewView$Page;->messages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    goto :goto_f

    :cond_12
    const/4 v2, 0x2

    if-ne v0, v2, :cond_13

    .line 1173
    iget-object v0, v13, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-object v0, v0, Lorg/telegram/messenger/MessagePreviewParams;->linkMessage:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    iput-object v0, v7, Lorg/telegram/ui/Components/MessagePreviewView$Page;->messages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    .line 1177
    :cond_13
    :goto_f
    iget-object v0, v7, Lorg/telegram/ui/Components/MessagePreviewView$Page;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getOverlayView(Landroid/content/Context;)Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;

    move-result-object v0

    iput-object v0, v7, Lorg/telegram/ui/Components/MessagePreviewView$Page;->textSelectionOverlay:Landroid/view/View;

    const/high16 v1, 0x41000000    # 8.0f

    .line 1179
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setElevation(F)V

    .line 1180
    iget-object v0, v7, Lorg/telegram/ui/Components/MessagePreviewView$Page;->textSelectionOverlay:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 1182
    iget-object v0, v7, Lorg/telegram/ui/Components/MessagePreviewView$Page;->textSelectionOverlay:Landroid/view/View;

    if-eqz v0, :cond_15

    .line 1183
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_14

    .line 1184
    iget-object v0, v7, Lorg/telegram/ui/Components/MessagePreviewView$Page;->textSelectionOverlay:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, v7, Lorg/telegram/ui/Components/MessagePreviewView$Page;->textSelectionOverlay:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1186
    :cond_14
    iget-object v0, v7, Lorg/telegram/ui/Components/MessagePreviewView$Page;->textSelectionOverlay:Landroid/view/View;

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v1

    int-to-float v1, v1

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float v12, v1, v2

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v8, -0x1

    const/high16 v9, -0x40800000    # -1.0f

    const/16 v10, 0x33

    const/4 v11, 0x0

    invoke-static/range {v8 .. v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1188
    :cond_15
    iget-object v0, v7, Lorg/telegram/ui/Components/MessagePreviewView$Page;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;

    iget-object v1, v7, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->setParentView(Landroid/view/ViewGroup;)V

    return-void
.end method

.method private checkScroll()V
    .locals 3

    .line 1194
    iget-boolean v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->updateScroll:Z

    if-nez v0, :cond_0

    return-void

    .line 1195
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollExtent()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 1196
    new-instance v0, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda23;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;)V

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    const/4 v0, 0x0

    .line 1204
    iput-boolean v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->updateScroll:Z

    return-void
.end method

.method private getValidGroupedMessage(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/messenger/MessageObject$GroupedMessages;
    .locals 4

    .line 1748
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getGroupId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1749
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->messages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    iget-object v0, v0, Lorg/telegram/messenger/MessagePreviewParams$Messages;->groupedMessagesMap:Landroid/util/LongSparseArray;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getGroupId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;

    if-eqz v0, :cond_1

    .line 1750
    iget-object v2, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MessageObject$GroupedMessages;->getPosition(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    move-result-object p1

    if-nez p1, :cond_1

    :cond_0
    return-object v1

    :cond_1
    return-object v0

    :cond_2
    return-object v1
.end method

.method private synthetic lambda$checkScroll$20()V
    .locals 6

    .line 1197
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v0, v0, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean v0, v0, Lorg/telegram/messenger/MessagePreviewParams;->webpageTop:Z

    const/16 v1, 0xfa

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1198
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v3

    neg-int v3, v3

    sget-object v4, Landroidx/recyclerview/widget/ChatListItemAnimator;->DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2, v3, v1, v4}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(IIILandroid/view/animation/Interpolator;)V

    return-void

    .line 1200
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollExtent()I

    move-result v5

    add-int/2addr v4, v5

    sub-int/2addr v3, v4

    sget-object v4, Landroidx/recyclerview/widget/ChatListItemAnimator;->DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2, v3, v1, v4}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(IIILandroid/view/animation/Interpolator;)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 277
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 278
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/MessagePreviewView;->dismiss(Z)V

    :cond_0
    return p2
.end method

.method private synthetic lambda$new$1()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 806
    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->switchToQuote(ZZ)V

    return-void
.end method

.method private synthetic lambda$new$10(Landroid/view/View;)V
    .locals 1

    .line 1004
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/MessagePreviewView;->selectAnotherChat(Z)V

    return-void
.end method

.method private synthetic lambda$new$11(Landroid/view/View;)V
    .locals 1

    .line 1014
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/MessagePreviewView;->dismiss(Z)V

    return-void
.end method

.method private synthetic lambda$new$12(Landroid/view/View;)V
    .locals 0

    .line 1020
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/MessagePreviewView;->didSendPressed()V

    return-void
.end method

.method private synthetic lambda$new$13(Landroid/view/View;)V
    .locals 0

    .line 1025
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/MessagePreviewView;->removeForward()V

    return-void
.end method

.method private synthetic lambda$new$14(Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;Landroid/view/View;)V
    .locals 2

    .line 1036
    iget-object p3, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    invoke-virtual {p3}, Lorg/telegram/ui/Components/MessagePreviewView;->isForwardNoQuote()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-virtual {p3, v0}, Lorg/telegram/ui/Components/MessagePreviewView;->setForwardParams(Z)V

    .line 1037
    iget-object p3, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    const/4 v0, 0x0

    iput-boolean v0, p3, Lorg/telegram/ui/Components/MessagePreviewView;->returnSendersNames:Z

    .line 1038
    invoke-virtual {p3}, Lorg/telegram/ui/Components/MessagePreviewView;->isForwardNoQuote()Z

    move-result p3

    if-nez p3, :cond_0

    .line 1039
    iget-object p3, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object p3, p3, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iput-boolean v0, p3, Lorg/telegram/messenger/MessagePreviewParams;->hideCaption:Z

    if-eqz p1, :cond_0

    .line 1041
    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;->setState(ZZ)V

    .line 1044
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/MessagePreviewView;->isForwardNoQuote()Z

    move-result p1

    invoke-virtual {p2, p1, v1}, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;->setState(ZZ)V

    .line 1045
    invoke-direct {p0}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->updateMessages()V

    .line 1046
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->updateSubtitle(Z)V

    return-void
.end method

.method private synthetic lambda$new$15(Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;Landroid/view/View;)V
    .locals 3

    .line 1051
    iget-object p3, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v0, p3, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean v1, v0, Lorg/telegram/messenger/MessagePreviewParams;->hideCaption:Z

    xor-int/lit8 v2, v1, 0x1

    iput-boolean v2, v0, Lorg/telegram/messenger/MessagePreviewParams;->hideCaption:Z

    const/4 v0, 0x1

    if-nez v1, :cond_0

    .line 1053
    invoke-virtual {p3}, Lorg/telegram/ui/Components/MessagePreviewView;->isForwardNoQuote()Z

    move-result p3

    if-nez p3, :cond_2

    .line 1054
    iget-object p3, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    invoke-virtual {p3, v0}, Lorg/telegram/ui/Components/MessagePreviewView;->setForwardParams(Z)V

    .line 1055
    iget-object p3, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iput-boolean v0, p3, Lorg/telegram/ui/Components/MessagePreviewView;->returnSendersNames:Z

    goto :goto_0

    .line 1058
    :cond_0
    iget-boolean v1, p3, Lorg/telegram/ui/Components/MessagePreviewView;->returnSendersNames:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 1059
    invoke-virtual {p3, v2}, Lorg/telegram/ui/Components/MessagePreviewView;->setForwardParams(Z)V

    .line 1061
    :cond_1
    iget-object p3, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iput-boolean v2, p3, Lorg/telegram/ui/Components/MessagePreviewView;->returnSendersNames:Z

    .line 1063
    :cond_2
    :goto_0
    iget-object p3, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object p3, p3, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean p3, p3, Lorg/telegram/messenger/MessagePreviewParams;->hideCaption:Z

    invoke-virtual {p1, p3, v0}, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;->setState(ZZ)V

    .line 1064
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/MessagePreviewView;->isForwardNoQuote()Z

    move-result p1

    invoke-virtual {p2, p1, v0}, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;->setState(ZZ)V

    .line 1065
    invoke-direct {p0}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->updateMessages()V

    .line 1066
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->updateSubtitle(Z)V

    return-void
.end method

.method private synthetic lambda$new$16(Landroid/view/View;)V
    .locals 1

    .line 1113
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/MessagePreviewView;->dismiss(Z)V

    return-void
.end method

.method private synthetic lambda$new$17(Landroid/view/View;)V
    .locals 0

    .line 1119
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/MessagePreviewView;->removeLink()V

    return-void
.end method

.method private synthetic lambda$new$18(Landroid/view/View;)V
    .locals 3

    .line 1124
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object p1, p1, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean v0, p1, Lorg/telegram/messenger/MessagePreviewParams;->hasMedia:Z

    if-nez v0, :cond_0

    return-void

    .line 1127
    :cond_0
    iget-boolean v0, p1, Lorg/telegram/messenger/MessagePreviewParams;->webpageSmall:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p1, Lorg/telegram/messenger/MessagePreviewParams;->webpageSmall:Z

    .line 1128
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->changeSizeBtn:Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;->setState(ZZ)V

    .line 1129
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->videoChangeSizeBtn:Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;

    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v0, v0, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean v0, v0, Lorg/telegram/messenger/MessagePreviewParams;->webpageSmall:Z

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;->setState(ZZ)V

    .line 1130
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->messages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    iget-object p1, p1, Lorg/telegram/messenger/MessagePreviewParams$Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    if-lez p1, :cond_1

    .line 1131
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->messages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    iget-object p1, p1, Lorg/telegram/messenger/MessagePreviewParams$Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz p1, :cond_1

    .line 1132
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz p1, :cond_1

    .line 1133
    iget-object v2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v2, v2, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean v2, v2, Lorg/telegram/messenger/MessagePreviewParams;->webpageSmall:Z

    iput-boolean v2, p1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->force_small_media:Z

    xor-int/2addr v2, v1

    .line 1134
    iput-boolean v2, p1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->force_large_media:Z

    .line 1137
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->messages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    iget-object p1, p1, Lorg/telegram/messenger/MessagePreviewParams$Messages;->previewMessages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 1138
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->messages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    iget-object p1, p1, Lorg/telegram/messenger/MessagePreviewParams$Messages;->previewMessages:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz p1, :cond_2

    .line 1139
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz p1, :cond_2

    .line 1140
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v0, v0, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean v0, v0, Lorg/telegram/messenger/MessagePreviewParams;->webpageSmall:Z

    iput-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->force_small_media:Z

    xor-int/2addr v0, v1

    .line 1141
    iput-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->force_large_media:Z

    .line 1144
    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->updateMessages()V

    .line 1145
    iput-boolean v1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->updateScroll:Z

    return-void
.end method

.method private synthetic lambda$new$19(Landroid/view/View;)V
    .locals 3

    .line 1149
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object p1, p1, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean v0, p1, Lorg/telegram/messenger/MessagePreviewParams;->webpageTop:Z

    xor-int/lit8 v1, v0, 0x1

    iput-boolean v1, p1, Lorg/telegram/messenger/MessagePreviewParams;->webpageTop:Z

    .line 1150
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->changePositionBtn:Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;->setState(ZZ)V

    .line 1151
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->messages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    iget-object p1, p1, Lorg/telegram/messenger/MessagePreviewParams$Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    if-lez p1, :cond_0

    .line 1152
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->messages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    iget-object p1, p1, Lorg/telegram/messenger/MessagePreviewParams$Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz p1, :cond_0

    .line 1154
    iget-object v2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v2, v2, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean v2, v2, Lorg/telegram/messenger/MessagePreviewParams;->webpageTop:Z

    iput-boolean v2, p1, Lorg/telegram/tgnet/TLRPC$Message;->invert_media:Z

    .line 1157
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->messages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    iget-object p1, p1, Lorg/telegram/messenger/MessagePreviewParams$Messages;->previewMessages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 1158
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->messages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    iget-object p1, p1, Lorg/telegram/messenger/MessagePreviewParams$Messages;->previewMessages:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz p1, :cond_1

    .line 1160
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v0, v0, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean v0, v0, Lorg/telegram/messenger/MessagePreviewParams;->webpageTop:Z

    iput-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$Message;->invert_media:Z

    .line 1163
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->updateMessages()V

    .line 1164
    iput-boolean v1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->updateScroll:Z

    return-void
.end method

.method private synthetic lambda$new$2(Landroid/view/View;)V
    .locals 1

    .line 819
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object p1, p1, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    const/4 v0, 0x0

    iput-object v0, p1, Lorg/telegram/messenger/MessagePreviewParams;->quote:Lorg/telegram/ui/ChatActivity$ReplyQuote;

    .line 820
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->clear()V

    const/4 p1, 0x0

    .line 821
    invoke-direct {p0, p1, p1}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->switchToQuote(ZZ)V

    .line 822
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->menu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getSwipeBack()Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/PopupSwipeBackLayout;->closeForeground()V

    return-void
.end method

.method private synthetic lambda$new$3(Landroid/view/View;)V
    .locals 3

    .line 833
    invoke-virtual {p0}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->getReplyMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 835
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;

    iget v0, p1, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionEnd:I

    iget p1, p1, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionStart:I

    sub-int/2addr v0, p1

    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    invoke-static {p1}, Lorg/telegram/ui/Components/MessagePreviewView;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Components/MessagePreviewView;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget p1, p1, Lorg/telegram/messenger/MessagesController;->quoteLengthMax:I

    if-le v0, p1, :cond_0

    .line 836
    invoke-direct {p0}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->showQuoteLengthError()V

    return-void

    .line 840
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getSelectedCell()Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 841
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getSelectedCell()Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 843
    :goto_0
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->getReplyMessage(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    .line 844
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v0, v0, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-object v1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;

    iget v2, v1, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionStart:I

    iput v2, v0, Lorg/telegram/messenger/MessagePreviewParams;->quoteStart:I

    .line 845
    iget v1, v1, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionEnd:I

    iput v1, v0, Lorg/telegram/messenger/MessagePreviewParams;->quoteEnd:I

    .line 846
    invoke-static {p1, v2, v1}, Lorg/telegram/ui/ChatActivity$ReplyQuote;->from(Lorg/telegram/messenger/MessageObject;II)Lorg/telegram/ui/ChatActivity$ReplyQuote;

    move-result-object p1

    iput-object p1, v0, Lorg/telegram/messenger/MessagePreviewParams;->quote:Lorg/telegram/ui/ChatActivity$ReplyQuote;

    .line 847
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/MessagePreviewView;->onQuoteSelectedPart()V

    .line 848
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/MessagePreviewView;->dismiss(Z)V

    :cond_2
    return-void
.end method

.method private synthetic lambda$new$4(Landroid/view/View;)V
    .locals 5

    .line 890
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v0, p1, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-object v1, v0, Lorg/telegram/messenger/MessagePreviewParams;->quote:Lorg/telegram/ui/ChatActivity$ReplyQuote;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    iget-boolean v1, p1, Lorg/telegram/ui/Components/MessagePreviewView;->showOutdatedQuote:Z

    if-nez v1, :cond_0

    .line 892
    iput-object v3, v0, Lorg/telegram/messenger/MessagePreviewParams;->quote:Lorg/telegram/ui/ChatActivity$ReplyQuote;

    .line 893
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->clear()V

    .line 894
    invoke-direct {p0, v2, v4}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->switchToQuote(ZZ)V

    .line 895
    invoke-direct {p0, v4}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->updateSubtitle(Z)V

    return-void

    .line 898
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;

    iget v1, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionEnd:I

    iget v0, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionStart:I

    sub-int/2addr v1, v0

    invoke-static {p1}, Lorg/telegram/ui/Components/MessagePreviewView;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Components/MessagePreviewView;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget p1, p1, Lorg/telegram/messenger/MessagesController;->quoteLengthMax:I

    if-le v1, p1, :cond_1

    .line 899
    invoke-direct {p0}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->showQuoteLengthError()V

    return-void

    .line 902
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->getReplyMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 904
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->isInSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 905
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object p1, p1, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;

    iget v1, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionStart:I

    iput v1, p1, Lorg/telegram/messenger/MessagePreviewParams;->quoteStart:I

    .line 906
    iget v1, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionEnd:I

    iput v1, p1, Lorg/telegram/messenger/MessagePreviewParams;->quoteEnd:I

    .line 908
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getSelectedCell()Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 909
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getSelectedCell()Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    .line 911
    :cond_2
    invoke-virtual {p0, v3}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->getReplyMessage(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    .line 912
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v0, v0, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget v1, v0, Lorg/telegram/messenger/MessagePreviewParams;->quoteStart:I

    iget v2, v0, Lorg/telegram/messenger/MessagePreviewParams;->quoteEnd:I

    invoke-static {p1, v1, v2}, Lorg/telegram/ui/ChatActivity$ReplyQuote;->from(Lorg/telegram/messenger/MessageObject;II)Lorg/telegram/ui/ChatActivity$ReplyQuote;

    move-result-object p1

    iput-object p1, v0, Lorg/telegram/messenger/MessagePreviewParams;->quote:Lorg/telegram/ui/ChatActivity$ReplyQuote;

    .line 913
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/MessagePreviewView;->onQuoteSelectedPart()V

    .line 914
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    invoke-virtual {p1, v4}, Lorg/telegram/ui/Components/MessagePreviewView;->dismiss(Z)V

    return-void

    .line 917
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v1, v0, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iput v2, v1, Lorg/telegram/messenger/MessagePreviewParams;->quoteStart:I

    .line 918
    invoke-static {v0}, Lorg/telegram/ui/Components/MessagePreviewView;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Components/MessagePreviewView;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v0, v0, Lorg/telegram/messenger/MessagesController;->quoteLengthMax:I

    iget-object v2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v1, Lorg/telegram/messenger/MessagePreviewParams;->quoteEnd:I

    .line 919
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v0, v0, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget v1, v0, Lorg/telegram/messenger/MessagePreviewParams;->quoteStart:I

    iget v2, v0, Lorg/telegram/messenger/MessagePreviewParams;->quoteEnd:I

    invoke-static {p1, v1, v2}, Lorg/telegram/ui/ChatActivity$ReplyQuote;->from(Lorg/telegram/messenger/MessageObject;II)Lorg/telegram/ui/ChatActivity$ReplyQuote;

    move-result-object p1

    iput-object p1, v0, Lorg/telegram/messenger/MessagePreviewParams;->quote:Lorg/telegram/ui/ChatActivity$ReplyQuote;

    .line 920
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->getReplyMessageCell()Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v1, v1, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget v2, v1, Lorg/telegram/messenger/MessagePreviewParams;->quoteStart:I

    iget v1, v1, Lorg/telegram/messenger/MessagePreviewParams;->quoteEnd:I

    invoke-virtual {p1, v0, v2, v1}, Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;->select(Lorg/telegram/ui/Cells/ChatMessageCell;II)V

    .line 922
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-boolean p1, p1, Lorg/telegram/ui/Components/MessagePreviewView;->showOutdatedQuote:Z

    if-nez p1, :cond_4

    .line 923
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->menu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getSwipeBack()Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    move-result-object p1

    iget v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->menuBack:I

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/PopupSwipeBackLayout;->openForeground(I)V

    .line 925
    :cond_4
    invoke-direct {p0, v4, v4}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->switchToQuote(ZZ)V

    :cond_5
    return-void
.end method

.method private synthetic lambda$new$5(Landroid/view/View;)V
    .locals 1

    .line 939
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/MessagePreviewView;->selectAnotherChat(Z)V

    return-void
.end method

.method private synthetic lambda$new$6(Landroid/view/View;)V
    .locals 1

    .line 942
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/MessagePreviewView;->selectAnotherChat(Z)V

    return-void
.end method

.method private synthetic lambda$new$7(Landroid/view/View;)V
    .locals 1

    .line 958
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/MessagePreviewView;->dismiss(Z)V

    return-void
.end method

.method private synthetic lambda$new$8(Landroid/view/View;)V
    .locals 0

    .line 963
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/MessagePreviewView;->viewInChat()V

    return-void
.end method

.method private synthetic lambda$new$9(Landroid/view/View;)V
    .locals 1

    .line 971
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-boolean v0, p1, Lorg/telegram/ui/Components/MessagePreviewView;->showOutdatedQuote:Z

    if-eqz v0, :cond_0

    .line 972
    invoke-virtual {p1}, Lorg/telegram/ui/Components/MessagePreviewView;->removeQuote()V

    return-void

    .line 974
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/ui/Components/MessagePreviewView;->removeReply()V

    return-void
.end method

.method private synthetic lambda$onAttachedToWindow$22(Landroid/view/View;)V
    .locals 2

    .line 1437
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->adapter:Lorg/telegram/ui/Components/MessagePreviewView$Page$Adapter;

    iget-object v1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/MessagePreviewView$Page$Adapter;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method private synthetic lambda$updateMessages$21(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V
    .locals 1

    .line 1337
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1338
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$updatePositions$23(IFLandroid/animation/ValueAnimator;)V
    .locals 2

    .line 1484
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    int-to-float p1, p1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p3

    mul-float/2addr p1, v0

    .line 1485
    iget v1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatTopOffset:I

    int-to-float v1, v1

    mul-float/2addr v1, p3

    add-float/2addr p1, v1

    float-to-int p1, p1

    iput p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->currentTopOffset:I

    mul-float/2addr p2, v0

    .line 1486
    iget v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->yOffset:F

    mul-float/2addr v0, p3

    add-float/2addr p2, v0

    iput p2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->currentYOffset:F

    .line 1487
    invoke-direct {p0, p2, p1}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->setOffset(FI)V

    return-void
.end method

.method private setOffset(FI)V
    .locals 1

    .line 1510
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-boolean v0, v0, Lorg/telegram/ui/Components/MessagePreviewView;->isLandscapeMode:Z

    if-eqz v0, :cond_0

    .line 1511
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->actionBar:Lorg/telegram/ui/Components/MessagePreviewView$ActionBar;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 1513
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatPreviewContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->invalidateOutline()V

    .line 1515
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatPreviewContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 1516
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->menu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    .line 1518
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->actionBar:Lorg/telegram/ui/Components/MessagePreviewView$ActionBar;

    int-to-float p2, p2

    invoke-virtual {v0, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 1520
    iget-object p2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatPreviewContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {p2}, Landroid/view/View;->invalidateOutline()V

    .line 1522
    iget-object p2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatPreviewContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 1523
    iget-object p2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->menu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatPreviewContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 1526
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->textSelectionOverlay:Landroid/view/View;

    iget-object p2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatPreviewContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {p2}, Landroid/view/View;->getX()F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    .line 1527
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->textSelectionOverlay:Landroid/view/View;

    iget-object p2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatPreviewContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {p2}, Landroid/view/View;->getY()F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method private showQuoteLengthError()V
    .locals 4

    .line 1208
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    invoke-static {v0}, Lorg/telegram/ui/Components/MessagePreviewView;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/Components/MessagePreviewView;)Lorg/telegram/ui/Components/MessagePreviewView$ResourcesDelegate;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$raw;->error:I

    sget v2, Lorg/telegram/messenger/R$string;->QuoteMaxError:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->QuoteMaxErrorMessage:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method private switchToQuote(ZZ)V
    .locals 8

    .line 153
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-boolean v0, v0, Lorg/telegram/ui/Components/MessagePreviewView;->showOutdatedQuote:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move p1, v1

    :cond_0
    if-eqz p2, :cond_1

    .line 157
    iget-boolean v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->toQuote:Z

    if-ne v0, p1, :cond_1

    goto/16 :goto_a

    .line 160
    :cond_1
    iput-boolean p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->toQuote:Z

    .line 162
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->quoteSwitcher:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    .line 163
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v0, 0x0

    .line 164
    iput-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->quoteSwitcher:Landroid/animation/AnimatorSet;

    :cond_2
    const/4 v0, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p2, :cond_b

    .line 168
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->quoteSwitcher:Landroid/animation/AnimatorSet;

    .line 169
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 170
    iget-object v3, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->quoteButton:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    const/4 v4, 0x1

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    if-eqz v3, :cond_4

    .line 171
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 172
    iget-object v3, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->quoteButton:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-nez p1, :cond_3

    move v6, v2

    goto :goto_0

    :cond_3
    move v6, v0

    :goto_0
    new-array v7, v4, [F

    aput v6, v7, v1

    invoke-static {v3, v5, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    :cond_4
    iget-object v3, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->clearQuoteButton:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eqz v3, :cond_6

    .line 175
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 176
    iget-object v3, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->clearQuoteButton:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eqz p1, :cond_5

    move v6, v2

    goto :goto_1

    :cond_5
    move v6, v0

    :goto_1
    new-array v7, v4, [F

    aput v6, v7, v1

    invoke-static {v3, v5, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    :cond_6
    iget-object v3, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->replyAnotherChatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eqz v3, :cond_8

    .line 179
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 180
    iget-object v3, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->replyAnotherChatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-nez p1, :cond_7

    move v6, v2

    goto :goto_2

    :cond_7
    move v6, v0

    :goto_2
    new-array v7, v4, [F

    aput v6, v7, v1

    invoke-static {v3, v5, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    :cond_8
    iget-object v3, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->quoteAnotherChatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eqz v3, :cond_a

    .line 183
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 184
    iget-object v3, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->quoteAnotherChatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eqz p1, :cond_9

    move v0, v2

    :cond_9
    new-array v2, v4, [F

    aput v0, v2, v1

    invoke-static {v3, v5, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->quoteSwitcher:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 187
    iget-object p2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->quoteSwitcher:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0x168

    invoke-virtual {p2, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 188
    iget-object p2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->quoteSwitcher:Landroid/animation/AnimatorSet;

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 189
    iget-object p2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->quoteSwitcher:Landroid/animation/AnimatorSet;

    new-instance v0, Lorg/telegram/ui/Components/MessagePreviewView$Page$1;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/MessagePreviewView$Page$1;-><init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;Z)V

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 196
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->quoteSwitcher:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    .line 198
    :cond_b
    iget-object p2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->quoteButton:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    const/4 v3, 0x4

    if-eqz p2, :cond_e

    if-nez p1, :cond_c

    move v4, v2

    goto :goto_3

    :cond_c
    move v4, v0

    .line 199
    :goto_3
    invoke-virtual {p2, v4}, Landroid/view/View;->setAlpha(F)V

    .line 200
    iget-object p2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->quoteButton:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-nez p1, :cond_d

    move v4, v1

    goto :goto_4

    :cond_d
    move v4, v3

    :goto_4
    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 202
    :cond_e
    iget-object p2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->clearQuoteButton:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eqz p2, :cond_11

    if-eqz p1, :cond_f

    move v4, v2

    goto :goto_5

    :cond_f
    move v4, v0

    .line 203
    :goto_5
    invoke-virtual {p2, v4}, Landroid/view/View;->setAlpha(F)V

    .line 204
    iget-object p2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->clearQuoteButton:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eqz p1, :cond_10

    move v4, v1

    goto :goto_6

    :cond_10
    move v4, v3

    :goto_6
    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 206
    :cond_11
    iget-object p2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->replyAnotherChatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eqz p2, :cond_14

    if-nez p1, :cond_12

    move v4, v2

    goto :goto_7

    :cond_12
    move v4, v0

    .line 207
    :goto_7
    invoke-virtual {p2, v4}, Landroid/view/View;->setAlpha(F)V

    .line 208
    iget-object p2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->replyAnotherChatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-nez p1, :cond_13

    move v4, v1

    goto :goto_8

    :cond_13
    move v4, v3

    :goto_8
    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 210
    :cond_14
    iget-object p2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->quoteAnotherChatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eqz p2, :cond_17

    if-eqz p1, :cond_15

    move v0, v2

    .line 211
    :cond_15
    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    .line 212
    iget-object p2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->quoteAnotherChatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eqz p1, :cond_16

    goto :goto_9

    :cond_16
    move v1, v3

    :goto_9
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_17
    :goto_a
    return-void
.end method

.method private updateLinkHighlight(Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 2

    .line 1531
    iget v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->currentTab:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v0, v0, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean v1, v0, Lorg/telegram/messenger/MessagePreviewParams;->singleLink:Z

    if-nez v1, :cond_0

    iget-object v1, v0, Lorg/telegram/messenger/MessagePreviewParams;->currentLink:Landroid/text/style/CharacterStyle;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lorg/telegram/messenger/MessagePreviewParams;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    if-eqz v0, :cond_0

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_webPagePending;

    if-nez v0, :cond_0

    .line 1532
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->setHighlightedSpan(Landroid/text/style/CharacterStyle;)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1534
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->setHighlightedSpan(Landroid/text/style/CharacterStyle;)Z

    return-void
.end method

.method private updateMessages()V
    .locals 8

    .line 1280
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->itemAnimator:Landroidx/recyclerview/widget/ChatListItemAnimator;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/DefaultItemAnimator;->isRunning()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1281
    iput-boolean v1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->updateAfterAnimations:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    move v2, v0

    .line 1284
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->messages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    iget-object v3, v3, Lorg/telegram/messenger/MessagePreviewParams$Messages;->previewMessages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    if-ge v2, v3, :cond_8

    .line 1285
    iget-object v3, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->messages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    iget-object v3, v3, Lorg/telegram/messenger/MessagePreviewParams$Messages;->previewMessages:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject;

    .line 1286
    iput-boolean v1, v3, Lorg/telegram/messenger/MessageObject;->forceUpdate:Z

    .line 1287
    iget-object v5, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v6, v5, Lorg/telegram/ui/Components/MessagePreviewView;->sendAsPeer:Lorg/telegram/tgnet/TLRPC$Peer;

    iput-object v6, v3, Lorg/telegram/messenger/MessageObject;->sendAsPeer:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 1288
    iget-object v5, v5, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean v6, v5, Lorg/telegram/messenger/MessagePreviewParams;->hideForwardSendersName:Z

    if-nez v6, :cond_1

    .line 1289
    iget-object v6, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v7, v6, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit8 v7, v7, 0x4

    iput v7, v6, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 1290
    iput-boolean v0, v3, Lorg/telegram/messenger/MessageObject;->hideSendersName:Z

    goto :goto_1

    .line 1292
    :cond_1
    iget-object v6, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v7, v6, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    and-int/lit8 v7, v7, -0x5

    iput v7, v6, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 1293
    iput-boolean v1, v3, Lorg/telegram/messenger/MessageObject;->hideSendersName:Z

    .line 1295
    :goto_1
    iget v6, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->currentTab:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_4

    .line 1296
    iget-object v5, v5, Lorg/telegram/messenger/MessagePreviewParams;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    if-eqz v5, :cond_3

    iget-object v6, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v7, :cond_2

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    if-eq v7, v5, :cond_3

    .line 1297
    :cond_2
    iget v5, v6, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit16 v5, v5, 0x200

    iput v5, v6, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 1298
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;-><init>()V

    iput-object v5, v6, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 1299
    iget-object v5, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v6, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v6, v6, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-object v7, v6, Lorg/telegram/messenger/MessagePreviewParams;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iput-object v7, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    .line 1300
    iget-boolean v6, v6, Lorg/telegram/messenger/MessagePreviewParams;->webpageSmall:Z

    xor-int/lit8 v7, v6, 0x1

    iput-boolean v7, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->force_large_media:Z

    .line 1301
    iput-boolean v6, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->force_small_media:Z

    .line 1302
    iput-boolean v1, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->manual:Z

    .line 1303
    iput-object v4, v3, Lorg/telegram/messenger/MessageObject;->linkDescription:Ljava/lang/CharSequence;

    .line 1304
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->generateLinkDescription()V

    .line 1305
    iput-object v4, v3, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    .line 1306
    iput-object v4, v3, Lorg/telegram/messenger/MessageObject;->photoThumbs2:Ljava/util/ArrayList;

    .line 1307
    iput-object v4, v3, Lorg/telegram/messenger/MessageObject;->photoThumbsObject:Lorg/telegram/tgnet/TLObject;

    .line 1308
    iput-object v4, v3, Lorg/telegram/messenger/MessageObject;->photoThumbsObject2:Lorg/telegram/tgnet/TLObject;

    .line 1309
    invoke-virtual {v3, v1}, Lorg/telegram/messenger/MessageObject;->generateThumbs(Z)V

    .line 1310
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->checkMediaExistance()V

    goto :goto_2

    :cond_3
    if-nez v5, :cond_4

    .line 1312
    iget-object v5, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    and-int/lit16 v6, v6, -0x201

    iput v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 1313
    iput-object v4, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 1316
    :cond_4
    :goto_2
    iget-object v5, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v5, v5, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean v5, v5, Lorg/telegram/messenger/MessagePreviewParams;->hideCaption:Z

    if-eqz v5, :cond_5

    .line 1317
    iput-object v4, v3, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    goto :goto_3

    .line 1319
    :cond_5
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->generateCaption()V

    .line 1322
    :goto_3
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isPoll()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1323
    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    check-cast v3, Lorg/telegram/messenger/MessagePreviewParams$PreviewMediaPoll;

    .line 1324
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->results:Lorg/telegram/tgnet/TLRPC$PollResults;

    iget-object v5, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v5, v5, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean v5, v5, Lorg/telegram/messenger/MessagePreviewParams;->hideCaption:Z

    if-eqz v5, :cond_6

    move v3, v0

    goto :goto_4

    :cond_6
    iget v3, v3, Lorg/telegram/messenger/MessagePreviewParams$PreviewMediaPoll;->totalVotersCached:I

    :goto_4
    iput v3, v4, Lorg/telegram/tgnet/TLRPC$PollResults;->total_voters:I

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_8
    move v2, v0

    .line 1327
    :goto_5
    iget-object v3, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->messages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    iget-object v3, v3, Lorg/telegram/messenger/MessagePreviewParams$Messages;->pollChosenAnswers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_9

    .line 1328
    iget-object v3, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->messages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    iget-object v3, v3, Lorg/telegram/messenger/MessagePreviewParams$Messages;->pollChosenAnswers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_pollAnswerVoters;

    iget-object v5, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v5, v5, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean v5, v5, Lorg/telegram/messenger/MessagePreviewParams;->hideForwardSendersName:Z

    xor-int/2addr v5, v1

    iput-boolean v5, v3, Lorg/telegram/tgnet/TLRPC$TL_pollAnswerVoters;->chosen:Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_9
    move v1, v0

    .line 1330
    :goto_6
    iget-object v2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->messages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    iget-object v2, v2, Lorg/telegram/messenger/MessagePreviewParams$Messages;->groupedMessagesMap:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_a

    .line 1331
    iget-object v2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->itemAnimator:Landroidx/recyclerview/widget/ChatListItemAnimator;

    iget-object v3, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->messages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    iget-object v3, v3, Lorg/telegram/messenger/MessagePreviewParams$Messages;->groupedMessagesMap:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject$GroupedMessages;

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/ChatListItemAnimator;->groupWillChanged(Lorg/telegram/messenger/MessageObject$GroupedMessages;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1333
    :cond_a
    iget-object v1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v1

    .line 1334
    iget-object v2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 1335
    iget-object v2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->adapter:Lorg/telegram/ui/Components/MessagePreviewView$Page$Adapter;

    iget-object v3, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->messages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    iget-object v3, v3, Lorg/telegram/messenger/MessagePreviewParams$Messages;->previewMessages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    .line 1336
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda20;

    invoke-direct {v2, p0, v1}, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updatePositions()V
    .locals 10

    .line 1443
    iget v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatTopOffset:I

    .line 1444
    iget v1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->yOffset:F

    .line 1446
    iget-object v2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-boolean v2, v2, Lorg/telegram/ui/Components/MessagePreviewView;->isLandscapeMode:Z

    const/high16 v3, 0x41000000    # 8.0f

    const/4 v4, 0x0

    if-nez v2, :cond_6

    .line 1448
    iget-object v2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    move v5, v4

    move v6, v5

    .line 1449
    :goto_0
    iget-object v7, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    if-ge v5, v7, :cond_1

    .line 1450
    iget-object v7, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1451
    iget-object v8, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v8, v7}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_0

    .line 1452
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    add-int/lit8 v6, v6, 0x1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1456
    :cond_1
    iget-object v5, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->messages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    if-eqz v5, :cond_4

    if-eqz v6, :cond_4

    iget-object v5, v5, Lorg/telegram/messenger/MessagePreviewParams$Messages;->previewMessages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v6, v5, :cond_2

    goto :goto_1

    :cond_2
    const/high16 v5, 0x40800000    # 4.0f

    .line 1459
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v2, v5

    .line 1460
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatTopOffset:I

    .line 1461
    iget-object v5, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    iget v6, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatTopOffset:I

    sub-int/2addr v5, v6

    add-int/2addr v2, v5

    sget-object v5, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x23

    if-lt v6, v7, :cond_3

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->navigationBarHeight:I

    :cond_3
    sub-int/2addr v5, v4

    int-to-float v4, v5

    const v5, 0x3f4ccccd    # 0.8f

    mul-float/2addr v4, v5

    iget v5, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->buttonsHeight:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    float-to-int v4, v4

    sub-int/2addr v2, v4

    iget v4, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatTopOffset:I

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatTopOffset:I

    goto :goto_2

    .line 1457
    :cond_4
    :goto_1
    iput v4, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatTopOffset:I

    .line 1464
    :goto_2
    iget v2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->buttonsHeight:I

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v2, v4

    iget-object v4, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatPreviewContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    iget v5, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatTopOffset:I

    sub-int/2addr v4, v5

    add-int/2addr v2, v4

    int-to-float v2, v2

    .line 1465
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    const/high16 v5, 0x41800000    # 16.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    .line 1466
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v4, v2

    add-float/2addr v5, v4

    iget v2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatTopOffset:I

    int-to-float v2, v2

    sub-float/2addr v5, v2

    iput v5, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->yOffset:F

    .line 1467
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v5, v2

    if-lez v2, :cond_5

    .line 1468
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->yOffset:F

    .line 1470
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->menu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 1471
    iget-object v3, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->menu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v3, v2}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_3

    :cond_6
    const/4 v2, 0x0

    .line 1473
    iput v2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->yOffset:F

    .line 1474
    iput v4, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatTopOffset:I

    .line 1475
    iget-object v2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->menu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    iget-object v4, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v4, v3

    int-to-float v3, v4

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 1478
    :goto_3
    iget-boolean v2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->firstLayout:Z

    if-nez v2, :cond_9

    iget v3, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatTopOffset:I

    if-ne v3, v0, :cond_7

    iget v3, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->yOffset:F

    cmpl-float v3, v3, v1

    if-eqz v3, :cond_9

    .line 1479
    :cond_7
    iget-object v2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v2, v2, Lorg/telegram/ui/Components/MessagePreviewView;->offsetsAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_8

    .line 1480
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1482
    :cond_8
    iget-object v2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, v2, Lorg/telegram/ui/Components/MessagePreviewView;->offsetsAnimator:Landroid/animation/ValueAnimator;

    .line 1483
    iget-object v2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v2, v2, Lorg/telegram/ui/Components/MessagePreviewView;->offsetsAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda21;

    invoke-direct {v3, p0, v0, v1}, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;IF)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1489
    iget-object v2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v2, v2, Lorg/telegram/ui/Components/MessagePreviewView;->offsetsAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v3, 0xfa

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1490
    iget-object v2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v2, v2, Lorg/telegram/ui/Components/MessagePreviewView;->offsetsAnimator:Landroid/animation/ValueAnimator;

    sget-object v3, Landroidx/recyclerview/widget/ChatListItemAnimator;->DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1491
    iget-object v2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v2, v2, Lorg/telegram/ui/Components/MessagePreviewView;->offsetsAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lorg/telegram/ui/Components/MessagePreviewView$Page$15;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/MessagePreviewView$Page$15;-><init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1499
    iget-object v2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v2, v2, Lorg/telegram/ui/Components/MessagePreviewView;->changeBoundsRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x32

    invoke-static {v2, v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 1501
    iput v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->currentTopOffset:I

    .line 1502
    iput v1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->currentYOffset:F

    .line 1503
    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->setOffset(FI)V

    return-void

    :cond_9
    if-eqz v2, :cond_a

    .line 1505
    iget v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->yOffset:F

    iput v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->currentYOffset:F

    iget v1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatTopOffset:I

    iput v1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->currentTopOffset:I

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->setOffset(FI)V

    :cond_a
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updateSubtitle(Z)V
    .locals 6

    .line 1217
    iget v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->currentTab:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    .line 1218
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->actionBar:Lorg/telegram/ui/Components/MessagePreviewView$ActionBar;

    iget-object v2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v2, v2, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-object v2, v2, Lorg/telegram/messenger/MessagePreviewParams;->forwardMessages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    iget-object v2, v2, Lorg/telegram/messenger/MessagePreviewParams$Messages;->selectedIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    :goto_0
    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "PreviewForwardMessagesCount"

    invoke-static {v5, v2, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Lorg/telegram/ui/Components/MessagePreviewView$ActionBar;->setTitle(Ljava/lang/CharSequence;Z)V

    .line 1220
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v2, v0, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean v4, v2, Lorg/telegram/messenger/MessagePreviewParams;->hasSenders:Z

    const-string v5, "ForwardPreviewSendersNameVisible"

    if-nez v4, :cond_6

    .line 1221
    iget-boolean v2, v2, Lorg/telegram/messenger/MessagePreviewParams;->willSeeSenders:Z

    if-eqz v2, :cond_3

    .line 1222
    iget-object v2, v0, Lorg/telegram/ui/Components/MessagePreviewView;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v2, :cond_1

    .line 1223
    sget v0, Lorg/telegram/messenger/R$string;->ForwardPreviewSendersNameVisible:I

    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v4, v2}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v3

    invoke-static {v5, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 1225
    :cond_1
    iget-object v0, v0, Lorg/telegram/ui/Components/MessagePreviewView;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v0, v0, Lorg/telegram/ui/Components/MessagePreviewView;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v0, :cond_2

    .line 1226
    sget v0, Lorg/telegram/messenger/R$string;->ForwardPreviewSendersNameVisibleChannel:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 1228
    :cond_2
    sget v0, Lorg/telegram/messenger/R$string;->ForwardPreviewSendersNameVisibleGroup:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 1232
    :cond_3
    iget-object v2, v0, Lorg/telegram/ui/Components/MessagePreviewView;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v2, :cond_4

    .line 1233
    sget v0, Lorg/telegram/messenger/R$string;->ForwardPreviewSendersNameVisible:I

    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v4, v2}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v3

    invoke-static {v5, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 1235
    :cond_4
    iget-object v0, v0, Lorg/telegram/ui/Components/MessagePreviewView;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v0, v0, Lorg/telegram/ui/Components/MessagePreviewView;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v0, :cond_5

    .line 1236
    sget v0, Lorg/telegram/messenger/R$string;->ForwardPreviewSendersNameHiddenChannel:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 1238
    :cond_5
    sget v0, Lorg/telegram/messenger/R$string;->ForwardPreviewSendersNameHiddenGroup:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 1242
    :cond_6
    iget-boolean v2, v2, Lorg/telegram/messenger/MessagePreviewParams;->hideForwardSendersName:Z

    if-nez v2, :cond_9

    .line 1243
    iget-object v2, v0, Lorg/telegram/ui/Components/MessagePreviewView;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v2, :cond_7

    .line 1244
    sget v0, Lorg/telegram/messenger/R$string;->ForwardPreviewSendersNameVisible:I

    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v4, v2}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v3

    invoke-static {v5, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1246
    :cond_7
    iget-object v0, v0, Lorg/telegram/ui/Components/MessagePreviewView;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v0, v0, Lorg/telegram/ui/Components/MessagePreviewView;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v0, :cond_8

    .line 1247
    sget v0, Lorg/telegram/messenger/R$string;->ForwardPreviewSendersNameVisibleChannel:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1249
    :cond_8
    sget v0, Lorg/telegram/messenger/R$string;->ForwardPreviewSendersNameVisibleGroup:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1253
    :cond_9
    iget-object v2, v0, Lorg/telegram/ui/Components/MessagePreviewView;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v2, :cond_a

    .line 1254
    sget v0, Lorg/telegram/messenger/R$string;->ForwardPreviewSendersNameHidden:I

    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v4, v2}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v3

    const-string v2, "ForwardPreviewSendersNameHidden"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1256
    :cond_a
    iget-object v0, v0, Lorg/telegram/ui/Components/MessagePreviewView;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v0, v0, Lorg/telegram/ui/Components/MessagePreviewView;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v0, :cond_b

    .line 1257
    sget v0, Lorg/telegram/messenger/R$string;->ForwardPreviewSendersNameHiddenChannel:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1259
    :cond_b
    sget v0, Lorg/telegram/messenger/R$string;->ForwardPreviewSendersNameHiddenGroup:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1263
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->actionBar:Lorg/telegram/ui/Components/MessagePreviewView$ActionBar;

    invoke-virtual {v1, v0, p1}, Lorg/telegram/ui/Components/MessagePreviewView$ActionBar;->setSubtitle(Ljava/lang/CharSequence;Z)V

    return-void

    :cond_c
    if-nez v0, :cond_f

    .line 1265
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v0, v0, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-object v1, v0, Lorg/telegram/messenger/MessagePreviewParams;->quote:Lorg/telegram/ui/ChatActivity$ReplyQuote;

    if-eqz v1, :cond_d

    iget-object v0, v0, Lorg/telegram/messenger/MessagePreviewParams;->replyMessage:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    iget-boolean v0, v0, Lorg/telegram/messenger/MessagePreviewParams$Messages;->hasText:Z

    if-eqz v0, :cond_d

    .line 1266
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->actionBar:Lorg/telegram/ui/Components/MessagePreviewView$ActionBar;

    sget v1, Lorg/telegram/messenger/R$string;->PreviewQuoteUpdate:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Components/MessagePreviewView$ActionBar;->setTitle(Ljava/lang/CharSequence;Z)V

    .line 1267
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->actionBar:Lorg/telegram/ui/Components/MessagePreviewView$ActionBar;

    sget v1, Lorg/telegram/messenger/R$string;->PreviewQuoteUpdateSubtitle:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Components/MessagePreviewView$ActionBar;->setSubtitle(Ljava/lang/CharSequence;Z)V

    return-void

    .line 1269
    :cond_d
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->actionBar:Lorg/telegram/ui/Components/MessagePreviewView$ActionBar;

    sget v1, Lorg/telegram/messenger/R$string;->MessageOptionsReplyTitle:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Components/MessagePreviewView$ActionBar;->setTitle(Ljava/lang/CharSequence;Z)V

    .line 1270
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->actionBar:Lorg/telegram/ui/Components/MessagePreviewView$ActionBar;

    iget-object v1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v1, v1, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-object v1, v1, Lorg/telegram/messenger/MessagePreviewParams;->replyMessage:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    iget-boolean v1, v1, Lorg/telegram/messenger/MessagePreviewParams$Messages;->hasText:Z

    if-eqz v1, :cond_e

    sget v1, Lorg/telegram/messenger/R$string;->MessageOptionsReplySubtitle:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_e
    const-string v1, ""

    :goto_2
    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Components/MessagePreviewView$ActionBar;->setSubtitle(Ljava/lang/CharSequence;Z)V

    return-void

    :cond_f
    const/4 v1, 0x2

    if-ne v0, v1, :cond_10

    .line 1273
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->actionBar:Lorg/telegram/ui/Components/MessagePreviewView$ActionBar;

    sget v1, Lorg/telegram/messenger/R$string;->MessageOptionsLinkTitle:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Components/MessagePreviewView$ActionBar;->setTitle(Ljava/lang/CharSequence;Z)V

    .line 1274
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->actionBar:Lorg/telegram/ui/Components/MessagePreviewView$ActionBar;

    sget v1, Lorg/telegram/messenger/R$string;->MessageOptionsLinkSubtitle:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Components/MessagePreviewView$ActionBar;->setSubtitle(Ljava/lang/CharSequence;Z)V

    :cond_10
    return-void
.end method


# virtual methods
.method public bind()V
    .locals 1

    .line 1212
    invoke-direct {p0}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->updateMessages()V

    const/4 v0, 0x0

    .line 1213
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->updateSubtitle(Z)V

    return-void
.end method

.method public getReplyMessage()Lorg/telegram/messenger/MessageObject;
    .locals 1

    const/4 v0, 0x0

    .line 240
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->getReplyMessage(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    return-object v0
.end method

.method public getReplyMessage(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/messenger/MessageObject;
    .locals 2

    .line 244
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v0, v0, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-object v0, v0, Lorg/telegram/messenger/MessagePreviewParams;->replyMessage:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    if-eqz v0, :cond_3

    .line 245
    iget-object v0, v0, Lorg/telegram/messenger/MessagePreviewParams$Messages;->groupedMessagesMap:Landroid/util/LongSparseArray;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 246
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v0, v0, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-object v0, v0, Lorg/telegram/messenger/MessagePreviewParams;->replyMessage:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    iget-object v0, v0, Lorg/telegram/messenger/MessagePreviewParams$Messages;->groupedMessagesMap:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;

    if-eqz v0, :cond_2

    .line 248
    iget-boolean v1, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->isDocuments:Z

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    return-object p1

    .line 251
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object p1, p1, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-object p1, p1, Lorg/telegram/messenger/MessagePreviewParams;->quote:Lorg/telegram/ui/ChatActivity$ReplyQuote;

    if-eqz p1, :cond_1

    .line 252
    iget-object p1, p1, Lorg/telegram/ui/ChatActivity$ReplyQuote;->message:Lorg/telegram/messenger/MessageObject;

    return-object p1

    .line 255
    :cond_1
    iget-object p1, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->captionMessage:Lorg/telegram/messenger/MessageObject;

    return-object p1

    .line 258
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object p1, p1, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-object p1, p1, Lorg/telegram/messenger/MessagePreviewParams;->replyMessage:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    iget-object p1, p1, Lorg/telegram/messenger/MessagePreviewParams$Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public getReplyMessageCell()Lorg/telegram/ui/Cells/ChatMessageCell;
    .locals 6

    .line 225
    invoke-virtual {p0}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->getReplyMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v2, 0x0

    .line 229
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 230
    iget-object v3, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 231
    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_1

    .line 232
    :cond_1
    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    if-eq v4, v0, :cond_3

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v5

    if-ne v4, v5, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-object v3

    :cond_4
    return-object v1
.end method

.method public isReplyMessageCell(Lorg/telegram/ui/Cells/ChatMessageCell;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 218
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 219
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->getReplyMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    .line 221
    :cond_1
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    if-eq v2, v1, :cond_3

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    if-ne p1, v1, :cond_2

    goto :goto_0

    :cond_2
    return v0

    :cond_3
    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_1
    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 1434
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 1435
    iget v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->currentTab:I

    if-nez v0, :cond_0

    .line 1436
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda22;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;)V

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->forEachViews(Landroidx/recyclerview/widget/RecyclerView;Lcom/google/android/exoplayer2/util/Consumer;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1404
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 1405
    invoke-virtual {p0}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->updateSelection()V

    const/4 v0, 0x1

    .line 1406
    iput-boolean v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->firstAttach:Z

    .line 1407
    iput-boolean v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->firstLayout:Z

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1396
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    move-object p1, p0

    .line 1397
    invoke-direct {p0}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->updatePositions()V

    const/4 p2, 0x0

    .line 1398
    iput-boolean p2, p1, Lorg/telegram/ui/Components/MessagePreviewView$Page;->firstLayout:Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 8

    .line 1347
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-le v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    iput-boolean v1, v0, Lorg/telegram/ui/Components/MessagePreviewView;->isLandscapeMode:Z

    .line 1349
    iput v4, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->buttonsHeight:I

    .line 1350
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->menu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/view/View;->measure(II)V

    .line 1351
    iget v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->buttonsHeight:I

    iget-object v1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->menu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->rect:Landroid/graphics/Rect;

    iget v5, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v5

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->buttonsHeight:I

    .line 1353
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1354
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-boolean v0, v0, Lorg/telegram/ui/Components/MessagePreviewView;->isLandscapeMode:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    .line 1355
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatPreviewContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1356
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatPreviewContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    iput v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1357
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatPreviewContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1358
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatPreviewContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v5, 0x43aa0000    # 340.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    int-to-float v6, v6

    const v7, 0x3f19999a    # 0.6f

    mul-float/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->min(FF)F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1359
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->menu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1

    .line 1361
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatPreviewContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1362
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatPreviewContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1363
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatPreviewContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    const/high16 v5, 0x40c00000    # 6.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v2, v5

    iget v5, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->buttonsHeight:I

    sub-int/2addr v2, v5

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1364
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatPreviewContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v0, v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v2, v5

    cmpg-float v0, v0, v2

    if-gez v0, :cond_2

    .line 1365
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatPreviewContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v5

    float-to-int v2, v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1367
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatPreviewContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1368
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->menu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatPreviewContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1371
    :goto_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    add-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x10

    .line 1372
    iget v1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->lastSize:I

    if-eq v1, v0, :cond_6

    .line 1373
    :goto_2
    iget-object v1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->messages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    iget-object v1, v1, Lorg/telegram/messenger/MessagePreviewParams$Messages;->previewMessages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v4, v1, :cond_5

    .line 1374
    iget-object v1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-boolean v1, v1, Lorg/telegram/ui/Components/MessagePreviewView;->isLandscapeMode:Z

    if-eqz v1, :cond_3

    .line 1375
    iget-object v1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->messages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    iget-object v1, v1, Lorg/telegram/messenger/MessagePreviewParams$Messages;->previewMessages:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    iget-object v2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatPreviewContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v2, v1, Lorg/telegram/messenger/MessageObject;->parentWidth:I

    goto :goto_3

    .line 1377
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->messages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    iget-object v1, v1, Lorg/telegram/messenger/MessagePreviewParams$Messages;->previewMessages:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    const/high16 v5, 0x41800000    # 16.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v2, v5

    iput v2, v1, Lorg/telegram/messenger/MessageObject;->parentWidth:I

    .line 1379
    :goto_3
    iget-object v1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->messages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    iget-object v1, v1, Lorg/telegram/messenger/MessagePreviewParams$Messages;->previewMessages:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->resetLayout()V

    .line 1380
    iget-object v1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->messages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    iget-object v1, v1, Lorg/telegram/messenger/MessagePreviewParams$Messages;->previewMessages:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    iput-boolean v3, v1, Lorg/telegram/messenger/MessageObject;->forceUpdate:Z

    .line 1381
    iget-object v1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->adapter:Lorg/telegram/ui/Components/MessagePreviewView$Page$Adapter;

    if-eqz v1, :cond_4

    .line 1382
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1385
    :cond_5
    iput-boolean v3, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->firstLayout:Z

    .line 1387
    :cond_6
    iput v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->lastSize:I

    .line 1389
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public updateSelection()V
    .locals 4

    .line 1411
    iget v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->currentTab:I

    if-nez v0, :cond_4

    .line 1412
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;

    iget v1, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionEnd:I

    iget v0, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionStart:I

    sub-int/2addr v1, v0

    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    invoke-static {v0}, Lorg/telegram/ui/Components/MessagePreviewView;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Components/MessagePreviewView;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v0, v0, Lorg/telegram/messenger/MessagesController;->quoteLengthMax:I

    if-le v1, v0, :cond_0

    goto :goto_1

    .line 1416
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getSelectedCell()Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1417
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getSelectedCell()Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1419
    :goto_0
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->getReplyMessage(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    .line 1420
    iget-object v1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v1, v1, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-object v1, v1, Lorg/telegram/messenger/MessagePreviewParams;->quote:Lorg/telegram/ui/ChatActivity$ReplyQuote;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->isInSelectionMode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1421
    iget-object v1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v1, v1, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-object v2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;

    iget v3, v2, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionStart:I

    iput v3, v1, Lorg/telegram/messenger/MessagePreviewParams;->quoteStart:I

    .line 1422
    iget v2, v2, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionEnd:I

    iput v2, v1, Lorg/telegram/messenger/MessagePreviewParams;->quoteEnd:I

    if-eqz v0, :cond_3

    .line 1423
    iget-object v1, v1, Lorg/telegram/messenger/MessagePreviewParams;->quote:Lorg/telegram/ui/ChatActivity$ReplyQuote;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity$ReplyQuote;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    if-eq v1, v2, :cond_3

    .line 1424
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v1, v1, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget v2, v1, Lorg/telegram/messenger/MessagePreviewParams;->quoteStart:I

    iget v3, v1, Lorg/telegram/messenger/MessagePreviewParams;->quoteEnd:I

    invoke-static {v0, v2, v3}, Lorg/telegram/ui/ChatActivity$ReplyQuote;->from(Lorg/telegram/messenger/MessageObject;II)Lorg/telegram/ui/ChatActivity$ReplyQuote;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/messenger/MessagePreviewParams;->quote:Lorg/telegram/ui/ChatActivity$ReplyQuote;

    .line 1425
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/MessagePreviewView;->onQuoteSelectedPart()V

    .line 1428
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->clear()V

    :cond_4
    :goto_1
    return-void
.end method
