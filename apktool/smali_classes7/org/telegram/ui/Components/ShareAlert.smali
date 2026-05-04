.class public Lorg/telegram/ui/Components/ShareAlert;
.super Lorg/telegram/ui/ActionBar/BottomSheet;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;,
        Lorg/telegram/ui/Components/ShareAlert$SwitchView;,
        Lorg/telegram/ui/Components/ShareAlert$ShareTopicsAdapter;,
        Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;,
        Lorg/telegram/ui/Components/ShareAlert$ShareAlertDelegate;,
        Lorg/telegram/ui/Components/ShareAlert$DialogSearchResult;
    }
.end annotation


# instance fields
.field private animatorSet:Landroid/animation/AnimatorSet;

.field private bottomFadeView:Landroid/view/View;

.field private bulletinContainer:Landroid/widget/FrameLayout;

.field public bulletinContainer2:Landroid/widget/FrameLayout;

.field private captionContainerBg:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

.field private captionEditTextTopOffset:F

.field private chatActivityEnterViewAnimateFromTop:F

.field private commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

.field private containerViewTop:I

.field private copyLinkOnEnd:Z

.field private currentPanTranslationY:F

.field private darkTheme:Z

.field private delegate:Lorg/telegram/ui/Components/ShareAlert$ShareAlertDelegate;

.field private emojiViewChildBg:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

.field private exportedMessageLink:Lorg/telegram/tgnet/TLRPC$TL_exportedMessageLink;

.field private fadeDrawable:Lorg/telegram/ui/Components/blur3/BlurredBackgroundWithFadeDrawable;

.field public forceDarkThemeForHint:Z

.field private frameLayout:Landroid/widget/FrameLayout;

.field private frameLayout2:Landroid/widget/FrameLayout;

.field private fullyShown:Z

.field private gridView:Lorg/telegram/ui/Components/RecyclerListView;

.field private hasPoll:I

.field private hideCaption:Z

.field private hideSendersName:Z

.field private iBlur3Capture:Lorg/telegram/ui/Components/blur3/capture/IBlur3Capture;

.field private final iBlur3FactoryFade:Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;

.field private final iBlur3FactoryFrostedLiquidGlass:Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;

.field private final iBlur3FactoryLiquidGlass:Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;

.field private final iBlur3PositionMainTabs:Landroid/graphics/RectF;

.field private final iBlur3Positions:Ljava/util/ArrayList;

.field private final iBlur3SourceColor:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceColor;

.field private final iBlur3SourceGlass:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

.field private final iBlur3SourceGlassFrosted:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

.field private includeStory:Z

.field public includeStoryFromMessage:Z

.field private isChannel:Z

.field private keyboardSize2:I

.field private keyboardT:F

.field lastOffset:I

.field private layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

.field private linkContainer:Landroid/widget/LinearLayout;

.field private linkCopyButton:Landroid/widget/TextView;

.field private linkTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

.field private linkToCopy:[Ljava/lang/String;

.field private listAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;

.field private loadingLink:Z

.field private paint:Landroid/graphics/Paint;

.field private panTranslationMoveLayout:Z

.field private parentActivity:Landroid/app/Activity;

.field private parentFragment:Lorg/telegram/ui/ChatActivity;

.field private pickerBottom:Landroid/widget/FrameLayout;

.field private pickerBottomLayout:Landroid/widget/FrameLayout;

.field private previousScrollOffsetY:I

.field private recentSearchObjects:Ljava/util/ArrayList;

.field private recentSearchObjectsById:Landroidx/collection/LongSparseArray;

.field private rect:Landroid/graphics/RectF;

.field recyclerItemsEnterAnimator:Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;

.field private scrollOffsetY:I

.field private final scrollableViewNoiseSuppressor:Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;

.field private searchAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;

.field private searchEmptyView:Lorg/telegram/ui/Components/StickerEmptyView;

.field private searchGridView:Lorg/telegram/ui/Components/RecyclerListView;

.field private searchIsVisible:Z

.field private searchLayoutManager:Lorg/telegram/ui/Components/FillLastGridLayoutManager;

.field searchView:Lorg/telegram/ui/Components/FragmentSearchField;

.field private searchWasVisibleBeforeTopics:Z

.field protected selectedDialogTopics:Ljava/util/Map;

.field protected selectedDialogs:Landroidx/collection/LongSparseArray;

.field private selectedTopicDialog:Lorg/telegram/tgnet/TLRPC$Dialog;

.field private sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

.field private sendingFile:Ljava/lang/String;

.field protected sendingMessageObjects:Ljava/util/ArrayList;

.field private sendingText:[Ljava/lang/String;

.field private shadow:[Landroid/view/View;

.field private shadowAnimation:[Landroid/animation/AnimatorSet;

.field private shadowDrawable:Landroid/graphics/drawable/Drawable;

.field private shareTopicsAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareTopicsAdapter;

.field private sharesCountLayout:Landroid/widget/LinearLayout;

.field private shiftDp:I

.field private sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

.field storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

.field private switchView:Lorg/telegram/ui/Components/ShareAlert$SwitchView;

.field private textPaint:Landroid/text/TextPaint;

.field public timestamp:I

.field public timestampCheckbox:Lorg/telegram/ui/Components/CheckBox2;

.field public timestampFrameLayout:Landroid/widget/FrameLayout;

.field public timestampLayout:Landroid/widget/LinearLayout;

.field public timestampTextView:Landroid/widget/TextView;

.field private topBackgroundAnimator:Landroid/animation/ValueAnimator;

.field private topBeforeSwitch:I

.field private topicsAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

.field topicsBackActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

.field private topicsGridView:Lorg/telegram/ui/Components/RecyclerListView;

.field private topicsLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

.field private updateSearchAdapter:Z

.field private writeButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

.field private writeButtonContainer:Landroid/widget/FrameLayout;


# direct methods
.method public static synthetic $r8$lambda$-R3osssVusRZcx1n3GlP10yQA-g(Lorg/telegram/ui/Components/ShareAlert;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ShareAlert;->lambda$showPremiumBlockedToast$20()V

    return-void
.end method

.method public static synthetic $r8$lambda$0FKl3ou399TBylU7OM5qnRj_P-0(Lorg/telegram/ui/Components/ShareAlert;Landroid/view/View;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ShareAlert;->lambda$new$9(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$1PcynxTGhKcpqzn9H9A8Iu69dXA(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    const/4 p0, 0x0

    .line 1183
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$2WnK0lM2aLfPKhvcqiElLqi_Frc(Lorg/telegram/ui/Components/ShareAlert;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ShareAlert;->lambda$onSendLongClick$28(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4nCFr4Ea_8NmLqeAafRfVmXzm24(ZLorg/telegram/ui/Components/BulletinFactory;)Lorg/telegram/ui/Components/Bulletin;
    .locals 0

    .line 2893
    invoke-virtual {p1, p0}, Lorg/telegram/ui/Components/BulletinFactory;->createCopyLinkBulletin(Z)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$8sKW0oonFKzVckKz6pjYENNob-4(Lorg/telegram/ui/Components/ShareAlert;Lorg/telegram/messenger/MessageObject;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ShareAlert;->lambda$new$12(Lorg/telegram/messenger/MessageObject;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BoHI5SNXimi7_VUaV4p8JhzEllY(Lorg/telegram/ui/Components/ShareAlert;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/ShareAlert;->lambda$new$2(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$DbEH8jHjKr1B3KG1CT9NEs7Mbtk(Lorg/telegram/ui/Components/ShareAlert;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ShareAlert;->lambda$new$16(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GOMIoYAFqLREbRXjM_og1HpvK7o(Lorg/telegram/ui/Components/ShareAlert;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ShareAlert;->lambda$new$10(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ggozi3Une-GGL--FydaiafWRpgY(Lorg/telegram/ui/Components/ShareAlert;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/ShareAlert;->lambda$collapseTopics$23(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$O9AnHxh4UHGQdf85w4AGxxpYDao(Lorg/telegram/ui/Components/ShareAlert;Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/ShareAlert;->lambda$onSendLongClick$26(Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TE1qSV15g8GKfb8CtDD6Saq4hEs(Lorg/telegram/ui/Components/ShareAlert;Lorg/telegram/tgnet/TLObject;Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ShareAlert;->lambda$new$0(Lorg/telegram/tgnet/TLObject;Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WlEDRalune-1YsBIgtpe7uUY1f4(Lorg/telegram/ui/Components/ShareAlert;Landroid/view/View;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ShareAlert;->lambda$new$5(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZisXH2MphOIUgyFxLnQF-3tcrzY(Lorg/telegram/ui/Components/ShareAlert;Landroid/view/View;[ILandroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Components/ShareAlert;->lambda$collapseTopics$22(Landroid/view/View;[ILandroidx/dynamicanimation/animation/DynamicAnimation;FF)V

    return-void
.end method

.method public static synthetic $r8$lambda$a9AUzfJ1iGi9AjesNwq3XuSe65Q(Lorg/telegram/ui/Components/ShareAlert;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ShareAlert;->lambda$new$11(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$afmCE9Pb9L9r-x1QIMJCy2kiVaE(Lorg/telegram/ui/Components/ShareAlert;Landroid/content/Context;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/ShareAlert;->lambda$new$1(Landroid/content/Context;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bUExi21MOBhz5Aw_y8e8V7bU0-M(Lorg/telegram/ui/Components/ShareAlert;[Ljava/lang/CharSequence;Ljava/util/ArrayList;ZILjava/util/HashMap;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Components/ShareAlert;->lambda$sendInternal$30([Ljava/lang/CharSequence;Ljava/util/ArrayList;ZILjava/util/HashMap;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cYrHFUawrwPZAiMrLTCHATfBRWk(Lorg/telegram/ui/Components/ShareAlert;Ljava/util/concurrent/atomic/AtomicReference;Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;Lorg/telegram/tgnet/TLRPC$Dialog;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/ShareAlert;->lambda$selectDialog$21(Ljava/util/concurrent/atomic/AtomicReference;Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;Lorg/telegram/tgnet/TLRPC$Dialog;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dgRvlUHFv1P8WlXWlLcWEJrLJNg(Lorg/telegram/ui/Components/ShareAlert;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ShareAlert;->lambda$new$18(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ecX7uqh2NAahRSKkgn7yzUDSRcY(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    const/4 p0, 0x0

    .line 1133
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$fa9TxitH_bTtIw4ogWXMyiVk3as(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1606
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$in-tXLdsuvjpDYLcPbeUivaVau8(Lorg/telegram/ui/Components/ShareAlert;Landroid/view/View;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ShareAlert;->lambda$new$7(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$kNeyjrWvZmR0p8PZco1tiL2u_Zo(Lorg/telegram/ui/Components/ShareAlert;Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/ShareAlert;->lambda$onSendLongClick$25(Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kRHPZFpOvYVFQ8Z_KS8LW6nHJEU(Lorg/telegram/ui/Components/ShareAlert;Landroid/view/KeyEvent;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ShareAlert;->lambda$onSendLongClick$24(Landroid/view/KeyEvent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pkcVO4IZuQED7bWMpZ0D-eYQDRQ(Lorg/telegram/ui/Components/ShareAlert;Landroid/view/KeyEvent;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ShareAlert;->lambda$onSendLongClick$27(Landroid/view/KeyEvent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qkwDv7PSB2Nua20LSuVOwcrHWOU(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    const/4 p0, 0x0

    .line 1266
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$sex-qhelEX7tZWAaX_rMBCQol_w(Lorg/telegram/ui/Components/ShareAlert;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ShareAlert;->lambda$new$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$svpZTujGYxbwjioQLPdPQE8GdIA(Lorg/telegram/ui/Components/ShareAlert;Landroid/view/View;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ShareAlert;->lambda$new$17(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$uBQvMA5PC8fQnueSXOMr8axi--8(Lorg/telegram/ui/Components/ShareAlert;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ShareAlert;->lambda$onSendLongClick$29(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zIySNlfjdaZnyQ7LG4nDjEIRPKc()V
    .locals 4

    .line 1923
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1925
    new-instance v1, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;

    invoke-direct {v1}, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;-><init>()V

    const/4 v2, 0x1

    .line 1926
    iput-boolean v2, v1, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;->transitionFromLeft:Z

    const/4 v2, 0x0

    .line 1927
    iput-boolean v2, v1, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;->allowNestedScroll:Z

    .line 1928
    new-instance v2, Lorg/telegram/ui/PremiumPreviewFragment;

    const-string v3, "noncontacts"

    invoke-direct {v2, v3}, Lorg/telegram/ui/PremiumPreviewFragment;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showAsSheet(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;)[Lorg/telegram/ui/ActionBar/INavigationLayout;

    :cond_0
    return-void
.end method

.method static bridge synthetic -$$Nest$fgetanimatorSet(Lorg/telegram/ui/Components/ShareAlert;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ShareAlert;->animatorSet:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetbottomFadeView(Lorg/telegram/ui/Components/ShareAlert;)Landroid/view/View;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ShareAlert;->bottomFadeView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetbulletinContainer(Lorg/telegram/ui/Components/ShareAlert;)Landroid/widget/FrameLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ShareAlert;->bulletinContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcaptionContainerBg(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ShareAlert;->captionContainerBg:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcaptionEditTextTopOffset(Lorg/telegram/ui/Components/ShareAlert;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/ShareAlert;->captionEditTextTopOffset:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetchatActivityEnterViewAnimateFromTop(Lorg/telegram/ui/Components/ShareAlert;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/ShareAlert;->chatActivityEnterViewAnimateFromTop:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcommentTextView(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/EditTextEmoji;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ShareAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentPanTranslationY(Lorg/telegram/ui/Components/ShareAlert;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/ShareAlert;->currentPanTranslationY:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetdarkTheme(Lorg/telegram/ui/Components/ShareAlert;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/ShareAlert;->darkTheme:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetemojiViewChildBg(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ShareAlert;->emojiViewChildBg:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetfadeDrawable(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/blur3/BlurredBackgroundWithFadeDrawable;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ShareAlert;->fadeDrawable:Lorg/telegram/ui/Components/blur3/BlurredBackgroundWithFadeDrawable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetframeLayout(Lorg/telegram/ui/Components/ShareAlert;)Landroid/widget/FrameLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ShareAlert;->frameLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetframeLayout2(Lorg/telegram/ui/Components/ShareAlert;)Landroid/widget/FrameLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ShareAlert;->frameLayout2:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetfullyShown(Lorg/telegram/ui/Components/ShareAlert;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/ShareAlert;->fullyShown:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetgridView(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetiBlur3SourceGlass(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ShareAlert;->iBlur3SourceGlass:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetiBlur3SourceGlassFrosted(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ShareAlert;->iBlur3SourceGlassFrosted:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetincludeStory(Lorg/telegram/ui/Components/ShareAlert;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/ShareAlert;->includeStory:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetkeyboardSize2(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/ShareAlert;->keyboardSize2:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlayoutManager(Lorg/telegram/ui/Components/ShareAlert;)Landroidx/recyclerview/widget/GridLayoutManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ShareAlert;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlinkToCopy(Lorg/telegram/ui/Components/ShareAlert;)[Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ShareAlert;->linkToCopy:[Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlistAdapter(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ShareAlert;->listAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetparentFragment(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/ChatActivity;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ShareAlert;->parentFragment:Lorg/telegram/ui/ChatActivity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpickerBottom(Lorg/telegram/ui/Components/ShareAlert;)Landroid/widget/FrameLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ShareAlert;->pickerBottom:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpickerBottomLayout(Lorg/telegram/ui/Components/ShareAlert;)Landroid/widget/FrameLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ShareAlert;->pickerBottomLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpreviousScrollOffsetY(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/ShareAlert;->previousScrollOffsetY:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetrecentSearchObjects(Lorg/telegram/ui/Components/ShareAlert;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ShareAlert;->recentSearchObjects:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetscrollOffsetY(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/ShareAlert;->scrollOffsetY:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetscrollableViewNoiseSuppressor(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ShareAlert;->scrollableViewNoiseSuppressor:Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsearchAdapter(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ShareAlert;->searchAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsearchEmptyView(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/StickerEmptyView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ShareAlert;->searchEmptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsearchGridView(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ShareAlert;->searchGridView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsearchIsVisible(Lorg/telegram/ui/Components/ShareAlert;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/ShareAlert;->searchIsVisible:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsearchLayoutManager(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/FillLastGridLayoutManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ShareAlert;->searchLayoutManager:Lorg/telegram/ui/Components/FillLastGridLayoutManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetselectedTopicDialog(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/tgnet/TLRPC$Dialog;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ShareAlert;->selectedTopicDialog:Lorg/telegram/tgnet/TLRPC$Dialog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsendPopupWindow(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ShareAlert;->sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetshadow(Lorg/telegram/ui/Components/ShareAlert;)[Landroid/view/View;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ShareAlert;->shadow:[Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetshadowAnimation(Lorg/telegram/ui/Components/ShareAlert;)[Landroid/animation/AnimatorSet;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ShareAlert;->shadowAnimation:[Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetshadowDrawable(Lorg/telegram/ui/Components/ShareAlert;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ShareAlert;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetshareTopicsAdapter(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/ShareAlert$ShareTopicsAdapter;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ShareAlert;->shareTopicsAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareTopicsAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsharesCountLayout(Lorg/telegram/ui/Components/ShareAlert;)Landroid/widget/LinearLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ShareAlert;->sharesCountLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettopBackgroundAnimator(Lorg/telegram/ui/Components/ShareAlert;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ShareAlert;->topBackgroundAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettopicsAnimation(Lorg/telegram/ui/Components/ShareAlert;)Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ShareAlert;->topicsAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettopicsGridView(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ShareAlert;->topicsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettopicsLayoutManager(Lorg/telegram/ui/Components/ShareAlert;)Landroidx/recyclerview/widget/GridLayoutManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ShareAlert;->topicsLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetupdateSearchAdapter(Lorg/telegram/ui/Components/ShareAlert;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/ShareAlert;->updateSearchAdapter:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetwriteButtonContainer(Lorg/telegram/ui/Components/ShareAlert;)Landroid/widget/FrameLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ShareAlert;->writeButtonContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputanimatorSet(Lorg/telegram/ui/Components/ShareAlert;Landroid/animation/AnimatorSet;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->animatorSet:Landroid/animation/AnimatorSet;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputcaptionEditTextTopOffset(Lorg/telegram/ui/Components/ShareAlert;F)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Components/ShareAlert;->captionEditTextTopOffset:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputchatActivityEnterViewAnimateFromTop(Lorg/telegram/ui/Components/ShareAlert;F)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Components/ShareAlert;->chatActivityEnterViewAnimateFromTop:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputcontainerViewTop(Lorg/telegram/ui/Components/ShareAlert;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Components/ShareAlert;->containerViewTop:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputcurrentPanTranslationY(Lorg/telegram/ui/Components/ShareAlert;F)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Components/ShareAlert;->currentPanTranslationY:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputfullyShown(Lorg/telegram/ui/Components/ShareAlert;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ShareAlert;->fullyShown:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputkeyboardSize2(Lorg/telegram/ui/Components/ShareAlert;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Components/ShareAlert;->keyboardSize2:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputkeyboardT(Lorg/telegram/ui/Components/ShareAlert;F)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Components/ShareAlert;->keyboardT:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputpanTranslationMoveLayout(Lorg/telegram/ui/Components/ShareAlert;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ShareAlert;->panTranslationMoveLayout:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputpreviousScrollOffsetY(Lorg/telegram/ui/Components/ShareAlert;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Components/ShareAlert;->previousScrollOffsetY:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputrecentSearchObjects(Lorg/telegram/ui/Components/ShareAlert;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->recentSearchObjects:Ljava/util/ArrayList;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputrecentSearchObjectsById(Lorg/telegram/ui/Components/ShareAlert;Landroidx/collection/LongSparseArray;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->recentSearchObjectsById:Landroidx/collection/LongSparseArray;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputscrollOffsetY(Lorg/telegram/ui/Components/ShareAlert;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Components/ShareAlert;->scrollOffsetY:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputsearchWasVisibleBeforeTopics(Lorg/telegram/ui/Components/ShareAlert;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ShareAlert;->searchWasVisibleBeforeTopics:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputtopBackgroundAnimator(Lorg/telegram/ui/Components/ShareAlert;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->topBackgroundAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputtopBeforeSwitch(Lorg/telegram/ui/Components/ShareAlert;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Components/ShareAlert;->topBeforeSwitch:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputtopicsAnimation(Lorg/telegram/ui/Components/ShareAlert;Landroidx/dynamicanimation/animation/SpringAnimation;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->topicsAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    return-void
.end method

.method static bridge synthetic -$$Nest$mblur3_InvalidateBlur(Lorg/telegram/ui/Components/ShareAlert;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ShareAlert;->blur3_InvalidateBlur()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckCurrentList(Lorg/telegram/ui/Components/ShareAlert;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ShareAlert;->checkCurrentList(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetCurrentTop(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ShareAlert;->getCurrentTop()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$minvalidateTopicsAnimation(Lorg/telegram/ui/Components/ShareAlert;Landroid/view/View;[IF)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/ShareAlert;->invalidateTopicsAnimation(Landroid/view/View;[IF)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mselectDialog(Lorg/telegram/ui/Components/ShareAlert;Landroid/view/View;Lorg/telegram/tgnet/TLRPC$Dialog;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ShareAlert;->selectDialog(Landroid/view/View;Lorg/telegram/tgnet/TLRPC$Dialog;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowPremiumBlockedToast(Lorg/telegram/ui/Components/ShareAlert;Landroid/view/View;J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/ShareAlert;->showPremiumBlockedToast(Landroid/view/View;J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateLayout(Lorg/telegram/ui/Components/ShareAlert;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ShareAlert;->updateLayout()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateLinkTextView(Lorg/telegram/ui/Components/ShareAlert;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ShareAlert;->updateLinkTextView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;ZLjava/lang/String;Z)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    .line 381
    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Components/ShareAlert;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;ZLjava/lang/String;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;ZLjava/lang/String;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 15

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v10, p6

    move-object/from16 v14, p7

    .line 385
    invoke-direct/range {v0 .. v14}, Lorg/telegram/ui/Components/ShareAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/ChatActivity;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZZLjava/lang/Integer;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ChatActivity;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZZLjava/lang/Integer;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move/from16 v3, p7

    move/from16 v4, p11

    move-object/from16 v5, p14

    const/4 v6, 0x1

    .line 393
    invoke-direct {v0, v1, v6, v5}, Lorg/telegram/ui/ActionBar/BottomSheet;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 v7, 0x2

    .line 173
    new-array v8, v7, [Ljava/lang/String;

    iput-object v8, v0, Lorg/telegram/ui/Components/ShareAlert;->sendingText:[Ljava/lang/String;

    .line 178
    new-array v8, v7, [Landroid/view/View;

    iput-object v8, v0, Lorg/telegram/ui/Components/ShareAlert;->shadow:[Landroid/view/View;

    .line 179
    new-array v8, v7, [Landroid/animation/AnimatorSet;

    iput-object v8, v0, Lorg/telegram/ui/Components/ShareAlert;->shadowAnimation:[Landroid/animation/AnimatorSet;

    .line 180
    new-instance v8, Landroidx/collection/LongSparseArray;

    invoke-direct {v8}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object v8, v0, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogs:Landroidx/collection/LongSparseArray;

    .line 181
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, v0, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogTopics:Ljava/util/Map;

    const/4 v8, -0x1

    .line 183
    iput v8, v0, Lorg/telegram/ui/Components/ShareAlert;->containerViewTop:I

    const/4 v9, 0x0

    .line 184
    iput-boolean v9, v0, Lorg/telegram/ui/Components/ShareAlert;->fullyShown:Z

    .line 200
    new-instance v10, Landroid/graphics/RectF;

    invoke-direct {v10}, Landroid/graphics/RectF;-><init>()V

    iput-object v10, v0, Lorg/telegram/ui/Components/ShareAlert;->rect:Landroid/graphics/RectF;

    .line 201
    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10, v6}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v10, v0, Lorg/telegram/ui/Components/ShareAlert;->paint:Landroid/graphics/Paint;

    .line 202
    new-instance v10, Landroid/text/TextPaint;

    invoke-direct {v10, v6}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v10, v0, Lorg/telegram/ui/Components/ShareAlert;->textPaint:Landroid/text/TextPaint;

    .line 209
    new-array v10, v7, [Ljava/lang/String;

    iput-object v10, v0, Lorg/telegram/ui/Components/ShareAlert;->linkToCopy:[Ljava/lang/String;

    .line 232
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v0, Lorg/telegram/ui/Components/ShareAlert;->recentSearchObjects:Ljava/util/ArrayList;

    .line 233
    new-instance v10, Landroidx/collection/LongSparseArray;

    invoke-direct {v10}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object v10, v0, Lorg/telegram/ui/Components/ShareAlert;->recentSearchObjectsById:Landroidx/collection/LongSparseArray;

    const/4 v10, 0x4

    .line 1944
    iput v10, v0, Lorg/telegram/ui/Components/ShareAlert;->shiftDp:I

    .line 2237
    iput-boolean v9, v0, Lorg/telegram/ui/Components/ShareAlert;->hideSendersName:Z

    .line 2238
    iput-boolean v9, v0, Lorg/telegram/ui/Components/ShareAlert;->hideCaption:Z

    const v11, 0x7fffffff

    .line 2777
    iput v11, v0, Lorg/telegram/ui/Components/ShareAlert;->lastOffset:I

    .line 4102
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v0, Lorg/telegram/ui/Components/ShareAlert;->iBlur3Positions:Ljava/util/ArrayList;

    .line 4103
    new-instance v12, Landroid/graphics/RectF;

    invoke-direct {v12}, Landroid/graphics/RectF;-><init>()V

    iput-object v12, v0, Lorg/telegram/ui/Components/ShareAlert;->iBlur3PositionMainTabs:Landroid/graphics/RectF;

    .line 4104
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 395
    new-instance v11, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceColor;

    invoke-direct {v11}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceColor;-><init>()V

    iput-object v11, v0, Lorg/telegram/ui/Components/ShareAlert;->iBlur3SourceColor:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceColor;

    .line 396
    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v0, v12}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v13

    invoke-virtual {v11, v13}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceColor;->setColor(I)V

    .line 397
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x1f

    const/high16 v16, 0x40000

    const/4 v15, 0x0

    if-lt v13, v14, :cond_0

    .line 398
    new-instance v13, Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;

    invoke-direct {v13}, Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;-><init>()V

    iput-object v13, v0, Lorg/telegram/ui/Components/ShareAlert;->scrollableViewNoiseSuppressor:Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;

    .line 399
    new-instance v13, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    invoke-direct {v13, v15}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;-><init>(Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSource;)V

    iput-object v13, v0, Lorg/telegram/ui/Components/ShareAlert;->iBlur3SourceGlass:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    .line 400
    new-instance v14, Lorg/telegram/ui/Components/ShareAlert$1;

    invoke-direct {v14, v0}, Lorg/telegram/ui/Components/ShareAlert$1;-><init>(Lorg/telegram/ui/Components/ShareAlert;)V

    invoke-virtual {v13, v14}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;->setupRenderer(Lorg/telegram/ui/Components/blur3/RenderNodeWithHash$Renderer;)V

    .line 416
    new-instance v14, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    invoke-direct {v14, v15}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;-><init>(Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSource;)V

    iput-object v14, v0, Lorg/telegram/ui/Components/ShareAlert;->iBlur3SourceGlassFrosted:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    .line 417
    new-instance v10, Lorg/telegram/ui/Components/ShareAlert$2;

    invoke-direct {v10, v0}, Lorg/telegram/ui/Components/ShareAlert$2;-><init>(Lorg/telegram/ui/Components/ShareAlert;)V

    invoke-virtual {v14, v10}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;->setupRenderer(Lorg/telegram/ui/Components/blur3/RenderNodeWithHash$Renderer;)V

    .line 433
    new-instance v10, Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;

    invoke-direct {v10, v13}, Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;-><init>(Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSource;)V

    iput-object v10, v0, Lorg/telegram/ui/Components/ShareAlert;->iBlur3FactoryLiquidGlass:Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;

    .line 434
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result v13

    invoke-virtual {v10, v13}, Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;->setLiquidGlassEffectAllowed(Z)V

    .line 435
    new-instance v10, Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;

    invoke-direct {v10, v14}, Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;-><init>(Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSource;)V

    iput-object v10, v0, Lorg/telegram/ui/Components/ShareAlert;->iBlur3FactoryFrostedLiquidGlass:Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;

    .line 436
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result v13

    invoke-virtual {v10, v13}, Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;->setLiquidGlassEffectAllowed(Z)V

    goto :goto_0

    .line 438
    :cond_0
    iput-object v15, v0, Lorg/telegram/ui/Components/ShareAlert;->scrollableViewNoiseSuppressor:Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;

    .line 439
    iput-object v15, v0, Lorg/telegram/ui/Components/ShareAlert;->iBlur3SourceGlassFrosted:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    .line 440
    iput-object v15, v0, Lorg/telegram/ui/Components/ShareAlert;->iBlur3SourceGlass:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    .line 441
    new-instance v10, Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;

    invoke-direct {v10, v11}, Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;-><init>(Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSource;)V

    iput-object v10, v0, Lorg/telegram/ui/Components/ShareAlert;->iBlur3FactoryLiquidGlass:Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;

    .line 442
    new-instance v10, Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;

    invoke-direct {v10, v11}, Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;-><init>(Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSource;)V

    iput-object v10, v0, Lorg/telegram/ui/Components/ShareAlert;->iBlur3FactoryFrostedLiquidGlass:Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;

    .line 444
    :goto_0
    new-instance v10, Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;

    invoke-direct {v10, v11}, Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;-><init>(Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSource;)V

    iput-object v10, v0, Lorg/telegram/ui/Components/ShareAlert;->iBlur3FactoryFade:Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;

    .line 447
    iput-object v5, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move/from16 v5, p12

    .line 448
    iput-boolean v5, v0, Lorg/telegram/ui/Components/ShareAlert;->includeStory:Z

    .line 450
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->findActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v5

    iput-object v5, v0, Lorg/telegram/ui/Components/ShareAlert;->parentActivity:Landroid/app/Activity;

    .line 452
    iput-boolean v4, v0, Lorg/telegram/ui/Components/ShareAlert;->darkTheme:Z

    if-eqz v4, :cond_1

    .line 454
    new-instance v4, Lorg/telegram/ui/Components/ShareAlert$3;

    invoke-direct {v4, v0}, Lorg/telegram/ui/Components/ShareAlert$3;-><init>(Lorg/telegram/ui/Components/ShareAlert;)V

    iput-object v4, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 467
    :cond_1
    invoke-virtual {v0, v12}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v11, v4}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceColor;->setColor(I)V

    move-object/from16 v4, p2

    .line 469
    iput-object v4, v0, Lorg/telegram/ui/Components/ShareAlert;->parentFragment:Lorg/telegram/ui/ChatActivity;

    .line 470
    invoke-static {v4}, Landroidx/activity/OnBackPressedDispatcher$$ExternalSyntheticNonNull0;->m(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 471
    invoke-interface {v4}, Lcom/exteragram/messenger/forward/ForwardContext;->isForwardNoQuote()Z

    move-result v4

    iput-boolean v4, v0, Lorg/telegram/ui/Components/ShareAlert;->hideSendersName:Z

    .line 473
    :cond_2
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$drawable;->sheet_shadow_round:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v0, Lorg/telegram/ui/Components/ShareAlert;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 474
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    iput v4, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->behindKeyboardColorKey:I

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v4

    .line 475
    iget-object v5, v0, Lorg/telegram/ui/Components/ShareAlert;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v10, Landroid/graphics/PorterDuffColorFilter;

    sget-object v11, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v10, v4, v11}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v10}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 477
    iput-boolean v6, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->occupyNavigationBarWithoutKeyboard:Z

    move/from16 v4, p10

    .line 479
    iput-boolean v4, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->isFullscreen:Z

    .line 480
    iget-object v4, v0, Lorg/telegram/ui/Components/ShareAlert;->linkToCopy:[Ljava/lang/String;

    aput-object p8, v4, v9

    .line 481
    aput-object p9, v4, v6

    if-nez p8, :cond_3

    if-nez p9, :cond_3

    if-eqz v2, :cond_3

    .line 482
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 483
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MessageObject;

    .line 484
    iget v5, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v10

    invoke-virtual {v5, v10, v11}, Lorg/telegram/messenger/MessagesController;->getUserOrChat(J)Lorg/telegram/tgnet/TLObject;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/messenger/DialogObject;->getPublicUsername(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v5

    .line 485
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 486
    iget-object v10, v0, Lorg/telegram/ui/Components/ShareAlert;->linkToCopy:[Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "https://"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v12}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v12

    iget-object v12, v12, Lorg/telegram/messenger/MessagesController;->linkPrefix:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v5

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v10, v9

    .line 487
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v5, v6, :cond_3

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->hasValidGroupId()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 488
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lorg/telegram/ui/Components/ShareAlert;->linkToCopy:[Ljava/lang/String;

    aget-object v10, v5, v9

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "?single"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v9

    .line 492
    :cond_3
    iput-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->sendingMessageObjects:Ljava/util/ArrayList;

    .line 493
    new-instance v4, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;

    invoke-direct {v4, v0, v1}, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;-><init>(Lorg/telegram/ui/Components/ShareAlert;Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/Components/ShareAlert;->searchAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;

    .line 494
    iput-boolean v3, v0, Lorg/telegram/ui/Components/ShareAlert;->isChannel:Z

    .line 495
    iget-object v4, v0, Lorg/telegram/ui/Components/ShareAlert;->sendingText:[Ljava/lang/String;

    aput-object p5, v4, v9

    .line 496
    aput-object p6, v4, v6

    move-object/from16 v4, p4

    .line 497
    iput-object v4, v0, Lorg/telegram/ui/Components/ShareAlert;->sendingFile:Ljava/lang/String;

    .line 498
    iput-boolean v6, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->useSmoothKeyboard:Z

    .line 500
    new-instance v4, Lorg/telegram/ui/Components/ShareAlert$4;

    invoke-direct {v4, v0}, Lorg/telegram/ui/Components/ShareAlert$4;-><init>(Lorg/telegram/ui/Components/ShareAlert;)V

    invoke-super {v0, v4}, Lorg/telegram/ui/ActionBar/BottomSheet;->setDelegate(Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetDelegateInterface;)V

    .line 507
    iget-object v4, v0, Lorg/telegram/ui/Components/ShareAlert;->sendingMessageObjects:Ljava/util/ArrayList;

    if-eqz v4, :cond_7

    .line 508
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v5, v9

    :goto_1
    if-ge v5, v4, :cond_7

    .line 509
    iget-object v10, v0, Lorg/telegram/ui/Components/ShareAlert;->sendingMessageObjects:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/messenger/MessageObject;

    .line 510
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->isTodo()Z

    move-result v11

    if-eqz v11, :cond_4

    const/4 v10, 0x3

    .line 511
    iput v10, v0, Lorg/telegram/ui/Components/ShareAlert;->hasPoll:I

    goto :goto_3

    .line 512
    :cond_4
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->isPoll()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 513
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->isPublicPoll()Z

    move-result v10

    if-eqz v10, :cond_5

    move v10, v7

    goto :goto_2

    :cond_5
    move v10, v6

    :goto_2
    iput v10, v0, Lorg/telegram/ui/Components/ShareAlert;->hasPoll:I

    if-ne v10, v7, :cond_6

    goto :goto_4

    :cond_6
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_7
    :goto_4
    if-eqz v3, :cond_8

    if-eqz v2, :cond_8

    .line 521
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8

    .line 522
    iput-boolean v6, v0, Lorg/telegram/ui/Components/ShareAlert;->loadingLink:Z

    .line 523
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_channels_exportMessageLink;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_channels_exportMessageLink;-><init>()V

    .line 524
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    iput v4, v3, Lorg/telegram/tgnet/TLRPC$TL_channels_exportMessageLink;->id:I

    .line 525
    iget v4, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/MessageObject;

    iget-object v5, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v10, v5, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    invoke-virtual {v4, v10, v11}, Lorg/telegram/messenger/MessagesController;->getInputChannel(J)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v4

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_channels_exportMessageLink;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 526
    iget v4, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda2;

    invoke-direct {v5, v0, v1}, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/ShareAlert;Landroid/content/Context;)V

    invoke-virtual {v4, v3, v5}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 539
    :cond_8
    new-instance v3, Lorg/telegram/ui/Components/ShareAlert$5;

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/Components/ShareAlert$5;-><init>(Lorg/telegram/ui/Components/ShareAlert;Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    .line 1011
    iput-object v3, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    .line 1013
    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->iBlur3FactoryLiquidGlass:Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;

    new-instance v4, Lorg/telegram/ui/Components/chat/ViewPositionWatcher;

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-direct {v4, v5}, Lorg/telegram/ui/Components/chat/ViewPositionWatcher;-><init>(Landroid/view/View;)V

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4, v5}, Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;->setSourceRootView(Lorg/telegram/ui/Components/chat/ViewPositionWatcher;Landroid/view/ViewGroup;)V

    .line 1014
    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->iBlur3FactoryFrostedLiquidGlass:Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;

    new-instance v4, Lorg/telegram/ui/Components/chat/ViewPositionWatcher;

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-direct {v4, v5}, Lorg/telegram/ui/Components/chat/ViewPositionWatcher;-><init>(Landroid/view/View;)V

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4, v5}, Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;->setSourceRootView(Lorg/telegram/ui/Components/chat/ViewPositionWatcher;Landroid/view/ViewGroup;)V

    .line 1015
    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->iBlur3FactoryFade:Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;

    new-instance v4, Lorg/telegram/ui/Components/chat/ViewPositionWatcher;

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-direct {v4, v5}, Lorg/telegram/ui/Components/chat/ViewPositionWatcher;-><init>(Landroid/view/View;)V

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4, v5}, Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;->setSourceRootView(Lorg/telegram/ui/Components/chat/ViewPositionWatcher;Landroid/view/ViewGroup;)V

    .line 1017
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v9}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 1018
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v9}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 1019
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget v4, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    sget v5, Lorg/telegram/messenger/AndroidUtilities;->navigationBarHeight:I

    invoke-virtual {v3, v4, v9, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 1021
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->frameLayout:Landroid/widget/FrameLayout;

    .line 1022
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1024
    iget-boolean v3, v0, Lorg/telegram/ui/Components/ShareAlert;->darkTheme:Z

    if-eqz v3, :cond_9

    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->linkToCopy:[Ljava/lang/String;

    aget-object v3, v3, v6

    if-eqz v3, :cond_9

    .line 1025
    new-instance v3, Lorg/telegram/ui/Components/ShareAlert$6;

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/Components/ShareAlert$6;-><init>(Lorg/telegram/ui/Components/ShareAlert;Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->switchView:Lorg/telegram/ui/Components/ShareAlert$SwitchView;

    .line 1031
    iget-object v5, v0, Lorg/telegram/ui/Components/ShareAlert;->frameLayout:Landroid/widget/FrameLayout;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/high16 v13, 0x42100000    # 36.0f

    const/16 v14, 0x33

    const/16 v17, 0x0

    const/high16 v18, 0x41300000    # 11.0f

    move/from16 p9, v10

    move/from16 p10, v11

    move/from16 p4, v12

    move/from16 p5, v13

    move/from16 p6, v14

    move/from16 p7, v17

    move/from16 p8, v18

    invoke-static/range {p4 .. p10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v5, v3, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1034
    :cond_9
    new-instance v3, Lorg/telegram/ui/Components/FragmentSearchField;

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v3, v1, v5}, Lorg/telegram/ui/Components/FragmentSearchField;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->searchView:Lorg/telegram/ui/Components/FragmentSearchField;

    .line 1035
    iget-object v3, v3, Lorg/telegram/ui/Components/FragmentSearchField;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance v5, Lorg/telegram/ui/Components/ShareAlert$7;

    invoke-direct {v5, v0}, Lorg/telegram/ui/Components/ShareAlert$7;-><init>(Lorg/telegram/ui/Components/ShareAlert;)V

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1077
    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->searchView:Lorg/telegram/ui/Components/FragmentSearchField;

    iget-object v3, v3, Lorg/telegram/ui/Components/FragmentSearchField;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v5, Lorg/telegram/messenger/R$string;->ShareSendTo:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 1078
    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->searchView:Lorg/telegram/ui/Components/FragmentSearchField;

    iget-object v3, v3, Lorg/telegram/ui/Components/FragmentSearchField;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance v5, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda10;

    invoke-direct {v5, v0}, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Components/ShareAlert;)V

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 1084
    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->searchView:Lorg/telegram/ui/Components/FragmentSearchField;

    new-instance v5, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda11;

    invoke-direct {v5, v0}, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/Components/ShareAlert;)V

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/FragmentSearchField;->setCloseButtonOnClickListener(Ljava/lang/Runnable;)V

    .line 1090
    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->frameLayout:Landroid/widget/FrameLayout;

    iget-object v5, v0, Lorg/telegram/ui/Components/ShareAlert;->searchView:Lorg/telegram/ui/Components/FragmentSearchField;

    const/high16 v10, 0x41300000    # 11.0f

    const/high16 v11, 0x41300000    # 11.0f

    const/4 v12, -0x1

    const/high16 v13, 0x42200000    # 40.0f

    const/16 v14, 0x53

    const/high16 v17, 0x41300000    # 11.0f

    const/high16 v18, 0x40e00000    # 7.0f

    move/from16 p9, v10

    move/from16 p10, v11

    move/from16 p4, v12

    move/from16 p5, v13

    move/from16 p6, v14

    move/from16 p7, v17

    move/from16 p8, v18

    invoke-static/range {p4 .. p10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v3, v5, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1091
    new-instance v3, Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-direct {v3, v1}, Lorg/telegram/ui/ActionBar/ActionBar;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->topicsBackActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 1092
    invoke-virtual {v3, v9}, Lorg/telegram/ui/ActionBar/ActionBar;->setOccupyStatusBar(Z)V

    .line 1093
    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->topicsBackActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v3, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 1094
    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->topicsBackActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-virtual {v0, v5}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v10

    invoke-virtual {v3, v10}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleColor(I)V

    .line 1095
    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->topicsBackActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextGray2:I

    invoke-virtual {v0, v10}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v10

    invoke-virtual {v3, v10}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitleColor(I)V

    .line 1096
    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->topicsBackActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    invoke-static {v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v10

    invoke-virtual {v3, v10, v9}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    .line 1097
    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->topicsBackActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarWhiteSelector:I

    invoke-static {v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v10

    invoke-virtual {v3, v10, v9}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    .line 1098
    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->topicsBackActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v10, Lorg/telegram/ui/Components/ShareAlert$8;

    invoke-direct {v10, v0}, Lorg/telegram/ui/Components/ShareAlert$8;-><init>(Lorg/telegram/ui/Components/ShareAlert;)V

    invoke-virtual {v3, v10}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 1104
    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->topicsBackActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/16 v10, 0x8

    invoke-virtual {v3, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1105
    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->frameLayout:Landroid/widget/FrameLayout;

    iget-object v11, v0, Lorg/telegram/ui/Components/ShareAlert;->topicsBackActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/16 v12, 0x3a

    const/16 v13, 0x53

    invoke-static {v8, v12, v13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v3, v11, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1107
    new-instance v3, Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v11, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v3, v1, v11}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->topicsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 1108
    new-instance v11, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v14, 0x4

    invoke-direct {v11, v1, v14}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v11, v0, Lorg/telegram/ui/Components/ShareAlert;->topicsLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v3, v11}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 1109
    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->topicsLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    new-instance v11, Lorg/telegram/ui/Components/ShareAlert$9;

    invoke-direct {v11, v0}, Lorg/telegram/ui/Components/ShareAlert$9;-><init>(Lorg/telegram/ui/Components/ShareAlert;)V

    invoke-virtual {v3, v11}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 1118
    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->topicsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v11, Lorg/telegram/ui/Components/ShareAlert$10;

    invoke-direct {v11, v0}, Lorg/telegram/ui/Components/ShareAlert$10;-><init>(Lorg/telegram/ui/Components/ShareAlert;)V

    invoke-virtual {v3, v11}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 1127
    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->topicsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v11, Lorg/telegram/ui/Components/ShareAlert$ShareTopicsAdapter;

    invoke-direct {v11, v0, v1}, Lorg/telegram/ui/Components/ShareAlert$ShareTopicsAdapter;-><init>(Lorg/telegram/ui/Components/ShareAlert;Landroid/content/Context;)V

    iput-object v11, v0, Lorg/telegram/ui/Components/ShareAlert;->shareTopicsAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareTopicsAdapter;

    invoke-virtual {v3, v11}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 1128
    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->topicsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_dialogScrollGlow:I

    invoke-virtual {v0, v11}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v14

    invoke-virtual {v3, v14}, Landroidx/recyclerview/widget/RecyclerView;->setGlowColor(I)V

    .line 1129
    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->topicsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v9}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 1130
    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->topicsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v9}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 1131
    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->topicsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v7}, Landroid/view/View;->setOverScrollMode(I)V

    .line 1132
    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->topicsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v9}, Lorg/telegram/ui/Components/RecyclerListView;->setSelectorDrawableColor(I)V

    .line 1133
    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->topicsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v14, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda12;

    invoke-direct {v14}, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda12;-><init>()V

    invoke-virtual {v3, v14}, Lorg/telegram/ui/Components/RecyclerListView;->setItemSelectorColorProvider(Lorg/telegram/messenger/GenericProvider;)V

    .line 1134
    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->topicsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/high16 p2, 0x42400000    # 48.0f

    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    invoke-virtual {v3, v9, v9, v9, v14}, Landroid/view/View;->setPadding(IIII)V

    .line 1135
    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->topicsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v9}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 1136
    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->topicsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v14, Lorg/telegram/ui/Components/ShareAlert$11;

    invoke-direct {v14, v0}, Lorg/telegram/ui/Components/ShareAlert$11;-><init>(Lorg/telegram/ui/Components/ShareAlert;)V

    invoke-virtual {v3, v14}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 1150
    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->topicsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v14, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda13;

    invoke-direct {v14, v0}, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/Components/ShareAlert;)V

    invoke-virtual {v3, v14}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 1160
    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->topicsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v10}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 1161
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v14, v0, Lorg/telegram/ui/Components/ShareAlert;->topicsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v10, 0x33

    invoke-static {v8, v8, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v3, v14, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1163
    new-instance v3, Lorg/telegram/ui/Components/ShareAlert$12;

    iget-object v12, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v3, v0, v1, v12}, Lorg/telegram/ui/Components/ShareAlert$12;-><init>(Lorg/telegram/ui/Components/ShareAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 1182
    invoke-virtual {v3, v9}, Lorg/telegram/ui/Components/RecyclerListView;->setSelectorDrawableColor(I)V

    .line 1183
    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v12, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda14;

    invoke-direct {v12}, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda14;-><init>()V

    invoke-virtual {v3, v12}, Lorg/telegram/ui/Components/RecyclerListView;->setItemSelectorColorProvider(Lorg/telegram/messenger/GenericProvider;)V

    .line 1184
    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    invoke-virtual {v3, v9, v9, v9, v12}, Landroid/view/View;->setPadding(IIII)V

    .line 1185
    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v9}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 1186
    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v12, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v14

    const/4 v13, 0x4

    invoke-direct {v12, v14, v13}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v12, v0, Lorg/telegram/ui/Components/ShareAlert;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v3, v12}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 1188
    new-instance v3, Lorg/telegram/ui/Components/blur3/ViewGroupPartRenderer;

    iget-object v12, v0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v13, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-static {v12}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v14, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda13;

    invoke-direct {v14, v12}, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/Components/RecyclerListView;)V

    invoke-direct {v3, v12, v13, v14}, Lorg/telegram/ui/Components/blur3/ViewGroupPartRenderer;-><init>(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Lorg/telegram/ui/Components/blur3/ViewGroupPartRenderer$DrawChildMethod;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->iBlur3Capture:Lorg/telegram/ui/Components/blur3/capture/IBlur3Capture;

    .line 1191
    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    new-instance v12, Lorg/telegram/ui/Components/ShareAlert$13;

    invoke-direct {v12, v0}, Lorg/telegram/ui/Components/ShareAlert$13;-><init>(Lorg/telegram/ui/Components/ShareAlert;)V

    invoke-virtual {v3, v12}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 1200
    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v9}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 1201
    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v9}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 1202
    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v7}, Landroid/view/View;->setOverScrollMode(I)V

    .line 1203
    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v7, Lorg/telegram/ui/Components/ShareAlert$14;

    invoke-direct {v7, v0}, Lorg/telegram/ui/Components/ShareAlert$14;-><init>(Lorg/telegram/ui/Components/ShareAlert;)V

    invoke-virtual {v3, v7}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 1217
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v7, v0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v17, -0x1

    const/high16 v18, -0x40800000    # -1.0f

    const/16 v19, 0x33

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v3, v7, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1218
    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v7, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;

    invoke-direct {v7, v0, v1}, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;-><init>(Lorg/telegram/ui/Components/ShareAlert;Landroid/content/Context;)V

    iput-object v7, v0, Lorg/telegram/ui/Components/ShareAlert;->listAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;

    invoke-virtual {v3, v7}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 1219
    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v11}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v7

    invoke-virtual {v3, v7}, Landroidx/recyclerview/widget/RecyclerView;->setGlowColor(I)V

    .line 1220
    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v7, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda15;

    invoke-direct {v7, v0}, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/Components/ShareAlert;)V

    invoke-virtual {v3, v7}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 1230
    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v7, Lorg/telegram/ui/Components/ShareAlert$15;

    invoke-direct {v7, v0}, Lorg/telegram/ui/Components/ShareAlert$15;-><init>(Lorg/telegram/ui/Components/ShareAlert;)V

    invoke-virtual {v3, v7}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 1247
    new-instance v3, Lorg/telegram/ui/Components/ShareAlert$16;

    iget-object v7, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v3, v0, v1, v7}, Lorg/telegram/ui/Components/ShareAlert$16;-><init>(Lorg/telegram/ui/Components/ShareAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->searchGridView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 1266
    new-instance v7, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda16;

    invoke-direct {v7}, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda16;-><init>()V

    invoke-virtual {v3, v7}, Lorg/telegram/ui/Components/RecyclerListView;->setItemSelectorColorProvider(Lorg/telegram/messenger/GenericProvider;)V

    .line 1267
    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->searchGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v9}, Lorg/telegram/ui/Components/RecyclerListView;->setSelectorDrawableColor(I)V

    .line 1268
    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->searchGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-virtual {v3, v9, v9, v9, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 1269
    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->searchGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v9}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 1270
    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->searchGridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v7, Lorg/telegram/ui/Components/FillLastGridLayoutManager;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v12

    iget-object v13, v0, Lorg/telegram/ui/Components/ShareAlert;->searchGridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v14, 0x4

    invoke-direct {v7, v12, v14, v9, v13}, Lorg/telegram/ui/Components/FillLastGridLayoutManager;-><init>(Landroid/content/Context;IILandroidx/recyclerview/widget/RecyclerView;)V

    iput-object v7, v0, Lorg/telegram/ui/Components/ShareAlert;->searchLayoutManager:Lorg/telegram/ui/Components/FillLastGridLayoutManager;

    invoke-virtual {v3, v7}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 1271
    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->searchLayoutManager:Lorg/telegram/ui/Components/FillLastGridLayoutManager;

    new-instance v7, Lorg/telegram/ui/Components/ShareAlert$17;

    invoke-direct {v7, v0}, Lorg/telegram/ui/Components/ShareAlert$17;-><init>(Lorg/telegram/ui/Components/ShareAlert;)V

    invoke-virtual {v3, v7}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 1277
    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->searchGridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v7, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda17;

    invoke-direct {v7, v0}, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/Components/ShareAlert;)V

    invoke-virtual {v3, v7}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 1287
    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->searchGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v6}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 1288
    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->searchGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v15}, Lorg/telegram/ui/Components/RecyclerListView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 1289
    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->searchGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v9}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 1290
    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->searchGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v9}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 1291
    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->searchGridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v7, Lorg/telegram/ui/Components/ShareAlert$18;

    invoke-direct {v7, v0}, Lorg/telegram/ui/Components/ShareAlert$18;-><init>(Lorg/telegram/ui/Components/ShareAlert;)V

    invoke-virtual {v3, v7}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 1300
    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->searchGridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v7, Lorg/telegram/ui/Components/ShareAlert$19;

    invoke-direct {v7, v0}, Lorg/telegram/ui/Components/ShareAlert$19;-><init>(Lorg/telegram/ui/Components/ShareAlert;)V

    invoke-virtual {v3, v7}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 1318
    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->searchGridView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v7, v0, Lorg/telegram/ui/Components/ShareAlert;->searchAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;

    invoke-virtual {v3, v7}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 1319
    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->searchGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v11}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v7

    invoke-virtual {v3, v7}, Landroidx/recyclerview/widget/RecyclerView;->setGlowColor(I)V

    .line 1321
    new-instance v3, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;

    iget-object v7, v0, Lorg/telegram/ui/Components/ShareAlert;->searchGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v3, v7, v6}, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;-><init>(Lorg/telegram/ui/Components/RecyclerListView;Z)V

    iput-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->recyclerItemsEnterAnimator:Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;

    .line 1323
    new-instance v3, Lorg/telegram/ui/Components/FlickerLoadingView;

    iget-object v7, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v3, v1, v7}, Lorg/telegram/ui/Components/FlickerLoadingView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/16 v7, 0xc

    .line 1324
    invoke-virtual {v3, v7}, Lorg/telegram/ui/Components/FlickerLoadingView;->setViewType(I)V

    .line 1325
    new-instance v7, Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object v11, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v7, v1, v3, v6, v11}, Lorg/telegram/ui/Components/StickerEmptyView;-><init>(Landroid/content/Context;Landroid/view/View;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v7, v0, Lorg/telegram/ui/Components/ShareAlert;->searchEmptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    .line 1326
    invoke-virtual {v7, v3, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 1327
    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->searchEmptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {v3, v6}, Lorg/telegram/ui/Components/StickerEmptyView;->setAnimateLayoutChange(Z)V

    .line 1328
    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->searchEmptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {v3, v9, v9}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(ZZ)V

    .line 1329
    iget-boolean v3, v0, Lorg/telegram/ui/Components/ShareAlert;->darkTheme:Z

    if-eqz v3, :cond_a

    .line 1330
    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->searchEmptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object v3, v3, Lorg/telegram/ui/Components/StickerEmptyView;->title:Lorg/telegram/ui/Components/spoilers/SpoilersTextView;

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_nameText:I

    invoke-virtual {v0, v7}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v7

    invoke-virtual {v3, v7}, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->setTextColor(I)V

    .line 1332
    :cond_a
    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->searchEmptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object v3, v3, Lorg/telegram/ui/Components/StickerEmptyView;->title:Lorg/telegram/ui/Components/spoilers/SpoilersTextView;

    sget v7, Lorg/telegram/messenger/R$string;->NoResult:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1333
    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->searchGridView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v7, v0, Lorg/telegram/ui/Components/ShareAlert;->searchEmptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {v3, v7}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    .line 1334
    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->searchGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v9}, Lorg/telegram/ui/Components/RecyclerListView;->setHideIfEmpty(Z)V

    .line 1335
    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->searchGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v6, v9}, Lorg/telegram/ui/Components/RecyclerListView;->setAnimateEmptyView(ZI)V

    .line 1336
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v7, v0, Lorg/telegram/ui/Components/ShareAlert;->searchEmptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v17, -0x1

    const/high16 v18, -0x40800000    # -1.0f

    const/16 v19, 0x33

    const/16 v20, 0x0

    const/high16 v21, 0x42500000    # 52.0f

    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v3, v7, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1337
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v7, v0, Lorg/telegram/ui/Components/ShareAlert;->searchGridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v21, 0x0

    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v3, v7, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1339
    new-instance v3, Lorg/telegram/ui/Components/ShareAlert$20;

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/Components/ShareAlert$20;-><init>(Lorg/telegram/ui/Components/ShareAlert;Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->bottomFadeView:Landroid/view/View;

    .line 1347
    iget-object v7, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    const/16 v11, 0x12c

    const/16 v12, 0x50

    invoke-static {v8, v11, v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v7, v3, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1349
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getShadowHeight()I

    move-result v7

    invoke-direct {v3, v8, v7, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 1350
    iget-boolean v7, v0, Lorg/telegram/ui/Components/ShareAlert;->darkTheme:Z

    if-eqz v7, :cond_b

    iget-object v7, v0, Lorg/telegram/ui/Components/ShareAlert;->linkToCopy:[Ljava/lang/String;

    aget-object v7, v7, v6

    if-eqz v7, :cond_b

    const/high16 v7, 0x42de0000    # 111.0f

    goto :goto_5

    :cond_b
    const/high16 v7, 0x42680000    # 58.0f

    :goto_5
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1351
    iget-object v7, v0, Lorg/telegram/ui/Components/ShareAlert;->shadow:[Landroid/view/View;

    new-instance v11, Landroid/view/View;

    invoke-direct {v11, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    aput-object v11, v7, v9

    .line 1352
    iget-object v7, v0, Lorg/telegram/ui/Components/ShareAlert;->shadow:[Landroid/view/View;

    aget-object v7, v7, v9

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_dialogShadowLine:I

    invoke-virtual {v0, v11}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v12

    invoke-virtual {v7, v12}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1353
    iget-object v7, v0, Lorg/telegram/ui/Components/ShareAlert;->shadow:[Landroid/view/View;

    aget-object v7, v7, v9

    const/4 v12, 0x0

    invoke-virtual {v7, v12}, Landroid/view/View;->setAlpha(F)V

    .line 1354
    iget-object v7, v0, Lorg/telegram/ui/Components/ShareAlert;->shadow:[Landroid/view/View;

    aget-object v7, v7, v9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v7, v13}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1355
    iget-object v7, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v13, v0, Lorg/telegram/ui/Components/ShareAlert;->shadow:[Landroid/view/View;

    aget-object v13, v13, v9

    invoke-virtual {v7, v13, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1357
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v7, v0, Lorg/telegram/ui/Components/ShareAlert;->frameLayout:Landroid/widget/FrameLayout;

    iget-boolean v13, v0, Lorg/telegram/ui/Components/ShareAlert;->darkTheme:Z

    if-eqz v13, :cond_c

    iget-object v13, v0, Lorg/telegram/ui/Components/ShareAlert;->linkToCopy:[Ljava/lang/String;

    aget-object v13, v13, v6

    if-eqz v13, :cond_c

    const/16 v13, 0x6f

    goto :goto_6

    :cond_c
    const/16 v13, 0x3a

    :goto_6
    invoke-static {v8, v13, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v3, v7, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1359
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getShadowHeight()I

    move-result v7

    const/16 v13, 0x53

    invoke-direct {v3, v8, v7, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 1360
    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 1361
    iget-object v7, v0, Lorg/telegram/ui/Components/ShareAlert;->shadow:[Landroid/view/View;

    new-instance v13, Landroid/view/View;

    invoke-direct {v13, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    aput-object v13, v7, v6

    .line 1362
    iget-object v7, v0, Lorg/telegram/ui/Components/ShareAlert;->shadow:[Landroid/view/View;

    aget-object v7, v7, v6

    invoke-virtual {v0, v11}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v11

    invoke-virtual {v7, v11}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1363
    iget-object v7, v0, Lorg/telegram/ui/Components/ShareAlert;->shadow:[Landroid/view/View;

    aget-object v7, v7, v6

    invoke-virtual {v7, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1365
    iget-boolean v3, v0, Lorg/telegram/ui/Components/ShareAlert;->isChannel:Z

    const/high16 v7, 0x41600000    # 14.0f

    const/16 v11, 0x11

    const/4 v13, 0x6

    const/high16 p12, 0x40800000    # 4.0f

    if-eqz v3, :cond_d

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v2, v6, :cond_e

    :cond_d
    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->linkToCopy:[Ljava/lang/String;

    aget-object v2, v2, v9

    if-eqz v2, :cond_10

    .line 1367
    :cond_e
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->pickerBottom:Landroid/widget/FrameLayout;

    .line 1369
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->pickerBottomLayout:Landroid/widget/FrameLayout;

    .line 1370
    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->pickerBottom:Landroid/widget/FrameLayout;

    invoke-static {}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameMatchParent()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v15

    invoke-virtual {v3, v2, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1372
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1373
    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1374
    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->pickerBottomLayout:Landroid/widget/FrameLayout;

    const/16 v15, 0x77

    invoke-static {v8, v8, v15}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v15

    invoke-virtual {v3, v2, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1376
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->linkContainer:Landroid/widget/LinearLayout;

    .line 1377
    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1378
    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->linkContainer:Landroid/widget/LinearLayout;

    const v15, 0x3c75c28f    # 0.015f

    const v10, 0x3f99999a    # 1.2f

    invoke-static {v3, v15, v10}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;FF)V

    .line 1379
    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->linkContainer:Landroid/widget/LinearLayout;

    new-instance v10, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda3;

    invoke-direct {v10, v0}, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/ShareAlert;)V

    invoke-virtual {v3, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1392
    new-instance v3, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {v3, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->linkTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v10, 0xf

    .line 1393
    invoke-virtual {v3, v10}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 1394
    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->linkTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_share_linkText:I

    invoke-virtual {v0, v10}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v10

    invoke-virtual {v3, v10}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 1395
    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->linkTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v3, v6}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setEllipsizeByGradient(Z)V

    .line 1396
    invoke-direct {v0}, Lorg/telegram/ui/Components/ShareAlert;->updateLinkTextView()V

    .line 1397
    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->linkContainer:Landroid/widget/LinearLayout;

    iget-object v10, v0, Lorg/telegram/ui/Components/ShareAlert;->linkTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v24, 0x10

    const/16 v25, 0x0

    const/16 v18, -0x1

    const/16 v19, 0x14

    const/high16 v20, 0x3f800000    # 1.0f

    const/16 v21, 0x17

    const/16 v22, 0x10

    const/16 v23, 0x0

    invoke-static/range {v18 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v15

    invoke-virtual {v3, v10, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1399
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->linkCopyButton:Landroid/widget/TextView;

    .line 1400
    invoke-virtual {v3, v6, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1401
    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->linkCopyButton:Landroid/widget/TextView;

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-virtual {v0, v10}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v10

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1402
    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->linkCopyButton:Landroid/widget/TextView;

    sget v10, Lorg/telegram/messenger/R$string;->Copy:I

    invoke-static {v10}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1403
    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->linkCopyButton:Landroid/widget/TextView;

    const/high16 v10, 0x41100000    # 9.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    invoke-virtual {v3, v15, v9, v10, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1404
    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->linkCopyButton:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1405
    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->linkCopyButton:Landroid/widget/TextView;

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 1406
    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->linkCopyButton:Landroid/widget/TextView;

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-virtual {v0, v10}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v15

    const/4 v7, 0x4

    invoke-static {v15, v7, v7}, Lorg/telegram/ui/ActionBar/Theme;->createRadSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    invoke-virtual {v3, v15}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1407
    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->linkContainer:Landroid/widget/LinearLayout;

    iget-object v7, v0, Lorg/telegram/ui/Components/ShareAlert;->linkCopyButton:Landroid/widget/TextView;

    const/16 v25, 0x7

    const/16 v26, 0x0

    const/16 v19, -0x2

    const/16 v20, 0x1c

    const/16 v21, 0x0

    const/16 v22, 0x15

    const/16 v24, 0x0

    invoke-static/range {v19 .. v26}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v15

    invoke-virtual {v3, v7, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1408
    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->linkCopyButton:Landroid/widget/TextView;

    new-instance v7, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda4;

    invoke-direct {v7, v0}, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/ShareAlert;)V

    invoke-virtual {v3, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1419
    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->linkCopyButton:Landroid/widget/TextView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;)V

    .line 1421
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v7, v0, Lorg/telegram/ui/Components/ShareAlert;->pickerBottom:Landroid/widget/FrameLayout;

    const/16 v11, 0x53

    const/16 v15, 0x3a

    invoke-static {v8, v15, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v3, v7, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1425
    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->sendingMessageObjects:Ljava/util/ArrayList;

    if-eqz v3, :cond_f

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_f

    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->sendingMessageObjects:Ljava/util/ArrayList;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject;

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v3, :cond_f

    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->sendingMessageObjects:Ljava/util/ArrayList;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject;

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->forwards:I

    if-lez v3, :cond_f

    .line 1426
    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->sendingMessageObjects:Ljava/util/ArrayList;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject;

    .line 1427
    iget v6, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v14

    neg-long v14, v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v6, v11}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v6

    .line 1428
    invoke-static {v6}, Lorg/telegram/messenger/ChatObject;->hasAdminRights(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isForwarded()Z

    move-result v6

    if-nez v6, :cond_f

    .line 1429
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1430
    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1431
    new-instance v11, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda5;

    invoke-direct {v11, v0, v3}, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/ShareAlert;Lorg/telegram/messenger/MessageObject;)V

    invoke-virtual {v6, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/high16 v11, 0x41000000    # 8.0f

    .line 1438
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    invoke-static/range {p12 .. p12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    invoke-static/range {p12 .. p12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-virtual {v6, v14, v15, v11, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 1439
    invoke-virtual {v0, v10}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v7

    invoke-static {v7, v13, v13}, Lorg/telegram/ui/ActionBar/Theme;->createRadSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1440
    invoke-static {v6}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;)V

    .line 1442
    new-instance v10, Landroid/widget/ImageView;

    invoke-direct {v10, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1443
    sget v7, Lorg/telegram/messenger/R$drawable;->mini_stats_shares:I

    invoke-virtual {v10, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1444
    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v10, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1445
    new-instance v7, Landroid/graphics/PorterDuffColorFilter;

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_share_icon:I

    invoke-virtual {v0, v11}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v14

    sget-object v15, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v14, v15}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v10, v7}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const/16 v7, 0x10

    const/4 v14, -0x2

    .line 1446
    invoke-static {v14, v14, v12, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFI)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v15

    invoke-virtual {v6, v10, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1448
    new-instance v10, Landroid/widget/TextView;

    invoke-direct {v10, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1449
    invoke-virtual {v0, v11}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v11, 0x41700000    # 15.0f

    const/4 v14, 0x1

    .line 1450
    invoke-virtual {v10, v14, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v11, 0x11

    .line 1451
    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 1452
    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->forwards:I

    int-to-long v14, v3

    const/16 v3, 0x2c

    invoke-static {v14, v15, v3}, Lorg/telegram/messenger/LocaleController;->formatNumber(JC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v21, -0x2

    const/16 v22, -0x2

    const/16 v23, 0x0

    const/16 v24, 0x10

    const/16 v25, 0x4

    const/16 v26, -0x1

    .line 1453
    invoke-static/range {v21 .. v28}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v6, v10, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v27, 0x8

    goto :goto_7

    :cond_f
    const/16 v10, 0xb

    move/from16 v27, v10

    const/4 v6, 0x0

    .line 1459
    :goto_7
    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->linkContainer:Landroid/widget/LinearLayout;

    const/16 v26, 0x0

    const/16 v28, 0x0

    const/16 v21, -0x1

    const/16 v22, 0x2a

    const/high16 v23, 0x3f800000    # 1.0f

    const/16 v24, 0x17

    const/16 v25, 0xb

    invoke-static/range {v21 .. v28}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v2, v3, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v6, :cond_11

    const/16 v27, 0x8

    const/16 v28, 0x0

    const/16 v21, -0x2

    const/16 v22, -0x2

    const/16 v23, 0x0

    const/16 v24, 0x10

    const/16 v25, 0x0

    const/16 v26, 0x5

    .line 1461
    invoke-static/range {v21 .. v28}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_8

    .line 1546
    :cond_10
    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->shadow:[Landroid/view/View;

    const/16 v20, 0x1

    aget-object v2, v2, v20

    invoke-virtual {v2, v12}, Landroid/view/View;->setAlpha(F)V

    .line 1549
    :cond_11
    :goto_8
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->bulletinContainer:Landroid/widget/FrameLayout;

    .line 1550
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v6, v0, Lorg/telegram/ui/Components/ShareAlert;->pickerBottomLayout:Landroid/widget/FrameLayout;

    if-eqz v6, :cond_12

    move/from16 v14, p2

    goto :goto_9

    :cond_12
    move v14, v12

    :goto_9
    const/4 v6, -0x1

    const/high16 v10, 0x42c80000    # 100.0f

    const/16 v11, 0x57

    const/4 v15, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 p3, v6

    move/from16 p4, v10

    move/from16 p5, v11

    move/from16 p9, v14

    move/from16 p6, v15

    move/from16 p7, v21

    move/from16 p8, v22

    invoke-static/range {p3 .. p9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v3, v2, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1552
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->bulletinContainer2:Landroid/widget/FrameLayout;

    .line 1553
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    const/4 v6, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/high16 v14, -0x40000000    # -2.0f

    const/16 v15, 0x37

    move/from16 p7, v6

    move/from16 p8, v10

    move/from16 p2, v11

    move/from16 p3, v14

    move/from16 p4, v15

    move/from16 p5, v21

    move/from16 p6, v22

    invoke-static/range {p2 .. p8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v3, v2, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1555
    new-instance v2, Lorg/telegram/ui/Components/ShareAlert$22;

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/Components/ShareAlert$22;-><init>(Lorg/telegram/ui/Components/ShareAlert;Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->frameLayout2:Landroid/widget/FrameLayout;

    .line 1602
    invoke-virtual {v2, v9}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 1603
    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->frameLayout2:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v12}, Landroid/view/View;->setAlpha(F)V

    .line 1604
    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->frameLayout2:Landroid/widget/FrameLayout;

    const/4 v14, 0x4

    invoke-virtual {v2, v14}, Landroid/view/View;->setVisibility(I)V

    .line 1605
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->frameLayout2:Landroid/widget/FrameLayout;

    const/4 v7, -0x2

    const/16 v11, 0x53

    invoke-static {v8, v7, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1606
    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->frameLayout2:Landroid/widget/FrameLayout;

    new-instance v3, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda6;

    invoke-direct {v3}, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda6;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1608
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result v3

    const v4, 0x3f389375    # 0.721f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_13

    const/4 v3, 0x1

    goto :goto_a

    :cond_13
    move v3, v9

    :goto_a
    invoke-static {v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->setLightNavigationBar(Landroid/view/View;Z)V

    .line 1610
    new-instance v2, Lorg/telegram/ui/Components/ShareAlert$23;

    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v4, v0, Lorg/telegram/ui/Components/ShareAlert;->sendingFile:Ljava/lang/String;

    if-nez v4, :cond_14

    const/4 v4, 0x1

    goto :goto_b

    :cond_14
    move v4, v9

    :goto_b
    iget-object v6, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object/from16 p3, v0

    move-object/from16 p4, v1

    move-object/from16 p2, v2

    move-object/from16 p5, v3

    move/from16 p8, v4

    move-object/from16 p9, v6

    move-object/from16 p6, v10

    move/from16 p7, v11

    invoke-direct/range {p2 .. p9}, Lorg/telegram/ui/Components/ShareAlert$23;-><init>(Lorg/telegram/ui/Components/ShareAlert;Landroid/content/Context;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Lorg/telegram/ui/ActionBar/BaseFragment;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    const/4 v14, 0x1

    .line 1702
    iput-boolean v14, v2, Lorg/telegram/ui/Components/EditTextEmoji;->includeNavigationBar:Z

    .line 1703
    iget-boolean v3, v0, Lorg/telegram/ui/Components/ShareAlert;->darkTheme:Z

    if-eqz v3, :cond_15

    .line 1704
    invoke-virtual {v2}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_nameText:I

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    .line 1705
    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v2

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    .line 1708
    :cond_15
    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->sendingFile:Ljava/lang/String;

    if-eqz v3, :cond_16

    sget v3, Lorg/telegram/messenger/R$string;->WriteFileName:I

    :goto_c
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_d

    :cond_16
    sget v3, Lorg/telegram/messenger/R$string;->ShareComment:I

    goto :goto_c

    :goto_d
    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/EditTextEmoji;->setHint(Ljava/lang/CharSequence;)V

    .line 1709
    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EditTextEmoji;->onResume()V

    .line 1710
    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    iget v3, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v3}, Lcom/exteragram/messenger/utils/text/LocaleUtils;->canUseLocalPremiumEmojis(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/EditTextEmoji;->allowEmojisForNonPremium(Z)V

    .line 1711
    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    const/high16 v3, 0x42a80000    # 84.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v2, v9, v9, v3, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 1712
    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->frameLayout2:Landroid/widget/FrameLayout;

    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    const/16 v4, 0x33

    const/4 v7, -0x2

    invoke-static {v8, v7, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1713
    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->frameLayout2:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v9}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 1714
    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->frameLayout2:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v9}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 1715
    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v2, v9}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 1716
    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Components/ShareAlert$24;

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/ShareAlert$24;-><init>(Lorg/telegram/ui/Components/ShareAlert;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1735
    new-instance v2, Lorg/telegram/ui/Components/ShareAlert$25;

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/Components/ShareAlert$25;-><init>(Lorg/telegram/ui/Components/ShareAlert;Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->writeButtonContainer:Landroid/widget/FrameLayout;

    const/4 v14, 0x1

    .line 1745
    invoke-virtual {v2, v14}, Landroid/view/View;->setFocusable(Z)V

    .line 1746
    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->writeButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v14}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 1747
    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->writeButtonContainer:Landroid/widget/FrameLayout;

    const/4 v14, 0x4

    invoke-virtual {v2, v14}, Landroid/view/View;->setVisibility(I)V

    .line 1748
    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->writeButtonContainer:Landroid/widget/FrameLayout;

    const v3, 0x3e4ccccd    # 0.2f

    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleX(F)V

    .line 1749
    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->writeButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleY(F)V

    .line 1750
    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->writeButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v12}, Landroid/view/View;->setAlpha(F)V

    .line 1751
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->writeButtonContainer:Landroid/widget/FrameLayout;

    const/16 v4, 0x32

    const/16 v6, 0x55

    const/16 v10, 0x6e

    invoke-static {v10, v4, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1753
    new-instance v2, Lorg/telegram/ui/Components/ShareAlert$26;

    sget v3, Lorg/telegram/messenger/R$drawable;->send_extera_24:I

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v2, v0, v1, v3, v4}, Lorg/telegram/ui/Components/ShareAlert$26;-><init>(Lorg/telegram/ui/Components/ShareAlert;Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->writeButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    const/high16 v3, 0x42500000    # 52.0f

    .line 1779
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/high16 v4, 0x42180000    # 38.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->setCircleSize(II)V

    .line 1780
    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->writeButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    const/high16 v6, 0x40c00000    # 6.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v2, v4, v6}, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->setCirclePadding(FF)V

    .line 1781
    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->writeButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    const/4 v14, 0x1

    iput-boolean v14, v2, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->newCounterPos:Z

    .line 1782
    iget-object v4, v0, Lorg/telegram/ui/Components/ShareAlert;->writeButtonContainer:Landroid/widget/FrameLayout;

    const/4 v6, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, -0x1

    const/high16 v14, -0x40800000    # -1.0f

    const/16 v15, 0x77

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 p7, v6

    move/from16 p8, v10

    move/from16 p2, v11

    move/from16 p3, v14

    move/from16 p4, v15

    move/from16 p5, v21

    move/from16 p6, v22

    invoke-static/range {p2 .. p8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v4, v2, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1783
    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->writeButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    new-instance v4, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda7;

    invoke-direct {v4, v0}, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/ShareAlert;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1784
    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->writeButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    new-instance v4, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda8;

    invoke-direct {v4, v0}, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Components/ShareAlert;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1786
    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->textPaint:Landroid/text/TextPaint;

    const/high16 v4, 0x41400000    # 12.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1787
    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->textPaint:Landroid/text/TextPaint;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    if-eqz p13, :cond_19

    .line 1790
    invoke-virtual/range {p13 .. p13}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Components/ShareAlert;->timestamp:I

    .line 1792
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->timestampFrameLayout:Landroid/widget/FrameLayout;

    .line 1794
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->timestampLayout:Landroid/widget/LinearLayout;

    .line 1795
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static/range {p12 .. p12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static/range {p12 .. p12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    invoke-virtual {v2, v6, v10, v4, v11}, Landroid/view/View;->setPadding(IIII)V

    .line 1796
    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->timestampLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v9}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 1797
    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->timestampLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1798
    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->timestampLayout:Landroid/widget/LinearLayout;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v4

    invoke-static {v4, v13, v13}, Lorg/telegram/ui/ActionBar/Theme;->createRadSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1799
    new-instance v2, Lorg/telegram/ui/Components/CheckBox2;

    const/16 v4, 0x18

    iget-object v6, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v2, v1, v4, v6}, Lorg/telegram/ui/Components/CheckBox2;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->timestampCheckbox:Lorg/telegram/ui/Components/CheckBox2;

    .line 1800
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_radioBackgroundChecked:I

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxDisabled:I

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxCheck:I

    invoke-virtual {v2, v4, v6, v10}, Lorg/telegram/ui/Components/CheckBox2;->setColor(III)V

    .line 1801
    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->timestampCheckbox:Lorg/telegram/ui/Components/CheckBox2;

    const/4 v14, 0x1

    invoke-virtual {v2, v14}, Lorg/telegram/ui/Components/CheckBox2;->setDrawUnchecked(Z)V

    .line 1802
    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->timestampCheckbox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v2, v9, v9}, Lorg/telegram/ui/Components/CheckBox2;->setChecked(ZZ)V

    .line 1803
    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->timestampCheckbox:Lorg/telegram/ui/Components/CheckBox2;

    const/16 v4, 0xa

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/CheckBox2;->setDrawBackgroundAsArc(I)V

    .line 1804
    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->timestampLayout:Landroid/widget/LinearLayout;

    iget-object v4, v0, Lorg/telegram/ui/Components/ShareAlert;->timestampCheckbox:Lorg/telegram/ui/Components/CheckBox2;

    const/4 v6, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x1a

    const/16 v13, 0x1a

    const/16 v14, 0x10

    const/4 v15, 0x0

    const/16 v21, 0x0

    move/from16 p7, v6

    move/from16 p8, v10

    move/from16 p2, v11

    move/from16 p3, v13

    move/from16 p4, v14

    move/from16 p5, v15

    move/from16 p6, v21

    invoke-static/range {p2 .. p8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1805
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->timestampTextView:Landroid/widget/TextView;

    .line 1806
    invoke-virtual {v0, v5}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1807
    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->timestampTextView:Landroid/widget/TextView;

    const/high16 v4, 0x41600000    # 14.0f

    const/4 v14, 0x1

    invoke-virtual {v2, v14, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1808
    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->timestampTextView:Landroid/widget/TextView;

    sget v4, Lorg/telegram/messenger/R$string;->VideoShareAddTimestamp:I

    invoke-virtual/range {p13 .. p13}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->formatShortDuration(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v14, [Ljava/lang/Object;

    aput-object v5, v6, v9

    invoke-static {v4, v6}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1809
    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->timestampLayout:Landroid/widget/LinearLayout;

    iget-object v4, v0, Lorg/telegram/ui/Components/ShareAlert;->timestampTextView:Landroid/widget/TextView;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v10, -0x2

    const/4 v11, -0x2

    const/16 v13, 0x10

    const/16 v14, 0x9

    move/from16 p7, v5

    move/from16 p8, v6

    move/from16 p2, v10

    move/from16 p3, v11

    move/from16 p4, v13

    move/from16 p5, v14

    move/from16 p6, v15

    invoke-static/range {p2 .. p8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1810
    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->timestampLayout:Landroid/widget/LinearLayout;

    const v4, 0x3ccccccd    # 0.025f

    const/high16 v5, 0x3fc00000    # 1.5f

    invoke-static {v2, v4, v5}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;FF)V

    .line 1811
    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->timestampLayout:Landroid/widget/LinearLayout;

    new-instance v4, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda9;

    invoke-direct {v4, v0}, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Components/ShareAlert;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1815
    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->timestampFrameLayout:Landroid/widget/FrameLayout;

    iget-object v4, v0, Lorg/telegram/ui/Components/ShareAlert;->timestampLayout:Landroid/widget/LinearLayout;

    const/4 v7, -0x2

    const/16 v11, 0x11

    invoke-static {v7, v7, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1817
    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->pickerBottom:Landroid/widget/FrameLayout;

    if-nez v2, :cond_18

    .line 1818
    new-instance v2, Landroid/view/View;

    invoke-direct {v2, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1819
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1820
    iget-object v1, v0, Lorg/telegram/ui/Components/ShareAlert;->timestampFrameLayout:Landroid/widget/FrameLayout;

    iget-boolean v4, v0, Lorg/telegram/ui/Components/ShareAlert;->darkTheme:Z

    if-eqz v4, :cond_17

    const v4, 0x3f28f5c3    # 0.66f

    goto :goto_e

    :cond_17
    sget v4, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float v4, v3, v4

    :goto_e
    const/16 v5, 0x37

    const/high16 v6, -0x40800000    # -1.0f

    invoke-static {v6, v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(FFI)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1823
    :cond_18
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->timestampFrameLayout:Landroid/widget/FrameLayout;

    const/16 v11, 0x53

    const/16 v15, 0x3a

    invoke-static {v8, v15, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1825
    iget-object v1, v0, Lorg/telegram/ui/Components/ShareAlert;->pickerBottom:Landroid/widget/FrameLayout;

    if-nez v1, :cond_19

    .line 1826
    iget-object v1, v0, Lorg/telegram/ui/Components/ShareAlert;->timestampFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v12}, Landroid/view/View;->setAlpha(F)V

    .line 1827
    iget-object v1, v0, Lorg/telegram/ui/Components/ShareAlert;->timestampFrameLayout:Landroid/widget/FrameLayout;

    const/4 v14, 0x4

    invoke-virtual {v1, v14}, Landroid/view/View;->setVisibility(I)V

    .line 1832
    :cond_19
    new-instance v1, Lorg/telegram/ui/Components/blur3/BlurredBackgroundWithFadeDrawable;

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->iBlur3FactoryFade:Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;

    iget-object v4, v0, Lorg/telegram/ui/Components/ShareAlert;->bottomFadeView:Landroid/view/View;

    const/4 v5, 0x0

    .line 1833
    invoke-virtual {v2, v4, v5}, Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;->create(Landroid/view/View;Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProvider;)Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/blur3/BlurredBackgroundWithFadeDrawable;-><init>(Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/ShareAlert;->fadeDrawable:Lorg/telegram/ui/Components/blur3/BlurredBackgroundWithFadeDrawable;

    .line 1834
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->chatBlurEnabled()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    .line 1835
    :cond_1a
    iget-object v1, v0, Lorg/telegram/ui/Components/ShareAlert;->fadeDrawable:Lorg/telegram/ui/Components/blur3/BlurredBackgroundWithFadeDrawable;

    const/high16 v2, 0x42900000    # 72.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/4 v14, 0x1

    invoke-virtual {v1, v2, v14}, Lorg/telegram/ui/Components/blur3/BlurredBackgroundWithFadeDrawable;->setFadeHeight(IZ)V

    .line 1839
    iget-object v1, v0, Lorg/telegram/ui/Components/ShareAlert;->iBlur3FactoryFrostedLiquidGlass:Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v4}, Lorg/telegram/ui/Components/blur3/drawable/color/impl/BlurredBackgroundProviderImpl;->inputFieldShareAlert(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProvider;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;->create(Landroid/view/View;Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProvider;)Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Components/ShareAlert;->emojiViewChildBg:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    .line 1840
    invoke-virtual {v1}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->enableInAppKeyboardOptimization()V

    .line 1841
    iget-object v1, v0, Lorg/telegram/ui/Components/ShareAlert;->emojiViewChildBg:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    const/high16 v2, 0x41e80000    # 29.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v4, v2, v12, v12}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->setRadius(FFFF)V

    .line 1842
    iget-object v1, v0, Lorg/telegram/ui/Components/ShareAlert;->emojiViewChildBg:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    const/high16 v2, 0x42000000    # 32.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->setThickness(I)V

    .line 1843
    iget-object v1, v0, Lorg/telegram/ui/Components/ShareAlert;->emojiViewChildBg:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    const v2, 0x3ecccccd    # 0.4f

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->setIntensity(F)V

    .line 1845
    iget-object v1, v0, Lorg/telegram/ui/Components/ShareAlert;->iBlur3FactoryLiquidGlass:Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->frameLayout2:Landroid/widget/FrameLayout;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v4}, Lorg/telegram/ui/Components/blur3/drawable/color/impl/BlurredBackgroundProviderImpl;->inputFieldShareAlert(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProvider;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;->create(Landroid/view/View;Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProvider;)Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Components/ShareAlert;->captionContainerBg:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    const/high16 v2, 0x41b00000    # 22.0f

    .line 1846
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->setRadius(F)Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    .line 1847
    iget-object v1, v0, Lorg/telegram/ui/Components/ShareAlert;->captionContainerBg:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    const/high16 v4, 0x40e00000    # 7.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v1, v5}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->setPadding(I)Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    .line 1848
    iget-object v1, v0, Lorg/telegram/ui/Components/ShareAlert;->frameLayout2:Landroid/widget/FrameLayout;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/high16 v6, 0x40a00000    # 5.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v1, v5, v7, v8, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 1850
    iget-object v1, v0, Lorg/telegram/ui/Components/ShareAlert;->pickerBottomLayout:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_1b

    .line 1851
    iget-object v5, v0, Lorg/telegram/ui/Components/ShareAlert;->iBlur3FactoryLiquidGlass:Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;

    iget-object v6, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v6}, Lorg/telegram/ui/Components/blur3/drawable/color/impl/BlurredBackgroundProviderImpl;->inputFieldShareAlert(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProvider;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;->create(Landroid/view/View;Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProvider;)Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    move-result-object v1

    .line 1852
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v1, v5}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->setPadding(I)Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    .line 1853
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v1, v5}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->setRadius(F)Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    .line 1854
    iget-object v5, v0, Lorg/telegram/ui/Components/ShareAlert;->pickerBottomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1855
    iget-object v1, v0, Lorg/telegram/ui/Components/ShareAlert;->pickerBottomLayout:Landroid/widget/FrameLayout;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-virtual {v1, v5, v6, v7, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 1858
    :cond_1b
    iget-object v1, v0, Lorg/telegram/ui/Components/ShareAlert;->timestampFrameLayout:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_1c

    .line 1859
    iget-object v5, v0, Lorg/telegram/ui/Components/ShareAlert;->iBlur3FactoryLiquidGlass:Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;

    iget-object v6, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v6}, Lorg/telegram/ui/Components/blur3/drawable/color/impl/BlurredBackgroundProviderImpl;->inputFieldShareAlert(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProvider;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;->create(Landroid/view/View;Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProvider;)Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    move-result-object v1

    .line 1860
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v1, v5}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->setPadding(I)Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    .line 1861
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->setRadius(F)Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    .line 1862
    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->timestampFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1863
    iget-object v1, v0, Lorg/telegram/ui/Components/ShareAlert;->timestampFrameLayout:Landroid/widget/FrameLayout;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v1, v2, v5, v6, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 1866
    :cond_1c
    invoke-virtual {v0, v9}, Lorg/telegram/ui/Components/ShareAlert;->updateSelectedCount(I)V

    .line 1868
    iget v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->loadDialogs(Lorg/telegram/messenger/AccountInstance;)V

    .line 1869
    iget-object v1, v0, Lorg/telegram/ui/Components/ShareAlert;->listAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;

    invoke-static {v1}, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;->-$$Nest$fgetdialogs(Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 1870
    iget v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1873
    :cond_1d
    iget v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    new-instance v2, Lorg/telegram/ui/Components/ShareAlert$27;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/ShareAlert$27;-><init>(Lorg/telegram/ui/Components/ShareAlert;)V

    invoke-static {v1, v9, v2}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->loadRecentSearch(IILorg/telegram/ui/Adapters/DialogsSearchAdapter$OnRecentSearchLoaded;)V

    .line 1900
    iget v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    const/4 v14, 0x1

    invoke-virtual {v1, v14}, Lorg/telegram/messenger/MediaDataController;->loadHints(Z)V

    .line 1902
    iget-object v1, v0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v1, v14, v3, v9}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    .line 1903
    iget-object v1, v0, Lorg/telegram/ui/Components/ShareAlert;->searchGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v1, v9, v3, v9}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ChatActivity;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZ)V
    .locals 15

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v4, 0x0

    const/4 v12, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    .line 389
    invoke-direct/range {v0 .. v14}, Lorg/telegram/ui/Components/ShareAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/ChatActivity;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZZLjava/lang/Integer;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/ShareAlert;I)I
    .locals 0

    .line 146
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/ShareAlert;I)I
    .locals 0

    .line 146
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/ShareAlert;)Z
    .locals 0

    .line 146
    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->isFullscreen:Z

    return p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    .line 146
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    .line 146
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    .line 146
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    .line 146
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    .line 146
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->navigationBarHeight:I

    return p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Components/ShareAlert;)Z
    .locals 0

    .line 146
    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->keyboardVisible:Z

    return p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    .line 146
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->navigationBarHeight:I

    return p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    .line 146
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Components/ShareAlert;)Z
    .locals 0

    .line 146
    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->keyboardVisible:Z

    return p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/ShareAlert;I)I
    .locals 0

    .line 146
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Components/ShareAlert;)Z
    .locals 0

    .line 146
    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->keyboardVisible:Z

    return p0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    .line 146
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->navigationBarHeight:I

    return p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    .line 146
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/Components/ShareAlert;I)I
    .locals 0

    .line 146
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    .line 146
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    .line 146
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    .line 146
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/Components/ShareAlert;)Z
    .locals 0

    .line 146
    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->isFullscreen:Z

    return p0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    .line 146
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    .line 146
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/ShareAlert;I)I
    .locals 0

    .line 146
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    .line 146
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/Components/ShareAlert;I)I
    .locals 0

    .line 146
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/Components/ShareAlert;)Landroid/view/ViewGroup;
    .locals 0

    .line 146
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/Components/ShareAlert;)Landroid/view/ViewGroup;
    .locals 0

    .line 146
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/Components/ShareAlert;)Landroid/view/ViewGroup;
    .locals 0

    .line 146
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$3500(Lorg/telegram/ui/Components/ShareAlert;)Landroid/view/ViewGroup;
    .locals 0

    .line 146
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$3600(Lorg/telegram/ui/Components/ShareAlert;I)I
    .locals 0

    .line 146
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$3700(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    .line 146
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$3800(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    .line 146
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$3900(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    .line 146
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/ShareAlert;I)I
    .locals 0

    .line 146
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$4000(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    .line 146
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$4100(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    .line 146
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$4200(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    .line 146
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$4300(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    .line 146
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$4400(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    .line 146
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$4500(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    .line 146
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$4600(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    .line 146
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$4700(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    .line 146
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$4800(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    .line 146
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$4900(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    .line 146
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/ShareAlert;I)I
    .locals 0

    .line 146
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$5000(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    .line 146
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$5200(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    .line 146
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$5300(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    .line 146
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$5400(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    .line 146
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$5500(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    .line 146
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$5600(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    .line 146
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$5700(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 146
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$5800(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    .line 146
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$5900(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 146
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/ShareAlert;I)I
    .locals 0

    .line 146
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$6000(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    .line 146
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$6100(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 146
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$6200(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 146
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$6300(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 146
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$6400(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    .line 146
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$6500(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 146
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$6600(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    .line 146
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$6700(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    .line 146
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$6800(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    .line 146
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$6900(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    .line 146
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/ShareAlert;)Landroid/view/ViewGroup;
    .locals 0

    .line 146
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$7000(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 146
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$7100(Lorg/telegram/ui/Components/ShareAlert;I)I
    .locals 0

    .line 146
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$7200(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    .line 146
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$7300(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 146
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$7400(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 146
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$7500(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    .line 146
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$7600(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    .line 146
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$7700(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    .line 146
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$7800(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    .line 146
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$7900(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    .line 146
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/ShareAlert;)Landroid/view/ViewGroup;
    .locals 0

    .line 146
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$8000(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    .line 146
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$8100(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    .line 146
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 146
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method private blur3_InvalidateBlur()V
    .locals 4

    .line 4108
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->scrollableViewNoiseSuppressor:Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;

    if-nez v0, :cond_0

    goto :goto_1

    .line 4112
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->iBlur3PositionMainTabs:Landroid/graphics/RectF;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 4113
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->iBlur3PositionMainTabs:Landroid/graphics/RectF;

    const/high16 v1, 0x40000

    invoke-static {v1}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    const/high16 v1, 0x42400000    # 48.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    :goto_0
    invoke-virtual {v0, v3, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 4115
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->scrollableViewNoiseSuppressor:Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;

    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->iBlur3Positions:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;->setupRenderNodes(Ljava/util/List;I)V

    .line 4116
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->scrollableViewNoiseSuppressor:Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;

    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->iBlur3Capture:Lorg/telegram/ui/Components/blur3/capture/IBlur3Capture;

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;->invalidateResultRenderNodes(Lorg/telegram/ui/Components/blur3/capture/IBlur3Capture;II)Z

    :cond_2
    :goto_1
    return-void
.end method

.method private checkCurrentList(Z)V
    .locals 4

    .line 3912
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->searchView:Lorg/telegram/ui/Components/FragmentSearchField;

    iget-object v0, v0, Lorg/telegram/ui/Components/FragmentSearchField;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const v1, 0x3f7ae148    # 0.98f

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->keyboardVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->searchView:Lorg/telegram/ui/Components/FragmentSearchField;

    iget-object v0, v0, Lorg/telegram/ui/Components/FragmentSearchField;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ShareAlert;->searchWasVisibleBeforeTopics:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 3920
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->selectedTopicDialog:Lorg/telegram/tgnet/TLRPC$Dialog;

    if-nez v0, :cond_2

    .line 3921
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v0, v2, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    .line 3922
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->searchGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v0, v3}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;Z)V

    :cond_2
    move v2, v3

    goto :goto_1

    .line 3914
    :cond_3
    :goto_0
    iput-boolean v2, p0, Lorg/telegram/ui/Components/ShareAlert;->updateSearchAdapter:Z

    .line 3915
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->selectedTopicDialog:Lorg/telegram/tgnet/TLRPC$Dialog;

    if-nez v0, :cond_4

    .line 3916
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v0, v3, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    .line 3917
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->searchGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v0, v2}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;Z)V

    .line 3926
    :cond_4
    :goto_1
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ShareAlert;->searchIsVisible:Z

    if-ne v0, v2, :cond_6

    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    return-void

    .line 3927
    :cond_6
    :goto_2
    iput-boolean v2, p0, Lorg/telegram/ui/Components/ShareAlert;->searchIsVisible:Z

    .line 3928
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->searchAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 3929
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->listAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 3930
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ShareAlert;->searchIsVisible:Z

    const v0, 0x7fffffff

    if-eqz p1, :cond_8

    .line 3931
    iget p1, p0, Lorg/telegram/ui/Components/ShareAlert;->lastOffset:I

    if-ne p1, v0, :cond_7

    .line 3932
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->searchGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->searchGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    neg-int v0, v0

    invoke-virtual {p1, v3, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_3

    .line 3934
    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->searchGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget v0, p0, Lorg/telegram/ui/Components/ShareAlert;->lastOffset:I

    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->searchGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v3, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 3936
    :goto_3
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->searchAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->searchView:Lorg/telegram/ui/Components/FragmentSearchField;

    iget-object v0, v0, Lorg/telegram/ui/Components/FragmentSearchField;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchDialogs(Ljava/lang/String;)V

    return-void

    .line 3938
    :cond_8
    iget p1, p0, Lorg/telegram/ui/Components/ShareAlert;->lastOffset:I

    if-ne p1, v0, :cond_9

    .line 3939
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1, v3, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    return-void

    .line 3941
    :cond_9
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1, v3, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    return-void
.end method

.method private collapseTopics()V
    .locals 9

    .line 2125
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->selectedTopicDialog:Lorg/telegram/tgnet/TLRPC$Dialog;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 2129
    iput-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->selectedTopicDialog:Lorg/telegram/tgnet/TLRPC$Dialog;

    const/4 v2, 0x0

    move v3, v2

    .line 2132
    :goto_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ShareAlert;->getMainGridView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 2133
    invoke-direct {p0}, Lorg/telegram/ui/Components/ShareAlert;->getMainGridView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2135
    instance-of v5, v4, Lorg/telegram/ui/Cells/ShareDialogCell;

    if-eqz v5, :cond_1

    move-object v5, v4

    check-cast v5, Lorg/telegram/ui/Cells/ShareDialogCell;

    invoke-virtual {v5}, Lorg/telegram/ui/Cells/ShareDialogCell;->getCurrentDialog()J

    move-result-wide v5

    iget-wide v7, v0, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    cmp-long v5, v5, v7

    if-nez v5, :cond_1

    move-object v1, v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    :goto_1
    return-void

    .line 2144
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->topicsAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_4

    .line 2145
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    .line 2148
    :cond_4
    invoke-direct {p0}, Lorg/telegram/ui/Components/ShareAlert;->getMainGridView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 2149
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->searchView:Lorg/telegram/ui/Components/FragmentSearchField;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2151
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ShareAlert;->searchIsVisible:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ShareAlert;->searchWasVisibleBeforeTopics:Z

    if-eqz v0, :cond_6

    .line 2152
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v0, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->adjustPanLayoutHelper:Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->ignoreOnce()V

    .line 2153
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->searchView:Lorg/telegram/ui/Components/FragmentSearchField;

    iget-object v0, v0, Lorg/telegram/ui/Components/FragmentSearchField;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 2154
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->searchView:Lorg/telegram/ui/Components/FragmentSearchField;

    iget-object v0, v0, Lorg/telegram/ui/Components/FragmentSearchField;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    :cond_6
    const/4 v0, 0x2

    .line 2157
    new-array v0, v0, [I

    .line 2159
    new-instance v2, Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v3, Landroidx/dynamicanimation/animation/FloatValueHolder;

    const/high16 v4, 0x447a0000    # 1000.0f

    invoke-direct {v3, v4}, Landroidx/dynamicanimation/animation/FloatValueHolder;-><init>(F)V

    invoke-direct {v2, v3}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V

    new-instance v3, Landroidx/dynamicanimation/animation/SpringForce;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    .line 2161
    iget-object v4, p0, Lorg/telegram/ui/Components/ShareAlert;->parentFragment:Lorg/telegram/ui/ChatActivity;

    if-eqz v4, :cond_7

    iget-boolean v4, v4, Lorg/telegram/ui/ChatActivity;->shareAlertDebugTopicsSlowMotion:Z

    if-eqz v4, :cond_7

    const/high16 v4, 0x41200000    # 10.0f

    goto :goto_2

    :cond_7
    const/high16 v4, 0x44480000    # 800.0f

    :goto_2
    invoke-virtual {v3, v4}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    .line 2162
    invoke-virtual {v3, v4}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v3

    .line 2160
    invoke-virtual {v2, v3}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/Components/ShareAlert;->topicsAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 2163
    new-instance v3, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v1, v0}, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/ShareAlert;Landroid/view/View;[I)V

    invoke-virtual {v2, v3}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 2168
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->topicsAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v1, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/ShareAlert;)V

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 2178
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->topicsAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    return-void
.end method

.method private copyLink(Landroid/content/Context;)V
    .locals 3

    .line 2883
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->exportedMessageLink:Lorg/telegram/tgnet/TLRPC$TL_exportedMessageLink;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->linkToCopy:[Ljava/lang/String;

    aget-object p1, p1, v0

    if-nez p1, :cond_0

    goto :goto_2

    .line 2887
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ShareAlert;->getLink()Ljava/lang/String;

    move-result-object p1

    .line 2888
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v2, "clipboard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    .line 2889
    const-string v2, "label"

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->exportedMessageLink:Lorg/telegram/tgnet/TLRPC$TL_exportedMessageLink;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_exportedMessageLink;->link:Ljava/lang/String;

    :goto_0
    invoke-static {v2, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    .line 2890
    invoke-virtual {v1, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 2891
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->delegate:Lorg/telegram/ui/Components/ShareAlert$ShareAlertDelegate;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lorg/telegram/ui/Components/ShareAlert$ShareAlertDelegate;->didCopy()Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_2
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->parentActivity:Landroid/app/Activity;

    instance-of p1, p1, Lorg/telegram/ui/LaunchActivity;

    if-eqz p1, :cond_4

    .line 2892
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->exportedMessageLink:Lorg/telegram/tgnet/TLRPC$TL_exportedMessageLink;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_exportedMessageLink;->link:Ljava/lang/String;

    const-string v1, "/c/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    .line 2893
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->parentActivity:Landroid/app/Activity;

    check-cast p1, Lorg/telegram/ui/LaunchActivity;

    new-instance v1, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda18;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda18;-><init>(Z)V

    invoke-virtual {p1, v1}, Lorg/telegram/ui/LaunchActivity;->showBulletin(Landroidx/arch/core/util/Function;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_2
    return-void

    .line 2896
    :goto_3
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static createShareAlert(Landroid/content/Context;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;ZLjava/lang/String;Z)Lorg/telegram/ui/Components/ShareAlert;
    .locals 12

    if-eqz p1, :cond_0

    .line 372
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 373
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    move-object v4, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 377
    :goto_1
    new-instance v1, Lorg/telegram/ui/Components/ShareAlert;

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move-object v5, p2

    move v7, p3

    move-object/from16 v8, p4

    move/from16 v10, p5

    invoke-direct/range {v1 .. v11}, Lorg/telegram/ui/Components/ShareAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/ChatActivity;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZ)V

    return-object v1
.end method

.method private getCurrentTop()I
    .locals 4

    .line 2723
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_1

    .line 2724
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2725
    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    if-eqz v2, :cond_1

    .line 2727
    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    if-ltz v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    :cond_0
    sub-int/2addr v3, v1

    return v3

    :cond_1
    const/16 v0, -0x3e8

    return v0
.end method

.method private getLink()Ljava/lang/String;
    .locals 4

    .line 3949
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->switchView:Lorg/telegram/ui/Components/ShareAlert$SwitchView;

    if-eqz v0, :cond_0

    .line 3950
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->linkToCopy:[Ljava/lang/String;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert$SwitchView;->-$$Nest$fgetcurrentTab(Lorg/telegram/ui/Components/ShareAlert$SwitchView;)I

    move-result v0

    aget-object v0, v1, v0

    goto :goto_1

    .line 3952
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->exportedMessageLink:Lorg/telegram/tgnet/TLRPC$TL_exportedMessageLink;

    if-eqz v0, :cond_1

    .line 3953
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_exportedMessageLink;->link:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 3956
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->linkToCopy:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 3959
    :cond_2
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->timestampCheckbox:Lorg/telegram/ui/Components/CheckBox2;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lorg/telegram/ui/Components/CheckBox2;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3961
    :try_start_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "t"

    iget v3, p0, Lorg/telegram/ui/Components/ShareAlert;->timestamp:I

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->formatTimestamp(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 3963
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    if-nez v0, :cond_4

    .line 3967
    const-string v0, ""

    :cond_4
    return-object v0
.end method

.method private getMainGridView()Lorg/telegram/ui/Components/RecyclerListView;
    .locals 1

    .line 2734
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ShareAlert;->searchIsVisible:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ShareAlert;->searchWasVisibleBeforeTopics:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->searchGridView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object v0
.end method

.method private invalidateTopicsAnimation(Landroid/view/View;[IF)V
    .locals 12

    .line 2182
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->topicsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 2183
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->topicsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 2184
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->topicsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/high16 v1, 0x3e800000    # 0.25f

    mul-float/2addr v1, p3

    const/high16 v2, 0x3f400000    # 0.75f

    add-float/2addr v2, v1

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    .line 2185
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->topicsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    .line 2186
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->topicsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, p3}, Landroid/view/View;->setAlpha(F)V

    .line 2188
    invoke-direct {p0}, Lorg/telegram/ui/Components/ShareAlert;->getMainGridView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    .line 2189
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    add-float/2addr v2, v4

    invoke-virtual {v0, v2}, Landroid/view/View;->setPivotX(F)V

    .line 2190
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    add-float/2addr v2, v4

    invoke-virtual {v0, v2}, Landroid/view/View;->setPivotY(F)V

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    .line 2191
    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 2192
    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    sub-float v1, v2, p3

    .line 2193
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 2195
    iget-object v4, p0, Lorg/telegram/ui/Components/ShareAlert;->searchView:Lorg/telegram/ui/Components/FragmentSearchField;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v3

    invoke-virtual {v4, v5}, Landroid/view/View;->setPivotX(F)V

    .line 2196
    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert;->searchView:Lorg/telegram/ui/Components/FragmentSearchField;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setPivotY(F)V

    .line 2197
    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert;->searchView:Lorg/telegram/ui/Components/FragmentSearchField;

    const v4, 0x3dcccccd    # 0.1f

    mul-float/2addr v4, v1

    const v5, 0x3f666666    # 0.9f

    add-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/view/View;->setScaleX(F)V

    .line 2198
    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert;->searchView:Lorg/telegram/ui/Components/FragmentSearchField;

    invoke-virtual {v3, v4}, Landroid/view/View;->setScaleY(F)V

    .line 2199
    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert;->searchView:Lorg/telegram/ui/Components/FragmentSearchField;

    invoke-virtual {v3, v1}, Landroid/view/View;->setAlpha(F)V

    .line 2201
    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert;->topicsBackActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBar;->getBackButton()Landroid/widget/ImageView;

    move-result-object v3

    const/high16 v4, 0x41800000    # 16.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    mul-float/2addr v5, v1

    invoke-virtual {v3, v5}, Landroid/view/View;->setTranslationX(F)V

    .line 2202
    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert;->topicsBackActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBar;->getTitleTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v3

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v1

    invoke-virtual {v3, v5}, Landroid/view/View;->setTranslationY(F)V

    .line 2203
    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert;->topicsBackActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBar;->getSubtitleTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v3

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v1

    invoke-virtual {v3, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 2204
    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert;->topicsBackActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v3, p3}, Landroid/view/View;->setAlpha(F)V

    .line 2206
    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert;->topicsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, p2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 2207
    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p2, p3}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result p2

    const/4 v3, 0x0

    move v4, v3

    .line 2208
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 2209
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2210
    instance-of v6, v5, Lorg/telegram/ui/Cells/ShareDialogCell;

    if-eqz v6, :cond_1

    .line 2211
    invoke-virtual {v5}, Landroid/view/View;->getX()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v7

    sub-float/2addr v6, v7

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v6, v7

    mul-float/2addr v6, p2

    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationX(F)V

    .line 2212
    invoke-virtual {v5}, Landroid/view/View;->getY()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v8

    sub-float/2addr v6, v8

    mul-float/2addr v6, v7

    mul-float/2addr v6, p2

    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationY(F)V

    if-eq v5, p1, :cond_0

    .line 2215
    invoke-static {p3, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    div-float/2addr v6, v7

    sub-float v6, v2, v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    .line 2217
    :cond_0
    invoke-virtual {v5, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2221
    :cond_2
    :goto_2
    iget-object p3, p0, Lorg/telegram/ui/Components/ShareAlert;->topicsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    if-ge v3, p3, :cond_4

    .line 2222
    iget-object p3, p0, Lorg/telegram/ui/Components/ShareAlert;->topicsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p3, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    .line 2223
    instance-of v1, p3, Lorg/telegram/ui/Cells/ShareTopicCell;

    if-eqz v1, :cond_3

    .line 2224
    invoke-virtual {p3}, Landroid/view/View;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v4

    sub-float/2addr v1, v4

    neg-float v1, v1

    float-to-double v4, v1

    sub-float v1, v2, p2

    float-to-double v6, v1

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    mul-double/2addr v4, v10

    double-to-float v1, v4

    invoke-virtual {p3, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 2225
    invoke-virtual {p3}, Landroid/view/View;->getY()F

    move-result v1

    iget-object v4, p0, Lorg/telegram/ui/Components/ShareAlert;->topicsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4}, Landroid/view/View;->getTranslationY()F

    move-result v4

    add-float/2addr v1, v4

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v4

    sub-float/2addr v1, v4

    neg-float v1, v1

    float-to-double v4, v1

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-float v1, v4

    invoke-virtual {p3, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 2228
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 2229
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$collapseTopics$22(Landroid/view/View;[ILandroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    const/high16 p3, 0x447a0000    # 1000.0f

    div-float/2addr p4, p3

    .line 2166
    invoke-direct {p0, p1, p2, p4}, Lorg/telegram/ui/Components/ShareAlert;->invalidateTopicsAnimation(Landroid/view/View;[IF)V

    return-void
.end method

.method private synthetic lambda$collapseTopics$23(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    .line 2169
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->topicsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 2170
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->topicsBackActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 2172
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->shareTopicsAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareTopicsAdapter;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/ShareAlert$ShareTopicsAdapter;->-$$Nest$fputtopics(Lorg/telegram/ui/Components/ShareAlert$ShareTopicsAdapter;Ljava/util/List;)V

    .line 2173
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->shareTopicsAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareTopicsAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 2175
    iput-object p2, p0, Lorg/telegram/ui/Components/ShareAlert;->topicsAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    const/4 p1, 0x0

    .line 2176
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ShareAlert;->searchWasVisibleBeforeTopics:Z

    return-void
.end method

.method private synthetic lambda$new$0(Lorg/telegram/tgnet/TLObject;Landroid/content/Context;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 528
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_exportedMessageLink;

    iput-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->exportedMessageLink:Lorg/telegram/tgnet/TLRPC$TL_exportedMessageLink;

    .line 529
    invoke-direct {p0}, Lorg/telegram/ui/Components/ShareAlert;->updateLinkTextView()V

    .line 530
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ShareAlert;->copyLinkOnEnd:Z

    if-eqz p1, :cond_0

    .line 531
    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/ShareAlert;->copyLink(Landroid/content/Context;)V

    :cond_0
    const/4 p1, 0x0

    .line 534
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ShareAlert;->loadingLink:Z

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/content/Context;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 526
    new-instance p3, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda27;

    invoke-direct {p3, p0, p2, p1}, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda27;-><init>(Lorg/telegram/ui/Components/ShareAlert;Lorg/telegram/tgnet/TLObject;Landroid/content/Context;)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$new$10(Landroid/view/View;)V
    .locals 2

    .line 1380
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {p1}, Landroidx/collection/LongSparseArray;->size()I

    move-result p1

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lorg/telegram/ui/Components/ShareAlert;->isChannel:Z

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->linkToCopy:[Ljava/lang/String;

    aget-object p1, p1, v0

    if-eqz p1, :cond_2

    .line 1381
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ShareAlert;->dismiss()V

    .line 1382
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/PhotoViewer;->closePhoto(ZZ)V

    .line 1383
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->linkToCopy:[Ljava/lang/String;

    aget-object p1, p1, v0

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lorg/telegram/ui/Components/ShareAlert;->loadingLink:Z

    if-eqz p1, :cond_1

    .line 1384
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ShareAlert;->copyLinkOnEnd:Z

    .line 1385
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v1, Lorg/telegram/messenger/R$string;->Loading:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 1387
    :cond_1
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ShareAlert;->copyLink(Landroid/content/Context;)V

    :cond_2
    return-void
.end method

.method private synthetic lambda$new$11(Landroid/view/View;)V
    .locals 2

    .line 1409
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {p1}, Landroidx/collection/LongSparseArray;->size()I

    move-result p1

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lorg/telegram/ui/Components/ShareAlert;->isChannel:Z

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->linkToCopy:[Ljava/lang/String;

    aget-object p1, p1, v0

    if-eqz p1, :cond_2

    .line 1410
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ShareAlert;->dismiss()V

    .line 1411
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->linkToCopy:[Ljava/lang/String;

    aget-object p1, p1, v0

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lorg/telegram/ui/Components/ShareAlert;->loadingLink:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 1412
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ShareAlert;->copyLinkOnEnd:Z

    .line 1413
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v1, Lorg/telegram/messenger/R$string;->Loading:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 1415
    :cond_1
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ShareAlert;->copyLink(Landroid/content/Context;)V

    :cond_2
    return-void
.end method

.method private synthetic lambda$new$12(Lorg/telegram/messenger/MessageObject;Landroid/view/View;)V
    .locals 1

    .line 1432
    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert;->parentFragment:Lorg/telegram/ui/ChatActivity;

    if-nez p2, :cond_0

    .line 1433
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p2

    :cond_0
    if-nez p2, :cond_1

    return-void

    .line 1435
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ShareAlert;->dismiss()V

    .line 1436
    new-instance v0, Lorg/telegram/ui/MessageStatisticActivity;

    invoke-direct {v0, p1}, Lorg/telegram/ui/MessageStatisticActivity;-><init>(Lorg/telegram/messenger/MessageObject;)V

    invoke-virtual {p2, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$new$16(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    .line 1783
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ShareAlert;->sendInternal(Z)V

    return-void
.end method

.method private synthetic lambda$new$17(Landroid/view/View;)Z
    .locals 0

    .line 1784
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->writeButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ShareAlert;->onSendLongClick(Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method private synthetic lambda$new$18(Landroid/view/View;)V
    .locals 2

    .line 1812
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->timestampCheckbox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/CheckBox2;->isChecked()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/CheckBox2;->setChecked(ZZ)V

    .line 1813
    invoke-direct {p0}, Lorg/telegram/ui/Components/ShareAlert;->updateLinkTextView()V

    return-void
.end method

.method private synthetic lambda$new$2(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    if-eqz p3, :cond_2

    .line 1079
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 p2, 0x54

    if-eq p1, p2, :cond_1

    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 p2, 0x42

    if-ne p1, p2, :cond_2

    .line 1080
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->searchView:Lorg/telegram/ui/Components/FragmentSearchField;

    iget-object p1, p1, Lorg/telegram/ui/Components/FragmentSearchField;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$new$3()V
    .locals 2

    const/4 v0, 0x1

    .line 1085
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ShareAlert;->updateSearchAdapter:Z

    .line 1086
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->searchView:Lorg/telegram/ui/Components/FragmentSearchField;

    iget-object v0, v0, Lorg/telegram/ui/Components/FragmentSearchField;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1087
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->searchView:Lorg/telegram/ui/Components/FragmentSearchField;

    iget-object v0, v0, Lorg/telegram/ui/Components/FragmentSearchField;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    return-void
.end method

.method private synthetic lambda$new$5(Landroid/view/View;I)V
    .locals 0

    .line 1151
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->shareTopicsAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareTopicsAdapter;

    invoke-static {p1}, Lorg/telegram/ui/Components/ShareAlert$ShareTopicsAdapter;->-$$Nest$fgetbotforumWithManageTopics(Lorg/telegram/ui/Components/ShareAlert$ShareTopicsAdapter;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    .line 1152
    invoke-direct {p0}, Lorg/telegram/ui/Components/ShareAlert;->onTopicCreateCellClick()V

    return-void

    .line 1155
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->shareTopicsAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareTopicsAdapter;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/ShareAlert$ShareTopicsAdapter;->getItemTopic(I)Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1157
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ShareAlert;->onTopicCellClick(Lorg/telegram/tgnet/TLRPC$TL_forumTopic;)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$new$7(Landroid/view/View;I)V
    .locals 1

    if-gez p2, :cond_0

    goto :goto_0

    .line 1224
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->listAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;

    invoke-virtual {v0, p2}, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;->getItem(I)Lorg/telegram/tgnet/TLRPC$Dialog;

    move-result-object p2

    if-nez p2, :cond_1

    :goto_0
    return-void

    .line 1228
    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ShareAlert;->selectDialog(Landroid/view/View;Lorg/telegram/tgnet/TLRPC$Dialog;)V

    return-void
.end method

.method private synthetic lambda$new$9(Landroid/view/View;I)V
    .locals 1

    if-gez p2, :cond_0

    goto :goto_0

    .line 1281
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->searchAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;

    invoke-virtual {v0, p2}, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->getItem(I)Lorg/telegram/tgnet/TLRPC$Dialog;

    move-result-object p2

    if-nez p2, :cond_1

    :goto_0
    return-void

    .line 1285
    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ShareAlert;->selectDialog(Landroid/view/View;Lorg/telegram/tgnet/TLRPC$Dialog;)V

    return-void
.end method

.method private synthetic lambda$onSendLongClick$24(Landroid/view/KeyEvent;)V
    .locals 2

    .line 2284
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2285
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onSendLongClick$25(Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;Landroid/view/View;)V
    .locals 1

    .line 2354
    iget-boolean p3, p0, Lorg/telegram/ui/Components/ShareAlert;->hideSendersName:Z

    xor-int/lit8 v0, p3, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ShareAlert;->hideSendersName:Z

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    const/4 p3, 0x0

    .line 2356
    iput-boolean p3, p0, Lorg/telegram/ui/Components/ShareAlert;->hideCaption:Z

    if-eqz p1, :cond_0

    .line 2358
    invoke-virtual {p1, p3, v0}, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;->setState(ZZ)V

    .line 2361
    :cond_0
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ShareAlert;->hideSendersName:Z

    invoke-virtual {p2, p1, v0}, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;->setState(ZZ)V

    return-void
.end method

.method private synthetic lambda$onSendLongClick$26(Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;Landroid/view/View;)V
    .locals 2

    .line 2366
    iget-boolean p3, p0, Lorg/telegram/ui/Components/ShareAlert;->hideCaption:Z

    xor-int/lit8 v0, p3, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ShareAlert;->hideCaption:Z

    const/4 v1, 0x1

    if-nez p3, :cond_0

    .line 2368
    iget-boolean p3, p0, Lorg/telegram/ui/Components/ShareAlert;->hideSendersName:Z

    if-nez p3, :cond_1

    .line 2369
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ShareAlert;->hideSendersName:Z

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 2372
    iput-boolean p3, p0, Lorg/telegram/ui/Components/ShareAlert;->hideSendersName:Z

    .line 2374
    :cond_1
    :goto_0
    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;->setState(ZZ)V

    .line 2375
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ShareAlert;->hideSendersName:Z

    invoke-virtual {p2, p1, v1}, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;->setState(ZZ)V

    return-void
.end method

.method private synthetic lambda$onSendLongClick$27(Landroid/view/KeyEvent;)V
    .locals 2

    .line 2404
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2405
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onSendLongClick$28(Landroid/view/View;)V
    .locals 0

    .line 2456
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2457
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    :cond_0
    const/4 p1, 0x0

    .line 2459
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ShareAlert;->sendInternal(Z)V

    return-void
.end method

.method private synthetic lambda$onSendLongClick$29(Landroid/view/View;)V
    .locals 0

    .line 2469
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2470
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    :cond_0
    const/4 p1, 0x1

    .line 2472
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ShareAlert;->sendInternal(Z)V

    return-void
.end method

.method private synthetic lambda$selectDialog$21(Ljava/util/concurrent/atomic/AtomicReference;Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;Lorg/telegram/tgnet/TLRPC$Dialog;)V
    .locals 3

    const/4 v0, 0x0

    .line 2081
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 2082
    sget p1, Lorg/telegram/messenger/NotificationCenter;->topicsDidLoaded:I

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    iget-wide v1, p3, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    neg-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-interface {p2, p1, v0, v1}, Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;->didReceivedNotification(II[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$sendInternal$30([Ljava/lang/CharSequence;Ljava/util/ArrayList;ZILjava/util/HashMap;)V
    .locals 54

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    const-wide/16 v2, 0x0

    .line 2597
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 2592
    iget-object v5, v0, Lorg/telegram/ui/Components/ShareAlert;->sendingMessageObjects:Ljava/util/ArrayList;

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v5, :cond_f

    .line 2593
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v9, v8

    move v10, v9

    .line 2594
    :goto_0
    iget-object v11, v0, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v11}, Landroidx/collection/LongSparseArray;->size()I

    move-result v11

    if-ge v9, v11, :cond_b

    .line 2595
    iget-object v11, v0, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v11, v9}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v13

    .line 2596
    iget v11, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v11}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v11

    invoke-virtual {v11, v13, v14}, Lorg/telegram/messenger/MessagesController;->isMonoForum(J)Z

    move-result v11

    if-nez v1, :cond_0

    move-object/from16 v27, v4

    goto :goto_1

    .line 2597
    :cond_0
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    move-object/from16 v27, v12

    :goto_1
    if-eqz v27, :cond_1

    .line 2598
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    cmp-long v12, v15, v2

    if-lez v12, :cond_1

    move v10, v7

    .line 2599
    :cond_1
    iget-object v12, v0, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogTopics:Ljava/util/Map;

    iget-object v15, v0, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v15, v13, v14}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v12, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    if-eqz v12, :cond_2

    if-eqz v11, :cond_2

    .line 2600
    iget-object v15, v12, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v15}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v15

    move-wide/from16 v28, v2

    move-wide v2, v15

    goto :goto_2

    :cond_2
    move-wide/from16 v28, v2

    :goto_2
    if-eqz v12, :cond_3

    if-nez v11, :cond_3

    .line 2602
    new-instance v11, Lorg/telegram/messenger/MessageObject;

    iget v15, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    iget-object v12, v12, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->topicStartMessage:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-direct {v11, v15, v12, v8, v8}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    move-object v15, v11

    goto :goto_3

    :cond_3
    move-object v15, v6

    :goto_3
    if-eqz v15, :cond_4

    .line 2604
    iput-boolean v7, v15, Lorg/telegram/messenger/MessageObject;->isTopicMainMessage:Z

    .line 2607
    :cond_4
    iget-object v11, v0, Lorg/telegram/ui/Components/ShareAlert;->frameLayout2:Landroid/widget/FrameLayout;

    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_7

    iget-object v11, v0, Lorg/telegram/ui/Components/ShareAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v11}, Lorg/telegram/ui/Components/EditTextEmoji;->length()I

    move-result v11

    if-lez v11, :cond_7

    .line 2608
    aget-object v11, p1, v8

    if-nez v11, :cond_5

    move-object v12, v6

    goto :goto_4

    :cond_5
    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v12, v11

    :goto_4
    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v16, v15

    move-object/from16 v19, p2

    move/from16 v22, p3

    invoke-static/range {v12 .. v26}, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->of(Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;ZIILorg/telegram/messenger/MessageObject$SendAnimationData;Z)Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;

    move-result-object v11

    if-nez v27, :cond_6

    move/from16 v30, v9

    move-wide/from16 v8, v28

    goto :goto_5

    .line 2609
    :cond_6
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    move/from16 v30, v9

    move-wide/from16 v8, v16

    :goto_5
    iput-wide v8, v11, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->payStars:J

    .line 2610
    iput-wide v2, v11, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->monoForumPeer:J

    .line 2611
    iget v8, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v8}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance(I)Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v8

    invoke-virtual {v8, v11}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;)V

    goto :goto_6

    :cond_7
    move/from16 v30, v9

    .line 2613
    :goto_6
    iget v8, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v8}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance(I)Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v12

    move-object/from16 v21, v15

    move-wide v14, v13

    iget-object v13, v0, Lorg/telegram/ui/Components/ShareAlert;->sendingMessageObjects:Ljava/util/ArrayList;

    iget-boolean v8, v0, Lorg/telegram/ui/Components/ShareAlert;->hideSendersName:Z

    iget-boolean v9, v0, Lorg/telegram/ui/Components/ShareAlert;->hideCaption:Z

    if-nez v27, :cond_8

    move-wide/from16 v23, v28

    goto :goto_7

    :cond_8
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    move-wide/from16 v23, v16

    :goto_7
    const/16 v27, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v18, p3

    move/from16 v22, p4

    move-wide/from16 v25, v2

    move/from16 v16, v8

    move/from16 v17, v9

    invoke-virtual/range {v12 .. v27}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/util/ArrayList;JZZZIILorg/telegram/messenger/MessageObject;IJJLorg/telegram/messenger/MessageSuggestionParams;)I

    move-result v2

    move-wide v13, v14

    if-eqz v2, :cond_9

    .line 2615
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2617
    :cond_9
    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v3}, Landroidx/collection/LongSparseArray;->size()I

    move-result v3

    if-ne v3, v7, :cond_a

    .line 2618
    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2, v3, v6}, Lorg/telegram/ui/Components/AlertsCreator;->showSendMediaAlert(ILorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    if-eqz v2, :cond_a

    goto :goto_8

    :cond_a
    add-int/lit8 v9, v30, 0x1

    move-wide/from16 v2, v28

    const/4 v8, 0x0

    goto/16 :goto_0

    .line 2625
    :cond_b
    :goto_8
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_c
    :goto_9
    if-ge v2, v1, :cond_d

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 2626
    iget-object v8, v0, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v8, v3, v4}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$Dialog;

    .line 2627
    iget-object v9, v0, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v9, v3, v4}, Landroidx/collection/LongSparseArray;->remove(J)V

    if-eqz v8, :cond_c

    .line 2629
    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogTopics:Ljava/util/Map;

    invoke-interface {v3, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 2632
    :cond_d
    iget-object v1, v0, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v1}, Landroidx/collection/LongSparseArray;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_28

    .line 2633
    iget-object v1, v0, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogs:Landroidx/collection/LongSparseArray;

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->sendingMessageObjects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v3}, Landroidx/collection/LongSparseArray;->size()I

    move-result v3

    if-ne v3, v7, :cond_e

    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogTopics:Ljava/util/Map;

    iget-object v4, v0, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogs:Landroidx/collection/LongSparseArray;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    :cond_e
    xor-int/lit8 v3, v10, 0x1

    invoke-virtual {v0, v1, v2, v6, v3}, Lorg/telegram/ui/Components/ShareAlert;->onSend(Landroidx/collection/LongSparseArray;ILorg/telegram/tgnet/TLRPC$TL_forumTopic;Z)V

    goto/16 :goto_1d

    :cond_f
    move-wide/from16 v28, v2

    .line 2637
    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->switchView:Lorg/telegram/ui/Components/ShareAlert$SwitchView;

    if-eqz v2, :cond_10

    .line 2638
    invoke-static {v2}, Lorg/telegram/ui/Components/ShareAlert$SwitchView;->-$$Nest$fgetcurrentTab(Lorg/telegram/ui/Components/ShareAlert$SwitchView;)I

    move-result v2

    goto :goto_a

    :cond_10
    const/4 v2, 0x0

    .line 2642
    :goto_a
    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-eqz v3, :cond_1b

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 2643
    :goto_b
    iget-object v8, v0, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v8}, Landroidx/collection/LongSparseArray;->size()I

    move-result v8

    if-ge v3, v8, :cond_1a

    .line 2644
    iget-object v8, v0, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v8, v3}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v13

    .line 2645
    iget v8, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v8}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    invoke-virtual {v8, v13, v14}, Lorg/telegram/messenger/MessagesController;->isMonoForum(J)Z

    move-result v8

    if-nez v1, :cond_11

    move-object v9, v4

    goto :goto_c

    .line 2646
    :cond_11
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    :goto_c
    if-eqz v9, :cond_12

    .line 2647
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v10, v10, v28

    if-lez v10, :cond_12

    move v5, v7

    .line 2648
    :cond_12
    iget-object v10, v0, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogTopics:Ljava/util/Map;

    iget-object v11, v0, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v11, v13, v14}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    if-eqz v10, :cond_13

    if-eqz v8, :cond_13

    .line 2649
    iget-object v11, v10, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v11}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v11

    goto :goto_d

    :cond_13
    move-wide/from16 v11, v28

    :goto_d
    if-eqz v10, :cond_14

    if-nez v8, :cond_14

    .line 2650
    new-instance v8, Lorg/telegram/messenger/MessageObject;

    iget v15, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->topicStartMessage:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v6, 0x0

    invoke-direct {v8, v15, v10, v6, v6}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    move-object v15, v8

    goto :goto_e

    :cond_14
    const/4 v15, 0x0

    .line 2653
    :goto_e
    iget-object v6, v0, Lorg/telegram/ui/Components/ShareAlert;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-nez v6, :cond_17

    .line 2654
    iget-object v6, v0, Lorg/telegram/ui/Components/ShareAlert;->frameLayout2:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_16

    iget-object v6, v0, Lorg/telegram/ui/Components/ShareAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/EditTextEmoji;->length()I

    move-result v6

    if-lez v6, :cond_16

    const/16 v53, 0x0

    .line 2655
    aget-object v6, p1, v53

    if-nez v6, :cond_15

    const/16 v30, 0x0

    goto :goto_f

    :cond_15
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v30, v6

    :goto_f
    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x1

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    move-object/from16 v34, v15

    move-object/from16 v37, p2

    move/from16 v40, p3

    move-wide/from16 v31, v13

    move-object/from16 v33, v15

    invoke-static/range {v30 .. v44}, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->of(Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;ZIILorg/telegram/messenger/MessageObject$SendAnimationData;Z)Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;

    move-result-object v6

    move-wide v10, v11

    goto/16 :goto_10

    .line 2657
    :cond_16
    iget-object v6, v0, Lorg/telegram/ui/Components/ShareAlert;->sendingText:[Ljava/lang/String;

    aget-object v6, v6, v2

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v16, v15

    move/from16 v22, p3

    move-wide v10, v11

    move-object v12, v6

    invoke-static/range {v12 .. v26}, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->of(Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;ZIILorg/telegram/messenger/MessageObject$SendAnimationData;Z)Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;

    move-result-object v6

    goto :goto_10

    :cond_17
    move-wide v10, v11

    .line 2660
    iget-object v6, v0, Lorg/telegram/ui/Components/ShareAlert;->frameLayout2:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_18

    iget-object v6, v0, Lorg/telegram/ui/Components/ShareAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/EditTextEmoji;->length()I

    move-result v6

    if-lez v6, :cond_18

    const/16 v53, 0x0

    aget-object v6, p1, v53

    if-eqz v6, :cond_18

    .line 2661
    iget v6, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance(I)Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v6

    aget-object v8, p1, v53

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v16, v15

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move/from16 v22, p3

    invoke-static/range {v12 .. v26}, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->of(Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;ZIILorg/telegram/messenger/MessageObject$SendAnimationData;Z)Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;

    move-result-object v8

    move-object/from16 v15, v16

    invoke-virtual {v6, v8}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;)V

    :cond_18
    const/16 v25, 0x0

    const/16 v26, 0x0

    const/4 v12, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v16, v15

    move/from16 v22, p3

    .line 2663
    invoke-static/range {v12 .. v26}, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->of(Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;ZIILorg/telegram/messenger/MessageObject$SendAnimationData;Z)Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;

    move-result-object v6

    .line 2664
    iget-object v8, v0, Lorg/telegram/ui/Components/ShareAlert;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iput-object v8, v6, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->sendingStory:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    :goto_10
    if-nez v9, :cond_19

    move-wide/from16 v8, v28

    goto :goto_11

    .line 2666
    :cond_19
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    :goto_11
    iput-wide v8, v6, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->payStars:J

    .line 2667
    iput-wide v10, v6, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->monoForumPeer:J

    .line 2668
    iget v8, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v8}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance(I)Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v8

    invoke-virtual {v8, v6}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;)V

    add-int/lit8 v3, v3, 0x1

    const/4 v6, 0x0

    goto/16 :goto_b

    :cond_1a
    move v9, v7

    goto/16 :goto_1c

    .line 2670
    :cond_1b
    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->sendingText:[Ljava/lang/String;

    aget-object v3, v3, v2

    if-eqz v3, :cond_24

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 2671
    :goto_12
    iget-object v6, v0, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v6}, Landroidx/collection/LongSparseArray;->size()I

    move-result v6

    if-ge v3, v6, :cond_1a

    .line 2672
    iget-object v6, v0, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v6, v3}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v13

    .line 2673
    iget v6, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    invoke-virtual {v6, v13, v14}, Lorg/telegram/messenger/MessagesController;->isMonoForum(J)Z

    move-result v6

    if-nez v1, :cond_1c

    move-object v8, v4

    goto :goto_13

    .line 2674
    :cond_1c
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    :goto_13
    if-eqz v8, :cond_1d

    .line 2675
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    cmp-long v9, v9, v28

    if-lez v9, :cond_1d

    move v5, v7

    .line 2676
    :cond_1d
    iget-object v9, v0, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogTopics:Ljava/util/Map;

    iget-object v10, v0, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v10, v13, v14}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    if-eqz v9, :cond_1e

    if-eqz v6, :cond_1e

    .line 2677
    iget-object v10, v9, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v10}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v10

    goto :goto_14

    :cond_1e
    move-wide/from16 v10, v28

    :goto_14
    if-eqz v9, :cond_1f

    if-nez v6, :cond_1f

    .line 2678
    new-instance v6, Lorg/telegram/messenger/MessageObject;

    iget v12, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->topicStartMessage:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v15, 0x0

    invoke-direct {v6, v12, v9, v15, v15}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    move-object/from16 v33, v6

    goto :goto_15

    :cond_1f
    const/4 v15, 0x0

    const/16 v33, 0x0

    .line 2680
    :goto_15
    iget-object v6, v0, Lorg/telegram/ui/Components/ShareAlert;->frameLayout2:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_22

    iget-object v6, v0, Lorg/telegram/ui/Components/ShareAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/EditTextEmoji;->length()I

    move-result v6

    if-lez v6, :cond_22

    .line 2681
    aget-object v6, p1, v15

    if-nez v6, :cond_20

    const/16 v30, 0x0

    goto :goto_16

    :cond_20
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v30, v6

    :goto_16
    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x1

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    move-object/from16 v34, v33

    move-object/from16 v37, p2

    move/from16 v40, p3

    move-wide/from16 v31, v13

    invoke-static/range {v30 .. v44}, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->of(Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;ZIILorg/telegram/messenger/MessageObject$SendAnimationData;Z)Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;

    move-result-object v6

    move-object/from16 v15, v33

    if-nez v8, :cond_21

    move v9, v7

    move-object/from16 p4, v8

    move-wide/from16 v7, v28

    goto :goto_17

    .line 2682
    :cond_21
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    move v9, v7

    move-object/from16 p4, v8

    move-wide/from16 v7, v16

    :goto_17
    iput-wide v7, v6, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->payStars:J

    .line 2683
    iput-wide v10, v6, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->monoForumPeer:J

    .line 2684
    iget v7, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v7}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance(I)Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v7

    invoke-virtual {v7, v6}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;)V

    goto :goto_18

    :cond_22
    move v9, v7

    move-object/from16 p4, v8

    move-object/from16 v15, v33

    .line 2686
    :goto_18
    iget-object v6, v0, Lorg/telegram/ui/Components/ShareAlert;->sendingText:[Ljava/lang/String;

    aget-object v12, v6, v2

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v16, v15

    move/from16 v22, p3

    invoke-static/range {v12 .. v26}, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->of(Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;ZIILorg/telegram/messenger/MessageObject$SendAnimationData;Z)Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;

    move-result-object v6

    if-nez p4, :cond_23

    move-wide/from16 v7, v28

    goto :goto_19

    .line 2687
    :cond_23
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    :goto_19
    iput-wide v7, v6, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->payStars:J

    .line 2688
    iput-wide v10, v6, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->monoForumPeer:J

    .line 2689
    iget v7, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v7}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance(I)Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v7

    invoke-virtual {v7, v6}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;)V

    add-int/lit8 v3, v3, 0x1

    move v7, v9

    goto/16 :goto_12

    :cond_24
    move v9, v7

    .line 2691
    iget-object v1, v0, Lorg/telegram/ui/Components/ShareAlert;->sendingFile:Ljava/lang/String;

    if-eqz v1, :cond_27

    const/4 v5, 0x0

    .line 2692
    :goto_1a
    iget-object v1, v0, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v1}, Landroidx/collection/LongSparseArray;->size()I

    move-result v1

    if-ge v5, v1, :cond_27

    .line 2693
    iget-object v1, v0, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v1, v5}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v1

    .line 2694
    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogTopics:Ljava/util/Map;

    iget-object v4, v0, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v4, v1, v2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    if-eqz v3, :cond_25

    .line 2695
    new-instance v4, Lorg/telegram/messenger/MessageObject;

    iget v6, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->topicStartMessage:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v15, 0x0

    invoke-direct {v4, v6, v3, v15, v15}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    move-object/from16 v39, v4

    goto :goto_1b

    :cond_25
    const/4 v15, 0x0

    const/16 v39, 0x0

    .line 2696
    :goto_1b
    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->frameLayout2:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_26

    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/EditTextEmoji;->length()I

    move-result v3

    if-lez v3, :cond_26

    aget-object v3, p1, v15

    if-eqz v3, :cond_26

    .line 2697
    new-instance v3, Ljava/io/File;

    iget-object v4, v0, Lorg/telegram/ui/Components/ShareAlert;->sendingFile:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2698
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, p1, v15

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/exteragram/messenger/backup/PreferencesUtils;->generateBackupName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lorg/telegram/ui/Components/ShareAlert;->sendingFile:Ljava/lang/String;

    .line 2699
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 2701
    :cond_26
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, v0, Lorg/telegram/ui/Components/ShareAlert;->sendingFile:Ljava/lang/String;

    invoke-static {v4}, Landroidx/camera/core/ImageCapture$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2702
    iget v4, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object v30

    const/16 v50, 0x0

    const-wide/16 v51, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v38, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const-wide/16 v48, 0x0

    move-object/from16 v32, v3

    move/from16 v43, p3

    move-wide/from16 v36, v1

    move-object/from16 v31, v3

    invoke-static/range {v30 .. v52}, Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingDocuments(Lorg/telegram/messenger/AccountInstance;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/ChatActivity$ReplyQuote;Lorg/telegram/messenger/MessageObject;ZILandroidx/core/view/inputmethod/InputContentInfoCompat;Ljava/lang/String;IJZJ)V

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1a

    :cond_27
    const/4 v5, 0x0

    .line 2705
    :goto_1c
    iget-object v1, v0, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogs:Landroidx/collection/LongSparseArray;

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogTopics:Ljava/util/Map;

    const/4 v15, 0x0

    invoke-virtual {v1, v15}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    xor-int/lit8 v3, v5, 0x1

    invoke-virtual {v0, v1, v9, v2, v3}, Lorg/telegram/ui/Components/ShareAlert;->onSend(Landroidx/collection/LongSparseArray;ILorg/telegram/tgnet/TLRPC$TL_forumTopic;Z)V

    .line 2707
    :cond_28
    :goto_1d
    iget-object v1, v0, Lorg/telegram/ui/Components/ShareAlert;->delegate:Lorg/telegram/ui/Components/ShareAlert$ShareAlertDelegate;

    if-eqz v1, :cond_29

    .line 2708
    invoke-interface {v1}, Lorg/telegram/ui/Components/ShareAlert$ShareAlertDelegate;->didShare()V

    .line 2710
    :cond_29
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ShareAlert;->dismiss()V

    return-void
.end method

.method private synthetic lambda$showPremiumBlockedToast$20()V
    .locals 3

    .line 1922
    new-instance v0, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda29;

    invoke-direct {v0}, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda29;-><init>()V

    .line 1931
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->isKeyboardVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1932
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->searchView:Lorg/telegram/ui/Components/FragmentSearchField;

    if-eqz v1, :cond_0

    .line 1933
    iget-object v1, v1, Lorg/telegram/ui/Components/FragmentSearchField;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    :cond_0
    const-wide/16 v1, 0x12c

    .line 1935
    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void

    .line 1937
    :cond_1
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private onSendLongClick(Landroid/view/View;)Z
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v6, p1

    .line 2241
    iget-object v0, v1, Lorg/telegram/ui/Components/ShareAlert;->parentActivity:Landroid/app/Activity;

    const/4 v7, 0x0

    if-nez v0, :cond_0

    return v7

    .line 2244
    :cond_0
    new-instance v8, Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v8, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v9, 0x1

    .line 2245
    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2246
    iget-object v0, v1, Lorg/telegram/ui/Components/ShareAlert;->sendingMessageObjects:Ljava/util/ArrayList;

    const/16 v10, 0x30

    const/4 v11, -0x1

    if-eqz v0, :cond_e

    .line 2247
    new-instance v0, Lorg/telegram/ui/Components/ShareAlert$29;

    iget-object v2, v1, Lorg/telegram/ui/Components/ShareAlert;->parentActivity:Landroid/app/Activity;

    sget v3, Lorg/telegram/messenger/R$drawable;->popup_fixed_alert3:I

    iget-object v4, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/telegram/ui/Components/ShareAlert$29;-><init>(Lorg/telegram/ui/Components/ShareAlert;Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 2263
    iget-boolean v2, v1, Lorg/telegram/ui/Components/ShareAlert;->darkTheme:Z

    if-eqz v2, :cond_1

    .line 2264
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_inviteMembersBackground:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setBackgroundColor(I)V

    .line 2266
    :cond_1
    invoke-virtual {v0, v7}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setAnimationEnabled(Z)V

    .line 2267
    new-instance v2, Lorg/telegram/ui/Components/ShareAlert$30;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Components/ShareAlert$30;-><init>(Lorg/telegram/ui/Components/ShareAlert;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2283
    new-instance v2, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda20;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/Components/ShareAlert;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setDispatchKeyEventListener(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$OnDispatchKeyEventListener;)V

    .line 2288
    invoke-virtual {v0, v7}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setShownFromBottom(Z)V

    .line 2289
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogButtonSelector:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setupRadialSelectors(I)V

    .line 2294
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v3, v7

    move v4, v3

    .line 2295
    :goto_0
    iget-object v5, v1, Lorg/telegram/ui/Components/ShareAlert;->sendingMessageObjects:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_4

    .line 2296
    iget-object v5, v1, Lorg/telegram/ui/Components/ShareAlert;->sendingMessageObjects:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/MessageObject;

    .line 2297
    iget-object v12, v5, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_2

    move v4, v9

    .line 2300
    :cond_2
    iget-object v5, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    if-eqz v5, :cond_3

    .line 2302
    iget-object v12, v5, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    if-nez v12, :cond_3

    iget-object v12, v5, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_name:Ljava/lang/String;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 2303
    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_name:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2308
    :cond_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v5, v7

    .line 2309
    :goto_1
    iget-object v12, v1, Lorg/telegram/ui/Components/ShareAlert;->sendingMessageObjects:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v5, v12, :cond_8

    .line 2310
    iget-object v12, v1, Lorg/telegram/ui/Components/ShareAlert;->sendingMessageObjects:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/messenger/MessageObject;

    .line 2312
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->isFromUser()Z

    move-result v13

    if-eqz v13, :cond_5

    .line 2313
    iget-object v12, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v12, v12, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v12, v12, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    goto :goto_3

    .line 2315
    :cond_5
    iget v13, v12, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {v13}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v13

    iget-object v14, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v14, v14, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v13, v14}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v13

    .line 2316
    invoke-static {v13}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v14

    if-eqz v14, :cond_6

    iget-boolean v13, v13, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v13, :cond_6

    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->isForwardedChannelPost()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 2317
    iget-object v12, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v12, v12, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    iget-object v12, v12, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v12, v12, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    :goto_2
    neg-long v12, v12

    goto :goto_3

    .line 2319
    :cond_6
    iget-object v12, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v12, v12, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v12, v12, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    goto :goto_2

    .line 2322
    :goto_3
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_7

    .line 2323
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 2326
    :cond_8
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v3, v2

    if-le v3, v9, :cond_9

    move v2, v9

    goto :goto_4

    :cond_9
    move v2, v7

    .line 2330
    :goto_4
    new-instance v12, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;

    iget-object v13, v1, Lorg/telegram/ui/Components/ShareAlert;->parentActivity:Landroid/app/Activity;

    sget v14, Lorg/telegram/messenger/R$raw;->name_hide:I

    if-eqz v2, :cond_a

    .line 2332
    sget v3, Lorg/telegram/messenger/R$string;->ShowSenderNames:I

    :goto_5
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v15, v3

    goto :goto_6

    :cond_a
    sget v3, Lorg/telegram/messenger/R$string;->ShowSendersName:I

    goto :goto_5

    :goto_6
    sget v16, Lorg/telegram/messenger/R$raw;->name_show:I

    if-eqz v2, :cond_b

    .line 2333
    sget v2, Lorg/telegram/messenger/R$string;->HideSenderNames:I

    :goto_7
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v17, v2

    goto :goto_8

    :cond_b
    sget v2, Lorg/telegram/messenger/R$string;->HideSendersName:I

    goto :goto_7

    :goto_8
    iget-object v2, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object/from16 v18, v2

    invoke-direct/range {v12 .. v18}, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;-><init>(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 2336
    invoke-static {v11, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v12, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    if-eqz v4, :cond_c

    .line 2340
    new-instance v13, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;

    iget-object v14, v1, Lorg/telegram/ui/Components/ShareAlert;->parentActivity:Landroid/app/Activity;

    sget v15, Lorg/telegram/messenger/R$raw;->caption_hide:I

    sget v2, Lorg/telegram/messenger/R$string;->ShowCaption:I

    .line 2342
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v16

    sget v17, Lorg/telegram/messenger/R$raw;->caption_show:I

    sget v2, Lorg/telegram/messenger/R$string;->HideCaption:I

    .line 2343
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v18

    iget-object v2, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object/from16 v19, v2

    invoke-direct/range {v13 .. v19}, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;-><init>(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 2346
    iget-boolean v2, v1, Lorg/telegram/ui/Components/ShareAlert;->hideCaption:Z

    invoke-virtual {v13, v2, v7}, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;->setState(ZZ)V

    .line 2347
    invoke-static {v11, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v13, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    goto :goto_9

    :cond_c
    const/4 v13, 0x0

    .line 2352
    :goto_9
    iget-boolean v2, v1, Lorg/telegram/ui/Components/ShareAlert;->hideSendersName:Z

    invoke-virtual {v12, v2, v7}, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;->setState(ZZ)V

    .line 2353
    new-instance v2, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda21;

    invoke-direct {v2, v1, v13, v12}, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/ui/Components/ShareAlert;Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;)V

    invoke-virtual {v12, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v13, :cond_d

    .line 2365
    new-instance v2, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda22;

    invoke-direct {v2, v1, v13, v12}, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/ui/Components/ShareAlert;Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;)V

    invoke-virtual {v13, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_d
    const/16 v18, 0x0

    const/high16 v19, -0x3f000000    # -8.0f

    const/4 v14, -0x1

    const/4 v15, -0x2

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 2379
    invoke-static/range {v14 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v8, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2382
    :cond_e
    new-instance v12, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    iget-object v0, v1, Lorg/telegram/ui/Components/ShareAlert;->parentActivity:Landroid/app/Activity;

    iget-object v2, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v12, v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 2383
    iget-boolean v0, v1, Lorg/telegram/ui/Components/ShareAlert;->darkTheme:Z

    if-eqz v0, :cond_f

    .line 2384
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_inviteMembersBackground:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {v12, v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setBackgroundColor(I)V

    .line 2386
    :cond_f
    invoke-virtual {v12, v7}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setAnimationEnabled(Z)V

    .line 2387
    new-instance v0, Lorg/telegram/ui/Components/ShareAlert$31;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/ShareAlert$31;-><init>(Lorg/telegram/ui/Components/ShareAlert;)V

    invoke-virtual {v12, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2403
    new-instance v0, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda23;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/ui/Components/ShareAlert;)V

    invoke-virtual {v12, v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setDispatchKeyEventListener(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$OnDispatchKeyEventListener;)V

    .line 2408
    invoke-virtual {v12, v7}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setShownFromBottom(Z)V

    .line 2410
    iget-object v0, v1, Lorg/telegram/ui/Components/ShareAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v0, v1, Lorg/telegram/ui/Components/ShareAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_10

    .line 2411
    new-instance v0, Lorg/telegram/ui/Components/ShareAlert$32;

    invoke-virtual {v1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v4, 0x1

    iget-object v5, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v3, 0x1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/ShareAlert$32;-><init>(Lorg/telegram/ui/Components/ShareAlert;Landroid/content/Context;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 2445
    invoke-static {v11, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v12, v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 2447
    :cond_10
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v2, v9, v9, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 2448
    iget-boolean v2, v1, Lorg/telegram/ui/Components/ShareAlert;->darkTheme:Z

    if-eqz v2, :cond_11

    .line 2449
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_nameText:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextColor(I)V

    .line 2450
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteHintText:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setIconColor(I)V

    .line 2452
    :cond_11
    sget v2, Lorg/telegram/messenger/R$string;->SendWithoutSound:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->input_notify_off:I

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    const/high16 v2, 0x43440000    # 196.0f

    .line 2453
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setMinimumWidth(I)V

    .line 2454
    invoke-static {v11, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v12, v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 2455
    new-instance v2, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda24;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda24;-><init>(Lorg/telegram/ui/Components/ShareAlert;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2461
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v2, v9, v9, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 2462
    iget-boolean v2, v1, Lorg/telegram/ui/Components/ShareAlert;->darkTheme:Z

    if-eqz v2, :cond_12

    .line 2463
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_nameText:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextColor(I)V

    .line 2464
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteHintText:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setIconColor(I)V

    .line 2466
    :cond_12
    sget v2, Lorg/telegram/messenger/R$string;->ForwardSendMessages:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_send:I

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 2467
    invoke-static {v11, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v12, v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 2468
    new-instance v2, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda25;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda25;-><init>(Lorg/telegram/ui/Components/ShareAlert;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2474
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_dialogButtonSelector:I

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v0

    invoke-virtual {v12, v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setupRadialSelectors(I)V

    const/4 v0, -0x2

    .line 2476
    invoke-static {v11, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v8, v12, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2478
    new-instance v2, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-direct {v2, v8, v0, v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v2, v1, Lorg/telegram/ui/Components/ShareAlert;->sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    .line 2479
    invoke-virtual {v2, v7}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setAnimationEnabled(Z)V

    .line 2480
    iget-object v0, v1, Lorg/telegram/ui/Components/ShareAlert;->sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    sget v2, Lorg/telegram/messenger/R$style;->PopupContextAnimation2:I

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 2481
    iget-object v0, v1, Lorg/telegram/ui/Components/ShareAlert;->sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v0, v9}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 2482
    iget-object v0, v1, Lorg/telegram/ui/Components/ShareAlert;->sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v0, v9}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 2483
    iget-object v0, v1, Lorg/telegram/ui/Components/ShareAlert;->sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 2484
    iget-object v0, v1, Lorg/telegram/ui/Components/ShareAlert;->sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v0, v7}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    .line 2485
    iget-object v0, v1, Lorg/telegram/ui/Components/ShareAlert;->sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 2486
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->removeScheduledOrNoSoundHint()V

    const/high16 v0, 0x447a0000    # 1000.0f

    .line 2488
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/high16 v4, -0x80000000

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v8, v3, v0}, Landroid/view/View;->measure(II)V

    .line 2489
    iget-object v0, v1, Lorg/telegram/ui/Components/ShareAlert;->sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v0, v9}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 2490
    new-array v0, v2, [I

    .line 2491
    invoke-virtual {v6, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 2493
    iget-boolean v3, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->keyboardVisible:Z

    if-eqz v3, :cond_13

    iget-object v3, v1, Lorg/telegram/ui/Components/ShareAlert;->parentFragment:Lorg/telegram/ui/ChatActivity;

    if-eqz v3, :cond_13

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity;->contentView:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    const/high16 v4, 0x42680000    # 58.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    if-le v3, v4, :cond_13

    .line 2494
    aget v3, v0, v9

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_a

    .line 2496
    :cond_13
    aget v3, v0, v9

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v3, v4

    .line 2498
    :goto_a
    iget-object v4, v1, Lorg/telegram/ui/Components/ShareAlert;->sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    aget v0, v0, v7

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v0, v5

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    sub-int/2addr v0, v5

    const/high16 v5, 0x41000000    # 8.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v0, v5

    const/16 v5, 0x33

    invoke-virtual {v4, v6, v5, v0, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 2499
    iget-object v0, v1, Lorg/telegram/ui/Components/ShareAlert;->sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dimBehind()V

    const/4 v0, 0x3

    .line 2501
    :try_start_0
    invoke-virtual {v6, v0, v2}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v9
.end method

.method private onTopicCellClick(Lorg/telegram/tgnet/TLRPC$TL_forumTopic;)V
    .locals 9

    if-eqz p1, :cond_6

    .line 4013
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->selectedTopicDialog:Lorg/telegram/tgnet/TLRPC$Dialog;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 4017
    :cond_0
    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    .line 4018
    iget v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lorg/telegram/messenger/MessagesController;->isMonoForum(J)Z

    move-result v2

    .line 4019
    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert;->selectedTopicDialog:Lorg/telegram/tgnet/TLRPC$Dialog;

    .line 4021
    iget-object v4, p0, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v4, v0, v1, v3}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 4022
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogTopics:Ljava/util/Map;

    invoke-interface {v0, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x2

    .line 4023
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ShareAlert;->updateSelectedCount(I)V

    .line 4025
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ShareAlert;->searchIsVisible:Z

    const/4 v1, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ShareAlert;->searchWasVisibleBeforeTopics:Z

    if-eqz v0, :cond_3

    .line 4026
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->listAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;->-$$Nest$fgetdialogsMap(Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;)Landroidx/collection/LongSparseArray;

    move-result-object v0

    iget-wide v5, v3, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-virtual {v0, v5, v6}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Dialog;

    if-nez v0, :cond_2

    .line 4028
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->listAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;->-$$Nest$fgetdialogsMap(Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;)Landroidx/collection/LongSparseArray;

    move-result-object v0

    iget-wide v5, v3, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-virtual {v0, v5, v6, v3}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 4029
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->listAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;->-$$Nest$fgetdialogs(Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v5, p0, Lorg/telegram/ui/Components/ShareAlert;->listAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;

    invoke-static {v5}, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;->-$$Nest$fgetdialogs(Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    xor-int/2addr v5, v4

    invoke-virtual {v0, v5, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 4031
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->listAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 4032
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ShareAlert;->updateSearchAdapter:Z

    .line 4033
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->searchView:Lorg/telegram/ui/Components/FragmentSearchField;

    iget-object v0, v0, Lorg/telegram/ui/Components/FragmentSearchField;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const-string v3, ""

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4034
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/ShareAlert;->checkCurrentList(Z)V

    .line 4036
    :cond_3
    :goto_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ShareAlert;->getMainGridView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 4037
    invoke-direct {p0}, Lorg/telegram/ui/Components/ShareAlert;->getMainGridView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4039
    instance-of v3, v0, Lorg/telegram/ui/Cells/ShareDialogCell;

    if-eqz v3, :cond_4

    check-cast v0, Lorg/telegram/ui/Cells/ShareDialogCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ShareDialogCell;->getCurrentDialog()J

    move-result-wide v5

    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert;->selectedTopicDialog:Lorg/telegram/tgnet/TLRPC$Dialog;

    iget-wide v7, v3, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    cmp-long v3, v5, v7

    if-nez v3, :cond_4

    .line 4043
    invoke-virtual {v0, p1, v2, v4}, Lorg/telegram/ui/Cells/ShareDialogCell;->setTopic(Lorg/telegram/tgnet/TLRPC$TL_forumTopic;ZZ)V

    .line 4044
    invoke-virtual {v0, v4, v4}, Lorg/telegram/ui/Cells/ShareDialogCell;->setChecked(ZZ)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4048
    :cond_5
    invoke-direct {p0}, Lorg/telegram/ui/Components/ShareAlert;->collapseTopics()V

    :cond_6
    :goto_1
    return-void
.end method

.method private onTopicCreateCellClick()V
    .locals 8

    .line 4052
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->selectedTopicDialog:Lorg/telegram/tgnet/TLRPC$Dialog;

    if-nez v0, :cond_0

    return-void

    .line 4056
    :cond_0
    iget-wide v1, v0, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    .line 4059
    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v3, v1, v2, v0}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 4060
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogTopics:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    .line 4061
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/ShareAlert;->updateSelectedCount(I)V

    .line 4063
    iget-boolean v1, p0, Lorg/telegram/ui/Components/ShareAlert;->searchIsVisible:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lorg/telegram/ui/Components/ShareAlert;->searchWasVisibleBeforeTopics:Z

    if-eqz v1, :cond_3

    .line 4064
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->listAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;

    invoke-static {v1}, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;->-$$Nest$fgetdialogsMap(Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;)Landroidx/collection/LongSparseArray;

    move-result-object v1

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-virtual {v1, v4, v5}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$Dialog;

    if-nez v1, :cond_2

    .line 4066
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->listAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;

    invoke-static {v1}, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;->-$$Nest$fgetdialogsMap(Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;)Landroidx/collection/LongSparseArray;

    move-result-object v1

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-virtual {v1, v4, v5, v0}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 4067
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->listAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;

    invoke-static {v1}, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;->-$$Nest$fgetdialogs(Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v4, p0, Lorg/telegram/ui/Components/ShareAlert;->listAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;

    invoke-static {v4}, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;->-$$Nest$fgetdialogs(Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    xor-int/2addr v4, v3

    invoke-virtual {v1, v4, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 4069
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->listAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 4070
    iput-boolean v2, p0, Lorg/telegram/ui/Components/ShareAlert;->updateSearchAdapter:Z

    .line 4071
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->searchView:Lorg/telegram/ui/Components/FragmentSearchField;

    iget-object v0, v0, Lorg/telegram/ui/Components/FragmentSearchField;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4072
    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/ShareAlert;->checkCurrentList(Z)V

    :cond_3
    move v0, v2

    .line 4074
    :goto_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ShareAlert;->getMainGridView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 4075
    invoke-direct {p0}, Lorg/telegram/ui/Components/ShareAlert;->getMainGridView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4076
    instance-of v4, v1, Lorg/telegram/ui/Cells/ShareDialogCell;

    if-eqz v4, :cond_4

    check-cast v1, Lorg/telegram/ui/Cells/ShareDialogCell;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ShareDialogCell;->getCurrentDialog()J

    move-result-wide v4

    iget-object v6, p0, Lorg/telegram/ui/Components/ShareAlert;->selectedTopicDialog:Lorg/telegram/tgnet/TLRPC$Dialog;

    iget-wide v6, v6, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_4

    const/4 v4, 0x0

    .line 4078
    invoke-virtual {v1, v4, v2, v3}, Lorg/telegram/ui/Cells/ShareDialogCell;->setTopic(Lorg/telegram/tgnet/TLRPC$TL_forumTopic;ZZ)V

    .line 4079
    invoke-virtual {v1, v3, v3}, Lorg/telegram/ui/Cells/ShareDialogCell;->setChecked(ZZ)V

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4082
    :cond_5
    invoke-direct {p0}, Lorg/telegram/ui/Components/ShareAlert;->collapseTopics()V

    return-void
.end method

.method private runShadowAnimation(IZ)V
    .locals 7

    if-eqz p2, :cond_0

    .line 2849
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->shadow:[Landroid/view/View;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    if-nez p2, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->shadow:[Landroid/view/View;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_6

    .line 2850
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->shadow:[Landroid/view/View;

    aget-object v0, v0, p1

    const/4 v1, 0x1

    if-eqz p2, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    .line 2852
    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert;->shadow:[Landroid/view/View;

    aget-object v2, v2, p1

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2854
    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert;->shadowAnimation:[Landroid/animation/AnimatorSet;

    aget-object v2, v2, p1

    if-eqz v2, :cond_4

    .line 2855
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 2857
    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert;->shadowAnimation:[Landroid/animation/AnimatorSet;

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    aput-object v3, v2, p1

    .line 2858
    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert;->shadowAnimation:[Landroid/animation/AnimatorSet;

    aget-object v2, v2, p1

    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert;->shadow:[Landroid/view/View;

    aget-object v3, v3, p1

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    if-eqz p2, :cond_5

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_5
    const/4 v5, 0x0

    :goto_1
    new-array v6, v1, [F

    aput v5, v6, v0

    invoke-static {v3, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-array v1, v1, [Landroid/animation/Animator;

    aput-object v3, v1, v0

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2859
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->shadowAnimation:[Landroid/animation/AnimatorSet;

    aget-object v0, v0, p1

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2860
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->shadowAnimation:[Landroid/animation/AnimatorSet;

    aget-object v0, v0, p1

    new-instance v1, Lorg/telegram/ui/Components/ShareAlert$33;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/ui/Components/ShareAlert$33;-><init>(Lorg/telegram/ui/Components/ShareAlert;IZ)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2878
    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert;->shadowAnimation:[Landroid/animation/AnimatorSet;

    aget-object p1, p2, p1

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    :cond_6
    return-void
.end method

.method private selectDialog(Landroid/view/View;Lorg/telegram/tgnet/TLRPC$Dialog;)V
    .locals 7

    .line 1946
    instance-of v0, p2, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter$MyStoryDialog;

    if-eqz v0, :cond_0

    .line 1947
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ShareAlert;->onShareStory(Landroid/view/View;)V

    return-void

    :cond_0
    if-eqz p2, :cond_3

    .line 1950
    instance-of v0, p1, Lorg/telegram/ui/Cells/ShareDialogCell;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/Cells/ShareDialogCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ShareDialogCell;->isBlocked()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    instance-of v0, p1, Lorg/telegram/ui/Cells/ProfileSearchCell;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/Cells/ProfileSearchCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ProfileSearchCell;->isBlocked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1951
    :cond_2
    iget-wide v0, p2, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-direct {p0, p1, v0, v1}, Lorg/telegram/ui/Components/ShareAlert;->showPremiumBlockedToast(Landroid/view/View;J)V

    return-void

    .line 1954
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->topicsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1a

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->parentActivity:Landroid/app/Activity;

    if-nez v0, :cond_4

    goto/16 :goto_7

    .line 1958
    :cond_4
    iget-wide v0, p2, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-static {v0, v1}, Lorg/telegram/messenger/DialogObject;->isChatDialog(J)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-eqz v0, :cond_b

    .line 1959
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v4, p2, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    neg-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 1960
    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v4

    if-eqz v4, :cond_e

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v4, :cond_e

    iget-wide v4, p2, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    neg-long v4, v4

    iget v6, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v4, v5, v6}, Lorg/telegram/messenger/ChatObject;->isCanWriteToChannel(JI)Z

    move-result v4

    if-eqz v4, :cond_5

    iget v4, p0, Lorg/telegram/ui/Components/ShareAlert;->hasPoll:I

    if-eq v4, v3, :cond_5

    if-ne v4, v2, :cond_e

    .line 1961
    :cond_5
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert;->parentActivity:Landroid/app/Activity;

    invoke-direct {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1962
    sget p2, Lorg/telegram/messenger/R$string;->SendMessageTitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1963
    iget p2, p0, Lorg/telegram/ui/Components/ShareAlert;->hasPoll:I

    const/16 v4, 0xa

    if-ne p2, v2, :cond_7

    .line 1964
    invoke-static {v0, v4}, Lorg/telegram/messenger/ChatObject;->isActionBannedByDefault(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 1965
    sget p2, Lorg/telegram/messenger/R$string;->ErrorSendRestrictedTodoAll:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_0

    .line 1967
    :cond_6
    sget p2, Lorg/telegram/messenger/R$string;->ErrorSendRestrictedTodo:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_0

    :cond_7
    if-ne p2, v3, :cond_a

    .line 1970
    iget-boolean p2, p0, Lorg/telegram/ui/Components/ShareAlert;->isChannel:Z

    if-eqz p2, :cond_8

    .line 1971
    sget p2, Lorg/telegram/messenger/R$string;->PublicPollCantForward:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_0

    .line 1972
    :cond_8
    invoke-static {v0, v4}, Lorg/telegram/messenger/ChatObject;->isActionBannedByDefault(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 1973
    sget p2, Lorg/telegram/messenger/R$string;->ErrorSendRestrictedPollsAll:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_0

    .line 1975
    :cond_9
    sget p2, Lorg/telegram/messenger/R$string;->ErrorSendRestrictedPolls:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_0

    .line 1978
    :cond_a
    sget p2, Lorg/telegram/messenger/R$string;->ChannelCantSendMessage:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1980
    :goto_0
    sget p2, Lorg/telegram/messenger/R$string;->OK:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1981
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    return-void

    .line 1984
    :cond_b
    iget-wide v4, p2, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-static {v4, v5}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v0

    if-eqz v0, :cond_e

    iget v0, p0, Lorg/telegram/ui/Components/ShareAlert;->hasPoll:I

    if-eqz v0, :cond_e

    .line 1985
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert;->parentActivity:Landroid/app/Activity;

    invoke-direct {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1986
    sget p2, Lorg/telegram/messenger/R$string;->SendMessageTitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1987
    iget p2, p0, Lorg/telegram/ui/Components/ShareAlert;->hasPoll:I

    if-ne p2, v2, :cond_c

    .line 1988
    sget p2, Lorg/telegram/messenger/R$string;->TodoCantForwardSecretChat:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_1

    :cond_c
    if-eqz p2, :cond_d

    .line 1990
    sget p2, Lorg/telegram/messenger/R$string;->PollCantForwardSecretChat:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_1

    .line 1992
    :cond_d
    sget p2, Lorg/telegram/messenger/R$string;->InvoiceCantForwardSecretChat:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1994
    :goto_1
    sget p2, Lorg/telegram/messenger/R$string;->OK:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1995
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    return-void

    .line 1998
    :cond_e
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogs:Landroidx/collection/LongSparseArray;

    iget-wide v1, p2, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-virtual {v0, v1, v2}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_11

    .line 1999
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogs:Landroidx/collection/LongSparseArray;

    iget-wide v3, p2, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-virtual {v0, v3, v4}, Landroidx/collection/LongSparseArray;->remove(J)V

    .line 2000
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogTopics:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2001
    instance-of p2, p1, Lorg/telegram/ui/Cells/ProfileSearchCell;

    if-eqz p2, :cond_f

    .line 2002
    check-cast p1, Lorg/telegram/ui/Cells/ProfileSearchCell;

    invoke-virtual {p1, v1, v2}, Lorg/telegram/ui/Cells/ProfileSearchCell;->setChecked(ZZ)V

    goto :goto_2

    .line 2003
    :cond_f
    instance-of p2, p1, Lorg/telegram/ui/Cells/ShareDialogCell;

    if-eqz p2, :cond_10

    .line 2004
    check-cast p1, Lorg/telegram/ui/Cells/ShareDialogCell;

    invoke-virtual {p1, v1, v2}, Lorg/telegram/ui/Cells/ShareDialogCell;->setChecked(ZZ)V

    .line 2006
    :cond_10
    :goto_2
    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/ShareAlert;->updateSelectedCount(I)V

    goto/16 :goto_5

    .line 2008
    :cond_11
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v4, p2, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    .line 2009
    iget v4, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-wide v5, p2, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    neg-long v5, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v4

    .line 2010
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->isBotForum(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v0

    if-nez v0, :cond_18

    iget-wide v5, p2, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-static {v5, v6}, Lorg/telegram/messenger/DialogObject;->isChatDialog(J)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {v4}, Lorg/telegram/messenger/ChatObject;->isForum(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-nez v0, :cond_18

    invoke-static {v4}, Lorg/telegram/messenger/ChatObject;->isMonoForum(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0, v4}, Lorg/telegram/messenger/ChatObject;->canManageMonoForum(ILorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto/16 :goto_6

    .line 2094
    :cond_12
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogs:Landroidx/collection/LongSparseArray;

    iget-wide v4, p2, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-virtual {v0, v4, v5, p2}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 2095
    instance-of v0, p1, Lorg/telegram/ui/Cells/ProfileSearchCell;

    if-eqz v0, :cond_13

    .line 2096
    check-cast p1, Lorg/telegram/ui/Cells/ProfileSearchCell;

    invoke-virtual {p1, v2, v2}, Lorg/telegram/ui/Cells/ProfileSearchCell;->setChecked(ZZ)V

    goto :goto_3

    .line 2097
    :cond_13
    instance-of v0, p1, Lorg/telegram/ui/Cells/ShareDialogCell;

    if-eqz v0, :cond_14

    .line 2098
    check-cast p1, Lorg/telegram/ui/Cells/ShareDialogCell;

    invoke-virtual {p1, v2, v2}, Lorg/telegram/ui/Cells/ShareDialogCell;->setChecked(ZZ)V

    .line 2100
    :cond_14
    :goto_3
    invoke-virtual {p0, v3}, Lorg/telegram/ui/Components/ShareAlert;->updateSelectedCount(I)V

    .line 2101
    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    iget-wide v3, p1, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    .line 2102
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ShareAlert;->searchIsVisible:Z

    if-eqz p1, :cond_17

    .line 2103
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->listAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;

    invoke-static {p1}, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;->-$$Nest$fgetdialogsMap(Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;)Landroidx/collection/LongSparseArray;

    move-result-object p1

    iget-wide v5, p2, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-virtual {p1, v5, v6}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Dialog;

    if-nez p1, :cond_15

    .line 2105
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->listAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;

    invoke-static {p1}, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;->-$$Nest$fgetdialogsMap(Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;)Landroidx/collection/LongSparseArray;

    move-result-object p1

    iget-wide v3, p2, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-virtual {p1, v3, v4, p2}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 2106
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->listAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;

    invoke-static {p1}, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;->-$$Nest$fgetdialogs(Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->listAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;->-$$Nest$fgetdialogs(Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v2

    invoke-virtual {p1, v0, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_4

    .line 2107
    :cond_15
    iget-wide v5, p1, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    cmp-long p2, v5, v3

    if-eqz p2, :cond_16

    .line 2108
    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert;->listAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;

    invoke-static {p2}, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;->-$$Nest$fgetdialogs(Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2109
    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert;->listAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;

    invoke-static {p2}, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;->-$$Nest$fgetdialogs(Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;)Ljava/util/ArrayList;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->listAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;->-$$Nest$fgetdialogs(Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v2

    invoke-virtual {p2, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2111
    :cond_16
    :goto_4
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->listAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 2112
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ShareAlert;->updateSearchAdapter:Z

    .line 2113
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->searchView:Lorg/telegram/ui/Components/FragmentSearchField;

    iget-object p1, p1, Lorg/telegram/ui/Components/FragmentSearchField;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2114
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/ShareAlert;->checkCurrentList(Z)V

    .line 2115
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->searchView:Lorg/telegram/ui/Components/FragmentSearchField;

    iget-object p1, p1, Lorg/telegram/ui/Components/FragmentSearchField;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 2118
    :cond_17
    :goto_5
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->searchAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;

    if-eqz p1, :cond_1a

    iget-object p1, p1, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->categoryAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$CategoryAdapterRecycler;

    if-eqz p1, :cond_1a

    .line 2119
    invoke-virtual {p1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$CategoryAdapterRecycler;->getItemCount()I

    move-result p2

    invoke-virtual {p1, v1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    return-void

    .line 2011
    :cond_18
    :goto_6
    iput-object p2, p0, Lorg/telegram/ui/Components/ShareAlert;->selectedTopicDialog:Lorg/telegram/tgnet/TLRPC$Dialog;

    .line 2012
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->topicsLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    iget v3, p0, Lorg/telegram/ui/Components/ShareAlert;->scrollOffsetY:I

    iget-object v4, p0, Lorg/telegram/ui/Components/ShareAlert;->topicsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v0, v1, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 2013
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 2014
    new-instance v3, Lorg/telegram/ui/Components/ShareAlert$28;

    invoke-direct {v3, p0, p2, v0, p1}, Lorg/telegram/ui/Components/ShareAlert$28;-><init>(Lorg/telegram/ui/Components/ShareAlert;Lorg/telegram/tgnet/TLRPC$Dialog;Ljava/util/concurrent/atomic/AtomicReference;Landroid/view/View;)V

    .line 2080
    new-instance p1, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda19;

    invoke-direct {p1, p0, v0, v3, p2}, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/Components/ShareAlert;Ljava/util/concurrent/atomic/AtomicReference;Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;Lorg/telegram/tgnet/TLRPC$Dialog;)V

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 2084
    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v4, Lorg/telegram/messenger/NotificationCenter;->topicsDidLoaded:I

    invoke-virtual {p1, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 2085
    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object p1

    iget-wide v5, p2, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    neg-long v5, v5

    invoke-virtual {p1, v5, v6}, Lorg/telegram/messenger/TopicsController;->getTopics(J)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_19

    .line 2086
    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    iget-wide v5, p2, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    neg-long v5, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p2, v0, v1

    invoke-interface {v3, v4, p1, v0}, Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;->didReceivedNotification(II[Ljava/lang/Object;)V

    return-void

    .line 2088
    :cond_19
    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object p1

    iget-wide v1, p2, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    neg-long v1, v1

    invoke-virtual {p1, v1, v2}, Lorg/telegram/messenger/TopicsController;->loadTopics(J)V

    .line 2089
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;

    const-wide/16 v0, 0x12c

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_1a
    :goto_7
    return-void
.end method

.method private showCommentTextView(Z)Z
    .locals 11

    .line 2901
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->frameLayout2:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-ne p1, v0, :cond_1

    return v1

    .line 2904
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    .line 2905
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 2907
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->frameLayout2:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2908
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2909
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 2911
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/EditTextEmoji;->hidePopup(Z)V

    if-eqz p1, :cond_6

    .line 2913
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->frameLayout2:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2914
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->timestampFrameLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_5

    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert;->pickerBottom:Landroid/widget/FrameLayout;

    if-nez v3, :cond_5

    .line 2915
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2917
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->writeButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 2919
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->pickerBottom:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_7

    .line 2920
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2923
    :cond_7
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->pickerBottom:Landroid/widget/FrameLayout;

    const/4 v3, 0x4

    if-eqz v0, :cond_9

    if-eqz p1, :cond_8

    move v4, v3

    goto :goto_3

    :cond_8
    move v4, v2

    .line 2924
    :goto_3
    invoke-static {v0, v4}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 2926
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->sharesCountLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_b

    if-eqz p1, :cond_a

    goto :goto_4

    :cond_a
    move v3, v2

    .line 2927
    :goto_4
    invoke-static {v0, v3}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 2929
    :cond_b
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->animatorSet:Landroid/animation/AnimatorSet;

    .line 2930
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2931
    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert;->frameLayout2:Landroid/widget/FrameLayout;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz p1, :cond_c

    move v7, v6

    goto :goto_5

    :cond_c
    move v7, v5

    :goto_5
    new-array v8, v2, [F

    aput v7, v8, v1

    invoke-static {v3, v4, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2932
    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert;->timestampFrameLayout:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_e

    iget-object v7, p0, Lorg/telegram/ui/Components/ShareAlert;->pickerBottom:Landroid/widget/FrameLayout;

    if-nez v7, :cond_e

    if-eqz p1, :cond_d

    move v7, v6

    goto :goto_6

    :cond_d
    move v7, v5

    .line 2933
    :goto_6
    new-array v8, v2, [F

    aput v7, v8, v1

    invoke-static {v3, v4, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2935
    :cond_e
    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert;->writeButtonContainer:Landroid/widget/FrameLayout;

    sget-object v7, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const v8, 0x3e4ccccd    # 0.2f

    if-eqz p1, :cond_f

    move v9, v6

    goto :goto_7

    :cond_f
    move v9, v8

    :goto_7
    new-array v10, v2, [F

    aput v9, v10, v1

    invoke-static {v3, v7, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2936
    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert;->writeButtonContainer:Landroid/widget/FrameLayout;

    sget-object v7, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    if-eqz p1, :cond_10

    move v8, v6

    :cond_10
    new-array v9, v2, [F

    aput v8, v9, v1

    invoke-static {v3, v7, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2937
    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert;->writeButtonContainer:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_11

    move v7, v6

    goto :goto_8

    :cond_11
    move v7, v5

    :goto_8
    new-array v8, v2, [F

    aput v7, v8, v1

    invoke-static {v3, v4, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2938
    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert;->pickerBottom:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_12

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_14

    .line 2939
    :cond_12
    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert;->shadow:[Landroid/view/View;

    aget-object v3, v3, v2

    if-eqz p1, :cond_13

    goto :goto_9

    :cond_13
    move v6, v5

    :goto_9
    new-array v7, v2, [F

    aput v6, v7, v1

    invoke-static {v3, v4, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2941
    :cond_14
    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert;->pickerBottomLayout:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_15

    .line 2942
    sget-object v4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v6, v2, [F

    aput v5, v6, v1

    invoke-static {v3, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2945
    :cond_15
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 2946
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->animatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2947
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->animatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v3, 0xb4

    invoke-virtual {v0, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2948
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->animatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lorg/telegram/ui/Components/ShareAlert$34;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/ShareAlert$34;-><init>(Lorg/telegram/ui/Components/ShareAlert;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2974
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return v2
.end method

.method private showPremiumBlockedToast(Landroid/view/View;J)V
    .locals 3

    .line 1911
    iget v0, p0, Lorg/telegram/ui/Components/ShareAlert;->shiftDp:I

    neg-int v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/ShareAlert;->shiftDp:I

    int-to-float v0, v0

    invoke-static {p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->shakeViewSpring(Landroid/view/View;F)V

    .line 1912
    sget-object p1, Lorg/telegram/messenger/BotWebViewVibrationEffect;->APP_ERROR:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    invoke-virtual {p1}, Lorg/telegram/messenger/BotWebViewVibrationEffect;->vibrate()V

    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    if-ltz p1, :cond_0

    .line 1915
    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1914
    :cond_0
    const-string p1, ""

    .line 1918
    :goto_0
    iget p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/MessagesController;->premiumFeaturesBlocked()Z

    move-result p2

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    .line 1919
    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert;->bulletinContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p2, v1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p2

    sget v1, Lorg/telegram/messenger/R$raw;->star_premium_2:I

    sget v2, Lorg/telegram/messenger/R$string;->UserBlockedNonPremium:I

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, p3

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {p2, v1, p1}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    goto :goto_1

    .line 1921
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert;->bulletinContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p2, v1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p2

    sget v1, Lorg/telegram/messenger/R$raw;->star_premium_2:I

    sget v2, Lorg/telegram/messenger/R$string;->UserBlockedNonPremium:I

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, p3

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    sget p3, Lorg/telegram/messenger/R$string;->UserBlockedNonPremiumButton:I

    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p3

    new-instance v0, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda28;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda28;-><init>(Lorg/telegram/ui/Components/ShareAlert;)V

    invoke-virtual {p2, v1, p1, p3, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    .line 1941
    :goto_1
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method private updateLayout()V
    .locals 10

    .line 2781
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ShareAlert;->panTranslationMoveLayout:Z

    if-eqz v0, :cond_0

    goto/16 :goto_7

    .line 2786
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ShareAlert;->searchIsVisible:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->searchGridView:Lorg/telegram/ui/Components/RecyclerListView;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 2788
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-gtz v1, :cond_2

    goto/16 :goto_7

    :cond_2
    const/4 v1, 0x0

    .line 2791
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    move v3, v1

    .line 2792
    :goto_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 2793
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 2794
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2797
    :cond_4
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    .line 2799
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v3, v5

    if-lez v3, :cond_5

    if-eqz v0, :cond_5

    .line 2800
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v5

    if-nez v5, :cond_5

    move v5, v3

    goto :goto_2

    :cond_5
    move v5, v1

    :goto_2
    const v6, 0x7fffffff

    const/4 v7, 0x1

    if-ltz v3, :cond_6

    if-eqz v0, :cond_6

    .line 2801
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    if-nez v0, :cond_6

    .line 2802
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/ShareAlert;->lastOffset:I

    .line 2804
    invoke-direct {p0, v1, v1}, Lorg/telegram/ui/Components/ShareAlert;->runShadowAnimation(IZ)V

    goto :goto_3

    .line 2806
    :cond_6
    iput v6, p0, Lorg/telegram/ui/Components/ShareAlert;->lastOffset:I

    .line 2807
    invoke-direct {p0, v1, v7}, Lorg/telegram/ui/Components/ShareAlert;->runShadowAnimation(IZ)V

    move v3, v5

    .line 2810
    :goto_3
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->topicsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_c

    .line 2811
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->topicsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 2813
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-gtz v2, :cond_7

    goto/16 :goto_7

    .line 2816
    :cond_7
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    move v5, v1

    .line 2817
    :goto_4
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    if-ge v5, v8, :cond_9

    .line 2818
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v8

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v9

    if-ge v8, v9, :cond_8

    .line 2819
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 2822
    :cond_9
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    .line 2824
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v5, v4

    if-lez v5, :cond_a

    if-eqz v0, :cond_a

    .line 2825
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v4

    if-nez v4, :cond_a

    move v4, v5

    goto :goto_5

    :cond_a
    move v4, v1

    :goto_5
    if-ltz v5, :cond_b

    if-eqz v0, :cond_b

    .line 2826
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    if-nez v0, :cond_b

    .line 2827
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/ShareAlert;->lastOffset:I

    .line 2829
    invoke-direct {p0, v1, v1}, Lorg/telegram/ui/Components/ShareAlert;->runShadowAnimation(IZ)V

    goto :goto_6

    .line 2831
    :cond_b
    iput v6, p0, Lorg/telegram/ui/Components/ShareAlert;->lastOffset:I

    .line 2832
    invoke-direct {p0, v1, v7}, Lorg/telegram/ui/Components/ShareAlert;->runShadowAnimation(IZ)V

    move v5, v4

    .line 2834
    :goto_6
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->topicsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    invoke-static {v3, v5, v0}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v3

    .line 2837
    :cond_c
    iget v0, p0, Lorg/telegram/ui/Components/ShareAlert;->scrollOffsetY:I

    if-eq v0, v3, :cond_d

    .line 2838
    iput v0, p0, Lorg/telegram/ui/Components/ShareAlert;->previousScrollOffsetY:I

    .line 2839
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    int-to-float v1, v3

    iget v2, p0, Lorg/telegram/ui/Components/ShareAlert;->currentPanTranslationY:F

    add-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p0, Lorg/telegram/ui/Components/ShareAlert;->scrollOffsetY:I

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setTopGlowOffset(I)V

    .line 2840
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->searchGridView:Lorg/telegram/ui/Components/RecyclerListView;

    iget v2, p0, Lorg/telegram/ui/Components/ShareAlert;->currentPanTranslationY:F

    add-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p0, Lorg/telegram/ui/Components/ShareAlert;->scrollOffsetY:I

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setTopGlowOffset(I)V

    .line 2841
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->topicsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    iget v2, p0, Lorg/telegram/ui/Components/ShareAlert;->currentPanTranslationY:F

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lorg/telegram/ui/Components/ShareAlert;->scrollOffsetY:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setTopGlowOffset(I)V

    .line 2842
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->frameLayout:Landroid/widget/FrameLayout;

    iget v1, p0, Lorg/telegram/ui/Components/ShareAlert;->scrollOffsetY:I

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Components/ShareAlert;->currentPanTranslationY:F

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 2843
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->searchEmptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget v1, p0, Lorg/telegram/ui/Components/ShareAlert;->scrollOffsetY:I

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Components/ShareAlert;->currentPanTranslationY:F

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 2844
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_d
    :goto_7
    return-void
.end method

.method private updateLinkTextView()V
    .locals 2

    .line 3973
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->linkTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v0, :cond_2

    .line 3974
    invoke-direct {p0}, Lorg/telegram/ui/Components/ShareAlert;->getLink()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3976
    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    .line 3977
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3978
    :cond_0
    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x7

    .line 3979
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 3982
    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->linkTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

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

    .line 2764
    sget p2, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    if-ne p1, p2, :cond_1

    .line 2765
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->listAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;

    if-eqz p1, :cond_0

    .line 2766
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;->fetchDialogs()V

    .line 2768
    :cond_0
    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    :cond_1
    return-void
.end method

.method public dismiss()V
    .locals 2

    .line 3005
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    if-eqz v0, :cond_0

    .line 3006
    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    .line 3008
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ShareAlert;->fullyShown:Z

    .line 3009
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    .line 3010
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public dismissInternal()V
    .locals 1

    .line 2743
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismissInternal()V

    .line 2744
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    if-eqz v0, :cond_0

    .line 2745
    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->onDestroy()V

    :cond_0
    return-void
.end method

.method public getContainerViewHeight()I
    .locals 2

    .line 2234
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/ShareAlert;->containerViewTop:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public onBackPressed()V
    .locals 2

    .line 2751
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->selectedTopicDialog:Lorg/telegram/tgnet/TLRPC$Dialog;

    if-eqz v0, :cond_0

    .line 2752
    invoke-direct {p0}, Lorg/telegram/ui/Components/ShareAlert;->collapseTopics()V

    return-void

    .line 2755
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2756
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextEmoji;->hidePopup(Z)V

    return-void

    .line 2759
    :cond_1
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->onBackPressed()V

    return-void
.end method

.method protected onSend(Landroidx/collection/LongSparseArray;ILorg/telegram/tgnet/TLRPC$TL_forumTopic;Z)V
    .locals 0

    return-void
.end method

.method protected onShareStory(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method protected sendInternal(Z)V
    .locals 14

    const/4 v0, 0x0

    move v1, v0

    .line 2508
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v2}, Landroidx/collection/LongSparseArray;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_2

    .line 2509
    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v2, v1}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    .line 2510
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v6, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    iget-object v7, p0, Lorg/telegram/ui/Components/ShareAlert;->frameLayout2:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lorg/telegram/ui/Components/ShareAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/EditTextEmoji;->length()I

    move-result v7

    if-lez v7, :cond_0

    goto :goto_1

    :cond_0
    move v3, v0

    :goto_1
    invoke-static {v2, v6, v4, v5, v3}, Lorg/telegram/ui/Components/AlertsCreator;->checkSlowMode(Landroid/content/Context;IJZ)Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2515
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EditTextEmoji;->getText()Landroid/text/Editable;

    move-result-object v1

    new-array v6, v3, [Ljava/lang/CharSequence;

    aput-object v1, v6, v0

    .line 2516
    iget v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    invoke-virtual {v1, v6, v3}, Lorg/telegram/messenger/MediaDataController;->getEntities([Ljava/lang/CharSequence;Z)Ljava/util/ArrayList;

    move-result-object v7

    .line 2518
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->timestampCheckbox:Lorg/telegram/ui/Components/CheckBox2;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lorg/telegram/ui/Components/CheckBox2;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2519
    iget v1, p0, Lorg/telegram/ui/Components/ShareAlert;->timestamp:I

    :goto_2
    move v9, v1

    goto :goto_3

    :cond_3
    const/4 v1, -0x1

    goto :goto_2

    .line 2526
    :goto_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2527
    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert;->sendingMessageObjects:Ljava/util/ArrayList;

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_9

    move v2, v0

    .line 2528
    :goto_4
    iget-object v5, p0, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v5}, Landroidx/collection/LongSparseArray;->size()I

    move-result v5

    if-ge v0, v5, :cond_8

    .line 2529
    iget-object v5, p0, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v5, v0}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v10

    .line 2530
    iget v5, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    invoke-virtual {v5, v10, v11}, Lorg/telegram/messenger/MessagesController;->getSendPaidMessagesStars(J)J

    move-result-wide v12

    cmp-long v5, v12, v3

    if-gtz v5, :cond_4

    .line 2532
    iget v5, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    invoke-virtual {v5, v10, v11}, Lorg/telegram/messenger/MessagesController;->isUserContactBlocked(J)Lorg/telegram/tgnet/tl/TL_account$RequirementToContact;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/messenger/DialogObject;->getMessagesStarsPrice(Lorg/telegram/tgnet/tl/TL_account$RequirementToContact;)J

    move-result-wide v12

    .line 2534
    :cond_4
    iget-object v5, p0, Lorg/telegram/ui/Components/ShareAlert;->frameLayout2:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lorg/telegram/ui/Components/ShareAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/EditTextEmoji;->length()I

    move-result v5

    if-lez v5, :cond_5

    cmp-long v5, v12, v3

    if-lez v5, :cond_5

    add-int/lit8 v2, v2, 0x1

    :cond_5
    cmp-long v5, v12, v3

    if-lez v5, :cond_6

    add-int/lit8 v2, v2, 0x1

    :cond_6
    if-lez v5, :cond_7

    .line 2540
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 2541
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_8
    move v0, v2

    goto/16 :goto_8

    .line 2546
    :cond_9
    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert;->switchView:Lorg/telegram/ui/Components/ShareAlert$SwitchView;

    if-eqz v2, :cond_a

    .line 2547
    invoke-static {v2}, Lorg/telegram/ui/Components/ShareAlert$SwitchView;->-$$Nest$fgetcurrentTab(Lorg/telegram/ui/Components/ShareAlert$SwitchView;)I

    move-result v2

    goto :goto_5

    :cond_a
    move v2, v0

    .line 2551
    :goto_5
    iget-object v5, p0, Lorg/telegram/ui/Components/ShareAlert;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-eqz v5, :cond_10

    move v2, v0

    move v5, v2

    .line 2552
    :goto_6
    iget-object v8, p0, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v8}, Landroidx/collection/LongSparseArray;->size()I

    move-result v8

    if-ge v2, v8, :cond_f

    .line 2553
    iget-object v8, p0, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v8, v2}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v10

    .line 2554
    iget v8, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v8}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    invoke-virtual {v8, v10, v11}, Lorg/telegram/messenger/MessagesController;->getSendPaidMessagesStars(J)J

    move-result-wide v12

    cmp-long v8, v12, v3

    if-gtz v8, :cond_b

    .line 2556
    iget v8, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v8}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    invoke-virtual {v8, v10, v11}, Lorg/telegram/messenger/MessagesController;->isUserContactBlocked(J)Lorg/telegram/tgnet/tl/TL_account$RequirementToContact;

    move-result-object v8

    invoke-static {v8}, Lorg/telegram/messenger/DialogObject;->getMessagesStarsPrice(Lorg/telegram/tgnet/tl/TL_account$RequirementToContact;)J

    move-result-wide v12

    .line 2558
    :cond_b
    iget-object v8, p0, Lorg/telegram/ui/Components/ShareAlert;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-eqz v8, :cond_c

    .line 2559
    iget-object v8, p0, Lorg/telegram/ui/Components/ShareAlert;->frameLayout2:Landroid/widget/FrameLayout;

    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_c

    iget-object v8, p0, Lorg/telegram/ui/Components/ShareAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v8}, Lorg/telegram/ui/Components/EditTextEmoji;->length()I

    move-result v8

    if-lez v8, :cond_c

    aget-object v8, v6, v0

    if-eqz v8, :cond_c

    cmp-long v8, v12, v3

    if-lez v8, :cond_c

    add-int/lit8 v5, v5, 0x1

    :cond_c
    cmp-long v8, v12, v3

    if-lez v8, :cond_d

    add-int/lit8 v5, v5, 0x1

    :cond_d
    if-lez v8, :cond_e

    .line 2566
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_e

    .line 2567
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_f
    move v0, v5

    goto :goto_8

    .line 2570
    :cond_10
    iget-object v5, p0, Lorg/telegram/ui/Components/ShareAlert;->sendingText:[Ljava/lang/String;

    aget-object v2, v5, v2

    if-eqz v2, :cond_15

    move v2, v0

    .line 2571
    :goto_7
    iget-object v5, p0, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v5}, Landroidx/collection/LongSparseArray;->size()I

    move-result v5

    if-ge v0, v5, :cond_8

    .line 2572
    iget-object v5, p0, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v5, v0}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v10

    .line 2573
    iget v5, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    invoke-virtual {v5, v10, v11}, Lorg/telegram/messenger/MessagesController;->getSendPaidMessagesStars(J)J

    move-result-wide v12

    cmp-long v5, v12, v3

    if-gtz v5, :cond_11

    .line 2575
    iget v5, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    invoke-virtual {v5, v10, v11}, Lorg/telegram/messenger/MessagesController;->isUserContactBlocked(J)Lorg/telegram/tgnet/tl/TL_account$RequirementToContact;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/messenger/DialogObject;->getMessagesStarsPrice(Lorg/telegram/tgnet/tl/TL_account$RequirementToContact;)J

    move-result-wide v12

    .line 2577
    :cond_11
    iget-object v5, p0, Lorg/telegram/ui/Components/ShareAlert;->frameLayout2:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_12

    iget-object v5, p0, Lorg/telegram/ui/Components/ShareAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/EditTextEmoji;->length()I

    move-result v5

    if-lez v5, :cond_12

    cmp-long v5, v12, v3

    if-lez v5, :cond_12

    add-int/lit8 v2, v2, 0x1

    :cond_12
    cmp-long v5, v12, v3

    if-lez v5, :cond_13

    add-int/lit8 v2, v2, 0x1

    :cond_13
    if-lez v5, :cond_14

    .line 2583
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_14

    .line 2584
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 2590
    :cond_15
    :goto_8
    iget v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    new-instance v4, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda26;

    move-object v5, p0

    move v8, p1

    invoke-direct/range {v4 .. v9}, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda26;-><init>(Lorg/telegram/ui/Components/ShareAlert;[Ljava/lang/CharSequence;Ljava/util/ArrayList;ZI)V

    invoke-static {v2, v1, v0, v4}, Lorg/telegram/ui/Components/AlertsCreator;->ensurePaidMessagesMultiConfirmation(ILjava/util/ArrayList;ILorg/telegram/messenger/Utilities$Callback;)Z

    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Components/ShareAlert$ShareAlertDelegate;)V
    .locals 0

    .line 2738
    iput-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->delegate:Lorg/telegram/ui/Components/ShareAlert$ShareAlertDelegate;

    return-void
.end method

.method public setStoryToShare(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;)V
    .locals 0

    .line 237
    iput-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    return-void
.end method

.method public updateBottomOverlay()V
    .locals 3

    .line 3989
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->frameLayout2:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    return-void

    .line 3990
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->isPopupVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3992
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEmojiPaddingShown()F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/ShareAlert;->keyboardT:F

    goto :goto_1

    .line 3993
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->adjustPanLayoutHelper:Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->animationInProgress()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3994
    iget v0, p0, Lorg/telegram/ui/Components/ShareAlert;->keyboardSize2:I

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    if-le v0, v2, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    iput v0, p0, Lorg/telegram/ui/Components/ShareAlert;->keyboardT:F

    .line 3998
    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->timestampFrameLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_4

    const/high16 v2, -0x80000000

    .line 3999
    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    const/high16 v0, 0x42400000    # 48.0f

    .line 4000
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v1, v0

    .line 4002
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->pickerBottom:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_5

    neg-float v2, v1

    .line 4003
    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 4004
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->sharesCountLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_5

    .line 4005
    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 4008
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->frameLayout2:Landroid/widget/FrameLayout;

    neg-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 4009
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->writeButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public updateSelectedCount(I)V
    .locals 13

    .line 2979
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2980
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/ShareAlert;->showCommentTextView(Z)Z

    return-void

    .line 2982
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->sendingMessageObjects:Ljava/util/ArrayList;

    const/4 v2, 0x1

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2983
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert;->frameLayout2:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/EditTextEmoji;->length()I

    move-result v3

    if-lez v3, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    const-wide/16 v3, 0x0

    move v5, v1

    move-wide v6, v3

    .line 2987
    :goto_1
    iget-object v8, p0, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v8}, Landroidx/collection/LongSparseArray;->size()I

    move-result v8

    if-ge v5, v8, :cond_4

    .line 2988
    iget-object v8, p0, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v8, v5}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$Dialog;

    iget-wide v8, v8, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    .line 2989
    iget v10, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v10}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v10

    invoke-virtual {v10, v8, v9}, Lorg/telegram/messenger/MessagesController;->getSendPaidMessagesStars(J)J

    move-result-wide v10

    cmp-long v12, v10, v3

    if-gtz v12, :cond_3

    .line 2991
    iget v10, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v10}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v10

    invoke-virtual {v10, v8, v9}, Lorg/telegram/messenger/MessagesController;->isUserContactBlocked(J)Lorg/telegram/tgnet/tl/TL_account$RequirementToContact;

    move-result-object v8

    invoke-static {v8}, Lorg/telegram/messenger/DialogObject;->getMessagesStarsPrice(Lorg/telegram/tgnet/tl/TL_account$RequirementToContact;)J

    move-result-wide v10

    :cond_3
    add-long/2addr v6, v10

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 2995
    :cond_4
    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert;->writeButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    iget-object v4, p0, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v4}, Landroidx/collection/LongSparseArray;->size()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    if-eqz p1, :cond_5

    move v5, v2

    goto :goto_2

    :cond_5
    move v5, v1

    :goto_2
    invoke-virtual {v3, v4, v5}, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->setCount(IZ)V

    .line 2996
    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert;->writeButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    if-eqz p1, :cond_6

    move p1, v2

    goto :goto_3

    :cond_6
    move p1, v1

    :goto_3
    invoke-virtual {v3, v6, v7, v0, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->setStarsPrice(JIZ)V

    .line 2997
    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/ShareAlert;->showCommentTextView(Z)Z

    .line 2999
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    const/high16 v0, 0x42a80000    # 84.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert;->writeButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->width()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p1, v1, v1, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method
