.class public Lorg/telegram/ui/MessageSendPreview;
.super Landroid/app/Dialog;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/MessageSendPreview$VisiblePart;,
        Lorg/telegram/ui/MessageSendPreview$MessageCell;
    }
.end annotation


# instance fields
.field private final adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field public allowRelayout:Z

.field private anchorSendButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

.field private blurBitmap:Landroid/graphics/Bitmap;

.field private blurBitmapPaint:Landroid/graphics/Paint;

.field private blurBitmapShader:Landroid/graphics/BitmapShader;

.field private blurMatrix:Landroid/graphics/Matrix;

.field private buttonBgPaint:Landroid/graphics/Paint;

.field private buttonText:Lorg/telegram/ui/Components/Text;

.field private cameraRect:Landroid/graphics/RectF;

.field private cellDelta:Landroid/graphics/Rect;

.field private final chatLayoutManager:Landroidx/recyclerview/widget/GridLayoutManagerFixed;

.field private final chatListView:Lorg/telegram/ui/Components/RecyclerListView;

.field private closing:Z

.field private final containerView:Landroid/widget/FrameLayout;

.field public final context:Landroid/content/Context;

.field public final currentAccount:I

.field private destCell:Lorg/telegram/ui/Cells/ChatMessageCell;

.field private destClipBottom:F

.field private destClipTop:F

.field private dismissing:Z

.field private drawEditText:Lorg/telegram/messenger/Utilities$Callback2;

.field private drawEditTextBackground:Lorg/telegram/messenger/Utilities$Callback;

.field private dummyMessageCell:Lorg/telegram/ui/Cells/ChatMessageCell;

.field private editText:Lorg/telegram/ui/Components/EditTextCaption;

.field private editTextBackgroundPaint:Landroid/graphics/Paint;

.field private effectDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

.field private effectId:J

.field private effectOverlay:Lorg/telegram/ui/EmojiAnimationsOverlay;

.field private effectSelector:Lorg/telegram/ui/Components/ReactionsContainerLayout;

.field private effectSelectorContainer:Landroid/widget/FrameLayout;

.field private effectSelectorContainerY:F

.field private effectSelectorShown:Z

.field private final effectsView:Landroid/widget/FrameLayout;

.field private firstOpenFrame:Z

.field private firstOpenFrame2:Z

.field private focusable:Z

.field private fromPart:Lorg/telegram/ui/MessageSendPreview$VisiblePart;

.field private final groupedMessagesMap:Landroidx/collection/LongSparseArray;

.field private final insets:Landroid/graphics/Rect;

.field private keyboardVisible:Z

.field private layoutDone:Z

.field private mainMessageCell:Lorg/telegram/ui/Cells/ChatMessageCell;

.field private mainMessageCellId:I

.field private final messageObjects:Ljava/util/ArrayList;

.field private messageObjectsWidth:I

.field private openAnimator:Landroid/animation/ValueAnimator;

.field private openInProgress:Z

.field private openProgress:F

.field private opening:Z

.field private optionsView:Landroid/view/View;

.field public final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private scrolledToLast:Z

.field private sendButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

.field private final sendButtonInitialPosition:[I

.field private sendButtonWidth:I

.field private sent:Z

.field private sentEffect:Z

.field private spoilerEffect2:Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;

.field private final windowView:Landroid/widget/FrameLayout;


# direct methods
.method public static synthetic $r8$lambda$GmbtXFQ7kZWueRcz9Ts8uB-RwHE(Lorg/telegram/ui/MessageSendPreview;Ljava/lang/Integer;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/MessageSendPreview;->lambda$allowEffectSelector$3(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ld9grULtLId-30Cvn7TPfyl5ybA(Lorg/telegram/ui/MessageSendPreview;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/MessageSendPreview;->lambda$dismiss$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$Qz-qxza7A29bH7Acri7BsUwAKh4(Lorg/telegram/ui/MessageSendPreview;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/MessageSendPreview;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Rx-bbOY4QaDBCfDyr5c-jwAH5js(Lorg/telegram/ui/MessageSendPreview;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/MessageSendPreview;->lambda$dismiss$7()V

    return-void
.end method

.method public static synthetic $r8$lambda$XQy3L8IeB7rY9KyFyFyoW_MEMXU(Lorg/telegram/ui/MessageSendPreview;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/MessageSendPreview;->lambda$dismissInto$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$bxPwF99mn3ydVK3qEPFfqw-e5zo(Lorg/telegram/ui/MessageSendPreview;FLandroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/MessageSendPreview;->lambda$prepareBlur$9(FLandroid/view/View;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gIpkp5CUuMzDuefZkmP4BjwAFs4(Lorg/telegram/ui/MessageSendPreview;Landroid/view/View;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/MessageSendPreview;->lambda$new$2(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$h6ObxL9wGOxl-2Nb28H1UcaMqbk(Lorg/telegram/ui/MessageSendPreview;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/MessageSendPreview;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uk4W9eHD5doher94_TMH8MHfwzw(Lorg/telegram/ui/MessageSendPreview;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/MessageSendPreview;->lambda$dismissInto$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$wFrNPogNJ3zwoFhdxsNJ8WgggU8(Lorg/telegram/ui/MessageSendPreview;ZLandroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/MessageSendPreview;->lambda$animateOpenTo$8(ZLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetanchorSendButton(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/MessageSendPreview;->anchorSendButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetblurBitmap(Lorg/telegram/ui/MessageSendPreview;)Landroid/graphics/Bitmap;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/MessageSendPreview;->blurBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetblurBitmapPaint(Lorg/telegram/ui/MessageSendPreview;)Landroid/graphics/Paint;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/MessageSendPreview;->blurBitmapPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetblurBitmapShader(Lorg/telegram/ui/MessageSendPreview;)Landroid/graphics/BitmapShader;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/MessageSendPreview;->blurBitmapShader:Landroid/graphics/BitmapShader;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetblurMatrix(Lorg/telegram/ui/MessageSendPreview;)Landroid/graphics/Matrix;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/MessageSendPreview;->blurMatrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcameraRect(Lorg/telegram/ui/MessageSendPreview;)Landroid/graphics/RectF;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/MessageSendPreview;->cameraRect:Landroid/graphics/RectF;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcellDelta(Lorg/telegram/ui/MessageSendPreview;)Landroid/graphics/Rect;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/MessageSendPreview;->cellDelta:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetchatListView(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/MessageSendPreview;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetclosing(Lorg/telegram/ui/MessageSendPreview;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/MessageSendPreview;->closing:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcontainerView(Lorg/telegram/ui/MessageSendPreview;)Landroid/widget/FrameLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/MessageSendPreview;->containerView:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdestCell(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Cells/ChatMessageCell;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/MessageSendPreview;->destCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdestClipBottom(Lorg/telegram/ui/MessageSendPreview;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/MessageSendPreview;->destClipBottom:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetdestClipTop(Lorg/telegram/ui/MessageSendPreview;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/MessageSendPreview;->destClipTop:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetdismissing(Lorg/telegram/ui/MessageSendPreview;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/MessageSendPreview;->dismissing:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetdrawEditText(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/messenger/Utilities$Callback2;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/MessageSendPreview;->drawEditText:Lorg/telegram/messenger/Utilities$Callback2;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdrawEditTextBackground(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/messenger/Utilities$Callback;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/MessageSendPreview;->drawEditTextBackground:Lorg/telegram/messenger/Utilities$Callback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgeteditText(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/EditTextCaption;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/MessageSendPreview;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgeteditTextBackgroundPaint(Lorg/telegram/ui/MessageSendPreview;)Landroid/graphics/Paint;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/MessageSendPreview;->editTextBackgroundPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgeteffectDrawable(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/MessageSendPreview;->effectDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgeteffectId(Lorg/telegram/ui/MessageSendPreview;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lorg/telegram/ui/MessageSendPreview;->effectId:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgeteffectOverlay(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/EmojiAnimationsOverlay;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/MessageSendPreview;->effectOverlay:Lorg/telegram/ui/EmojiAnimationsOverlay;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgeteffectSelector(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/ReactionsContainerLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/MessageSendPreview;->effectSelector:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgeteffectsView(Lorg/telegram/ui/MessageSendPreview;)Landroid/widget/FrameLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/MessageSendPreview;->effectsView:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetfirstOpenFrame(Lorg/telegram/ui/MessageSendPreview;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/MessageSendPreview;->firstOpenFrame:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetfirstOpenFrame2(Lorg/telegram/ui/MessageSendPreview;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/MessageSendPreview;->firstOpenFrame2:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetfocusable(Lorg/telegram/ui/MessageSendPreview;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/MessageSendPreview;->focusable:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetgroupedMessagesMap(Lorg/telegram/ui/MessageSendPreview;)Landroidx/collection/LongSparseArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/MessageSendPreview;->groupedMessagesMap:Landroidx/collection/LongSparseArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetinsets(Lorg/telegram/ui/MessageSendPreview;)Landroid/graphics/Rect;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/MessageSendPreview;->insets:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlayoutDone(Lorg/telegram/ui/MessageSendPreview;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/MessageSendPreview;->layoutDone:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmainMessageCell(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Cells/ChatMessageCell;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/MessageSendPreview;->mainMessageCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmainMessageCellId(Lorg/telegram/ui/MessageSendPreview;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/MessageSendPreview;->mainMessageCellId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmessageObjects(Lorg/telegram/ui/MessageSendPreview;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/MessageSendPreview;->messageObjects:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmessageObjectsWidth(Lorg/telegram/ui/MessageSendPreview;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/MessageSendPreview;->messageObjectsWidth:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetopenInProgress(Lorg/telegram/ui/MessageSendPreview;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/MessageSendPreview;->openInProgress:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetopenProgress(Lorg/telegram/ui/MessageSendPreview;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/MessageSendPreview;->openProgress:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetoptionsView(Lorg/telegram/ui/MessageSendPreview;)Landroid/view/View;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/MessageSendPreview;->optionsView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetscrolledToLast(Lorg/telegram/ui/MessageSendPreview;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/MessageSendPreview;->scrolledToLast:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsendButton(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/MessageSendPreview;->sendButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsendButtonInitialPosition(Lorg/telegram/ui/MessageSendPreview;)[I
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/MessageSendPreview;->sendButtonInitialPosition:[I

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsendButtonWidth(Lorg/telegram/ui/MessageSendPreview;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/MessageSendPreview;->sendButtonWidth:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsent(Lorg/telegram/ui/MessageSendPreview;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/MessageSendPreview;->sent:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetwindowView(Lorg/telegram/ui/MessageSendPreview;)Landroid/widget/FrameLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/MessageSendPreview;->windowView:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputclosing(Lorg/telegram/ui/MessageSendPreview;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/MessageSendPreview;->closing:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputeffectDrawable(Lorg/telegram/ui/MessageSendPreview;Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/MessageSendPreview;->effectDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputeffectId(Lorg/telegram/ui/MessageSendPreview;J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lorg/telegram/ui/MessageSendPreview;->effectId:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputfirstOpenFrame(Lorg/telegram/ui/MessageSendPreview;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/MessageSendPreview;->firstOpenFrame:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputfirstOpenFrame2(Lorg/telegram/ui/MessageSendPreview;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/MessageSendPreview;->firstOpenFrame2:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputlayoutDone(Lorg/telegram/ui/MessageSendPreview;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/MessageSendPreview;->layoutDone:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmainMessageCell(Lorg/telegram/ui/MessageSendPreview;Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/MessageSendPreview;->mainMessageCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmainMessageCellId(Lorg/telegram/ui/MessageSendPreview;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/MessageSendPreview;->mainMessageCellId:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputopenInProgress(Lorg/telegram/ui/MessageSendPreview;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/MessageSendPreview;->openInProgress:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputopenProgress(Lorg/telegram/ui/MessageSendPreview;F)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/MessageSendPreview;->openProgress:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputopening(Lorg/telegram/ui/MessageSendPreview;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/MessageSendPreview;->opening:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetMainMessageCellPosition(Lorg/telegram/ui/MessageSendPreview;)I
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/MessageSendPreview;->getMainMessageCellPosition()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetValidGroupedMessage(Lorg/telegram/ui/MessageSendPreview;Lorg/telegram/messenger/MessageObject;)Lorg/telegram/messenger/MessageObject$GroupedMessages;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/MessageSendPreview;->getValidGroupedMessage(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mlayout(Lorg/telegram/ui/MessageSendPreview;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/MessageSendPreview;->layout()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 14

    move-object/from16 v6, p2

    .line 143
    sget v0, Lorg/telegram/messenger/R$style;->TransparentDialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 85
    sget v7, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v7, p0, Lorg/telegram/ui/MessageSendPreview;->currentAccount:I

    .line 87
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/MessageSendPreview;->insets:Landroid/graphics/Rect;

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/MessageSendPreview;->messageObjects:Ljava/util/ArrayList;

    .line 114
    new-instance v0, Landroidx/collection/LongSparseArray;

    invoke-direct {v0}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/MessageSendPreview;->groupedMessagesMap:Landroidx/collection/LongSparseArray;

    .line 121
    new-instance v0, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/MessageSendPreview;->editTextBackgroundPaint:Landroid/graphics/Paint;

    const/4 v8, 0x2

    .line 1439
    new-array v0, v8, [I

    iput-object v0, p0, Lorg/telegram/ui/MessageSendPreview;->sendButtonInitialPosition:[I

    const/4 v9, 0x0

    .line 1517
    iput-boolean v9, p0, Lorg/telegram/ui/MessageSendPreview;->dismissing:Z

    .line 1533
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/MessageSendPreview;->cellDelta:Landroid/graphics/Rect;

    .line 144
    iput-object p1, p0, Lorg/telegram/ui/MessageSendPreview;->context:Landroid/content/Context;

    .line 145
    iput-object v6, p0, Lorg/telegram/ui/MessageSendPreview;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 147
    new-instance v10, Lorg/telegram/ui/MessageSendPreview$1;

    invoke-direct {v10, p0, p1}, Lorg/telegram/ui/MessageSendPreview$1;-><init>(Lorg/telegram/ui/MessageSendPreview;Landroid/content/Context;)V

    iput-object v10, p0, Lorg/telegram/ui/MessageSendPreview;->windowView:Landroid/widget/FrameLayout;

    .line 180
    invoke-static {v3, v10, v10}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;->getInstance(ILandroid/view/View;Landroid/view/ViewGroup;)Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/MessageSendPreview;->spoilerEffect2:Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;

    .line 181
    new-instance v0, Lorg/telegram/ui/MessageSendPreview$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lorg/telegram/ui/MessageSendPreview$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/MessageSendPreview;)V

    invoke-virtual {v10, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    invoke-virtual {v10}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v4, Lorg/telegram/ui/MessageSendPreview$2;

    invoke-direct {v4, p0}, Lorg/telegram/ui/MessageSendPreview$2;-><init>(Lorg/telegram/ui/MessageSendPreview;)V

    invoke-virtual {v0, v4}, Landroid/view/ViewTreeObserver;->addOnGlobalFocusChangeListener(Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;)V

    .line 203
    new-instance v11, Lorg/telegram/ui/MessageSendPreview$3;

    invoke-direct {v11, p0, p1, v6}, Lorg/telegram/ui/MessageSendPreview$3;-><init>(Lorg/telegram/ui/MessageSendPreview;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v11, p0, Lorg/telegram/ui/MessageSendPreview;->containerView:Landroid/widget/FrameLayout;

    .line 410
    invoke-virtual {v11, v9}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    const/16 v0, 0x77

    const/4 v12, -0x1

    .line 411
    invoke-static {v12, v12, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v10, v11, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 414
    invoke-virtual {v10, v3}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 415
    new-instance v0, Lorg/telegram/ui/MessageSendPreview$4;

    invoke-direct {v0, p0}, Lorg/telegram/ui/MessageSendPreview$4;-><init>(Lorg/telegram/ui/MessageSendPreview;)V

    invoke-virtual {v10, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 436
    new-instance v13, Lorg/telegram/ui/MessageSendPreview$5;

    invoke-direct {v13, p0, p1, v6}, Lorg/telegram/ui/MessageSendPreview$5;-><init>(Lorg/telegram/ui/MessageSendPreview;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v13, p0, Lorg/telegram/ui/MessageSendPreview;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 785
    new-instance v0, Lorg/telegram/ui/MessageSendPreview$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lorg/telegram/ui/MessageSendPreview$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/MessageSendPreview;)V

    invoke-virtual {v13, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 788
    new-instance v0, Lorg/telegram/ui/MessageSendPreview$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lorg/telegram/ui/MessageSendPreview$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/MessageSendPreview;)V

    invoke-virtual {v13, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 791
    new-instance v0, Lorg/telegram/ui/MessageSendPreview$6;

    invoke-direct {v0, p0}, Lorg/telegram/ui/MessageSendPreview$6;-><init>(Lorg/telegram/ui/MessageSendPreview;)V

    invoke-virtual {v13, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 797
    new-instance v0, Lorg/telegram/ui/MessageSendPreview$7;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3, v13, v6}, Lorg/telegram/ui/MessageSendPreview$7;-><init>(Lorg/telegram/ui/MessageSendPreview;Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/Components/RecyclerListView;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 860
    invoke-virtual {v13, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 862
    new-instance v0, Lorg/telegram/ui/MessageSendPreview$8;

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/16 v3, 0x3e8

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/MessageSendPreview$8;-><init>(Lorg/telegram/ui/MessageSendPreview;Landroid/content/Context;IIZ)V

    iput-object v0, p0, Lorg/telegram/ui/MessageSendPreview;->chatLayoutManager:Landroidx/recyclerview/widget/GridLayoutManagerFixed;

    .line 926
    new-instance v3, Lorg/telegram/ui/MessageSendPreview$9;

    invoke-direct {v3, p0}, Lorg/telegram/ui/MessageSendPreview$9;-><init>(Lorg/telegram/ui/MessageSendPreview;)V

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 937
    invoke-virtual {v13, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 938
    new-instance v0, Lorg/telegram/ui/MessageSendPreview$10;

    invoke-direct {v0, p0}, Lorg/telegram/ui/MessageSendPreview$10;-><init>(Lorg/telegram/ui/MessageSendPreview;)V

    invoke-virtual {v13, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 971
    new-instance v0, Lorg/telegram/ui/MessageSendPreview$11;

    invoke-direct {v0, p0, p1, v6}, Lorg/telegram/ui/MessageSendPreview$11;-><init>(Lorg/telegram/ui/MessageSendPreview;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/MessageSendPreview;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v13, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 1003
    invoke-virtual {v13, v9}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 1004
    invoke-virtual {v13, v8}, Landroid/view/View;->setOverScrollMode(I)V

    const/high16 v0, -0x40000000    # -2.0f

    .line 1005
    invoke-static {v12, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v11, v13, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1007
    new-instance v0, Lorg/telegram/ui/MessageSendPreview$12;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/MessageSendPreview$12;-><init>(Lorg/telegram/ui/MessageSendPreview;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/MessageSendPreview;->effectsView:Landroid/widget/FrameLayout;

    const/high16 v2, -0x40800000    # -1.0f

    .line 1026
    invoke-static {v12, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v10, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1027
    new-instance v2, Lorg/telegram/ui/MessageSendPreview$13;

    invoke-direct {v2, p0, v0, v7}, Lorg/telegram/ui/MessageSendPreview$13;-><init>(Lorg/telegram/ui/MessageSendPreview;Landroid/widget/FrameLayout;I)V

    iput-object v2, p0, Lorg/telegram/ui/MessageSendPreview;->effectOverlay:Lorg/telegram/ui/EmojiAnimationsOverlay;

    return-void
.end method

.method private animateOpenTo(ZLjava/lang/Runnable;)V
    .locals 6

    .line 1677
    iget-object v0, p0, Lorg/telegram/ui/MessageSendPreview;->openAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 1678
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 1681
    iget-object v2, p0, Lorg/telegram/ui/MessageSendPreview;->optionsView:Landroid/view/View;

    if-eqz v2, :cond_1

    instance-of v2, v2, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    if-eqz v2, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    if-eqz v2, :cond_2

    .line 1683
    iget-object v3, p0, Lorg/telegram/ui/MessageSendPreview;->optionsView:Landroid/view/View;

    check-cast v3, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->startAnimation(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;)Landroid/animation/AnimatorSet;

    :cond_2
    if-nez p1, :cond_3

    .line 1686
    invoke-virtual {p0}, Lorg/telegram/ui/MessageSendPreview;->hideEffectSelector()V

    .line 1688
    :cond_3
    iput-boolean v1, p0, Lorg/telegram/ui/MessageSendPreview;->openInProgress:Z

    .line 1689
    iput-boolean p1, p0, Lorg/telegram/ui/MessageSendPreview;->opening:Z

    xor-int/lit8 v3, p1, 0x1

    .line 1690
    iput-boolean v3, p0, Lorg/telegram/ui/MessageSendPreview;->closing:Z

    .line 1691
    iget-object v3, p0, Lorg/telegram/ui/MessageSendPreview;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    .line 1692
    iput-boolean v1, p0, Lorg/telegram/ui/MessageSendPreview;->firstOpenFrame:Z

    .line 1693
    iput-boolean v1, p0, Lorg/telegram/ui/MessageSendPreview;->firstOpenFrame2:Z

    .line 1694
    iget v3, p0, Lorg/telegram/ui/MessageSendPreview;->openProgress:F

    if-eqz p1, :cond_4

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    :goto_1
    const/4 v5, 0x2

    new-array v5, v5, [F

    aput v3, v5, v0

    aput v4, v5, v1

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/MessageSendPreview;->openAnimator:Landroid/animation/ValueAnimator;

    .line 1695
    new-instance v1, Lorg/telegram/ui/MessageSendPreview$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v2}, Lorg/telegram/ui/MessageSendPreview$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/MessageSendPreview;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1705
    iget-object v0, p0, Lorg/telegram/ui/MessageSendPreview;->openAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/MessageSendPreview$17;

    invoke-direct {v1, p0, p1, v2, p2}, Lorg/telegram/ui/MessageSendPreview$17;-><init>(Lorg/telegram/ui/MessageSendPreview;ZZLjava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1748
    iget-object p1, p0, Lorg/telegram/ui/MessageSendPreview;->openAnimator:Landroid/animation/ValueAnimator;

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1749
    iget-object p1, p0, Lorg/telegram/ui/MessageSendPreview;->openAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x15e

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1750
    iget-object p1, p0, Lorg/telegram/ui/MessageSendPreview;->openAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private getMainMessageCellPosition()I
    .locals 2

    .line 118
    iget-object v0, p0, Lorg/telegram/ui/MessageSendPreview;->groupedMessagesMap:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/MessageSendPreview;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/MessageSendPreview;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    rem-int/2addr v0, v1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private getValidGroupedMessage(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/messenger/MessageObject$GroupedMessages;
    .locals 4

    .line 1796
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getGroupId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1797
    iget-object v0, p0, Lorg/telegram/ui/MessageSendPreview;->groupedMessagesMap:Landroidx/collection/LongSparseArray;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getGroupId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;

    if-eqz v0, :cond_1

    .line 1798
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

.method private getWidthForMessage(Lorg/telegram/messenger/MessageObject;)I
    .locals 8

    .line 1860
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1863
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/MessageSendPreview;->dummyMessageCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    if-nez v0, :cond_1

    .line 1864
    new-instance v2, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lorg/telegram/ui/MessageSendPreview;->currentAccount:I

    const/4 v6, 0x0

    iget-object v7, p0, Lorg/telegram/ui/MessageSendPreview;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v5, 0x1

    invoke-direct/range {v2 .. v7}, Lorg/telegram/ui/Cells/ChatMessageCell;-><init>(Landroid/content/Context;IZLorg/telegram/messenger/ChatMessageSharedResources;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v2, p0, Lorg/telegram/ui/MessageSendPreview;->dummyMessageCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 1866
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/MessageSendPreview;->dummyMessageCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    iput-boolean v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell;->isChat:Z

    .line 1867
    iput-boolean v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell;->isSavedChat:Z

    .line 1868
    iput-boolean v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell;->isSavedPreviewChat:Z

    .line 1869
    iput-boolean v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell;->isBot:Z

    .line 1870
    iput-boolean v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell;->isMegagroup:Z

    .line 1871
    iget-object v1, p0, Lorg/telegram/ui/MessageSendPreview;->groupedMessagesMap:Landroidx/collection/LongSparseArray;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getGroupId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject$GroupedMessages;

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->computeWidth(Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject$GroupedMessages;)I

    move-result p1

    return p1
.end method

.method private synthetic lambda$allowEffectSelector$3(Ljava/lang/Integer;)V
    .locals 2

    .line 1374
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/MessageSendPreview;->insets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/ui/MessageSendPreview;->keyboardVisible:Z

    if-eqz v0, :cond_1

    .line 1375
    iget v0, p0, Lorg/telegram/ui/MessageSendPreview;->effectSelectorContainerY:F

    iget-object v1, p0, Lorg/telegram/ui/MessageSendPreview;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr v1, p1

    iget-object p1, p0, Lorg/telegram/ui/MessageSendPreview;->effectSelectorContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    sub-int/2addr v1, p1

    int-to-float p1, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    goto :goto_1

    :cond_1
    iget p1, p0, Lorg/telegram/ui/MessageSendPreview;->effectSelectorContainerY:F

    .line 1376
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/MessageSendPreview;->effectSelectorContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/MessageSendPreview;->effectSelectorContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0xfa

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->keyboardInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private synthetic lambda$animateOpenTo$8(ZLandroid/animation/ValueAnimator;)V
    .locals 1

    .line 1696
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iput p2, p0, Lorg/telegram/ui/MessageSendPreview;->openProgress:F

    .line 1697
    iget-object v0, p0, Lorg/telegram/ui/MessageSendPreview;->effectsView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p2}, Landroid/view/View;->setAlpha(F)V

    .line 1698
    iget-object p2, p0, Lorg/telegram/ui/MessageSendPreview;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    iget v0, p0, Lorg/telegram/ui/MessageSendPreview;->openProgress:F

    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    if-nez p1, :cond_0

    .line 1699
    iget-object p1, p0, Lorg/telegram/ui/MessageSendPreview;->optionsView:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 1700
    iget p2, p0, Lorg/telegram/ui/MessageSendPreview;->openProgress:F

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 1702
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/MessageSendPreview;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 1703
    iget-object p1, p0, Lorg/telegram/ui/MessageSendPreview;->containerView:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$dismiss$6()V
    .locals 0

    .line 1668
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private synthetic lambda$dismiss$7()V
    .locals 2

    const/4 v0, 0x0

    .line 1664
    invoke-static {v0, v0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;->pause(IZ)V

    .line 1665
    iget-object v0, p0, Lorg/telegram/ui/MessageSendPreview;->spoilerEffect2:Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;

    if-eqz v0, :cond_0

    .line 1666
    iget-object v1, p0, Lorg/telegram/ui/MessageSendPreview;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;->detach(Landroid/view/View;)V

    .line 1668
    :cond_0
    new-instance v0, Lorg/telegram/ui/MessageSendPreview$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lorg/telegram/ui/MessageSendPreview$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/MessageSendPreview;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$dismissInto$4()V
    .locals 0

    .line 1628
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private synthetic lambda$dismissInto$5()V
    .locals 2

    const/4 v0, 0x0

    .line 1624
    invoke-static {v0, v0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;->pause(IZ)V

    .line 1625
    iget-object v0, p0, Lorg/telegram/ui/MessageSendPreview;->spoilerEffect2:Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;

    if-eqz v0, :cond_0

    .line 1626
    iget-object v1, p0, Lorg/telegram/ui/MessageSendPreview;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;->detach(Landroid/view/View;)V

    .line 1628
    :cond_0
    new-instance v0, Lorg/telegram/ui/MessageSendPreview$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lorg/telegram/ui/MessageSendPreview$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/MessageSendPreview;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    .line 182
    invoke-virtual {p0}, Lorg/telegram/ui/MessageSendPreview;->onBackPressed()V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)V
    .locals 0

    .line 786
    invoke-virtual {p0}, Lorg/telegram/ui/MessageSendPreview;->onBackPressed()V

    return-void
.end method

.method private synthetic lambda$new$2(Landroid/view/View;I)V
    .locals 0

    .line 789
    invoke-virtual {p0}, Lorg/telegram/ui/MessageSendPreview;->onBackPressed()V

    return-void
.end method

.method private synthetic lambda$prepareBlur$9(FLandroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1762
    iget-object v0, p0, Lorg/telegram/ui/MessageSendPreview;->anchorSendButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    if-eqz v0, :cond_0

    .line 1763
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    if-eqz p2, :cond_1

    const/4 p1, 0x0

    .line 1766
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 1768
    :cond_1
    iput-object p3, p0, Lorg/telegram/ui/MessageSendPreview;->blurBitmap:Landroid/graphics/Bitmap;

    .line 1770
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/MessageSendPreview;->blurBitmapPaint:Landroid/graphics/Paint;

    .line 1771
    new-instance p2, Landroid/graphics/BitmapShader;

    iget-object p3, p0, Lorg/telegram/ui/MessageSendPreview;->blurBitmap:Landroid/graphics/Bitmap;

    sget-object v0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {p2, p3, v0, v0}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object p2, p0, Lorg/telegram/ui/MessageSendPreview;->blurBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1772
    new-instance p1, Landroid/graphics/ColorMatrix;

    invoke-direct {p1}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 1773
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result p2

    if-eqz p2, :cond_2

    const p2, 0x3da3d70a    # 0.08f

    goto :goto_0

    :cond_2
    const/high16 p2, 0x3e800000    # 0.25f

    :goto_0
    invoke-static {p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->adjustSaturationColorMatrix(Landroid/graphics/ColorMatrix;F)V

    .line 1774
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result p2

    if-eqz p2, :cond_3

    const p2, -0x435c28f6    # -0.02f

    goto :goto_1

    :cond_3
    const p2, -0x4270a3d7    # -0.07f

    :goto_1
    invoke-static {p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->adjustBrightnessColorMatrix(Landroid/graphics/ColorMatrix;F)V

    .line 1775
    iget-object p2, p0, Lorg/telegram/ui/MessageSendPreview;->blurBitmapPaint:Landroid/graphics/Paint;

    new-instance p3, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {p3, p1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 1776
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/MessageSendPreview;->blurMatrix:Landroid/graphics/Matrix;

    return-void
.end method

.method private layout()V
    .locals 9

    .line 1441
    iget-object v0, p0, Lorg/telegram/ui/MessageSendPreview;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-gtz v0, :cond_0

    goto/16 :goto_5

    :cond_0
    const/4 v0, 0x2

    .line 1444
    new-array v0, v0, [I

    .line 1445
    iget-object v1, p0, Lorg/telegram/ui/MessageSendPreview;->anchorSendButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v1, 0x0

    .line 1447
    aget v2, v0, v1

    iget-object v3, p0, Lorg/telegram/ui/MessageSendPreview;->anchorSendButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/MessageSendPreview;->anchorSendButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->width()I

    move-result v4

    sub-int/2addr v3, v4

    const/high16 v4, 0x40c00000    # 6.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v3, v5

    add-int/2addr v2, v3

    aput v2, v0, v1

    .line 1449
    iget-object v3, p0, Lorg/telegram/ui/MessageSendPreview;->sendButtonInitialPosition:[I

    aput v2, v3, v1

    const/4 v2, 0x1

    .line 1450
    aget v5, v0, v2

    aput v5, v3, v2

    .line 1452
    iget-object v3, p0, Lorg/telegram/ui/MessageSendPreview;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iget-object v5, p0, Lorg/telegram/ui/MessageSendPreview;->sendButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int/2addr v3, v5

    iget-object v5, p0, Lorg/telegram/ui/MessageSendPreview;->effectSelector:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    if-eqz v5, :cond_1

    const/high16 v5, 0x43a00000    # 320.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    goto :goto_0

    :cond_1
    move v5, v1

    :goto_0
    add-int/2addr v3, v5

    .line 1453
    iget-object v5, p0, Lorg/telegram/ui/MessageSendPreview;->insets:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    const/high16 v6, 0x41000000    # 8.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    add-int/2addr v5, v7

    .line 1455
    iget-object v7, p0, Lorg/telegram/ui/MessageSendPreview;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    const/high16 v7, -0x3f400000    # -6.0f

    goto :goto_1

    :cond_2
    const/high16 v7, 0x42400000    # 48.0f

    :goto_1
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    iget-object v8, p0, Lorg/telegram/ui/MessageSendPreview;->optionsView:Landroid/view/View;

    if-nez v8, :cond_3

    move v8, v1

    goto :goto_2

    :cond_3
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    :goto_2
    add-int/2addr v7, v8

    .line 1456
    iget-object v8, p0, Lorg/telegram/ui/MessageSendPreview;->containerView:Landroid/widget/FrameLayout;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int/2addr v8, v6

    iget-object v6, p0, Lorg/telegram/ui/MessageSendPreview;->insets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v6

    .line 1457
    aget v6, v0, v2

    add-int/2addr v6, v7

    if-le v6, v8, :cond_4

    sub-int v6, v8, v7

    .line 1458
    aput v6, v0, v2

    .line 1460
    :cond_4
    aget v6, v0, v2

    sub-int/2addr v6, v3

    if-ge v6, v5, :cond_5

    add-int/2addr v5, v3

    .line 1461
    aput v5, v0, v2

    .line 1463
    :cond_5
    aget v3, v0, v2

    iget-object v5, p0, Lorg/telegram/ui/MessageSendPreview;->anchorSendButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v3, v5

    add-int/2addr v3, v7

    if-le v3, v8, :cond_6

    sub-int/2addr v8, v7

    .line 1464
    iget-object v3, p0, Lorg/telegram/ui/MessageSendPreview;->anchorSendButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v8, v3

    aput v8, v0, v2

    .line 1467
    :cond_6
    iget-object v3, p0, Lorg/telegram/ui/MessageSendPreview;->sendButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    aget v5, v0, v1

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v6

    iget-object v7, p0, Lorg/telegram/ui/MessageSendPreview;->sendButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->width()I

    move-result v7

    sub-int/2addr v6, v7

    sub-int/2addr v5, v6

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setX(F)V

    .line 1468
    iget-object v3, p0, Lorg/telegram/ui/MessageSendPreview;->sendButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    aget v5, v0, v2

    int-to-float v5, v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setY(F)V

    .line 1470
    iget-object v3, p0, Lorg/telegram/ui/MessageSendPreview;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    aget v5, v0, v1

    const/high16 v6, 0x40e00000    # 7.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    add-int/2addr v5, v7

    iget-object v7, p0, Lorg/telegram/ui/MessageSendPreview;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    sub-int/2addr v5, v7

    int-to-float v5, v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setX(F)V

    .line 1471
    iget-boolean v3, p0, Lorg/telegram/ui/MessageSendPreview;->layoutDone:Z

    if-eqz v3, :cond_7

    .line 1472
    iget-object v3, p0, Lorg/telegram/ui/MessageSendPreview;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/RecyclerListView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    aget v5, v0, v2

    iget-object v7, p0, Lorg/telegram/ui/MessageSendPreview;->sendButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v5, v7

    iget-object v7, p0, Lorg/telegram/ui/MessageSendPreview;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    sub-int/2addr v5, v7

    iget-object v7, p0, Lorg/telegram/ui/MessageSendPreview;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    sub-int/2addr v5, v7

    int-to-float v5, v5

    invoke-virtual {v3, v5}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    sget-object v5, Landroidx/recyclerview/widget/ChatListItemAnimator;->DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v7, 0xfa

    invoke-virtual {v3, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_3

    .line 1474
    :cond_7
    iget-object v3, p0, Lorg/telegram/ui/MessageSendPreview;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    aget v5, v0, v2

    iget-object v7, p0, Lorg/telegram/ui/MessageSendPreview;->sendButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v5, v7

    iget-object v7, p0, Lorg/telegram/ui/MessageSendPreview;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    sub-int/2addr v5, v7

    int-to-float v5, v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setY(F)V

    .line 1477
    :goto_3
    iget-object v3, p0, Lorg/telegram/ui/MessageSendPreview;->optionsView:Landroid/view/View;

    if-eqz v3, :cond_9

    .line 1478
    aget v5, v0, v1

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v5, v6

    iget-object v6, p0, Lorg/telegram/ui/MessageSendPreview;->optionsView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setX(F)V

    .line 1479
    iget-object v3, p0, Lorg/telegram/ui/MessageSendPreview;->optionsView:Landroid/view/View;

    aget v5, v0, v2

    iget-object v6, p0, Lorg/telegram/ui/MessageSendPreview;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    neg-int v6, v6

    goto :goto_4

    :cond_8
    iget-object v6, p0, Lorg/telegram/ui/MessageSendPreview;->sendButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    :goto_4
    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setY(F)V

    .line 1482
    :cond_9
    iget-object v3, p0, Lorg/telegram/ui/MessageSendPreview;->effectSelectorContainer:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_b

    .line 1483
    aget v5, v0, v1

    iget-object v6, p0, Lorg/telegram/ui/MessageSendPreview;->sendButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->width()I

    move-result v6

    add-int/2addr v5, v6

    iget-object v6, p0, Lorg/telegram/ui/MessageSendPreview;->effectSelectorContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v5, v4

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v3, v1}, Landroid/view/View;->setX(F)V

    .line 1484
    iget-object v1, p0, Lorg/telegram/ui/MessageSendPreview;->cameraRect:Landroid/graphics/RectF;

    const/high16 v3, 0x41c00000    # 24.0f

    if-eqz v1, :cond_a

    .line 1485
    iget-object v0, p0, Lorg/telegram/ui/MessageSendPreview;->effectSelectorContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lorg/telegram/ui/MessageSendPreview;->insets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v1, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v1, v4

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Lorg/telegram/ui/MessageSendPreview;->effectSelectorContainerY:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    .line 1486
    iget-object v0, p0, Lorg/telegram/ui/MessageSendPreview;->effectSelector:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    if-eqz v0, :cond_b

    .line 1487
    iget-object v1, p0, Lorg/telegram/ui/MessageSendPreview;->insets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/MessageSendPreview;->cameraRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/MessageSendPreview;->effectSelector:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    return-void

    .line 1490
    :cond_a
    aget v0, v0, v2

    iget-object v1, p0, Lorg/telegram/ui/MessageSendPreview;->sendButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/MessageSendPreview;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 1491
    iget-object v1, p0, Lorg/telegram/ui/MessageSendPreview;->effectSelectorContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lorg/telegram/ui/MessageSendPreview;->insets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float v4, v0, v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, p0, Lorg/telegram/ui/MessageSendPreview;->effectSelectorContainerY:F

    invoke-virtual {v1, v2}, Landroid/view/View;->setY(F)V

    .line 1492
    iget-object v1, p0, Lorg/telegram/ui/MessageSendPreview;->effectSelector:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    if-eqz v1, :cond_b

    .line 1493
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iget v2, p0, Lorg/telegram/ui/MessageSendPreview;->effectSelectorContainerY:F

    sub-float/2addr v0, v2

    const/4 v2, 0x0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setY(F)V

    :cond_b
    :goto_5
    return-void
.end method

.method private prepareBlur(Landroid/view/View;)V
    .locals 3

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    .line 1755
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1757
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/MessageSendPreview;->anchorSendButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    .line 1758
    iget-object v1, p0, Lorg/telegram/ui/MessageSendPreview;->anchorSendButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    .line 1759
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1761
    :cond_1
    new-instance v1, Lorg/telegram/ui/MessageSendPreview$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0, p1}, Lorg/telegram/ui/MessageSendPreview$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/MessageSendPreview;FLandroid/view/View;)V

    const/high16 p1, 0x41600000    # 14.0f

    invoke-static {v1, p1}, Lorg/telegram/messenger/AndroidUtilities;->makeGlobalBlurBitmap(Lorg/telegram/messenger/Utilities$Callback;F)V

    return-void
.end method


# virtual methods
.method public allowEffectSelector(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 12

    .line 1242
    iget-object v0, p0, Lorg/telegram/ui/MessageSendPreview;->effectSelector:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move-object v4, p0

    goto/16 :goto_1

    .line 1243
    :cond_1
    iget v0, p0, Lorg/telegram/ui/MessageSendPreview;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getAvailableEffects()Lorg/telegram/tgnet/TLRPC$messages_AvailableEffects;

    .line 1244
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/MessageSendPreview;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/MessageSendPreview;->effectSelectorContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    .line 1245
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 1246
    iget-object v0, p0, Lorg/telegram/ui/MessageSendPreview;->effectSelectorContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 1247
    iget-object v0, p0, Lorg/telegram/ui/MessageSendPreview;->effectSelectorContainer:Landroid/widget/FrameLayout;

    const/high16 v2, 0x41c00000    # 24.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v0, v1, v1, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 1248
    new-instance v3, Lorg/telegram/ui/MessageSendPreview$15;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v7

    iget v8, p0, Lorg/telegram/ui/MessageSendPreview;->currentAccount:I

    iget-object v9, p0, Lorg/telegram/ui/MessageSendPreview;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v5, 0x5

    const/4 v6, 0x0

    move-object v4, p0

    invoke-direct/range {v3 .. v9}, Lorg/telegram/ui/MessageSendPreview$15;-><init>(Lorg/telegram/ui/MessageSendPreview;ILorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v3, v4, Lorg/telegram/ui/MessageSendPreview;->effectSelector:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    .line 1256
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 1257
    iget-object v0, v4, Lorg/telegram/ui/MessageSendPreview;->effectSelector:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 1258
    iget-object v0, v4, Lorg/telegram/ui/MessageSendPreview;->effectSelector:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/high16 v5, 0x41b00000    # 22.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v0, v3, v6, v2, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 1259
    iget-object v0, v4, Lorg/telegram/ui/MessageSendPreview;->effectSelector:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    new-instance v2, Lorg/telegram/ui/MessageSendPreview$16;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/MessageSendPreview$16;-><init>(Lorg/telegram/ui/MessageSendPreview;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setDelegate(Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;)V

    .line 1352
    iget-object p1, v4, Lorg/telegram/ui/MessageSendPreview;->effectSelector:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setTop(Z)V

    .line 1353
    iget-object p1, v4, Lorg/telegram/ui/MessageSendPreview;->effectSelector:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 1354
    iget-object p1, v4, Lorg/telegram/ui/MessageSendPreview;->effectSelector:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 1355
    iget-object p1, v4, Lorg/telegram/ui/MessageSendPreview;->effectSelector:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1356
    iget-object p1, v4, Lorg/telegram/ui/MessageSendPreview;->effectSelector:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    sget v0, Lorg/telegram/messenger/R$string;->AddEffectMessageHint:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 1357
    iget-object p1, v4, Lorg/telegram/ui/MessageSendPreview;->effectSelector:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    const/high16 v0, -0x3e380000    # -25.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setBubbleOffset(F)V

    .line 1358
    iget-object p1, v4, Lorg/telegram/ui/MessageSendPreview;->effectSelector:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setMiniBubblesOffset(F)V

    .line 1359
    iget-object p1, v4, Lorg/telegram/ui/MessageSendPreview;->containerView:Landroid/widget/FrameLayout;

    iget-object v0, v4, Lorg/telegram/ui/MessageSendPreview;->effectSelectorContainer:Landroid/widget/FrameLayout;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v5, -0x2

    const/high16 v6, 0x43960000    # 300.0f

    const/16 v7, 0x33

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1360
    iget-object p1, v4, Lorg/telegram/ui/MessageSendPreview;->effectSelectorContainer:Landroid/widget/FrameLayout;

    iget-object v0, v4, Lorg/telegram/ui/MessageSendPreview;->effectSelector:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    const/4 v5, -0x1

    const/high16 v6, 0x42e80000    # 116.0f

    const/16 v7, 0x53

    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1361
    iget-object p1, v4, Lorg/telegram/ui/MessageSendPreview;->effectSelector:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    const v0, 0x3ecccccd    # 0.4f

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 1362
    iget-object p1, v4, Lorg/telegram/ui/MessageSendPreview;->effectSelector:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 1363
    iget-object p1, v4, Lorg/telegram/ui/MessageSendPreview;->effectSelector:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setAlpha(F)V

    .line 1364
    iget p1, v4, Lorg/telegram/ui/MessageSendPreview;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->hasAvailableEffects()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1365
    invoke-virtual {p0}, Lorg/telegram/ui/MessageSendPreview;->showEffectSelector()V

    goto :goto_0

    .line 1367
    :cond_2
    iget p1, v4, Lorg/telegram/ui/MessageSendPreview;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->availableEffectsUpdate:I

    invoke-virtual {p1, p0, v0}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1369
    :goto_0
    iget-object p1, v4, Lorg/telegram/ui/MessageSendPreview;->effectSelector:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    .line 1370
    invoke-virtual {p1, v0, v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setPaused(ZZ)V

    .line 1373
    :cond_3
    new-instance p1, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    iget-object v0, v4, Lorg/telegram/ui/MessageSendPreview;->windowView:Landroid/widget/FrameLayout;

    new-instance v1, Lorg/telegram/ui/MessageSendPreview$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/MessageSendPreview$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/MessageSendPreview;)V

    invoke-direct {p1, v0, v1}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;-><init>(Landroid/view/View;Lorg/telegram/messenger/Utilities$Callback;)V

    :goto_1
    return-void
.end method

.method public changeMessage(Lorg/telegram/messenger/MessageObject;)V
    .locals 3

    .line 1816
    invoke-direct {p0, p1}, Lorg/telegram/ui/MessageSendPreview;->getValidGroupedMessage(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1818
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject$GroupedMessages;->calculate()V

    .line 1819
    iget-object p1, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    .line 1820
    invoke-virtual {p0, v2}, Lorg/telegram/ui/MessageSendPreview;->changeMessageInternal(Lorg/telegram/messenger/MessageObject;)V

    goto :goto_0

    :cond_0
    return-void

    .line 1823
    :cond_1
    invoke-virtual {p0, p1}, Lorg/telegram/ui/MessageSendPreview;->changeMessageInternal(Lorg/telegram/messenger/MessageObject;)V

    return-void
.end method

.method public changeMessageInternal(Lorg/telegram/messenger/MessageObject;)V
    .locals 9

    .line 1828
    iget-object v0, p0, Lorg/telegram/ui/MessageSendPreview;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 1831
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/MessageSendPreview;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1832
    iget-object v2, p0, Lorg/telegram/ui/MessageSendPreview;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1833
    instance-of v3, v2, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v3, :cond_1

    .line 1834
    check-cast v2, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 1835
    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    if-ne v3, p1, :cond_1

    :goto_1
    move-object v3, v2

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :goto_2
    const/4 v1, -0x1

    .line 1842
    :goto_3
    iget-object v2, p0, Lorg/telegram/ui/MessageSendPreview;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x1

    if-ge v0, v2, :cond_4

    .line 1843
    iget-object v2, p0, Lorg/telegram/ui/MessageSendPreview;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_3

    .line 1844
    iget-object v1, p0, Lorg/telegram/ui/MessageSendPreview;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v4

    sub-int/2addr v1, v0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    if-nez v3, :cond_5

    .line 1848
    iget-object p1, p0, Lorg/telegram/ui/MessageSendPreview;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void

    .line 1853
    :cond_5
    iput-boolean v4, p1, Lorg/telegram/messenger/MessageObject;->forceUpdate:Z

    .line 1854
    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v5

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->isPinnedBottom()Z

    move-result v6

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->isPinnedTop()Z

    move-result v7

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->isFirstInChat()Z

    move-result v8

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Lorg/telegram/ui/Cells/ChatMessageCell;->setMessageObject(Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject$GroupedMessages;ZZZ)V

    .line 1855
    iget-object p1, p0, Lorg/telegram/ui/MessageSendPreview;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    .line 1786
    sget p2, Lorg/telegram/messenger/NotificationCenter;->availableEffectsUpdate:I

    if-ne p1, p2, :cond_0

    .line 1787
    iget p1, p0, Lorg/telegram/ui/MessageSendPreview;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->hasAvailableEffects()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1788
    invoke-virtual {p0}, Lorg/telegram/ui/MessageSendPreview;->showEffectSelector()V

    :cond_0
    return-void
.end method

.method public dismiss()V
    .locals 2

    .line 1655
    iget-boolean v0, p0, Lorg/telegram/ui/MessageSendPreview;->dismissing:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1656
    iput-boolean v0, p0, Lorg/telegram/ui/MessageSendPreview;->dismissing:Z

    .line 1657
    iget-object v0, p0, Lorg/telegram/ui/MessageSendPreview;->sendButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    if-eqz v0, :cond_1

    .line 1658
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 1660
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/MessageSendPreview;->anchorSendButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    if-eqz v0, :cond_2

    .line 1661
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 1663
    :cond_2
    new-instance v0, Lorg/telegram/ui/MessageSendPreview$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lorg/telegram/ui/MessageSendPreview$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/MessageSendPreview;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/MessageSendPreview;->animateOpenTo(ZLjava/lang/Runnable;)V

    .line 1670
    iget-object v0, p0, Lorg/telegram/ui/MessageSendPreview;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 1672
    iget v0, p0, Lorg/telegram/ui/MessageSendPreview;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->availableEffectsUpdate:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public dismiss(Z)V
    .locals 0

    .line 1636
    iput-boolean p1, p0, Lorg/telegram/ui/MessageSendPreview;->sent:Z

    .line 1637
    invoke-virtual {p0}, Lorg/telegram/ui/MessageSendPreview;->dismiss()V

    return-void
.end method

.method public dismissInstant()V
    .locals 2

    .line 1641
    iget-boolean v0, p0, Lorg/telegram/ui/MessageSendPreview;->dismissing:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1642
    iput-boolean v0, p0, Lorg/telegram/ui/MessageSendPreview;->dismissing:Z

    const/4 v0, 0x0

    .line 1644
    invoke-static {v0, v0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;->pause(IZ)V

    .line 1645
    iget-object v0, p0, Lorg/telegram/ui/MessageSendPreview;->spoilerEffect2:Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;

    if-eqz v0, :cond_1

    .line 1646
    iget-object v1, p0, Lorg/telegram/ui/MessageSendPreview;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;->detach(Landroid/view/View;)V

    .line 1648
    :cond_1
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 1650
    iget v0, p0, Lorg/telegram/ui/MessageSendPreview;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->availableEffectsUpdate:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public dismissInto(Lorg/telegram/ui/Cells/ChatMessageCell;FF)V
    .locals 9

    .line 1578
    iget-boolean v0, p0, Lorg/telegram/ui/MessageSendPreview;->dismissing:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1579
    iput-boolean v0, p0, Lorg/telegram/ui/MessageSendPreview;->sent:Z

    .line 1580
    iput-boolean v0, p0, Lorg/telegram/ui/MessageSendPreview;->dismissing:Z

    .line 1581
    iget-object v1, p0, Lorg/telegram/ui/MessageSendPreview;->sendButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    if-eqz v1, :cond_1

    .line 1582
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 1584
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/MessageSendPreview;->anchorSendButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    if-eqz v1, :cond_2

    .line 1585
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 1587
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/MessageSendPreview;->mainMessageCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    if-eqz p1, :cond_7

    .line 1588
    iput-object p1, p0, Lorg/telegram/ui/MessageSendPreview;->destCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    const/4 v1, 0x4

    .line 1589
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1590
    iput p2, p0, Lorg/telegram/ui/MessageSendPreview;->destClipTop:F

    .line 1591
    iput p3, p0, Lorg/telegram/ui/MessageSendPreview;->destClipBottom:F

    .line 1593
    iget-object v3, p0, Lorg/telegram/ui/MessageSendPreview;->mainMessageCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object p2, p0, Lorg/telegram/ui/MessageSendPreview;->destCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-boolean p3, p2, Lorg/telegram/ui/Cells/ChatMessageCell;->isChat:Z

    iput-boolean p3, v3, Lorg/telegram/ui/Cells/ChatMessageCell;->isChat:Z

    .line 1594
    iget-boolean p3, p2, Lorg/telegram/ui/Cells/ChatMessageCell;->isThreadChat:Z

    iput-boolean p3, v3, Lorg/telegram/ui/Cells/ChatMessageCell;->isThreadChat:Z

    .line 1595
    iget-boolean p3, p2, Lorg/telegram/ui/Cells/ChatMessageCell;->isSavedChat:Z

    iput-boolean p3, v3, Lorg/telegram/ui/Cells/ChatMessageCell;->isSavedChat:Z

    .line 1596
    iget-boolean p3, p2, Lorg/telegram/ui/Cells/ChatMessageCell;->isBot:Z

    iput-boolean p3, v3, Lorg/telegram/ui/Cells/ChatMessageCell;->isBot:Z

    .line 1597
    iget-boolean p3, p2, Lorg/telegram/ui/Cells/ChatMessageCell;->isForum:Z

    iput-boolean p3, v3, Lorg/telegram/ui/Cells/ChatMessageCell;->isForum:Z

    .line 1599
    iget-boolean p2, p2, Lorg/telegram/ui/Cells/ChatMessageCell;->isForumGeneral:Z

    iput-boolean p2, v3, Lorg/telegram/ui/Cells/ChatMessageCell;->isForumGeneral:Z

    .line 1600
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->isPinnedBottom()Z

    move-result v6

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->isPinnedTop()Z

    move-result v7

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->isFirstInChat()Z

    move-result v8

    const/4 v5, 0x0

    invoke-virtual/range {v3 .. v8}, Lorg/telegram/ui/Cells/ChatMessageCell;->setMessageObject(Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject$GroupedMessages;ZZZ)V

    .line 1602
    iget-object p2, p0, Lorg/telegram/ui/MessageSendPreview;->mainMessageCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {p2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTransitionParams()Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    move-result-object p2

    .line 1603
    iget-object p3, p0, Lorg/telegram/ui/MessageSendPreview;->mainMessageCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {p3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTransitionParams()Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateChange()Z

    move-result p3

    iput-boolean p3, p2, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateChange:Z

    const/4 p3, 0x0

    .line 1604
    iput p3, p2, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateChangeProgress:F

    .line 1606
    iget-object p3, p0, Lorg/telegram/ui/MessageSendPreview;->mainMessageCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {p3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTransitionParams()Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    move-result-object p3

    iget-object p3, p3, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingBackgroundRect:Landroid/graphics/Rect;

    iget p3, p3, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lorg/telegram/ui/MessageSendPreview;->mainMessageCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getBackgroundDrawableLeft()I

    move-result v1

    if-eq p3, v1, :cond_3

    move p3, v0

    goto :goto_0

    :cond_3
    move p3, v2

    :goto_0
    if-nez p3, :cond_4

    .line 1607
    iget-object v1, p2, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingBackgroundRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lorg/telegram/ui/MessageSendPreview;->mainMessageCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getBackgroundDrawableTop()I

    move-result v3

    if-ne v1, v3, :cond_4

    iget-object v1, p2, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingBackgroundRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lorg/telegram/ui/MessageSendPreview;->mainMessageCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getBackgroundDrawableBottom()I

    move-result v3

    if-eq v1, v3, :cond_6

    .line 1608
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/MessageSendPreview;->cellDelta:Landroid/graphics/Rect;

    iget-object v3, p0, Lorg/telegram/ui/MessageSendPreview;->mainMessageCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getBackgroundDrawableBottom()I

    move-result v3

    iget-object v4, p2, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingBackgroundRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    neg-int v3, v3

    iput v3, v1, Landroid/graphics/Rect;->bottom:I

    .line 1609
    iget-object v1, p0, Lorg/telegram/ui/MessageSendPreview;->cellDelta:Landroid/graphics/Rect;

    iget-object v3, p0, Lorg/telegram/ui/MessageSendPreview;->mainMessageCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getBackgroundDrawableTop()I

    move-result v3

    iget-object v4, p2, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingBackgroundRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    neg-int v3, v3

    iput v3, v1, Landroid/graphics/Rect;->top:I

    .line 1610
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1611
    iget-object p1, p0, Lorg/telegram/ui/MessageSendPreview;->cellDelta:Landroid/graphics/Rect;

    iget-object v1, p0, Lorg/telegram/ui/MessageSendPreview;->mainMessageCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getBackgroundDrawableLeft()I

    move-result v1

    iget-object v3, p2, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingBackgroundRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v3

    neg-int v1, v1

    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 1612
    iget-object p1, p0, Lorg/telegram/ui/MessageSendPreview;->cellDelta:Landroid/graphics/Rect;

    iput v2, p1, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 1614
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/MessageSendPreview;->cellDelta:Landroid/graphics/Rect;

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 1615
    iget-object v1, p0, Lorg/telegram/ui/MessageSendPreview;->mainMessageCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getBackgroundDrawableRight()I

    move-result v1

    iget-object v3, p2, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingBackgroundRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v3

    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 1617
    :goto_1
    iput-boolean v0, p2, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateBackgroundBoundsInner:Z

    .line 1618
    iput-boolean p3, p2, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateBackgroundWidth:Z

    .line 1621
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/MessageSendPreview;->mainMessageCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {p1}, Lorg/telegram/ui/MessageSendPreview$VisiblePart;->of(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/ui/MessageSendPreview$VisiblePart;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/MessageSendPreview;->fromPart:Lorg/telegram/ui/MessageSendPreview$VisiblePart;

    .line 1623
    :cond_7
    new-instance p1, Lorg/telegram/ui/MessageSendPreview$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lorg/telegram/ui/MessageSendPreview$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/MessageSendPreview;)V

    invoke-direct {p0, v2, p1}, Lorg/telegram/ui/MessageSendPreview;->animateOpenTo(ZLjava/lang/Runnable;)V

    .line 1630
    iget-object p1, p0, Lorg/telegram/ui/MessageSendPreview;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 1632
    iget p1, p0, Lorg/telegram/ui/MessageSendPreview;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->availableEffectsUpdate:I

    invoke-virtual {p1, p0, p2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public drawStarsPrice(Landroid/graphics/Canvas;FFFF)V
    .locals 6

    .line 1894
    iget-object v0, p0, Lorg/telegram/ui/MessageSendPreview;->buttonText:Lorg/telegram/ui/Components/Text;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/MessageSendPreview;->buttonBgPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    add-float/2addr p2, p4

    const/high16 p4, 0x40000000    # 2.0f

    div-float/2addr p2, p4

    add-float/2addr p3, p5

    div-float v3, p3, p4

    const/high16 p3, 0x41e00000    # 28.0f

    .line 1897
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    int-to-float p3, p3

    iget-object p5, p0, Lorg/telegram/ui/MessageSendPreview;->buttonText:Lorg/telegram/ui/Components/Text;

    invoke-virtual {p5}, Lorg/telegram/ui/Components/Text;->getCurrentWidth()F

    move-result p5

    add-float/2addr p3, p5

    const/high16 p5, 0x42000000    # 32.0f

    .line 1898
    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p5

    int-to-float p5, p5

    .line 1899
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    div-float/2addr p3, p4

    sub-float v1, p2, p3

    div-float/2addr p5, p4

    sub-float p4, v3, p5

    add-float/2addr p2, p3

    add-float p3, v3, p5

    invoke-virtual {v0, v1, p4, p2, p3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1905
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1906
    iget-object p2, p0, Lorg/telegram/ui/MessageSendPreview;->buttonBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p5, p5, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1907
    iget-object v0, p0, Lorg/telegram/ui/MessageSendPreview;->buttonText:Lorg/telegram/ui/Components/Text;

    const/high16 p2, 0x41600000    # 14.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    add-float v2, v1, p2

    const/4 v4, -0x1

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/Text;->draw(Landroid/graphics/Canvas;FFIF)V

    .line 1908
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    :goto_0
    return-void
.end method

.method public getSelectedEffect()J
    .locals 5

    .line 1407
    iget-boolean v0, p0, Lorg/telegram/ui/MessageSendPreview;->sentEffect:Z

    const-wide/16 v1, 0x0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/MessageSendPreview;->effectSelector:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1409
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/MessageSendPreview;->cameraRect:Landroid/graphics/RectF;

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 1410
    iput-boolean v3, p0, Lorg/telegram/ui/MessageSendPreview;->sentEffect:Z

    .line 1411
    iget-wide v0, p0, Lorg/telegram/ui/MessageSendPreview;->effectId:J

    return-wide v0

    .line 1412
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/MessageSendPreview;->mainMessageCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v0, :cond_4

    .line 1413
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    if-nez v0, :cond_2

    return-wide v1

    .line 1416
    :cond_2
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags2:I

    and-int/lit8 v4, v4, 0x4

    if-nez v4, :cond_3

    return-wide v1

    .line 1419
    :cond_3
    iput-boolean v3, p0, Lorg/telegram/ui/MessageSendPreview;->sentEffect:Z

    .line 1420
    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->effect:J

    return-wide v0

    :cond_4
    :goto_0
    return-wide v1
.end method

.method public hideEffectSelector()V
    .locals 4

    .line 1430
    iget-object v0, p0, Lorg/telegram/ui/MessageSendPreview;->effectSelector:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1431
    :cond_0
    iget-boolean v1, p0, Lorg/telegram/ui/MessageSendPreview;->effectSelectorShown:Z

    if-nez v1, :cond_1

    :goto_0
    return-void

    .line 1432
    :cond_1
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->dismissWindow()V

    .line 1433
    iget-object v0, p0, Lorg/telegram/ui/MessageSendPreview;->effectSelector:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getReactionsWindow()Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    move-result-object v0

    const-wide/16 v1, 0xb4

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/MessageSendPreview;->effectSelector:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getReactionsWindow()Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->containerView:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;

    if-eqz v0, :cond_2

    .line 1434
    iget-object v0, p0, Lorg/telegram/ui/MessageSendPreview;->effectSelector:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getReactionsWindow()Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->containerView:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1436
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/MessageSendPreview;->effectSelector:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const v3, 0x3c23d70a    # 0.01f

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const v3, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public isShowing()Z
    .locals 1

    .line 1514
    iget-boolean v0, p0, Lorg/telegram/ui/MessageSendPreview;->dismissing:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public makeFocusable()V
    .locals 4

    .line 1501
    iget-boolean v0, p0, Lorg/telegram/ui/MessageSendPreview;->focusable:Z

    if-eqz v0, :cond_0

    return-void

    .line 1503
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 1504
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 1505
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v3, -0x20001

    and-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1506
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/4 v0, 0x1

    .line 1507
    iput-boolean v0, p0, Lorg/telegram/ui/MessageSendPreview;->focusable:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1509
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 1054
    iget-boolean v0, p0, Lorg/telegram/ui/MessageSendPreview;->keyboardVisible:Z

    if-eqz v0, :cond_0

    .line 1055
    invoke-virtual {p0}, Landroid/app/Dialog;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 1056
    iput-boolean v0, p0, Lorg/telegram/ui/MessageSendPreview;->keyboardVisible:Z

    return-void

    .line 1059
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/MessageSendPreview;->effectSelector:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getReactionsWindow()Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1060
    iget-object v0, p0, Lorg/telegram/ui/MessageSendPreview;->effectSelector:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getReactionsWindow()Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->transition:Z

    if-nez v0, :cond_1

    .line 1061
    iget-object v0, p0, Lorg/telegram/ui/MessageSendPreview;->effectSelector:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getReactionsWindow()Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->dismiss()V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x1

    .line 1065
    iput-boolean v0, p0, Lorg/telegram/ui/MessageSendPreview;->sentEffect:Z

    .line 1066
    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1111
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 1113
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 1114
    sget v0, Lorg/telegram/messenger/R$style;->DialogNoAnimation:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 1115
    iget-object v0, p0, Lorg/telegram/ui/MessageSendPreview;->windowView:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1117
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1118
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1119
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v1, 0x77

    .line 1120
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v1, 0x0

    .line 1121
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 1122
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, -0x3

    const/16 v2, 0x10

    .line 1123
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    const/high16 v2, 0x20000

    or-int/2addr v2, v1

    .line 1124
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1125
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const v3, -0x73fcfa80

    or-int/2addr v1, v3

    .line 1133
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v1, 0x1c

    const/4 v3, 0x1

    if-lt v2, v1, :cond_0

    .line 1135
    invoke-static {v0, v3}, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticApiModelOutline2;->m(Landroid/view/WindowManager$LayoutParams;I)V

    .line 1137
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1139
    iget-object p1, p0, Lorg/telegram/ui/MessageSendPreview;->windowView:Landroid/widget/FrameLayout;

    const/16 v0, 0x100

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 1140
    iget-object p1, p0, Lorg/telegram/ui/MessageSendPreview;->windowView:Landroid/widget/FrameLayout;

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v0

    xor-int/2addr v0, v3

    invoke-static {p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->setLightNavigationBar(Landroid/view/View;Z)V

    return-void
.end method

.method protected onEffectChange(J)V
    .locals 0

    return-void
.end method

.method public scrollTo(Z)V
    .locals 3

    .line 1807
    iget-object v0, p0, Lorg/telegram/ui/MessageSendPreview;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/MessageSendPreview;->chatLayoutManager:Landroidx/recyclerview/widget/GridLayoutManagerFixed;

    if-nez v0, :cond_0

    goto :goto_1

    .line 1808
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/MessageSendPreview;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-eqz p1, :cond_2

    const/16 v1, 0xa

    if-le v0, v1, :cond_1

    .line 1809
    rem-int/2addr v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, -0x1

    .line 1810
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/MessageSendPreview;->chatLayoutManager:Landroidx/recyclerview/widget/GridLayoutManagerFixed;

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v1, v0, v2, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(IIZ)V

    .line 1811
    iput-boolean p1, p0, Lorg/telegram/ui/MessageSendPreview;->scrolledToLast:Z

    :cond_3
    :goto_1
    return-void
.end method

.method public setCameraTexture(Landroid/view/TextureView;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    .line 1186
    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/MessageSendPreview;->cameraRect:Landroid/graphics/RectF;

    const/4 v0, 0x2

    .line 1187
    new-array v0, v0, [I

    .line 1188
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1189
    iget-object v1, p0, Lorg/telegram/ui/MessageSendPreview;->cameraRect:Landroid/graphics/RectF;

    const/4 v2, 0x0

    aget v2, v0, v2

    int-to-float v3, v2

    const/4 v4, 0x1

    aget v5, v0, v4

    int-to-float v5, v5

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v2, v6

    int-to-float v2, v2

    aget v0, v0, v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr v0, p1

    int-to-float p1, v0

    invoke-virtual {v1, v3, v5, v2, p1}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public setEditText(Lorg/telegram/ui/Components/EditTextCaption;Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    .line 1197
    iput-object p1, p0, Lorg/telegram/ui/MessageSendPreview;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    .line 1198
    iput-object p2, p0, Lorg/telegram/ui/MessageSendPreview;->drawEditText:Lorg/telegram/messenger/Utilities$Callback2;

    .line 1199
    iput-object p3, p0, Lorg/telegram/ui/MessageSendPreview;->drawEditTextBackground:Lorg/telegram/messenger/Utilities$Callback;

    return-void
.end method

.method public setEffectId(J)V
    .locals 2

    .line 1381
    iput-wide p1, p0, Lorg/telegram/ui/MessageSendPreview;->effectId:J

    .line 1382
    invoke-direct {p0}, Lorg/telegram/ui/MessageSendPreview;->getMainMessageCellPosition()I

    move-result v0

    if-ltz v0, :cond_0

    .line 1383
    iget-object v1, p0, Lorg/telegram/ui/MessageSendPreview;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/MessageSendPreview;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 1385
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags2:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags2:I

    .line 1386
    iput-wide p1, v0, Lorg/telegram/tgnet/TLRPC$Message;->effect:J

    .line 1388
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/MessageSendPreview;->effectSelector:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    if-eqz v0, :cond_2

    .line 1389
    iget v0, p0, Lorg/telegram/ui/MessageSendPreview;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/MessagesController;->getEffect(J)Lorg/telegram/tgnet/TLRPC$TL_availableEffect;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1391
    iget-object p2, p0, Lorg/telegram/ui/MessageSendPreview;->effectSelector:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->fromTL(Lorg/telegram/tgnet/TLRPC$TL_availableEffect;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setSelectedReactionAnimated(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)V

    :cond_2
    return-void
.end method

.method public setItemOptions(Lorg/telegram/ui/Components/ItemOptions;)V
    .locals 3

    .line 1237
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ItemOptions;->getLayout()Landroid/view/ViewGroup;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/MessageSendPreview;->optionsView:Landroid/view/View;

    .line 1238
    iget-object v0, p0, Lorg/telegram/ui/MessageSendPreview;->containerView:Landroid/widget/FrameLayout;

    const/4 v1, -0x2

    const/high16 v2, -0x40000000    # -2.0f

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setMessageObjects(Ljava/util/ArrayList;)V
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    .line 1144
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 1145
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    .line 1146
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->hasValidGroupId()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1147
    iget-object v3, p0, Lorg/telegram/ui/MessageSendPreview;->groupedMessagesMap:Landroidx/collection/LongSparseArray;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getGroupIdForUse()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject$GroupedMessages;

    if-nez v3, :cond_0

    .line 1149
    new-instance v3, Lorg/telegram/messenger/MessageObject$GroupedMessages;

    invoke-direct {v3}, Lorg/telegram/messenger/MessageObject$GroupedMessages;-><init>()V

    .line 1150
    iput-boolean v0, v3, Lorg/telegram/messenger/MessageObject$GroupedMessages;->reversed:Z

    .line 1151
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getGroupId()J

    move-result-wide v4

    iput-wide v4, v3, Lorg/telegram/messenger/MessageObject$GroupedMessages;->groupId:J

    .line 1152
    iget-object v6, p0, Lorg/telegram/ui/MessageSendPreview;->groupedMessagesMap:Landroidx/collection/LongSparseArray;

    invoke-virtual {v6, v4, v5, v3}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1154
    :cond_0
    invoke-virtual {v3, v2}, Lorg/telegram/messenger/MessageObject$GroupedMessages;->getPosition(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    move-result-object v4

    if-nez v4, :cond_4

    move v4, v0

    .line 1156
    :goto_1
    iget-object v5, v3, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 1157
    iget-object v5, v3, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v5

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v6

    if-ne v5, v6, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1163
    :cond_2
    iget-object v3, v3, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1166
    :cond_3
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getGroupIdForUse()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4

    .line 1167
    iget-object v3, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iput-wide v5, v3, Lorg/telegram/tgnet/TLRPC$Message;->grouped_id:J

    .line 1168
    iput-wide v5, v2, Lorg/telegram/messenger/MessageObject;->localSentGroupId:J

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    move v1, v0

    .line 1171
    :goto_3
    iget-object v2, p0, Lorg/telegram/ui/MessageSendPreview;->groupedMessagesMap:Landroidx/collection/LongSparseArray;

    invoke-virtual {v2}, Landroidx/collection/LongSparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 1172
    iget-object v2, p0, Lorg/telegram/ui/MessageSendPreview;->groupedMessagesMap:Landroidx/collection/LongSparseArray;

    invoke-virtual {v2, v1}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject$GroupedMessages;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject$GroupedMessages;->calculate()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1174
    :cond_6
    iget-object v1, p0, Lorg/telegram/ui/MessageSendPreview;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move p1, v0

    .line 1175
    :goto_4
    iget-object v1, p0, Lorg/telegram/ui/MessageSendPreview;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_7

    .line 1176
    iget v1, p0, Lorg/telegram/ui/MessageSendPreview;->messageObjectsWidth:I

    iget-object v2, p0, Lorg/telegram/ui/MessageSendPreview;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    invoke-direct {p0, v2}, Lorg/telegram/ui/MessageSendPreview;->getWidthForMessage(Lorg/telegram/messenger/MessageObject;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/MessageSendPreview;->messageObjectsWidth:I

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    .line 1178
    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/MessageSendPreview;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 1179
    iget-object p1, p0, Lorg/telegram/ui/MessageSendPreview;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p1

    .line 1180
    iget-object v1, p0, Lorg/telegram/ui/MessageSendPreview;->chatLayoutManager:Landroidx/recyclerview/widget/GridLayoutManagerFixed;

    const/16 v2, 0xa

    if-le p1, v2, :cond_8

    rem-int/lit8 v0, p1, 0xa

    :cond_8
    const/high16 p1, 0x41400000    # 12.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(IIZ)V

    return-void
.end method

.method public setSendButton(Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;ZLandroid/view/View$OnClickListener;)V
    .locals 8

    .line 1203
    iput-object p1, p0, Lorg/telegram/ui/MessageSendPreview;->anchorSendButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    .line 1204
    iget-object v0, p0, Lorg/telegram/ui/MessageSendPreview;->sendButtonInitialPosition:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1206
    new-instance v1, Lorg/telegram/ui/MessageSendPreview$14;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p1, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->resId:I

    iget-object v5, p0, Lorg/telegram/ui/MessageSendPreview;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object v2, p0

    move-object v6, p1

    move v7, p2

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/MessageSendPreview$14;-><init>(Lorg/telegram/ui/MessageSendPreview;Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;Z)V

    iput-object v1, v2, Lorg/telegram/ui/MessageSendPreview;->sendButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    .line 1228
    iget-object p1, v2, Lorg/telegram/ui/MessageSendPreview;->anchorSendButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->copyTo(Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;)V

    .line 1229
    iget-object p1, v2, Lorg/telegram/ui/MessageSendPreview;->sendButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->open:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-object p2, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->open:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result p2

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    .line 1230
    iget-object p1, v2, Lorg/telegram/ui/MessageSendPreview;->sendButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1231
    iget-object p1, v2, Lorg/telegram/ui/MessageSendPreview;->containerView:Landroid/widget/FrameLayout;

    iget-object p2, v2, Lorg/telegram/ui/MessageSendPreview;->sendButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    new-instance p3, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-direct {p3, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1232
    iget-object p1, v2, Lorg/telegram/ui/MessageSendPreview;->anchorSendButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->width(I)I

    move-result p1

    iput p1, v2, Lorg/telegram/ui/MessageSendPreview;->sendButtonWidth:I

    .line 1233
    iget-object p1, v2, Lorg/telegram/ui/MessageSendPreview;->sendButtonInitialPosition:[I

    const/4 p2, 0x0

    aget p3, p1, p2

    iget-object v0, v2, Lorg/telegram/ui/MessageSendPreview;->anchorSendButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, v2, Lorg/telegram/ui/MessageSendPreview;->anchorSendButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->width(I)I

    move-result v1

    sub-int/2addr v0, v1

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    add-int/2addr p3, v0

    aput p3, p1, p2

    return-void
.end method

.method public setStars(J)V
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1878
    :cond_0
    new-instance v1, Lorg/telegram/ui/Components/Text;

    const-string v2, "UnlockPaidContent"

    long-to-int p1, p1

    invoke-static {v2, p1}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    const p2, 0x3f333333    # 0.7f

    invoke-static {p1, p2}, Lorg/telegram/ui/Stars/StarsIntroActivity;->replaceStarsWithPlain(Ljava/lang/CharSequence;F)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    const/high16 p2, 0x41600000    # 14.0f

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-direct {v1, p1, p2, v2}, Lorg/telegram/ui/Components/Text;-><init>(Ljava/lang/CharSequence;FLandroid/graphics/Typeface;)V

    move-object p1, v1

    :goto_0
    iput-object p1, p0, Lorg/telegram/ui/MessageSendPreview;->buttonText:Lorg/telegram/ui/Components/Text;

    .line 1879
    iget-object p1, p0, Lorg/telegram/ui/MessageSendPreview;->buttonBgPaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    if-nez p1, :cond_1

    .line 1880
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/MessageSendPreview;->buttonBgPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    .line 1881
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1883
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/MessageSendPreview;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    const/4 p1, 0x0

    move v1, p1

    .line 1884
    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/MessageSendPreview;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 1885
    iget-object v2, p0, Lorg/telegram/ui/MessageSendPreview;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    if-eqz v2, :cond_3

    .line 1886
    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v2, :cond_3

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v2, :cond_3

    if-lez v0, :cond_2

    move v3, p2

    goto :goto_2

    :cond_2
    move v3, p1

    .line 1887
    :goto_2
    iput-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->spoiler:Z

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1890
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/MessageSendPreview;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public show()V
    .locals 3

    .line 1521
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->isSafeToShow(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1522
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;->pause(IZ)V

    .line 1523
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    const/4 v0, 0x0

    .line 1524
    invoke-direct {p0, v0}, Lorg/telegram/ui/MessageSendPreview;->prepareBlur(Landroid/view/View;)V

    .line 1525
    iget-object v2, p0, Lorg/telegram/ui/MessageSendPreview;->effectsView:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_1

    .line 1526
    invoke-virtual {v2}, Landroid/view/View;->bringToFront()V

    .line 1528
    :cond_1
    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/MessageSendPreview;->animateOpenTo(ZLjava/lang/Runnable;)V

    return-void
.end method

.method public showEffectSelector()V
    .locals 4

    .line 1397
    iget-boolean v0, p0, Lorg/telegram/ui/MessageSendPreview;->effectSelectorShown:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1398
    iput-boolean v0, p0, Lorg/telegram/ui/MessageSendPreview;->layoutDone:Z

    const/4 v1, 0x1

    .line 1399
    iput-boolean v1, p0, Lorg/telegram/ui/MessageSendPreview;->effectSelectorShown:Z

    .line 1400
    iget-object v2, p0, Lorg/telegram/ui/MessageSendPreview;->effectSelector:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3, v1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setMessage(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ChatFull;Z)V

    .line 1401
    iget-object v1, p0, Lorg/telegram/ui/MessageSendPreview;->effectSelector:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x1a4

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1402
    iget-object v1, p0, Lorg/telegram/ui/MessageSendPreview;->effectSelector:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->startEnterAnimation(Z)V

    return-void
.end method

.method public updateColors()V
    .locals 0

    return-void
.end method
