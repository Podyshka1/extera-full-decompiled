.class public abstract Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;
.super Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/IPhotoPaintView;
.implements Lorg/telegram/ui/Components/Paint/Views/PaintToolsView$Delegate;
.implements Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;
.implements Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView$Delegate;
.implements Lorg/telegram/ui/Components/SizeNotifierFrameLayout$SizeNotifierFrameLayoutDelegate;
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$PopupButton;,
        Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$StickerPosition;
    }
.end annotation


# instance fields
.field private baseScale:F

.field private bitmapToEdit:Landroid/graphics/Bitmap;

.field private blurredBackgroundDrawableForTools:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

.field public bottomLayout:Landroid/widget/FrameLayout;

.field private bottomPanelIgnoreOnce:Z

.field public cancelButton:Lorg/telegram/ui/Components/Paint/Views/PaintCancelView;

.field private cancelTextButton:Landroid/widget/TextView;

.field private final clearPaint:Landroid/graphics/Paint;

.field private colorPickerRainbowPaint:Landroid/graphics/Paint;

.field private colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

.field private colorSwatchOutlinePaint:Landroid/graphics/Paint;

.field private colorSwatchPaint:Landroid/graphics/Paint;

.field private colorsListView:Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;

.field private currentAccount:I

.field private currentCropState:Lorg/telegram/messenger/MediaController$CropState;

.field private currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

.field private destroyed:Z

.field public doneButton:Lorg/telegram/ui/Components/Paint/Views/PaintDoneView;

.field private doneTextButton:Landroid/widget/TextView;

.field private drawShadow:Z

.field private drawTab:Landroid/widget/TextView;

.field private editingText:Z

.field private emojiPadding:I

.field private emojiView:Lorg/telegram/ui/Components/EmojiView;

.field public emojiViewVisible:Z

.field public emojiViewWasVisible:Z

.field private emojiWasPadding:I

.field public entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

.field private faces:Ljava/util/ArrayList;

.field private facesBitmap:Landroid/graphics/Bitmap;

.field private fillShapes:Z

.field private ignoreLayout:Z

.field private ignoreToolChangeAnimationOnce:Z

.field private imageHeight:F

.field private imageWidth:F

.field private inBubbleMode:Z

.field private inputTransformX:F

.field private inputTransformY:F

.field public isAnimatePopupClosing:Z

.field private isColorListShown:Z

.field private isTypefaceMenuShown:Z

.field private keyboardHeight:I

.field private keyboardHeightLand:I

.field public keyboardVisible:Z

.field private lastSizeChangeValue1:I

.field private lastSizeChangeValue2:Z

.field private lcm:Ljava/math/BigInteger;

.field private matrix:Landroid/graphics/Matrix;

.field private offsetTranslationY:F

.field private onDoneButtonClickedListener:Ljava/lang/Runnable;

.field private openKeyboardRunnable:Ljava/lang/Runnable;

.field private originalBitmapRotation:I

.field public overlayLayout:Landroid/widget/FrameLayout;

.field private paintToolsView:Lorg/telegram/ui/Components/Paint/Views/PaintToolsView;

.field private paintingSize:Lorg/telegram/ui/Components/Size;

.field private panTranslationProgress:F

.field private panTranslationY:F

.field private pany:F

.field private pipetteContainerLayout:Landroid/widget/FrameLayout;

.field private popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

.field private popupRect:Landroid/graphics/Rect;

.field private popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

.field private pos2:[I

.field private position:[F

.field private queue:Lorg/telegram/messenger/DispatchQueue;

.field private renderInputView:Landroid/view/View;

.field private renderView:Lorg/telegram/ui/Components/Paint/RenderView;

.field private resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private scale:F

.field private selectedTextType:I

.field private selectionContainerView:Landroid/widget/FrameLayout;

.field private final shadowAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

.field private final shadowPaint:Landroid/graphics/Paint;

.field private stickerTab:Landroid/widget/TextView;

.field public tabsLayout:Landroid/widget/LinearLayout;

.field private tabsNewSelectedIndex:I

.field private tabsSelectedIndex:I

.field private tabsSelectionAnimator:Landroid/animation/ValueAnimator;

.field private tabsSelectionProgress:F

.field public textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

.field private textTab:Landroid/widget/TextView;

.field private thanosEffect:Lorg/telegram/ui/Components/ThanosEffect;

.field private toolsPaint:Landroid/graphics/Paint;

.field private toolsTransformAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private toolsTransformProgress:F

.field private topLayout:Landroid/widget/FrameLayout;

.field private transformX:F

.field private transformY:F

.field private translateBottomPanelAfterResize:Z

.field private typefaceListView:Lorg/telegram/ui/Components/Paint/Views/PaintTypefaceListView;

.field private typefaceMenuBackgroundPaint:Landroid/graphics/Paint;

.field private typefaceMenuOutlinePaint:Landroid/graphics/Paint;

.field private typefaceMenuTransformAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private typefaceMenuTransformProgress:F

.field private undoAllButton:Landroid/widget/TextView;

.field private undoButton:Landroid/widget/ImageView;

.field private undoStore:Lorg/telegram/ui/Components/Paint/UndoStore;

.field private waitingForKeyboardOpen:Z

.field public weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

.field private weightDefaultValueOverride:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;

.field private zoomOutButton:Landroid/widget/LinearLayout;

.field private zoomOutImage:Landroid/widget/ImageView;

.field private zoomOutText:Landroid/widget/TextView;

.field private zoomOutVisible:Z


# direct methods
.method public static synthetic $r8$lambda$-RgzIczfJIpdlSr5lEbrS9ocKsQ(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lambda$openStickersView$19(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$02-eQWslo7Q_jNoXyaqwnxcz9Q4(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Lorg/telegram/ui/Components/Paint/Brush$Shape;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lambda$onAddButtonPressed$33(Lorg/telegram/ui/Components/Paint/Brush$Shape;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$1DhlF-p62nh8aTTq29_zZi572ZU(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lambda$detectFaces$24()V

    return-void
.end method

.method public static synthetic $r8$lambda$24zbz9ba3M0da56YT6knLrTLPLY(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lambda$hideEmojiPopup$47(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3NhgVcWDS5kl8WoYj0JhbR4mT_I(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Landroid/content/Context;Landroid/graphics/Bitmap;Lorg/telegram/ui/Components/Paint/PersistColorPalette;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lambda$new$10(Landroid/content/Context;Landroid/graphics/Bitmap;Lorg/telegram/ui/Components/Paint/PersistColorPalette;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4aiZhvQC2GURrN6CN5KcEZfpOL4()V
    .locals 0

    .line 0
    return-void
.end method

.method public static synthetic $r8$lambda$6i0NVTYBdNPKqzxlYpb8bUqDG9g(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)I
    .locals 2

    .line 229
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuBackground:I

    if-ne p1, v0, :cond_0

    const p0, -0xd7d7d7

    return p0

    .line 231
    :cond_0
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    if-ne p1, v0, :cond_1

    goto/16 :goto_1

    .line 233
    :cond_1
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    if-ne p1, v0, :cond_2

    const p0, -0xe0e0e1

    return p0

    .line 235
    :cond_2
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    if-ne p1, v0, :cond_3

    const p0, -0x9090a

    return p0

    .line 237
    :cond_3
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextGray3:I

    if-ne p1, v0, :cond_4

    const p0, -0x828283

    return p0

    .line 239
    :cond_4
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelBackground:I

    if-ne p1, v0, :cond_5

    goto/16 :goto_2

    .line 241
    :cond_5
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelShadowLine:I

    if-ne p1, v0, :cond_6

    const/high16 p0, -0x60000000

    return p0

    .line 243
    :cond_6
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiBottomPanelIcon:I

    if-ne p1, v0, :cond_7

    goto :goto_0

    .line 245
    :cond_7
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelBackspace:I

    if-ne p1, v0, :cond_8

    goto :goto_0

    .line 247
    :cond_8
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelIcon:I

    if-ne p1, v0, :cond_9

    :goto_0
    const p0, -0x919191

    return p0

    .line 249
    :cond_9
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    if-ne p1, v0, :cond_a

    goto :goto_1

    .line 251
    :cond_a
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addedIcon:I

    if-ne p1, v0, :cond_b

    const p0, -0xb35a11

    return p0

    .line 253
    :cond_b
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    if-ne p1, v1, :cond_c

    const p0, 0x1fffffff

    return p0

    .line 255
    :cond_c
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_profile_tabSelectedText:I

    if-ne p1, v1, :cond_d

    goto :goto_1

    .line 257
    :cond_d
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_profile_tabText:I

    if-ne p1, v1, :cond_e

    goto :goto_1

    .line 259
    :cond_e
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_profile_tabSelectedLine:I

    if-ne p1, v1, :cond_f

    goto :goto_1

    .line 261
    :cond_f
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_profile_tabSelector:I

    if-ne p1, v1, :cond_10

    const p0, 0x14ffffff

    return p0

    .line 263
    :cond_10
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiSearchIcon:I

    if-eq p1, v1, :cond_1a

    if-ne p1, v0, :cond_11

    goto :goto_3

    .line 265
    :cond_11
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiSearchBackground:I

    if-ne p1, v0, :cond_12

    const p0, 0x2e878787

    return p0

    .line 267
    :cond_12
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    if-ne p1, v0, :cond_13

    const p0, -0xf2f2f3

    return p0

    .line 269
    :cond_13
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_fastScrollInactive:I

    if-ne p1, v0, :cond_14

    const p0, -0xbebebf

    return p0

    .line 271
    :cond_14
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_fastScrollActive:I

    if-ne p1, v0, :cond_15

    const p0, -0xc86517

    return p0

    .line 273
    :cond_15
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_fastScrollText:I

    if-ne p1, v0, :cond_16

    :goto_1
    const/4 p0, -0x1

    return p0

    .line 275
    :cond_16
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    if-ne p1, v0, :cond_17

    const p0, -0xe7e7e7

    return p0

    .line 277
    :cond_17
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    if-ne p1, v0, :cond_18

    :goto_2
    const/high16 p0, -0x1000000

    return p0

    :cond_18
    if-eqz p0, :cond_19

    .line 282
    invoke-interface {p0, p1}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->getColor(I)I

    move-result p0

    return p0

    .line 284
    :cond_19
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p0

    return p0

    :cond_1a
    :goto_3
    const p0, -0x787879

    return p0
.end method

.method public static synthetic $r8$lambda$AH1cnmOgu68i9GheivcSjzXpVXY(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lambda$openStickersView$18()V

    return-void
.end method

.method public static synthetic $r8$lambda$AlTx0RxqEx_7GT74cQ9T90MAVvc(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Lorg/telegram/ui/Components/Paint/Views/EntityView;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lambda$showMenuForEntity$41(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BI6gLq5PtgdqchK-wB8A-4FZ2AU(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lambda$getThanosEffect$48()V

    return-void
.end method

.method public static synthetic $r8$lambda$BbZXr1Y_8l1-RfFfZSACntwGKQM(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lambda$new$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CU2kfX6bfLiroOYhd-JnI_XtLQg(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Landroid/view/KeyEvent;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lambda$showPopup$43(Landroid/view/KeyEvent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$C_RO2_zugGqgTbANDpN3s7ht1rk(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lambda$new$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Cqv8ZXq2AygH5xig6jDr4JBCJgE(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lambda$showEmojiPopup$46(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ETF_AKVmQ-eu6HBpCaaXe5uXQkw(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Landroid/view/View;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lambda$new$7(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$GrP-BuicSkJTVz4blt5FwkPaYrc(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;ZLandroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lambda$showTypefaceMenu$28(ZLandroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$HBwMgLV768-H64xLpzp_bqquEvk(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lambda$showMenuForEntity$39(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HxCCQOntmarh9DhgbEU02Q7hVGY(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lambda$showPopup$42(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$J5WQ8TiNvWgf36gmp7ho9HtJcbM(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Lorg/telegram/ui/Components/Paint/Views/PhotoView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lambda$showMenuForEntity$40(Lorg/telegram/ui/Components/Paint/Views/PhotoView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KxdBDoO2Zm3tTV73jojKahyzkgE()V
    .locals 1

    .line 1816
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1818
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$Lk4DhfVXKqH-jnYBWfFWvLv_808(Lorg/telegram/ui/Components/Paint/Views/PhotoView;)V
    .locals 1

    const/4 v0, 0x1

    .line 3787
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->onSwitchSegmentedAnimationStarted(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$N9jInQYGDpKXrafn9vBo6WAQtnQ(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Lorg/telegram/ui/Components/Paint/Views/EntityView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lambda$showMenuForEntity$38(Lorg/telegram/ui/Components/Paint/Views/EntityView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ou8ZO8vCeHhlpAFL3a7AVYJrjaU(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lambda$onAddButtonPressed$35()V

    return-void
.end method

.method public static synthetic $r8$lambda$P8Wtr_uA0QAUbHaRI7ytLjvS2eU(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Ljava/lang/Integer;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lambda$new$8(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RMLcIUsg9KpctlFSI0Ys1beK_fU(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lambda$showTypefaceMenu$27(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V

    return-void
.end method

.method public static synthetic $r8$lambda$Sl4-ZpXZjk6G2Bv9XYELowD6oUU(Landroid/view/View;)V
    .locals 0

    .line 568
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/ui/PhotoViewer;->zoomOut()V

    return-void
.end method

.method public static synthetic $r8$lambda$Ul4oaXYMsxfewFPk3_lzYbmGJOM(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Lorg/telegram/ui/Components/Paint/Views/EntityView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lambda$showMenuForEntity$36(Lorg/telegram/ui/Components/Paint/Views/EntityView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$V9ZEbEk4nAX_oWzQn7etjPFVLuA(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Ljava/lang/Integer;)Ljava/lang/Boolean;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lambda$openStickersView$20(Ljava/lang/Integer;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$VsCpPeXsMDeGy9bAci-J5so8GzE(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;ILandroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lambda$openStickersView$21(ILandroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$X9dZbQ2rRO6Mk-4KbqDkFxgJD88(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Landroid/view/View;Z[ZFLandroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p7}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lambda$showColorList$29(Landroid/view/View;Z[ZFLandroidx/dynamicanimation/animation/DynamicAnimation;FF)V

    return-void
.end method

.method public static synthetic $r8$lambda$XvJh8MwwHPwG3RgZ4sXwZXF5d_U(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lambda$appearAnimation$23(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YjVTjXrGSc7adJOetjIoiv_5iTM(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Lorg/telegram/ui/Components/Paint/Views/EntityView;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lambda$registerRemovalUndo$45(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZJzY1jZhZSKhlQ2L4aKY-0M-JA4(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lambda$new$11(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$_YfzXCdTqLPKzr5qzJlLGLY7IJ8(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;IILandroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lambda$setNewColor$12(IILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aV_Cttr_raxYqI5e7uO27OigAKo(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lambda$createText$13()V

    return-void
.end method

.method public static synthetic $r8$lambda$bBmWbhaz3eYjwZyYNEgFpRlI3eU(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lambda$showMenuForEntity$37(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bUhW1_gbMvFhfGuuK_QkCD4KT0A(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lambda$new$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eSBkj0urj5iTaAXIrZvsXuqZ1bw(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lambda$showPopup$44()V

    return-void
.end method

.method public static synthetic $r8$lambda$f2m0wabO2zhD02Tttn-xhwKeen0(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lambda$new$6(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$f59on1SDoKPn-H_ZgW6pw6UqIxE(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lambda$setupTabsLayout$14(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gHUcfuwUv8fON1oK4XEF3xz02XE(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p0, 0x0

    .line 1531
    sput-boolean p0, Lorg/telegram/messenger/MediaController;->forceBroadcastNewPhotos:Z

    return-void
.end method

.method public static synthetic $r8$lambda$gos4QogPR_1G3K86af4oL6Nv55Q(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Landroid/view/View;Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lambda$switchTab$17(Landroid/view/View;Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jkJYG_ixDRqccMaZTjFy0nfecGg(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Lorg/telegram/ui/Components/Paint/PersistColorPalette;Ljava/lang/Integer;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lambda$new$9(Lorg/telegram/ui/Components/Paint/PersistColorPalette;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$k4CaUNgVFnTek4-ZdkDYQejkme8(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;ZLandroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lambda$showColorList$30(ZLandroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$lRsuLN9oaF1s2NKMDTPTtF9n81s(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lambda$setupTabsLayout$16(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ngu1jco5rk8GXAJZ9bUfVvKsMqg(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Landroid/view/View;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lambda$onAddButtonPressed$34(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$pizuMvrhWewqPv2DhARHe6i_4ss(Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    .line 2481
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public static synthetic $r8$lambda$pqJ7roXKCAZVoef3woyMMt8h_44(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lambda$setupTabsLayout$15(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$s4Ppzkmgo-Ic4957hEfqTePlTdY(Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 2093
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public static synthetic $r8$lambda$s8exhj6875mFALIR6Ox6IElhNLM(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lambda$new$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$uGNjdnNeEcC2FpOozhRc0pacsGQ(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Ljava/lang/Integer;ILandroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lambda$setCurrentSwatch$31(Ljava/lang/Integer;ILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetblurredBackgroundDrawableForTools(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->blurredBackgroundDrawableForTools:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcolorPickerRainbowPaint(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Landroid/graphics/Paint;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorPickerRainbowPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcolorSwatch(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Lorg/telegram/ui/Components/Paint/Swatch;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcolorSwatchOutlinePaint(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Landroid/graphics/Paint;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorSwatchOutlinePaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcolorSwatchPaint(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Landroid/graphics/Paint;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorSwatchPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcolorsListView(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorsListView:Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentAccount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentEntityView(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Lorg/telegram/ui/Components/Paint/Views/EntityView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdestroyed(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->destroyed:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetemojiView(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Lorg/telegram/ui/Components/EmojiView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetignoreToolChangeAnimationOnce(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->ignoreToolChangeAnimationOnce:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisTypefaceMenuShown(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->isTypefaceMenuShown:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetopenKeyboardRunnable(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Ljava/lang/Runnable;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->openKeyboardRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpaintToolsView(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Lorg/telegram/ui/Components/Paint/Views/PaintToolsView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->paintToolsView:Lorg/telegram/ui/Components/Paint/Views/PaintToolsView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpipetteContainerLayout(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Landroid/widget/FrameLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->pipetteContainerLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpopupWindow(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetrenderInputView(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Landroid/view/View;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderInputView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetrenderView(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Lorg/telegram/ui/Components/Paint/RenderView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetresourcesProvider(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettabsNewSelectedIndex(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->tabsNewSelectedIndex:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgettabsSelectedIndex(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->tabsSelectedIndex:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgettabsSelectionAnimator(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->tabsSelectionAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettabsSelectionProgress(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->tabsSelectionProgress:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgettoolsPaint(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Landroid/graphics/Paint;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->toolsPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettoolsTransformProgress(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->toolsTransformProgress:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgettypefaceListView(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Lorg/telegram/ui/Components/Paint/Views/PaintTypefaceListView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->typefaceListView:Lorg/telegram/ui/Components/Paint/Views/PaintTypefaceListView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettypefaceMenuBackgroundPaint(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Landroid/graphics/Paint;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->typefaceMenuBackgroundPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettypefaceMenuOutlinePaint(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Landroid/graphics/Paint;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->typefaceMenuOutlinePaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettypefaceMenuTransformProgress(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->typefaceMenuTransformProgress:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetundoStore(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Lorg/telegram/ui/Components/Paint/UndoStore;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->undoStore:Lorg/telegram/ui/Components/Paint/UndoStore;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetwaitingForKeyboardOpen(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->waitingForKeyboardOpen:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputignoreToolChangeAnimationOnce(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->ignoreToolChangeAnimationOnce:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputtabsNewSelectedIndex(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->tabsNewSelectedIndex:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputtabsSelectedIndex(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->tabsSelectedIndex:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputtabsSelectionAnimator(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->tabsSelectionAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetBarView(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;I)Landroid/view/View;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->getBarView(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetBarView(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Landroid/view/ViewGroup;
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->getBarView()Landroid/view/ViewGroup;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetThemedColor(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;I)I
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mhideEmojiView(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->hideEmojiView()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mselectEntity(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msetCurrentSwatch(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Lorg/telegram/ui/Components/Paint/Swatch;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->setCurrentSwatch(Lorg/telegram/ui/Components/Paint/Swatch;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetNewColor(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->setNewColor(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowColorList(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->showColorList(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowTypefaceMenu(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->showTypefaceMenu(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/Activity;ILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;ILjava/util/ArrayList;Lorg/telegram/messenger/MediaController$CropState;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 26

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v8, p3

    move-object/from16 v7, p5

    move/from16 v0, p6

    move-object/from16 v9, p7

    const/4 v10, 0x1

    move-object/from16 v3, p2

    .line 224
    invoke-direct {v1, v2, v3, v10}, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;-><init>(Landroid/content/Context;Landroid/app/Activity;Z)V

    const/4 v11, 0x0

    .line 150
    iput v11, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->tabsSelectedIndex:I

    const/4 v12, -0x1

    .line 151
    iput v12, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->tabsNewSelectedIndex:I

    .line 158
    new-instance v3, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$1;

    invoke-direct {v3, v1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$1;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)V

    iput-object v3, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->weightDefaultValueOverride:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;

    .line 195
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v10}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->typefaceMenuOutlinePaint:Landroid/graphics/Paint;

    .line 196
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v10}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->typefaceMenuBackgroundPaint:Landroid/graphics/Paint;

    .line 202
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v10}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorPickerRainbowPaint:Landroid/graphics/Paint;

    .line 203
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v10}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorSwatchPaint:Landroid/graphics/Paint;

    .line 204
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v10}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorSwatchOutlinePaint:Landroid/graphics/Paint;

    .line 205
    new-instance v3, Lorg/telegram/ui/Components/Paint/Swatch;

    const v4, 0x3c896918

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-direct {v3, v12, v13, v4}, Lorg/telegram/ui/Components/Paint/Swatch;-><init>(IFF)V

    iput-object v3, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    .line 206
    iput-boolean v11, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->fillShapes:Z

    .line 211
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v10}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->toolsPaint:Landroid/graphics/Paint;

    .line 1074
    iput-boolean v11, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->zoomOutVisible:Z

    .line 1206
    new-instance v3, Lorg/telegram/ui/Components/AnimatedFloat;

    const-wide/16 v4, 0x15e

    sget-object v6, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-direct {v3, v1, v4, v5, v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JLandroid/animation/TimeInterpolator;)V

    iput-object v3, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->shadowAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 1207
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v10}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->shadowPaint:Landroid/graphics/Paint;

    .line 1208
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v10}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->clearPaint:Landroid/graphics/Paint;

    .line 1209
    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 3161
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->matrix:Landroid/graphics/Matrix;

    const/4 v14, 0x2

    .line 3162
    new-array v3, v14, [F

    iput-object v3, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->position:[F

    .line 3163
    new-array v3, v14, [I

    iput-object v3, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->pos2:[I

    .line 3244
    new-instance v3, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$19;

    invoke-direct {v3, v1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$19;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)V

    iput-object v3, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->openKeyboardRunnable:Ljava/lang/Runnable;

    .line 225
    invoke-virtual {v1, v1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->setDelegate(Lorg/telegram/ui/Components/SizeNotifierFrameLayout$SizeNotifierFrameLayoutDelegate;)V

    .line 227
    iput v8, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentAccount:I

    .line 228
    new-instance v3, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda8;

    move-object/from16 v4, p10

    invoke-direct {v3, v4}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v3, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object/from16 v3, p8

    .line 287
    iput-object v3, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentCropState:Lorg/telegram/messenger/MediaController$CropState;

    .line 289
    instance-of v3, v2, Lorg/telegram/ui/BubbleActivity;

    iput-boolean v3, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->inBubbleMode:Z

    .line 291
    invoke-static {v8}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object v15

    .line 292
    invoke-virtual {v15}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->resetCurrentColor()V

    .line 293
    iget-object v3, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    invoke-virtual {v15}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getCurrentColor()I

    move-result v4

    iput v4, v3, Lorg/telegram/ui/Components/Paint/Swatch;->color:I

    .line 294
    iget-object v3, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    invoke-virtual {v15}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getCurrentWeight()F

    move-result v4

    iput v4, v3, Lorg/telegram/ui/Components/Paint/Swatch;->brushWeight:F

    .line 296
    new-instance v3, Lorg/telegram/messenger/DispatchQueue;

    const-string v4, "Paint"

    invoke-direct {v3, v4}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    iput-object v3, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->queue:Lorg/telegram/messenger/DispatchQueue;

    move-object/from16 v3, p4

    .line 298
    iput-object v3, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->bitmapToEdit:Landroid/graphics/Bitmap;

    .line 299
    iput-object v7, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->facesBitmap:Landroid/graphics/Bitmap;

    .line 300
    iput v0, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->originalBitmapRotation:I

    .line 301
    new-instance v3, Lorg/telegram/ui/Components/Paint/UndoStore;

    invoke-direct {v3}, Lorg/telegram/ui/Components/Paint/UndoStore;-><init>()V

    iput-object v3, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->undoStore:Lorg/telegram/ui/Components/Paint/UndoStore;

    .line 302
    new-instance v4, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda10;

    invoke-direct {v4, v1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)V

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/Paint/UndoStore;->setDelegate(Lorg/telegram/ui/Components/Paint/UndoStore$UndoStoreDelegate;)V

    .line 312
    new-instance v3, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$2;

    move-object v4, v3

    new-instance v3, Lorg/telegram/ui/Components/Paint/Painting;

    invoke-direct {v1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->getPaintingSize()Lorg/telegram/ui/Components/Size;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v3, v5, v7, v0, v6}, Lorg/telegram/ui/Components/Paint/Painting;-><init>(Lorg/telegram/ui/Components/Size;Landroid/graphics/Bitmap;ILorg/telegram/ui/Components/BlurringShader$BlurManager;)V

    move-object v0, v4

    iget-object v4, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->bitmapToEdit:Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$2;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Landroid/content/Context;Lorg/telegram/ui/Components/Paint/Painting;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Lorg/telegram/ui/Components/BlurringShader$BlurManager;Landroid/graphics/Bitmap;)V

    iput-object v0, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    .line 323
    new-instance v3, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$3;

    move-object/from16 v4, p9

    invoke-direct {v3, v1, v4}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$3;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/Paint/RenderView;->setDelegate(Lorg/telegram/ui/Components/Paint/RenderView$RenderViewDelegate;)V

    .line 370
    iget-object v0, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    iget-object v3, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->undoStore:Lorg/telegram/ui/Components/Paint/UndoStore;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/Paint/RenderView;->setUndoStore(Lorg/telegram/ui/Components/Paint/UndoStore;)V

    .line 371
    iget-object v0, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    iget-object v3, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->queue:Lorg/telegram/messenger/DispatchQueue;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/Paint/RenderView;->setQueue(Lorg/telegram/messenger/DispatchQueue;)V

    .line 372
    iget-object v0, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 373
    iget-object v0, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    const/16 v4, 0x33

    invoke-static {v12, v12, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v1, v0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 375
    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$4;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$4;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderInputView:Landroid/view/View;

    .line 384
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 385
    iget-object v0, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderInputView:Landroid/view/View;

    invoke-static {v12, v12, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 387
    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$6;

    new-instance v4, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$5;

    invoke-direct {v4, v1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$5;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)V

    invoke-direct {v0, v1, v2, v4}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$6;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Landroid/content/Context;Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView$EntitiesContainerViewDelegate;)V

    iput-object v0, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    .line 457
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    if-eqz v9, :cond_8

    .line 459
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_8

    .line 460
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v11

    :goto_0
    if-ge v6, v5, :cond_8

    .line 461
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    const/high16 p2, 0x40000000    # 2.0f

    move-object/from16 v0, v16

    check-cast v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;

    move/from16 v16, v13

    .line 463
    iget-byte v13, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->type:B

    if-nez v13, :cond_1

    .line 464
    iget-object v13, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->parentObject:Ljava/lang/Object;

    const/16 p4, 0x10

    iget-object v4, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-direct {v1, v13, v4, v11}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->createSticker(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$Document;Z)Lorg/telegram/ui/Components/Paint/Views/StickerView;

    move-result-object v4

    .line 465
    iget-byte v13, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    and-int/2addr v13, v14

    if-eqz v13, :cond_0

    .line 466
    invoke-virtual {v4}, Lorg/telegram/ui/Components/Paint/Views/StickerView;->mirror()V

    .line 469
    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    .line 470
    iget v12, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewWidth:I

    iput v12, v13, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 471
    iget v12, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewHeight:I

    iput v12, v13, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 p8, v5

    move/from16 p9, v6

    goto/16 :goto_3

    :cond_1
    const/16 p4, 0x10

    if-ne v13, v10, :cond_4

    .line 473
    invoke-direct {v1, v11}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->createText(Z)Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    move-result-object v4

    .line 474
    iget-byte v12, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    invoke-virtual {v4, v12}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->setType(I)V

    .line 475
    iget-object v12, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textTypeface:Lorg/telegram/ui/Components/Paint/PaintTypeface;

    invoke-virtual {v4, v12}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->setTypeface(Lorg/telegram/ui/Components/Paint/PaintTypeface;)V

    .line 476
    iget v12, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->fontSize:I

    invoke-virtual {v4, v12}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->setBaseFontSize(I)V

    .line 477
    new-instance v12, Landroid/text/SpannableString;

    iget-object v13, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->text:Ljava/lang/String;

    invoke-direct {v12, v13}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 478
    iget-object v13, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->entities:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v10

    move v3, v11

    :goto_1
    if-ge v3, v10, :cond_2

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v14, v17

    check-cast v14, Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;

    .line 479
    new-instance v11, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    move/from16 p8, v5

    move/from16 p9, v6

    iget-wide v5, v14, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;->document_id:J

    move/from16 p10, v3

    invoke-virtual {v4}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v3

    invoke-direct {v11, v5, v6, v3}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;-><init>(JLandroid/graphics/Paint$FontMetricsInt;)V

    iget v3, v14, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    iget v5, v14, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    add-int/2addr v5, v3

    const/16 v6, 0x21

    invoke-virtual {v12, v11, v3, v5, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    move/from16 v5, p8

    move/from16 v6, p9

    move/from16 v3, p10

    const/4 v11, 0x0

    const/4 v14, 0x2

    goto :goto_1

    :cond_2
    move/from16 p8, v5

    move/from16 p9, v6

    .line 482
    invoke-virtual {v4}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v3

    const/4 v5, 0x0

    invoke-static {v12, v3, v5}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object v3

    .line 483
    instance-of v6, v3, Landroid/text/Spanned;

    if-eqz v6, :cond_3

    .line 484
    move-object v6, v3

    check-cast v6, Landroid/text/Spanned;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v10

    const-class v11, Lorg/telegram/messenger/Emoji$EmojiSpan;

    invoke-interface {v6, v5, v10, v11}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lorg/telegram/messenger/Emoji$EmojiSpan;

    if-eqz v6, :cond_3

    const/4 v5, 0x0

    .line 486
    :goto_2
    array-length v10, v6

    if-ge v5, v10, :cond_3

    .line 487
    aget-object v10, v6, v5

    const v11, 0x3f59999a    # 0.85f

    iput v11, v10, Lorg/telegram/messenger/Emoji$EmojiSpan;->scale:F

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 491
    :cond_3
    invoke-virtual {v4, v3}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->setText(Ljava/lang/CharSequence;)V

    .line 492
    iget v3, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textAlign:I

    invoke-direct {v1, v4, v3}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->setTextAlignment(Lorg/telegram/ui/Components/Paint/Views/TextPaintView;I)V

    .line 493
    invoke-virtual {v4}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getSwatch()Lorg/telegram/ui/Components/Paint/Swatch;

    move-result-object v3

    .line 494
    iget v5, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->color:I

    iput v5, v3, Lorg/telegram/ui/Components/Paint/Swatch;->color:I

    .line 495
    invoke-virtual {v4, v3}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->setSwatch(Lorg/telegram/ui/Components/Paint/Swatch;)V

    goto :goto_3

    :cond_4
    move/from16 p8, v5

    move/from16 p9, v6

    move v3, v14

    if-ne v13, v3, :cond_7

    .line 498
    iget-object v4, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->text:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->createPhoto(Ljava/lang/String;Z)Lorg/telegram/ui/Components/Paint/Views/PhotoView;

    move-result-object v4

    .line 499
    iget-object v5, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->segmentedPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->preloadSegmented(Ljava/lang/String;)V

    .line 500
    iget-byte v5, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    and-int/2addr v5, v3

    if-eqz v5, :cond_5

    .line 501
    invoke-virtual {v4}, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->mirror()V

    .line 503
    :cond_5
    iget-byte v3, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_6

    const/4 v5, 0x0

    .line 504
    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->toggleSegmented(Z)V

    .line 507
    :cond_6
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 508
    iget v5, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewWidth:I

    iput v5, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 509
    iget v5, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewHeight:I

    iput v5, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 513
    :goto_3
    iget v3, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->x:F

    iget-object v5, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->paintingSize:Lorg/telegram/ui/Components/Size;

    iget v5, v5, Lorg/telegram/ui/Components/Size;->width:F

    mul-float/2addr v3, v5

    iget v5, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewWidth:I

    int-to-float v5, v5

    iget v6, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->scale:F

    sub-float v13, v16, v6

    mul-float/2addr v5, v13

    div-float v5, v5, p2

    sub-float/2addr v3, v5

    invoke-virtual {v4, v3}, Landroid/view/View;->setX(F)V

    .line 514
    iget v3, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->y:F

    iget-object v5, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->paintingSize:Lorg/telegram/ui/Components/Size;

    iget v5, v5, Lorg/telegram/ui/Components/Size;->height:F

    mul-float/2addr v3, v5

    iget v5, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewHeight:I

    int-to-float v5, v5

    iget v6, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->scale:F

    sub-float v13, v16, v6

    mul-float/2addr v5, v13

    div-float v5, v5, p2

    sub-float/2addr v3, v5

    invoke-virtual {v4, v3}, Landroid/view/View;->setY(F)V

    .line 515
    new-instance v3, Lorg/telegram/ui/Components/Point;

    invoke-virtual {v4}, Landroid/view/View;->getX()F

    move-result v5

    iget v6, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewWidth:I

    int-to-float v6, v6

    div-float v6, v6, p2

    add-float/2addr v5, v6

    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v6

    iget v10, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewHeight:I

    int-to-float v10, v10

    div-float v10, v10, p2

    add-float/2addr v6, v10

    invoke-direct {v3, v5, v6}, Lorg/telegram/ui/Components/Point;-><init>(FF)V

    invoke-virtual {v4, v3}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->setPosition(Lorg/telegram/ui/Components/Point;)V

    .line 516
    iget v3, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->scale:F

    invoke-virtual {v4, v3}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->setScale(F)V

    .line 517
    iget v0, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->rotation:F

    neg-float v0, v0

    float-to-double v5, v0

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v5, v10

    const-wide v10, 0x4066800000000000L    # 180.0

    mul-double/2addr v5, v10

    double-to-float v0, v5

    invoke-virtual {v4, v0}, Landroid/view/View;->setRotation(F)V

    :cond_7
    add-int/lit8 v6, p9, 0x1

    move/from16 v5, p8

    move/from16 v13, v16

    const/4 v3, 0x4

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v14, 0x2

    goto/16 :goto_0

    :cond_8
    move/from16 v16, v13

    const/high16 p2, 0x40000000    # 2.0f

    const/16 p4, 0x10

    .line 520
    iget-object v0, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 522
    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$7;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$7;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->selectionContainerView:Landroid/widget/FrameLayout;

    .line 529
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 531
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->topLayout:Landroid/widget/FrameLayout;

    const/high16 v3, 0x41400000    # 12.0f

    .line 532
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v0, v4, v5, v6, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 533
    iget-object v0, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->topLayout:Landroid/widget/FrameLayout;

    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/high16 v5, -0x1000000

    const/4 v6, 0x0

    filled-new-array {v5, v6}, [I

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 534
    iget-object v0, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->topLayout:Landroid/widget/FrameLayout;

    const/16 v3, 0x30

    const/4 v5, -0x2

    const/4 v6, -0x1

    invoke-static {v6, v5, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 536
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->undoButton:Landroid/widget/ImageView;

    .line 537
    sget v3, Lorg/telegram/messenger/R$drawable;->photo_undo2:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 538
    iget-object v0, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->undoButton:Landroid/widget/ImageView;

    const/high16 v3, 0x40400000    # 3.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v0, v6, v9, v10, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 539
    iget-object v0, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->undoButton:Landroid/widget/ImageView;

    const v3, 0x40ffffff    # 7.9999995f

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 540
    iget-object v0, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->undoButton:Landroid/widget/ImageView;

    new-instance v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda11;

    invoke-direct {v6, v1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 549
    iget-object v0, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->undoButton:Landroid/widget/ImageView;

    const v6, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v6}, Landroid/view/View;->setAlpha(F)V

    .line 550
    iget-object v0, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->undoButton:Landroid/widget/ImageView;

    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/view/View;->setClickable(Z)V

    .line 551
    iget-object v0, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->topLayout:Landroid/widget/FrameLayout;

    iget-object v9, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->undoButton:Landroid/widget/ImageView;

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v19, 0x20

    const/high16 v20, 0x42000000    # 32.0f

    const/16 v21, 0x33

    const/high16 v22, 0x41400000    # 12.0f

    const/16 v23, 0x0

    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 553
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->zoomOutButton:Landroid/widget/LinearLayout;

    const/4 v9, 0x0

    .line 554
    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 555
    iget-object v0, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->zoomOutButton:Landroid/widget/LinearLayout;

    const v10, 0x30ffffff

    const/4 v11, 0x7

    invoke-static {v10, v11}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v0, v12}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 556
    iget-object v0, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->zoomOutButton:Landroid/widget/LinearLayout;

    const/high16 v12, 0x41000000    # 8.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    invoke-virtual {v0, v13, v9, v14, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 557
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->zoomOutText:Landroid/widget/TextView;

    const/4 v9, -0x1

    .line 558
    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 559
    iget-object v0, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->zoomOutText:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 560
    iget-object v0, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->zoomOutText:Landroid/widget/TextView;

    const/high16 v9, 0x41800000    # 16.0f

    const/4 v13, 0x1

    invoke-virtual {v0, v13, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 561
    iget-object v0, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->zoomOutText:Landroid/widget/TextView;

    sget v13, Lorg/telegram/messenger/R$string;->PhotoEditorZoomOut:I

    invoke-static {v13}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 562
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->zoomOutImage:Landroid/widget/ImageView;

    .line 563
    sget v13, Lorg/telegram/messenger/R$drawable;->photo_zoomout:I

    invoke-virtual {v0, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 564
    iget-object v0, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->zoomOutButton:Landroid/widget/LinearLayout;

    iget-object v13, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->zoomOutImage:Landroid/widget/ImageView;

    const/16 v24, 0x8

    const/16 v25, 0x0

    const/16 v19, 0x18

    const/16 v20, 0x18

    const/16 v21, 0x10

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v0, v13, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 565
    iget-object v0, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->zoomOutButton:Landroid/widget/LinearLayout;

    iget-object v13, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->zoomOutText:Landroid/widget/TextView;

    move/from16 v14, p4

    move/from16 p6, v3

    invoke-static {v5, v5, v14}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v13, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 566
    iget-object v0, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->zoomOutButton:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 567
    iget-object v0, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->zoomOutButton:Landroid/widget/LinearLayout;

    new-instance v13, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda12;

    invoke-direct {v13}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda12;-><init>()V

    invoke-virtual {v0, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 570
    iget-object v0, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->topLayout:Landroid/widget/FrameLayout;

    iget-object v13, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->zoomOutButton:Landroid/widget/LinearLayout;

    const/16 v14, 0x20

    move/from16 p7, v12

    const/16 v12, 0x11

    invoke-static {v5, v14, v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v13, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 572
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->undoAllButton:Landroid/widget/TextView;

    .line 573
    invoke-static {v10, v11}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 574
    iget-object v0, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->undoAllButton:Landroid/widget/TextView;

    invoke-static/range {p7 .. p7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static/range {p7 .. p7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    const/4 v13, 0x0

    invoke-virtual {v0, v5, v13, v12, v13}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 575
    iget-object v0, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->undoAllButton:Landroid/widget/TextView;

    sget v5, Lorg/telegram/messenger/R$string;->PhotoEditorClearAll:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 576
    iget-object v0, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->undoAllButton:Landroid/widget/TextView;

    const/16 v14, 0x10

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setGravity(I)V

    .line 577
    iget-object v0, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->undoAllButton:Landroid/widget/TextView;

    const/4 v5, -0x1

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 578
    iget-object v0, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->undoAllButton:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 579
    iget-object v0, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->undoAllButton:Landroid/widget/TextView;

    const/4 v13, 0x1

    invoke-virtual {v0, v13, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 580
    iget-object v0, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->undoAllButton:Landroid/widget/TextView;

    new-instance v5, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda13;

    invoke-direct {v5, v1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 593
    iget-object v0, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->undoAllButton:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/view/View;->setAlpha(F)V

    .line 594
    iget-object v0, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->topLayout:Landroid/widget/FrameLayout;

    iget-object v5, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->undoAllButton:Landroid/widget/TextView;

    const/high16 v24, 0x40800000    # 4.0f

    const/16 v25, 0x0

    const/16 v19, -0x2

    const/high16 v20, 0x42000000    # 32.0f

    const/16 v21, 0x5

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 596
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->cancelTextButton:Landroid/widget/TextView;

    .line 597
    invoke-static {v10, v11}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 598
    iget-object v0, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->cancelTextButton:Landroid/widget/TextView;

    sget v5, Lorg/telegram/messenger/R$string;->Clear:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 599
    iget-object v0, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->cancelTextButton:Landroid/widget/TextView;

    invoke-static/range {p7 .. p7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static/range {p7 .. p7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    const/4 v13, 0x0

    invoke-virtual {v0, v5, v13, v6, v13}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 600
    iget-object v0, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->cancelTextButton:Landroid/widget/TextView;

    const/16 v14, 0x10

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setGravity(I)V

    .line 601
    iget-object v0, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->cancelTextButton:Landroid/widget/TextView;

    const/4 v5, -0x1

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 602
    iget-object v0, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->cancelTextButton:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 603
    iget-object v0, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->cancelTextButton:Landroid/widget/TextView;

    const/4 v13, 0x1

    invoke-virtual {v0, v13, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 604
    iget-object v0, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->cancelTextButton:Landroid/widget/TextView;

    new-instance v5, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda14;

    invoke-direct {v5, v1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 614
    iget-object v0, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->cancelTextButton:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 615
    iget-object v0, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->cancelTextButton:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 616
    iget-object v0, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->topLayout:Landroid/widget/FrameLayout;

    iget-object v6, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->cancelTextButton:Landroid/widget/TextView;

    const/16 v24, 0x0

    const/16 v21, 0x33

    const/high16 v22, 0x40800000    # 4.0f

    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v0, v6, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 618
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->doneTextButton:Landroid/widget/TextView;

    .line 619
    invoke-static {v10, v11}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 620
    iget-object v0, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->doneTextButton:Landroid/widget/TextView;

    sget v6, Lorg/telegram/messenger/R$string;->Done:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 621
    iget-object v0, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->doneTextButton:Landroid/widget/TextView;

    invoke-static/range {p7 .. p7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static/range {p7 .. p7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    const/4 v13, 0x0

    invoke-virtual {v0, v6, v13, v10, v13}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 622
    iget-object v0, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->doneTextButton:Landroid/widget/TextView;

    const/16 v14, 0x10

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setGravity(I)V

    .line 623
    iget-object v0, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->doneTextButton:Landroid/widget/TextView;

    const/4 v6, -0x1

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 624
    iget-object v0, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->doneTextButton:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 625
    iget-object v0, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->doneTextButton:Landroid/widget/TextView;

    const/4 v13, 0x1

    invoke-virtual {v0, v13, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 626
    iget-object v0, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->doneTextButton:Landroid/widget/TextView;

    new-instance v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda15;

    invoke-direct {v6, v1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 629
    iget-object v0, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->doneTextButton:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 630
    iget-object v0, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->doneTextButton:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 631
    iget-object v0, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->topLayout:Landroid/widget/FrameLayout;

    iget-object v3, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->doneTextButton:Landroid/widget/TextView;

    const/high16 v24, 0x40800000    # 4.0f

    const/16 v21, 0x5

    const/16 v22, 0x0

    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 633
    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$8;

    invoke-direct {v0, v1, v2, v15}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$8;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Landroid/content/Context;Lorg/telegram/ui/Components/Paint/PersistColorPalette;)V

    iput-object v0, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->bottomLayout:Landroid/widget/FrameLayout;

    .line 758
    invoke-static/range {p7 .. p7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static/range {p7 .. p7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static/range {p7 .. p7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    const/4 v13, 0x0

    invoke-virtual {v0, v3, v6, v10, v13}, Landroid/view/View;->setPadding(IIII)V

    .line 759
    iget-object v0, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->bottomLayout:Landroid/widget/FrameLayout;

    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    const/high16 v6, -0x80000000

    filled-new-array {v13, v6}, [I

    move-result-object v6

    invoke-direct {v3, v4, v6}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 760
    iget-object v0, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->bottomLayout:Landroid/widget/FrameLayout;

    const/16 v3, 0x68

    const/16 v4, 0x50

    const/4 v6, -0x1

    invoke-static {v6, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 762
    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/PaintToolsView;

    if-eqz v7, :cond_9

    const/4 v3, 0x1

    goto :goto_4

    :cond_9
    const/4 v3, 0x0

    :goto_4
    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/Components/Paint/Views/PaintToolsView;-><init>(Landroid/content/Context;Z)V

    iput-object v0, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->paintToolsView:Lorg/telegram/ui/Components/Paint/Views/PaintToolsView;

    .line 763
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/4 v13, 0x0

    invoke-virtual {v0, v3, v13, v4, v13}, Landroid/view/View;->setPadding(IIII)V

    .line 764
    iget-object v0, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->paintToolsView:Lorg/telegram/ui/Components/Paint/Views/PaintToolsView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/PaintToolsView;->setDelegate(Lorg/telegram/ui/Components/Paint/Views/PaintToolsView$Delegate;)V

    .line 766
    iget-object v0, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->paintToolsView:Lorg/telegram/ui/Components/Paint/Views/PaintToolsView;

    const/4 v13, 0x1

    invoke-virtual {v0, v13}, Lorg/telegram/ui/Components/Paint/Views/PaintToolsView;->setSelectedIndex(I)V

    .line 767
    iget-object v0, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->bottomLayout:Landroid/widget/FrameLayout;

    iget-object v3, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->paintToolsView:Lorg/telegram/ui/Components/Paint/Views/PaintToolsView;

    const/high16 v4, 0x42400000    # 48.0f

    const/4 v6, -0x1

    invoke-static {v6, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v0, v3, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 769
    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    .line 770
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    const/4 v13, 0x0

    invoke-virtual {v0, v3, v13, v6, v13}, Landroid/view/View;->setPadding(IIII)V

    .line 771
    iget-object v0, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 772
    iget-object v0, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->setDelegate(Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView$Delegate;)V

    .line 773
    iget-object v0, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    invoke-static {v8}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getCurrentAlignment()I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->setAlignment(I)V

    .line 774
    iget-object v0, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->bottomLayout:Landroid/widget/FrameLayout;

    iget-object v3, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    const/4 v6, -0x1

    invoke-static {v6, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 776
    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$9;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$9;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->overlayLayout:Landroid/widget/FrameLayout;

    const/high16 v3, -0x40800000    # -1.0f

    .line 812
    invoke-static {v6, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 814
    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/PaintTypefaceListView;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/Paint/Views/PaintTypefaceListView;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->typefaceListView:Lorg/telegram/ui/Components/Paint/Views/PaintTypefaceListView;

    .line 815
    invoke-virtual {v0, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 816
    iget-object v0, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->typefaceListView:Lorg/telegram/ui/Components/Paint/Views/PaintTypefaceListView;

    new-instance v4, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda16;

    invoke-direct {v4, v1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)V

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 822
    iget-object v0, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    iget-object v4, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->typefaceListView:Lorg/telegram/ui/Components/Paint/Views/PaintTypefaceListView;

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->setTypefaceListView(Lorg/telegram/ui/Components/Paint/Views/PaintTypefaceListView;)V

    .line 823
    iget-object v0, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->overlayLayout:Landroid/widget/FrameLayout;

    iget-object v4, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->typefaceListView:Lorg/telegram/ui/Components/Paint/Views/PaintTypefaceListView;

    const/high16 v24, 0x41000000    # 8.0f

    const/high16 v25, 0x41000000    # 8.0f

    const/16 v19, -0x2

    const/high16 v20, -0x40000000    # -2.0f

    const/16 v21, 0x55

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 825
    iget-object v0, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->typefaceMenuOutlinePaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 826
    iget-object v0, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->typefaceMenuOutlinePaint:Landroid/graphics/Paint;

    const v6, 0x66ffffff

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 827
    iget-object v0, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->typefaceMenuOutlinePaint:Landroid/graphics/Paint;

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    const/4 v9, 0x2

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 829
    iget-object v0, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->typefaceMenuBackgroundPaint:Landroid/graphics/Paint;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuBackground:I

    invoke-direct {v1, v6}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->getThemedColor(I)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 831
    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$10;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$10;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorsListView:Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;

    .line 853
    invoke-virtual {v0, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 854
    iget-object v0, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorsListView:Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;

    invoke-static {v8}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;->setColorPalette(Lorg/telegram/ui/Components/Paint/PersistColorPalette;)V

    .line 855
    iget-object v0, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorsListView:Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;

    new-instance v5, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda17;

    invoke-direct {v5, v1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)V

    invoke-virtual {v0, v5}, Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;->setColorListener(Landroidx/core/util/Consumer;)V

    .line 859
    iget-object v0, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->bottomLayout:Landroid/widget/FrameLayout;

    iget-object v5, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorsListView:Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;

    const/high16 v23, 0x42600000    # 56.0f

    const/high16 v24, 0x40c00000    # 6.0f

    const/16 v18, -0x1

    const/high16 v19, 0x42a80000    # 84.0f

    const/16 v20, 0x30

    const/high16 v21, 0x42600000    # 56.0f

    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 861
    invoke-direct/range {p0 .. p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->setupTabsLayout(Landroid/content/Context;)V

    .line 863
    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/PaintCancelView;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/Paint/Views/PaintCancelView;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->cancelButton:Lorg/telegram/ui/Components/Paint/Views/PaintCancelView;

    .line 864
    invoke-static/range {p7 .. p7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static/range {p7 .. p7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static/range {p7 .. p7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-static/range {p7 .. p7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    invoke-virtual {v0, v5, v6, v9, v10}, Landroid/view/View;->setPadding(IIII)V

    .line 865
    iget-object v0, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->cancelButton:Lorg/telegram/ui/Components/Paint/Views/PaintCancelView;

    invoke-static/range {p6 .. p6}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 866
    iget-object v0, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->bottomLayout:Landroid/widget/FrameLayout;

    iget-object v5, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->cancelButton:Lorg/telegram/ui/Components/Paint/Views/PaintCancelView;

    const/16 v23, 0x0

    const/high16 v24, 0x40800000    # 4.0f

    const/16 v18, 0x20

    const/high16 v19, 0x42000000    # 32.0f

    const/16 v20, 0x53

    const/high16 v21, 0x41400000    # 12.0f

    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 868
    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/PaintDoneView;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/Paint/Views/PaintDoneView;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->doneButton:Lorg/telegram/ui/Components/Paint/Views/PaintDoneView;

    .line 869
    invoke-static/range {p7 .. p7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static/range {p7 .. p7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static/range {p7 .. p7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-static/range {p7 .. p7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    invoke-virtual {v0, v5, v6, v9, v10}, Landroid/view/View;->setPadding(IIII)V

    .line 870
    iget-object v0, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->doneButton:Lorg/telegram/ui/Components/Paint/Views/PaintDoneView;

    invoke-static/range {p6 .. p6}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 871
    iget-object v0, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->doneButton:Lorg/telegram/ui/Components/Paint/Views/PaintDoneView;

    new-instance v5, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda18;

    invoke-direct {v5, v1, v2, v7, v15}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Landroid/content/Context;Landroid/graphics/Bitmap;Lorg/telegram/ui/Components/Paint/PersistColorPalette;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 941
    iget-object v0, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->bottomLayout:Landroid/widget/FrameLayout;

    iget-object v5, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->doneButton:Lorg/telegram/ui/Components/Paint/Views/PaintDoneView;

    const/high16 v6, 0x41400000    # 12.0f

    const/high16 v7, 0x40800000    # 4.0f

    const/16 v9, 0x20

    const/high16 v10, 0x42000000    # 32.0f

    const/16 v11, 0x55

    const/4 v12, 0x0

    const/4 v13, 0x0

    move/from16 p9, v6

    move/from16 p10, v7

    move/from16 p4, v9

    move/from16 p5, v10

    move/from16 p6, v11

    move/from16 p7, v12

    move/from16 p8, v13

    invoke-static/range {p4 .. p10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 943
    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    .line 944
    iget-object v5, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    invoke-virtual {v0, v5}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->setColorSwatch(Lorg/telegram/ui/Components/Paint/Swatch;)V

    .line 945
    iget-object v0, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    iget-object v5, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v0, v5}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->setRenderView(Lorg/telegram/ui/Components/Paint/RenderView;)V

    .line 946
    iget-object v0, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    iget-object v5, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->weightDefaultValueOverride:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;

    invoke-virtual {v0, v5}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->setValueOverride(Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;)V

    .line 947
    iget-object v0, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    iget-object v5, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->weightDefaultValueOverride:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;

    invoke-interface {v5}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;->get()F

    move-result v5

    iput v5, v0, Lorg/telegram/ui/Components/Paint/Swatch;->brushWeight:F

    .line 948
    iget-object v0, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    new-instance v5, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda9;

    invoke-direct {v5, v1, v8}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;I)V

    invoke-virtual {v0, v5}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->setOnUpdate(Ljava/lang/Runnable;)V

    .line 952
    iget-object v0, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    const/4 v6, -0x1

    invoke-static {v6, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v1, v0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 954
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->pipetteContainerLayout:Landroid/widget/FrameLayout;

    .line 955
    invoke-static {v6, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 957
    iget-object v0, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorSwatchOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 958
    iget-object v0, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorSwatchOutlinePaint:Landroid/graphics/Paint;

    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 960
    iget-object v0, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    const/4 v13, 0x1

    invoke-direct {v1, v0, v13}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->setCurrentSwatch(Lorg/telegram/ui/Components/Paint/Swatch;Z)V

    .line 962
    sget-object v0, Lorg/telegram/ui/Components/Paint/Brush;->BRUSHES_LIST:Ljava/util/List;

    const/4 v13, 0x0

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/Paint/Brush;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->onBrushSelected(Lorg/telegram/ui/Components/Paint/Brush;)V

    .line 963
    invoke-virtual {v1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->updateColors()V

    .line 965
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_a

    .line 966
    new-instance v0, Landroid/graphics/Rect;

    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    const v3, 0x3eb33333    # 0.35f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    const/high16 v3, 0x42c80000    # 100.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-double v4, v4

    const-wide v6, 0x3fe4cccccccccccdL    # 0.65

    mul-double/2addr v4, v6

    double-to-int v4, v4

    const/4 v13, 0x0

    invoke-direct {v0, v13, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/graphics/Rect;

    aput-object v0, v2, v13

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setSystemGestureExclusionRects(Ljava/util/List;)V

    :cond_a
    return-void
.end method

.method private basePhotoSize(Ljava/lang/String;)Lorg/telegram/ui/Components/Size;
    .locals 5

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1577
    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    .line 1578
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1579
    invoke-static {p1, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1580
    iget p1, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float p1, p1

    iget v1, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-float v1, v1

    div-float/2addr p1, v1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1582
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    move p1, v0

    :goto_0
    cmpl-float v0, p1, v0

    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    if-lez v0, :cond_0

    .line 1585
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-double v3, v0

    mul-double/2addr v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 1586
    new-instance v1, Lorg/telegram/ui/Components/Size;

    div-float p1, v0, p1

    invoke-direct {v1, v0, p1}, Lorg/telegram/ui/Components/Size;-><init>(FF)V

    return-object v1

    .line 1588
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-double v3, v0

    mul-double/2addr v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 1589
    new-instance v1, Lorg/telegram/ui/Components/Size;

    mul-float/2addr p1, v0

    invoke-direct {v1, p1, v0}, Lorg/telegram/ui/Components/Size;-><init>(FF)V

    return-object v1
.end method

.method private baseStickerSize()Lorg/telegram/ui/Components/Size;
    .locals 4

    .line 2958
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->getPaintingSize()Lorg/telegram/ui/Components/Size;

    move-result-object v0

    iget v0, v0, Lorg/telegram/ui/Components/Size;->width:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 2959
    new-instance v1, Lorg/telegram/ui/Components/Size;

    invoke-direct {v1, v0, v0}, Lorg/telegram/ui/Components/Size;-><init>(FF)V

    return-object v1
.end method

.method private bottomPanelTranslationY(FF)V
    .locals 0

    return-void
.end method

.method private buttonForPopup(Ljava/lang/String;IZLjava/lang/Runnable;)Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$PopupButton;
    .locals 2

    .line 2476
    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$PopupButton;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$PopupButton;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Landroid/content/Context;)V

    .line 2477
    invoke-virtual {v0, p2}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$PopupButton;->setIcon(I)V

    .line 2478
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$PopupButton;->setText(Ljava/lang/CharSequence;)V

    .line 2479
    invoke-virtual {v0, p3}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$PopupButton;->setSelected(Z)V

    if-eqz p4, :cond_0

    .line 2481
    new-instance p1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda50;

    invoke-direct {p1, p4}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda50;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-object v0
.end method

.method private calculateStickerPosition(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$StickerPosition;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 2979
    :goto_0
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 2980
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 2981
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;

    if-eqz v4, :cond_0

    .line 2982
    iget-object v2, v3, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->mask_coords:Lorg/telegram/tgnet/TLRPC$TL_maskCoords;

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 2989
    :goto_1
    iget-object v3, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentCropState:Lorg/telegram/messenger/MediaController$CropState;

    const/high16 v4, 0x3f400000    # 0.75f

    if-eqz v3, :cond_2

    .line 2990
    iget v5, v3, Lorg/telegram/messenger/MediaController$CropState;->transformRotation:I

    int-to-float v5, v5

    iget v6, v3, Lorg/telegram/messenger/MediaController$CropState;->cropRotate:F

    add-float/2addr v5, v6

    neg-float v5, v5

    .line 2991
    iget v3, v3, Lorg/telegram/messenger/MediaController$CropState;->cropScale:F

    div-float/2addr v4, v3

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    .line 2996
    :goto_2
    new-instance v3, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$StickerPosition;

    invoke-direct {v0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->centerPositionForEntity()Lorg/telegram/ui/Components/Point;

    move-result-object v6

    invoke-direct {v3, v6, v4, v5}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$StickerPosition;-><init>(Lorg/telegram/ui/Components/Point;FF)V

    if-eqz v2, :cond_5

    .line 2997
    iget-object v4, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->faces:Ljava/util/ArrayList;

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_3

    goto :goto_3

    .line 3000
    :cond_3
    iget v4, v2, Lorg/telegram/tgnet/TLRPC$TL_maskCoords;->n:I

    .line 3002
    iget-wide v5, v1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-direct {v0, v4, v5, v6, v2}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->getRandomFaceWithVacantAnchor(IJLorg/telegram/tgnet/TLRPC$TL_maskCoords;)Lorg/telegram/ui/Components/Paint/PhotoFace;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_3

    .line 3007
    :cond_4
    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/Paint/PhotoFace;->getPointForAnchor(I)Lorg/telegram/ui/Components/Point;

    move-result-object v3

    .line 3008
    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/Paint/PhotoFace;->getWidthForAnchor(I)F

    move-result v4

    .line 3009
    invoke-virtual {v1}, Lorg/telegram/ui/Components/Paint/PhotoFace;->getAngle()F

    move-result v1

    .line 3010
    invoke-direct {v0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->baseStickerSize()Lorg/telegram/ui/Components/Size;

    move-result-object v5

    .line 3012
    iget v5, v5, Lorg/telegram/ui/Components/Size;->width:F

    div-float v5, v4, v5

    float-to-double v5, v5

    iget-wide v7, v2, Lorg/telegram/tgnet/TLRPC$TL_maskCoords;->zoom:D

    mul-double/2addr v5, v7

    double-to-float v5, v5

    float-to-double v6, v1

    .line 3014
    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    double-to-float v6, v6

    float-to-double v6, v6

    const-wide v8, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double v10, v8, v6

    .line 3015
    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    float-to-double v14, v4

    mul-double/2addr v12, v14

    move-wide/from16 v16, v8

    iget-wide v8, v2, Lorg/telegram/tgnet/TLRPC$TL_maskCoords;->x:D

    mul-double/2addr v12, v8

    double-to-float v4, v12

    .line 3016
    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v8, v14

    iget-wide v10, v2, Lorg/telegram/tgnet/TLRPC$TL_maskCoords;->x:D

    mul-double/2addr v8, v10

    double-to-float v8, v8

    add-double v6, v6, v16

    .line 3018
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    mul-double/2addr v9, v14

    iget-wide v11, v2, Lorg/telegram/tgnet/TLRPC$TL_maskCoords;->y:D

    mul-double/2addr v9, v11

    double-to-float v9, v9

    .line 3019
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v6, v14

    iget-wide v10, v2, Lorg/telegram/tgnet/TLRPC$TL_maskCoords;->y:D

    mul-double/2addr v6, v10

    double-to-float v2, v6

    .line 3021
    iget v6, v3, Lorg/telegram/ui/Components/Point;->x:F

    add-float/2addr v6, v4

    add-float/2addr v6, v9

    .line 3022
    iget v3, v3, Lorg/telegram/ui/Components/Point;->y:F

    add-float/2addr v3, v8

    add-float/2addr v3, v2

    .line 3024
    new-instance v2, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$StickerPosition;

    new-instance v4, Lorg/telegram/ui/Components/Point;

    invoke-direct {v4, v6, v3}, Lorg/telegram/ui/Components/Point;-><init>(FF)V

    invoke-direct {v2, v4, v5, v1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$StickerPosition;-><init>(Lorg/telegram/ui/Components/Point;FF)V

    return-object v2

    :cond_5
    :goto_3
    return-object v3
.end method

.method private centerPositionForEntity()Lorg/telegram/ui/Components/Point;
    .locals 12

    .line 2963
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->getPaintingSize()Lorg/telegram/ui/Components/Size;

    move-result-object v0

    .line 2964
    iget v1, v0, Lorg/telegram/ui/Components/Size;->width:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 2965
    iget v3, v0, Lorg/telegram/ui/Components/Size;->height:F

    div-float/2addr v3, v2

    .line 2966
    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentCropState:Lorg/telegram/messenger/MediaController$CropState;

    if-eqz v2, :cond_0

    .line 2967
    iget v4, v2, Lorg/telegram/messenger/MediaController$CropState;->transformRotation:I

    int-to-float v4, v4

    iget v2, v2, Lorg/telegram/messenger/MediaController$CropState;->cropRotate:F

    add-float/2addr v4, v2

    neg-float v2, v4

    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    double-to-float v2, v4

    .line 2968
    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentCropState:Lorg/telegram/messenger/MediaController$CropState;

    iget v4, v4, Lorg/telegram/messenger/MediaController$CropState;->cropPx:F

    float-to-double v4, v4

    float-to-double v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v4, v8

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentCropState:Lorg/telegram/messenger/MediaController$CropState;

    iget v2, v2, Lorg/telegram/messenger/MediaController$CropState;->cropPy:F

    float-to-double v8, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    sub-double/2addr v4, v8

    double-to-float v2, v4

    .line 2969
    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentCropState:Lorg/telegram/messenger/MediaController$CropState;

    iget v4, v4, Lorg/telegram/messenger/MediaController$CropState;->cropPx:F

    float-to-double v4, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v4, v8

    iget-object v8, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentCropState:Lorg/telegram/messenger/MediaController$CropState;

    iget v8, v8, Lorg/telegram/messenger/MediaController$CropState;->cropPy:F

    float-to-double v8, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v8, v6

    add-double/2addr v4, v8

    double-to-float v4, v4

    .line 2970
    iget v5, v0, Lorg/telegram/ui/Components/Size;->width:F

    mul-float/2addr v2, v5

    sub-float/2addr v1, v2

    .line 2971
    iget v0, v0, Lorg/telegram/ui/Components/Size;->height:F

    mul-float/2addr v4, v0

    sub-float/2addr v3, v4

    .line 2973
    :cond_0
    new-instance v0, Lorg/telegram/ui/Components/Point;

    invoke-direct {v0, v1, v3}, Lorg/telegram/ui/Components/Point;-><init>(FF)V

    return-object v0
.end method

.method private createSticker(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$Document;Z)Lorg/telegram/ui/Components/Paint/Views/StickerView;
    .locals 10

    .line 3078
    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->calculateStickerPosition(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$StickerPosition;

    move-result-object v0

    .line 3079
    new-instance v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$18;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$StickerPosition;->-$$Nest$fgetposition(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$StickerPosition;)Lorg/telegram/ui/Components/Point;

    move-result-object v4

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$StickerPosition;->-$$Nest$fgetangle(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$StickerPosition;)F

    move-result v5

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$StickerPosition;->-$$Nest$fgetscale(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$StickerPosition;)F

    move-result v6

    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->baseStickerSize()Lorg/telegram/ui/Components/Size;

    move-result-object v7

    move-object v2, p0

    move-object v9, p1

    move-object v8, p2

    invoke-direct/range {v1 .. v9}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$18;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Landroid/content/Context;Lorg/telegram/ui/Components/Point;FFLorg/telegram/ui/Components/Size;Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;)V

    .line 3085
    invoke-static {v8}, Lorg/telegram/messenger/MessageObject;->isTextColorEmoji(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3086
    iget-object p1, v1, Lorg/telegram/ui/Components/Paint/Views/StickerView;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    new-instance p2, Landroid/graphics/PorterDuffColorFilter;

    const/4 v3, -0x1

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/ImageReceiver;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 3088
    :cond_0
    iget-object p1, v1, Lorg/telegram/ui/Components/Paint/Views/StickerView;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    const/16 p2, 0xc

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/ImageReceiver;->setLayerNum(I)V

    .line 3089
    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$StickerPosition;->-$$Nest$fgetposition(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$StickerPosition;)Lorg/telegram/ui/Components/Point;

    move-result-object p1

    iget p1, p1, Lorg/telegram/ui/Components/Point;->x:F

    iget-object p2, v2, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    int-to-float p2, p2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr p2, v3

    cmpl-float p1, p1, p2

    const/4 p2, 0x2

    if-nez p1, :cond_1

    .line 3090
    invoke-virtual {v1, p2}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->setStickyX(I)V

    .line 3092
    :cond_1
    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$StickerPosition;->-$$Nest$fgetposition(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$StickerPosition;)Lorg/telegram/ui/Components/Point;

    move-result-object p1

    iget p1, p1, Lorg/telegram/ui/Components/Point;->y:F

    iget-object v0, v2, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v3

    cmpl-float p1, p1, v0

    if-nez p1, :cond_2

    .line 3093
    invoke-virtual {v1, p2}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->setStickyY(I)V

    .line 3095
    :cond_2
    invoke-virtual {v1, p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->setDelegate(Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;)V

    .line 3096
    iget-object p1, v2, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    if-eqz p3, :cond_3

    .line 3098
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->registerRemovalUndo(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    .line 3099
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    :cond_3
    return-object v1
.end method

.method private createText(Z)Lorg/telegram/ui/Components/Paint/Views/TextPaintView;
    .locals 10

    .line 1015
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->onTextAdd()V

    .line 1017
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->getPaintingSize()Lorg/telegram/ui/Components/Size;

    move-result-object v0

    const/4 v1, 0x0

    .line 1018
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->startPositionRelativeToEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Lorg/telegram/ui/Components/Point;

    move-result-object v4

    .line 1019
    new-instance v2, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v1, v0, Lorg/telegram/ui/Components/Size;->width:F

    const/high16 v9, 0x41100000    # 9.0f

    div-float/2addr v1, v9

    float-to-int v5, v1

    iget-object v7, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    iget v8, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->selectedTextType:I

    const-string v6, ""

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/Point;ILjava/lang/CharSequence;Lorg/telegram/ui/Components/Paint/Swatch;I)V

    .line 1020
    iget v1, v0, Lorg/telegram/ui/Components/Size;->width:F

    div-float v3, v1, v9

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v3, v5

    float-to-int v3, v3

    div-float/2addr v1, v9

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v1, v5

    float-to-int v1, v1

    new-instance v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda41;

    invoke-direct {v6, p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda41;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)V

    invoke-virtual {v2, v3, v1, v6}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->setMinMaxFontSize(IILjava/lang/Runnable;)V

    .line 1025
    iget v1, v4, Lorg/telegram/ui/Components/Point;->x:F

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    cmpl-float v1, v1, v3

    const/4 v3, 0x2

    if-nez v1, :cond_0

    .line 1026
    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->setStickyX(I)V

    .line 1028
    :cond_0
    iget v1, v4, Lorg/telegram/ui/Components/Point;->y:F

    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v5

    cmpl-float v1, v1, v4

    if-nez v1, :cond_1

    .line 1029
    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->setStickyY(I)V

    .line 1031
    :cond_1
    invoke-virtual {v2, p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->setDelegate(Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;)V

    .line 1032
    iget v0, v0, Lorg/telegram/ui/Components/Size;->width:F

    const/high16 v1, 0x41a00000    # 20.0f

    sub-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->setMaxWidth(I)V

    .line 1033
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getCurrentTypeface()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->setTypeface(Ljava/lang/String;)V

    .line 1034
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getCurrentTextType()I

    move-result v0

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->setType(I)V

    .line 1035
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    const/4 v1, -0x2

    const/high16 v3, -0x40000000    # -2.0f

    invoke-static {v1, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1036
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentCropState:Lorg/telegram/messenger/MediaController$CropState;

    if-eqz v0, :cond_2

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1037
    iget v0, v0, Lorg/telegram/messenger/MediaController$CropState;->cropScale:F

    div-float/2addr v1, v0

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->scale(F)V

    .line 1038
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentCropState:Lorg/telegram/messenger/MediaController$CropState;

    iget v1, v0, Lorg/telegram/messenger/MediaController$CropState;->transformRotation:I

    int-to-float v1, v1

    iget v0, v0, Lorg/telegram/messenger/MediaController$CropState;->cropRotate:F

    add-float/2addr v1, v0

    neg-float v0, v1

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->rotate(F)V

    :cond_2
    if-eqz p1, :cond_3

    .line 1042
    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->registerRemovalUndo(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    .line 1044
    invoke-virtual {v2}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->beginEditing()V

    const/4 p1, 0x0

    .line 1045
    invoke-direct {p0, v2, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;Z)Z

    .line 1046
    invoke-virtual {v2}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getFocusedView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 1047
    invoke-virtual {v2}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getFocusedView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    const/4 p1, 0x1

    .line 1048
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->editingText:Z

    .line 1049
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    iget v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getCurrentAlignment()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->setAlignment(IZ)V

    .line 1050
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getCurrentTextType()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->setOutlineType(I)V

    :cond_3
    return-object v2
.end method

.method private detectFaces()V
    .locals 4

    .line 1766
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->queue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda43;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda43;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private duplicateSelectedEntity()V
    .locals 4

    .line 2828
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    if-nez v0, :cond_0

    return-void

    .line 2833
    :cond_0
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->startPositionRelativeToEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Lorg/telegram/ui/Components/Point;

    move-result-object v0

    .line 2835
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    instance-of v2, v1, Lorg/telegram/ui/Components/Paint/Views/StickerView;

    if-eqz v2, :cond_1

    .line 2836
    new-instance v1, Lorg/telegram/ui/Components/Paint/Views/StickerView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    check-cast v3, Lorg/telegram/ui/Components/Paint/Views/StickerView;

    invoke-direct {v1, v2, v3, v0}, Lorg/telegram/ui/Components/Paint/Views/StickerView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/Paint/Views/StickerView;Lorg/telegram/ui/Components/Point;)V

    .line 2837
    invoke-virtual {v1, p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->setDelegate(Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;)V

    .line 2838
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 2840
    :cond_1
    instance-of v1, v1, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz v1, :cond_2

    .line 2841
    new-instance v1, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    check-cast v3, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    invoke-direct {v1, v2, v3, v0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/Paint/Views/TextPaintView;Lorg/telegram/ui/Components/Point;)V

    .line 2842
    invoke-virtual {v1, p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->setDelegate(Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;)V

    .line 2843
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->getPaintingSize()Lorg/telegram/ui/Components/Size;

    move-result-object v0

    iget v0, v0, Lorg/telegram/ui/Components/Size;->width:F

    const/high16 v2, 0x41a00000    # 20.0f

    sub-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->setMaxWidth(I)V

    .line 2844
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    const/4 v2, -0x2

    const/high16 v3, -0x40000000    # -2.0f

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 2848
    :goto_0
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->registerRemovalUndo(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    .line 2849
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    return-void
.end method

.method private editSelectedTextEntity()V
    .locals 2

    .line 1061
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    instance-of v1, v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->editingText:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1065
    :cond_0
    check-cast v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    const/4 v1, 0x1

    .line 1066
    iput-boolean v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->editingText:Z

    .line 1068
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->beginEditing()V

    .line 1069
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getFocusedView()Landroid/view/View;

    move-result-object v0

    .line 1070
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1071
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private getBarView(I)Landroid/view/View;
    .locals 1

    if-nez p1, :cond_0

    .line 1347
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->paintToolsView:Lorg/telegram/ui/Components/Paint/Views/PaintToolsView;

    return-object p1

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 1349
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private getBarView()Landroid/view/ViewGroup;
    .locals 2

    .line 1260
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->tabsSelectedIndex:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->paintToolsView:Lorg/telegram/ui/Components/Paint/Views/PaintToolsView;

    return-object v0
.end method

.method private getCenterLocationInWindow(Landroid/view/View;)[I
    .locals 13

    .line 3166
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->position:[F

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    const/4 v3, 0x0

    aput v1, v0, v3

    .line 3167
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->position:[F

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    const/4 v4, 0x1

    aput v1, v0, v4

    .line 3169
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->position:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 3170
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->position:[F

    aget v1, v0, v3

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v1, v5

    aput v1, v0, v3

    .line 3171
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->position:[F

    aget v1, v0, v4

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v1, v5

    aput v1, v0, v4

    .line 3172
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 3173
    :goto_0
    instance-of v0, p1, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 3174
    check-cast p1, Landroid/view/View;

    .line 3175
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->position:[F

    aget v1, v0, v3

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v1, v5

    aput v1, v0, v3

    .line 3176
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->position:[F

    aget v1, v0, v4

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v1, v5

    aput v1, v0, v4

    .line 3177
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->position:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 3178
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->position:[F

    aget v1, v0, v3

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v1, v5

    aput v1, v0, v3

    .line 3179
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->position:[F

    aget v1, v0, v4

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v1, v5

    aput v1, v0, v4

    .line 3180
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    goto :goto_0

    .line 3183
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->pos2:[I

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->position:[F

    aget v0, v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    aput v0, p1, v3

    .line 3184
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->pos2:[I

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->position:[F

    aget v0, v0, v4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    aput v0, p1, v4

    .line 3186
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->pos2:[I

    aget v0, p1, v3

    int-to-float v0, v0

    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v5, v1, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    div-float/2addr v5, v2

    sub-float/2addr v0, v5

    .line 3187
    aget p1, p1, v4

    int-to-float p1, p1

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    sub-float/2addr p1, v1

    .line 3188
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v1}, Landroid/view/View;->getRotation()F

    move-result v1

    neg-float v1, v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    double-to-float v1, v1

    .line 3189
    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->pos2:[I

    float-to-double v5, v0

    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    mul-double/2addr v7, v5

    float-to-double v9, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    mul-double/2addr v11, v9

    sub-double/2addr v7, v11

    double-to-int p1, v7

    sget-object v7, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    div-int/lit8 v7, v7, 0x2

    add-int/2addr p1, v7

    aput p1, v2, v3

    .line 3190
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->pos2:[I

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v5, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double/2addr v9, v0

    add-double/2addr v5, v9

    double-to-int v0, v5

    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    aput v0, p1, v4

    .line 3192
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->pos2:[I

    return-object p1
.end method

.method private getFrameRotation()I
    .locals 2

    .line 1753
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->originalBitmapRotation:I

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_2

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_1

    const/16 v1, 0x10e

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x3

    return v0

    :cond_1
    const/4 v0, 0x2

    return v0

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private getPaintingSize()Lorg/telegram/ui/Components/Size;
    .locals 6

    .line 1714
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->paintingSize:Lorg/telegram/ui/Components/Size;

    if-eqz v0, :cond_0

    return-object v0

    .line 1717
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->bitmapToEdit:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 1718
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->bitmapToEdit:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 1721
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    const/16 v2, 0xa00

    goto :goto_0

    :cond_1
    const/16 v2, 0xf00

    goto :goto_0

    :cond_2
    const/16 v2, 0x500

    .line 1733
    :goto_0
    new-instance v3, Lorg/telegram/ui/Components/Size;

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/Components/Size;-><init>(FF)V

    int-to-float v2, v2

    .line 1734
    iput v2, v3, Lorg/telegram/ui/Components/Size;->width:F

    mul-float v4, v2, v1

    div-float/2addr v4, v0

    float-to-double v4, v4

    .line 1735
    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-float v4, v4

    iput v4, v3, Lorg/telegram/ui/Components/Size;->height:F

    cmpl-float v4, v4, v2

    if-lez v4, :cond_3

    .line 1737
    iput v2, v3, Lorg/telegram/ui/Components/Size;->height:F

    mul-float/2addr v2, v0

    div-float/2addr v2, v1

    float-to-double v0, v2

    .line 1738
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, v3, Lorg/telegram/ui/Components/Size;->width:F

    .line 1740
    :cond_3
    iput-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->paintingSize:Lorg/telegram/ui/Components/Size;

    return-object v3
.end method

.method private getRandomFaceWithVacantAnchor(IJLorg/telegram/tgnet/TLRPC$TL_maskCoords;)Lorg/telegram/ui/Components/Paint/PhotoFace;
    .locals 11

    const/4 v0, 0x0

    if-ltz p1, :cond_2

    const/4 v1, 0x3

    if-gt p1, v1, :cond_2

    .line 3029
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->faces:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 3033
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->faces:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3034
    sget-object v2, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v2, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    move v3, v1

    :goto_0
    if-lez v3, :cond_2

    .line 3039
    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->faces:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lorg/telegram/ui/Components/Paint/PhotoFace;

    move-object v5, p0

    move v7, p1

    move-wide v8, p2

    move-object v10, p4

    .line 3040
    invoke-direct/range {v5 .. v10}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->isFaceAnchorOccupied(Lorg/telegram/ui/Components/Paint/PhotoFace;IJLorg/telegram/tgnet/TLRPC$TL_maskCoords;)Z

    move-result p1

    if-nez p1, :cond_1

    return-object v6

    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 3038
    rem-int/2addr v2, v1

    add-int/lit8 v3, v3, -0x1

    move p1, v7

    move-wide p2, v8

    move-object p4, v10

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method private getThemedColor(I)I
    .locals 1

    .line 2949
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    return p1
.end method

.method private hideEmojiPopup(Z)V
    .locals 3

    .line 3384
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiViewVisible:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3385
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->showEmojiPopup(I)V

    :cond_0
    if-eqz p1, :cond_2

    .line 3388
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->waitingForKeyboardOpen:Z

    if-nez p1, :cond_1

    .line 3389
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    const/4 v0, 0x2

    .line 3390
    new-array v0, v0, [F

    const/4 v2, 0x0

    aput v2, v0, v1

    const/4 v2, 0x1

    aput p1, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 3392
    iput-boolean v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->bottomPanelIgnoreOnce:Z

    .line 3394
    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda22;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3401
    iput-boolean v2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->isAnimatePopupClosing:Z

    .line 3402
    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$21;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$21;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v0, 0xfa

    .line 3414
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3415
    sget-object v0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->keyboardInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3416
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    .line 3418
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->hideEmojiView()V

    :cond_2
    return-void
.end method

.method private hideEmojiView()V
    .locals 2

    .line 3447
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiPadding:I

    if-lez v0, :cond_0

    .line 3448
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->updateKeyboard()V

    .line 3450
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiViewVisible:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    .line 3451
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmojiView;->setVisibility(I)V

    :cond_1
    const/4 v0, 0x0

    .line 3453
    iput v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiPadding:I

    return-void
.end method

.method private isFaceAnchorOccupied(Lorg/telegram/ui/Components/Paint/PhotoFace;IJLorg/telegram/tgnet/TLRPC$TL_maskCoords;)Z
    .locals 9

    .line 3049
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Paint/PhotoFace;->getPointForAnchor(I)Lorg/telegram/ui/Components/Point;

    move-result-object p5

    const/4 v0, 0x1

    if-nez p5, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    .line 3054
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/Paint/PhotoFace;->getWidthForAnchor(I)F

    move-result p1

    const v2, 0x3f8ccccd    # 1.1f

    mul-float/2addr p1, v2

    move v2, v1

    .line 3056
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 3057
    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3058
    instance-of v4, v3, Lorg/telegram/ui/Components/Paint/Views/StickerView;

    if-nez v4, :cond_1

    goto :goto_1

    .line 3062
    :cond_1
    check-cast v3, Lorg/telegram/ui/Components/Paint/Views/StickerView;

    .line 3063
    invoke-virtual {v3}, Lorg/telegram/ui/Components/Paint/Views/StickerView;->getAnchor()I

    move-result v4

    if-eq v4, p2, :cond_2

    goto :goto_1

    .line 3067
    :cond_2
    invoke-virtual {v3}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getPosition()Lorg/telegram/ui/Components/Point;

    move-result-object v4

    .line 3068
    iget v5, v4, Lorg/telegram/ui/Components/Point;->x:F

    iget v6, p5, Lorg/telegram/ui/Components/Point;->x:F

    sub-float/2addr v5, v6

    float-to-double v5, v5

    iget v4, v4, Lorg/telegram/ui/Components/Point;->y:F

    iget v7, p5, Lorg/telegram/ui/Components/Point;->y:F

    sub-float/2addr v4, v7

    float-to-double v7, v4

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    double-to-float v4, v4

    .line 3069
    invoke-virtual {v3}, Lorg/telegram/ui/Components/Paint/Views/StickerView;->getSticker()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v3

    iget-wide v5, v3, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    cmp-long v3, p3, v5

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->faces:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v0, :cond_4

    :cond_3
    cmpg-float v3, v4, p1

    if-gez v3, :cond_4

    return v0

    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return v1
.end method

.method private isSidewardOrientation()Z
    .locals 3

    .line 1762
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->originalBitmapRotation:I

    rem-int/lit16 v1, v0, 0x168

    const/16 v2, 0x5a

    if-eq v1, v2, :cond_1

    rem-int/lit16 v0, v0, 0x168

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private synthetic lambda$appearAnimation$23(Landroid/view/View;)V
    .locals 1

    .line 1546
    instance-of v0, p1, Lorg/telegram/ui/Components/Paint/Views/EntityView;

    if-eqz v0, :cond_0

    .line 1547
    check-cast p1, Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->updateSelectionView()V

    .line 1548
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    :cond_0
    return-void
.end method

.method private synthetic lambda$createText$13()V
    .locals 1

    .line 1021
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    if-eqz v0, :cond_0

    .line 1022
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$detectFaces$24()V
    .locals 9

    const/4 v0, 0x0

    .line 1769
    :try_start_0
    new-instance v1, Lcom/google/android/gms/vision/face/FaceDetector$Builder;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/vision/face/FaceDetector$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 1770
    invoke-virtual {v1, v2}, Lcom/google/android/gms/vision/face/FaceDetector$Builder;->setMode(I)Lcom/google/android/gms/vision/face/FaceDetector$Builder;

    move-result-object v1

    .line 1771
    invoke-virtual {v1, v2}, Lcom/google/android/gms/vision/face/FaceDetector$Builder;->setLandmarkType(I)Lcom/google/android/gms/vision/face/FaceDetector$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 1772
    invoke-virtual {v1, v2}, Lcom/google/android/gms/vision/face/FaceDetector$Builder;->setTrackingEnabled(Z)Lcom/google/android/gms/vision/face/FaceDetector$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/vision/face/FaceDetector$Builder;->build()Lcom/google/android/gms/vision/face/FaceDetector;

    move-result-object v0

    .line 1773
    invoke-virtual {v0}, Lcom/google/android/gms/vision/face/FaceDetector;->isOperational()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1774
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v1, :cond_0

    .line 1775
    const-string v1, "face detection is not operational"

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_3

    :catch_0
    move-exception v1

    goto :goto_2

    .line 1803
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/google/android/gms/vision/face/FaceDetector;->release()V

    return-void

    .line 1780
    :cond_1
    :try_start_1
    new-instance v1, Lcom/google/android/gms/vision/Frame$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/vision/Frame$Builder;-><init>()V

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->facesBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/vision/Frame$Builder;->setBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/gms/vision/Frame$Builder;

    move-result-object v1

    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->getFrameRotation()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/vision/Frame$Builder;->setRotation(I)Lcom/google/android/gms/vision/Frame$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/vision/Frame$Builder;->build()Lcom/google/android/gms/vision/Frame;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1783
    :try_start_2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/vision/face/FaceDetector;->detect(Lcom/google/android/gms/vision/Frame;)Landroid/util/SparseArray;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1788
    :try_start_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1789
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->getPaintingSize()Lorg/telegram/ui/Components/Size;

    move-result-object v4

    .line 1790
    :goto_1
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 1791
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 1792
    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/vision/face/Face;

    .line 1793
    new-instance v6, Lorg/telegram/ui/Components/Paint/PhotoFace;

    iget-object v7, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->facesBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->isSidewardOrientation()Z

    move-result v8

    invoke-direct {v6, v5, v7, v4, v8}, Lorg/telegram/ui/Components/Paint/PhotoFace;-><init>(Lcom/google/android/gms/vision/face/Face;Landroid/graphics/Bitmap;Lorg/telegram/ui/Components/Size;Z)V

    .line 1794
    invoke-virtual {v6}, Lorg/telegram/ui/Components/Paint/PhotoFace;->isSufficient()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1795
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1798
    :cond_3
    iput-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->faces:Ljava/util/ArrayList;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1803
    invoke-virtual {v0}, Lcom/google/android/gms/vision/face/FaceDetector;->release()V

    return-void

    :catchall_1
    move-exception v1

    .line 1785
    :try_start_4
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1803
    invoke-virtual {v0}, Lcom/google/android/gms/vision/face/FaceDetector;->release()V

    return-void

    .line 1800
    :goto_2
    :try_start_5
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v0, :cond_4

    .line 1803
    invoke-virtual {v0}, Lcom/google/android/gms/vision/face/FaceDetector;->release()V

    :cond_4
    return-void

    :goto_3
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/google/android/gms/vision/face/FaceDetector;->release()V

    .line 1805
    :cond_5
    throw v1
.end method

.method private synthetic lambda$getThanosEffect$48()V
    .locals 2

    .line 3737
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->thanosEffect:Lorg/telegram/ui/Components/ThanosEffect;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3739
    iput-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->thanosEffect:Lorg/telegram/ui/Components/ThanosEffect;

    .line 3740
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$hideEmojiPopup$47(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 3395
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 3396
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/EmojiView;->setTranslationY(F)V

    return-void
.end method

.method private synthetic lambda$new$1()V
    .locals 7

    .line 303
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->undoStore:Lorg/telegram/ui/Components/Paint/UndoStore;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/UndoStore;->canUndo()Z

    move-result v0

    .line 304
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->undoButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 305
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->undoButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const v2, 0x3f19999a    # 0.6f

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v5, 0x96

    invoke-virtual {v1, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 306
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->undoButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 307
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->undoAllButton:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 308
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->undoAllButton:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    if-eqz v0, :cond_1

    move v2, v3

    :cond_1
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 309
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->undoAllButton:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method

.method private synthetic lambda$new$10(Landroid/content/Context;Landroid/graphics/Bitmap;Lorg/telegram/ui/Components/Paint/PersistColorPalette;Landroid/view/View;)V
    .locals 1

    .line 872
    iget-boolean p4, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->isColorListShown:Z

    if-eqz p4, :cond_0

    .line 873
    new-instance p4, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p4, p1, v0}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    iget p1, p1, Lorg/telegram/ui/Components/Paint/Swatch;->color:I

    invoke-virtual {p4, p1}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;->setColor(I)Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;

    move-result-object p1

    new-instance p4, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$11;

    invoke-direct {p4, p0, p2, p3}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$11;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Landroid/graphics/Bitmap;Lorg/telegram/ui/Components/Paint/PersistColorPalette;)V

    invoke-virtual {p1, p4}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;->setPipetteDelegate(Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$PipetteDelegate;)Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda35;

    invoke-direct {p2, p0, p3}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda35;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Lorg/telegram/ui/Components/Paint/PersistColorPalette;)V

    .line 928
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;->setColorListener(Landroidx/core/util/Consumer;)Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;

    move-result-object p1

    .line 934
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;->show()V

    return-void

    .line 937
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->onDoneButtonClickedListener:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    .line 938
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$new$11(I)V
    .locals 2

    .line 949
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->setCurrentSwatch(Lorg/telegram/ui/Components/Paint/Swatch;Z)V

    .line 950
    invoke-static {p1}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    iget v0, v0, Lorg/telegram/ui/Components/Paint/Swatch;->brushWeight:F

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->setCurrentWeight(F)V

    return-void
.end method

.method private synthetic lambda$new$2(Landroid/view/View;)V
    .locals 1

    .line 541
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/RenderView;->getCurrentBrush()Lorg/telegram/ui/Components/Paint/Brush;

    move-result-object p1

    instance-of p1, p1, Lorg/telegram/ui/Components/Paint/Brush$Shape;

    if-eqz p1, :cond_0

    .line 542
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/RenderView;->clearShape()V

    .line 543
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->paintToolsView:Lorg/telegram/ui/Components/Paint/Views/PaintToolsView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Paint/Views/PaintToolsView;->setSelectedIndex(I)V

    .line 544
    sget-object p1, Lorg/telegram/ui/Components/Paint/Brush;->BRUSHES_LIST:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/Paint/Brush;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->onBrushSelected(Lorg/telegram/ui/Components/Paint/Brush;)V

    return-void

    .line 546
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->undoStore:Lorg/telegram/ui/Components/Paint/UndoStore;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/UndoStore;->undo()V

    return-void
.end method

.method private synthetic lambda$new$4(Landroid/view/View;)V
    .locals 1

    .line 581
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->undoStore:Lorg/telegram/ui/Components/Paint/UndoStore;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/UndoStore;->canUndo()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 584
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/RenderView;->getCurrentBrush()Lorg/telegram/ui/Components/Paint/Brush;

    move-result-object p1

    instance-of p1, p1, Lorg/telegram/ui/Components/Paint/Brush$Shape;

    if-eqz p1, :cond_1

    .line 585
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/RenderView;->clearShape()V

    .line 586
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->paintToolsView:Lorg/telegram/ui/Components/Paint/Views/PaintToolsView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Paint/Views/PaintToolsView;->setSelectedIndex(I)V

    .line 587
    sget-object p1, Lorg/telegram/ui/Components/Paint/Brush;->BRUSHES_LIST:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/Paint/Brush;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->onBrushSelected(Lorg/telegram/ui/Components/Paint/Brush;)V

    .line 589
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/RenderView;->clearAll()V

    .line 590
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->undoStore:Lorg/telegram/ui/Components/Paint/UndoStore;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/UndoStore;->reset()V

    .line 591
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    return-void
.end method

.method private synthetic lambda$new$5(Landroid/view/View;)V
    .locals 1

    .line 605
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    instance-of v0, p1, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz v0, :cond_0

    .line 606
    check-cast p1, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getFocusedView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 608
    :cond_0
    iget-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiViewVisible:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 609
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->hideEmojiPopup(Z)V

    .line 611
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->removeEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    const/4 p1, 0x0

    .line 612
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    return-void
.end method

.method private synthetic lambda$new$6(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    .line 627
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    return-void
.end method

.method private synthetic lambda$new$7(Landroid/view/View;I)V
    .locals 1

    .line 817
    invoke-static {}, Lorg/telegram/ui/Components/Paint/PaintTypeface;->get()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/Paint/PaintTypeface;

    .line 818
    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/PaintTypeface;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->setTypeface(Ljava/lang/String;)V

    .line 819
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->onTypefaceSelected(Lorg/telegram/ui/Components/Paint/PaintTypeface;)V

    const/4 p1, 0x0

    .line 820
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->showTypefaceMenu(Z)V

    return-void
.end method

.method private synthetic lambda$new$8(Ljava/lang/Integer;)V
    .locals 0

    .line 856
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->setNewColor(I)V

    const/4 p1, 0x0

    .line 857
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->showColorList(Z)V

    return-void
.end method

.method private synthetic lambda$new$9(Lorg/telegram/ui/Components/Paint/PersistColorPalette;Ljava/lang/Integer;)V
    .locals 1

    .line 929
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->selectColor(I)V

    .line 930
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->saveColors()V

    .line 931
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->setNewColor(I)V

    .line 932
    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorsListView:Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getCurrentColorPosition()I

    move-result p1

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;->setSelectedColorIndex(I)V

    .line 933
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorsListView:Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private synthetic lambda$onAddButtonPressed$33(Lorg/telegram/ui/Components/Paint/Brush$Shape;I)V
    .locals 1

    .line 2681
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/RenderView;->getCurrentBrush()Lorg/telegram/ui/Components/Paint/Brush;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/Components/Paint/Brush$Shape;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2682
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->ignoreToolChangeAnimationOnce:Z

    .line 2684
    :cond_0
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->onBrushSelected(Lorg/telegram/ui/Components/Paint/Brush;)V

    .line 2685
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->paintToolsView:Lorg/telegram/ui/Components/Paint/Views/PaintToolsView;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Paint/Views/PaintToolsView;->animatePlusToIcon(I)V

    return-void
.end method

.method private synthetic lambda$onAddButtonPressed$34(Landroid/view/View;)Z
    .locals 4

    .line 2688
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 2689
    iget p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->toggleFillShapes()V

    .line 2690
    iget p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getFillShapes()Z

    move-result p1

    const/4 v1, 0x0

    .line 2691
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemsCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 2692
    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemAt(I)Landroid/view/View;

    move-result-object v2

    .line 2693
    instance-of v3, v2, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$PopupButton;

    if-eqz v3, :cond_1

    .line 2694
    sget-object v3, Lorg/telegram/ui/Components/Paint/Brush$Shape;->SHAPES_LIST:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/Paint/Brush$Shape;

    if-eqz p1, :cond_0

    .line 2695
    invoke-virtual {v3}, Lorg/telegram/ui/Components/Paint/Brush$Shape;->getFilledIconRes()I

    move-result v3

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Lorg/telegram/ui/Components/Paint/Brush;->getIconRes()I

    move-result v3

    .line 2696
    :goto_1
    check-cast v2, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$PopupButton;

    invoke-virtual {v2, v3, p1, v0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$PopupButton;->setIcon(IZZ)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private synthetic lambda$onAddButtonPressed$35()V
    .locals 7

    .line 2676
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getFillShapes()Z

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    .line 2677
    :goto_0
    sget-object v3, Lorg/telegram/ui/Components/Paint/Brush$Shape;->SHAPES_LIST:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 2678
    sget-object v3, Lorg/telegram/ui/Components/Paint/Brush$Shape;->SHAPES_LIST:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/Paint/Brush$Shape;

    if-eqz v0, :cond_0

    .line 2679
    invoke-virtual {v3}, Lorg/telegram/ui/Components/Paint/Brush$Shape;->getFilledIconRes()I

    move-result v4

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Lorg/telegram/ui/Components/Paint/Brush;->getIconRes()I

    move-result v4

    .line 2680
    :goto_1
    invoke-virtual {v3}, Lorg/telegram/ui/Components/Paint/Brush$Shape;->getShapeName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda47;

    invoke-direct {v6, p0, v3, v4}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda47;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Lorg/telegram/ui/Components/Paint/Brush$Shape;I)V

    invoke-direct {p0, v5, v4, v1, v6}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->buttonForPopup(Ljava/lang/String;IZLjava/lang/Runnable;)Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$PopupButton;

    move-result-object v3

    .line 2687
    new-instance v4, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda48;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda48;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 2702
    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/4 v5, -0x1

    const/16 v6, 0x30

    invoke-static {v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private synthetic lambda$openStickersView$18()V
    .locals 1

    .line 1436
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->facesBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 1437
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->detectFaces()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$openStickersView$19(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x1

    .line 1447
    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->createSticker(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$Document;Z)Lorg/telegram/ui/Components/Paint/Views/StickerView;

    move-result-object p1

    .line 1448
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    const/high16 p2, 0x3fc00000    # 1.5f

    .line 1449
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->setScale(F)V

    .line 1451
    :cond_0
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method private synthetic lambda$openStickersView$20(Ljava/lang/Integer;)Ljava/lang/Boolean;
    .locals 1

    .line 1454
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 1455
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->showPhotoAlert()V

    .line 1457
    :cond_0
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method private synthetic lambda$openStickersView$21(ILandroid/content/DialogInterface;)V
    .locals 0

    const/4 p2, 0x0

    .line 1460
    invoke-virtual {p0, p2}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->onOpenCloseStickersAlert(Z)V

    .line 1461
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->switchTab(I)V

    return-void
.end method

.method private synthetic lambda$registerRemovalUndo$45(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V
    .locals 0

    .line 3131
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->removeEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    return-void
.end method

.method private synthetic lambda$setCurrentSwatch$31(Ljava/lang/Integer;ILandroid/animation/ValueAnimator;)V
    .locals 1

    .line 2428
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    .line 2429
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1, p2, p3}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p1

    iput p1, v0, Lorg/telegram/ui/Components/Paint/Swatch;->color:I

    .line 2430
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->bottomLayout:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_0

    .line 2431
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$setNewColor$12(IILandroid/animation/ValueAnimator;)V
    .locals 1

    .line 985
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    .line 987
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    invoke-static {p1, p2, p3}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p1

    iput p1, v0, Lorg/telegram/ui/Components/Paint/Swatch;->color:I

    .line 988
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->bottomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$setupTabsLayout$14(Landroid/view/View;)V
    .locals 0

    .line 1305
    iget-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->editingText:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 1306
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 1308
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->switchTab(I)V

    return-void
.end method

.method private synthetic lambda$setupTabsLayout$15(Landroid/view/View;)V
    .locals 0

    .line 1317
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->openStickersView()V

    return-void
.end method

.method private synthetic lambda$setupTabsLayout$16(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x2

    .line 1337
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->switchTab(I)V

    .line 1338
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    instance-of p1, p1, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 1339
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->createText(Z)Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    :cond_0
    return-void
.end method

.method private synthetic lambda$showColorList$29(Landroid/view/View;Z[ZFLandroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 1

    const/high16 p5, 0x447a0000    # 1000.0f

    div-float/2addr p6, p5

    .line 2359
    iput p6, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->toolsTransformProgress:F

    const/high16 p5, 0x3f800000    # 1.0f

    sub-float p6, p5, p6

    const p7, 0x3ecccccd    # 0.4f

    mul-float/2addr p6, p7

    const p7, 0x3f19999a    # 0.6f

    add-float/2addr p6, p7

    .line 2362
    invoke-virtual {p1, p6}, Landroid/view/View;->setScaleX(F)V

    .line 2363
    invoke-virtual {p1, p6}, Landroid/view/View;->setScaleY(F)V

    const/high16 p6, 0x41800000    # 16.0f

    .line 2364
    invoke-static {p6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p6

    int-to-float p6, p6

    iget p7, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->toolsTransformProgress:F

    const/high16 v0, 0x3e800000    # 0.25f

    invoke-static {p7, v0}, Ljava/lang/Math;->min(FF)F

    move-result p7

    mul-float/2addr p6, p7

    div-float/2addr p6, v0

    invoke-virtual {p1, p6}, Landroid/view/View;->setTranslationY(F)V

    .line 2365
    iget p6, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->toolsTransformProgress:F

    invoke-static {p6, v0}, Ljava/lang/Math;->min(FF)F

    move-result p6

    div-float/2addr p6, v0

    sub-float p6, p5, p6

    invoke-virtual {p1, p6}, Landroid/view/View;->setAlpha(F)V

    .line 2367
    iget-object p6, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorsListView:Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;

    iget p7, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->toolsTransformProgress:F

    invoke-virtual {p6, p7, p2}, Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;->setProgress(FZ)V

    .line 2369
    iget-object p6, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->doneButton:Lorg/telegram/ui/Components/Paint/Views/PaintDoneView;

    iget p7, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->toolsTransformProgress:F

    invoke-virtual {p6, p7}, Lorg/telegram/ui/Components/Paint/Views/PaintDoneView;->setProgress(F)V

    .line 2370
    iget-object p6, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->cancelButton:Lorg/telegram/ui/Components/Paint/Views/PaintCancelView;

    iget p7, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->toolsTransformProgress:F

    invoke-virtual {p6, p7}, Lorg/telegram/ui/Components/Paint/Views/PaintCancelView;->setProgress(F)V

    .line 2372
    iget-object p6, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->tabsLayout:Landroid/widget/LinearLayout;

    const/high16 p7, 0x42000000    # 32.0f

    invoke-static {p7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p7

    int-to-float p7, p7

    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->toolsTransformProgress:F

    mul-float/2addr p7, v0

    invoke-virtual {p6, p7}, Landroid/view/View;->setTranslationY(F)V

    const/4 p6, 0x0

    .line 2376
    aget-boolean p3, p3, p6

    if-eqz p3, :cond_2

    .line 2377
    iget p3, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->toolsTransformProgress:F

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    sub-float p3, p5, p3

    .line 2378
    :goto_0
    iget-object p5, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->bottomLayout:Landroid/widget/FrameLayout;

    const/high16 p6, 0x42200000    # 40.0f

    invoke-static {p6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p6

    int-to-float p6, p6

    mul-float/2addr p6, p3

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_1

    :cond_1
    const/4 p2, -0x1

    :goto_1
    int-to-float p2, p2

    mul-float/2addr p6, p2

    sub-float/2addr p4, p6

    invoke-virtual {p5, p4}, Landroid/view/View;->setTranslationY(F)V

    .line 2380
    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->bottomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    .line 2382
    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    if-ne p1, p2, :cond_3

    .line 2383
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->overlayLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_3
    return-void
.end method

.method private synthetic lambda$showColorList$30(ZLandroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    .line 2387
    iget-object p3, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->toolsTransformAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-ne p2, p3, :cond_0

    const/4 p2, 0x0

    .line 2388
    iput-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->toolsTransformAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez p1, :cond_0

    .line 2391
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorsListView:Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 2392
    iget p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->saveColors()V

    .line 2393
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorsListView:Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$showEmojiPopup$46(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 3336
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 3337
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/EmojiView;->setTranslationY(F)V

    return-void
.end method

.method private synthetic lambda$showMenuForEntity$36(Lorg/telegram/ui/Components/Paint/Views/EntityView;Landroid/view/View;)V
    .locals 0

    .line 2726
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->removeEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    .line 2728
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2729
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$showMenuForEntity$37(Landroid/view/View;)V
    .locals 1

    .line 2745
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->editSelectedTextEntity()V

    .line 2747
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2748
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$showMenuForEntity$38(Lorg/telegram/ui/Components/Paint/Views/EntityView;Landroid/view/View;)V
    .locals 0

    .line 2765
    check-cast p1, Lorg/telegram/ui/Components/Paint/Views/StickerView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Paint/Views/StickerView;->mirror(Z)V

    .line 2767
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2768
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$showMenuForEntity$39(Landroid/view/View;)V
    .locals 1

    .line 2785
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->duplicateSelectedEntity()V

    .line 2787
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2788
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$showMenuForEntity$40(Lorg/telegram/ui/Components/Paint/Views/PhotoView;Landroid/view/View;)V
    .locals 1

    const/4 p2, 0x1

    .line 2806
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->toggleSegmented(Z)V

    .line 2807
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->isSegmented()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2808
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->onSwitchSegmentedAnimation(Lorg/telegram/ui/Components/Paint/Views/PhotoView;)V

    .line 2810
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2811
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss(Z)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$showMenuForEntity$41(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x2

    .line 2762
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 2713
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x0

    .line 2714
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2716
    new-instance v5, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2717
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    invoke-direct {v0, v6}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->getThemedColor(I)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2718
    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 v7, 0x10

    .line 2719
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v8, 0x41800000    # 16.0f

    .line 2720
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    const/high16 v10, 0x41600000    # 14.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    invoke-virtual {v5, v9, v4, v11, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    const/4 v9, 0x1

    .line 2721
    invoke-virtual {v5, v9, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2722
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v5, v11}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2723
    sget v11, Lorg/telegram/messenger/R$string;->PaintDelete:I

    invoke-static {v11}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2724
    sget-object v11, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 2725
    new-instance v12, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda25;

    invoke-direct {v12, v0, v1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda25;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    invoke-virtual {v5, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v12, -0x2

    const/16 v13, 0x30

    .line 2732
    invoke-static {v12, v13}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v3, v5, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2734
    instance-of v5, v1, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz v5, :cond_0

    .line 2735
    new-instance v5, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-direct {v5, v14}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2736
    invoke-direct {v0, v6}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->getThemedColor(I)I

    move-result v14

    invoke-virtual {v5, v14}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2737
    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v5, v14}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2738
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 2739
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    invoke-virtual {v5, v14, v4, v15, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2740
    invoke-virtual {v5, v9, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2741
    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 2742
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v5, v14}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2743
    sget v14, Lorg/telegram/messenger/R$string;->PaintEdit:I

    invoke-static {v14}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2744
    new-instance v14, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda26;

    invoke-direct {v14, v0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda26;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)V

    invoke-virtual {v5, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2751
    invoke-static {v12, v13}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v3, v5, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2754
    :cond_0
    instance-of v5, v1, Lorg/telegram/ui/Components/Paint/Views/StickerView;

    if-eqz v5, :cond_1

    .line 2755
    new-instance v5, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-direct {v5, v14}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2756
    invoke-direct {v0, v6}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->getThemedColor(I)I

    move-result v14

    invoke-virtual {v5, v14}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2757
    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v5, v14}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2758
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 2759
    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 2760
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    invoke-virtual {v5, v14, v4, v15, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2761
    invoke-virtual {v5, v9, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2762
    invoke-virtual {v5, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2763
    sget v14, Lorg/telegram/messenger/R$string;->Flip:I

    invoke-static {v14}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2764
    new-instance v14, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda27;

    invoke-direct {v14, v0, v1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda27;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    invoke-virtual {v5, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2771
    invoke-static {v12, v13}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v3, v5, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2774
    :cond_1
    instance-of v5, v1, Lorg/telegram/ui/Components/Paint/Views/PhotoView;

    if-nez v5, :cond_2

    .line 2775
    new-instance v14, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-direct {v14, v15}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2776
    invoke-direct {v0, v6}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->getThemedColor(I)I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2777
    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2778
    invoke-virtual {v14, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 2779
    invoke-virtual {v14, v11}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 2780
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    move/from16 v16, v8

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-virtual {v14, v15, v4, v8, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2781
    invoke-virtual {v14, v9, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2782
    invoke-virtual {v14, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2783
    sget v2, Lorg/telegram/messenger/R$string;->PaintDuplicate:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2784
    new-instance v2, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda28;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda28;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)V

    invoke-virtual {v14, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2791
    invoke-static {v12, v13}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v3, v14, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_2
    move/from16 v16, v8

    :goto_0
    if-eqz v5, :cond_4

    .line 2794
    check-cast v1, Lorg/telegram/ui/Components/Paint/Views/PhotoView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->hasSegmentedImage()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2796
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2797
    invoke-direct {v0, v6}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->getThemedColor(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2798
    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2799
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 2800
    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 2801
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v2, v5, v4, v6, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2802
    invoke-virtual {v2, v9, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v4, 0x5

    .line 2803
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2804
    invoke-virtual {v1}, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->isSegmented()Z

    move-result v4

    if-eqz v4, :cond_3

    sget v4, Lorg/telegram/messenger/R$string;->SegmentationUndoCutOut:I

    goto :goto_1

    :cond_3
    sget v4, Lorg/telegram/messenger/R$string;->SegmentationCutOut:I

    :goto_1
    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2805
    new-instance v4, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda29;

    invoke-direct {v4, v0, v1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda29;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Lorg/telegram/ui/Components/Paint/Views/PhotoView;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v4, 0x2c

    .line 2814
    invoke-static {v12, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2815
    invoke-virtual {v1}, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->highlightSegmented()V

    .line 2818
    :cond_4
    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;)V

    .line 2820
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 2821
    iput v12, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 2822
    iput v12, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 2823
    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private synthetic lambda$showPopup$42(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 2903
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    .line 2904
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2905
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 2906
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2907
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$showPopup$43(Landroid/view/KeyEvent;)V
    .locals 2

    .line 2914
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2915
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$showPopup$44()V
    .locals 1

    .line 2933
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->removeInnerViews()V

    return-void
.end method

.method private synthetic lambda$showTypefaceMenu$27(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    const/high16 p1, 0x447a0000    # 1000.0f

    div-float/2addr p2, p1

    .line 2318
    iput p2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->typefaceMenuTransformProgress:F

    .line 2319
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->typefaceListView:Lorg/telegram/ui/Components/Paint/Views/PaintTypefaceListView;

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 2320
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->typefaceListView:Lorg/telegram/ui/Components/Paint/Views/PaintTypefaceListView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 2321
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->overlayLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 2323
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->getTypefaceCell()Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView$TypefaceCell;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    iget p3, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->typefaceMenuTransformProgress:F

    sub-float/2addr p2, p3

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private synthetic lambda$showTypefaceMenu$28(ZLandroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    .line 2326
    iget-object p3, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->typefaceMenuTransformAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-ne p2, p3, :cond_1

    const/4 p2, 0x0

    .line 2327
    iput-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->typefaceMenuTransformAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez p1, :cond_0

    .line 2330
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->typefaceListView:Lorg/telegram/ui/Components/Paint/Views/PaintTypefaceListView;

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 2332
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->typefaceListView:Lorg/telegram/ui/Components/Paint/Views/PaintTypefaceListView;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Paint/Views/PaintTypefaceListView;->setMaskProvider(Landroidx/core/util/Consumer;)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$switchTab$17(Landroid/view/View;Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 8

    .line 1372
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    iput p3, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->tabsSelectionProgress:F

    .line 1373
    iget-object p3, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->tabsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p3}, Landroid/view/View;->invalidate()V

    .line 1374
    iget-object p3, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->bottomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p3}, Landroid/view/View;->invalidate()V

    .line 1375
    iget-object p3, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->overlayLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p3}, Landroid/view/View;->invalidate()V

    const/4 p3, 0x0

    .line 1377
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->tabsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const v1, 0x3ecccccd    # 0.4f

    const v2, 0x3f19999a    # 0.6f

    const/high16 v3, 0x3f800000    # 1.0f

    if-ge p3, v0, :cond_2

    .line 1378
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->tabsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget v4, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->tabsNewSelectedIndex:I

    if-ne p3, v4, :cond_0

    iget v3, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->tabsSelectionProgress:F

    goto :goto_1

    :cond_0
    iget v4, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->tabsSelectedIndex:I

    if-ne p3, v4, :cond_1

    iget v4, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->tabsSelectionProgress:F

    sub-float/2addr v3, v4

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    mul-float/2addr v3, v1

    add-float/2addr v3, v2

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 1380
    :cond_2
    sget-object p3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->tabsSelectionProgress:F

    invoke-virtual {p3, v0}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result p3

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    sub-float v0, v3, p3

    mul-float v4, v0, v1

    add-float/2addr v4, v2

    .line 1384
    invoke-virtual {p1, v4}, Landroid/view/View;->setScaleX(F)V

    .line 1385
    invoke-virtual {p1, v4}, Landroid/view/View;->setScaleY(F)V

    const/high16 v4, 0x41800000    # 16.0f

    .line 1386
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x3e800000    # 0.25f

    invoke-static {p3, v6}, Ljava/lang/Math;->min(FF)F

    move-result v7

    mul-float/2addr v5, v7

    div-float/2addr v5, v6

    invoke-virtual {p1, v5}, Landroid/view/View;->setTranslationY(F)V

    .line 1387
    invoke-static {p3, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    div-float/2addr v5, v6

    sub-float v5, v3, v5

    invoke-virtual {p1, v5}, Landroid/view/View;->setAlpha(F)V

    mul-float/2addr p3, v1

    add-float/2addr p3, v2

    .line 1390
    invoke-virtual {p2, p3}, Landroid/view/View;->setScaleX(F)V

    .line 1391
    invoke-virtual {p2, p3}, Landroid/view/View;->setScaleY(F)V

    .line 1392
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    neg-int p1, p1

    int-to-float p1, p1

    invoke-static {v0, v6}, Ljava/lang/Math;->min(FF)F

    move-result p3

    mul-float/2addr p1, p3

    div-float/2addr p1, v6

    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 1393
    invoke-static {v0, v6}, Ljava/lang/Math;->min(FF)F

    move-result p1

    div-float/2addr p1, v6

    sub-float/2addr v3, p1

    invoke-virtual {p2, v3}, Landroid/view/View;->setAlpha(F)V

    :cond_3
    return-void
.end method

.method private onWindowSizeChanged()V
    .locals 0

    .line 3457
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    return-void
.end method

.method private openStickersView()V
    .locals 11

    .line 1433
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->tabsSelectedIndex:I

    const/4 v1, 0x1

    .line 1434
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->switchTab(I)V

    .line 1435
    new-instance v2, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda36;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda36;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)V

    const-wide/16 v3, 0x15e

    invoke-virtual {p0, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1440
    new-instance v5, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$15;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v9, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v10, 0x0

    const/4 v8, 0x0

    move-object v6, p0

    invoke-direct/range {v5 .. v10}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$15;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)V

    .line 1446
    new-instance v2, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda37;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda37;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)V

    invoke-virtual {v5, v2}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->whenDocumentSelected(Lorg/telegram/messenger/Utilities$Callback3Return;)Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    .line 1453
    new-instance v2, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda38;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda38;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)V

    invoke-virtual {v5, v2}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->whenWidgetSelected(Lorg/telegram/messenger/Utilities$CallbackReturn;)Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    .line 1459
    new-instance v2, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda39;

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda39;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;I)V

    invoke-virtual {v5, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1463
    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    .line 1464
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->onOpenCloseStickersAlert(Z)V

    return-void
.end method

.method private registerRemovalUndo(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 3131
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->undoStore:Lorg/telegram/ui/Components/Paint/UndoStore;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getUUID()Ljava/util/UUID;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda40;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda40;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/Paint/UndoStore;->registerUndo(Ljava/util/UUID;Ljava/lang/Runnable;)V

    return-void
.end method

.method private removeEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V
    .locals 2

    .line 3105
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    if-ne p1, v0, :cond_1

    if-eqz v0, :cond_1

    .line 3106
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->deselect()V

    const/4 v0, 0x0

    .line 3107
    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    .line 3109
    instance-of v0, p1, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz v0, :cond_1

    .line 3110
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->tabsSelectionAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->tabsNewSelectedIndex:I

    if-eqz v1, :cond_0

    .line 3111
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x0

    .line 3113
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->switchTab(I)V

    .line 3116
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    if-eqz p1, :cond_2

    .line 3118
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->undoStore:Lorg/telegram/ui/Components/Paint/UndoStore;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Paint/UndoStore;->unregisterUndo(Ljava/util/UUID;)V

    .line 3121
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->weightDefaultValueOverride:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->setValueOverride(Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;)V

    .line 3122
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->setShowPreview(Z)V

    .line 3123
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->weightDefaultValueOverride:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;

    invoke-interface {v1}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;->get()F

    move-result v1

    iput v1, p1, Lorg/telegram/ui/Components/Paint/Swatch;->brushWeight:F

    .line 3124
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->setCurrentSwatch(Lorg/telegram/ui/Components/Paint/Swatch;Z)V

    return-void
.end method

.method private selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z
    .locals 1

    const/4 v0, 0x1

    .line 1086
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;Z)Z

    move-result p1

    return p1
.end method

.method private selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;Z)Z
    .locals 6

    .line 1093
    instance-of v0, p1, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    iget v3, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->tabsNewSelectedIndex:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    iget v5, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->tabsSelectedIndex:I

    if-ne v5, v1, :cond_1

    :cond_0
    if-eq v3, v4, :cond_4

    if-eq v3, v1, :cond_4

    .line 1094
    :cond_1
    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->tabsSelectionAnimator:Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_2

    if-eq v3, v1, :cond_2

    .line 1095
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1097
    :cond_2
    iget-boolean v3, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->isColorListShown:Z

    if-eqz v3, :cond_3

    .line 1098
    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->showColorList(Z)V

    .line 1100
    :cond_3
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->switchTab(I)V

    :cond_4
    const/4 v3, 0x1

    if-eqz v0, :cond_7

    if-eqz p2, :cond_7

    .line 1106
    move-object p2, p1

    check-cast p2, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getEditText()Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getGravity()I

    move-result v4

    const/16 v5, 0x11

    if-eq v4, v5, :cond_5

    const/16 v5, 0x15

    if-eq v4, v5, :cond_6

    move v1, v2

    goto :goto_0

    :cond_5
    move v1, v3

    .line 1118
    :cond_6
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    invoke-virtual {v4, v1}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->setAlignment(I)V

    .line 1119
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getTypeface()Lorg/telegram/ui/Components/Paint/PaintTypeface;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Components/Paint/PaintTypeface;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->setTypeface(Ljava/lang/String;)V

    .line 1120
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getType()I

    move-result p2

    invoke-virtual {v1, p2, v3}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->setOutlineType(IZ)V

    .line 1121
    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->overlayLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    .line 1124
    :cond_7
    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    if-eqz p2, :cond_c

    if-ne p2, p1, :cond_a

    .line 1126
    iget-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->editingText:Z

    if-nez p1, :cond_8

    .line 1127
    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->showMenuForEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    goto :goto_1

    .line 1128
    :cond_8
    instance-of p1, p2, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz p1, :cond_9

    .line 1129
    check-cast p2, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getFocusedView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    .line 1130
    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->hideEmojiPopup(Z)V

    :cond_9
    :goto_1
    return v3

    .line 1134
    :cond_a
    invoke-virtual {p2}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->deselect()V

    .line 1135
    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    instance-of v1, p2, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz v1, :cond_b

    .line 1136
    check-cast p2, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->endEditing()V

    if-nez v0, :cond_b

    .line 1138
    iput-boolean v2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->editingText:Z

    .line 1139
    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    check-cast p2, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getFocusedView()Landroid/view/View;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 1140
    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->hideEmojiPopup(Z)V

    :cond_b
    move p2, v3

    goto :goto_2

    :cond_c
    move p2, v2

    .line 1147
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    .line 1148
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    .line 1149
    instance-of p1, v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz p1, :cond_d

    .line 1150
    move-object p1, v0

    check-cast p1, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    .line 1151
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 1152
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->removeEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    .line 1156
    :cond_d
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    if-eqz p1, :cond_f

    .line 1157
    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->selectionContainerView:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->select(Landroid/view/ViewGroup;)V

    .line 1158
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    .line 1160
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    instance-of p2, p1, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz p2, :cond_e

    .line 1161
    check-cast p1, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    .line 1162
    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->disableAutoresize(Z)V

    .line 1163
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getSwatch()Lorg/telegram/ui/Components/Paint/Swatch;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    iget v0, v0, Lorg/telegram/ui/Components/Paint/Swatch;->brushWeight:F

    iput v0, p2, Lorg/telegram/ui/Components/Paint/Swatch;->brushWeight:F

    .line 1164
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getSwatch()Lorg/telegram/ui/Components/Paint/Swatch;

    move-result-object p2

    invoke-direct {p0, p2, v3}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->setCurrentSwatch(Lorg/telegram/ui/Components/Paint/Swatch;Z)V

    .line 1166
    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->paintingSize:Lorg/telegram/ui/Components/Size;

    iget p2, p2, Lorg/telegram/ui/Components/Size;->width:F

    const/high16 v0, 0x41100000    # 9.0f

    div-float/2addr p2, v0

    float-to-int p2, p2

    int-to-float p2, p2

    .line 1167
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    new-instance v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$12;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$12;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Lorg/telegram/ui/Components/Paint/Views/TextPaintView;F)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->setValueOverride(Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;)V

    .line 1179
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->setShowPreview(Z)V

    goto :goto_3

    .line 1181
    :cond_e
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->weightDefaultValueOverride:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->setValueOverride(Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;)V

    .line 1182
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->setShowPreview(Z)V

    .line 1183
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->weightDefaultValueOverride:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;

    invoke-interface {p2}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;->get()F

    move-result p2

    iput p2, p1, Lorg/telegram/ui/Components/Paint/Swatch;->brushWeight:F

    .line 1184
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    invoke-direct {p0, p1, v3}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->setCurrentSwatch(Lorg/telegram/ui/Components/Paint/Swatch;Z)V

    :goto_3
    return v3

    .line 1189
    :cond_f
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->tabsSelectionAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_10

    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->tabsNewSelectedIndex:I

    if-eqz v0, :cond_10

    .line 1190
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1192
    :cond_10
    iget-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->isColorListShown:Z

    if-eqz p1, :cond_11

    .line 1193
    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->showColorList(Z)V

    .line 1195
    :cond_11
    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->switchTab(I)V

    .line 1197
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->weightDefaultValueOverride:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->setValueOverride(Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;)V

    .line 1198
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->setShowPreview(Z)V

    .line 1199
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->weightDefaultValueOverride:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;

    invoke-interface {v0}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;->get()F

    move-result v0

    iput v0, p1, Lorg/telegram/ui/Components/Paint/Swatch;->brushWeight:F

    .line 1200
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    invoke-direct {p0, p1, v3}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->setCurrentSwatch(Lorg/telegram/ui/Components/Paint/Swatch;Z)V

    return p2
.end method

.method private setCurrentSwatch(Lorg/telegram/ui/Components/Paint/Swatch;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 2407
    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->setCurrentSwatch(Lorg/telegram/ui/Components/Paint/Swatch;ZLjava/lang/Integer;)V

    return-void
.end method

.method private setCurrentSwatch(Lorg/telegram/ui/Components/Paint/Swatch;ZLjava/lang/Integer;)V
    .locals 3

    .line 2411
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    if-eq v0, p1, :cond_0

    .line 2412
    iget v1, p1, Lorg/telegram/ui/Components/Paint/Swatch;->color:I

    iput v1, v0, Lorg/telegram/ui/Components/Paint/Swatch;->color:I

    .line 2413
    iget v1, p1, Lorg/telegram/ui/Components/Paint/Swatch;->colorLocation:F

    iput v1, v0, Lorg/telegram/ui/Components/Paint/Swatch;->colorLocation:F

    .line 2414
    iget v1, p1, Lorg/telegram/ui/Components/Paint/Swatch;->brushWeight:F

    iput v1, v0, Lorg/telegram/ui/Components/Paint/Swatch;->brushWeight:F

    .line 2416
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object v0

    iget v1, p1, Lorg/telegram/ui/Components/Paint/Swatch;->color:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->selectColor(I)V

    .line 2417
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object v0

    iget v1, p1, Lorg/telegram/ui/Components/Paint/Swatch;->brushWeight:F

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->setCurrentWeight(F)V

    .line 2420
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    iget v1, p1, Lorg/telegram/ui/Components/Paint/Swatch;->color:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/RenderView;->setColor(I)V

    .line 2421
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    iget v1, p1, Lorg/telegram/ui/Components/Paint/Swatch;->brushWeight:F

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/RenderView;->setBrushSize(F)V

    if-eqz p2, :cond_2

    .line 2424
    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    iget p2, p2, Lorg/telegram/ui/Components/Paint/Swatch;->color:I

    if-eqz p3, :cond_1

    .line 2425
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, p2, :cond_1

    const/4 v0, 0x2

    .line 2426
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 2427
    new-instance v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda23;

    invoke-direct {v1, p0, p3, p2}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Ljava/lang/Integer;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2434
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 2435
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->bottomLayout:Landroid/widget/FrameLayout;

    if-eqz p2, :cond_2

    .line 2436
    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    .line 2440
    :cond_2
    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    instance-of p3, p2, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz p3, :cond_3

    .line 2441
    check-cast p2, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    new-instance p3, Lorg/telegram/ui/Components/Paint/Swatch;

    iget v0, p1, Lorg/telegram/ui/Components/Paint/Swatch;->color:I

    iget v1, p1, Lorg/telegram/ui/Components/Paint/Swatch;->colorLocation:F

    iget p1, p1, Lorg/telegram/ui/Components/Paint/Swatch;->brushWeight:F

    invoke-direct {p3, v0, v1, p1}, Lorg/telegram/ui/Components/Paint/Swatch;-><init>(IFF)V

    invoke-virtual {p2, p3}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->setSwatch(Lorg/telegram/ui/Components/Paint/Swatch;)V

    :cond_3
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private setNewColor(I)V
    .locals 4

    .line 979
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    iget v1, v0, Lorg/telegram/ui/Components/Paint/Swatch;->color:I

    .line 980
    iput p1, v0, Lorg/telegram/ui/Components/Paint/Swatch;->color:I

    const/4 v2, 0x1

    .line 981
    invoke-direct {p0, v0, v2}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->setCurrentSwatch(Lorg/telegram/ui/Components/Paint/Swatch;Z)V

    const/4 v0, 0x2

    .line 983
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 984
    new-instance v2, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, v1, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;II)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 990
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private setTextAlignment(Lorg/telegram/ui/Components/Paint/Views/TextPaintView;I)V
    .locals 4

    .line 2655
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->setAlign(I)V

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p2, v1, :cond_1

    if-eq p2, v0, :cond_0

    const/16 v2, 0x13

    goto :goto_0

    :cond_0
    const/16 v2, 0x15

    goto :goto_0

    :cond_1
    const/16 v2, 0x11

    .line 2663
    :goto_0
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getEditText()Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->setGravity(I)V

    if-eq p2, v1, :cond_4

    const/4 v1, 0x3

    if-eq p2, v0, :cond_3

    .line 2665
    sget-boolean p2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p2, :cond_5

    :cond_2
    move v0, v1

    goto :goto_1

    .line 2668
    :cond_3
    sget-boolean p2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_4
    const/4 v0, 0x4

    .line 2670
    :cond_5
    :goto_1
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getEditText()Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setTextAlignment(I)V

    return-void
.end method

.method private setTextType(I)V
    .locals 2

    .line 2616
    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->selectedTextType:I

    .line 2617
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    instance-of v1, v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz v1, :cond_0

    .line 2623
    check-cast v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->setType(I)V

    .line 2625
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->setCurrentTextType(I)V

    .line 2626
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->setOutlineType(I)V

    return-void
.end method

.method private setupTabsLayout(Landroid/content/Context;)V
    .locals 13

    .line 1264
    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$13;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$13;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->tabsLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    .line 1291
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 1292
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->tabsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1293
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->bottomLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->tabsLayout:Landroid/widget/LinearLayout;

    const/high16 v8, 0x42500000    # 52.0f

    const/4 v9, 0x0

    const/4 v3, -0x1

    const/high16 v4, 0x42200000    # 40.0f

    const/16 v5, 0x50

    const/high16 v6, 0x42500000    # 52.0f

    const/4 v7, 0x0

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1295
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->drawTab:Landroid/widget/TextView;

    .line 1296
    sget v2, Lorg/telegram/messenger/R$string;->PhotoEditorDraw:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1297
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->drawTab:Landroid/widget/TextView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->getThemedColor(I)I

    move-result v3

    const/4 v4, 0x7

    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1298
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->drawTab:Landroid/widget/TextView;

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v0, v1, v5, v1, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1299
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->drawTab:Landroid/widget/TextView;

    const/4 v5, -0x1

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1300
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->drawTab:Landroid/widget/TextView;

    const/4 v6, 0x1

    const/high16 v7, 0x41600000    # 14.0f

    invoke-virtual {v0, v6, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1301
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->drawTab:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 1302
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->drawTab:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1303
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->drawTab:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 1304
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->drawTab:Landroid/widget/TextView;

    new-instance v8, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda0;

    invoke-direct {v8, p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)V

    invoke-virtual {v0, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1311
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->tabsLayout:Landroid/widget/LinearLayout;

    iget-object v8, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->drawTab:Landroid/widget/TextView;

    const/4 v9, -0x2

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static {v1, v9, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v0, v8, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1313
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->stickerTab:Landroid/widget/TextView;

    .line 1314
    sget v8, Lorg/telegram/messenger/R$string;->PhotoEditorSticker:I

    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1315
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->stickerTab:Landroid/widget/TextView;

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->getThemedColor(I)I

    move-result v8

    invoke-static {v8, v4}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1316
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->stickerTab:Landroid/widget/TextView;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    invoke-virtual {v0, v1, v8, v1, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1317
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->stickerTab:Landroid/widget/TextView;

    new-instance v8, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda1;

    invoke-direct {v8, p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)V

    invoke-virtual {v0, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1318
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->stickerTab:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1319
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->stickerTab:Landroid/widget/TextView;

    invoke-virtual {v0, v6, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1320
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->stickerTab:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 1321
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->stickerTab:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1322
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->stickerTab:Landroid/widget/TextView;

    const v8, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v8}, Landroid/view/View;->setAlpha(F)V

    .line 1323
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->stickerTab:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 1324
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->tabsLayout:Landroid/widget/LinearLayout;

    iget-object v11, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->stickerTab:Landroid/widget/TextView;

    invoke-static {v1, v9, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v0, v11, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1326
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->textTab:Landroid/widget/TextView;

    .line 1327
    sget p1, Lorg/telegram/messenger/R$string;->PhotoEditorText:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1328
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->textTab:Landroid/widget/TextView;

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->getThemedColor(I)I

    move-result v0

    invoke-static {v0, v4}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1329
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->textTab:Landroid/widget/TextView;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {p1, v1, v0, v1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1330
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->textTab:Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1331
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->textTab:Landroid/widget/TextView;

    invoke-virtual {p1, v6, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1332
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->textTab:Landroid/widget/TextView;

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 1333
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->textTab:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1334
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->textTab:Landroid/widget/TextView;

    invoke-virtual {p1, v8}, Landroid/view/View;->setAlpha(F)V

    .line 1335
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->textTab:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->setSingleLine()V

    .line 1336
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->textTab:Landroid/widget/TextView;

    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1342
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->tabsLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->textTab:Landroid/widget/TextView;

    invoke-static {v1, v9, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private showColorList(Z)V
    .locals 9

    .line 2341
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->isColorListShown:Z

    if-eq v0, p1, :cond_5

    .line 2342
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->isColorListShown:Z

    .line 2344
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->toolsTransformAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_0

    .line 2345
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    .line 2348
    :cond_0
    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v1, Landroidx/dynamicanimation/animation/FloatValueHolder;

    const/high16 v2, 0x447a0000    # 1000.0f

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    move v4, v2

    :goto_0
    invoke-direct {v1, v4}, Landroidx/dynamicanimation/animation/FloatValueHolder;-><init>(F)V

    invoke-direct {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->toolsTransformAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 2349
    new-instance v1, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v1}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    .line 2350
    :goto_1
    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    const v2, 0x449c4000    # 1250.0f

    .line 2351
    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 2352
    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    .line 2349
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 2354
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->keyboardVisible:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiViewVisible:Z

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_3

    :cond_4
    :goto_2
    move v0, v1

    :goto_3
    new-array v7, v1, [Z

    aput-boolean v0, v7, v2

    .line 2355
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->bottomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v8

    .line 2357
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->getBarView()Landroid/view/ViewGroup;

    move-result-object v5

    .line 2358
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->toolsTransformAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v3, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda3;

    move-object v4, p0

    move v6, p1

    invoke-direct/range {v3 .. v8}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Landroid/view/View;Z[ZF)V

    invoke-virtual {v0, v3}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 2386
    iget-object p1, v4, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->toolsTransformAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, v6}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Z)V

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 2397
    iget-object p1, v4, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->toolsTransformAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    if-eqz v6, :cond_6

    .line 2400
    iget-object p1, v4, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorsListView:Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 2401
    iget-object p1, v4, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorsListView:Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;

    iget v0, v4, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getCurrentColorPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;->setSelectedColorIndex(I)V

    return-void

    :cond_5
    move-object v4, p0

    :cond_6
    return-void
.end method

.method private showEmojiPopup(I)V
    .locals 8

    const/4 v0, 0x0

    .line 3282
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->bottomPanelIgnoreOnce:Z

    const/4 v1, 0x1

    if-ne p1, v1, :cond_a

    .line 3284
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    .line 3285
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->createEmojiView()V

    .line 3287
    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/EmojiView;->setVisibility(I)V

    .line 3288
    iget-boolean v2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiViewVisible:Z

    iput-boolean v2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiViewWasVisible:Z

    .line 3289
    iput-boolean v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiViewVisible:Z

    .line 3290
    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    .line 3292
    iget v3, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->keyboardHeight:I

    const/high16 v4, 0x43480000    # 200.0f

    const/high16 v5, 0x43160000    # 150.0f

    if-gtz v3, :cond_2

    .line 3293
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3294
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iput v3, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->keyboardHeight:I

    goto :goto_1

    .line 3296
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalEmojiSettings()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v6, "kbd_height"

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->keyboardHeight:I

    .line 3299
    :cond_2
    :goto_1
    iget v3, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->keyboardHeightLand:I

    if-gtz v3, :cond_4

    .line 3300
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3301
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iput v3, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->keyboardHeightLand:I

    goto :goto_2

    .line 3303
    :cond_3
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalEmojiSettings()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v5, "kbd_height_land3"

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->keyboardHeightLand:I

    .line 3306
    :cond_4
    :goto_2
    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v4, v3, Landroid/graphics/Point;->x:I

    iget v3, v3, Landroid/graphics/Point;->y:I

    if-le v4, v3, :cond_5

    iget v3, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->keyboardHeightLand:I

    goto :goto_3

    :cond_5
    iget v3, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->keyboardHeight:I

    .line 3308
    :goto_3
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 3309
    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 3310
    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3311
    sget-boolean v2, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-nez v2, :cond_6

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    instance-of v4, v2, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz v4, :cond_6

    .line 3312
    check-cast v2, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getEditText()Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    move-result-object v2

    .line 3313
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 3316
    :cond_6
    iput v3, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiWasPadding:I

    iput v3, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiPadding:I

    .line 3317
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->requestLayout()V

    .line 3318
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->updateKeyboard()V

    .line 3320
    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->getEmojiButton()Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 3322
    sget-object v3, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;->KEYBOARD:Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;

    invoke-virtual {v2, v3, v1}, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView;->setState(Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;Z)V

    .line 3324
    :cond_7
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->onWindowSizeChanged()V

    if-nez p1, :cond_9

    .line 3327
    iget-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->keyboardVisible:Z

    if-eqz p1, :cond_8

    goto :goto_4

    .line 3333
    :cond_8
    iget p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiPadding:I

    int-to-float p1, p1

    const/4 v2, 0x2

    new-array v2, v2, [F

    aput p1, v2, v0

    const/4 p1, 0x0

    aput p1, v2, v1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 3335
    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3342
    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$20;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$20;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3354
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_9
    :goto_4
    return-void

    .line 3359
    :cond_a
    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->getEmojiButton()Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 3361
    sget-object v3, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;->SMILE:Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;

    invoke-virtual {v2, v3, v1}, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView;->setState(Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;Z)V

    .line 3363
    :cond_b
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz v1, :cond_d

    .line 3364
    iget-boolean v2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiViewVisible:Z

    iput-boolean v2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiViewWasVisible:Z

    .line 3365
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiViewVisible:Z

    .line 3366
    sget-boolean v2, Lorg/telegram/messenger/AndroidUtilities;->usingHardwareInput:Z

    if-nez v2, :cond_c

    sget-boolean v2, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-eqz v2, :cond_d

    :cond_c
    const/16 v2, 0x8

    .line 3367
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/EmojiView;->setVisibility(I)V

    :cond_d
    if-nez p1, :cond_e

    .line 3371
    iput v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiPadding:I

    .line 3373
    :cond_e
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->updateKeyboard()V

    .line 3378
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->requestLayout()V

    .line 3379
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->onWindowSizeChanged()V

    return-void
.end method

.method private showMenuForEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V
    .locals 8

    .line 2708
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->getCenterLocationInWindow(Landroid/view/View;)[I

    move-result-object v0

    const/4 v1, 0x0

    .line 2709
    aget v6, v0, v1

    const/4 v1, 0x1

    .line 2710
    aget v0, v0, v1

    const/high16 v1, 0x42000000    # 32.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int v7, v0, v1

    .line 2712
    new-instance v3, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda6;

    invoke-direct {v3, p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    const/16 v5, 0x33

    move-object v4, p0

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->showPopup(Ljava/lang/Runnable;Landroid/view/View;III)V

    return-void
.end method

.method private showPhotoAlert()V
    .locals 7

    .line 1468
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$16;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$16;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Landroid/os/Bundle;)V

    const/4 v5, 0x0

    iget-object v6, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/ChatAttachAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 v1, 0x1

    .line 1500
    iput-boolean v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->drawNavigationBar:Z

    .line 1501
    sget v2, Lorg/telegram/messenger/R$string;->AddImage:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->setupPhotoPicker(Ljava/lang/String;)V

    .line 1502
    new-instance v2, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$17;

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$17;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->setDelegate(Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;)V

    .line 1530
    new-instance v2, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda42;

    invoke-direct {v2}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda42;-><init>()V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    const/4 v2, 0x0

    .line 1533
    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->setMaxSelectedPhotos(IZ)V

    .line 1534
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->init()V

    .line 1535
    sput-boolean v1, Lorg/telegram/messenger/MediaController;->forceBroadcastNewPhotos:Z

    .line 1536
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getPhotoLayout()Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->loadGalleryPhotos()V

    .line 1537
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->show()V

    return-void
.end method

.method private showPopup(Ljava/lang/Runnable;Landroid/view/View;III)V
    .locals 5

    .line 2892
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2893
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    return-void

    .line 2897
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 2898
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupRect:Landroid/graphics/Rect;

    .line 2899
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    .line 2900
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setAnimationEnabled(Z)V

    .line 2901
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const v2, -0xd7d7d7

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setBackgroundColor(I)V

    .line 2902
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    new-instance v2, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda30;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda30;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2913
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    new-instance v2, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda31;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda31;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setDispatchKeyEventListener(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$OnDispatchKeyEventListener;)V

    .line 2918
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setShownFromBottom(Z)V

    .line 2921
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->removeInnerViews()V

    .line 2922
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 2924
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/4 v0, 0x2

    if-nez p1, :cond_2

    .line 2925
    new-instance p1, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/4 v3, -0x2

    invoke-direct {p1, v2, v3, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;-><init>(Landroid/view/View;II)V

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    .line 2926
    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setAnimationEnabled(Z)V

    .line 2927
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    sget v2, Lorg/telegram/messenger/R$style;->PopupAnimation:I

    invoke-virtual {p1, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 2928
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 2929
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1, v1}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 2930
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 2931
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    .line 2932
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 2933
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    new-instance v2, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda32;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda32;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)V

    invoke-virtual {p1, v2}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 2936
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/high16 v2, 0x447a0000    # 1000.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/high16 v4, -0x80000000

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p1, v3, v2}, Landroid/view/View;->measure(II)V

    .line 2938
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    and-int/lit8 p1, p3, 0x30

    if-eqz p1, :cond_3

    .line 2941
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    div-int/2addr p1, v0

    sub-int/2addr p4, p1

    .line 2942
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    sub-int/2addr p5, p1

    .line 2944
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1, p2, p3, p4, p5}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 2945
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->startAnimation(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;)Landroid/animation/AnimatorSet;

    return-void
.end method

.method private showTypefaceMenu(Z)V
    .locals 5

    .line 2299
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->isTypefaceMenuShown:Z

    if-eq v0, p1, :cond_4

    .line 2300
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->isTypefaceMenuShown:Z

    .line 2302
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->typefaceMenuTransformAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_0

    .line 2303
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    .line 2306
    :cond_0
    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v1, Landroidx/dynamicanimation/animation/FloatValueHolder;

    const/high16 v2, 0x447a0000    # 1000.0f

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    move v4, v2

    :goto_0
    invoke-direct {v1, v4}, Landroidx/dynamicanimation/animation/FloatValueHolder;-><init>(F)V

    invoke-direct {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->typefaceMenuTransformAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 2307
    new-instance v1, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v1}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    .line 2308
    :goto_1
    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    const v2, 0x449c4000    # 1250.0f

    .line 2309
    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 2310
    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    .line 2307
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz p1, :cond_3

    .line 2313
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->typefaceListView:Lorg/telegram/ui/Components/Paint/Views/PaintTypefaceListView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 2314
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->typefaceListView:Lorg/telegram/ui/Components/Paint/Views/PaintTypefaceListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 2317
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->typefaceMenuTransformAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda33;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda33;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)V

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 2325
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->typefaceMenuTransformAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda34;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda34;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Z)V

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 2335
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->typefaceMenuTransformAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    :cond_4
    return-void
.end method

.method private startPositionRelativeToEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Lorg/telegram/ui/Components/Point;
    .locals 11

    .line 2854
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentCropState:Lorg/telegram/messenger/MediaController$CropState;

    const/high16 v1, 0x43480000    # 200.0f

    if-eqz v0, :cond_0

    .line 2855
    iget v2, v0, Lorg/telegram/messenger/MediaController$CropState;->cropScale:F

    div-float/2addr v1, v2

    :cond_0
    if-eqz p1, :cond_1

    .line 2859
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getPosition()Lorg/telegram/ui/Components/Point;

    move-result-object p1

    .line 2860
    new-instance v0, Lorg/telegram/ui/Components/Point;

    iget v2, p1, Lorg/telegram/ui/Components/Point;->x:F

    add-float/2addr v2, v1

    iget p1, p1, Lorg/telegram/ui/Components/Point;->y:F

    add-float/2addr p1, v1

    invoke-direct {v0, v2, p1}, Lorg/telegram/ui/Components/Point;-><init>(FF)V

    return-object v0

    :cond_1
    const/high16 p1, 0x42c80000    # 100.0f

    if-eqz v0, :cond_2

    .line 2864
    iget v0, v0, Lorg/telegram/messenger/MediaController$CropState;->cropScale:F

    div-float/2addr p1, v0

    .line 2866
    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->centerPositionForEntity()Lorg/telegram/ui/Components/Point;

    move-result-object v0

    :goto_0
    const/4 v2, 0x0

    move v3, v2

    .line 2869
    :goto_1
    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_5

    .line 2870
    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2871
    instance-of v5, v4, Lorg/telegram/ui/Components/Paint/Views/EntityView;

    if-nez v5, :cond_3

    goto :goto_2

    .line 2874
    :cond_3
    check-cast v4, Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getPosition()Lorg/telegram/ui/Components/Point;

    move-result-object v4

    .line 2875
    iget v5, v4, Lorg/telegram/ui/Components/Point;->x:F

    iget v6, v0, Lorg/telegram/ui/Components/Point;->x:F

    sub-float/2addr v5, v6

    float-to-double v5, v5

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    iget v4, v4, Lorg/telegram/ui/Components/Point;->y:F

    iget v9, v0, Lorg/telegram/ui/Components/Point;->y:F

    sub-float/2addr v4, v9

    float-to-double v9, v4

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    add-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    cmpg-float v4, v4, p1

    if-gez v4, :cond_4

    const/4 v3, 0x1

    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    if-nez v3, :cond_6

    return-object v0

    .line 2884
    :cond_6
    new-instance v2, Lorg/telegram/ui/Components/Point;

    iget v3, v0, Lorg/telegram/ui/Components/Point;->x:F

    add-float/2addr v3, v1

    iget v0, v0, Lorg/telegram/ui/Components/Point;->y:F

    add-float/2addr v0, v1

    invoke-direct {v2, v3, v0}, Lorg/telegram/ui/Components/Point;-><init>(FF)V

    move-object v0, v2

    goto :goto_0
.end method

.method private switchTab(I)V
    .locals 6

    .line 1354
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->tabsSelectedIndex:I

    if-eq v0, p1, :cond_3

    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->tabsNewSelectedIndex:I

    if-ne v0, p1, :cond_0

    goto :goto_1

    .line 1357
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->tabsSelectionAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 1358
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1361
    :cond_1
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->tabsSelectedIndex:I

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->getBarView(I)Landroid/view/View;

    move-result-object v0

    .line 1362
    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->tabsNewSelectedIndex:I

    .line 1363
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->getBarView(I)Landroid/view/View;

    move-result-object v1

    .line 1365
    iget v2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne p1, v3, :cond_2

    move v5, v4

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->setInTextMode(Z)V

    .line 1366
    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    iget v5, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getCurrentColor()I

    move-result v5

    iput v5, v2, Lorg/telegram/ui/Components/Paint/Swatch;->color:I

    .line 1367
    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    invoke-direct {p0, v2, v4}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->setCurrentSwatch(Lorg/telegram/ui/Components/Paint/Swatch;Z)V

    .line 1369
    new-array v2, v3, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    const-wide/16 v3, 0x12c

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->tabsSelectionAnimator:Landroid/animation/ValueAnimator;

    .line 1370
    sget-object v3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1371
    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->tabsSelectionAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda21;

    invoke-direct {v3, p0, v0, v1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1396
    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->tabsSelectionAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$14;

    invoke-direct {v3, p0, v0, v1, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$14;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Landroid/view/View;Landroid/view/View;I)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1429
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->tabsSelectionAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_3
    :goto_1
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public adjustPanLayoutHelperProgress()F
    .locals 1

    .line 3695
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->panTranslationProgress:F

    return v0
.end method

.method public allowInteraction(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z
    .locals 0

    .line 3211
    iget-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->editingText:Z

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public appearAnimation(Landroid/view/View;)V
    .locals 4

    .line 1541
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v3, v0, v2

    .line 1542
    invoke-virtual {p1, v3}, Landroid/view/View;->setScaleX(F)V

    mul-float/2addr v2, v1

    .line 1543
    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleY(F)V

    const/4 v2, 0x0

    .line 1544
    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1545
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    const/high16 v2, 0x40400000    # 3.0f

    invoke-direct {v1, v2}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xf0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda49;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda49;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 1550
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method protected createEmojiView()V
    .locals 13

    .line 3545
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz v0, :cond_0

    iget v1, v0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    if-eq v1, v2, :cond_0

    .line 3546
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 3547
    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    .line 3549
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz v0, :cond_1

    return-void

    .line 3552
    :cond_1
    new-instance v1, Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v11, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v12, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-direct/range {v1 .. v12}, Lorg/telegram/ui/Components/EmojiView;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZLandroid/content/Context;ZLorg/telegram/tgnet/TLRPC$ChatFull;Landroid/view/ViewGroup;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)V

    iput-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    const/4 v0, 0x1

    .line 3553
    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/EmojiView;->allowEmojisForNonPremium(Z)V

    .line 3554
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/EmojiView;->setVisibility(I)V

    .line 3555
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3556
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/EmojiView;->setForseMultiwindowLayout(Z)V

    .line 3558
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    new-instance v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$22;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$22;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmojiView;->setDelegate(Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;)V

    .line 3690
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public createPhoto(Ljava/lang/String;Z)Lorg/telegram/ui/Components/Paint/Views/PhotoView;
    .locals 9

    .line 1554
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->basePhotoSize(Ljava/lang/String;)Lorg/telegram/ui/Components/Size;

    move-result-object v5

    .line 1555
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->getImageOrientation(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    .line 1556
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    div-int/lit8 v1, v1, 0x5a

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1557
    iget v1, v5, Lorg/telegram/ui/Components/Size;->width:F

    .line 1558
    iget v2, v5, Lorg/telegram/ui/Components/Size;->height:F

    iput v2, v5, Lorg/telegram/ui/Components/Size;->width:F

    .line 1559
    iput v1, v5, Lorg/telegram/ui/Components/Size;->height:F

    :cond_0
    move-object v1, v0

    .line 1561
    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;

    move-object v2, v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v3, v2

    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->centerPositionForEntity()Lorg/telegram/ui/Components/Point;

    move-result-object v2

    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    move-object v6, p1

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/Components/Paint/Views/PhotoView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/Point;FFLorg/telegram/ui/Components/Size;Ljava/lang/String;II)V

    .line 1565
    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->setDelegate(Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;)V

    .line 1566
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    if-eqz p2, :cond_1

    .line 1568
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->registerRemovalUndo(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    .line 1569
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    :cond_1
    return-object v0
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    .line 3718
    sget p2, Lorg/telegram/messenger/NotificationCenter;->customTypefacesLoaded:I

    if-ne p1, p2, :cond_2

    .line 3719
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    .line 3722
    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-ge p1, p2, :cond_2

    .line 3723
    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 3724
    instance-of p3, p2, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz p3, :cond_1

    .line 3725
    check-cast p2, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->updateTypeface()V

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method protected abstract didSetAnimatedSticker(Lorg/telegram/ui/Components/RLottieDrawable;)V
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 3206
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 11

    .line 1215
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    const/high16 v7, 0x40000000    # 2.0f

    const/4 v8, 0x0

    const/4 v9, 0x0

    if-ne p2, v0, :cond_0

    .line 1216
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->shadowAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->drawShadow:Z

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v0

    cmpl-float v1, v0, v8

    if-lez v1, :cond_0

    .line 1218
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->shadowPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x41c00000    # 24.0f

    mul-float/2addr v2, v0

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    const v3, 0x40ffffff    # 7.9999995f

    invoke-static {v3, v0}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v0

    invoke-virtual {v1, v2, v8, v8, v0}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 1219
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->shadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 1220
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v4, v0

    const/16 v5, 0xff

    const/16 v6, 0x1f

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 1221
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1222
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v1}, Landroid/view/View;->getScaleX()F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v2}, Landroid/view/View;->getScaleY()F

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v7

    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v7

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 1223
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v3, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v4, v1

    iget-object v5, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->shadowPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1224
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v3, v0

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->clearPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1225
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1228
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    if-eq p2, v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderInputView:Landroid/view/View;

    if-eq p2, v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    if-ne p2, v1, :cond_1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getClipChildren()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->selectionContainerView:Landroid/widget/FrameLayout;

    if-ne p2, v1, :cond_6

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getClipChildren()Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentCropState:Lorg/telegram/messenger/MediaController$CropState;

    if-eqz v1, :cond_6

    .line 1229
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1231
    iget-boolean v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->inBubbleMode:Z

    if-nez v1, :cond_3

    sget v9, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    .line 1232
    :cond_3
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v1

    add-int/2addr v1, v9

    .line 1235
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 1236
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 1237
    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentCropState:Lorg/telegram/messenger/MediaController$CropState;

    iget v5, v4, Lorg/telegram/messenger/MediaController$CropState;->transformRotation:I

    const/16 v6, 0x5a

    if-eq v5, v6, :cond_4

    const/16 v6, 0x10e

    if-ne v5, v6, :cond_5

    :cond_4
    move v10, v3

    move v3, v2

    move v2, v10

    :cond_5
    int-to-float v2, v2

    .line 1244
    iget v4, v4, Lorg/telegram/messenger/MediaController$CropState;->cropPw:F

    mul-float/2addr v2, v4

    invoke-virtual {p2}, Landroid/view/View;->getScaleX()F

    move-result v4

    mul-float/2addr v2, v4

    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentCropState:Lorg/telegram/messenger/MediaController$CropState;

    iget v5, v4, Lorg/telegram/messenger/MediaController$CropState;->cropScale:F

    div-float/2addr v2, v5

    float-to-int v2, v2

    int-to-float v3, v3

    .line 1245
    iget v4, v4, Lorg/telegram/messenger/MediaController$CropState;->cropPh:F

    mul-float/2addr v3, v4

    invoke-virtual {p2}, Landroid/view/View;->getScaleY()F

    move-result v4

    mul-float/2addr v3, v4

    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentCropState:Lorg/telegram/messenger/MediaController$CropState;

    iget v4, v4, Lorg/telegram/messenger/MediaController$CropState;->cropScale:F

    div-float/2addr v3, v4

    float-to-int v3, v3

    .line 1246
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v4, v2

    int-to-float v4, v4

    div-float/2addr v4, v7

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-float v4, v4

    iget v5, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->transformX:F

    add-float/2addr v4, v5

    .line 1247
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    iget v6, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiPadding:I

    sub-int/2addr v5, v6

    sub-int/2addr v5, v1

    const/high16 v1, 0x42400000    # 48.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v5, v1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->getAdditionalBottom()I

    move-result v1

    add-int/2addr v5, v1

    sub-int/2addr v5, v3

    int-to-float v1, v5

    div-float/2addr v1, v7

    const/high16 v5, 0x41000000    # 8.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v1, v5

    int-to-float v5, v9

    add-float/2addr v1, v5

    iget v5, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->transformY:F

    add-float/2addr v1, v5

    .line 1249
    invoke-static {v8, v4}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-static {v8, v1}, Ljava/lang/Math;->max(FF)F

    move-result v6

    int-to-float v2, v2

    add-float/2addr v4, v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v4, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    int-to-float v3, v3

    add-float/2addr v1, v3

    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-virtual {p1, v5, v6, v2, v1}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    const/4 v9, 0x1

    .line 1252
    :cond_6
    invoke-super/range {p0 .. p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v1

    if-eqz v9, :cond_7

    .line 1254
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_7
    return v1
.end method

.method public getAdditionalBottom()I
    .locals 1

    const/high16 v0, 0x41c00000    # 24.0f

    .line 2127
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0
.end method

.method public getAdditionalTop()I
    .locals 1

    const/high16 v0, 0x42400000    # 48.0f

    .line 2122
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0
.end method

.method public getBitmap(Ljava/util/ArrayList;[Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 26

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 1878
    iget-object v0, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3}, Lorg/telegram/ui/Components/Paint/RenderView;->getResultBitmap(ZZ)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1879
    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    iput-object v0, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lcm:Ljava/math/BigInteger;

    if-eqz v4, :cond_1a

    .line 1880
    iget-object v0, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->entitiesCount()I

    move-result v0

    if-lez v0, :cond_1a

    .line 1883
    iget-object v0, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    move v7, v3

    const/4 v0, 0x0

    :goto_0
    if-ge v7, v5, :cond_1a

    .line 1886
    iget-object v8, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v8, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1887
    instance-of v9, v8, Lorg/telegram/ui/Components/Paint/Views/EntityView;

    if-nez v9, :cond_0

    move-object/from16 v22, v0

    goto/16 :goto_6

    .line 1890
    :cond_0
    move-object v9, v8

    check-cast v9, Lorg/telegram/ui/Components/Paint/Views/EntityView;

    .line 1891
    invoke-virtual {v9}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getPosition()Lorg/telegram/ui/Components/Point;

    move-result-object v10

    if-eqz v2, :cond_14

    .line 1893
    new-instance v13, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;

    invoke-direct {v13}, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;-><init>()V

    .line 1894
    instance-of v14, v9, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    const/16 v16, 0x4

    const/high16 v17, 0x40000000    # 2.0f

    const/4 v12, 0x1

    if-eqz v14, :cond_9

    .line 1895
    iput-byte v12, v13, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->type:B

    .line 1896
    move-object v14, v9

    check-cast v14, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    const-wide/16 v18, 0x1388

    .line 1897
    invoke-virtual {v14}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getText()Ljava/lang/CharSequence;

    move-result-object v15

    .line 1898
    instance-of v6, v15, Landroid/text/Spanned;

    if-eqz v6, :cond_8

    .line 1899
    move-object v6, v15

    check-cast v6, Landroid/text/Spanned;

    const/16 v20, 0x2

    .line 1900
    invoke-interface {v15}, Ljava/lang/CharSequence;->length()I

    move-result v11

    const-class v12, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-interface {v6, v3, v11, v12}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    if-eqz v11, :cond_7

    move v12, v3

    .line 1902
    :goto_1
    array-length v3, v11

    if-ge v12, v3, :cond_7

    .line 1903
    aget-object v3, v11, v12

    move-object/from16 v22, v0

    .line 1904
    iget-object v0, v3, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-nez v0, :cond_1

    .line 1906
    iget v0, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentAccount:I

    move-object/from16 v23, v11

    move/from16 v24, v12

    invoke-virtual {v3}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->getDocumentId()J

    move-result-wide v11

    invoke-static {v0, v11, v12}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->findDocument(IJ)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    goto :goto_2

    :cond_1
    move-object/from16 v23, v11

    move/from16 v24, v12

    :goto_2
    if-eqz v0, :cond_2

    .line 1909
    iget v11, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentAccount:I

    invoke-static {v11}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getDocumentFetcher(I)Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;

    move-result-object v11

    invoke-virtual {v11, v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;->putDocument(Lorg/telegram/tgnet/TLRPC$Document;)V

    .line 1912
    :cond_2
    new-instance v11, Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;

    invoke-direct {v11}, Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;-><init>()V

    move-object v12, v14

    move-object/from16 v25, v15

    .line 1913
    invoke-virtual {v3}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->getDocumentId()J

    move-result-wide v14

    iput-wide v14, v11, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;->document_id:J

    .line 1914
    iput-object v0, v11, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 1915
    invoke-interface {v6, v3}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v14

    iput v14, v11, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    .line 1916
    invoke-interface {v6, v3}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    iget v14, v11, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    sub-int/2addr v3, v14

    iput v3, v11, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    .line 1917
    iget v3, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    const/4 v14, 0x1

    invoke-virtual {v3, v0, v14}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v11, Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;->documentAbsolutePath:Ljava/lang/String;

    .line 1918
    iget-object v3, v11, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v3, v14}, Lorg/telegram/messenger/MessageObject;->isAnimatedStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;Z)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1919
    iget-object v14, v11, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v14}, Lorg/telegram/messenger/MessageObject;->isVideoStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 1920
    :cond_3
    iget-byte v14, v11, Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;->subType:B

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    goto :goto_3

    :cond_4
    move/from16 v3, v16

    :goto_3
    or-int/2addr v3, v14

    int-to-byte v3, v3

    iput-byte v3, v11, Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;->subType:B

    .line 1922
    :cond_5
    iget-object v3, v13, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->entities:Ljava/util/ArrayList;

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_6

    .line 1927
    invoke-static/range {v18 .. v19}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    .line 1928
    iget-object v3, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lcm:Ljava/math/BigInteger;

    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    iget-object v11, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lcm:Ljava/math/BigInteger;

    invoke-virtual {v11, v0}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lcm:Ljava/math/BigInteger;

    :cond_6
    add-int/lit8 v0, v24, 0x1

    move-object v14, v12

    move-object/from16 v11, v23

    move-object/from16 v15, v25

    move v12, v0

    move-object/from16 v0, v22

    goto/16 :goto_1

    :cond_7
    move-object/from16 v22, v0

    move-object v12, v14

    move-object/from16 v25, v15

    .line 1933
    iget-object v0, v13, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->entities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    goto :goto_4

    :cond_8
    move-object/from16 v22, v0

    move-object v12, v14

    move-object/from16 v25, v15

    const/16 v20, 0x2

    .line 1937
    :goto_4
    invoke-interface/range {v25 .. v25}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v13, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->text:Ljava/lang/String;

    .line 1938
    invoke-virtual {v12}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getType()I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, v13, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    .line 1939
    invoke-virtual {v12}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getSwatch()Lorg/telegram/ui/Components/Paint/Swatch;

    move-result-object v0

    iget v0, v0, Lorg/telegram/ui/Components/Paint/Swatch;->color:I

    iput v0, v13, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->color:I

    .line 1940
    invoke-virtual {v12}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getTextSize()I

    move-result v0

    iput v0, v13, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->fontSize:I

    .line 1941
    invoke-virtual {v12}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getTypeface()Lorg/telegram/ui/Components/Paint/PaintTypeface;

    move-result-object v0

    iput-object v0, v13, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textTypeface:Lorg/telegram/ui/Components/Paint/PaintTypeface;

    .line 1942
    invoke-virtual {v12}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getAlign()I

    move-result v0

    iput v0, v13, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textAlign:I

    const/4 v12, 0x1

    goto/16 :goto_5

    :cond_9
    move-object/from16 v22, v0

    const-wide/16 v18, 0x1388

    const/16 v20, 0x2

    .line 1944
    instance-of v0, v9, Lorg/telegram/ui/Components/Paint/Views/StickerView;

    if-eqz v0, :cond_f

    const/4 v3, 0x0

    .line 1945
    iput-byte v3, v13, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->type:B

    .line 1946
    move-object v0, v9

    check-cast v0, Lorg/telegram/ui/Components/Paint/Views/StickerView;

    .line 1947
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/StickerView;->getBaseSize()Lorg/telegram/ui/Components/Size;

    move-result-object v3

    .line 1948
    iget v6, v3, Lorg/telegram/ui/Components/Size;->width:F

    iput v6, v13, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->width:F

    .line 1949
    iget v3, v3, Lorg/telegram/ui/Components/Size;->height:F

    iput v3, v13, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->height:F

    .line 1950
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/StickerView;->getSticker()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v3

    iput-object v3, v13, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 1951
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/StickerView;->getParentObject()Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v13, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->parentObject:Ljava/lang/Object;

    .line 1952
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/StickerView;->getSticker()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v3

    .line 1953
    sget v6, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v6

    const/4 v14, 0x1

    invoke-virtual {v6, v3, v14}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v13, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->text:Ljava/lang/String;

    .line 1954
    invoke-static {v3, v14}, Lorg/telegram/messenger/MessageObject;->isAnimatedStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;Z)Z

    move-result v6

    if-nez v6, :cond_a

    invoke-static {v3}, Lorg/telegram/messenger/MessageObject;->isVideoStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 1955
    :cond_a
    invoke-static {v3, v14}, Lorg/telegram/messenger/MessageObject;->isAnimatedStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;Z)Z

    move-result v3

    .line 1956
    iget-byte v6, v13, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    if-eqz v3, :cond_b

    move/from16 v16, v14

    :cond_b
    or-int v6, v6, v16

    int-to-byte v6, v6

    iput-byte v6, v13, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    if-eqz v3, :cond_c

    .line 1959
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/StickerView;->getDuration()J

    move-result-wide v11

    move-wide/from16 v18, v11

    :cond_c
    const-wide/16 v11, 0x0

    cmp-long v3, v18, v11

    if-eqz v3, :cond_d

    .line 1964
    invoke-static/range {v18 .. v19}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    .line 1965
    iget-object v6, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lcm:Ljava/math/BigInteger;

    invoke-virtual {v6, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    iget-object v11, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lcm:Ljava/math/BigInteger;

    invoke-virtual {v11, v3}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    iput-object v3, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lcm:Ljava/math/BigInteger;

    .line 1969
    :cond_d
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/StickerView;->isMirrored()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1970
    iget-byte v0, v13, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    or-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    iput-byte v0, v13, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    :cond_e
    move v12, v14

    goto :goto_5

    .line 1972
    :cond_f
    instance-of v0, v9, Lorg/telegram/ui/Components/Paint/Views/PhotoView;

    if-eqz v0, :cond_13

    .line 1973
    move-object v0, v9

    check-cast v0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;

    move/from16 v3, v20

    .line 1974
    iput-byte v3, v13, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->type:B

    .line 1975
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->getBaseSize()Lorg/telegram/ui/Components/Size;

    move-result-object v3

    .line 1976
    iget v6, v3, Lorg/telegram/ui/Components/Size;->width:F

    iput v6, v13, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->width:F

    .line 1977
    iget v3, v3, Lorg/telegram/ui/Components/Size;->height:F

    iput v3, v13, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->height:F

    .line 1978
    iget v3, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentAccount:I

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->getPath(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v13, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->text:Ljava/lang/String;

    .line 1979
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->isMirrored()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1980
    iget-byte v3, v13, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    const/16 v20, 0x2

    or-int/lit8 v3, v3, 0x2

    int-to-byte v3, v3

    iput-byte v3, v13, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    .line 1982
    :cond_10
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->hasSegmentedImage()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->isSegmented()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 1983
    iget v3, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentAccount:I

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->saveSegmentedImage(I)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 1985
    iget-byte v3, v13, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    or-int/lit8 v3, v3, 0x10

    int-to-byte v3, v3

    iput-byte v3, v13, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    .line 1986
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v13, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->segmentedPath:Ljava/lang/String;

    :cond_11
    const/4 v12, 0x0

    .line 1992
    :goto_5
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1993
    invoke-virtual {v8}, Landroid/view/View;->getScaleX()F

    move-result v0

    .line 1994
    invoke-virtual {v8}, Landroid/view/View;->getScaleY()F

    move-result v3

    .line 1995
    invoke-virtual {v8}, Landroid/view/View;->getX()F

    move-result v6

    .line 1996
    invoke-virtual {v8}, Landroid/view/View;->getY()F

    move-result v11

    .line 1997
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v14

    iput v14, v13, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewWidth:I

    .line 1998
    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v14

    iput v14, v13, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewHeight:I

    .line 1999
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v14

    int-to-float v14, v14

    mul-float/2addr v14, v0

    iget-object v15, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    int-to-float v15, v15

    div-float/2addr v14, v15

    iput v14, v13, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->width:F

    .line 2000
    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v14

    int-to-float v14, v14

    mul-float/2addr v14, v3

    iget-object v15, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    int-to-float v15, v15

    div-float/2addr v14, v15

    iput v14, v13, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->height:F

    .line 2001
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v14

    int-to-float v14, v14

    const/high16 v15, 0x3f800000    # 1.0f

    sub-float v16, v15, v0

    mul-float v14, v14, v16

    div-float v14, v14, v17

    add-float/2addr v14, v6

    move/from16 v16, v15

    iget-object v15, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    int-to-float v15, v15

    div-float/2addr v14, v15

    iput v14, v13, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->x:F

    .line 2002
    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v14

    int-to-float v14, v14

    sub-float v15, v16, v3

    mul-float/2addr v14, v15

    div-float v14, v14, v17

    add-float/2addr v14, v11

    iget-object v3, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v14, v3

    iput v14, v13, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->y:F

    .line 2003
    invoke-virtual {v8}, Landroid/view/View;->getRotation()F

    move-result v3

    neg-float v3, v3

    float-to-double v14, v3

    const-wide v18, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double v14, v14, v18

    double-to-float v3, v14

    iput v3, v13, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->rotation:F

    .line 2005
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v3, v3, v17

    add-float/2addr v6, v3

    iget-object v3, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v6, v3

    iput v6, v13, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textViewX:F

    .line 2006
    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v3, v3, v17

    add-float/2addr v11, v3

    iget-object v3, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v11, v3

    iput v11, v13, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textViewY:F

    .line 2007
    iget v3, v13, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewWidth:I

    int-to-float v3, v3

    iget-object v6, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v3, v6

    iput v3, v13, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textViewWidth:F

    .line 2008
    iget v3, v13, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewHeight:I

    int-to-float v3, v3

    iget-object v6, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v3, v6

    iput v3, v13, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textViewHeight:F

    .line 2009
    iput v0, v13, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->scale:F

    const/16 v21, 0x0

    .line 2011
    aget-object v0, p2, v21

    if-nez v0, :cond_12

    .line 2012
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v6

    invoke-static {v0, v3, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    aput-object v0, p2, v21

    .line 2013
    new-instance v0, Landroid/graphics/Canvas;

    aget-object v3, p2, v21

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 2014
    invoke-virtual {v0, v4, v3, v3, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    move-object/from16 v22, v0

    :cond_12
    move v3, v12

    goto :goto_7

    :cond_13
    :goto_6
    move-object/from16 v0, v22

    const/4 v1, 0x0

    const/4 v2, 0x0

    goto/16 :goto_d

    :cond_14
    move-object/from16 v22, v0

    const/high16 v17, 0x40000000    # 2.0f

    const/4 v3, 0x0

    .line 2017
    :goto_7
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v11, 0x0

    :goto_8
    const/4 v12, 0x2

    if-ge v11, v12, :cond_19

    if-nez v11, :cond_15

    move-object v13, v6

    goto :goto_9

    :cond_15
    move-object/from16 v13, v22

    :goto_9
    if-eqz v13, :cond_16

    if-nez v11, :cond_17

    if-eqz v3, :cond_17

    :cond_16
    const/4 v1, 0x0

    const/4 v2, 0x0

    goto/16 :goto_c

    .line 2023
    :cond_17
    invoke-virtual {v13}, Landroid/graphics/Canvas;->save()I

    .line 2024
    iget v0, v10, Lorg/telegram/ui/Components/Point;->x:F

    iget v14, v10, Lorg/telegram/ui/Components/Point;->y:F

    invoke-virtual {v13, v0, v14}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2025
    invoke-virtual {v8}, Landroid/view/View;->getScaleX()F

    move-result v0

    invoke-virtual {v8}, Landroid/view/View;->getScaleY()F

    move-result v14

    invoke-virtual {v13, v0, v14}, Landroid/graphics/Canvas;->scale(FF)V

    .line 2026
    invoke-virtual {v8}, Landroid/view/View;->getRotation()F

    move-result v0

    invoke-virtual {v13, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2027
    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    div-float v0, v0, v17

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v14

    neg-int v14, v14

    int-to-float v14, v14

    div-float v14, v14, v17

    invoke-virtual {v13, v0, v14}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2028
    instance-of v0, v8, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz v0, :cond_18

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_18

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_18

    .line 2029
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v14

    sget-object v15, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v14, v15}, Lorg/telegram/messenger/Bitmaps;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 2030
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v14}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2031
    invoke-virtual {v8, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 2032
    new-instance v15, Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v15, v2, v2, v12, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v1, 0x0

    invoke-virtual {v13, v14, v1, v15, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 2034
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_a

    :catch_0
    move-exception v0

    .line 2036
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2038
    :goto_a
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_b

    :cond_18
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2040
    invoke-virtual {v8, v13}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 2042
    :goto_b
    invoke-virtual {v13}, Landroid/graphics/Canvas;->restore()V

    :goto_c
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    goto/16 :goto_8

    :cond_19
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, v22

    :goto_d
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, p0

    move v3, v2

    move-object/from16 v2, p1

    goto/16 :goto_0

    :cond_1a
    return-object v4
.end method

.method public getCancelView()Landroid/view/View;
    .locals 1

    .line 2066
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->cancelButton:Lorg/telegram/ui/Components/Paint/Views/PaintCancelView;

    return-object v0
.end method

.method public getCenterLocation(Lorg/telegram/ui/Components/Paint/Views/EntityView;)[I
    .locals 0

    .line 3158
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->getCenterLocationInWindow(Landroid/view/View;)[I

    move-result-object p1

    return-object p1
.end method

.method public getCropRotation()F
    .locals 2

    .line 3216
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentCropState:Lorg/telegram/messenger/MediaController$CropState;

    if-eqz v0, :cond_0

    iget v1, v0, Lorg/telegram/messenger/MediaController$CropState;->cropRotate:F

    iget v0, v0, Lorg/telegram/messenger/MediaController$CropState;->transformRotation:I

    int-to-float v0, v0

    add-float/2addr v1, v0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getDoneView()Landroid/view/View;
    .locals 1

    .line 2061
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->doneButton:Lorg/telegram/ui/Components/Paint/Views/PaintDoneView;

    return-object v0
.end method

.method public getEmojiPadding(Z)I
    .locals 2

    .line 3435
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->translateBottomPanelAfterResize:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 3436
    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->bottomPanelTranslationY(FF)V

    .line 3438
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->keyboardVisible:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->translateBottomPanelAfterResize:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return p1

    .line 3443
    :cond_1
    iget p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiPadding:I

    return p1
.end method

.method public getLcm()J
    .locals 2

    .line 2056
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lcm:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMasks()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/telegram/tgnet/TLRPC$InputDocument;",
            ">;"
        }
    .end annotation

    .line 2220
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_8

    .line 2222
    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2223
    instance-of v5, v4, Lorg/telegram/ui/Components/Paint/Views/StickerView;

    if-eqz v5, :cond_2

    .line 2224
    check-cast v4, Lorg/telegram/ui/Components/Paint/Views/StickerView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/Paint/Views/StickerView;->getSticker()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v4

    if-nez v1, :cond_0

    .line 2226
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2228
    :cond_0
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;-><init>()V

    .line 2229
    iget-wide v6, v4, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iput-wide v6, v5, Lorg/telegram/tgnet/TLRPC$InputDocument;->id:J

    .line 2230
    iget-wide v6, v4, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    iput-wide v6, v5, Lorg/telegram/tgnet/TLRPC$InputDocument;->access_hash:J

    .line 2231
    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->file_reference:[B

    iput-object v4, v5, Lorg/telegram/tgnet/TLRPC$InputDocument;->file_reference:[B

    if-nez v4, :cond_1

    .line 2233
    new-array v4, v2, [B

    iput-object v4, v5, Lorg/telegram/tgnet/TLRPC$InputDocument;->file_reference:[B

    .line 2235
    :cond_1
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 2236
    :cond_2
    instance-of v5, v4, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz v5, :cond_7

    .line 2237
    check-cast v4, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    .line 2238
    invoke-virtual {v4}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    .line 2239
    instance-of v5, v4, Landroid/text/Spanned;

    if-eqz v5, :cond_7

    .line 2240
    move-object v5, v4

    check-cast v5, Landroid/text/Spanned;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const-class v6, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-interface {v5, v2, v4, v6}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    if-eqz v4, :cond_7

    move v5, v2

    .line 2242
    :goto_1
    array-length v6, v4

    if-ge v5, v6, :cond_7

    .line 2243
    aget-object v6, v4, v5

    if-eqz v6, :cond_6

    .line 2246
    iget-object v7, v6, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v7, :cond_3

    goto :goto_2

    .line 2249
    :cond_3
    iget v7, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentAccount:I

    invoke-virtual {v6}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->getDocumentId()J

    move-result-wide v8

    invoke-static {v7, v8, v9}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->findDocument(IJ)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v7

    :goto_2
    if-eqz v7, :cond_6

    if-nez v1, :cond_4

    .line 2254
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2256
    :cond_4
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;-><init>()V

    .line 2257
    iget-wide v8, v7, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iput-wide v8, v6, Lorg/telegram/tgnet/TLRPC$InputDocument;->id:J

    .line 2258
    iget-wide v8, v7, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    iput-wide v8, v6, Lorg/telegram/tgnet/TLRPC$InputDocument;->access_hash:J

    .line 2259
    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Document;->file_reference:[B

    iput-object v7, v6, Lorg/telegram/tgnet/TLRPC$InputDocument;->file_reference:[B

    if-nez v7, :cond_5

    .line 2261
    new-array v7, v2, [B

    iput-object v7, v6, Lorg/telegram/tgnet/TLRPC$InputDocument;->file_reference:[B

    .line 2263
    :cond_5
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_7
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_8
    return-object v1
.end method

.method public getOffsetTranslationY()F
    .locals 1

    .line 1857
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->offsetTranslationY:F

    return v0
.end method

.method protected getPKeyboardHeight()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getRenderView()Lorg/telegram/ui/Components/Paint/RenderView;
    .locals 1

    .line 2132
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    return-object v0
.end method

.method public getSelectedEntityBottom()F
    .locals 3

    .line 1006
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    if-nez v0, :cond_0

    .line 1007
    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    :goto_0
    add-float/2addr v0, v1

    return v0

    :cond_0
    const/4 v1, 0x2

    .line 1009
    new-array v1, v1, [I

    .line 1010
    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v0, 0x1

    .line 1011
    aget v0, v1, v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v2}, Landroid/view/View;->getScaleY()F

    move-result v2

    mul-float/2addr v1, v2

    goto :goto_0
.end method

.method public getThanosEffect()Lorg/telegram/ui/Components/ThanosEffect;
    .locals 3

    .line 3732
    invoke-static {}, Lorg/telegram/ui/Components/ThanosEffect;->supports()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 3735
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->thanosEffect:Lorg/telegram/ui/Components/ThanosEffect;

    if-nez v0, :cond_1

    .line 3736
    new-instance v0, Lorg/telegram/ui/Components/ThanosEffect;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda20;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)V

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/ThanosEffect;-><init>(Landroid/content/Context;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->thanosEffect:Lorg/telegram/ui/Components/ThanosEffect;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3744
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->thanosEffect:Lorg/telegram/ui/Components/ThanosEffect;

    return-object v0
.end method

.method public getTransformedTouch(FF[F)V
    .locals 9

    .line 3149
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr p1, v1

    .line 3150
    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    div-float/2addr v0, v2

    sub-float/2addr p2, v0

    .line 3151
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v0}, Landroid/view/View;->getRotation()F

    move-result v0

    neg-float v0, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float v0, v0

    float-to-double v3, p1

    float-to-double v0, v0

    .line 3152
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double/2addr v5, v3

    float-to-double p1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    mul-double/2addr v7, p1

    sub-double/2addr v5, v7

    double-to-float v5, v5

    sget-object v6, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    div-float/2addr v6, v2

    add-float/2addr v5, v6

    const/4 v6, 0x0

    aput v5, p3, v6

    .line 3153
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double/2addr v3, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double/2addr p1, v0

    add-double/2addr v3, p1

    double-to-float p1, v3

    sget-object p2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->y:I

    int-to-float p2, p2

    div-float/2addr p2, v2

    add-float/2addr p1, p2

    const/4 p2, 0x1

    aput p1, p3, p2

    return-void
.end method

.method public bridge synthetic getView()Landroid/view/View;
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/IPhotoPaintView$-CC;->$default$getView(Lorg/telegram/ui/Components/IPhotoPaintView;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public hasChanges()Z
    .locals 1

    .line 1873
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->undoStore:Lorg/telegram/ui/Components/Paint/UndoStore;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/UndoStore;->canUndo()Z

    move-result v0

    return v0
.end method

.method public init()V
    .locals 2

    .line 1746
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    iget v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getCurrentTypeface()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->setTypeface(Ljava/lang/String;)V

    .line 1747
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1748
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1749
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderInputView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public isCurrentText()Z
    .locals 1

    .line 1002
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    instance-of v0, v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    return v0
.end method

.method public synthetic isEntityDeletable()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate$-CC;->$default$isEntityDeletable(Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;)Z

    move-result v0

    return v0
.end method

.method public maybeShowDismissalAlert(Lorg/telegram/ui/PhotoViewer;Landroid/app/Activity;Ljava/lang/Runnable;)V
    .locals 3

    .line 2071
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->isColorListShown:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 2072
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->showColorList(Z)V

    return-void

    .line 2076
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiViewVisible:Z

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    .line 2077
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->hideEmojiPopup(Z)V

    return-void

    .line 2081
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->editingText:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    if-eqz v0, :cond_2

    .line 2082
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    return-void

    .line 2086
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->hasChanges()Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez p2, :cond_3

    return-void

    .line 2090
    :cond_3
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, p2, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 2091
    sget p2, Lorg/telegram/messenger/R$string;->PhotoEditorDiscardAlert:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2092
    sget p2, Lorg/telegram/messenger/R$string;->DiscardChanges:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2093
    sget p2, Lorg/telegram/messenger/R$string;->PassportDiscard:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance v2, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda19;

    invoke-direct {v2, p3}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda19;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, p2, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2094
    sget p2, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2095
    invoke-virtual {p1, v0}, Lorg/telegram/ui/PhotoViewer;->showAlertDialog(Lorg/telegram/ui/ActionBar/AlertDialog$Builder;)V

    return-void

    .line 2097
    :cond_4
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public onAddButtonPressed(Landroid/view/View;)V
    .locals 6

    .line 2675
    new-instance v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda46;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda46;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)V

    const/4 v4, 0x0

    .line 2704
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    const/16 v3, 0x35

    move-object v2, p0

    move-object v0, p0

    .line 2675
    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->showPopup(Ljava/lang/Runnable;Landroid/view/View;III)V

    return-void
.end method

.method public onAnimationStateChanged(Z)V
    .locals 5

    .line 1830
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->tabsSelectedIndex:I

    if-nez v0, :cond_3

    .line 1831
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1832
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->bottomLayout:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    invoke-virtual {v0, v3, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1833
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->topLayout:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {v0, v1, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_3
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    const/4 v0, 0x0

    .line 3704
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->destroyed:Z

    .line 3705
    invoke-super {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->onAttachedToWindow()V

    .line 3706
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->customTypefacesLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public onBackPressed()Z
    .locals 3

    .line 2447
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->isColorListShown:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 2448
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->showColorList(Z)V

    return v2

    .line 2452
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiViewVisible:Z

    if-eqz v0, :cond_1

    .line 2453
    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->hideEmojiPopup(Z)V

    return v2

    .line 2457
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->editingText:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 2458
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    return v2

    :cond_2
    return v1
.end method

.method public onBrushSelected(Lorg/telegram/ui/Components/Paint/Brush;)V
    .locals 3

    .line 2276
    instance-of v0, p1, Lorg/telegram/ui/Components/Paint/Brush$Blurer;

    if-nez v0, :cond_1

    instance-of v0, p1, Lorg/telegram/ui/Components/Paint/Brush$Eraser;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2279
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    const v1, 0x3d4ccccd    # 0.05f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->setMinMax(FF)V

    goto :goto_1

    .line 2277
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    const v1, 0x3ecccccd    # 0.4f

    const/high16 v2, 0x3fe00000    # 1.75f

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->setMinMax(FF)V

    .line 2281
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    instance-of v1, p1, Lorg/telegram/ui/Components/Paint/Brush$Shape;

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->setDrawCenter(Z)V

    .line 2282
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/RenderView;->getCurrentBrush()Lorg/telegram/ui/Components/Paint/Brush;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/Components/Paint/Brush$Shape;

    if-eqz v0, :cond_2

    .line 2283
    iput-boolean v2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->ignoreToolChangeAnimationOnce:Z

    .line 2285
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Paint/RenderView;->setBrush(Lorg/telegram/ui/Components/Paint/Brush;)V

    .line 2286
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    iget v0, p1, Lorg/telegram/ui/Components/Paint/Swatch;->color:I

    .line 2287
    iget v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getCurrentColor()I

    move-result v1

    iput v1, p1, Lorg/telegram/ui/Components/Paint/Swatch;->color:I

    .line 2288
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->weightDefaultValueOverride:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;

    invoke-interface {v1}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;->get()F

    move-result v1

    iput v1, p1, Lorg/telegram/ui/Components/Paint/Swatch;->brushWeight:F

    .line 2289
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, v2, v0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->setCurrentSwatch(Lorg/telegram/ui/Components/Paint/Swatch;ZLjava/lang/Integer;)V

    .line 2290
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderInputView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public onCleanupEntities()V
    .locals 1

    .line 2051
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    return-void
.end method

.method public onColorPickerSelected()V
    .locals 1

    const/4 v0, 0x1

    .line 2467
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->showColorList(Z)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    const/4 v0, 0x1

    .line 3711
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->destroyed:Z

    .line 3712
    invoke-super {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->onDetachedFromWindow()V

    .line 3713
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->customTypefacesLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public onEmojiButtonClick()V
    .locals 3

    .line 3262
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiViewVisible:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3263
    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    instance-of v2, v2, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz v2, :cond_0

    .line 3264
    iput-boolean v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->bottomPanelIgnoreOnce:Z

    :cond_0
    if-eqz v0, :cond_1

    .line 3267
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->onEmojiViewCloseByClick()V

    .line 3269
    :cond_1
    iget-boolean v2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiViewVisible:Z

    xor-int/2addr v1, v2

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->showEmojiPopup(I)V

    if-eqz v0, :cond_2

    .line 3270
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    instance-of v1, v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz v1, :cond_2

    .line 3271
    check-cast v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getEditText()Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    move-result-object v0

    .line 3272
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    :cond_2
    return-void
.end method

.method protected abstract onEmojiViewCloseByClick()V
.end method

.method public synthetic onEntityDragEnd(Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate$-CC;->$default$onEntityDragEnd(Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;Z)V

    return-void
.end method

.method public synthetic onEntityDragMultitouchEnd()V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate$-CC;->$default$onEntityDragMultitouchEnd(Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;)V

    return-void
.end method

.method public synthetic onEntityDragMultitouchStart()V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate$-CC;->$default$onEntityDragMultitouchStart(Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;)V

    return-void
.end method

.method public synthetic onEntityDragStart()V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate$-CC;->$default$onEntityDragStart(Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;)V

    return-void
.end method

.method public synthetic onEntityDragTrash(Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate$-CC;->$default$onEntityDragTrash(Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;Z)V

    return-void
.end method

.method public synthetic onEntityDraggedBottom(Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate$-CC;->$default$onEntityDraggedBottom(Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;Z)V

    return-void
.end method

.method public synthetic onEntityDraggedTop(Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate$-CC;->$default$onEntityDraggedTop(Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;Z)V

    return-void
.end method

.method public synthetic onEntityHandleTouched()V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate$-CC;->$default$onEntityHandleTouched(Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;)V

    return-void
.end method

.method public onEntityLongClicked(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z
    .locals 0

    .line 3143
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->showMenuForEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onEntitySelected(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z
    .locals 0

    .line 3138
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    move-result p1

    return p1
.end method

.method public onGetPalette()Lorg/telegram/ui/Components/Paint/PersistColorPalette;
    .locals 1

    .line 2954
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object v0

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .line 1680
    invoke-super/range {p0 .. p5}, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->onLayout(ZIIII)V

    move-object p1, p0

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    .line 1685
    iget-object p2, p1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    const/4 p3, 0x0

    if-eqz p2, :cond_1

    .line 1687
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1688
    iget-object p2, p1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    sub-int p2, p5, p2

    goto :goto_0

    .line 1690
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->measureKeyboardHeight()I

    move-result p2

    add-int/2addr p2, p5

    iget-object v0, p1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr p2, v0

    .line 1692
    :goto_0
    iget-object v0, p1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, p2

    invoke-virtual {v0, p3, p2, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 1695
    :cond_1
    iget-boolean p2, p1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->inBubbleMode:Z

    if-nez p2, :cond_2

    sget p3, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    .line 1696
    :cond_2
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result p2

    add-int/2addr p2, p3

    .line 1699
    iget-object v0, p1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr p4, v0

    int-to-float p4, p4

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p4, v0

    float-to-double v0, p4

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p4, v0

    sub-int/2addr p5, p2

    const/high16 p2, 0x42400000    # 48.0f

    .line 1700
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    sub-int/2addr p5, p2

    iget-object p2, p1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    sub-int/2addr p5, p2

    div-int/lit8 p5, p5, 0x2

    const/high16 p2, 0x41000000    # 8.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    add-int/2addr p5, p2

    add-int/2addr p5, p3

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->getAdditionalTop()I

    move-result p2

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->getAdditionalBottom()I

    move-result p3

    sub-int/2addr p2, p3

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p5, p2

    .line 1702
    iget-object p2, p1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    add-int/2addr p3, p4

    iget-object v0, p1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, p5

    invoke-virtual {p2, p4, p5, p3, v0}, Landroid/view/View;->layout(IIII)V

    .line 1703
    iget-object p2, p1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderInputView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    add-int/2addr p3, p4

    iget-object v0, p1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderInputView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, p5

    invoke-virtual {p2, p4, p5, p3, v0}, Landroid/view/View;->layout(IIII)V

    .line 1704
    iget-object p2, p1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    iget-object p3, p1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    sub-int/2addr p2, p3

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p2, p4

    .line 1705
    iget-object p3, p1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    iget-object v0, p1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr p3, v0

    div-int/lit8 p3, p3, 0x2

    add-int/2addr p3, p5

    .line 1706
    iget-object v0, p1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, p2

    iget-object v2, p1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, p3

    invoke-virtual {v0, p2, p3, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 1707
    iget-object v0, p1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->thanosEffect:Lorg/telegram/ui/Components/ThanosEffect;

    if-eqz v0, :cond_3

    .line 1708
    iget-object v1, p1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, p2

    iget-object v2, p1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, p3

    invoke-virtual {v0, p2, p3, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 1710
    :cond_3
    iget-object p2, p1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->selectionContainerView:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    add-int/2addr p3, p4

    iget-object v0, p1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->selectionContainerView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, p5

    invoke-virtual {p2, p4, p5, p3, v0}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 10

    const/4 v0, 0x1

    .line 1607
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->ignoreLayout:Z

    .line 1608
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 1609
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 1611
    invoke-virtual {p0, v1, v2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 1615
    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->getAdditionalTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->getAdditionalBottom()I

    move-result v4

    sub-int/2addr v3, v4

    const/high16 v4, 0x42400000    # 48.0f

    .line 1616
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v3, v5

    .line 1617
    iget-object v5, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->bitmapToEdit:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_0

    .line 1618
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    .line 1619
    iget-object v5, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->bitmapToEdit:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    goto :goto_0

    :cond_0
    int-to-float v5, v1

    .line 1622
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v6

    sub-int v6, v2, v6

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v6, v4

    int-to-float v4, v6

    move v9, v5

    move v5, v4

    move v4, v9

    :goto_0
    int-to-float v1, v1

    mul-float v6, v1, v5

    div-float/2addr v6, v4

    float-to-double v6, v6

    .line 1626
    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-float v6, v6

    int-to-float v3, v3

    cmpl-float v7, v6, v3

    if-lez v7, :cond_1

    mul-float/2addr v4, v3

    div-float/2addr v4, v5

    float-to-double v4, v4

    .line 1629
    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-float v1, v4

    move v6, v3

    .line 1632
    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    float-to-int v4, v1

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    float-to-int v6, v6

    invoke-static {v6, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {v3, v7, v8}, Landroid/view/View;->measure(II)V

    .line 1633
    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderInputView:Landroid/view/View;

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-static {v6, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {v3, v7, v8}, Landroid/view/View;->measure(II)V

    .line 1635
    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->paintingSize:Lorg/telegram/ui/Components/Size;

    iget v3, v3, Lorg/telegram/ui/Components/Size;->width:F

    div-float/2addr v1, v3

    iput v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->baseScale:F

    .line 1636
    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v3, v1}, Landroid/view/View;->setScaleX(F)V

    .line 1637
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    iget v3, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->baseScale:F

    invoke-virtual {v1, v3}, Landroid/view/View;->setScaleY(F)V

    .line 1638
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->paintingSize:Lorg/telegram/ui/Components/Size;

    iget v3, v3, Lorg/telegram/ui/Components/Size;->width:F

    float-to-int v3, v3

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iget-object v7, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->paintingSize:Lorg/telegram/ui/Components/Size;

    iget v7, v7, Lorg/telegram/ui/Components/Size;->height:F

    float-to-int v7, v7

    invoke-static {v7, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v1, v3, v7}, Landroid/view/View;->measure(II)V

    .line 1639
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->thanosEffect:Lorg/telegram/ui/Components/ThanosEffect;

    if-eqz v1, :cond_2

    .line 1640
    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->paintingSize:Lorg/telegram/ui/Components/Size;

    iget v3, v3, Lorg/telegram/ui/Components/Size;->width:F

    float-to-int v3, v3

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iget-object v7, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->paintingSize:Lorg/telegram/ui/Components/Size;

    iget v7, v7, Lorg/telegram/ui/Components/Size;->height:F

    float-to-int v7, v7

    invoke-static {v7, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v1, v3, v7}, Landroid/view/View;->measure(II)V

    .line 1641
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->thanosEffect:Lorg/telegram/ui/Components/ThanosEffect;

    iget v3, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->baseScale:F

    invoke-virtual {v1, v3}, Landroid/view/View;->setScaleX(F)V

    .line 1642
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->thanosEffect:Lorg/telegram/ui/Components/ThanosEffect;

    iget v3, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->baseScale:F

    invoke-virtual {v1, v3}, Landroid/view/View;->setScaleY(F)V

    .line 1644
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->updateEntitiesSelections()V

    .line 1645
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->selectionContainerView:Landroid/widget/FrameLayout;

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v6, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/view/View;->measure(II)V

    .line 1646
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->bottomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    .line 1647
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    invoke-virtual {p0, v1, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    .line 1648
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->pipetteContainerLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    .line 1649
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->getPKeyboardHeight()I

    move-result v1

    iget v3, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiPadding:I

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1650
    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->overlayLayout:Landroid/widget/FrameLayout;

    sub-int/2addr v2, v1

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0, v3, p1, v1}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    .line 1652
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->topLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->topLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->topLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 1653
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->topLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    const/4 v1, 0x0

    .line 1654
    iput-boolean v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->ignoreLayout:Z

    .line 1657
    iget-boolean v2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->waitingForKeyboardOpen:Z

    const/high16 v3, 0x41a00000    # 20.0f

    if-nez v2, :cond_3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    if-ltz v2, :cond_3

    iget-boolean v2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiViewVisible:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->isAnimatePopupClosing:Z

    if-nez v2, :cond_3

    .line 1658
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->ignoreLayout:Z

    .line 1659
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->hideEmojiView()V

    .line 1660
    iput-boolean v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->ignoreLayout:Z

    .line 1663
    :cond_3
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    if-ltz v0, :cond_4

    goto :goto_1

    .line 1666
    :cond_4
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->hideEmojiView()V

    .line 1669
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz v0, :cond_5

    .line 1670
    invoke-virtual {p0, v0, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    :cond_5
    return-void
.end method

.method public onNewTextSelected()V
    .locals 1

    .line 2631
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->keyboardVisible:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiViewVisible:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 2634
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->createText(Z)Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    return-void

    .line 2632
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->onEmojiButtonClick()V

    return-void
.end method

.method protected abstract onOpenCloseStickersAlert(Z)V
.end method

.method public onResume()V
    .locals 1

    .line 1825
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/RenderView;->redraw()V

    return-void
.end method

.method public onSizeChanged(IZ)V
    .locals 4

    const/high16 v0, 0x42480000    # 50.0f

    .line 3466
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    if-le p1, v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->keyboardVisible:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-nez v0, :cond_1

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    .line 3468
    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->keyboardHeightLand:I

    .line 3469
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalEmojiSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "kbd_height_land3"

    iget v2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->keyboardHeightLand:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 3471
    :cond_0
    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->keyboardHeight:I

    .line 3472
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalEmojiSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "kbd_height"

    iget v2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->keyboardHeight:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3476
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiViewVisible:Z

    if-eqz v0, :cond_4

    if-eqz p2, :cond_2

    .line 3477
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->keyboardHeightLand:I

    goto :goto_1

    :cond_2
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->keyboardHeight:I

    .line 3479
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 3480
    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    if-ne v2, v3, :cond_3

    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-eq v2, v0, :cond_4

    .line 3481
    :cond_3
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 3482
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 3483
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3485
    iget v0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiWasPadding:I

    iput v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiPadding:I

    .line 3486
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->requestLayout()V

    .line 3487
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->updateKeyboard()V

    .line 3488
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->onWindowSizeChanged()V

    .line 3492
    :cond_4
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lastSizeChangeValue1:I

    if-ne v0, p1, :cond_5

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lastSizeChangeValue2:Z

    if-ne v0, p2, :cond_5

    .line 3493
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->onWindowSizeChanged()V

    return-void

    .line 3496
    :cond_5
    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lastSizeChangeValue1:I

    .line 3497
    iput-boolean p2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lastSizeChangeValue2:Z

    .line 3499
    iget-boolean p2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->keyboardVisible:Z

    .line 3500
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    instance-of v1, v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    .line 3501
    check-cast v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getEditText()Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    move-result-object v0

    .line 3502
    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_6

    if-lez p1, :cond_6

    const/4 p1, 0x1

    goto :goto_2

    :cond_6
    move p1, v2

    :goto_2
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->keyboardVisible:Z

    goto :goto_3

    .line 3504
    :cond_7
    iput-boolean v2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->keyboardVisible:Z

    .line 3506
    :goto_3
    iget-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->keyboardVisible:Z

    if-eqz p1, :cond_8

    iget-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiViewVisible:Z

    if-eqz p1, :cond_8

    .line 3507
    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->showEmojiPopup(I)V

    .line 3509
    :cond_8
    iget p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiPadding:I

    if-eqz p1, :cond_9

    iget-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->keyboardVisible:Z

    if-nez p1, :cond_9

    if-eq p1, p2, :cond_9

    iget-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiViewVisible:Z

    if-nez p1, :cond_9

    .line 3510
    iput v2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiPadding:I

    .line 3511
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->requestLayout()V

    .line 3512
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->updateKeyboard()V

    :cond_9
    if-eqz p2, :cond_a

    .line 3514
    iget-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->keyboardVisible:Z

    if-nez p1, :cond_a

    iget p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiPadding:I

    if-lez p1, :cond_a

    iget-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->translateBottomPanelAfterResize:Z

    if-eqz p1, :cond_a

    .line 3515
    iput-boolean v2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->translateBottomPanelAfterResize:Z

    const/4 p1, 0x0

    const/high16 p2, 0x3f800000    # 1.0f

    .line 3516
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->bottomPanelTranslationY(FF)V

    .line 3517
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->stopPanTransition()V

    .line 3519
    :cond_a
    iget-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->keyboardVisible:Z

    if-eqz p1, :cond_b

    iget-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->waitingForKeyboardOpen:Z

    if-eqz p1, :cond_b

    .line 3520
    iput-boolean v2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->waitingForKeyboardOpen:Z

    .line 3521
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->openKeyboardRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 3523
    :cond_b
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->onWindowSizeChanged()V

    return-void
.end method

.method public onSwitchSegmentedAnimation(Lorg/telegram/ui/Components/Paint/Views/PhotoView;)V
    .locals 13

    if-nez p1, :cond_0

    return-void

    .line 3751
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->getThanosEffect()Lorg/telegram/ui/Components/ThanosEffect;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 3753
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->onSwitchSegmentedAnimationStarted(Z)V

    return-void

    .line 3756
    :cond_1
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->getSegmentedOutBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_2

    .line 3758
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->onSwitchSegmentedAnimationStarted(Z)V

    return-void

    .line 3761
    :cond_2
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 3762
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    .line 3764
    invoke-virtual {p1}, Landroid/view/View;->getRotation()F

    move-result v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    const/high16 v7, 0x40000000    # 2.0f

    if-eqz v5, :cond_3

    .line 3765
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    .line 3766
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v8, v5, v7

    mul-float/2addr v8, v8

    div-float v9, v6, v7

    mul-float/2addr v9, v9

    add-float/2addr v8, v9

    float-to-double v8, v8

    .line 3767
    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v8, v8

    mul-float v9, v8, v7

    float-to-int v10, v9

    .line 3769
    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v10, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 3770
    new-instance v11, Landroid/graphics/Canvas;

    invoke-direct {v11, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 3771
    invoke-virtual {v11}, Landroid/graphics/Canvas;->save()I

    .line 3772
    invoke-virtual {p1}, Landroid/view/View;->getRotation()F

    move-result v12

    invoke-virtual {v11, v12, v8, v8}, Landroid/graphics/Canvas;->rotate(FFF)V

    sub-float v5, v9, v5

    div-float/2addr v5, v7

    sub-float/2addr v9, v6

    div-float/2addr v9, v7

    const/4 v6, 0x0

    .line 3773
    invoke-virtual {v11, v2, v5, v9, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 3774
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    div-float v2, v3, v7

    mul-float/2addr v2, v2

    div-float v5, v4, v7

    mul-float/2addr v5, v5

    add-float/2addr v2, v5

    float-to-double v5, v2

    .line 3777
    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v2, v5

    mul-float/2addr v2, v7

    sub-float v3, v2, v3

    neg-float v3, v3

    div-float v6, v3, v7

    sub-float v3, v2, v4

    neg-float v3, v3

    div-float/2addr v3, v7

    move v4, v2

    move v5, v3

    move v3, v4

    move-object v2, v10

    goto :goto_0

    :cond_3
    move v5, v6

    .line 3783
    :goto_0
    invoke-virtual {v1, v3, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 3784
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v8

    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result v9

    div-float/2addr v3, v7

    div-float/2addr v4, v7

    invoke-virtual {v1, v8, v9, v3, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 3785
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v3

    add-float/2addr v3, v6

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v4

    add-float/2addr v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 3786
    new-instance v3, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda44;

    invoke-direct {v3, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda44;-><init>(Lorg/telegram/ui/Components/Paint/Views/PhotoView;)V

    new-instance p1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda45;

    invoke-direct {p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda45;-><init>()V

    invoke-virtual {v0, v1, v2, v3, p1}, Lorg/telegram/ui/Components/ThanosEffect;->animate(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method protected abstract onTextAdd()V
.end method

.method public onTextAlignmentSelected(I)V
    .locals 2

    .line 2648
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    instance-of v1, v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz v1, :cond_0

    .line 2649
    check-cast v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->setTextAlignment(Lorg/telegram/ui/Components/Paint/Views/TextPaintView;I)V

    .line 2650
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->setCurrentAlignment(I)V

    :cond_0
    return-void
.end method

.method public onTextOutlineSelected(Landroid/view/View;)V
    .locals 0

    .line 2472
    iget p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->selectedTextType:I

    add-int/lit8 p1, p1, 0x1

    rem-int/lit8 p1, p1, 0x5

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->setTextType(I)V

    return-void
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .locals 12

    .line 2103
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2104
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    .line 2107
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v1}, Landroid/view/View;->getScaleX()F

    move-result v1

    div-float/2addr v0, v1

    .line 2108
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v3}, Landroid/view/View;->getTranslationY()F

    move-result v3

    sub-float/2addr v1, v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    sub-float/2addr v1, v3

    const/high16 v3, 0x42000000    # 32.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v1, v3

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->getAdditionalTop()I

    move-result v3

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->getAdditionalBottom()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v3, v2

    sub-float/2addr v1, v3

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v3}, Landroid/view/View;->getScaleY()F

    move-result v3

    div-float/2addr v1, v3

    .line 2109
    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v3}, Landroid/view/View;->getRotation()F

    move-result v3

    neg-float v3, v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    double-to-float v3, v3

    float-to-double v4, v0

    float-to-double v6, v3

    .line 2110
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v8, v4

    float-to-double v0, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v10, v0

    sub-double/2addr v8, v10

    double-to-float v3, v8

    iget-object v8, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v2

    add-float/2addr v3, v8

    .line 2111
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v4, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v0, v6

    add-double/2addr v4, v0

    double-to-float v0, v4

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 2113
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 2114
    invoke-virtual {p1, v3, v0}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 2115
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Paint/RenderView;->onTouch(Landroid/view/MotionEvent;)Z

    .line 2116
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    const/4 p1, 0x1

    return p1
.end method

.method public onTypefaceButtonClicked()V
    .locals 1

    const/4 v0, 0x1

    .line 2295
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->showTypefaceMenu(Z)V

    return-void
.end method

.method public onTypefaceSelected(Lorg/telegram/ui/Components/Paint/PaintTypeface;)V
    .locals 2

    .line 2640
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object v0

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/PaintTypeface;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->setCurrentTypeface(Ljava/lang/String;)V

    .line 2641
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    instance-of v1, v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz v1, :cond_0

    .line 2642
    check-cast v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->setTypeface(Lorg/telegram/ui/Components/Paint/PaintTypeface;)V

    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 1599
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->ignoreLayout:Z

    if-eqz v0, :cond_0

    return-void

    .line 1602
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public setBlurredBackgroundDrawableForTools(Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;)V
    .locals 1

    const/high16 v0, 0x40800000    # 4.0f

    .line 1868
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->setPadding(I)Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->blurredBackgroundDrawableForTools:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    return-void
.end method

.method public setDrawShadow(Z)V
    .locals 0

    .line 973
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->drawShadow:Z

    .line 974
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    xor-int/lit8 p1, p1, 0x1

    .line 975
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    return-void
.end method

.method public setOffsetTranslationX(F)V
    .locals 1

    .line 1839
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->tabsSelectedIndex:I

    if-nez v0, :cond_0

    .line 1840
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    :cond_0
    return-void
.end method

.method public setOffsetTranslationY(FFIZ)V
    .locals 0

    .line 1846
    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->offsetTranslationY:F

    if-nez p4, :cond_0

    .line 1848
    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->topLayout:Landroid/widget/FrameLayout;

    neg-float p3, p1

    invoke-virtual {p2, p3}, Landroid/view/View;->setTranslationY(F)V

    .line 1849
    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->bottomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 1851
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public setOnDoneButtonClickedListener(Ljava/lang/Runnable;)V
    .locals 0

    .line 1057
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->onDoneButtonClickedListener:Ljava/lang/Runnable;

    return-void
.end method

.method public setTransform(FFFFF)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    .line 2137
    iput v1, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->scale:F

    .line 2138
    iput v4, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->imageWidth:F

    .line 2139
    iput v5, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->imageHeight:F

    .line 2140
    iput v2, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->inputTransformX:F

    .line 2141
    iput v3, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->inputTransformY:F

    .line 2142
    iput v2, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->transformX:F

    .line 2143
    iget v6, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->panTranslationY:F

    add-float/2addr v3, v6

    .line 2144
    iput v3, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->transformY:F

    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x4

    if-ge v6, v7, :cond_a

    if-nez v6, :cond_0

    .line 2149
    iget-object v7, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    goto :goto_1

    :cond_0
    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 2151
    iget-object v7, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->selectionContainerView:Landroid/widget/FrameLayout;

    goto :goto_1

    :cond_1
    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    .line 2153
    iget-object v7, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    goto :goto_1

    .line 2155
    :cond_2
    iget-object v7, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderInputView:Landroid/view/View;

    .line 2160
    :goto_1
    iget-object v8, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentCropState:Lorg/telegram/messenger/MediaController$CropState;

    const/high16 v9, 0x3f800000    # 1.0f

    if-eqz v8, :cond_7

    .line 2161
    iget v8, v8, Lorg/telegram/messenger/MediaController$CropState;->cropScale:F

    mul-float/2addr v8, v9

    .line 2163
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    .line 2164
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    if-eqz v10, :cond_6

    if-nez v11, :cond_3

    goto :goto_2

    .line 2168
    :cond_3
    iget-object v12, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentCropState:Lorg/telegram/messenger/MediaController$CropState;

    iget v13, v12, Lorg/telegram/messenger/MediaController$CropState;->transformRotation:I

    const/16 v14, 0x5a

    if-eq v13, v14, :cond_4

    const/16 v14, 0x10e

    if-ne v13, v14, :cond_5

    :cond_4
    move/from16 v16, v11

    move v11, v10

    move/from16 v10, v16

    :cond_5
    int-to-float v10, v10

    .line 2176
    iget v14, v12, Lorg/telegram/messenger/MediaController$CropState;->cropPw:F

    mul-float/2addr v14, v10

    float-to-int v14, v14

    int-to-float v11, v11

    .line 2177
    iget v12, v12, Lorg/telegram/messenger/MediaController$CropState;->cropPh:F

    mul-float/2addr v12, v11

    float-to-int v12, v12

    int-to-float v14, v14

    div-float v14, v4, v14

    int-to-float v12, v12

    div-float v12, v5, v12

    .line 2179
    invoke-static {v14, v12}, Ljava/lang/Math;->max(FF)F

    move-result v12

    mul-float/2addr v8, v12

    .line 2182
    iget-object v14, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentCropState:Lorg/telegram/messenger/MediaController$CropState;

    iget v15, v14, Lorg/telegram/messenger/MediaController$CropState;->cropPx:F

    mul-float/2addr v15, v10

    mul-float/2addr v15, v1

    mul-float/2addr v15, v12

    iget v10, v14, Lorg/telegram/messenger/MediaController$CropState;->cropScale:F

    mul-float/2addr v15, v10

    add-float/2addr v15, v2

    move/from16 p3, v9

    .line 2183
    iget v9, v14, Lorg/telegram/messenger/MediaController$CropState;->cropPy:F

    mul-float/2addr v9, v11

    mul-float/2addr v9, v1

    mul-float/2addr v9, v12

    mul-float/2addr v9, v10

    add-float/2addr v9, v3

    .line 2184
    iget v10, v14, Lorg/telegram/messenger/MediaController$CropState;->cropRotate:F

    int-to-float v11, v13

    add-float/2addr v10, v11

    goto :goto_4

    :cond_6
    :goto_2
    return-void

    :cond_7
    move/from16 p3, v9

    if-nez v6, :cond_8

    .line 2187
    iget v8, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->baseScale:F

    mul-float v8, v8, p3

    goto :goto_3

    :cond_8
    move/from16 v8, p3

    :goto_3
    const/4 v10, 0x0

    move v15, v2

    move v9, v3

    .line 2192
    :goto_4
    iget v11, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiPadding:I

    neg-int v11, v11

    int-to-float v11, v11

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    add-float/2addr v9, v11

    mul-float/2addr v8, v1

    .line 2194
    invoke-static {v8}, Ljava/lang/Float;->isNaN(F)Z

    move-result v11

    if-eqz v11, :cond_9

    move/from16 v8, p3

    .line 2197
    :cond_9
    invoke-virtual {v7, v8}, Landroid/view/View;->setScaleX(F)V

    .line 2198
    invoke-virtual {v7, v8}, Landroid/view/View;->setScaleY(F)V

    .line 2199
    invoke-virtual {v7, v15}, Landroid/view/View;->setTranslationX(F)V

    .line 2200
    invoke-virtual {v7, v9}, Landroid/view/View;->setTranslationY(F)V

    .line 2201
    invoke-virtual {v7, v10}, Landroid/view/View;->setRotation(F)V

    .line 2202
    invoke-virtual {v7}, Landroid/view/View;->invalidate()V

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 2204
    :cond_a
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->updateEntitiesSelections()V

    .line 2205
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public shutdown()V
    .locals 2

    .line 1811
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/RenderView;->shutdown()V

    .line 1812
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1813
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->selectionContainerView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1815
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->queue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda24;

    invoke-direct {v1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda24;-><init>()V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public translateY(F)V
    .locals 7

    .line 995
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->pany:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3dcccccd    # 0.1f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 996
    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->pany:F

    .line 997
    iget v2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->scale:F

    iget v3, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->inputTransformX:F

    iget v4, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->inputTransformY:F

    iget v5, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->imageWidth:F

    iget v6, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->imageHeight:F

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->setTransform(FFFFF)V

    :cond_0
    return-void
.end method

.method public updateColors()V
    .locals 2

    .line 1862
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->toolsPaint:Landroid/graphics/Paint;

    const v1, -0xe6e6e7

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public updateEntitiesSelections()V
    .locals 3

    const/4 v0, 0x0

    .line 2209
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 2210
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2211
    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    if-eq v1, v2, :cond_0

    instance-of v2, v1, Lorg/telegram/ui/Components/Paint/Views/EntityView;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->isSelectedProgress()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2212
    :cond_0
    check-cast v1, Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->updateSelectionView()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected abstract updateKeyboard()V
.end method

.method public updatePlusEmojiKeyboardButton()V
    .locals 15

    .line 3527
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    if-eqz v0, :cond_2

    .line 3528
    iget-boolean v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->keyboardVisible:Z

    if-eqz v1, :cond_0

    .line 3529
    sget v1, Lorg/telegram/messenger/R$drawable;->input_smile:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->animatePlusToIcon(I)V

    goto :goto_0

    .line 3530
    :cond_0
    iget-boolean v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiViewVisible:Z

    if-eqz v1, :cond_1

    .line 3531
    sget v1, Lorg/telegram/messenger/R$drawable;->input_keyboard:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->animatePlusToIcon(I)V

    goto :goto_0

    .line 3533
    :cond_1
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_add:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->animatePlusToIcon(I)V

    .line 3537
    :cond_2
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->undoAllButton:Landroid/widget/TextView;

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->keyboardVisible:Z

    const/4 v1, 0x0

    const/4 v8, 0x1

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiViewVisible:Z

    if-nez v0, :cond_3

    move v3, v8

    goto :goto_1

    :cond_3
    move v3, v1

    :goto_1
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static/range {v2 .. v7}, Lorg/telegram/messenger/AndroidUtilities;->updateViewShow(Landroid/view/View;ZZFZLjava/lang/Runnable;)V

    .line 3538
    iget-object v9, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->undoButton:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->keyboardVisible:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiViewVisible:Z

    if-nez v0, :cond_4

    move v10, v8

    goto :goto_2

    :cond_4
    move v10, v1

    :goto_2
    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-static/range {v9 .. v14}, Lorg/telegram/messenger/AndroidUtilities;->updateViewShow(Landroid/view/View;ZZFZLjava/lang/Runnable;)V

    .line 3540
    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->doneTextButton:Landroid/widget/TextView;

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->keyboardVisible:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiViewVisible:Z

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    move v3, v1

    goto :goto_4

    :cond_6
    :goto_3
    move v3, v8

    :goto_4
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static/range {v2 .. v7}, Lorg/telegram/messenger/AndroidUtilities;->updateViewShow(Landroid/view/View;ZZFZLjava/lang/Runnable;)V

    .line 3541
    iget-object v9, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->cancelTextButton:Landroid/widget/TextView;

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->keyboardVisible:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiViewVisible:Z

    if-eqz v0, :cond_7

    goto :goto_5

    :cond_7
    move v10, v1

    goto :goto_6

    :cond_8
    :goto_5
    move v10, v8

    :goto_6
    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-static/range {v9 .. v14}, Lorg/telegram/messenger/AndroidUtilities;->updateViewShow(Landroid/view/View;ZZFZLjava/lang/Runnable;)V

    return-void
.end method

.method public updateZoom(Z)V
    .locals 2

    xor-int/lit8 v0, p1, 0x1

    .line 1078
    iget-boolean v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->zoomOutVisible:Z

    if-eq v1, v0, :cond_1

    .line 1079
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->zoomOutVisible:Z

    .line 1080
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->zoomOutButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1081
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->zoomOutButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0xf0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_1
    return-void
.end method
