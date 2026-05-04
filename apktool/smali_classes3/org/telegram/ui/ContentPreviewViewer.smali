.class public Lorg/telegram/ui/ContentPreviewViewer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;,
        Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;,
        Lorg/telegram/ui/ContentPreviewViewer$StickerPackNameView;
    }
.end annotation


# static fields
.field private static volatile Instance:Lorg/telegram/ui/ContentPreviewViewer;

.field private static textPaint:Landroid/text/TextPaint;


# instance fields
.field private backgroundDrawable:Landroid/graphics/drawable/ColorDrawable;

.field private blurProgress:F

.field private blurrBitmap:Landroid/graphics/Bitmap;

.field public centerImage:Lorg/telegram/messenger/ImageReceiver;

.field private clearsInputField:Z

.field private closeOnDismiss:Z

.field private containerView:Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

.field private currentAccount:I

.field private currentContentType:I

.field private currentDocument:Lorg/telegram/tgnet/TLRPC$Document;

.field private currentMoveY:F

.field private currentMoveYProgress:F

.field private currentPreviewCell:Landroid/view/View;

.field private currentQuery:Ljava/lang/String;

.field private currentStickerSet:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

.field private delegate:Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

.field private drawEffect:Z

.field private effectImage:Lorg/telegram/messenger/ImageReceiver;

.field private finalMoveY:F

.field private importingSticker:Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;

.field private inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

.field private isPhotoEditor:Z

.field private isRecentSticker:Z

.field private isStickerEditor:Z

.field private isVisible:Z

.field private keyboardHeight:I

.field private lastInsets:Landroid/view/WindowInsets;

.field private lastTouchY:F

.field private lastUpdateTime:J

.field private menuVisible:Z

.field private moveY:F

.field private openPreviewRunnable:Ljava/lang/Runnable;

.field private paint:Landroid/graphics/Paint;

.field public paintingOverlay:Lorg/telegram/ui/Components/PaintingOverlay;

.field private paintingOverlayClipPath:Landroid/graphics/Path;

.field private parentActivity:Landroid/app/Activity;

.field private parentObject:Ljava/lang/Object;

.field private popupLayout:Landroid/view/View;

.field popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

.field private preparingBitmap:Z

.field private reactionsLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

.field private reactionsLayoutContainer:Landroid/widget/FrameLayout;

.field private resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private selectedEmojis:Ljava/util/ArrayList;

.field private showProgress:F

.field private final showSheetRunnable:Ljava/lang/Runnable;

.field private slideUpDrawable:Landroid/graphics/drawable/Drawable;

.field private startMoveY:F

.field private startX:I

.field private startY:I

.field private stickerEmojiLayout:Landroid/text/StaticLayout;

.field private stickerSetForCustomSticker:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

.field private unlockPremiumView:Lorg/telegram/ui/UnlockPremiumView;

.field private windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private windowView:Landroid/widget/FrameLayout;


# direct methods
.method public static synthetic $r8$lambda$FOSzuPAabnDuIYQU3U7AOqf8W4Y(Lorg/telegram/ui/ContentPreviewViewer;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ContentPreviewViewer;->lambda$prepareBlurBitmap$10(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HFDaK9BGMGwPuQEdRboRo-lc6iU(Lorg/telegram/ui/ContentPreviewViewer;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ContentPreviewViewer;->lambda$setParentActivity$6(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$KRCNL45Qq9yfZ6y69MT15esXZ3c(Lorg/telegram/ui/ContentPreviewViewer;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ContentPreviewViewer;->lambda$setParentActivity$7(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$PzikLvtjZR18wZ7QUF4AN50-g_s(Lorg/telegram/ui/Components/RecyclerListView;Ljava/lang/Object;)V
    .locals 1

    .line 1137
    invoke-static {p0}, Landroidx/activity/OnBackPressedDispatcher$$ExternalSyntheticNonNull0;->m(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1138
    check-cast p1, Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$SZmXJDFUafq_a70hn3R3jNAZ104(Lorg/telegram/ui/ContentPreviewViewer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ContentPreviewViewer;->lambda$onDraw$9()V

    return-void
.end method

.method public static synthetic $r8$lambda$Zxdt4dXTK0BfbEuDW_o4jyXb93U(Lorg/telegram/ui/ContentPreviewViewer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ContentPreviewViewer;->lambda$showEmojiSelectorForStickers$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$_AZ-0_yAeXqxQhWyF_AjQodiokQ(Lorg/telegram/ui/ContentPreviewViewer;Lorg/telegram/ui/Components/RecyclerListView;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ContentPreviewViewer;->lambda$onInterceptTouchEvent$5(Lorg/telegram/ui/Components/RecyclerListView;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bCS7d7n85e4UgkWn9jeBHK9Jfd4(Lorg/telegram/ui/ContentPreviewViewer;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ContentPreviewViewer;->lambda$showUnlockPremiumView$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bFL7VVABnHTCkWewXABA1LtTGKU(Lorg/telegram/ui/ContentPreviewViewer;Ljava/util/List;Lorg/telegram/tgnet/TLRPC$TL_messages_getMyStickers;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/ContentPreviewViewer;->lambda$getMyStickersRemote$12(Ljava/util/List;Lorg/telegram/tgnet/TLRPC$TL_messages_getMyStickers;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fJ7EHPR5d4Xb1fa8iQ9y4mNXQ0E(Lorg/telegram/ui/ContentPreviewViewer;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ContentPreviewViewer;->lambda$showUnlockPremiumView$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fqritYr1W6zToasgAgyMPxcOu44(Lorg/telegram/ui/ContentPreviewViewer;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Ljava/util/List;Lorg/telegram/tgnet/TLRPC$TL_messages_getMyStickers;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/ContentPreviewViewer;->lambda$getMyStickersRemote$11(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Ljava/util/List;Lorg/telegram/tgnet/TLRPC$TL_messages_getMyStickers;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rgVKIA8hMNs8q9vIilbNBpyDYIE(Lorg/telegram/ui/ContentPreviewViewer;Landroid/view/View;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;ZZ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/ContentPreviewViewer;->lambda$showEmojiSelectorForStickers$0(Landroid/view/View;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;ZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$sTPDl1QG7VS7YdHuyjwFWxJDqf8(Lorg/telegram/ui/ContentPreviewViewer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ContentPreviewViewer;->lambda$close$8()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetclearsInputField(Lorg/telegram/ui/ContentPreviewViewer;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/ContentPreviewViewer;->clearsInputField:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcloseOnDismiss(Lorg/telegram/ui/ContentPreviewViewer;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/ContentPreviewViewer;->closeOnDismiss:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcontainerView(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ContentPreviewViewer;->containerView:Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentAccount(Lorg/telegram/ui/ContentPreviewViewer;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ContentPreviewViewer;->currentAccount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentContentType(Lorg/telegram/ui/ContentPreviewViewer;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ContentPreviewViewer;->currentContentType:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentDocument(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/tgnet/TLRPC$Document;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ContentPreviewViewer;->currentDocument:Lorg/telegram/tgnet/TLRPC$Document;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentMoveYProgress(Lorg/telegram/ui/ContentPreviewViewer;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ContentPreviewViewer;->currentMoveYProgress:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentPreviewCell(Lorg/telegram/ui/ContentPreviewViewer;)Landroid/view/View;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ContentPreviewViewer;->currentPreviewCell:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentQuery(Lorg/telegram/ui/ContentPreviewViewer;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ContentPreviewViewer;->currentQuery:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentStickerSet(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/tgnet/TLRPC$InputStickerSet;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ContentPreviewViewer;->currentStickerSet:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdelegate(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ContentPreviewViewer;->delegate:Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdrawEffect(Lorg/telegram/ui/ContentPreviewViewer;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/ContentPreviewViewer;->drawEffect:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgeteffectImage(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/messenger/ImageReceiver;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ContentPreviewViewer;->effectImage:Lorg/telegram/messenger/ImageReceiver;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetfinalMoveY(Lorg/telegram/ui/ContentPreviewViewer;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ContentPreviewViewer;->finalMoveY:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetimportingSticker(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ContentPreviewViewer;->importingSticker:Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetinlineResult(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/tgnet/TLRPC$BotInlineResult;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ContentPreviewViewer;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetisPhotoEditor(Lorg/telegram/ui/ContentPreviewViewer;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/ContentPreviewViewer;->isPhotoEditor:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisRecentSticker(Lorg/telegram/ui/ContentPreviewViewer;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/ContentPreviewViewer;->isRecentSticker:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisStickerEditor(Lorg/telegram/ui/ContentPreviewViewer;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/ContentPreviewViewer;->isStickerEditor:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetkeyboardHeight(Lorg/telegram/ui/ContentPreviewViewer;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ContentPreviewViewer;->keyboardHeight:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlastInsets(Lorg/telegram/ui/ContentPreviewViewer;)Landroid/view/WindowInsets;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ContentPreviewViewer;->lastInsets:Landroid/view/WindowInsets;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmenuVisible(Lorg/telegram/ui/ContentPreviewViewer;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/ContentPreviewViewer;->menuVisible:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmoveY(Lorg/telegram/ui/ContentPreviewViewer;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ContentPreviewViewer;->moveY:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetparentActivity(Lorg/telegram/ui/ContentPreviewViewer;)Landroid/app/Activity;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ContentPreviewViewer;->parentActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetparentObject(Lorg/telegram/ui/ContentPreviewViewer;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ContentPreviewViewer;->parentObject:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpopupLayout(Lorg/telegram/ui/ContentPreviewViewer;)Landroid/view/View;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ContentPreviewViewer;->popupLayout:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetreactionsLayout(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/Components/ReactionsContainerLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ContentPreviewViewer;->reactionsLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetresourcesProvider(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ContentPreviewViewer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetselectedEmojis(Lorg/telegram/ui/ContentPreviewViewer;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ContentPreviewViewer;->selectedEmojis:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetstartMoveY(Lorg/telegram/ui/ContentPreviewViewer;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ContentPreviewViewer;->startMoveY:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetstickerEmojiLayout(Lorg/telegram/ui/ContentPreviewViewer;)Landroid/text/StaticLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ContentPreviewViewer;->stickerEmojiLayout:Landroid/text/StaticLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetstickerSetForCustomSticker(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ContentPreviewViewer;->stickerSetForCustomSticker:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputcloseOnDismiss(Lorg/telegram/ui/ContentPreviewViewer;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/ContentPreviewViewer;->closeOnDismiss:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputcurrentMoveYProgress(Lorg/telegram/ui/ContentPreviewViewer;F)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/ContentPreviewViewer;->currentMoveYProgress:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputcurrentPreviewCell(Lorg/telegram/ui/ContentPreviewViewer;Landroid/view/View;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer;->currentPreviewCell:Landroid/view/View;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputfinalMoveY(Lorg/telegram/ui/ContentPreviewViewer;F)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/ContentPreviewViewer;->finalMoveY:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmenuVisible(Lorg/telegram/ui/ContentPreviewViewer;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/ContentPreviewViewer;->menuVisible:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmoveY(Lorg/telegram/ui/ContentPreviewViewer;F)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/ContentPreviewViewer;->moveY:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputpopupLayout(Lorg/telegram/ui/ContentPreviewViewer;Landroid/view/View;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer;->popupLayout:Landroid/view/View;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputstartMoveY(Lorg/telegram/ui/ContentPreviewViewer;F)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/ContentPreviewViewer;->startMoveY:F

    return-void
.end method

.method static bridge synthetic -$$Nest$mdismissPopupWindow(Lorg/telegram/ui/ContentPreviewViewer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ContentPreviewViewer;->dismissPopupWindow()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetThemedColor(Lorg/telegram/ui/ContentPreviewViewer;I)I
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ContentPreviewViewer;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$monDraw(Lorg/telegram/ui/ContentPreviewViewer;Landroid/graphics/Canvas;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ContentPreviewViewer;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowEmojiSelectorForStickers(Lorg/telegram/ui/ContentPreviewViewer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ContentPreviewViewer;->showEmojiSelectorForStickers()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowUnlockPremiumView(Lorg/telegram/ui/ContentPreviewViewer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ContentPreviewViewer;->showUnlockPremiumView()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 283
    iput v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->moveY:F

    .line 303
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v1, 0x71000000

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->backgroundDrawable:Landroid/graphics/drawable/ColorDrawable;

    .line 309
    new-instance v0, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v0}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    .line 310
    new-instance v0, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v0}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->effectImage:Lorg/telegram/messenger/ImageReceiver;

    const/4 v0, 0x0

    .line 313
    iput-boolean v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->isVisible:Z

    const/high16 v0, 0x43480000    # 200.0f

    .line 317
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->keyboardHeight:I

    .line 322
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->paint:Landroid/graphics/Paint;

    .line 330
    new-instance v0, Lorg/telegram/ui/ContentPreviewViewer$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ContentPreviewViewer$1;-><init>(Lorg/telegram/ui/ContentPreviewViewer;)V

    iput-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->showSheetRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private dismissPopupWindow()V
    .locals 4

    .line 2217
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2218
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    .line 2219
    iput-object v1, p0, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    return-void

    .line 2220
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->popupLayout:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2221
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const v2, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v2, -0x3ec00000    # -12.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x140

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2222
    iput-object v1, p0, Lorg/telegram/ui/ContentPreviewViewer;->popupLayout:Landroid/view/View;

    const/4 v0, 0x0

    .line 2223
    iput-boolean v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->menuVisible:Z

    .line 2224
    iget-boolean v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->closeOnDismiss:Z

    if-eqz v0, :cond_1

    .line 2225
    invoke-virtual {p0}, Lorg/telegram/ui/ContentPreviewViewer;->close()V

    :cond_1
    return-void
.end method

.method public static getInstance()Lorg/telegram/ui/ContentPreviewViewer;
    .locals 2

    .line 1092
    sget-object v0, Lorg/telegram/ui/ContentPreviewViewer;->Instance:Lorg/telegram/ui/ContentPreviewViewer;

    if-nez v0, :cond_1

    .line 1094
    const-class v1, Lorg/telegram/ui/PhotoViewer;

    monitor-enter v1

    .line 1095
    :try_start_0
    sget-object v0, Lorg/telegram/ui/ContentPreviewViewer;->Instance:Lorg/telegram/ui/ContentPreviewViewer;

    if-nez v0, :cond_0

    .line 1097
    new-instance v0, Lorg/telegram/ui/ContentPreviewViewer;

    invoke-direct {v0}, Lorg/telegram/ui/ContentPreviewViewer;-><init>()V

    sput-object v0, Lorg/telegram/ui/ContentPreviewViewer;->Instance:Lorg/telegram/ui/ContentPreviewViewer;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 1099
    :cond_0
    :goto_0
    monitor-exit v1

    return-object v0

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    return-object v0
.end method

.method private getMyStickersRemote(Lorg/telegram/tgnet/TLRPC$TL_messages_getMyStickers;Ljava/util/List;)V
    .locals 2

    .line 2082
    iget v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/ContentPreviewViewer$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p2, p1}, Lorg/telegram/ui/ContentPreviewViewer$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/ContentPreviewViewer;Ljava/util/List;Lorg/telegram/tgnet/TLRPC$TL_messages_getMyStickers;)V

    invoke-virtual {v0, p1, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private getThemedColor(I)I
    .locals 1

    .line 2019
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    return p1
.end method

.method public static hasInstance()Z
    .locals 1

    .line 1105
    sget-object v0, Lorg/telegram/ui/ContentPreviewViewer;->Instance:Lorg/telegram/ui/ContentPreviewViewer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private synthetic lambda$close$8()V
    .locals 1

    const/4 v0, 0x0

    .line 1794
    iput-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-void
.end method

.method private synthetic lambda$getMyStickersRemote$11(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Ljava/util/List;Lorg/telegram/tgnet/TLRPC$TL_messages_getMyStickers;)V
    .locals 7

    if-eqz p1, :cond_0

    goto :goto_1

    .line 2086
    :cond_0
    instance-of p1, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_myStickers;

    if-eqz p1, :cond_4

    .line 2087
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_messages_myStickers;

    .line 2088
    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_myStickers;->sets:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :cond_1
    :goto_0
    const/4 v2, 0x1

    if-ge v1, v0, :cond_3

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    check-cast v3, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    .line 2089
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-boolean v5, v4, Lorg/telegram/tgnet/TLRPC$StickerSet;->emojis:Z

    if-nez v5, :cond_1

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$StickerSet;->masks:Z

    if-nez v4, :cond_1

    .line 2090
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;-><init>()V

    .line 2091
    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v5, v5, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    iput-wide v5, v4, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->id:J

    .line 2092
    iget v5, p0, Lorg/telegram/ui/ContentPreviewViewer;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v5

    invoke-virtual {v5, v4, v2}, Lorg/telegram/messenger/MediaDataController;->getStickerSet(Lorg/telegram/tgnet/TLRPC$InputStickerSet;Z)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 2093
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v4, 0x78

    if-ge v2, v4, :cond_1

    .line 2094
    :cond_2
    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2098
    :cond_3
    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_myStickers;->sets:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget v0, p4, Lorg/telegram/tgnet/TLRPC$TL_messages_getMyStickers;->limit:I

    if-ne p1, v0, :cond_4

    .line 2099
    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_myStickers;->sets:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    sub-int/2addr p2, v2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide p1, p1, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    iput-wide p1, p4, Lorg/telegram/tgnet/TLRPC$TL_messages_getMyStickers;->offset_id:J

    .line 2100
    invoke-direct {p0, p4, p3}, Lorg/telegram/ui/ContentPreviewViewer;->getMyStickersRemote(Lorg/telegram/tgnet/TLRPC$TL_messages_getMyStickers;Ljava/util/List;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private synthetic lambda$getMyStickersRemote$12(Ljava/util/List;Lorg/telegram/tgnet/TLRPC$TL_messages_getMyStickers;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 6

    .line 2082
    new-instance v0, Lorg/telegram/ui/ContentPreviewViewer$$ExternalSyntheticLambda9;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v3, p3

    move-object v2, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ContentPreviewViewer$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/ContentPreviewViewer;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Ljava/util/List;Lorg/telegram/tgnet/TLRPC$TL_messages_getMyStickers;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onDraw$9()V
    .locals 3

    .line 1993
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1994
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->paintingOverlay:Lorg/telegram/ui/Components/PaintingOverlay;

    if-eqz v0, :cond_0

    .line 1995
    invoke-virtual {v0}, Lorg/telegram/ui/Components/PaintingOverlay;->reset()V

    .line 1996
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->containerView:Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    iget-object v2, p0, Lorg/telegram/ui/ContentPreviewViewer;->paintingOverlay:Lorg/telegram/ui/Components/PaintingOverlay;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1997
    iput-object v1, p0, Lorg/telegram/ui/ContentPreviewViewer;->paintingOverlay:Lorg/telegram/ui/Components/PaintingOverlay;

    :cond_0
    return-void
.end method

.method private synthetic lambda$onInterceptTouchEvent$5(Lorg/telegram/ui/Components/RecyclerListView;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 12

    .line 1405
    iget-object v2, p0, Lorg/telegram/ui/ContentPreviewViewer;->openPreviewRunnable:Ljava/lang/Runnable;

    if-nez v2, :cond_0

    goto/16 :goto_5

    :cond_0
    const/4 v2, 0x0

    .line 1409
    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    const/4 v10, 0x1

    .line 1410
    invoke-virtual {p1, v10}, Landroidx/recyclerview/widget/RecyclerView;->requestDisallowInterceptTouchEvent(Z)V

    .line 1411
    iput-object v2, p0, Lorg/telegram/ui/ContentPreviewViewer;->openPreviewRunnable:Ljava/lang/Runnable;

    .line 1412
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->findActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ContentPreviewViewer;->setParentActivity(Landroid/app/Activity;)V

    const/4 v1, 0x0

    .line 1414
    iput-boolean v1, p0, Lorg/telegram/ui/ContentPreviewViewer;->clearsInputField:Z

    .line 1415
    iget-object v3, p0, Lorg/telegram/ui/ContentPreviewViewer;->currentPreviewCell:Landroid/view/View;

    instance-of v4, v3, Lorg/telegram/ui/Cells/StickerEmojiCell;

    if-eqz v4, :cond_2

    .line 1416
    move-object v11, v3

    check-cast v11, Lorg/telegram/ui/Cells/StickerEmojiCell;

    .line 1417
    invoke-virtual {v11}, Lorg/telegram/ui/Cells/StickerEmojiCell;->getSticker()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v3

    invoke-virtual {v11}, Lorg/telegram/ui/Cells/StickerEmojiCell;->getStickerPath()Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;

    move-result-object v4

    invoke-virtual {v11}, Lorg/telegram/ui/Cells/StickerEmojiCell;->getSticker()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v5

    iget v6, p0, Lorg/telegram/ui/ContentPreviewViewer;->currentAccount:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v2, v6}, Lorg/telegram/messenger/MessageObject;->findAnimatedEmojiEmoticon(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/ContentPreviewViewer;->delegate:Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    if-eqz v6, :cond_1

    invoke-interface {v6, v1}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->getQuery(Z)Ljava/lang/String;

    move-result-object v2

    :cond_1
    invoke-virtual {v11}, Lorg/telegram/ui/Cells/StickerEmojiCell;->isRecent()Z

    move-result v7

    invoke-virtual {v11}, Lorg/telegram/ui/Cells/StickerEmojiCell;->getParentObject()Ljava/lang/Object;

    move-result-object v8

    iget-object v9, p0, Lorg/telegram/ui/ContentPreviewViewer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object v1, v3

    move-object v3, v5

    const/4 v5, 0x0

    move-object v0, v4

    move-object v4, v2

    move-object v2, v0

    move-object v0, p0

    move v6, p2

    invoke-virtual/range {v0 .. v9}, Lorg/telegram/ui/ContentPreviewViewer;->open(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$BotInlineResult;IZLjava/lang/Object;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1419
    invoke-virtual {v11, v10}, Lorg/telegram/ui/Cells/StickerEmojiCell;->setScaled(Z)V

    goto/16 :goto_4

    .line 1420
    :cond_2
    instance-of v4, v3, Lorg/telegram/ui/Cells/StickerCell;

    if-eqz v4, :cond_4

    .line 1421
    move-object v11, v3

    check-cast v11, Lorg/telegram/ui/Cells/StickerCell;

    .line 1422
    invoke-virtual {v11}, Lorg/telegram/ui/Cells/StickerCell;->getSticker()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/ContentPreviewViewer;->delegate:Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    if-eqz v4, :cond_3

    invoke-interface {v4, v1}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->getQuery(Z)Ljava/lang/String;

    move-result-object v2

    :cond_3
    move-object v4, v2

    const/4 v7, 0x0

    invoke-virtual {v11}, Lorg/telegram/ui/Cells/StickerCell;->getParentObject()Ljava/lang/Object;

    move-result-object v8

    const/4 v2, 0x0

    move-object v1, v3

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v6, p2

    move-object v9, p3

    invoke-virtual/range {v0 .. v9}, Lorg/telegram/ui/ContentPreviewViewer;->open(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$BotInlineResult;IZLjava/lang/Object;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1424
    invoke-virtual {v11, v10}, Lorg/telegram/ui/Cells/StickerCell;->setScaled(Z)V

    .line 1425
    invoke-virtual {v11}, Lorg/telegram/ui/Cells/StickerCell;->isClearsInputField()Z

    move-result v1

    iput-boolean v1, p0, Lorg/telegram/ui/ContentPreviewViewer;->clearsInputField:Z

    goto/16 :goto_4

    .line 1426
    :cond_4
    instance-of v1, v3, Lorg/telegram/ui/Cells/ContextLinkCell;

    if-eqz v1, :cond_8

    .line 1427
    move-object v11, v3

    check-cast v11, Lorg/telegram/ui/Cells/ContextLinkCell;

    .line 1428
    invoke-virtual {v11}, Lorg/telegram/ui/Cells/ContextLinkCell;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v1

    iget-object v3, p0, Lorg/telegram/ui/ContentPreviewViewer;->delegate:Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    if-eqz v3, :cond_5

    invoke-interface {v3, v10}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->getQuery(Z)Ljava/lang/String;

    move-result-object v2

    :cond_5
    move-object v4, v2

    invoke-virtual {v11}, Lorg/telegram/ui/Cells/ContextLinkCell;->getBotInlineResult()Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    move-result-object v5

    invoke-virtual {v11}, Lorg/telegram/ui/Cells/ContextLinkCell;->getBotInlineResult()Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v11}, Lorg/telegram/ui/Cells/ContextLinkCell;->getInlineBot()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    :goto_0
    move-object v8, v2

    goto :goto_1

    :cond_6
    invoke-virtual {v11}, Lorg/telegram/ui/Cells/ContextLinkCell;->getParentObject()Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    :goto_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v6, p2

    move-object v9, p3

    invoke-virtual/range {v0 .. v9}, Lorg/telegram/ui/ContentPreviewViewer;->open(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$BotInlineResult;IZLjava/lang/Object;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    if-ne p2, v10, :cond_7

    .line 1430
    iget-boolean v1, p0, Lorg/telegram/ui/ContentPreviewViewer;->isPhotoEditor:Z

    if-eqz v1, :cond_e

    .line 1431
    :cond_7
    invoke-virtual {v11, v10}, Lorg/telegram/ui/Cells/ContextLinkCell;->setScaled(Z)V

    goto/16 :goto_4

    .line 1433
    :cond_8
    instance-of v1, v3, Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiImageView;

    if-eqz v1, :cond_9

    .line 1434
    check-cast v3, Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiImageView;

    .line 1435
    invoke-virtual {v3}, Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiImageView;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 1437
    iget v3, p0, Lorg/telegram/ui/ContentPreviewViewer;->currentAccount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/MessageObject;->findAnimatedEmojiEmoticon(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v6, p2

    move-object v9, p3

    invoke-virtual/range {v0 .. v9}, Lorg/telegram/ui/ContentPreviewViewer;->open(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$BotInlineResult;IZLjava/lang/Object;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto/16 :goto_4

    .line 1440
    :cond_9
    instance-of v1, v3, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    if-eqz v1, :cond_c

    .line 1441
    check-cast v3, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    .line 1442
    invoke-virtual {v3}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->getSpan()Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 1445
    iget-object v3, v1, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-nez v3, :cond_a

    .line 1447
    iget v3, p0, Lorg/telegram/ui/ContentPreviewViewer;->currentAccount:I

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->getDocumentId()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->findDocument(IJ)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v3

    :cond_a
    move-object v1, v3

    goto :goto_2

    :cond_b
    move-object v1, v2

    :goto_2
    if-eqz v1, :cond_f

    .line 1451
    iget v3, p0, Lorg/telegram/ui/ContentPreviewViewer;->currentAccount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/MessageObject;->findAnimatedEmojiEmoticon(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v6, p2

    move-object v9, p3

    invoke-virtual/range {v0 .. v9}, Lorg/telegram/ui/ContentPreviewViewer;->open(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$BotInlineResult;IZLjava/lang/Object;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto :goto_4

    .line 1454
    :cond_c
    instance-of v1, v3, Lorg/telegram/ui/Components/SuggestEmojiView$EmojiImageView;

    if-eqz v1, :cond_f

    .line 1455
    check-cast v3, Lorg/telegram/ui/Components/SuggestEmojiView$EmojiImageView;

    .line 1456
    iget-object v1, v3, Lorg/telegram/ui/Components/SuggestEmojiView$EmojiImageView;->drawable:Landroid/graphics/drawable/Drawable;

    .line 1458
    instance-of v3, v1, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v3, :cond_d

    .line 1459
    check-cast v1, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v1

    goto :goto_3

    :cond_d
    move-object v1, v2

    :goto_3
    if-eqz v1, :cond_f

    .line 1462
    iget v3, p0, Lorg/telegram/ui/ContentPreviewViewer;->currentAccount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/MessageObject;->findAnimatedEmojiEmoticon(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v6, p2

    move-object v9, p3

    invoke-virtual/range {v0 .. v9}, Lorg/telegram/ui/ContentPreviewViewer;->open(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$BotInlineResult;IZLjava/lang/Object;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1468
    :cond_e
    :goto_4
    :try_start_0
    iget-object v1, p0, Lorg/telegram/ui/ContentPreviewViewer;->currentPreviewCell:Landroid/view/View;

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ContentPreviewViewer;->runLongPressHaptic(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1470
    :catch_0
    iget-object v1, p0, Lorg/telegram/ui/ContentPreviewViewer;->delegate:Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    if-eqz v1, :cond_f

    .line 1471
    invoke-interface {v1}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->resetTouch()V

    :cond_f
    :goto_5
    return-void
.end method

.method private synthetic lambda$prepareBlurBitmap$10(Landroid/graphics/Bitmap;)V
    .locals 3

    .line 2031
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    .line 2032
    iput-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer;->blurrBitmap:Landroid/graphics/Bitmap;

    .line 2033
    iput-boolean v2, p0, Lorg/telegram/ui/ContentPreviewViewer;->preparingBitmap:Z

    .line 2034
    iget-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer;->containerView:Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    if-eqz p1, :cond_0

    .line 2035
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$setParentActivity$6(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    .line 1521
    iput-object p2, p0, Lorg/telegram/ui/ContentPreviewViewer;->lastInsets:Landroid/view/WindowInsets;

    return-object p2
.end method

.method private synthetic lambda$setParentActivity$7(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1544
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v1, 0x6

    if-eq p1, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_2

    .line 1545
    :cond_0
    iget-boolean p1, p0, Lorg/telegram/ui/ContentPreviewViewer;->isStickerEditor:Z

    if-eqz p1, :cond_1

    .line 1546
    invoke-virtual {p0}, Lorg/telegram/ui/ContentPreviewViewer;->closeWithMenu()V

    goto :goto_0

    .line 1548
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/ContentPreviewViewer;->close()V

    :cond_2
    :goto_0
    return v0
.end method

.method private synthetic lambda$showEmojiSelectorForStickers$0(Landroid/view/View;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;ZZ)V
    .locals 1

    if-nez p2, :cond_0

    goto :goto_1

    .line 1023
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer;->reactionsLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getReactionsWindow()Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    move-result-object p1

    .line 1024
    iget-object p3, p0, Lorg/telegram/ui/ContentPreviewViewer;->selectedEmojis:Ljava/util/ArrayList;

    iget-object p4, p2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p3

    const/4 p4, 0x0

    if-eqz p3, :cond_2

    .line 1025
    iget-object p3, p0, Lorg/telegram/ui/ContentPreviewViewer;->selectedEmojis:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    const/4 v0, 0x1

    if-gt p3, v0, :cond_1

    goto :goto_1

    .line 1028
    :cond_1
    iget-object p3, p0, Lorg/telegram/ui/ContentPreviewViewer;->selectedEmojis:Ljava/util/ArrayList;

    iget-object p2, p2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1030
    :cond_2
    iget-object p3, p0, Lorg/telegram/ui/ContentPreviewViewer;->selectedEmojis:Ljava/util/ArrayList;

    iget-object p2, p2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1031
    iget-object p2, p0, Lorg/telegram/ui/ContentPreviewViewer;->selectedEmojis:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 p3, 0x7

    if-le p2, p3, :cond_3

    .line 1032
    iget-object p2, p0, Lorg/telegram/ui/ContentPreviewViewer;->selectedEmojis:Ljava/util/ArrayList;

    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1035
    :cond_3
    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/ContentPreviewViewer;->reactionsLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget-object p3, p0, Lorg/telegram/ui/ContentPreviewViewer;->selectedEmojis:Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setSelectedEmojis(Ljava/util/ArrayList;)V

    if-eqz p1, :cond_5

    .line 1037
    iget-object p2, p0, Lorg/telegram/ui/ContentPreviewViewer;->reactionsLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    const/4 p3, 0x0

    invoke-virtual {p2, p3, p3, p4}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setMessage(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ChatFull;Z)V

    .line 1038
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->getSelectAnimatedEmojiDialog()Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 1039
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->getSelectAnimatedEmojiDialog()Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    move-result-object p2

    iget-object p3, p0, Lorg/telegram/ui/ContentPreviewViewer;->selectedEmojis:Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->setSelectedReactions(Ljava/util/ArrayList;)V

    .line 1040
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->getSelectAnimatedEmojiDialog()Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    move-result-object p2

    iget-object p3, p0, Lorg/telegram/ui/ContentPreviewViewer;->reactionsLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget-object p3, p3, Lorg/telegram/ui/Components/ReactionsContainerLayout;->allReactionsList:Ljava/util/List;

    invoke-virtual {p2, p3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->setRecentReactions(Ljava/util/List;)V

    .line 1042
    :cond_4
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->dismiss()V

    :cond_5
    :goto_1
    return-void
.end method

.method private synthetic lambda$showEmojiSelectorForStickers$1()V
    .locals 3

    .line 1049
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->reactionsLayoutContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1a4

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private synthetic lambda$showUnlockPremiumView$2(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    .line 1057
    iput-boolean p1, p0, Lorg/telegram/ui/ContentPreviewViewer;->menuVisible:Z

    .line 1058
    iget-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer;->containerView:Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 1059
    invoke-virtual {p0}, Lorg/telegram/ui/ContentPreviewViewer;->close()V

    return-void
.end method

.method private synthetic lambda$showUnlockPremiumView$3(Landroid/view/View;)V
    .locals 2

    .line 1062
    iget-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer;->parentActivity:Landroid/app/Activity;

    instance-of v0, p1, Lorg/telegram/ui/LaunchActivity;

    if-eqz v0, :cond_1

    .line 1063
    check-cast p1, Lorg/telegram/ui/LaunchActivity;

    .line 1064
    invoke-virtual {p1}, Lorg/telegram/ui/LaunchActivity;->getActionBarLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/telegram/ui/LaunchActivity;->getActionBarLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1065
    invoke-virtual {p1}, Lorg/telegram/ui/LaunchActivity;->getActionBarLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->dismissCurrentDialog()V

    .line 1067
    :cond_0
    new-instance v0, Lorg/telegram/ui/PremiumPreviewFragment;

    const/4 v1, 0x5

    invoke-static {v1}, Lorg/telegram/ui/PremiumPreviewFragment;->featureTypeToServerString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/PremiumPreviewFragment;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/LaunchActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    :cond_1
    const/4 p1, 0x0

    .line 1069
    iput-boolean p1, p0, Lorg/telegram/ui/ContentPreviewViewer;->menuVisible:Z

    .line 1070
    iget-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer;->containerView:Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 1071
    invoke-virtual {p0}, Lorg/telegram/ui/ContentPreviewViewer;->close()V

    return-void
.end method

.method private onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    .line 1850
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->containerView:Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->backgroundDrawable:Landroid/graphics/drawable/ColorDrawable;

    if-nez v0, :cond_0

    goto/16 :goto_7

    .line 1854
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->menuVisible:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->blurrBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 1855
    invoke-direct {p0}, Lorg/telegram/ui/ContentPreviewViewer;->prepareBlurBitmap()V

    .line 1858
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->blurrBitmap:Landroid/graphics/Bitmap;

    const/high16 v1, 0x437f0000    # 255.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-eqz v0, :cond_6

    .line 1859
    iget-boolean v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->menuVisible:Z

    const v4, 0x3e088889

    if-eqz v0, :cond_3

    iget v5, p0, Lorg/telegram/ui/ContentPreviewViewer;->blurProgress:F

    cmpl-float v6, v5, v2

    if-eqz v6, :cond_3

    add-float/2addr v5, v4

    .line 1860
    iput v5, p0, Lorg/telegram/ui/ContentPreviewViewer;->blurProgress:F

    cmpl-float v0, v5, v2

    if-lez v0, :cond_2

    .line 1862
    iput v2, p0, Lorg/telegram/ui/ContentPreviewViewer;->blurProgress:F

    .line 1864
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->containerView:Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_3
    if-nez v0, :cond_5

    .line 1865
    iget v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->blurProgress:F

    cmpl-float v5, v0, v3

    if-eqz v5, :cond_5

    sub-float/2addr v0, v4

    .line 1866
    iput v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->blurProgress:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_4

    .line 1868
    iput v3, p0, Lorg/telegram/ui/ContentPreviewViewer;->blurProgress:F

    .line 1870
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->containerView:Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 1873
    :cond_5
    :goto_0
    iget v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->blurProgress:F

    cmpl-float v4, v0, v3

    if-eqz v4, :cond_6

    iget-object v4, p0, Lorg/telegram/ui/ContentPreviewViewer;->blurrBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_6

    .line 1874
    iget-object v4, p0, Lorg/telegram/ui/ContentPreviewViewer;->paint:Landroid/graphics/Paint;

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1875
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v0, 0x41400000    # 12.0f

    .line 1876
    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1877
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    iget-object v4, p0, Lorg/telegram/ui/ContentPreviewViewer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    iget v4, p0, Lorg/telegram/ui/ContentPreviewViewer;->blurProgress:F

    invoke-static {v0, v4}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 1878
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->blurrBitmap:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lorg/telegram/ui/ContentPreviewViewer;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1879
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1883
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->backgroundDrawable:Landroid/graphics/drawable/ColorDrawable;

    const/high16 v4, 0x43340000    # 180.0f

    iget v5, p0, Lorg/telegram/ui/ContentPreviewViewer;->showProgress:F

    mul-float/2addr v5, v4

    float-to-int v4, v5

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    .line 1884
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->backgroundDrawable:Landroid/graphics/drawable/ColorDrawable;

    iget-object v4, p0, Lorg/telegram/ui/ContentPreviewViewer;->containerView:Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/ContentPreviewViewer;->containerView:Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v0, v6, v6, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1885
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->backgroundDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ColorDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1887
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1891
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->lastInsets:Landroid/view/WindowInsets;

    if-eqz v0, :cond_7

    .line 1892
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v0

    iget-object v4, p0, Lorg/telegram/ui/ContentPreviewViewer;->lastInsets:Landroid/view/WindowInsets;

    invoke-virtual {v4}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v4

    add-int/2addr v0, v4

    .line 1893
    iget-object v4, p0, Lorg/telegram/ui/ContentPreviewViewer;->lastInsets:Landroid/view/WindowInsets;

    invoke-virtual {v4}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v4

    goto :goto_1

    .line 1895
    :cond_7
    sget v4, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    move v0, v6

    .line 1898
    :goto_1
    iget v5, p0, Lorg/telegram/ui/ContentPreviewViewer;->currentContentType:I

    const/4 v7, 0x1

    const/high16 v8, 0x42200000    # 40.0f

    if-ne v5, v7, :cond_8

    .line 1899
    iget-object v5, p0, Lorg/telegram/ui/ContentPreviewViewer;->containerView:Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    iget-object v9, p0, Lorg/telegram/ui/ContentPreviewViewer;->containerView:Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    sub-int/2addr v9, v0

    invoke-static {v5, v9}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    sub-int/2addr v5, v9

    goto :goto_3

    .line 1901
    :cond_8
    iget-boolean v5, p0, Lorg/telegram/ui/ContentPreviewViewer;->drawEffect:Z

    if-eqz v5, :cond_9

    .line 1902
    iget-object v5, p0, Lorg/telegram/ui/ContentPreviewViewer;->containerView:Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    iget-object v9, p0, Lorg/telegram/ui/ContentPreviewViewer;->containerView:Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    sub-int/2addr v9, v0

    invoke-static {v5, v9}, Ljava/lang/Math;->min(II)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v9

    sub-float/2addr v5, v9

    :goto_2
    float-to-int v5, v5

    goto :goto_3

    .line 1904
    :cond_9
    iget-object v5, p0, Lorg/telegram/ui/ContentPreviewViewer;->containerView:Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    iget-object v9, p0, Lorg/telegram/ui/ContentPreviewViewer;->containerView:Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    sub-int/2addr v9, v0

    invoke-static {v5, v9}, Ljava/lang/Math;->min(II)I

    move-result v5

    int-to-float v5, v5

    const v9, 0x3fe66666    # 1.8f

    div-float/2addr v5, v9

    goto :goto_2

    .line 1907
    :goto_3
    div-int/lit8 v9, v5, 0x2

    add-int/2addr v9, v4

    iget-object v4, p0, Lorg/telegram/ui/ContentPreviewViewer;->stickerEmojiLayout:Landroid/text/StaticLayout;

    if-eqz v4, :cond_a

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    goto :goto_4

    :cond_a
    move v4, v6

    :goto_4
    add-int/2addr v9, v4

    iget-object v4, p0, Lorg/telegram/ui/ContentPreviewViewer;->containerView:Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int/2addr v4, v0

    iget v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->keyboardHeight:I

    sub-int/2addr v4, v0

    div-int/lit8 v4, v4, 0x2

    invoke-static {v9, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    .line 1908
    iget-boolean v4, p0, Lorg/telegram/ui/ContentPreviewViewer;->drawEffect:Z

    if-eqz v4, :cond_b

    .line 1909
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v0, v4

    .line 1911
    :cond_b
    iget-object v4, p0, Lorg/telegram/ui/ContentPreviewViewer;->containerView:Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget v8, p0, Lorg/telegram/ui/ContentPreviewViewer;->moveY:F

    add-float/2addr v8, v0

    invoke-virtual {p1, v4, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1912
    iget v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->showProgress:F

    const v4, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, v4

    div-float/2addr v0, v4

    int-to-float v4, v5

    mul-float/2addr v4, v0

    float-to-int v0, v4

    .line 1915
    iget v4, p0, Lorg/telegram/ui/ContentPreviewViewer;->currentContentType:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_c

    const/high16 v4, 0x428c0000    # 70.0f

    .line 1916
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1919
    :cond_c
    iget-boolean v4, p0, Lorg/telegram/ui/ContentPreviewViewer;->drawEffect:Z

    const/high16 v5, 0x40000000    # 2.0f

    if-eqz v4, :cond_d

    int-to-float v4, v0

    const v8, 0x3f2ab9f5    # 0.6669f

    mul-float/2addr v8, v4

    const/high16 v9, 0x3d600000    # 0.0546875f

    mul-float/2addr v9, v4

    .line 1922
    iget-object v10, p0, Lorg/telegram/ui/ContentPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    iget v11, p0, Lorg/telegram/ui/ContentPreviewViewer;->showProgress:F

    invoke-virtual {v10, v11}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 1923
    iget-object v10, p0, Lorg/telegram/ui/ContentPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    sub-float v11, v4, v8

    div-float v12, v4, v5

    sub-float v13, v11, v12

    sub-float/2addr v13, v9

    div-float/2addr v11, v5

    sub-float/2addr v11, v12

    invoke-virtual {v10, v13, v11, v8, v8}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    .line 1924
    iget-object v8, p0, Lorg/telegram/ui/ContentPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v8, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 1926
    iget-object v8, p0, Lorg/telegram/ui/ContentPreviewViewer;->effectImage:Lorg/telegram/messenger/ImageReceiver;

    iget v9, p0, Lorg/telegram/ui/ContentPreviewViewer;->showProgress:F

    invoke-virtual {v8, v9}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 1927
    iget-object v8, p0, Lorg/telegram/ui/ContentPreviewViewer;->effectImage:Lorg/telegram/messenger/ImageReceiver;

    neg-int v9, v0

    int-to-float v9, v9

    div-float/2addr v9, v5

    invoke-virtual {v8, v9, v9, v4, v4}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    .line 1928
    iget-object v4, p0, Lorg/telegram/ui/ContentPreviewViewer;->effectImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v4, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    goto :goto_5

    .line 1930
    :cond_d
    iget-object v4, p0, Lorg/telegram/ui/ContentPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    iget v8, p0, Lorg/telegram/ui/ContentPreviewViewer;->showProgress:F

    invoke-virtual {v4, v8}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 1931
    iget-object v4, p0, Lorg/telegram/ui/ContentPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    neg-int v8, v0

    int-to-float v8, v8

    div-float/2addr v8, v5

    int-to-float v9, v0

    invoke-virtual {v4, v8, v8, v9, v9}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    .line 1932
    iget-object v4, p0, Lorg/telegram/ui/ContentPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v4, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 1935
    :goto_5
    iget-object v4, p0, Lorg/telegram/ui/ContentPreviewViewer;->paintingOverlay:Lorg/telegram/ui/Components/PaintingOverlay;

    if-eqz v4, :cond_f

    .line 1936
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    neg-int v4, v0

    int-to-float v4, v4

    div-float/2addr v4, v5

    .line 1937
    invoke-virtual {p1, v4, v4}, Landroid/graphics/Canvas;->translate(FF)V

    int-to-float v0, v0

    .line 1938
    iget-object v4, p0, Lorg/telegram/ui/ContentPreviewViewer;->paintingOverlay:Lorg/telegram/ui/Components/PaintingOverlay;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v4, v0, v4

    iget-object v8, p0, Lorg/telegram/ui/ContentPreviewViewer;->paintingOverlay:Lorg/telegram/ui/Components/PaintingOverlay;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float v8, v0, v8

    invoke-virtual {p1, v4, v8}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1939
    iget-object v4, p0, Lorg/telegram/ui/ContentPreviewViewer;->paintingOverlay:Lorg/telegram/ui/Components/PaintingOverlay;

    iget v8, p0, Lorg/telegram/ui/ContentPreviewViewer;->showProgress:F

    invoke-virtual {v4, v8}, Lorg/telegram/ui/Components/PaintingOverlay;->setAlpha(F)V

    .line 1940
    iget-object v4, p0, Lorg/telegram/ui/ContentPreviewViewer;->paintingOverlayClipPath:Landroid/graphics/Path;

    if-nez v4, :cond_e

    .line 1941
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    iput-object v4, p0, Lorg/telegram/ui/ContentPreviewViewer;->paintingOverlayClipPath:Landroid/graphics/Path;

    .line 1943
    :cond_e
    iget-object v4, p0, Lorg/telegram/ui/ContentPreviewViewer;->paintingOverlayClipPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->rewind()V

    .line 1944
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget-object v8, p0, Lorg/telegram/ui/ContentPreviewViewer;->paintingOverlay:Lorg/telegram/ui/Components/PaintingOverlay;

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    iget-object v9, p0, Lorg/telegram/ui/ContentPreviewViewer;->paintingOverlay:Lorg/telegram/ui/Components/PaintingOverlay;

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v4, v3, v3, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1945
    iget-object v8, p0, Lorg/telegram/ui/ContentPreviewViewer;->paintingOverlayClipPath:Landroid/graphics/Path;

    const/high16 v9, 0x41000000    # 8.0f

    div-float/2addr v0, v9

    sget-object v9, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v8, v4, v0, v0, v9}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 1946
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->paintingOverlayClipPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 1947
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->paintingOverlay:Lorg/telegram/ui/Components/PaintingOverlay;

    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 1948
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1951
    :cond_f
    iget v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->currentContentType:I

    if-ne v0, v7, :cond_10

    iget-boolean v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->isPhotoEditor:Z

    if-nez v0, :cond_10

    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->slideUpDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_10

    .line 1952
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 1953
    iget-object v4, p0, Lorg/telegram/ui/ContentPreviewViewer;->slideUpDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 1954
    iget-object v7, p0, Lorg/telegram/ui/ContentPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v7}, Lorg/telegram/messenger/ImageReceiver;->getDrawRegion()Landroid/graphics/RectF;

    move-result-object v7

    iget v7, v7, Landroid/graphics/RectF;->top:F

    iget v8, p0, Lorg/telegram/ui/ContentPreviewViewer;->currentMoveY:F

    const/high16 v9, 0x42700000    # 60.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    const/high16 v9, 0x40c00000    # 6.0f

    mul-float/2addr v8, v9

    const/high16 v9, 0x41880000    # 17.0f

    add-float/2addr v8, v9

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v7, v8

    float-to-int v7, v7

    .line 1955
    iget-object v8, p0, Lorg/telegram/ui/ContentPreviewViewer;->slideUpDrawable:Landroid/graphics/drawable/Drawable;

    iget v9, p0, Lorg/telegram/ui/ContentPreviewViewer;->currentMoveYProgress:F

    sub-float v9, v2, v9

    mul-float/2addr v9, v1

    float-to-int v9, v9

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1956
    iget-object v8, p0, Lorg/telegram/ui/ContentPreviewViewer;->slideUpDrawable:Landroid/graphics/drawable/Drawable;

    neg-int v9, v0

    div-int/lit8 v9, v9, 0x2

    neg-int v4, v4

    add-int/2addr v4, v7

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v8, v9, v4, v0, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1957
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->slideUpDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1959
    :cond_10
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->stickerEmojiLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_12

    .line 1960
    iget-boolean v4, p0, Lorg/telegram/ui/ContentPreviewViewer;->drawEffect:Z

    const/high16 v7, 0x41f00000    # 30.0f

    if-eqz v4, :cond_11

    .line 1961
    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    div-float/2addr v0, v5

    iget-object v4, p0, Lorg/telegram/ui/ContentPreviewViewer;->effectImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()F

    move-result v4

    neg-float v4, v4

    div-float/2addr v4, v5

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {p1, v0, v4}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_6

    .line 1963
    :cond_11
    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    div-float/2addr v0, v5

    iget-object v4, p0, Lorg/telegram/ui/ContentPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()F

    move-result v4

    neg-float v4, v4

    div-float/2addr v4, v5

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {p1, v0, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1965
    :goto_6
    sget-object v0, Lorg/telegram/ui/ContentPreviewViewer;->textPaint:Landroid/text/TextPaint;

    iget v4, p0, Lorg/telegram/ui/ContentPreviewViewer;->showProgress:F

    mul-float/2addr v4, v1

    float-to-int v1, v4

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1966
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->stickerEmojiLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 1968
    :cond_12
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1969
    iget-boolean p1, p0, Lorg/telegram/ui/ContentPreviewViewer;->isVisible:Z

    const/high16 v0, 0x42f00000    # 120.0f

    if-eqz p1, :cond_13

    .line 1970
    iget p1, p0, Lorg/telegram/ui/ContentPreviewViewer;->showProgress:F

    cmpl-float p1, p1, v2

    if-eqz p1, :cond_16

    .line 1971
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1972
    iget-wide v5, p0, Lorg/telegram/ui/ContentPreviewViewer;->lastUpdateTime:J

    sub-long v5, v3, v5

    .line 1973
    iput-wide v3, p0, Lorg/telegram/ui/ContentPreviewViewer;->lastUpdateTime:J

    .line 1974
    iget p1, p0, Lorg/telegram/ui/ContentPreviewViewer;->showProgress:F

    long-to-float v1, v5

    div-float/2addr v1, v0

    add-float/2addr p1, v1

    iput p1, p0, Lorg/telegram/ui/ContentPreviewViewer;->showProgress:F

    .line 1975
    iget-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer;->containerView:Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 1976
    iget p1, p0, Lorg/telegram/ui/ContentPreviewViewer;->showProgress:F

    cmpl-float p1, p1, v2

    if-lez p1, :cond_16

    .line 1977
    iput v2, p0, Lorg/telegram/ui/ContentPreviewViewer;->showProgress:F

    return-void

    .line 1980
    :cond_13
    iget p1, p0, Lorg/telegram/ui/ContentPreviewViewer;->showProgress:F

    cmpl-float p1, p1, v3

    if-eqz p1, :cond_16

    .line 1981
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1982
    iget-wide v7, p0, Lorg/telegram/ui/ContentPreviewViewer;->lastUpdateTime:J

    sub-long v7, v4, v7

    .line 1983
    iput-wide v4, p0, Lorg/telegram/ui/ContentPreviewViewer;->lastUpdateTime:J

    .line 1984
    iget p1, p0, Lorg/telegram/ui/ContentPreviewViewer;->showProgress:F

    long-to-float v1, v7

    div-float/2addr v1, v0

    sub-float/2addr p1, v1

    iput p1, p0, Lorg/telegram/ui/ContentPreviewViewer;->showProgress:F

    .line 1985
    iget-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer;->containerView:Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 1986
    iget p1, p0, Lorg/telegram/ui/ContentPreviewViewer;->showProgress:F

    cmpg-float p1, p1, v3

    if-gez p1, :cond_14

    .line 1987
    iput v3, p0, Lorg/telegram/ui/ContentPreviewViewer;->showProgress:F

    .line 1989
    :cond_14
    iget p1, p0, Lorg/telegram/ui/ContentPreviewViewer;->showProgress:F

    cmpl-float p1, p1, v3

    if-nez p1, :cond_16

    .line 1990
    iget-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V

    .line 1991
    iget-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer;->parentActivity:Landroid/app/Activity;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->unlockOrientation(Landroid/app/Activity;)V

    .line 1992
    new-instance p1, Lorg/telegram/ui/ContentPreviewViewer$$ExternalSyntheticLambda11;

    invoke-direct {p1, p0}, Lorg/telegram/ui/ContentPreviewViewer$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/ContentPreviewViewer;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 2000
    iget-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer;->blurrBitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_15

    .line 2001
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 2002
    iput-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->blurrBitmap:Landroid/graphics/Bitmap;

    .line 2004
    :cond_15
    iget-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer;->unlockPremiumView:Lorg/telegram/ui/UnlockPremiumView;

    invoke-static {p1, v6, v2, v6}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    .line 2005
    iput v3, p0, Lorg/telegram/ui/ContentPreviewViewer;->blurProgress:F

    .line 2007
    :try_start_0
    iget-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_16

    .line 2008
    iget-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer;->parentActivity:Landroid/app/Activity;

    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 2009
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->windowView:Landroid/widget/FrameLayout;

    invoke-interface {p1, v0}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2012
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_16
    :goto_7
    return-void
.end method

.method private prepareBlurBitmap()V
    .locals 2

    .line 2025
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->parentActivity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->preparingBitmap:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 2028
    iput-boolean v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->preparingBitmap:Z

    .line 2029
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    .line 2030
    new-instance v0, Lorg/telegram/ui/ContentPreviewViewer$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ContentPreviewViewer$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/ContentPreviewViewer;)V

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->makeGlobalBlurBitmap(Lorg/telegram/messenger/Utilities$Callback;F)V

    :cond_1
    :goto_0
    return-void
.end method

.method private rubberYPoisition(FF)F
    .locals 2

    .line 1844
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3f0ccccd    # 0.55f

    mul-float/2addr v0, v1

    div-float/2addr v0, p2

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    div-float v0, v1, v0

    sub-float v0, v1, v0

    mul-float/2addr v0, p2

    neg-float p2, v0

    const/4 v0, 0x0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v1, -0x40800000    # -1.0f

    :goto_0
    mul-float/2addr p2, v1

    return p2
.end method

.method private showEmojiSelectorForStickers()V
    .locals 11

    .line 1000
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->reactionsLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1001
    new-instance v2, Lorg/telegram/ui/ContentPreviewViewer$2;

    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->containerView:Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iget-object v8, p0, Lorg/telegram/ui/ContentPreviewViewer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/ContentPreviewViewer$2;-><init>(Lorg/telegram/ui/ContentPreviewViewer;ILorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v2, v3, Lorg/telegram/ui/ContentPreviewViewer;->reactionsLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    const/4 v0, 0x1

    .line 1008
    iput-boolean v0, v2, Lorg/telegram/ui/Components/ReactionsContainerLayout;->skipEnterAnimation:Z

    const/high16 v0, 0x41b00000    # 22.0f

    .line 1009
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {v2, v1, v4, v1, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 1010
    iget-object v0, v3, Lorg/telegram/ui/ContentPreviewViewer;->reactionsLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 1011
    iget-object v0, v3, Lorg/telegram/ui/ContentPreviewViewer;->reactionsLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 1012
    iget-object v0, v3, Lorg/telegram/ui/ContentPreviewViewer;->reactionsLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1013
    iget-object v0, v3, Lorg/telegram/ui/ContentPreviewViewer;->reactionsLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    sget v2, Lorg/telegram/messenger/R$string;->StickersSetEmojiForSticker:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 1014
    iget-object v0, v3, Lorg/telegram/ui/ContentPreviewViewer;->reactionsLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    const/high16 v2, 0x42d20000    # 105.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setBubbleOffset(F)V

    .line 1015
    iget-object v0, v3, Lorg/telegram/ui/ContentPreviewViewer;->reactionsLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setMiniBubblesOffset(F)V

    .line 1016
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v2, v3, Lorg/telegram/ui/ContentPreviewViewer;->containerView:Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v3, Lorg/telegram/ui/ContentPreviewViewer;->reactionsLayoutContainer:Landroid/widget/FrameLayout;

    .line 1017
    iget-object v2, v3, Lorg/telegram/ui/ContentPreviewViewer;->reactionsLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v4, -0x2

    const/high16 v5, 0x42e80000    # 116.0f

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1018
    iget-object v0, v3, Lorg/telegram/ui/ContentPreviewViewer;->containerView:Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    iget-object v2, v3, Lorg/telegram/ui/ContentPreviewViewer;->reactionsLayoutContainer:Landroid/widget/FrameLayout;

    const/4 v4, -0x2

    const/high16 v5, -0x40000000    # -2.0f

    const/high16 v8, 0x42c80000    # 100.0f

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    move-object v3, p0

    .line 1020
    :goto_0
    iget-object v0, v3, Lorg/telegram/ui/ContentPreviewViewer;->reactionsLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget-object v2, v3, Lorg/telegram/ui/ContentPreviewViewer;->selectedEmojis:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setSelectedEmojis(Ljava/util/ArrayList;)V

    .line 1021
    iget-object v0, v3, Lorg/telegram/ui/ContentPreviewViewer;->reactionsLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    new-instance v2, Lorg/telegram/ui/ContentPreviewViewer$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ContentPreviewViewer$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ContentPreviewViewer;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setDelegate(Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;)V

    .line 1045
    iget-object v0, v3, Lorg/telegram/ui/ContentPreviewViewer;->reactionsLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setMessage(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ChatFull;Z)V

    .line 1046
    iget-object v0, v3, Lorg/telegram/ui/ContentPreviewViewer;->reactionsLayoutContainer:Landroid/widget/FrameLayout;

    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 1047
    iget-object v0, v3, Lorg/telegram/ui/ContentPreviewViewer;->reactionsLayoutContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 1048
    iget-object v0, v3, Lorg/telegram/ui/ContentPreviewViewer;->reactionsLayoutContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1049
    new-instance v0, Lorg/telegram/ui/ContentPreviewViewer$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ContentPreviewViewer$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ContentPreviewViewer;)V

    const-wide/16 v1, 0xa

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private showUnlockPremiumView()V
    .locals 5

    .line 1053
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->unlockPremiumView:Lorg/telegram/ui/UnlockPremiumView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1054
    new-instance v0, Lorg/telegram/ui/UnlockPremiumView;

    iget-object v2, p0, Lorg/telegram/ui/ContentPreviewViewer;->containerView:Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/ContentPreviewViewer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v2, v1, v3}, Lorg/telegram/ui/UnlockPremiumView;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->unlockPremiumView:Lorg/telegram/ui/UnlockPremiumView;

    .line 1055
    iget-object v2, p0, Lorg/telegram/ui/ContentPreviewViewer;->containerView:Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    const/4 v3, -0x1

    const/high16 v4, -0x40800000    # -1.0f

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1056
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->unlockPremiumView:Lorg/telegram/ui/UnlockPremiumView;

    new-instance v2, Lorg/telegram/ui/ContentPreviewViewer$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ContentPreviewViewer$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/ContentPreviewViewer;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1061
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->unlockPremiumView:Lorg/telegram/ui/UnlockPremiumView;

    iget-object v0, v0, Lorg/telegram/ui/UnlockPremiumView;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->buttonLayout:Landroid/widget/FrameLayout;

    new-instance v2, Lorg/telegram/ui/ContentPreviewViewer$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ContentPreviewViewer$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/ContentPreviewViewer;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1074
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->unlockPremiumView:Lorg/telegram/ui/UnlockPremiumView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2, v1}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    .line 1075
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->unlockPremiumView:Lorg/telegram/ui/UnlockPremiumView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;Z)V

    .line 1076
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->unlockPremiumView:Lorg/telegram/ui/UnlockPremiumView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method


# virtual methods
.method public clearDelegate(Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;)V
    .locals 1

    .line 1805
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->delegate:Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 1806
    iput-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer;->currentDocument:Lorg/telegram/tgnet/TLRPC$Document;

    .line 1807
    iput-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer;->currentStickerSet:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    .line 1808
    iput-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer;->currentQuery:Ljava/lang/String;

    .line 1809
    iput-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer;->delegate:Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    .line 1810
    iput-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 1811
    invoke-virtual {p0}, Lorg/telegram/ui/ContentPreviewViewer;->reset()V

    :cond_0
    return-void
.end method

.method public close()V
    .locals 6

    .line 1782
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->parentActivity:Landroid/app/Activity;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->menuVisible:Z

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 1785
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->showSheetRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1786
    iput v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->showProgress:F

    .line 1787
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->lastUpdateTime:J

    .line 1788
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->containerView:Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    const/4 v0, 0x0

    .line 1789
    iput-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->currentDocument:Lorg/telegram/tgnet/TLRPC$Document;

    .line 1790
    iput-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->currentStickerSet:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    .line 1791
    iput-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->currentQuery:Ljava/lang/String;

    .line 1792
    iput-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->delegate:Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    const/4 v0, 0x0

    .line 1793
    iput-boolean v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->isVisible:Z

    .line 1794
    new-instance v1, Lorg/telegram/ui/ContentPreviewViewer$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ContentPreviewViewer$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ContentPreviewViewer;)V

    const-wide/16 v2, 0xc8

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 1795
    iget-object v1, p0, Lorg/telegram/ui/ContentPreviewViewer;->unlockPremiumView:Lorg/telegram/ui/UnlockPremiumView;

    const-wide/16 v2, 0x96

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    .line 1796
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v5, 0x42600000    # 56.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v1, v5}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget-object v5, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1798
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/ContentPreviewViewer;->reactionsLayoutContainer:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_2

    .line 1799
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const v2, 0x3f19999a    # 0.6f

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1801
    :cond_2
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->startAllHeavyOperations:I

    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v0

    invoke-virtual {v1, v2, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public closeWithMenu()V
    .locals 2

    .line 1769
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->reactionsLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    if-eqz v0, :cond_0

    .line 1770
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getReactionsWindow()Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1771
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1772
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->dismiss()V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1776
    iput-boolean v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->menuVisible:Z

    .line 1777
    invoke-direct {p0}, Lorg/telegram/ui/ContentPreviewViewer;->dismissPopupWindow()V

    .line 1778
    invoke-virtual {p0}, Lorg/telegram/ui/ContentPreviewViewer;->close()V

    return-void
.end method

.method public createMyStickerPacksListView()Lorg/telegram/ui/Components/RecyclerListView;
    .locals 4

    .line 2107
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->parentActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2111
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2112
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_stickerSetNoCovered;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_stickerSetNoCovered;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2114
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getMyStickers;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messages_getMyStickers;-><init>()V

    const/16 v2, 0x64

    .line 2115
    iput v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getMyStickers;->limit:I

    .line 2116
    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/ContentPreviewViewer;->getMyStickersRemote(Lorg/telegram/tgnet/TLRPC$TL_messages_getMyStickers;Ljava/util/List;)V

    .line 2118
    new-instance v1, Lorg/telegram/ui/ContentPreviewViewer$5;

    iget-object v2, p0, Lorg/telegram/ui/ContentPreviewViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v1, p0, v2}, Lorg/telegram/ui/ContentPreviewViewer$5;-><init>(Lorg/telegram/ui/ContentPreviewViewer;Landroid/content/Context;)V

    .line 2129
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v3, p0, Lorg/telegram/ui/ContentPreviewViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 2130
    new-instance v2, Lorg/telegram/ui/ContentPreviewViewer$6;

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/ContentPreviewViewer$6;-><init>(Lorg/telegram/ui/ContentPreviewViewer;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 2139
    new-instance v2, Lorg/telegram/ui/ContentPreviewViewer$7;

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/ContentPreviewViewer$7;-><init>(Lorg/telegram/ui/ContentPreviewViewer;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-object v1
.end method

.method public destroy()V
    .locals 5

    const/4 v0, 0x0

    .line 1816
    iput-boolean v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->isVisible:Z

    const/4 v1, 0x0

    .line 1817
    iput-object v1, p0, Lorg/telegram/ui/ContentPreviewViewer;->delegate:Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    .line 1818
    iput-object v1, p0, Lorg/telegram/ui/ContentPreviewViewer;->currentDocument:Lorg/telegram/tgnet/TLRPC$Document;

    .line 1819
    iput-object v1, p0, Lorg/telegram/ui/ContentPreviewViewer;->currentQuery:Ljava/lang/String;

    .line 1820
    iput-object v1, p0, Lorg/telegram/ui/ContentPreviewViewer;->currentStickerSet:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    .line 1821
    iget-object v2, p0, Lorg/telegram/ui/ContentPreviewViewer;->parentActivity:Landroid/app/Activity;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/ContentPreviewViewer;->windowView:Landroid/widget/FrameLayout;

    if-nez v2, :cond_0

    goto :goto_3

    .line 1824
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/ContentPreviewViewer;->blurrBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    .line 1825
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 1826
    iput-object v1, p0, Lorg/telegram/ui/ContentPreviewViewer;->blurrBitmap:Landroid/graphics/Bitmap;

    :cond_1
    const/4 v2, 0x0

    .line 1828
    iput v2, p0, Lorg/telegram/ui/ContentPreviewViewer;->blurProgress:F

    .line 1829
    iput-boolean v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->menuVisible:Z

    .line 1831
    :try_start_0
    iget-object v2, p0, Lorg/telegram/ui/ContentPreviewViewer;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1832
    iget-object v2, p0, Lorg/telegram/ui/ContentPreviewViewer;->parentActivity:Landroid/app/Activity;

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 1833
    iget-object v3, p0, Lorg/telegram/ui/ContentPreviewViewer;->windowView:Landroid/widget/FrameLayout;

    invoke-interface {v2, v3}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1

    .line 1835
    :cond_2
    :goto_0
    iput-object v1, p0, Lorg/telegram/ui/ContentPreviewViewer;->windowView:Landroid/widget/FrameLayout;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1837
    :goto_1
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1839
    :goto_2
    sput-object v1, Lorg/telegram/ui/ContentPreviewViewer;->Instance:Lorg/telegram/ui/ContentPreviewViewer;

    .line 1840
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->startAllHeavyOperations:I

    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v0

    invoke-virtual {v1, v2, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_3
    :goto_3
    return-void
.end method

.method public isVisible()Z
    .locals 1

    .line 1765
    iget-boolean v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->isVisible:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;Lorg/telegram/ui/Components/RecyclerListView;ILorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Z
    .locals 7

    .line 1334
    iput-object p4, p0, Lorg/telegram/ui/ContentPreviewViewer;->delegate:Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    if-eqz p4, :cond_0

    .line 1336
    invoke-interface {p4}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->isPhotoEditor()Z

    move-result p3

    iput-boolean p3, p0, Lorg/telegram/ui/ContentPreviewViewer;->isPhotoEditor:Z

    .line 1337
    iget-object p3, p0, Lorg/telegram/ui/ContentPreviewViewer;->delegate:Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    invoke-interface {p3}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->isStickerEditor()Z

    move-result p3

    iput-boolean p3, p0, Lorg/telegram/ui/ContentPreviewViewer;->isStickerEditor:Z

    .line 1339
    :cond_0
    iget-object p3, p0, Lorg/telegram/ui/ContentPreviewViewer;->delegate:Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    const/4 p4, 0x0

    if-eqz p3, :cond_1

    invoke-interface {p3}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->can()Z

    move-result p3

    if-nez p3, :cond_1

    return p4

    .line 1342
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p3

    if-nez p3, :cond_d

    .line 1343
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p3

    float-to-int p3, p3

    .line 1344
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    .line 1345
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    move v1, p4

    :goto_0
    if-ge v1, v0, :cond_d

    .line 1349
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_2

    return p4

    .line 1354
    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    .line 1355
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v4

    .line 1356
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v5

    .line 1357
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v6

    if-gt v3, p1, :cond_c

    if-lt v4, p1, :cond_c

    if-gt v5, p3, :cond_c

    if-ge v6, p3, :cond_3

    goto/16 :goto_4

    .line 1362
    :cond_3
    instance-of v0, v2, Lorg/telegram/ui/Cells/StickerEmojiCell;

    const/4 v1, -0x1

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    .line 1363
    move-object v0, v2

    check-cast v0, Lorg/telegram/ui/Cells/StickerEmojiCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/StickerEmojiCell;->showingBitmap()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1365
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p4}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    :goto_1
    move v0, p4

    goto/16 :goto_3

    .line 1367
    :cond_4
    instance-of v0, v2, Lorg/telegram/ui/Cells/StickerCell;

    if-eqz v0, :cond_5

    .line 1368
    move-object v0, v2

    check-cast v0, Lorg/telegram/ui/Cells/StickerCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/StickerCell;->showingBitmap()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1370
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p4}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    goto :goto_1

    .line 1372
    :cond_5
    instance-of v0, v2, Lorg/telegram/ui/Cells/ContextLinkCell;

    if-eqz v0, :cond_7

    .line 1373
    move-object v0, v2

    check-cast v0, Lorg/telegram/ui/Cells/ContextLinkCell;

    .line 1374
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ContextLinkCell;->showingBitmap()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1375
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ContextLinkCell;->isSticker()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1377
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p4}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    goto :goto_1

    .line 1378
    :cond_6
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ContextLinkCell;->isGif()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1380
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    const/high16 v4, 0x40c00000    # 6.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    move v0, v3

    goto :goto_3

    .line 1383
    :cond_7
    instance-of v0, v2, Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiImageView;

    const/4 v4, 0x2

    if-eqz v0, :cond_8

    .line 1385
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p4}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    :goto_2
    move v0, v4

    goto :goto_3

    .line 1386
    :cond_8
    instance-of v0, v2, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    if-eqz v0, :cond_9

    move-object v0, v2

    check-cast v0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->getSpan()Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 1388
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p4}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    goto :goto_2

    .line 1389
    :cond_9
    instance-of v0, v2, Lorg/telegram/ui/Components/SuggestEmojiView$EmojiImageView;

    if-eqz v0, :cond_a

    .line 1390
    move-object v0, v2

    check-cast v0, Lorg/telegram/ui/Components/SuggestEmojiView$EmojiImageView;

    .line 1391
    iget-object v0, v0, Lorg/telegram/ui/Components/SuggestEmojiView$EmojiImageView;->drawable:Landroid/graphics/drawable/Drawable;

    .line 1392
    instance-of v0, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v0, :cond_a

    .line 1394
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p4}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    goto :goto_2

    :cond_a
    move v0, v1

    :goto_3
    if-ne v0, v1, :cond_b

    return p4

    .line 1400
    :cond_b
    iput p3, p0, Lorg/telegram/ui/ContentPreviewViewer;->startX:I

    .line 1401
    iput p1, p0, Lorg/telegram/ui/ContentPreviewViewer;->startY:I

    .line 1402
    iput-object v2, p0, Lorg/telegram/ui/ContentPreviewViewer;->currentPreviewCell:Landroid/view/View;

    .line 1404
    new-instance p1, Lorg/telegram/ui/ContentPreviewViewer$$ExternalSyntheticLambda10;

    invoke-direct {p1, p0, p2, v0, p5}, Lorg/telegram/ui/ContentPreviewViewer$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/ContentPreviewViewer;Lorg/telegram/ui/Components/RecyclerListView;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer;->openPreviewRunnable:Ljava/lang/Runnable;

    const-wide/16 p2, 0xc8

    .line 1475
    invoke-static {p1, p2, p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return v3

    :cond_c
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_d
    return p4
.end method

.method public onTouch(Landroid/view/MotionEvent;Lorg/telegram/ui/Components/RecyclerListView;ILjava/lang/Object;Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Z
    .locals 15

    move-object/from16 v1, p2

    move-object/from16 v2, p5

    .line 1126
    iput-object v2, p0, Lorg/telegram/ui/ContentPreviewViewer;->delegate:Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    if-eqz v2, :cond_0

    .line 1128
    invoke-interface {v2}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->isPhotoEditor()Z

    move-result v2

    iput-boolean v2, p0, Lorg/telegram/ui/ContentPreviewViewer;->isPhotoEditor:Z

    .line 1129
    iget-object v2, p0, Lorg/telegram/ui/ContentPreviewViewer;->delegate:Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    invoke-interface {v2}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->isStickerEditor()Z

    move-result v2

    iput-boolean v2, p0, Lorg/telegram/ui/ContentPreviewViewer;->isStickerEditor:Z

    .line 1131
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/ContentPreviewViewer;->delegate:Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->can()Z

    move-result v2

    if-nez v2, :cond_1

    return v3

    .line 1134
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/ContentPreviewViewer;->openPreviewRunnable:Ljava/lang/Runnable;

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lorg/telegram/ui/ContentPreviewViewer;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 1135
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v10, 0x1

    const/4 v4, 0x0

    if-eq v2, v10, :cond_2b

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v5, 0x3

    if-eq v2, v5, :cond_2b

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v5, 0x6

    if-ne v2, v5, :cond_3

    goto/16 :goto_e

    .line 1157
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eqz v2, :cond_30

    .line 1158
    iget-boolean v2, p0, Lorg/telegram/ui/ContentPreviewViewer;->isVisible:Z

    const/4 v5, 0x2

    if-eqz v2, :cond_29

    .line 1159
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v5, :cond_28

    .line 1160
    iget v2, p0, Lorg/telegram/ui/ContentPreviewViewer;->currentContentType:I

    if-ne v2, v10, :cond_8

    iget-boolean v2, p0, Lorg/telegram/ui/ContentPreviewViewer;->isPhotoEditor:Z

    if-nez v2, :cond_8

    .line 1161
    iget-boolean v1, p0, Lorg/telegram/ui/ContentPreviewViewer;->menuVisible:Z

    if-nez v1, :cond_7

    iget v1, p0, Lorg/telegram/ui/ContentPreviewViewer;->showProgress:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_7

    .line 1162
    iget v1, p0, Lorg/telegram/ui/ContentPreviewViewer;->lastTouchY:F

    const v2, -0x39e3c000    # -10000.0f

    cmpl-float v1, v1, v2

    const/4 v2, 0x0

    if-nez v1, :cond_4

    .line 1163
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lorg/telegram/ui/ContentPreviewViewer;->lastTouchY:F

    .line 1164
    iput v2, p0, Lorg/telegram/ui/ContentPreviewViewer;->currentMoveY:F

    .line 1165
    iput v2, p0, Lorg/telegram/ui/ContentPreviewViewer;->moveY:F

    goto :goto_1

    .line 1167
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 1168
    iget v3, p0, Lorg/telegram/ui/ContentPreviewViewer;->currentMoveY:F

    iget v4, p0, Lorg/telegram/ui/ContentPreviewViewer;->lastTouchY:F

    sub-float v4, v1, v4

    add-float/2addr v3, v4

    iput v3, p0, Lorg/telegram/ui/ContentPreviewViewer;->currentMoveY:F

    .line 1169
    iput v1, p0, Lorg/telegram/ui/ContentPreviewViewer;->lastTouchY:F

    cmpl-float v1, v3, v2

    if-lez v1, :cond_5

    .line 1171
    iput v2, p0, Lorg/telegram/ui/ContentPreviewViewer;->currentMoveY:F

    goto :goto_0

    :cond_5
    const/high16 v1, 0x42700000    # 60.0f

    .line 1172
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    cmpg-float v2, v3, v2

    if-gez v2, :cond_6

    .line 1173
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    iput v1, p0, Lorg/telegram/ui/ContentPreviewViewer;->currentMoveY:F

    .line 1175
    :cond_6
    :goto_0
    iget v1, p0, Lorg/telegram/ui/ContentPreviewViewer;->currentMoveY:F

    const/high16 v2, 0x43480000    # 200.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-direct {p0, v1, v2}, Lorg/telegram/ui/ContentPreviewViewer;->rubberYPoisition(FF)F

    move-result v1

    iput v1, p0, Lorg/telegram/ui/ContentPreviewViewer;->moveY:F

    .line 1176
    iget-object v1, p0, Lorg/telegram/ui/ContentPreviewViewer;->containerView:Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 1177
    iget v1, p0, Lorg/telegram/ui/ContentPreviewViewer;->currentMoveY:F

    const/high16 v2, 0x425c0000    # 55.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_7

    .line 1178
    iget-object v1, p0, Lorg/telegram/ui/ContentPreviewViewer;->showSheetRunnable:Ljava/lang/Runnable;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1179
    iget-object v1, p0, Lorg/telegram/ui/ContentPreviewViewer;->showSheetRunnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :cond_7
    :goto_1
    return v10

    .line 1186
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    .line 1187
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    .line 1188
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    move v8, v3

    :goto_2
    if-ge v8, v7, :cond_28

    .line 1192
    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    if-nez v9, :cond_9

    return v3

    .line 1197
    :cond_9
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v11

    .line 1198
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v12

    .line 1199
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v13

    .line 1200
    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v14

    if-gt v11, v6, :cond_27

    if-lt v12, v6, :cond_27

    if-gt v13, v2, :cond_27

    if-ge v14, v2, :cond_a

    goto/16 :goto_c

    .line 1205
    :cond_a
    instance-of v1, v9, Lorg/telegram/ui/Cells/StickerEmojiCell;

    const/4 v2, -0x1

    if-eqz v1, :cond_b

    .line 1207
    iget-object v1, p0, Lorg/telegram/ui/ContentPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    :goto_3
    move v6, v3

    goto :goto_5

    .line 1208
    :cond_b
    instance-of v1, v9, Lorg/telegram/ui/Cells/StickerCell;

    if-eqz v1, :cond_c

    .line 1210
    iget-object v1, p0, Lorg/telegram/ui/ContentPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    goto :goto_3

    .line 1211
    :cond_c
    instance-of v1, v9, Lorg/telegram/ui/Cells/ContextLinkCell;

    if-eqz v1, :cond_f

    .line 1212
    move-object v1, v9

    check-cast v1, Lorg/telegram/ui/Cells/ContextLinkCell;

    .line 1213
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ContextLinkCell;->isSticker()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 1215
    iget-object v1, p0, Lorg/telegram/ui/ContentPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    move v5, v3

    goto :goto_4

    .line 1216
    :cond_d
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ContextLinkCell;->isGif()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1218
    iget-object v1, p0, Lorg/telegram/ui/ContentPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    const/high16 v5, 0x40c00000    # 6.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v1, v5}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    move v5, v10

    goto :goto_4

    :cond_e
    move v5, v2

    :goto_4
    move v6, v5

    goto :goto_5

    .line 1220
    :cond_f
    instance-of v1, v9, Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiImageView;

    if-eqz v1, :cond_10

    .line 1222
    iget-object v1, p0, Lorg/telegram/ui/ContentPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    goto :goto_4

    .line 1223
    :cond_10
    instance-of v1, v9, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    if-eqz v1, :cond_11

    move-object v1, v9

    check-cast v1, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->getSpan()Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 1225
    iget-object v1, p0, Lorg/telegram/ui/ContentPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    goto :goto_4

    :cond_11
    move v6, v2

    :goto_5
    if-eq v6, v2, :cond_28

    .line 1227
    iget-object v1, p0, Lorg/telegram/ui/ContentPreviewViewer;->currentPreviewCell:Landroid/view/View;

    if-ne v9, v1, :cond_12

    goto/16 :goto_d

    .line 1230
    :cond_12
    iget-object v1, p0, Lorg/telegram/ui/ContentPreviewViewer;->delegate:Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    if-eqz v1, :cond_13

    .line 1231
    invoke-interface {v1}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->resetTouch()V

    .line 1233
    :cond_13
    iget-object v1, p0, Lorg/telegram/ui/ContentPreviewViewer;->currentPreviewCell:Landroid/view/View;

    instance-of v2, v1, Lorg/telegram/ui/Cells/StickerEmojiCell;

    if-eqz v2, :cond_14

    .line 1234
    check-cast v1, Lorg/telegram/ui/Cells/StickerEmojiCell;

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Cells/StickerEmojiCell;->setScaled(Z)V

    goto :goto_6

    .line 1235
    :cond_14
    instance-of v2, v1, Lorg/telegram/ui/Cells/StickerCell;

    if-eqz v2, :cond_15

    .line 1236
    check-cast v1, Lorg/telegram/ui/Cells/StickerCell;

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Cells/StickerCell;->setScaled(Z)V

    goto :goto_6

    .line 1237
    :cond_15
    instance-of v2, v1, Lorg/telegram/ui/Cells/ContextLinkCell;

    if-eqz v2, :cond_16

    .line 1238
    check-cast v1, Lorg/telegram/ui/Cells/ContextLinkCell;

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Cells/ContextLinkCell;->setScaled(Z)V

    .line 1240
    :cond_16
    :goto_6
    iput-boolean v3, p0, Lorg/telegram/ui/ContentPreviewViewer;->clearsInputField:Z

    .line 1241
    iput-boolean v3, p0, Lorg/telegram/ui/ContentPreviewViewer;->menuVisible:Z

    .line 1242
    iput-boolean v3, p0, Lorg/telegram/ui/ContentPreviewViewer;->closeOnDismiss:Z

    .line 1243
    invoke-direct {p0}, Lorg/telegram/ui/ContentPreviewViewer;->dismissPopupWindow()V

    .line 1244
    iget-object v1, p0, Lorg/telegram/ui/ContentPreviewViewer;->unlockPremiumView:Lorg/telegram/ui/UnlockPremiumView;

    invoke-static {v1, v3}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;Z)V

    .line 1245
    iput-object v9, p0, Lorg/telegram/ui/ContentPreviewViewer;->currentPreviewCell:Landroid/view/View;

    .line 1246
    instance-of v1, v9, Lorg/telegram/ui/Cells/StickerEmojiCell;

    if-eqz v1, :cond_18

    .line 1247
    move-object v11, v9

    check-cast v11, Lorg/telegram/ui/Cells/StickerEmojiCell;

    .line 1248
    invoke-virtual {v11}, Lorg/telegram/ui/Cells/StickerEmojiCell;->getSticker()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v1

    invoke-virtual {v11}, Lorg/telegram/ui/Cells/StickerEmojiCell;->getStickerPath()Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;

    move-result-object v2

    invoke-virtual {v11}, Lorg/telegram/ui/Cells/StickerEmojiCell;->getSticker()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v5

    iget v7, p0, Lorg/telegram/ui/ContentPreviewViewer;->currentAccount:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v5, v4, v7}, Lorg/telegram/messenger/MessageObject;->findAnimatedEmojiEmoticon(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lorg/telegram/ui/ContentPreviewViewer;->delegate:Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    if-eqz v7, :cond_17

    invoke-interface {v7, v3}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->getQuery(Z)Ljava/lang/String;

    move-result-object v4

    :cond_17
    invoke-virtual {v11}, Lorg/telegram/ui/Cells/StickerEmojiCell;->isRecent()Z

    move-result v7

    invoke-virtual {v11}, Lorg/telegram/ui/Cells/StickerEmojiCell;->getParentObject()Ljava/lang/Object;

    move-result-object v8

    move-object v3, v5

    const/4 v5, 0x0

    move-object v0, p0

    move-object/from16 v9, p6

    invoke-virtual/range {v0 .. v9}, Lorg/telegram/ui/ContentPreviewViewer;->open(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$BotInlineResult;IZLjava/lang/Object;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1249
    invoke-virtual {v11, v10}, Lorg/telegram/ui/Cells/StickerEmojiCell;->setScaled(Z)V

    goto/16 :goto_b

    .line 1250
    :cond_18
    instance-of v1, v9, Lorg/telegram/ui/Cells/StickerCell;

    if-eqz v1, :cond_1a

    .line 1251
    move-object v11, v9

    check-cast v11, Lorg/telegram/ui/Cells/StickerCell;

    .line 1252
    invoke-virtual {v11}, Lorg/telegram/ui/Cells/StickerCell;->getSticker()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v1

    invoke-virtual {v11}, Lorg/telegram/ui/Cells/StickerCell;->getSticker()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v2

    iget v5, p0, Lorg/telegram/ui/ContentPreviewViewer;->currentAccount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lorg/telegram/messenger/MessageObject;->findAnimatedEmojiEmoticon(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lorg/telegram/ui/ContentPreviewViewer;->delegate:Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    if-eqz v5, :cond_19

    invoke-interface {v5, v3}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->getQuery(Z)Ljava/lang/String;

    move-result-object v4

    :cond_19
    const/4 v7, 0x0

    invoke-virtual {v11}, Lorg/telegram/ui/Cells/StickerCell;->getParentObject()Ljava/lang/Object;

    move-result-object v8

    move-object v3, v2

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object/from16 v9, p6

    invoke-virtual/range {v0 .. v9}, Lorg/telegram/ui/ContentPreviewViewer;->open(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$BotInlineResult;IZLjava/lang/Object;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1253
    invoke-virtual {v11, v10}, Lorg/telegram/ui/Cells/StickerCell;->setScaled(Z)V

    .line 1254
    invoke-virtual {v11}, Lorg/telegram/ui/Cells/StickerCell;->isClearsInputField()Z

    move-result v1

    iput-boolean v1, p0, Lorg/telegram/ui/ContentPreviewViewer;->clearsInputField:Z

    goto/16 :goto_b

    .line 1255
    :cond_1a
    instance-of v1, v9, Lorg/telegram/ui/Cells/ContextLinkCell;

    if-eqz v1, :cond_1e

    .line 1256
    move-object v11, v9

    check-cast v11, Lorg/telegram/ui/Cells/ContextLinkCell;

    .line 1257
    invoke-virtual {v11}, Lorg/telegram/ui/Cells/ContextLinkCell;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ContentPreviewViewer;->delegate:Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    if-eqz v2, :cond_1b

    invoke-interface {v2, v10}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->getQuery(Z)Ljava/lang/String;

    move-result-object v4

    :cond_1b
    invoke-virtual {v11}, Lorg/telegram/ui/Cells/ContextLinkCell;->getBotInlineResult()Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    move-result-object v5

    invoke-virtual {v11}, Lorg/telegram/ui/Cells/ContextLinkCell;->getBotInlineResult()Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    move-result-object v2

    if-eqz v2, :cond_1c

    invoke-virtual {v11}, Lorg/telegram/ui/Cells/ContextLinkCell;->getInlineBot()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    :goto_7
    move-object v8, v2

    goto :goto_8

    :cond_1c
    invoke-virtual {v11}, Lorg/telegram/ui/Cells/ContextLinkCell;->getParentObject()Ljava/lang/Object;

    move-result-object v2

    goto :goto_7

    :goto_8
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object/from16 v9, p6

    invoke-virtual/range {v0 .. v9}, Lorg/telegram/ui/ContentPreviewViewer;->open(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$BotInlineResult;IZLjava/lang/Object;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    if-ne v6, v10, :cond_1d

    .line 1258
    iget-boolean v1, p0, Lorg/telegram/ui/ContentPreviewViewer;->isPhotoEditor:Z

    if-eqz v1, :cond_26

    .line 1259
    :cond_1d
    invoke-virtual {v11, v10}, Lorg/telegram/ui/Cells/ContextLinkCell;->setScaled(Z)V

    goto/16 :goto_b

    .line 1261
    :cond_1e
    instance-of v1, v9, Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiImageView;

    if-eqz v1, :cond_1f

    .line 1262
    check-cast v9, Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiImageView;

    .line 1263
    invoke-virtual {v9}, Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiImageView;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v1

    if-eqz v1, :cond_26

    .line 1265
    iget v2, p0, Lorg/telegram/ui/ContentPreviewViewer;->currentAccount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v4, v2}, Lorg/telegram/messenger/MessageObject;->findAnimatedEmojiEmoticon(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object/from16 v9, p6

    invoke-virtual/range {v0 .. v9}, Lorg/telegram/ui/ContentPreviewViewer;->open(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$BotInlineResult;IZLjava/lang/Object;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto :goto_b

    .line 1267
    :cond_1f
    instance-of v1, v9, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    if-eqz v1, :cond_23

    .line 1268
    check-cast v9, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    .line 1269
    invoke-virtual {v9}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->getSpan()Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    move-result-object v1

    if-eqz v1, :cond_21

    .line 1272
    iget-object v2, v1, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-nez v2, :cond_20

    .line 1274
    iget v2, p0, Lorg/telegram/ui/ContentPreviewViewer;->currentAccount:I

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->getDocumentId()J

    move-result-wide v7

    invoke-static {v2, v7, v8}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->findDocument(IJ)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v2

    :cond_20
    move-object v1, v2

    goto :goto_9

    :cond_21
    move-object v1, v4

    :goto_9
    if-eqz v1, :cond_22

    .line 1278
    iget v2, p0, Lorg/telegram/ui/ContentPreviewViewer;->currentAccount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v4, v2}, Lorg/telegram/messenger/MessageObject;->findAnimatedEmojiEmoticon(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object/from16 v9, p6

    invoke-virtual/range {v0 .. v9}, Lorg/telegram/ui/ContentPreviewViewer;->open(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$BotInlineResult;IZLjava/lang/Object;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto :goto_b

    :cond_22
    return v3

    .line 1282
    :cond_23
    instance-of v1, v9, Lorg/telegram/ui/Components/SuggestEmojiView$EmojiImageView;

    if-eqz v1, :cond_26

    .line 1283
    check-cast v9, Lorg/telegram/ui/Components/SuggestEmojiView$EmojiImageView;

    .line 1284
    iget-object v1, v9, Lorg/telegram/ui/Components/SuggestEmojiView$EmojiImageView;->drawable:Landroid/graphics/drawable/Drawable;

    .line 1286
    instance-of v2, v1, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v2, :cond_24

    .line 1287
    check-cast v1, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v1

    goto :goto_a

    :cond_24
    move-object v1, v4

    :goto_a
    if-nez v1, :cond_25

    return v3

    .line 1292
    :cond_25
    iget v2, p0, Lorg/telegram/ui/ContentPreviewViewer;->currentAccount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v4, v2}, Lorg/telegram/messenger/MessageObject;->findAnimatedEmojiEmoticon(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object/from16 v9, p6

    invoke-virtual/range {v0 .. v9}, Lorg/telegram/ui/ContentPreviewViewer;->open(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$BotInlineResult;IZLjava/lang/Object;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1294
    :cond_26
    :goto_b
    invoke-virtual {p0}, Lorg/telegram/ui/ContentPreviewViewer;->runSmoothHaptic()V

    return v10

    :cond_27
    :goto_c
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    :cond_28
    :goto_d
    return v10

    .line 1299
    :cond_29
    iget-object v1, p0, Lorg/telegram/ui/ContentPreviewViewer;->openPreviewRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_30

    .line 1300
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v5, :cond_2a

    .line 1301
    iget v1, p0, Lorg/telegram/ui/ContentPreviewViewer;->startX:I

    int-to-float v1, v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    float-to-double v1, v1

    iget v5, p0, Lorg/telegram/ui/ContentPreviewViewer;->startY:I

    int-to-float v5, v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    sub-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v1

    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-double v5, v5

    cmpl-double v1, v1, v5

    if-lez v1, :cond_30

    .line 1302
    iget-object v1, p0, Lorg/telegram/ui/ContentPreviewViewer;->openPreviewRunnable:Ljava/lang/Runnable;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1303
    iput-object v4, p0, Lorg/telegram/ui/ContentPreviewViewer;->openPreviewRunnable:Ljava/lang/Runnable;

    goto :goto_10

    .line 1306
    :cond_2a
    iget-object v1, p0, Lorg/telegram/ui/ContentPreviewViewer;->openPreviewRunnable:Ljava/lang/Runnable;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1307
    iput-object v4, p0, Lorg/telegram/ui/ContentPreviewViewer;->openPreviewRunnable:Ljava/lang/Runnable;

    goto :goto_10

    .line 1136
    :cond_2b
    :goto_e
    new-instance v2, Lorg/telegram/ui/ContentPreviewViewer$$ExternalSyntheticLambda6;

    move-object/from16 v5, p4

    invoke-direct {v2, v1, v5}, Lorg/telegram/ui/ContentPreviewViewer$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/RecyclerListView;Ljava/lang/Object;)V

    const-wide/16 v5, 0x96

    invoke-static {v2, v5, v6}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 1141
    iget-object v1, p0, Lorg/telegram/ui/ContentPreviewViewer;->openPreviewRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_2c

    .line 1142
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1143
    iput-object v4, p0, Lorg/telegram/ui/ContentPreviewViewer;->openPreviewRunnable:Ljava/lang/Runnable;

    goto :goto_10

    .line 1144
    :cond_2c
    invoke-virtual {p0}, Lorg/telegram/ui/ContentPreviewViewer;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 1145
    invoke-virtual {p0}, Lorg/telegram/ui/ContentPreviewViewer;->close()V

    .line 1146
    iget-object v1, p0, Lorg/telegram/ui/ContentPreviewViewer;->currentPreviewCell:Landroid/view/View;

    if-eqz v1, :cond_30

    .line 1147
    instance-of v2, v1, Lorg/telegram/ui/Cells/StickerEmojiCell;

    if-eqz v2, :cond_2d

    .line 1148
    check-cast v1, Lorg/telegram/ui/Cells/StickerEmojiCell;

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Cells/StickerEmojiCell;->setScaled(Z)V

    goto :goto_f

    .line 1149
    :cond_2d
    instance-of v2, v1, Lorg/telegram/ui/Cells/StickerCell;

    if-eqz v2, :cond_2e

    .line 1150
    check-cast v1, Lorg/telegram/ui/Cells/StickerCell;

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Cells/StickerCell;->setScaled(Z)V

    goto :goto_f

    .line 1151
    :cond_2e
    instance-of v2, v1, Lorg/telegram/ui/Cells/ContextLinkCell;

    if-eqz v2, :cond_2f

    .line 1152
    check-cast v1, Lorg/telegram/ui/Cells/ContextLinkCell;

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Cells/ContextLinkCell;->setScaled(Z)V

    .line 1154
    :cond_2f
    :goto_f
    iput-object v4, p0, Lorg/telegram/ui/ContentPreviewViewer;->currentPreviewCell:Landroid/view/View;

    :cond_30
    :goto_10
    return v3
.end method

.method public open(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$BotInlineResult;IZLjava/lang/Object;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 39

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p9

    .line 1603
    const-string/jumbo v7, "window"

    iget-object v8, v1, Lorg/telegram/ui/ContentPreviewViewer;->parentActivity:Landroid/app/Activity;

    if-eqz v8, :cond_1e

    iget-object v8, v1, Lorg/telegram/ui/ContentPreviewViewer;->windowView:Landroid/widget/FrameLayout;

    if-nez v8, :cond_0

    goto/16 :goto_d

    .line 1606
    :cond_0
    iput-object v6, v1, Lorg/telegram/ui/ContentPreviewViewer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move/from16 v8, p7

    .line 1607
    iput-boolean v8, v1, Lorg/telegram/ui/ContentPreviewViewer;->isRecentSticker:Z

    const/4 v8, 0x0

    .line 1608
    iput-object v8, v1, Lorg/telegram/ui/ContentPreviewViewer;->stickerEmojiLayout:Landroid/text/StaticLayout;

    .line 1609
    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v9, v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v9

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->isDarkColor(I)Z

    move-result v9

    .line 1610
    iget-object v10, v1, Lorg/telegram/ui/ContentPreviewViewer;->backgroundDrawable:Landroid/graphics/drawable/ColorDrawable;

    if-eqz v9, :cond_1

    const/high16 v9, 0x71000000

    goto :goto_0

    :cond_1
    const v9, 0x64e6e6e6

    :goto_0
    invoke-virtual {v10, v9}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    const/4 v9, 0x0

    .line 1611
    iput-boolean v9, v1, Lorg/telegram/ui/ContentPreviewViewer;->drawEffect:Z

    .line 1612
    iget-object v10, v1, Lorg/telegram/ui/ContentPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v10, v8}, Lorg/telegram/messenger/ImageReceiver;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const/16 v10, 0x5a

    const-wide/16 v11, 0x320

    const/4 v13, 0x2

    const/4 v14, 0x1

    if-eqz v5, :cond_7

    if-eq v5, v13, :cond_7

    const/4 v15, 0x3

    if-ne v5, v15, :cond_2

    goto/16 :goto_2

    .line 1696
    :cond_2
    const-string v3, "gif"

    if-eqz v0, :cond_4

    .line 1697
    iget-object v8, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-static {v8, v10}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v8

    .line 1698
    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->getDocumentVideoThumb(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/tgnet/TLRPC$VideoSize;

    move-result-object v10

    .line 1699
    invoke-static {v0}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v15

    .line 1700
    iput v13, v15, Lorg/telegram/messenger/ImageLocation;->imageType:I

    if-eqz v10, :cond_3

    move-object/from16 v16, v15

    .line 1702
    iget-object v15, v1, Lorg/telegram/ui/ContentPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-static {v10, v0}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$VideoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v18

    invoke-static {v8, v0}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v20

    iget-wide v9, v0, Lorg/telegram/tgnet/TLRPC$Document;->size:J

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    const-string v21, "90_90_b"

    const/16 v22, 0x0

    const/16 v25, 0x0

    move-wide/from16 v23, v9

    invoke-virtual/range {v15 .. v27}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    goto/16 :goto_1

    :cond_3
    move-object/from16 v16, v15

    .line 1704
    iget-object v15, v1, Lorg/telegram/ui/ContentPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-static {v8, v0}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v18

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$Document;->size:J

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    const/16 v17, 0x0

    const-string v19, "90_90_b"

    const/16 v22, 0x0

    move-wide/from16 v20, v8

    invoke-virtual/range {v15 .. v24}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Object;I)V

    goto/16 :goto_1

    :cond_4
    if-eqz v4, :cond_1e

    .line 1707
    iget-object v8, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content:Lorg/telegram/tgnet/TLRPC$WebDocument;

    if-nez v8, :cond_5

    goto/16 :goto_d

    .line 1710
    :cond_5
    iget-object v8, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->thumb:Lorg/telegram/tgnet/TLRPC$WebDocument;

    instance-of v9, v8, Lorg/telegram/tgnet/TLRPC$TL_webDocument;

    if-eqz v9, :cond_6

    const-string/jumbo v9, "video/mp4"

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$WebDocument;->mime_type:Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1711
    iget-object v15, v1, Lorg/telegram/ui/ContentPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v8, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content:Lorg/telegram/tgnet/TLRPC$WebDocument;

    invoke-static {v8}, Lorg/telegram/messenger/WebFile;->createWithWebDocument(Lorg/telegram/tgnet/TLRPC$WebDocument;)Lorg/telegram/messenger/WebFile;

    move-result-object v8

    invoke-static {v8}, Lorg/telegram/messenger/ImageLocation;->getForWebFile(Lorg/telegram/messenger/WebFile;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v16

    iget-object v8, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->thumb:Lorg/telegram/tgnet/TLRPC$WebDocument;

    invoke-static {v8}, Lorg/telegram/messenger/WebFile;->createWithWebDocument(Lorg/telegram/tgnet/TLRPC$WebDocument;)Lorg/telegram/messenger/WebFile;

    move-result-object v8

    invoke-static {v8}, Lorg/telegram/messenger/ImageLocation;->getForWebFile(Lorg/telegram/messenger/WebFile;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v18

    iget-object v8, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->thumb:Lorg/telegram/tgnet/TLRPC$WebDocument;

    invoke-static {v8}, Lorg/telegram/messenger/WebFile;->createWithWebDocument(Lorg/telegram/tgnet/TLRPC$WebDocument;)Lorg/telegram/messenger/WebFile;

    move-result-object v8

    invoke-static {v8}, Lorg/telegram/messenger/ImageLocation;->getForWebFile(Lorg/telegram/messenger/WebFile;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v20

    iget-object v8, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content:Lorg/telegram/tgnet/TLRPC$WebDocument;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$WebDocument;->size:I

    int-to-long v8, v8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x1

    const/16 v17, 0x0

    const/16 v19, 0x0

    const-string v21, "90_90_b"

    const/16 v22, 0x0

    const/16 v25, 0x0

    move-wide/from16 v23, v8

    invoke-virtual/range {v15 .. v27}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    goto :goto_1

    .line 1713
    :cond_6
    iget-object v8, v1, Lorg/telegram/ui/ContentPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v9, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content:Lorg/telegram/tgnet/TLRPC$WebDocument;

    invoke-static {v9}, Lorg/telegram/messenger/WebFile;->createWithWebDocument(Lorg/telegram/tgnet/TLRPC$WebDocument;)Lorg/telegram/messenger/WebFile;

    move-result-object v9

    invoke-static {v9}, Lorg/telegram/messenger/ImageLocation;->getForWebFile(Lorg/telegram/messenger/WebFile;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v29

    iget-object v9, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->thumb:Lorg/telegram/tgnet/TLRPC$WebDocument;

    invoke-static {v9}, Lorg/telegram/messenger/WebFile;->createWithWebDocument(Lorg/telegram/tgnet/TLRPC$WebDocument;)Lorg/telegram/messenger/WebFile;

    move-result-object v9

    invoke-static {v9}, Lorg/telegram/messenger/ImageLocation;->getForWebFile(Lorg/telegram/messenger/WebFile;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v31

    iget-object v9, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content:Lorg/telegram/tgnet/TLRPC$WebDocument;

    iget v9, v9, Lorg/telegram/tgnet/TLRPC$WebDocument;->size:I

    int-to-long v9, v9

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    const/16 v37, 0x1

    const/16 v30, 0x0

    const-string v32, "90_90_b"

    const/16 v35, 0x0

    move-object/from16 v28, v8

    move-wide/from16 v33, v9

    invoke-virtual/range {v28 .. v37}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Object;I)V

    .line 1718
    :goto_1
    iget-object v3, v1, Lorg/telegram/ui/ContentPreviewViewer;->showSheetRunnable:Ljava/lang/Runnable;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1719
    iget-object v3, v1, Lorg/telegram/ui/ContentPreviewViewer;->showSheetRunnable:Ljava/lang/Runnable;

    invoke-static {v3, v11, v12}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto/16 :goto_a

    :cond_7
    :goto_2
    if-nez v0, :cond_8

    if-nez v2, :cond_8

    goto/16 :goto_d

    .line 1617
    :cond_8
    sget-object v9, Lorg/telegram/ui/ContentPreviewViewer;->textPaint:Landroid/text/TextPaint;

    if-nez v9, :cond_9

    .line 1618
    new-instance v9, Landroid/text/TextPaint;

    invoke-direct {v9, v14}, Landroid/text/TextPaint;-><init>(I)V

    sput-object v9, Lorg/telegram/ui/ContentPreviewViewer;->textPaint:Landroid/text/TextPaint;

    const/high16 v15, 0x41c00000    # 24.0f

    .line 1619
    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    int-to-float v15, v15

    invoke-virtual {v9, v15}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1622
    :cond_9
    iget-object v9, v1, Lorg/telegram/ui/ContentPreviewViewer;->effectImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v9}, Lorg/telegram/messenger/ImageReceiver;->clearImage()V

    const/4 v9, 0x0

    .line 1623
    iput-boolean v9, v1, Lorg/telegram/ui/ContentPreviewViewer;->drawEffect:Z

    .line 1624
    const-string v9, ""

    const-string/jumbo v15, "\u2026"

    const/high16 v16, 0x43480000    # 200.0f

    if-eqz v0, :cond_15

    const/4 v8, 0x0

    .line 1626
    :goto_3
    iget-object v10, v0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v8, v10, :cond_b

    .line 1627
    iget-object v10, v0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 1628
    instance-of v14, v10, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;

    if-eqz v14, :cond_a

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    if-eqz v10, :cond_a

    goto :goto_4

    :cond_a
    add-int/lit8 v8, v8, 0x1

    const/4 v14, 0x1

    goto :goto_3

    :cond_b
    const/4 v10, 0x0

    :goto_4
    if-eqz v3, :cond_c

    .line 1634
    sget-object v8, Lorg/telegram/ui/ContentPreviewViewer;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v8}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v8

    const/4 v14, 0x0

    invoke-static {v3, v8, v14}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1635
    sget-object v8, Lorg/telegram/ui/ContentPreviewViewer;->textPaint:Landroid/text/TextPaint;

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    int-to-float v14, v14

    sget-object v11, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v3, v8, v14, v11}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1636
    invoke-static {v15, v3, v9}, Lorg/telegram/messenger/AndroidUtilities;->replaceCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v23

    .line 1637
    new-instance v22, Landroid/text/StaticLayout;

    sget-object v24, Lorg/telegram/ui/ContentPreviewViewer;->textPaint:Landroid/text/TextPaint;

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v25

    sget-object v26, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/high16 v27, 0x3f800000    # 1.0f

    invoke-direct/range {v22 .. v29}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v3, v22

    iput-object v3, v1, Lorg/telegram/ui/ContentPreviewViewer;->stickerEmojiLayout:Landroid/text/StaticLayout;

    :cond_c
    if-nez v10, :cond_d

    if-ne v5, v13, :cond_f

    .line 1639
    :cond_d
    iget-object v3, v1, Lorg/telegram/ui/ContentPreviewViewer;->delegate:Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    if-eqz v3, :cond_e

    invoke-interface {v3}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->needMenu()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1640
    :cond_e
    iget-object v3, v1, Lorg/telegram/ui/ContentPreviewViewer;->showSheetRunnable:Ljava/lang/Runnable;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1641
    iget-object v3, v1, Lorg/telegram/ui/ContentPreviewViewer;->showSheetRunnable:Ljava/lang/Runnable;

    const-wide/16 v11, 0x320

    invoke-static {v3, v11, v12}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 1643
    :cond_f
    iget v3, v1, Lorg/telegram/ui/ContentPreviewViewer;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v3

    const/4 v8, 0x1

    invoke-virtual {v3, v10, v8}, Lorg/telegram/messenger/MediaDataController;->getStickerSet(Lorg/telegram/tgnet/TLRPC$InputStickerSet;Z)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v3

    if-eqz v3, :cond_10

    .line 1644
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_10

    const/4 v8, 0x0

    goto :goto_5

    :cond_10
    move-object v8, v10

    .line 1647
    :goto_5
    iput-object v8, v1, Lorg/telegram/ui/ContentPreviewViewer;->currentStickerSet:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    .line 1648
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    const/16 v8, 0x5a

    invoke-static {v3, v8}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v3

    .line 1649
    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->isVideoStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 1650
    iget-object v8, v1, Lorg/telegram/ui/ContentPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-static {v0}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v21

    invoke-static {v3, v0}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v23

    iget-object v3, v1, Lorg/telegram/ui/ContentPreviewViewer;->currentStickerSet:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    const/16 v30, 0x1

    const/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const-wide/16 v26, 0x0

    const-string/jumbo v28, "webp"

    move-object/from16 v29, v3

    move-object/from16 v20, v8

    invoke-virtual/range {v20 .. v30}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    goto :goto_6

    .line 1652
    :cond_11
    iget-object v8, v1, Lorg/telegram/ui/ContentPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-static {v0}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v32

    invoke-static {v3, v0}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v34

    iget-object v3, v1, Lorg/telegram/ui/ContentPreviewViewer;->currentStickerSet:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    const/16 v38, 0x1

    const/16 v33, 0x0

    const/16 v35, 0x0

    const-string/jumbo v36, "webp"

    move-object/from16 v37, v3

    move-object/from16 v31, v8

    invoke-virtual/range {v31 .. v38}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 1653
    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->isPremiumSticker(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v3

    if-eqz v3, :cond_12

    const/4 v8, 0x1

    .line 1654
    iput-boolean v8, v1, Lorg/telegram/ui/ContentPreviewViewer;->drawEffect:Z

    .line 1655
    iget-object v3, v1, Lorg/telegram/ui/ContentPreviewViewer;->effectImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->getPremiumStickerAnimation(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/tgnet/TLRPC$VideoSize;

    move-result-object v8

    invoke-static {v8, v0}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$VideoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v21

    iget-object v8, v1, Lorg/telegram/ui/ContentPreviewViewer;->currentStickerSet:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    const/16 v27, 0x1

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const-string/jumbo v25, "tgs"

    move-object/from16 v20, v3

    move-object/from16 v26, v8

    invoke-virtual/range {v20 .. v27}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 1658
    :cond_12
    :goto_6
    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->isTextColorEmoji(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 1659
    iget-object v3, v1, Lorg/telegram/ui/ContentPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getAnimatedEmojiColorFilter(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/graphics/ColorFilter;

    move-result-object v8

    invoke-virtual {v3, v8}, Lorg/telegram/messenger/ImageReceiver;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1661
    :cond_13
    iget-object v3, v1, Lorg/telegram/ui/ContentPreviewViewer;->stickerEmojiLayout:Landroid/text/StaticLayout;

    if-nez v3, :cond_1a

    const/4 v3, 0x0

    .line 1662
    :goto_7
    iget-object v8, v0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v3, v8, :cond_1a

    .line 1663
    iget-object v8, v0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 1664
    instance-of v10, v8, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;

    if-eqz v10, :cond_14

    .line 1665
    iget-object v10, v8, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->alt:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_14

    .line 1666
    iget-object v3, v8, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->alt:Ljava/lang/String;

    sget-object v8, Lorg/telegram/ui/ContentPreviewViewer;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v8}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v8

    const/4 v14, 0x0

    invoke-static {v3, v8, v14}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1667
    sget-object v8, Lorg/telegram/ui/ContentPreviewViewer;->textPaint:Landroid/text/TextPaint;

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    sget-object v11, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v3, v8, v10, v11}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1668
    invoke-static {v15, v3, v9}, Lorg/telegram/messenger/AndroidUtilities;->replaceCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v21

    .line 1669
    new-instance v20, Landroid/text/StaticLayout;

    sget-object v22, Lorg/telegram/ui/ContentPreviewViewer;->textPaint:Landroid/text/TextPaint;

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v23

    sget-object v24, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/high16 v25, 0x3f800000    # 1.0f

    invoke-direct/range {v20 .. v27}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v3, v20

    iput-object v3, v1, Lorg/telegram/ui/ContentPreviewViewer;->stickerEmojiLayout:Landroid/text/StaticLayout;

    goto/16 :goto_a

    :cond_14
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_15
    if-eqz v2, :cond_1a

    .line 1676
    iget-object v8, v1, Lorg/telegram/ui/ContentPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v10, v2, Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;->path:Ljava/lang/String;

    iget-boolean v11, v2, Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;->animated:Z

    if-eqz v11, :cond_16

    const-string/jumbo v11, "tgs"

    move-object/from16 v26, v11

    goto :goto_8

    :cond_16
    const/16 v26, 0x0

    :goto_8
    const-wide/16 v27, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v22, v8

    move-object/from16 v23, v10

    invoke-virtual/range {v22 .. v28}, Lorg/telegram/messenger/ImageReceiver;->setImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;J)V

    .line 1677
    iget-object v8, v2, Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    if-eqz v8, :cond_18

    .line 1678
    iget-object v8, v1, Lorg/telegram/ui/ContentPreviewViewer;->paintingOverlay:Lorg/telegram/ui/Components/PaintingOverlay;

    if-nez v8, :cond_17

    .line 1679
    new-instance v8, Lorg/telegram/ui/Components/PaintingOverlay;

    iget-object v10, v1, Lorg/telegram/ui/ContentPreviewViewer;->containerView:Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v8, v10}, Lorg/telegram/ui/Components/PaintingOverlay;-><init>(Landroid/content/Context;)V

    iput-object v8, v1, Lorg/telegram/ui/ContentPreviewViewer;->paintingOverlay:Lorg/telegram/ui/Components/PaintingOverlay;

    .line 1680
    iget-object v10, v1, Lorg/telegram/ui/ContentPreviewViewer;->containerView:Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v12, 0x200

    invoke-direct {v11, v12, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v8, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1682
    :cond_17
    iget-object v8, v1, Lorg/telegram/ui/ContentPreviewViewer;->paintingOverlay:Lorg/telegram/ui/Components/PaintingOverlay;

    iget-object v10, v2, Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget-object v10, v10, Lorg/telegram/messenger/VideoEditedInfo;->mediaEntities:Ljava/util/ArrayList;

    const/4 v11, 0x1

    const/4 v14, 0x0

    invoke-virtual {v8, v10, v11, v11, v14}, Lorg/telegram/ui/Components/PaintingOverlay;->setEntities(Ljava/util/ArrayList;ZZZ)V

    goto :goto_9

    :cond_18
    const/4 v14, 0x0

    :goto_9
    if-eqz v3, :cond_19

    .line 1685
    sget-object v8, Lorg/telegram/ui/ContentPreviewViewer;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v8}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v8

    invoke-static {v3, v8, v14}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1686
    sget-object v8, Lorg/telegram/ui/ContentPreviewViewer;->textPaint:Landroid/text/TextPaint;

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    sget-object v11, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v3, v8, v10, v11}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1687
    invoke-static {v15, v3, v9}, Lorg/telegram/messenger/AndroidUtilities;->replaceCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v23

    .line 1688
    new-instance v22, Landroid/text/StaticLayout;

    sget-object v24, Lorg/telegram/ui/ContentPreviewViewer;->textPaint:Landroid/text/TextPaint;

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v25

    sget-object v26, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/high16 v27, 0x3f800000    # 1.0f

    invoke-direct/range {v22 .. v29}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v3, v22

    iput-object v3, v1, Lorg/telegram/ui/ContentPreviewViewer;->stickerEmojiLayout:Landroid/text/StaticLayout;

    .line 1690
    :cond_19
    iget-object v3, v1, Lorg/telegram/ui/ContentPreviewViewer;->delegate:Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    invoke-interface {v3}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->needMenu()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 1691
    iget-object v3, v1, Lorg/telegram/ui/ContentPreviewViewer;->showSheetRunnable:Ljava/lang/Runnable;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1692
    iget-object v3, v1, Lorg/telegram/ui/ContentPreviewViewer;->showSheetRunnable:Ljava/lang/Runnable;

    const-wide/16 v11, 0x320

    invoke-static {v3, v11, v12}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 1722
    :cond_1a
    :goto_a
    iget-object v3, v1, Lorg/telegram/ui/ContentPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v3

    if-eqz v3, :cond_1b

    .line 1723
    iget-object v3, v1, Lorg/telegram/ui/ContentPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v3

    const/4 v14, 0x0

    invoke-virtual {v3, v14}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(I)V

    goto :goto_b

    :cond_1b
    const/4 v14, 0x0

    .line 1725
    :goto_b
    iget-boolean v3, v1, Lorg/telegram/ui/ContentPreviewViewer;->drawEffect:Z

    if-eqz v3, :cond_1c

    iget-object v3, v1, Lorg/telegram/ui/ContentPreviewViewer;->effectImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v3

    if-eqz v3, :cond_1c

    .line 1726
    iget-object v3, v1, Lorg/telegram/ui/ContentPreviewViewer;->effectImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v3

    invoke-virtual {v3, v14}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(I)V

    .line 1729
    :cond_1c
    iput v5, v1, Lorg/telegram/ui/ContentPreviewViewer;->currentContentType:I

    .line 1730
    iput-object v0, v1, Lorg/telegram/ui/ContentPreviewViewer;->currentDocument:Lorg/telegram/tgnet/TLRPC$Document;

    .line 1731
    iput-object v2, v1, Lorg/telegram/ui/ContentPreviewViewer;->importingSticker:Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;

    move-object/from16 v0, p4

    .line 1732
    iput-object v0, v1, Lorg/telegram/ui/ContentPreviewViewer;->currentQuery:Ljava/lang/String;

    .line 1733
    iput-object v4, v1, Lorg/telegram/ui/ContentPreviewViewer;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    move-object/from16 v0, p8

    .line 1734
    iput-object v0, v1, Lorg/telegram/ui/ContentPreviewViewer;->parentObject:Ljava/lang/Object;

    .line 1735
    iput-object v6, v1, Lorg/telegram/ui/ContentPreviewViewer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 1736
    iget-object v0, v1, Lorg/telegram/ui/ContentPreviewViewer;->containerView:Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 1738
    iget-boolean v0, v1, Lorg/telegram/ui/ContentPreviewViewer;->isVisible:Z

    if-nez v0, :cond_1e

    .line 1739
    iget-object v0, v1, Lorg/telegram/ui/ContentPreviewViewer;->parentActivity:Landroid/app/Activity;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->lockOrientation(Landroid/app/Activity;)V

    .line 1741
    :try_start_0
    iget-object v0, v1, Lorg/telegram/ui/ContentPreviewViewer;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 1742
    iget-object v0, v1, Lorg/telegram/ui/ContentPreviewViewer;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v0, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 1743
    iget-object v2, v1, Lorg/telegram/ui/ContentPreviewViewer;->windowView:Landroid/widget/FrameLayout;

    invoke-interface {v0, v2}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_c

    :catch_0
    move-exception v0

    .line 1746
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1748
    :cond_1d
    :goto_c
    iget-object v0, v1, Lorg/telegram/ui/ContentPreviewViewer;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v0, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 1749
    iget-object v2, v1, Lorg/telegram/ui/ContentPreviewViewer;->windowView:Landroid/widget/FrameLayout;

    iget-object v3, v1, Lorg/telegram/ui/ContentPreviewViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v2, v3}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v8, 0x1

    .line 1752
    iput-boolean v8, v1, Lorg/telegram/ui/ContentPreviewViewer;->isVisible:Z

    const/4 v0, 0x0

    .line 1753
    iput v0, v1, Lorg/telegram/ui/ContentPreviewViewer;->showProgress:F

    const v2, -0x39e3c000    # -10000.0f

    .line 1754
    iput v2, v1, Lorg/telegram/ui/ContentPreviewViewer;->lastTouchY:F

    .line 1755
    iput v0, v1, Lorg/telegram/ui/ContentPreviewViewer;->currentMoveYProgress:F

    .line 1756
    iput v0, v1, Lorg/telegram/ui/ContentPreviewViewer;->finalMoveY:F

    .line 1757
    iput v0, v1, Lorg/telegram/ui/ContentPreviewViewer;->currentMoveY:F

    .line 1758
    iput v0, v1, Lorg/telegram/ui/ContentPreviewViewer;->moveY:F

    .line 1759
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lorg/telegram/ui/ContentPreviewViewer;->lastUpdateTime:J

    .line 1760
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->stopAllHeavyOperations:I

    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v8, 0x1

    new-array v4, v8, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v3, v4, v14

    invoke-virtual {v0, v2, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_1e
    :goto_d
    return-void
.end method

.method public reset()V
    .locals 4

    .line 1109
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->openPreviewRunnable:Ljava/lang/Runnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1110
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1111
    iput-object v1, p0, Lorg/telegram/ui/ContentPreviewViewer;->openPreviewRunnable:Ljava/lang/Runnable;

    .line 1113
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->currentPreviewCell:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 1114
    instance-of v2, v0, Lorg/telegram/ui/Cells/StickerEmojiCell;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 1115
    check-cast v0, Lorg/telegram/ui/Cells/StickerEmojiCell;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Cells/StickerEmojiCell;->setScaled(Z)V

    goto :goto_0

    .line 1116
    :cond_1
    instance-of v2, v0, Lorg/telegram/ui/Cells/StickerCell;

    if-eqz v2, :cond_2

    .line 1117
    check-cast v0, Lorg/telegram/ui/Cells/StickerCell;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Cells/StickerCell;->setScaled(Z)V

    goto :goto_0

    .line 1118
    :cond_2
    instance-of v2, v0, Lorg/telegram/ui/Cells/ContextLinkCell;

    if-eqz v2, :cond_3

    .line 1119
    check-cast v0, Lorg/telegram/ui/Cells/ContextLinkCell;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Cells/ContextLinkCell;->setScaled(Z)V

    .line 1121
    :cond_3
    :goto_0
    iput-object v1, p0, Lorg/telegram/ui/ContentPreviewViewer;->currentPreviewCell:Landroid/view/View;

    :cond_4
    return-void
.end method

.method protected runLongPressHaptic(Landroid/view/View;)V
    .locals 2

    .line 1325
    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->inAppVibration:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x3

    .line 1329
    :try_start_0
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method protected runSmoothHaptic()V
    .locals 2

    .line 1316
    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->inAppVibration:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 1320
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->containerView:Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v1}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;)V
    .locals 0

    .line 1483
    iput-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer;->delegate:Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    if-eqz p1, :cond_0

    .line 1485
    invoke-interface {p1}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->isPhotoEditor()Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/ui/ContentPreviewViewer;->isPhotoEditor:Z

    .line 1486
    iget-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer;->delegate:Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    invoke-interface {p1}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->isStickerEditor()Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/ui/ContentPreviewViewer;->isStickerEditor:Z

    :cond_0
    return-void
.end method

.method public setFocusable(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1585
    iget-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v0, 0x10

    .line 1586
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    goto :goto_0

    .line 1588
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1590
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer;->parentActivity:Landroid/app/Activity;

    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 1592
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->windowView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/ContentPreviewViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, v0, v1}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1594
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public setParentActivity(Landroid/app/Activity;)V
    .locals 4

    .line 1491
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->currentAccount:I

    .line 1492
    iget-object v1, p0, Lorg/telegram/ui/ContentPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/ImageReceiver;->setCurrentAccount(I)V

    .line 1493
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setLayerNum(I)V

    .line 1494
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->effectImage:Lorg/telegram/messenger/ImageReceiver;

    iget v2, p0, Lorg/telegram/ui/ContentPreviewViewer;->currentAccount:I

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/ImageReceiver;->setCurrentAccount(I)V

    .line 1495
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->effectImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setLayerNum(I)V

    .line 1496
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->parentActivity:Landroid/app/Activity;

    if-ne v0, p1, :cond_0

    return-void

    .line 1499
    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer;->parentActivity:Landroid/app/Activity;

    .line 1501
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->preview_arrow:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->slideUpDrawable:Landroid/graphics/drawable/Drawable;

    .line 1503
    new-instance v0, Lorg/telegram/ui/ContentPreviewViewer$3;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/ContentPreviewViewer$3;-><init>(Lorg/telegram/ui/ContentPreviewViewer;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->windowView:Landroid/widget/FrameLayout;

    const/4 v1, 0x1

    .line 1517
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 1518
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 1519
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->windowView:Landroid/widget/FrameLayout;

    const/16 v2, 0x700

    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 1520
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->windowView:Landroid/widget/FrameLayout;

    new-instance v2, Lorg/telegram/ui/ContentPreviewViewer$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ContentPreviewViewer$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/ContentPreviewViewer;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 1525
    new-instance v0, Lorg/telegram/ui/ContentPreviewViewer$4;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/ContentPreviewViewer$4;-><init>(Lorg/telegram/ui/ContentPreviewViewer;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->containerView:Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    const/4 p1, 0x0

    .line 1540
    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 1541
    iget-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer;->containerView:Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->inAppVibration:Z

    invoke-virtual {p1, v0}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    .line 1542
    iget-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer;->windowView:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->containerView:Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    const/16 v2, 0x33

    const/4 v3, -0x1

    invoke-static {v3, v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1543
    iget-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer;->containerView:Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    new-instance v0, Lorg/telegram/ui/ContentPreviewViewer$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ContentPreviewViewer$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/ContentPreviewViewer;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1554
    iget p1, p0, Lorg/telegram/ui/ContentPreviewViewer;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalEmojiSettings()Landroid/content/SharedPreferences;

    move-result-object p1

    const/high16 v0, 0x43480000    # 200.0f

    .line 1555
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    const-string v2, "kbd_height"

    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ContentPreviewViewer;->keyboardHeight:I

    .line 1557
    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 1558
    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v0, -0x3

    .line 1559
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1560
    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 v0, 0x30

    .line 1561
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v0, 0x63

    .line 1562
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const v0, -0x7ffcff00

    .line 1563
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1568
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v0, v2, :cond_2

    const/16 v2, 0x1e

    if-lt v0, v2, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    :cond_1
    move v0, v1

    .line 1571
    :goto_0
    invoke-static {p1, v0}, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticApiModelOutline2;->m(Landroid/view/WindowManager$LayoutParams;I)V

    .line 1574
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/ImageReceiver;->setAspectFit(Z)V

    .line 1575
    iget-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/ImageReceiver;->setInvalidateAll(Z)V

    .line 1576
    iget-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->containerView:Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/ImageReceiver;->setParentView(Landroid/view/View;)V

    .line 1578
    iget-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer;->effectImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/ImageReceiver;->setAspectFit(Z)V

    .line 1579
    iget-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer;->effectImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/ImageReceiver;->setInvalidateAll(Z)V

    .line 1580
    iget-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer;->effectImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->containerView:Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/ImageReceiver;->setParentView(Landroid/view/View;)V

    return-void
.end method

.method public setStickerSetForCustomSticker(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V
    .locals 0

    .line 996
    iput-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer;->stickerSetForCustomSticker:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    return-void
.end method

.method public showCustomStickerActions(Ljava/lang/String;Lorg/telegram/messenger/VideoEditedInfo;Landroid/view/View;Ljava/util/ArrayList;Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;)V
    .locals 10

    .line 2066
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->findActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p3

    if-nez p3, :cond_0

    return-void

    .line 2070
    :cond_0
    invoke-virtual {p0, p3}, Lorg/telegram/ui/ContentPreviewViewer;->setParentActivity(Landroid/app/Activity;)V

    .line 2071
    invoke-virtual {p0, p5}, Lorg/telegram/ui/ContentPreviewViewer;->setDelegate(Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;)V

    .line 2072
    new-instance v2, Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;

    invoke-direct {v2}, Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;-><init>()V

    .line 2073
    iput-object p1, v2, Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;->path:Ljava/lang/String;

    .line 2074
    iput-object p2, v2, Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    .line 2075
    iput-object p4, p0, Lorg/telegram/ui/ContentPreviewViewer;->selectedEmojis:Ljava/util/ArrayList;

    .line 2076
    new-instance v9, Lorg/telegram/ui/Stories/DarkThemeResourceProvider;

    invoke-direct {v9}, Lorg/telegram/ui/Stories/DarkThemeResourceProvider;-><init>()V

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Lorg/telegram/ui/ContentPreviewViewer;->open(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$BotInlineResult;IZLjava/lang/Object;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 2077
    iget-object p1, v0, Lorg/telegram/ui/ContentPreviewViewer;->showSheetRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 2078
    iget-object p1, v0, Lorg/telegram/ui/ContentPreviewViewer;->showSheetRunnable:Ljava/lang/Runnable;

    const-wide/16 p2, 0x10

    invoke-static {p1, p2, p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public showMenuFor(Landroid/view/View;)Z
    .locals 13

    .line 2041
    instance-of v0, p1, Lorg/telegram/ui/Cells/StickerEmojiCell;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 2042
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->findActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    return v2

    .line 2046
    :cond_0
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ContentPreviewViewer;->setParentActivity(Landroid/app/Activity;)V

    .line 2047
    check-cast p1, Lorg/telegram/ui/Cells/StickerEmojiCell;

    .line 2048
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->currentPreviewCell:Landroid/view/View;

    instance-of v3, v0, Lorg/telegram/ui/Cells/StickerEmojiCell;

    if-eqz v3, :cond_1

    .line 2049
    check-cast v0, Lorg/telegram/ui/Cells/StickerEmojiCell;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/StickerEmojiCell;->setScaled(Z)V

    goto :goto_0

    .line 2050
    :cond_1
    instance-of v3, v0, Lorg/telegram/ui/Cells/StickerCell;

    if-eqz v3, :cond_2

    .line 2051
    check-cast v0, Lorg/telegram/ui/Cells/StickerCell;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/StickerCell;->setScaled(Z)V

    goto :goto_0

    .line 2052
    :cond_2
    instance-of v3, v0, Lorg/telegram/ui/Cells/ContextLinkCell;

    if-eqz v3, :cond_3

    .line 2053
    check-cast v0, Lorg/telegram/ui/Cells/ContextLinkCell;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/ContextLinkCell;->setScaled(Z)V

    .line 2055
    :cond_3
    :goto_0
    iput-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer;->currentPreviewCell:Landroid/view/View;

    .line 2056
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/StickerEmojiCell;->getSticker()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v4

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/StickerEmojiCell;->getStickerPath()Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;

    move-result-object v5

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/StickerEmojiCell;->getSticker()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    iget v3, p0, Lorg/telegram/ui/ContentPreviewViewer;->currentAccount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v6, 0x0

    invoke-static {v0, v6, v3}, Lorg/telegram/messenger/MessageObject;->findAnimatedEmojiEmoticon(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/ContentPreviewViewer;->delegate:Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    if-eqz v3, :cond_4

    invoke-interface {v3, v1}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->getQuery(Z)Ljava/lang/String;

    move-result-object v6

    :cond_4
    move-object v7, v6

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/StickerEmojiCell;->isRecent()Z

    move-result v10

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/StickerEmojiCell;->getParentObject()Ljava/lang/Object;

    move-result-object v11

    iget-object v12, p0, Lorg/telegram/ui/ContentPreviewViewer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p0

    move-object v6, v0

    invoke-virtual/range {v3 .. v12}, Lorg/telegram/ui/ContentPreviewViewer;->open(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$BotInlineResult;IZLjava/lang/Object;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 2057
    iget-object v0, v3, Lorg/telegram/ui/ContentPreviewViewer;->showSheetRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 2058
    iget-object v0, v3, Lorg/telegram/ui/ContentPreviewViewer;->showSheetRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x10

    invoke-static {v0, v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 2059
    invoke-virtual {p1, v2}, Lorg/telegram/ui/Cells/StickerEmojiCell;->setScaled(Z)V

    return v2

    :cond_5
    move-object v3, p0

    return v1
.end method
