.class public Lorg/telegram/ui/Components/ChatAttachAlert;
.super Lorg/telegram/ui/ActionBar/BottomSheet;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;
.implements Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetDelegateInterface;
.implements Lme/vkryl/android/animator/FactorAnimator$Target;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;,
        Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;,
        Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;,
        Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;,
        Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;,
        Lorg/telegram/ui/Components/ChatAttachAlert$AttachSearchField;,
        Lorg/telegram/ui/Components/ChatAttachAlert$SearchFadeView;,
        Lorg/telegram/ui/Components/ChatAttachAlert$AttachButtonBase;
    }
.end annotation


# instance fields
.field public final ATTACH_ALERT_LAYOUT_TRANSLATION:Landroid/util/Property;

.field private final ATTACH_ALERT_PROGRESS:Landroid/util/Property;

.field public actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

.field private actionBarAnimation:Landroid/animation/AnimatorSet;

.field private actionBarShadow:Landroid/view/View;

.field private allowDrawContent:Z

.field public allowEnterCaption:Z

.field protected allowOrder:Z

.field protected allowPassConfirmationAlert:Z

.field private final animatorActionBarVisible:Lme/vkryl/android/animator/BoolAnimator;

.field private final animatorCaptionAbove:Lme/vkryl/android/animator/BoolAnimator;

.field private final animatorCaptionNotEmpty:Lme/vkryl/android/animator/BoolAnimator;

.field private final animatorCaptionVisible:Lme/vkryl/android/animator/BoolAnimator;

.field private final animatorCurrentVisibleLayout:Lme/vkryl/android/animator/ReplaceAnimator;

.field private final animatorToggleCaptionSupported:Lme/vkryl/android/animator/BoolAnimator;

.field private appearSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private final attachButtonPaint:Landroid/graphics/Paint;

.field private attachItemSize:I

.field private audioLayout:Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;

.field protected avatarPicker:I

.field protected avatarSearch:Z

.field protected avatarWithBulletin:Lorg/telegram/messenger/Utilities$Callback0Return;

.field public final baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private baseSelectedTextViewTranslationY:F

.field private botAttachLayouts:Landroid/util/LongSparseArray;

.field private botButtonProgressWasVisible:Z

.field private botButtonWasVisible:Z

.field private botMainButtonOffsetY:F

.field private botMainButtonTextView:Lorg/telegram/ui/Components/AnimatedTextView;

.field private botProgressView:Lorg/telegram/ui/Components/RadialProgressView;

.field private bottomFadeDrawable:Lorg/telegram/ui/Components/blur3/BlurredBackgroundWithFadeDrawable;

.field private bottomFadeView:Landroid/view/View;

.field private bottomPannelTranslation:F

.field private buttonPressed:Z

.field private buttonsAdapter:Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;

.field private buttonsAnimation:Landroid/animation/AnimatorSet;

.field private buttonsLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field protected buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

.field protected buttonsRecyclerViewWrapper:Landroid/widget/FrameLayout;

.field private final cameraFloatingButton:Lorg/telegram/ui/Components/FragmentFloatingButton;

.field public canOpenPreview:Z

.field public captionAbove:Z

.field private captionContainer:Landroid/widget/FrameLayout;

.field private captionContainerBg:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

.field private captionEditTextTopOffset:F

.field protected captionLimitBulletinShown:Z

.field private final captionLimitView:Lorg/telegram/ui/Components/NumberTextView;

.field private chatActivityEnterViewAnimateFromTop:F

.field private codepointCount:I

.field public colorsLayout:Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout;

.field public commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

.field private commentTextViewLocation:[I

.field private commentsAnimator:Landroid/animation/AnimatorSet;

.field private confirmationAlertShown:Z

.field private contactsLayout:Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;

.field protected cornerRadius:F

.field public final currentAccount:I

.field private currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

.field private currentLimit:I

.field currentPanTranslationY:F

.field public customStickerHandler:Lorg/telegram/messenger/Utilities$Callback2;

.field private decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field protected delegate:Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;

.field public destroyed:Z

.field public dialogId:J

.field private documentLayout:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

.field private documentsDelegate:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$DocumentSelectActivityDelegate;

.field private documentsEnabled:Z

.field protected doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private doneItemAlphaByEnabled:F

.field private doneItemAlphaByLayout:F

.field private editType:I

.field protected editingMessageObject:Lorg/telegram/messenger/MessageObject;

.field private effectId:J

.field private emojiViewChildBg:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

.field private enterCommentEventSent:Z

.field private exclusionRects:Ljava/util/ArrayList;

.field private exclustionRect:Landroid/graphics/Rect;

.field public forUser:Z

.field private final forceDarkTheme:Z

.field private frameLayout2:Landroid/widget/FrameLayout;

.field private fromScrollY:F

.field protected headerView:Landroid/widget/FrameLayout;

.field private final iBlur3Capture:Lorg/telegram/ui/Components/blur3/capture/IBlur3Capture;

.field private final iBlur3FactoryFade:Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;

.field private final iBlur3FactoryFrostedLiquidGlass:Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;

.field private final iBlur3FactoryLiquidGlass:Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;

.field private final iBlur3PositionActionBar:Landroid/graphics/RectF;

.field private final iBlur3PositionFastScroll:Landroid/graphics/RectF;

.field private final iBlur3PositionMainTabs:Landroid/graphics/RectF;

.field private final iBlur3Positions:Ljava/util/ArrayList;

.field private final iBlur3PositionsMerged:Ljava/util/ArrayList;

.field private final iBlur3SourceColor:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceColor;

.field private final iBlur3SourceGlass:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

.field private final iBlur3SourceGlassFrosted:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

.field public inBubbleMode:Z

.field public isBizLocationPicker:Z

.field public isPhotoPicker:Z

.field private isSoundPicker:Z

.field public isStickerMode:Z

.field public isStoryAudioPicker:Z

.field public isStoryLocationPicker:Z

.field private layouts:[Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

.field private locationLayout:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

.field protected maxSelectedPhotos:I

.field protected mediaPreviewTextView:Landroid/widget/TextView;

.field protected mediaPreviewView:Landroid/widget/LinearLayout;

.field public mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

.field private mentionsDelegate:Lorg/telegram/ui/Components/MentionsContainerView$Delegate;

.field private menuAnimator:Landroid/animation/AnimatorSet;

.field private menuShowed:Z

.field private messageSendPreview:Lorg/telegram/ui/MessageSendPreview;

.field public moveCaptionButton:Landroid/widget/ImageView;

.field private musicEnabled:Z

.field private nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

.field private openTransitionFinished:Z

.field protected openWithFrontFaceCamera:Z

.field protected optionsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private overrideBackgroundColor:Z

.field private paint:Landroid/graphics/Paint;

.field public parentImageUpdater:Lorg/telegram/ui/Components/ImageUpdater;

.field public parentThemeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

.field private passcodeView:Lorg/telegram/ui/Components/PasscodeView;

.field protected paused:Z

.field private photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

.field private photoPreviewLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

.field private photosEnabled:Z

.field public pinnedToTop:Z

.field private plainTextEnabled:Z

.field private pollLayout:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

.field private pollsEnabled:Z

.field private previousScrollOffsetY:I

.field private quickRepliesLayout:Lorg/telegram/ui/Business/ChatAttachAlertQuickRepliesLayout;

.field private rect:Landroid/graphics/RectF;

.field private restrictedLayout:Lorg/telegram/ui/Components/ChatAttachRestrictedLayout;

.field public scrollOffsetY:[I

.field private final scrollableViewNoiseSuppressor:Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;

.field protected searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field protected selectedArrowImageView:Landroid/widget/ImageView;

.field private selectedCountView:Landroid/view/View;

.field private selectedId:J

.field protected selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field protected selectedTextView:Landroid/widget/TextView;

.field protected selectedView:Landroid/widget/LinearLayout;

.field sendButtonEnabled:Z

.field private sendButtonEnabledProgress:F

.field public sent:Z

.field private setAvatarFor:Lorg/telegram/ui/Components/ImageUpdater$AvatarFor;

.field private final showingFromDialog:Z

.field public sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

.field public storyLocationPickerFileIsVideo:Z

.field public storyLocationPickerLatLong:[D

.field public storyLocationPickerPhotoFile:Ljava/io/File;

.field public storyMediaPicker:Z

.field private textPaint:Landroid/text/TextPaint;

.field private toScrollY:F

.field private todoEnabled:Z

.field private todoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

.field private topBackgroundAnimator:Landroid/animation/ValueAnimator;

.field private final topCaptionLimitView:Lorg/telegram/ui/Components/NumberTextView;

.field public topCommentContainer:Landroid/widget/FrameLayout;

.field public topCommentMoveButton:Landroid/widget/ImageView;

.field public topCommentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

.field public translationProgress:F

.field protected typeButtonsAvailable:Z

.field private videosEnabled:Z

.field private viewChangeAnimator:Ljava/lang/Object;

.field private writeButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

.field private writeButtonContainer:Landroid/widget/FrameLayout;


# direct methods
.method public static synthetic $r8$lambda$-n75Y4U_pr8aUtMF0G6xxpZV1Co(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$new$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$-rY0PI7me4nFFZbSXlxQ3mOMK9Y(Lorg/telegram/ui/Components/ChatAttachAlert;ZLjava/lang/Runnable;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$showLayout$42(ZLjava/lang/Runnable;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$0MSASC_WPe6xEcn9SdOzKQl_dlo(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$new$7(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$2pl5wr-pk4mzYFad3pYfHDVtZsA(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$new$23(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3aJQwxT5MMqsK6b5q1tR4kWDBkk(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/tgnet/TLRPC$MessageMedia;IZIJ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$new$8(Lorg/telegram/tgnet/TLRPC$MessageMedia;IZIJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$78DON5JD5kv4Che-_uvTF-JKGB4(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$onLongClickBotButton$37(Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7aiXK8Y0caNjs4EYG8DHAJd1TB4(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/messenger/AnimationNotificationsLocker;Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetDelegateInterface;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$onCustomOpenAnimation$48(Lorg/telegram/messenger/AnimationNotificationsLocker;Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetDelegateInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7fuTGgoSYh1p7cHNmFAQSDiqS58(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$showCommentTextView$46(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8m0wwraz1YFFBuKSKHvwYDb6W3g(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$dismiss$56(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$951lLyzH1kuqRnkXoJk3xhIZ1h0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 2942
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$9UOZMRLDM4Mr6bu3_J8emFtCz2Y(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$new$34(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$9udQg1qdbffgsh0Vcg7EAOtPYaU(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$new$12(Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$A1ozU8jWxrsLId6jU0ByswC4XZc(Lorg/telegram/ui/Components/ChatAttachAlert;ZII)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$new$22(ZII)V

    return-void
.end method

.method public static synthetic $r8$lambda$AQTsYeRo85z4CJowKECUI_wmYx8(Lorg/telegram/ui/Components/EditTextBoldCursor;)V
    .locals 0

    .line 5049
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$B1q9HLsvPHeHVkeSyHh5oBPiY1w(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$new$25(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CSLuNQQHJSkr3vESVsVLhFtDG8k(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$dismiss$55(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DPsSFN5G1JsZCLBFs5pRvPbYlY8(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$new$14(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$DUFm_HP5NcNqWaKu08g2jukQCJg(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$showLayout$43(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DXpkEsFtK1XbKx2Lnxj4Y9XCQso(Lorg/telegram/ui/Components/ChatAttachAlert;ZLandroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$new$4(ZLandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$F33NvIIU4ORJqr2WTqfy8F_rFc8(Lorg/telegram/ui/Components/ChatAttachAlert;ZZ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$setCaptionAbove$59(ZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$FOor2pT0TUmgdhYUaRg4n11AOKY(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$new$16(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HkTIVIZJel9om5QbIOhwwXnKFGY(Lorg/telegram/ui/Components/ChatAttachAlert;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$new$31()V

    return-void
.end method

.method public static synthetic $r8$lambda$IC_EJCjHvDusC089QkOzSXLuoqc(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$onLongClickBotButton$36(Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;)V

    return-void
.end method

.method public static synthetic $r8$lambda$J7JCH77tTBhQduhm5e6Homt8cAI(Lorg/telegram/ui/Components/ChatAttachAlert;JZII)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$new$24(JZII)V

    return-void
.end method

.method public static synthetic $r8$lambda$JB1MT5nLocGzz9thkH4WoccyYLY(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/tgnet/TLRPC$MessageMedia;Ljava/util/HashMap;ZIJ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$new$10(Lorg/telegram/tgnet/TLRPC$MessageMedia;Ljava/util/HashMap;ZIJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$JVFkYf5eZ3-ElmvTOojNDYCKjh4(Lorg/telegram/ui/Components/ChatAttachAlert;Ljava/lang/Object;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$openColorsLayout$45(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JZbbmI66y6pwMwPNC8yixb7exKw(Lorg/telegram/ui/Components/ChatAttachAlert;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$dismiss$57(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Jd5hhpTemZlw8UhTkPNuPP4rY88(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$setCaptionAbove$58(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$L_u-sTJE1EHZ5WigZClVw0wX2_o(Lorg/telegram/ui/Components/ChatAttachAlert;FFZLandroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$showLayout$41(FFZLandroidx/dynamicanimation/animation/DynamicAnimation;FF)V

    return-void
.end method

.method public static synthetic $r8$lambda$OA9DVc-pRP2yyWtqXEpPZMZBXAo(Lorg/telegram/ui/Components/ChatAttachAlert;Lme/vkryl/android/animator/ReplaceAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->onCurrentLayoutAnimatorChanged(Lme/vkryl/android/animator/ReplaceAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QDnKNiN6L8i4m1wbizmbAZqvXs0(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/ui/Components/EditTextBoldCursor;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$makeFocusable$52(Lorg/telegram/ui/Components/EditTextBoldCursor;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$QWzfKT57NxUyngdSEenIIXv3L00(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$new$5(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Sml907oOJGiBmAUkRUtsQYtJ7tQ(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/view/View;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$new$18(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$UMQfqGUKPlF6S6ZdnGPI2FLnyis(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$new$17(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UV6DWKyxR_3wQPnOnNIKzy0Vy4o(Lorg/telegram/ui/Components/ChatAttachAlert;JLorg/telegram/ui/ChatActivity;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$new$30(JLorg/telegram/ui/ChatActivity;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public static synthetic $r8$lambda$V2laMabzuOpMBwXUo2FGNQ2pU7M(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$new$11(Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XzOW0SY-b2S3DagqKJjmwSUen7E(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/tgnet/TLRPC$MessageMedia;Ljava/util/HashMap;ZIJ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$new$9(Lorg/telegram/tgnet/TLRPC$MessageMedia;Ljava/util/HashMap;ZIJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$YoXE7JgWIHVIYAxVRqhwT0RlBfE(Lorg/telegram/ui/Components/ChatAttachAlert;Ljava/lang/Runnable;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$onCustomOpenAnimation$49(Ljava/lang/Runnable;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$Yv7PdUAG0DJgehp5y-ig7F-s6IM(Lorg/telegram/ui/Components/ChatAttachAlert;ZII)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$new$27(ZII)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZDeTPU7FpuKMEEcUOIB18zxxEAc(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$onCustomOpenAnimation$50(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$c_bozOudU-GTy1PSDW6q4NpW4mo(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Ljava/lang/Long;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$new$32(Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Ljava/lang/Long;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dhlSR7Q_Ma0g01qbZVet1fOJfMI(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$new$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eBQZT2KaI_F4CnKjwWLHCYWaWdA(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$new$33(Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$f3-pABhzF6KzKn_QL__8PsjFsPg(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/messenger/MessageObject;Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$new$26(Lorg/telegram/messenger/MessageObject;Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fNP051r0sZtKHiNMzFrjoIN3L4I(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$new$13(Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gdTGAURXolyxzlaMSgQBfAUVqnA(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageSuggestionParams;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$new$29(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageSuggestionParams;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hYAm0TD1QkDIZJ1_rvpSwTiRX8g(Lorg/telegram/ui/Components/ChatAttachAlert;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->removeFromRoot()V

    return-void
.end method

.method public static synthetic $r8$lambda$jcDtZWIcj7wfwz2ixmuMqif9wdQ(Lorg/telegram/ui/Components/ChatAttachAlert;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$showLayout$40()V

    return-void
.end method

.method public static synthetic $r8$lambda$k-IloEqFOYXhkJRnKcYfshxxBTw(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$new$19(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kDDRZY-jt3-RvEoY3md5JHDj93o(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$showCaptionLimitBulletin$35(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kw2DcaDynOEgEvGJ4npHlwam0lo(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$onCustomOpenAnimation$47(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$m0vCQ3fNKJB3VHfKNaUFMQyVTjk(Lorg/telegram/ui/Components/ChatAttachAlert;ZIIJZLjava/lang/Long;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p7}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$sendPressed$39(ZIIJZLjava/lang/Long;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oLfCvZ9-fIr7cjTHSlQtET6AjCY(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$dismiss$54(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$pjT7_n2qhMFIGYSbI5gDcn8HI9k(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$new$0(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    return-void
.end method

.method public static synthetic $r8$lambda$raZYakI_qgWleoD0Zh7IhRKKqfM(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$new$6(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tFUCJRDNwIhv1hP55glZg_19JQo(Lorg/telegram/ui/Components/ChatAttachAlert;Ljava/util/ArrayList;Ljava/lang/CharSequence;ZIIJZJ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p10}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$openAudioLayout$44(Ljava/util/ArrayList;Ljava/lang/CharSequence;ZIIJZJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$tGiBjikEl7rG2p7CJgZ4sUWNpRE(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$onLongClickBotButton$38(Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$tYmdhFgtD1ek_CkPnWLDTMfe8YM(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/tgnet/TLRPC$MessageMedia;IZIJ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$init$53(Lorg/telegram/tgnet/TLRPC$MessageMedia;IZIJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$tnS9qwH2nHIlqV4knyZapJ4b3oQ(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$setCaptionAbove$60(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uguPPbg5Qxgh3Nf6NKpwZNlSc8g(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$new$21(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vOyCuEHcVbQ_81vDy-D5baQk5vc(Lorg/telegram/ui/Components/ChatAttachAlert;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$new$1(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$wyxZawmu1FQ4dxlEUsqdpH13sHI(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/view/View;I)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$new$15(Landroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$xe1eMcZi7rNLYD3mVHFnlm9nJxk(Lorg/telegram/ui/Components/ChatAttachAlert;ZZ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$setCaptionAbove$61(ZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$xzbhhjRjoAfQKVYPjPuDwYl3hK0(Lorg/telegram/ui/Components/ChatAttachAlert;JLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$new$28(JLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetactionBarAnimation(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBarAnimation:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetactionBarShadow(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/view/View;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBarShadow:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetanimatorCaptionNotEmpty(Lorg/telegram/ui/Components/ChatAttachAlert;)Lme/vkryl/android/animator/BoolAnimator;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->animatorCaptionNotEmpty:Lme/vkryl/android/animator/BoolAnimator;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetappearSpringAnimation(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->appearSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetattachItemSize(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachItemSize:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetaudioLayout(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->audioLayout:Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetbaseSelectedTextViewTranslationY(Lorg/telegram/ui/Components/ChatAttachAlert;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseSelectedTextViewTranslationY:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetbotAttachLayouts(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/util/LongSparseArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botAttachLayouts:Landroid/util/LongSparseArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetbotButtonProgressWasVisible(Lorg/telegram/ui/Components/ChatAttachAlert;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botButtonProgressWasVisible:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetbotButtonWasVisible(Lorg/telegram/ui/Components/ChatAttachAlert;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botButtonWasVisible:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetbotMainButtonOffsetY(Lorg/telegram/ui/Components/ChatAttachAlert;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botMainButtonOffsetY:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetbotMainButtonTextView(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/AnimatedTextView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botMainButtonTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetbotProgressView(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/RadialProgressView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetbottomFadeDrawable(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/blur3/BlurredBackgroundWithFadeDrawable;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->bottomFadeDrawable:Lorg/telegram/ui/Components/blur3/BlurredBackgroundWithFadeDrawable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetbottomFadeView(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/view/View;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->bottomFadeView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetbuttonsAdapter(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsAdapter:Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcaptionContainer(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/widget/FrameLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->captionContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcaptionContainerBg(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->captionContainerBg:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcaptionEditTextTopOffset(Lorg/telegram/ui/Components/ChatAttachAlert;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->captionEditTextTopOffset:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcaptionLimitView(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/NumberTextView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->captionLimitView:Lorg/telegram/ui/Components/NumberTextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetchatActivityEnterViewAnimateFromTop(Lorg/telegram/ui/Components/ChatAttachAlert;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->chatActivityEnterViewAnimateFromTop:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcodepointCount(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->codepointCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcommentsAnimator(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->commentsAnimator:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcontactsLayout(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->contactsLayout:Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentAttachLayout(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentLimit(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentLimit:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetdocumentLayout(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->documentLayout:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdocumentsDelegate(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$DocumentSelectActivityDelegate;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->documentsDelegate:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$DocumentSelectActivityDelegate;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgeteditType(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->editType:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetemojiViewChildBg(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->emojiViewChildBg:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetenterCommentEventSent(Lorg/telegram/ui/Components/ChatAttachAlert;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->enterCommentEventSent:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetexclusionRects(Lorg/telegram/ui/Components/ChatAttachAlert;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->exclusionRects:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetexclustionRect(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/graphics/Rect;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->exclustionRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetframeLayout2(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/widget/FrameLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->frameLayout2:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetfromScrollY(Lorg/telegram/ui/Components/ChatAttachAlert;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->fromScrollY:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetiBlur3SourceGlass(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->iBlur3SourceGlass:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetiBlur3SourceGlassFrosted(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->iBlur3SourceGlassFrosted:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetisSoundPicker(Lorg/telegram/ui/Components/ChatAttachAlert;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->isSoundPicker:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlocationLayout(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->locationLayout:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmenuShowed(Lorg/telegram/ui/Components/ChatAttachAlert;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->menuShowed:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmessageSendPreview(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/MessageSendPreview;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->messageSendPreview:Lorg/telegram/ui/MessageSendPreview;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetnextAttachLayout(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetopenTransitionFinished(Lorg/telegram/ui/Components/ChatAttachAlert;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->openTransitionFinished:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetoverrideBackgroundColor(Lorg/telegram/ui/Components/ChatAttachAlert;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->overrideBackgroundColor:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetpaint(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/graphics/Paint;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->paint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetphotoLayout(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetphotoPreviewLayout(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoPreviewLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetphotosEnabled(Lorg/telegram/ui/Components/ChatAttachAlert;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photosEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetplainTextEnabled(Lorg/telegram/ui/Components/ChatAttachAlert;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->plainTextEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetpollLayout(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->pollLayout:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpollsEnabled(Lorg/telegram/ui/Components/ChatAttachAlert;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->pollsEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetpreviousScrollOffsetY(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->previousScrollOffsetY:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetquickRepliesLayout(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Business/ChatAttachAlertQuickRepliesLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->quickRepliesLayout:Lorg/telegram/ui/Business/ChatAttachAlertQuickRepliesLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetrect(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/graphics/RectF;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->rect:Landroid/graphics/RectF;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetscrollableViewNoiseSuppressor(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->scrollableViewNoiseSuppressor:Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetselectedId(Lorg/telegram/ui/Components/ChatAttachAlert;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedId:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetsendButtonEnabledProgress(Lorg/telegram/ui/Components/ChatAttachAlert;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->sendButtonEnabledProgress:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgettextPaint(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/text/TextPaint;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->textPaint:Landroid/text/TextPaint;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettoScrollY(Lorg/telegram/ui/Components/ChatAttachAlert;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->toScrollY:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgettodoEnabled(Lorg/telegram/ui/Components/ChatAttachAlert;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->todoEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgettodoLayout(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->todoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettopBackgroundAnimator(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->topBackgroundAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettopCaptionLimitView(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/NumberTextView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->topCaptionLimitView:Lorg/telegram/ui/Components/NumberTextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetvideosEnabled(Lorg/telegram/ui/Components/ChatAttachAlert;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->videosEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetviewChangeAnimator(Lorg/telegram/ui/Components/ChatAttachAlert;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->viewChangeAnimator:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetwriteButton(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetwriteButtonContainer(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/widget/FrameLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButtonContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputactionBarAnimation(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/animation/AnimatorSet;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBarAnimation:Landroid/animation/AnimatorSet;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputattachItemSize(Lorg/telegram/ui/Components/ChatAttachAlert;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachItemSize:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputbotButtonProgressWasVisible(Lorg/telegram/ui/Components/ChatAttachAlert;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botButtonProgressWasVisible:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputbotButtonWasVisible(Lorg/telegram/ui/Components/ChatAttachAlert;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botButtonWasVisible:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputbotMainButtonOffsetY(Lorg/telegram/ui/Components/ChatAttachAlert;F)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botMainButtonOffsetY:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputbottomPannelTranslation(Lorg/telegram/ui/Components/ChatAttachAlert;F)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->bottomPannelTranslation:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputcaptionEditTextTopOffset(Lorg/telegram/ui/Components/ChatAttachAlert;F)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->captionEditTextTopOffset:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputchatActivityEnterViewAnimateFromTop(Lorg/telegram/ui/Components/ChatAttachAlert;F)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->chatActivityEnterViewAnimateFromTop:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputcodepointCount(Lorg/telegram/ui/Components/ChatAttachAlert;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->codepointCount:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputcommentsAnimator(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/animation/AnimatorSet;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->commentsAnimator:Landroid/animation/AnimatorSet;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputeffectId(Lorg/telegram/ui/Components/ChatAttachAlert;J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->effectId:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputfromScrollY(Lorg/telegram/ui/Components/ChatAttachAlert;F)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->fromScrollY:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmenuAnimator(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/animation/AnimatorSet;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->menuAnimator:Landroid/animation/AnimatorSet;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputoverrideBackgroundColor(Lorg/telegram/ui/Components/ChatAttachAlert;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->overrideBackgroundColor:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputpreviousScrollOffsetY(Lorg/telegram/ui/Components/ChatAttachAlert;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->previousScrollOffsetY:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputtoScrollY(Lorg/telegram/ui/Components/ChatAttachAlert;F)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->toScrollY:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputtopBackgroundAnimator(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->topBackgroundAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputviewChangeAnimator(Lorg/telegram/ui/Components/ChatAttachAlert;Ljava/lang/Object;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->viewChangeAnimator:Ljava/lang/Object;

    return-void
.end method

.method static bridge synthetic -$$Nest$mapplyAttachButtonColors(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->applyAttachButtonColors(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mblur3_InvalidateBlur(Lorg/telegram/ui/Components/ChatAttachAlert;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->blur3_InvalidateBlur()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckUi_writeButtonContainerY(Lorg/telegram/ui/Components/ChatAttachAlert;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->checkUi_writeButtonContainerY()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcreateMentionsContainer(Lorg/telegram/ui/Components/ChatAttachAlert;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->createMentionsContainer()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetActionBarDrawableColor(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getActionBarDrawableColor()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetEmojiPadding(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getEmojiPadding()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetScrollOffsetY(Lorg/telegram/ui/Components/ChatAttachAlert;I)I
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->getScrollOffsetY(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mopenAudioLayout(Lorg/telegram/ui/Components/ChatAttachAlert;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->openAudioLayout(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mreplaceWithText(Lorg/telegram/ui/Components/ChatAttachAlert;IILjava/lang/CharSequence;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/ChatAttachAlert;->replaceWithText(IILjava/lang/CharSequence;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowCaptionLimitBulletin(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->showCaptionLimitBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateCameraButtonVisibility(Lorg/telegram/ui/Components/ChatAttachAlert;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->updateCameraButtonVisibility()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateSelectedPosition(Lorg/telegram/ui/Components/ChatAttachAlert;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->updateSelectedPosition(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdatedTopCaptionHeight(Lorg/telegram/ui/Components/ChatAttachAlert;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->updatedTopCaptionHeight()V

    return-void
.end method

.method static bridge synthetic -$$Nest$smcheckContactsPermission(Landroid/content/Context;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->checkContactsPermission(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smcheckMusicPermission(Landroid/content/Context;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->checkMusicPermission(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smcheckPhotoAndCameraPermission(Landroid/content/Context;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->checkPhotoAndCameraPermission(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smcheckPhotoAndDocumentsPermission(Landroid/content/Context;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->checkPhotoAndDocumentsPermission(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;ZZ)V
    .locals 7

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 1220
    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/ChatAttachAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 32

    move-object/from16 v2, p0

    move-object/from16 v6, p1

    move-object/from16 v8, p2

    move/from16 v7, p3

    move/from16 v9, p4

    move-object/from16 v10, p6

    const/4 v11, 0x0

    .line 1225
    invoke-direct {v2, v6, v11, v10}, Lorg/telegram/ui/ActionBar/BottomSheet;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 201
    new-instance v0, Lme/vkryl/android/animator/BoolAnimator;

    sget-object v3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v4, 0x17c

    const/4 v1, 0x0

    invoke-direct/range {v0 .. v5}, Lme/vkryl/android/animator/BoolAnimator;-><init>(ILme/vkryl/android/animator/FactorAnimator$Target;Landroid/view/animation/Interpolator;J)V

    iput-object v0, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->animatorCaptionAbove:Lme/vkryl/android/animator/BoolAnimator;

    .line 203
    new-instance v0, Lme/vkryl/android/animator/BoolAnimator;

    const/4 v1, 0x1

    invoke-direct/range {v0 .. v5}, Lme/vkryl/android/animator/BoolAnimator;-><init>(ILme/vkryl/android/animator/FactorAnimator$Target;Landroid/view/animation/Interpolator;J)V

    iput-object v0, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->animatorCaptionVisible:Lme/vkryl/android/animator/BoolAnimator;

    .line 205
    new-instance v0, Lme/vkryl/android/animator/BoolAnimator;

    const/4 v1, 0x2

    invoke-direct/range {v0 .. v5}, Lme/vkryl/android/animator/BoolAnimator;-><init>(ILme/vkryl/android/animator/FactorAnimator$Target;Landroid/view/animation/Interpolator;J)V

    iput-object v0, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->animatorActionBarVisible:Lme/vkryl/android/animator/BoolAnimator;

    .line 207
    new-instance v0, Lme/vkryl/android/animator/BoolAnimator;

    const/4 v1, 0x3

    invoke-direct/range {v0 .. v5}, Lme/vkryl/android/animator/BoolAnimator;-><init>(ILme/vkryl/android/animator/FactorAnimator$Target;Landroid/view/animation/Interpolator;J)V

    iput-object v0, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->animatorCaptionNotEmpty:Lme/vkryl/android/animator/BoolAnimator;

    .line 209
    new-instance v0, Lme/vkryl/android/animator/BoolAnimator;

    const/4 v1, 0x4

    invoke-direct/range {v0 .. v5}, Lme/vkryl/android/animator/BoolAnimator;-><init>(ILme/vkryl/android/animator/FactorAnimator$Target;Landroid/view/animation/Interpolator;J)V

    move-object v12, v2

    iput-object v0, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->animatorToggleCaptionSupported:Lme/vkryl/android/animator/BoolAnimator;

    .line 212
    new-instance v0, Lme/vkryl/android/animator/ReplaceAnimator;

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda12;

    invoke-direct {v1, v12}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-direct {v0, v1, v3, v4, v5}, Lme/vkryl/android/animator/ReplaceAnimator;-><init>(Lme/vkryl/android/animator/ReplaceAnimator$Callback;Landroid/view/animation/Interpolator;J)V

    iput-object v0, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->animatorCurrentVisibleLayout:Lme/vkryl/android/animator/ReplaceAnimator;

    .line 226
    iput-boolean v11, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->canOpenPreview:Z

    .line 227
    iput-boolean v11, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->isSoundPicker:Z

    .line 228
    iput-boolean v11, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->isStoryLocationPicker:Z

    .line 229
    iput-boolean v11, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->isBizLocationPicker:Z

    .line 230
    iput-boolean v11, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->isStoryAudioPicker:Z

    const/4 v13, 0x0

    .line 685
    iput v13, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->translationProgress:F

    .line 686
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlert$2;

    const-string v1, "translation"

    invoke-direct {v0, v12, v1}, Lorg/telegram/ui/Components/ChatAttachAlert$2;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Ljava/lang/String;)V

    iput-object v0, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->ATTACH_ALERT_LAYOUT_TRANSLATION:Landroid/util/Property;

    const/16 v14, 0x8

    .line 974
    new-array v0, v14, [Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    iput-object v0, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->layouts:[Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    .line 975
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->botAttachLayouts:Landroid/util/LongSparseArray;

    const/4 v15, 0x2

    .line 985
    new-array v0, v15, [I

    iput-object v0, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextViewLocation:[I

    .line 989
    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->textPaint:Landroid/text/TextPaint;

    .line 990
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->rect:Landroid/graphics/RectF;

    .line 991
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->paint:Landroid/graphics/Paint;

    .line 1008
    iput-boolean v1, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->sendButtonEnabled:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1009
    iput v0, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->sendButtonEnabledProgress:F

    .line 1014
    iput v0, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->cornerRadius:F

    .line 1049
    iput-boolean v11, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->botButtonProgressWasVisible:Z

    .line 1052
    iput-boolean v11, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->botButtonWasVisible:Z

    .line 1063
    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v2, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    .line 1065
    iput-boolean v1, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->documentsEnabled:Z

    .line 1066
    iput-boolean v1, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->photosEnabled:Z

    .line 1067
    iput-boolean v1, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->videosEnabled:Z

    .line 1068
    iput-boolean v1, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->musicEnabled:Z

    .line 1069
    iput-boolean v1, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->pollsEnabled:Z

    .line 1070
    iput-boolean v1, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->todoEnabled:Z

    .line 1071
    iput-boolean v1, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->plainTextEnabled:Z

    const/4 v3, -0x1

    .line 1073
    iput v3, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->maxSelectedPhotos:I

    .line 1074
    iput-boolean v1, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->allowOrder:Z

    const/high16 v4, 0x42aa0000    # 85.0f

    .line 1080
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    iput v4, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->attachItemSize:I

    .line 1082
    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v4, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 1086
    new-array v4, v15, [I

    iput-object v4, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->scrollOffsetY:[I

    .line 1093
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v4, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->attachButtonPaint:Landroid/graphics/Paint;

    .line 1098
    iput-boolean v11, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->captionLimitBulletinShown:Z

    .line 1214
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->exclusionRects:Ljava/util/ArrayList;

    .line 1215
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->exclustionRect:Landroid/graphics/Rect;

    .line 4848
    new-instance v4, Lorg/telegram/ui/Components/ChatAttachAlert$31;

    const-string v5, "openProgress"

    invoke-direct {v4, v12, v5}, Lorg/telegram/ui/Components/ChatAttachAlert$31;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Ljava/lang/String;)V

    iput-object v4, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->ATTACH_ALERT_PROGRESS:Landroid/util/Property;

    .line 5796
    iput-boolean v1, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->allowDrawContent:Z

    .line 5797
    iput-boolean v11, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->sent:Z

    .line 6261
    iput-boolean v11, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->confirmationAlertShown:Z

    .line 6262
    iput-boolean v11, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->allowPassConfirmationAlert:Z

    .line 6552
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->iBlur3Positions:Ljava/util/ArrayList;

    .line 6553
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    iput-object v5, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->iBlur3PositionActionBar:Landroid/graphics/RectF;

    .line 6554
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->iBlur3PositionMainTabs:Landroid/graphics/RectF;

    .line 6555
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->iBlur3PositionFastScroll:Landroid/graphics/RectF;

    .line 6557
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6558
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6559
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6562
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->iBlur3PositionsMerged:Ljava/util/ArrayList;

    .line 1226
    iput-boolean v1, v12, Lorg/telegram/ui/ActionBar/BottomSheet;->occupyNavigationBarWithoutKeyboard:Z

    .line 1228
    instance-of v0, v8, Lorg/telegram/ui/ChatActivity;

    const/4 v3, 0x4

    if-eqz v0, :cond_0

    .line 1229
    invoke-virtual {v12, v11, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->setImageReceiverNumLevel(II)V

    .line 1232
    :cond_0
    new-instance v4, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceColor;

    invoke-direct {v4}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceColor;-><init>()V

    iput-object v4, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->iBlur3SourceColor:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceColor;

    .line 1233
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v12, v5}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceColor;->setColor(I)V

    .line 1234
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1f

    const/high16 v17, 0x40000

    const/4 v14, 0x0

    if-lt v5, v3, :cond_1

    .line 1235
    new-instance v3, Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;

    invoke-direct {v3}, Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;-><init>()V

    iput-object v3, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->scrollableViewNoiseSuppressor:Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;

    .line 1236
    new-instance v3, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    invoke-direct {v3, v14}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;-><init>(Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSource;)V

    iput-object v3, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->iBlur3SourceGlass:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    .line 1237
    new-instance v5, Lorg/telegram/ui/Components/ChatAttachAlert$3;

    invoke-direct {v5, v12}, Lorg/telegram/ui/Components/ChatAttachAlert$3;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;->setupRenderer(Lorg/telegram/ui/Components/blur3/RenderNodeWithHash$Renderer;)V

    .line 1253
    new-instance v5, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    invoke-direct {v5, v14}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;-><init>(Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSource;)V

    iput-object v5, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->iBlur3SourceGlassFrosted:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    .line 1254
    new-instance v15, Lorg/telegram/ui/Components/ChatAttachAlert$4;

    invoke-direct {v15, v12}, Lorg/telegram/ui/Components/ChatAttachAlert$4;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v5, v15}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;->setupRenderer(Lorg/telegram/ui/Components/blur3/RenderNodeWithHash$Renderer;)V

    .line 1270
    new-instance v15, Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;

    invoke-direct {v15, v3}, Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;-><init>(Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSource;)V

    iput-object v15, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->iBlur3FactoryLiquidGlass:Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;

    .line 1271
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result v3

    invoke-virtual {v15, v3}, Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;->setLiquidGlassEffectAllowed(Z)V

    .line 1272
    new-instance v3, Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;

    invoke-direct {v3, v5}, Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;-><init>(Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSource;)V

    iput-object v3, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->iBlur3FactoryFrostedLiquidGlass:Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;

    .line 1273
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result v5

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;->setLiquidGlassEffectAllowed(Z)V

    goto :goto_0

    .line 1275
    :cond_1
    iput-object v14, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->scrollableViewNoiseSuppressor:Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;

    .line 1276
    iput-object v14, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->iBlur3SourceGlassFrosted:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    .line 1277
    iput-object v14, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->iBlur3SourceGlass:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    .line 1278
    new-instance v3, Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;

    invoke-direct {v3, v4}, Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;-><init>(Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSource;)V

    iput-object v3, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->iBlur3FactoryLiquidGlass:Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;

    .line 1279
    new-instance v3, Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;

    invoke-direct {v3, v4}, Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;-><init>(Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSource;)V

    iput-object v3, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->iBlur3FactoryFrostedLiquidGlass:Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;

    .line 1281
    :goto_0
    new-instance v15, Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;

    invoke-direct {v15, v4}, Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;-><init>(Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSource;)V

    iput-object v15, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->iBlur3FactoryFade:Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;

    .line 1283
    new-instance v3, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda22;

    invoke-direct {v3, v12}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    iput-object v3, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->iBlur3Capture:Lorg/telegram/ui/Components/blur3/capture/IBlur3Capture;

    .line 1299
    iput-boolean v7, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->forceDarkTheme:Z

    .line 1300
    iput-boolean v9, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->showingFromDialog:Z

    if-eqz v0, :cond_2

    .line 1302
    invoke-virtual {v8}, Lorg/telegram/ui/ActionBar/BaseFragment;->isInBubbleMode()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v11

    :goto_1
    iput-boolean v0, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->inBubbleMode:Z

    .line 1303
    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    const v3, 0x3f333333    # 0.7f

    invoke-direct {v0, v3}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    iput-object v0, v12, Lorg/telegram/ui/ActionBar/BottomSheet;->openInterpolator:Landroid/view/animation/Interpolator;

    .line 1304
    iput-object v8, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 1305
    iput-boolean v1, v12, Lorg/telegram/ui/ActionBar/BottomSheet;->useSmoothKeyboard:Z

    .line 1306
    invoke-virtual {v12, v12}, Lorg/telegram/ui/ActionBar/BottomSheet;->setDelegate(Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetDelegateInterface;)V

    .line 1307
    invoke-static {v2}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/NotificationCenter;->reloadInlineHints:I

    invoke-virtual {v0, v12, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1308
    invoke-static {v2}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/NotificationCenter;->attachMenuBotsDidLoad:I

    invoke-virtual {v0, v12, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1309
    invoke-static {v2}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/NotificationCenter;->currentUserPremiumStatusChanged:I

    invoke-virtual {v0, v12, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1310
    invoke-static {v2}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/NotificationCenter;->quickRepliesUpdated:I

    invoke-virtual {v0, v12, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1311
    iget-object v0, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->exclusionRects:Ljava/util/ArrayList;

    iget-object v3, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->exclustionRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1313
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlert$5;

    invoke-direct {v0, v12, v6, v10}, Lorg/telegram/ui/Components/ChatAttachAlert$5;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    .line 2127
    new-instance v3, Lorg/telegram/ui/Components/ChatAttachAlert$6;

    invoke-direct {v3, v12}, Lorg/telegram/ui/Components/ChatAttachAlert$6;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->setDelegate(Lorg/telegram/ui/Components/SizeNotifierFrameLayout$SizeNotifierFrameLayoutDelegate;)V

    .line 2135
    iget-object v0, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iput-object v0, v12, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    .line 2136
    invoke-virtual {v0, v11}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 2137
    iget-object v0, v12, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 2138
    iget-object v0, v12, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 2139
    iget-object v0, v12, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget v3, v12, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    invoke-virtual {v0, v3, v11, v3, v11}, Landroid/view/View;->setPadding(IIII)V

    .line 2141
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlert$7;

    invoke-direct {v0, v12, v6, v10}, Lorg/telegram/ui/Components/ChatAttachAlert$7;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 2165
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-virtual {v12, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 2166
    iget-object v0, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v3, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 2167
    iget-object v0, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-virtual {v12, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v0, v4, v11}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    .line 2168
    iget-object v0, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_dialogButtonSelector:I

    invoke-virtual {v12, v4}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v5

    invoke-virtual {v0, v5, v11}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    .line 2169
    iget-object v0, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v12, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v5

    invoke-virtual {v0, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleColor(I)V

    .line 2170
    iget-object v0, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setOccupyStatusBar(Z)V

    .line 2171
    iget-object v0, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v13}, Landroid/view/View;->setAlpha(F)V

    .line 2172
    iget-object v0, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v5, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v0, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setDrawBlurBackground(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)V

    .line 2173
    iget-object v0, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v5, Lorg/telegram/ui/Components/ChatAttachAlert$8;

    invoke-direct {v5, v12}, Lorg/telegram/ui/Components/ChatAttachAlert$8;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v0, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 2187
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move v5, v4

    invoke-virtual {v12, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v4

    move/from16 v18, v5

    const/4 v5, 0x0

    move/from16 v19, v2

    const/4 v2, 0x0

    move/from16 v20, v3

    const/4 v3, 0x0

    move-object v1, v6

    move-object v6, v10

    move/from16 v10, v18

    move/from16 v14, v20

    const/4 v13, 0x4

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBarMenu;IIZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 2188
    invoke-virtual {v0, v11}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setLongClickEnabled(Z)V

    .line 2189
    iget-object v0, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_other:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    .line 2190
    iget-object v0, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v1, Lorg/telegram/messenger/R$string;->AccDescrMoreOptions:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2191
    iget-object v0, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0, v13}, Landroid/view/View;->setVisibility(I)V

    .line 2192
    iget-object v0, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setAlpha(F)V

    .line 2193
    iget-object v0, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 2194
    iget-object v0, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 2195
    iget-object v0, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setSubMenuOpenSide(I)V

    .line 2196
    iget-object v0, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda23;

    invoke-direct {v1, v12}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setDelegate(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemDelegate;)V

    .line 2197
    iget-object v0, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/high16 v1, 0x42900000    # 72.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setAdditionalYOffset(I)V

    .line 2198
    iget-object v0, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setTranslationX(F)V

    .line 2199
    iget-object v0, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v12, v10}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v1

    const/4 v2, 0x6

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2200
    iget-object v0, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda24;

    invoke-direct {v1, v12}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda24;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2202
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueHeader:I

    invoke-virtual {v12, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v4

    const/4 v5, 0x1

    const/4 v2, 0x0

    move-object/from16 v1, p1

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBarMenu;IIZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 2203
    invoke-virtual {v0, v11}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setLongClickEnabled(Z)V

    .line 2204
    iget-object v0, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v1, Lorg/telegram/messenger/R$string;->Create:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setText(Ljava/lang/CharSequence;)V

    .line 2205
    iget-object v0, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0, v13}, Landroid/view/View;->setVisibility(I)V

    .line 2206
    iget-object v0, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setAlpha(F)V

    .line 2207
    iget-object v0, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/high16 v18, 0x41400000    # 12.0f

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setTranslationX(F)V

    .line 2208
    iget-object v0, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v12, v10}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v1

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2209
    iget-object v0, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda25;

    invoke-direct {v1, v12}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda25;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2214
    invoke-virtual {v12}, Lorg/telegram/ui/Components/ChatAttachAlert;->updateDoneItemEnabled()V

    if-eqz v8, :cond_3

    .line 2217
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v12, v14}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v4

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v1, p1

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBarMenu;IIZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 2218
    invoke-virtual {v0, v11}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setLongClickEnabled(Z)V

    .line 2219
    iget-object v0, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v1, Lorg/telegram/messenger/R$drawable;->outline_header_search:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    .line 2220
    iget-object v0, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v1, Lorg/telegram/messenger/R$string;->Search:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2221
    iget-object v0, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0, v13}, Landroid/view/View;->setVisibility(I)V

    .line 2222
    iget-object v0, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setAlpha(F)V

    .line 2223
    iget-object v0, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/high16 v1, 0x42280000    # 42.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setTranslationX(F)V

    .line 2224
    iget-object v0, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v12, v10}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v1

    const/4 v2, 0x6

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2225
    iget-object v0, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda26;

    invoke-direct {v1, v12, v9}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda26;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Z)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2295
    :cond_3
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v12, v14}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v4

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v1, p1

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBarMenu;IIZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->optionsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 2296
    invoke-virtual {v0, v11}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setLongClickEnabled(Z)V

    .line 2297
    iget-object v0, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->optionsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v2, Lorg/telegram/messenger/R$drawable;->ic_ab_other:I

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    .line 2298
    iget-object v0, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->optionsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v2, Lorg/telegram/messenger/R$string;->AccDescrMoreOptions:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2299
    iget-object v0, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->optionsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2300
    iget-object v0, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->optionsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v12, v10}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v2

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2301
    iget-object v0, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->optionsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_addbot:I

    sget v3, Lorg/telegram/messenger/R$string;->StickerCreateEmpty:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda27;

    invoke-direct {v2, v12, v6}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda27;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2353
    iget-object v0, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->optionsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/high16 v2, -0x3ec00000    # -12.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setMenuYOffset(I)V

    .line 2354
    iget-object v0, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->optionsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setAdditionalXOffset(I)V

    .line 2355
    iget-object v0, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->optionsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda28;

    invoke-direct {v2, v12}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda28;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2359
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlert$11;

    invoke-direct {v0, v12, v1}, Lorg/telegram/ui/Components/ChatAttachAlert$11;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;)V

    iput-object v0, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->headerView:Landroid/widget/FrameLayout;

    .line 2383
    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda29;

    invoke-direct {v2, v12}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda29;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2386
    iget-object v0, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->headerView:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 2387
    iget-object v0, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->headerView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v13}, Landroid/view/View;->setVisibility(I)V

    .line 2389
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedView:Landroid/widget/LinearLayout;

    .line 2390
    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2391
    iget-object v0, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedView:Landroid/widget/LinearLayout;

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 2393
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedTextView:Landroid/widget/TextView;

    .line 2394
    invoke-virtual {v12, v14}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2395
    iget-object v0, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedTextView:Landroid/widget/TextView;

    const/high16 v9, 0x41800000    # 16.0f

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2396
    iget-object v0, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedTextView:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2397
    iget-object v0, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedTextView:Landroid/widget/TextView;

    const/16 v3, 0x13

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 2398
    iget-object v0, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 2399
    iget-object v0, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedTextView:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 2400
    iget-object v0, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedView:Landroid/widget/LinearLayout;

    iget-object v3, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedTextView:Landroid/widget/TextView;

    const/4 v10, -0x2

    invoke-static {v10, v10, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2402
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedArrowImageView:Landroid/widget/ImageView;

    .line 2403
    invoke-virtual {v12}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/R$drawable;->attach_arrow_right:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2404
    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v12, v14}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 2405
    iget-object v3, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedArrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2406
    iget-object v0, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedArrowImageView:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2407
    iget-object v0, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedView:Landroid/widget/LinearLayout;

    iget-object v3, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedArrowImageView:Landroid/widget/ImageView;

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v23, -0x2

    const/16 v24, -0x2

    const/16 v25, 0x10

    const/16 v26, 0x4

    const/16 v27, 0x1

    invoke-static/range {v23 .. v29}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2408
    iget-object v0, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedView:Landroid/widget/LinearLayout;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 2409
    iget-object v0, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->headerView:Landroid/widget/FrameLayout;

    iget-object v4, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedView:Landroid/widget/LinearLayout;

    const/high16 v13, -0x40800000    # -1.0f

    invoke-static {v10, v13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2411
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->mediaPreviewView:Landroid/widget/LinearLayout;

    .line 2412
    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2413
    iget-object v0, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->mediaPreviewView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 2415
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 2416
    invoke-virtual {v12}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$drawable;->attach_arrow_left:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 2417
    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    move/from16 v23, v11

    invoke-virtual {v12, v14}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v11

    invoke-direct {v4, v11, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 2418
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2420
    iget-object v3, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->mediaPreviewView:Landroid/widget/LinearLayout;

    const/16 v29, 0x4

    const/16 v30, 0x0

    const/16 v25, -0x2

    const/16 v26, 0x10

    const/16 v27, 0x0

    const/16 v28, 0x1

    invoke-static/range {v24 .. v30}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2422
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->mediaPreviewTextView:Landroid/widget/TextView;

    .line 2423
    invoke-virtual {v12, v14}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2424
    iget-object v0, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->mediaPreviewTextView:Landroid/widget/TextView;

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2425
    iget-object v0, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->mediaPreviewTextView:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2426
    iget-object v0, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->mediaPreviewTextView:Landroid/widget/TextView;

    const/16 v3, 0x13

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 2427
    iget-object v0, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->mediaPreviewTextView:Landroid/widget/TextView;

    const-string v3, "AttachMediaPreview"

    sget v4, Lorg/telegram/messenger/R$string;->AttachMediaPreview:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2428
    iget-object v0, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->mediaPreviewView:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 2430
    iget-object v0, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->mediaPreviewView:Landroid/widget/LinearLayout;

    iget-object v3, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->mediaPreviewTextView:Landroid/widget/TextView;

    invoke-static {v10, v10, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2432
    iget-object v0, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->headerView:Landroid/widget/FrameLayout;

    iget-object v2, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->mediaPreviewView:Landroid/widget/LinearLayout;

    invoke-static {v10, v13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2434
    iget-object v11, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->layouts:[Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    move/from16 v4, p5

    move-object v2, v1

    move-object v5, v6

    move v3, v7

    move-object v1, v12

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    move-object v7, v5

    iput-object v0, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    aput-object v0, v11, v23

    const/4 v3, 0x0

    .line 2435
    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 2436
    iget-object v0, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iput-object v0, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    const-wide/16 v3, 0x1

    .line 2437
    iput-wide v3, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedId:J

    .line 2439
    iget-object v3, v2, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    const/4 v11, -0x1

    invoke-static {v11, v13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2441
    iget-object v0, v2, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v3, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->headerView:Landroid/widget/FrameLayout;

    const/high16 v29, 0x41400000    # 12.0f

    const/16 v30, 0x0

    const/16 v24, -0x1

    const/high16 v25, -0x40000000    # -2.0f

    const/16 v26, 0x33

    const/high16 v27, 0x41b80000    # 23.0f

    const/16 v28, 0x0

    invoke-static/range {v24 .. v30}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2442
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlert$12;

    invoke-direct {v0, v2, v1}, Lorg/telegram/ui/Components/ChatAttachAlert$12;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;)V

    iput-object v0, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->topCommentContainer:Landroid/widget/FrameLayout;

    .line 2464
    iget-object v3, v2, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    const/16 v4, 0x37

    invoke-static {v11, v10, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2465
    iget-object v0, v2, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v3, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/high16 v4, -0x40000000    # -2.0f

    invoke-static {v11, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2466
    iget-object v0, v2, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v3, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v4, 0x30

    const/16 v5, 0x35

    invoke-static {v4, v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v0, v3, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2467
    iget-object v0, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v0, :cond_4

    .line 2468
    iget-object v3, v2, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-static {v4, v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v3, v0, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2470
    :cond_4
    iget-object v0, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->optionsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v0, :cond_5

    .line 2471
    iget-object v3, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->headerView:Landroid/widget/FrameLayout;

    const/16 v29, 0x0

    const/high16 v30, 0x41000000    # 8.0f

    const/16 v24, 0x20

    const/high16 v25, 0x42000000    # 32.0f

    const/16 v26, 0x15

    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-static/range {v24 .. v30}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v3, v0, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2473
    :cond_5
    iget-object v0, v2, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v3, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-static {v10, v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2475
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBarShadow:Landroid/view/View;

    const/4 v3, 0x0

    .line 2476
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 2477
    iget-object v0, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBarShadow:Landroid/view/View;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_dialogShadowLine:I

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2478
    iget-object v0, v2, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v3, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBarShadow:Landroid/view/View;

    invoke-static {v11, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2480
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlert$13;

    invoke-direct {v0, v2, v1}, Lorg/telegram/ui/Components/ChatAttachAlert$13;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;)V

    iput-object v0, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerViewWrapper:Landroid/widget/FrameLayout;

    .line 2494
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlert$14;

    invoke-direct {v0, v2, v1}, Lorg/telegram/ui/Components/ChatAttachAlert$14;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;)V

    iput-object v0, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, 0x1

    .line 2588
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 2589
    iget-object v0, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    move/from16 v3, v23

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 2590
    iget-object v0, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v5, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;

    invoke-direct {v5, v2, v1}, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;)V

    iput-object v5, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsAdapter:Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;

    invoke-virtual {v0, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 2591
    iget-object v0, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v5, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v5, v1, v3, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object v5, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 2592
    iget-object v0, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 2593
    iget-object v0, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 2594
    iget-object v0, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 2595
    iget-object v0, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 2596
    iget-object v0, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_dialogScrollGlow:I

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setGlowColor(I)V

    .line 2597
    iget-object v0, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView;->setAdaptiveOverScroll()V

    .line 2599
    iget-object v0, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->iBlur3FactoryLiquidGlass:Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;

    new-instance v3, Lorg/telegram/ui/Components/chat/ViewPositionWatcher;

    iget-object v5, v2, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-direct {v3, v5}, Lorg/telegram/ui/Components/chat/ViewPositionWatcher;-><init>(Landroid/view/View;)V

    iget-object v5, v2, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3, v5}, Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;->setSourceRootView(Lorg/telegram/ui/Components/chat/ViewPositionWatcher;Landroid/view/ViewGroup;)V

    .line 2600
    iget-object v0, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->iBlur3FactoryFrostedLiquidGlass:Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;

    new-instance v3, Lorg/telegram/ui/Components/chat/ViewPositionWatcher;

    iget-object v5, v2, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-direct {v3, v5}, Lorg/telegram/ui/Components/chat/ViewPositionWatcher;-><init>(Landroid/view/View;)V

    iget-object v5, v2, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3, v5}, Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;->setSourceRootView(Lorg/telegram/ui/Components/chat/ViewPositionWatcher;Landroid/view/ViewGroup;)V

    .line 2601
    new-instance v0, Lorg/telegram/ui/Components/chat/ViewPositionWatcher;

    iget-object v3, v2, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/chat/ViewPositionWatcher;-><init>(Landroid/view/View;)V

    iget-object v3, v2, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v15, v0, v3}, Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;->setSourceRootView(Lorg/telegram/ui/Components/chat/ViewPositionWatcher;Landroid/view/ViewGroup;)V

    .line 2603
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlert$15;

    invoke-direct {v0, v2, v1}, Lorg/telegram/ui/Components/ChatAttachAlert$15;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;)V

    iput-object v0, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->bottomFadeView:Landroid/view/View;

    .line 2617
    new-instance v0, Lorg/telegram/ui/Components/blur3/BlurredBackgroundWithFadeDrawable;

    iget-object v3, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->bottomFadeView:Landroid/view/View;

    const/4 v5, 0x0

    .line 2618
    invoke-virtual {v15, v3, v5}, Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;->create(Landroid/view/View;Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProvider;)Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/blur3/BlurredBackgroundWithFadeDrawable;-><init>(Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;)V

    iput-object v0, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->bottomFadeDrawable:Lorg/telegram/ui/Components/blur3/BlurredBackgroundWithFadeDrawable;

    .line 2619
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->chatBlurEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    .line 2620
    :cond_6
    iget-object v0, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->bottomFadeDrawable:Lorg/telegram/ui/Components/blur3/BlurredBackgroundWithFadeDrawable;

    const/high16 v3, 0x42900000    # 72.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/4 v5, 0x1

    invoke-virtual {v0, v3, v5}, Lorg/telegram/ui/Components/blur3/BlurredBackgroundWithFadeDrawable;->setFadeHeight(IZ)V

    .line 2623
    iget-object v0, v2, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v3, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->bottomFadeView:Landroid/view/View;

    invoke-static {}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameMatchParent()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2625
    iget-object v0, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->iBlur3FactoryLiquidGlass:Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;

    iget-object v3, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerViewWrapper:Landroid/widget/FrameLayout;

    invoke-static {v7}, Lorg/telegram/ui/Components/blur3/drawable/color/impl/BlurredBackgroundProviderImpl;->mainTabs(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProvider;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;->create(Landroid/view/View;Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProvider;)Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    move-result-object v0

    const/high16 v3, 0x41e00000    # 28.0f

    .line 2626
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->setRadius(F)Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    const/high16 v12, 0x40e00000    # 7.0f

    .line 2627
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->setPadding(I)Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    .line 2628
    iget-object v3, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerViewWrapper:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2629
    iget-object v0, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    const/high16 v14, 0x41300000    # 11.0f

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    invoke-virtual {v0, v3, v5, v6, v15}, Landroid/view/View;->setPadding(IIII)V

    .line 2630
    iget-object v0, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/view/View;->setClipToOutline(Z)V

    .line 2631
    iget-object v0, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/high16 v6, 0x41e00000    # 28.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    invoke-static {v5, v6}, Lorg/telegram/messenger/utils/ViewOutlineProviderImpl;->boundsWithPaddingRoundRect(IF)Landroid/view/ViewOutlineProvider;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 2633
    iget-object v0, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 2634
    iget-object v0, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/view/View;->setOverScrollMode(I)V

    .line 2635
    iget-object v0, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerViewWrapper:Landroid/widget/FrameLayout;

    iget-object v3, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameMatchParent()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2636
    iget-object v0, v2, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v3, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerViewWrapper:Landroid/widget/FrameLayout;

    const/16 v5, 0x46

    const/16 v6, 0x53

    invoke-static {v11, v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2637
    iget-object v0, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda30;

    invoke-direct {v3, v2, v7}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda30;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 2786
    iget-object v0, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda13;

    invoke-direct {v3, v2}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;)V

    .line 2798
    new-instance v0, Lorg/telegram/ui/Components/AnimatedTextView;

    const/4 v3, 0x0

    const/4 v5, 0x1

    invoke-direct {v0, v1, v5, v3, v5}, Lorg/telegram/ui/Components/AnimatedTextView;-><init>(Landroid/content/Context;ZZZ)V

    iput-object v0, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->botMainButtonTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/16 v3, 0x8

    .line 2799
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2800
    iget-object v0, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->botMainButtonTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 2801
    iget-object v0, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->botMainButtonTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/16 v3, 0x11

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/AnimatedTextView;->setGravity(I)V

    .line 2802
    iget-object v0, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->botMainButtonTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/AnimatedTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2803
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    .line 2804
    iget-object v3, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->botMainButtonTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5, v0, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 2805
    iget-object v0, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->botMainButtonTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/high16 v3, 0x41600000    # 14.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextSize(F)V

    .line 2806
    iget-object v0, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->botMainButtonTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    new-instance v3, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda14;

    invoke-direct {v3, v2}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2814
    iget-object v0, v2, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v3, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->botMainButtonTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-static {v11, v4, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2816
    new-instance v0, Lorg/telegram/ui/Components/RadialProgressView;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/RadialProgressView;-><init>(Landroid/content/Context;)V

    iput-object v0, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->botProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/high16 v3, 0x41900000    # 18.0f

    .line 2817
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/RadialProgressView;->setSize(I)V

    .line 2818
    iget-object v0, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->botProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/RadialProgressView;->setAlpha(F)V

    .line 2819
    iget-object v0, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->botProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    const v3, 0x3dcccccd    # 0.1f

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleX(F)V

    .line 2820
    iget-object v0, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->botProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleY(F)V

    .line 2821
    iget-object v0, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->botProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2822
    iget-object v0, v2, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v3, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->botProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/high16 v29, 0x41200000    # 10.0f

    const/high16 v30, 0x41200000    # 10.0f

    const/16 v24, 0x1c

    const/high16 v25, 0x41e00000    # 28.0f

    const/16 v26, 0x55

    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-static/range {v24 .. v30}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2824
    new-instance v0, Lorg/telegram/ui/Components/FragmentFloatingButton;

    invoke-direct {v0, v1, v7}, Lorg/telegram/ui/Components/FragmentFloatingButton;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraFloatingButton:Lorg/telegram/ui/Components/FragmentFloatingButton;

    .line 2825
    sget v3, Lorg/telegram/messenger/R$drawable;->camera:I

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/FragmentFloatingButton;->setImageResource(I)V

    .line 2826
    new-instance v3, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda15;

    invoke-direct {v3, v2}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2832
    new-instance v3, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda16;

    invoke-direct {v3, v2}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 2838
    invoke-static {}, Lorg/telegram/ui/Components/FragmentFloatingButton;->createDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    .line 2839
    iget v4, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    const/high16 v5, 0x428c0000    # 70.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 2840
    iget-object v4, v2, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2842
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->moveCaptionButton:Landroid/widget/ImageView;

    .line 2843
    sget-object v9, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 2844
    iget-object v0, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->moveCaptionButton:Landroid/widget/ImageView;

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v4

    sget-object v15, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v15}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 2845
    iget-object v0, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->moveCaptionButton:Landroid/widget/ImageView;

    sget v3, Lorg/telegram/messenger/R$drawable;->menu_link_above:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2846
    iget-object v0, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->moveCaptionButton:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2847
    iget-object v0, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->moveCaptionButton:Landroid/widget/ImageView;

    new-instance v3, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda17;

    invoke-direct {v3, v2}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2855
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlert$16;

    invoke-direct {v0, v2, v1}, Lorg/telegram/ui/Components/ChatAttachAlert$16;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;)V

    iput-object v0, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->frameLayout2:Landroid/widget/FrameLayout;

    .line 2895
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlert$17;

    invoke-direct {v0, v2, v1}, Lorg/telegram/ui/Components/ChatAttachAlert$17;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;)V

    iput-object v0, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->captionContainer:Landroid/widget/FrameLayout;

    .line 2925
    iget-object v3, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->frameLayout2:Landroid/widget/FrameLayout;

    const/16 v4, 0x77

    invoke-static {v11, v11, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2927
    iget-object v0, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->iBlur3FactoryFrostedLiquidGlass:Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;

    iget-object v3, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v7}, Lorg/telegram/ui/Components/blur3/drawable/color/impl/BlurredBackgroundProviderImpl;->inputFieldDialogActivity(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProvider;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;->create(Landroid/view/View;Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProvider;)Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    move-result-object v0

    iput-object v0, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->emojiViewChildBg:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    .line 2928
    invoke-virtual {v0}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->enableInAppKeyboardOptimization()V

    .line 2929
    iget-object v0, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->emojiViewChildBg:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    const/high16 v3, 0x41e80000    # 29.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x41e80000    # 29.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5, v5}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->setRadius(FFFF)V

    .line 2930
    iget-object v0, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->emojiViewChildBg:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    const/high16 v3, 0x42000000    # 32.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->setThickness(I)V

    .line 2931
    iget-object v0, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->emojiViewChildBg:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    const v3, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->setIntensity(F)V

    .line 2933
    iget-object v0, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->iBlur3FactoryLiquidGlass:Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;

    iget-object v3, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->captionContainer:Landroid/widget/FrameLayout;

    invoke-static {v7}, Lorg/telegram/ui/Components/blur3/drawable/color/impl/BlurredBackgroundProviderImpl;->inputFieldDialogActivity(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProvider;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;->create(Landroid/view/View;Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProvider;)Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    move-result-object v0

    iput-object v0, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->captionContainerBg:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    const/high16 v3, 0x41b00000    # 22.0f

    .line 2934
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->setRadius(F)Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    .line 2935
    iget-object v0, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->captionContainerBg:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->setPadding(I)Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    .line 2936
    iget-object v0, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->captionContainer:Landroid/widget/FrameLayout;

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/high16 v16, 0x40a00000    # 5.0f

    move/from16 p4, v12

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    invoke-virtual {v0, v3, v4, v5, v12}, Landroid/view/View;->setPadding(IIII)V

    .line 2938
    iget-object v0, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->frameLayout2:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 2939
    iget-object v0, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->frameLayout2:Landroid/widget/FrameLayout;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2940
    iget-object v0, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->frameLayout2:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 2941
    iget-object v0, v2, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v3, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->frameLayout2:Landroid/widget/FrameLayout;

    invoke-static {v11, v10, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2942
    iget-object v0, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->frameLayout2:Landroid/widget/FrameLayout;

    new-instance v3, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda18;

    invoke-direct {v3}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda18;-><init>()V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2944
    new-instance v0, Lorg/telegram/ui/Components/NumberTextView;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/NumberTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->captionLimitView:Lorg/telegram/ui/Components/NumberTextView;

    const/16 v3, 0x8

    .line 2945
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    const/16 v3, 0xf

    .line 2946
    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/NumberTextView;->setTextSize(I)V

    .line 2947
    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    invoke-virtual {v2, v12}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/NumberTextView;->setTextColor(I)V

    .line 2948
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/NumberTextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/4 v4, 0x1

    .line 2949
    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/NumberTextView;->setCenterAlign(Z)V

    .line 2950
    iget-object v3, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->captionContainer:Landroid/widget/FrameLayout;

    const/high16 v29, 0x41600000    # 14.0f

    const/high16 v30, 0x429c0000    # 78.0f

    const/16 v24, 0x38

    const/high16 v25, 0x41a00000    # 20.0f

    const/high16 v27, 0x40400000    # 3.0f

    invoke-static/range {v24 .. v30}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2952
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getCaptionMaxLengthLimit()I

    move-result v0

    iput v0, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->currentLimit:I

    .line 2954
    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static/range {v19 .. v19}, Lcom/exteragram/messenger/utils/text/LocaleUtils;->canUseLocalPremiumEmojis(I)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_2

    :cond_7
    const/4 v6, 0x0

    goto :goto_3

    :cond_8
    :goto_2
    const/4 v6, 0x1

    .line 2955
    :goto_3
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlert$18;

    iget-object v3, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v31, v2

    move-object v2, v1

    move-object/from16 v1, v31

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Components/ChatAttachAlert$18;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Lorg/telegram/ui/ActionBar/BaseFragment;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    move-object v2, v1

    iput-object v0, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    const/4 v4, 0x1

    .line 3058
    iput-boolean v4, v0, Lorg/telegram/ui/Components/EditTextEmoji;->includeNavigationBar:Z

    .line 3059
    invoke-static/range {v19 .. v19}, Lcom/exteragram/messenger/utils/text/LocaleUtils;->canUseLocalPremiumEmojis(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextEmoji;->allowEmojisForNonPremium(Z)V

    .line 3060
    iget-object v0, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    const-string v1, "AddCaption"

    sget v3, Lorg/telegram/messenger/R$string;->AddCaption:I

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextEmoji;->setHint(Ljava/lang/CharSequence;)V

    .line 3061
    iget-object v0, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->onResume()V

    .line 3062
    iget-object v0, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    const/high16 v29, 0x42100000    # 36.0f

    const/16 v30, 0x0

    const/16 v24, -0x1

    const/high16 v25, -0x40800000    # -1.0f

    const/16 v26, 0x13

    const/high16 v27, 0x42400000    # 48.0f

    const/16 v28, 0x0

    invoke-static/range {v24 .. v30}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3063
    iget-object v0, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlert$19;

    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/ChatAttachAlert$19;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 3150
    iget-object v0, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->captionContainer:Landroid/widget/FrameLayout;

    iget-object v1, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    const/high16 v29, 0x42a80000    # 84.0f

    const/high16 v25, -0x40000000    # -2.0f

    const/16 v26, 0x53

    const/16 v27, 0x0

    invoke-static/range {v24 .. v30}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3151
    iget-object v0, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->captionContainer:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 3152
    iget-object v0, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->frameLayout2:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 3153
    iget-object v0, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 3155
    iget-object v0, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->topCommentContainer:Landroid/widget/FrameLayout;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 3156
    iget-object v0, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->topCommentContainer:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 3157
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlert$20;

    iget-object v3, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v7, p6

    move-object v1, v2

    move-object/from16 v2, p1

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Components/ChatAttachAlert$20;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Lorg/telegram/ui/ActionBar/BaseFragment;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    move-object v6, v7

    iput-object v0, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->topCommentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    const/4 v4, 0x1

    .line 3203
    iput-boolean v4, v0, Lorg/telegram/ui/Components/EditTextEmoji;->includeNavigationBar:Z

    .line 3204
    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    new-instance v3, Lorg/telegram/ui/Components/ChatAttachAlert$21;

    invoke-direct {v3, v2, v8}, Lorg/telegram/ui/Components/ChatAttachAlert$21;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 3291
    iget-object v0, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->topCommentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-static/range {v19 .. v19}, Lcom/exteragram/messenger/utils/text/LocaleUtils;->canUseLocalPremiumEmojis(I)Z

    move-result v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/EditTextEmoji;->allowEmojisForNonPremium(Z)V

    .line 3292
    iget-object v0, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->topCommentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    const/high16 v3, 0x41100000    # 9.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/4 v7, 0x0

    invoke-virtual {v0, v7, v4, v7, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 3293
    iget-object v0, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->topCommentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    const/high16 v29, 0x42c00000    # 96.0f

    const/high16 v25, -0x40800000    # -1.0f

    const/16 v26, 0x13

    const/high16 v27, 0x42400000    # 48.0f

    invoke-static/range {v24 .. v30}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3294
    iget-object v0, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->topCommentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    const/high16 v4, 0x41880000    # 17.0f

    const/4 v5, 0x1

    invoke-virtual {v0, v5, v4}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTextSize(IF)V

    .line 3295
    iget-object v0, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->topCommentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEmojiButton()Landroid/view/View;

    move-result-object v0

    const/16 v29, 0x0

    const/16 v24, 0x28

    const/high16 v25, 0x42200000    # 40.0f

    const/16 v26, 0x53

    const/16 v27, 0x0

    invoke-static/range {v24 .. v30}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3296
    iget-object v0, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->topCommentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    const-string v4, "AddCaption"

    sget v5, Lorg/telegram/messenger/R$string;->AddCaption:I

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/EditTextEmoji;->setHint(Ljava/lang/CharSequence;)V

    .line 3297
    iget-object v0, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->topCommentContainer:Landroid/widget/FrameLayout;

    iget-object v4, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->topCommentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    const/16 v5, 0x77

    invoke-static {v11, v10, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3298
    iget-object v0, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->topCommentContainer:Landroid/widget/FrameLayout;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/view/View;->setAlpha(F)V

    .line 3299
    iget-object v0, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->topCommentContainer:Landroid/widget/FrameLayout;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 3301
    iget-object v0, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    iget-object v4, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->moveCaptionButton:Landroid/widget/ImageView;

    const/high16 v30, 0x40800000    # 4.0f

    const/16 v26, 0x55

    invoke-static/range {v24 .. v30}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3303
    iget-object v0, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->iBlur3FactoryLiquidGlass:Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;

    iget-object v4, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->topCommentContainer:Landroid/widget/FrameLayout;

    invoke-static {v6}, Lorg/telegram/ui/Components/blur3/drawable/color/impl/BlurredBackgroundProviderImpl;->inputFieldDialogActivity(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProvider;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;->create(Landroid/view/View;Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProvider;)Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    move-result-object v0

    const/high16 v4, 0x41b00000    # 22.0f

    .line 3304
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->setRadius(F)Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    .line 3305
    invoke-static/range {p4 .. p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->setPadding(I)Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    .line 3306
    iget-object v4, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->topCommentContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 3307
    iget-object v0, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->topCommentContainer:Landroid/widget/FrameLayout;

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v0, v4, v5, v7, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 3310
    new-instance v0, Lorg/telegram/ui/Components/NumberTextView;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/NumberTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->topCaptionLimitView:Lorg/telegram/ui/Components/NumberTextView;

    const/16 v3, 0x8

    .line 3311
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    const/16 v3, 0xc

    .line 3312
    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/NumberTextView;->setTextSize(I)V

    .line 3313
    invoke-virtual {v2, v12}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/NumberTextView;->setTextColor(I)V

    .line 3314
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/NumberTextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/4 v4, 0x1

    .line 3315
    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/NumberTextView;->setCenterAlign(Z)V

    .line 3316
    iget-object v3, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->topCommentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    const/high16 v30, 0x42200000    # 40.0f

    const/16 v24, 0x2e

    const/high16 v25, 0x41a00000    # 20.0f

    const/16 v26, 0x35

    const/high16 v27, 0x40400000    # 3.0f

    invoke-static/range {v24 .. v30}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3318
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->topCommentMoveButton:Landroid/widget/ImageView;

    .line 3319
    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 3320
    iget-object v0, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->topCommentMoveButton:Landroid/widget/ImageView;

    sget v3, Lorg/telegram/messenger/R$drawable;->menu_link_below:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3321
    iget-object v0, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->topCommentMoveButton:Landroid/widget/ImageView;

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelIcons:I

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v4

    invoke-direct {v3, v4, v15}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 3322
    iget-object v0, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->topCommentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    iget-object v3, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->topCommentMoveButton:Landroid/widget/ImageView;

    const/high16 v29, 0x42700000    # 60.0f

    const/16 v30, 0x0

    const/16 v24, 0x28

    const/high16 v25, 0x42200000    # 40.0f

    const/16 v26, 0x55

    const/16 v27, 0x0

    invoke-static/range {v24 .. v30}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3323
    iget-object v0, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->topCommentMoveButton:Landroid/widget/ImageView;

    new-instance v3, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda19;

    invoke-direct {v3, v2}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3329
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlert$22;

    invoke-direct {v0, v2, v1}, Lorg/telegram/ui/Components/ChatAttachAlert$22;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;)V

    iput-object v0, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButtonContainer:Landroid/widget/FrameLayout;

    const/4 v4, 0x1

    .line 3345
    invoke-virtual {v0, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 3346
    iget-object v0, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 3347
    iget-object v0, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButtonContainer:Landroid/widget/FrameLayout;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 3348
    iget-object v0, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButtonContainer:Landroid/widget/FrameLayout;

    const v3, 0x3e4ccccd    # 0.2f

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleX(F)V

    .line 3349
    iget-object v0, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleY(F)V

    .line 3350
    iget-object v0, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButtonContainer:Landroid/widget/FrameLayout;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/view/View;->setAlpha(F)V

    .line 3351
    iget-object v0, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButtonContainer:Landroid/widget/FrameLayout;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 3352
    iget-object v0, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 3353
    iget-object v0, v2, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v4, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButtonContainer:Landroid/widget/FrameLayout;

    const/16 v5, 0x32

    const/16 v7, 0x55

    const/16 v9, 0x6e

    invoke-static {v9, v5, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3355
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlert$23;

    sget v4, Lorg/telegram/messenger/R$drawable;->send_extera_24:I

    invoke-direct {v0, v2, v1, v4, v6}, Lorg/telegram/ui/Components/ChatAttachAlert$23;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    const/4 v4, 0x2

    .line 3381
    invoke-virtual {v0, v4}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 3382
    iget-object v0, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButtonContainer:Landroid/widget/FrameLayout;

    iget-object v4, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    const/16 v24, 0x0

    const/high16 v25, 0x3f800000    # 1.0f

    const/16 v19, -0x1

    const/high16 v20, -0x40800000    # -1.0f

    const/16 v21, 0x77

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3383
    iget-object v0, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    iget v4, v2, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    int-to-float v4, v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 3384
    iget-object v0, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    const/high16 v4, 0x42500000    # 52.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/high16 v5, 0x42180000    # 38.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->setCircleSize(II)V

    .line 3385
    iget-object v0, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    invoke-static/range {p4 .. p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40c00000    # 6.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v0, v4, v5}, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->setCirclePadding(FF)V

    .line 3386
    iget-object v0, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    const/4 v4, 0x1

    iput-boolean v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->newCounterPos:Z

    .line 3387
    new-instance v4, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda20;

    invoke-direct {v4, v2, v8, v6}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3436
    iget-object v0, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    new-instance v4, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda21;

    invoke-direct {v4, v2, v1, v6, v8}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 3920
    iget-object v0, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->textPaint:Landroid/text/TextPaint;

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 3921
    iget-object v0, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->textPaint:Landroid/text/TextPaint;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 3923
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlert$26;

    invoke-direct {v0, v2, v1}, Lorg/telegram/ui/Components/ChatAttachAlert$26;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;)V

    iput-object v0, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedCountView:Landroid/view/View;

    const/4 v5, 0x0

    .line 3944
    invoke-virtual {v0, v5}, Landroid/view/View;->setAlpha(F)V

    .line 3945
    iget-object v0, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedCountView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleX(F)V

    .line 3946
    iget-object v0, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedCountView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleY(F)V

    if-eqz p3, :cond_9

    .line 3950
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->checkColors()V

    .line 3951
    iput v11, v2, Lorg/telegram/ui/ActionBar/BottomSheet;->navBarColorKey:I

    .line 3954
    :cond_9
    iget-object v0, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    if-eqz v0, :cond_a

    .line 3955
    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView;->getFastScroll()Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    move-result-object v0

    iget-object v3, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->iBlur3FactoryLiquidGlass:Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;

    invoke-static {v6}, Lorg/telegram/ui/Components/blur3/drawable/color/impl/BlurredBackgroundProviderImpl;->topPanel(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProvider;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->applyBlurDrawables(Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProvider;)V

    .line 3958
    :cond_a
    new-instance v0, Lorg/telegram/ui/Components/PasscodeView;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/PasscodeView;-><init>(Landroid/content/Context;)V

    iput-object v0, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    .line 3959
    iget-object v1, v2, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-static {v11, v13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 184
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 184
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/ChatAttachAlert;I)I
    .locals 0

    .line 184
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/ChatAttachAlert;I)I
    .locals 0

    .line 184
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/ChatAttachAlert;)Z
    .locals 0

    .line 184
    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->keyboardVisible:Z

    return p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 184
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 184
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 184
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 184
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Components/ChatAttachAlert;)Z
    .locals 0

    .line 184
    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->keyboardVisible:Z

    return p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Components/ChatAttachAlert;)Z
    .locals 0

    .line 184
    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->keyboardVisible:Z

    return p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 184
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 184
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 184
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 184
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimationType:I

    return p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 184
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 184
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 184
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 184
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimationType:I

    return p0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 184
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 184
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 184
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 184
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 184
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 184
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 184
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 184
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 184
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 184
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$3500(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 184
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$3600(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 184
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$3700(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 184
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$3800(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 184
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$3900(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 184
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 184
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$4000(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 184
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$4100(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 184
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$4200(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 184
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$4300(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 184
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$4400(Lorg/telegram/ui/Components/ChatAttachAlert;I)I
    .locals 0

    .line 184
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$4500(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 184
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$4600(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 184
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimationType:I

    return p0
.end method

.method static synthetic access$4700(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 184
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$4800(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 184
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$4900(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 184
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/view/ViewGroup;
    .locals 0

    .line 184
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$5000(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 184
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$5100(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 184
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$5200(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 184
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$5300(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 184
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$5400(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 184
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$5500(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 184
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$5600(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 184
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$5700(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 184
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$5800(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 184
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$5900(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 184
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 184
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$6000(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 184
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$6100(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 184
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$6200(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 184
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$6300(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 184
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$6400(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 184
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$6500(Lorg/telegram/ui/Components/ChatAttachAlert;I)I
    .locals 0

    .line 184
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$6600(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 184
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$6700(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/view/ViewGroup;
    .locals 0

    .line 184
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$6800(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/view/ViewGroup;
    .locals 0

    .line 184
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$6900(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/view/ViewGroup;
    .locals 0

    .line 184
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 184
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$7000(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/view/ViewGroup;
    .locals 0

    .line 184
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$7100(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 184
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimationType:I

    return p0
.end method

.method static synthetic access$7200(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 184
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimationType:I

    return p0
.end method

.method static synthetic access$7300(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/view/ViewGroup;
    .locals 0

    .line 184
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$7400(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 184
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimationType:I

    return p0
.end method

.method static synthetic access$7500(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/view/ViewGroup;
    .locals 0

    .line 184
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$7600(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/view/ViewGroup;
    .locals 0

    .line 184
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$7701(Lorg/telegram/ui/Components/ChatAttachAlert;)V
    .locals 0

    .line 184
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method static synthetic access$7800(Lorg/telegram/ui/Components/ChatAttachAlert;I)I
    .locals 0

    .line 184
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$7900(Lorg/telegram/ui/Components/ChatAttachAlert;I)I
    .locals 0

    .line 184
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/ChatAttachAlert;I)I
    .locals 0

    .line 184
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$8000(Lorg/telegram/ui/Components/ChatAttachAlert;I)I
    .locals 0

    .line 184
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$8100(Lorg/telegram/ui/Components/ChatAttachAlert;I)I
    .locals 0

    .line 184
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$8200(Lorg/telegram/ui/Components/ChatAttachAlert;I)I
    .locals 0

    .line 184
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$8300(Lorg/telegram/ui/Components/ChatAttachAlert;I)I
    .locals 0

    .line 184
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$8400(Lorg/telegram/ui/Components/ChatAttachAlert;I)I
    .locals 0

    .line 184
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$8500(Lorg/telegram/ui/Components/ChatAttachAlert;I)I
    .locals 0

    .line 184
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$8600(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/view/ViewGroup;
    .locals 0

    .line 184
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$8700(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/view/ViewGroup;
    .locals 0

    .line 184
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$8800(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 184
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$8900(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 184
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/ChatAttachAlert;I)I
    .locals 0

    .line 184
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$9000(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 184
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$9100(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 184
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$9202(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 184
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$9302(Lorg/telegram/ui/Components/ChatAttachAlert;I)I
    .locals 0

    .line 184
    iput p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimationType:I

    return p1
.end method

.method private applyAttachButtonColors(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method private blur3_InvalidateBlur()V
    .locals 6

    .line 6565
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->scrollableViewNoiseSuppressor:Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 6569
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerViewWrapper:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->iBlur3PositionMainTabs:Landroid/graphics/RectF;

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Components/chat/ViewPositionWatcher;->computeRectInParent(Landroid/view/View;Landroid/view/View;Landroid/graphics/RectF;)Z

    .line 6571
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->iBlur3PositionActionBar:Landroid/graphics/RectF;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 6572
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->iBlur3PositionActionBar:Landroid/graphics/RectF;

    const/high16 v1, 0x42400000    # 48.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v3, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 6574
    sget v0, Lorg/telegram/messenger/AndroidUtilities;->navigationBarHeight:I

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getEmojiPadding()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/high16 v2, 0x43340000    # 180.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v0, v2

    .line 6575
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->iBlur3PositionMainTabs:Landroid/graphics/RectF;

    iget-object v4, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v4, v0

    int-to-float v0, v4

    iget-object v4, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 6576
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->iBlur3PositionMainTabs:Landroid/graphics/RectF;

    const/high16 v2, 0x40000

    invoke-static {v2}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    :goto_0
    invoke-virtual {v0, v3, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 6579
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    if-ne v0, v2, :cond_2

    if-eqz v2, :cond_2

    iget-object v0, v2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView;->getFastScroll()Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6580
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView;->getFastScroll()Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->iBlur3PositionFastScroll:Landroid/graphics/RectF;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->fillDrawablesRect(Landroid/graphics/RectF;)Z

    .line 6582
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView;->getFastScroll()Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-static {v0, v2, v4}, Lorg/telegram/ui/Components/chat/ViewPositionWatcher;->computeRectInParent(Landroid/view/View;Landroid/view/View;Landroid/graphics/RectF;)Z

    .line 6584
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->iBlur3PositionFastScroll:Landroid/graphics/RectF;

    iget v2, v4, Landroid/graphics/RectF;->left:F

    iget v4, v4, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v2, v4}, Landroid/graphics/RectF;->offset(FF)V

    .line 6585
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->iBlur3PositionFastScroll:Landroid/graphics/RectF;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 6586
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->iBlur3PositionFastScroll:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 6587
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->iBlur3PositionFastScroll:Landroid/graphics/RectF;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->iBlur3PositionFastScroll:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 6591
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->iBlur3Positions:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    goto :goto_2

    :cond_3
    const/4 v0, 0x2

    :goto_2
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->iBlur3PositionsMerged:Ljava/util/ArrayList;

    invoke-static {v1, v0, v2}, Lorg/telegram/messenger/utils/RectFMergeBounding;->mergeOverlapping(Ljava/util/List;ILjava/util/List;)I

    move-result v0

    .line 6592
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->scrollableViewNoiseSuppressor:Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->iBlur3PositionsMerged:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;->setupRenderNodes(Ljava/util/List;I)V

    .line 6593
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->scrollableViewNoiseSuppressor:Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->iBlur3Capture:Lorg/telegram/ui/Components/blur3/capture/IBlur3Capture;

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;->invalidateResultRenderNodes(Lorg/telegram/ui/Components/blur3/capture/IBlur3Capture;II)Z

    :cond_4
    :goto_3
    return-void
.end method

.method private static checkContactsPermission(Landroid/content/Context;)Z
    .locals 1

    .line 5959
    const-string v0, "android.permission.READ_CONTACTS"

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static checkMusicPermission(Landroid/content/Context;)Z
    .locals 2

    .line 5963
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    const-string v0, "android.permission.READ_MEDIA_AUDIO"

    goto :goto_0

    :cond_0
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    :goto_0
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static checkPhotoAndCameraPermission(Landroid/content/Context;)Z
    .locals 4

    .line 5936
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v0, v1, :cond_1

    .line 5937
    const-string v0, "android.permission.READ_MEDIA_IMAGES"

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.permission.READ_MEDIA_VIDEO"

    .line 5938
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.permission.CAMERA"

    .line 5939
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    return v3

    :cond_0
    return v2

    .line 5941
    :cond_1
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_2

    return v3

    :cond_2
    return v2
.end method

.method private static checkPhotoAndDocumentsPermission(Landroid/content/Context;)Z
    .locals 4

    .line 5948
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v0, v1, :cond_1

    .line 5949
    const-string v0, "android.permission.READ_MEDIA_IMAGES"

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.permission.READ_MEDIA_VIDEO"

    .line 5950
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    return v3

    :cond_0
    return v2

    .line 5952
    :cond_1
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_2

    return v3

    :cond_2
    return v2
.end method

.method private checkUi_bottomFade()V
    .locals 4

    .line 4028
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->animatorCaptionVisible:Lme/vkryl/android/animator/BoolAnimator;

    invoke-virtual {v0}, Lme/vkryl/android/animator/BoolAnimator;->getFloatValue()F

    move-result v0

    .line 4029
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->animatorCaptionAbove:Lme/vkryl/android/animator/BoolAnimator;

    invoke-virtual {v1}, Lme/vkryl/android/animator/BoolAnimator;->getFloatValue()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v1, v2, v1

    mul-float/2addr v1, v0

    .line 4030
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->animatorActionBarVisible:Lme/vkryl/android/animator/BoolAnimator;

    invoke-virtual {v3}, Lme/vkryl/android/animator/BoolAnimator;->getFloatValue()F

    move-result v3

    sub-float v3, v2, v3

    sub-float v0, v2, v0

    mul-float/2addr v3, v0

    sub-float v0, v2, v3

    .line 4032
    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    sub-float/2addr v2, v1

    .line 4033
    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 4037
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->bottomFadeView:Landroid/view/View;

    const/high16 v2, 0x42400000    # 48.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method private checkUi_doneItemVisibility()V
    .locals 3

    .line 743
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v0, :cond_1

    .line 744
    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->doneItemAlphaByEnabled:F

    iget v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->doneItemAlphaByLayout:F

    mul-float/2addr v1, v2

    .line 745
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setAlpha(F)V

    .line 746
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private checkUi_writeButtonContainerY()V
    .locals 5

    .line 4011
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->topCommentContainer:Landroid/widget/FrameLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->topCommentContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    .line 4017
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->animatorCaptionAbove:Lme/vkryl/android/animator/BoolAnimator;

    invoke-virtual {v0}, Lme/vkryl/android/animator/BoolAnimator;->getFloatValue()F

    move-result v0

    const/high16 v2, -0x40800000    # -1.0f

    .line 4018
    invoke-static {v2, v1, v0}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    mul-float v2, v1, v1

    mul-float/2addr v2, v1

    mul-float/2addr v1, v2

    .line 4021
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    invoke-virtual {v2, v1}, Landroid/view/View;->setAlpha(F)V

    .line 4022
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButtonContainer:Landroid/widget/FrameLayout;

    iget v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->bottomPannelTranslation:F

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->topCommentContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->topCommentContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/view/View;->getTranslationY()F

    move-result v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    sget-object v4, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_BOTH:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v4, v0}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v0

    invoke-static {v2, v3, v0}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    return-void

    .line 4012
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButtonContainer:Landroid/widget/FrameLayout;

    iget v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->bottomPannelTranslation:F

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 4013
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private createMentionsContainer()V
    .locals 9

    .line 6396
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlert$35;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v3

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v7

    iget-object v8, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const-wide/16 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/Components/ChatAttachAlert$35;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;JJLorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    .line 6411
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->setupMentionContainer(Lorg/telegram/ui/Components/MentionsContainerView;)V

    .line 6412
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlert$36;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$36;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    iput-object v0, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->mentionsDelegate:Lorg/telegram/ui/Components/MentionsContainerView$Delegate;

    .line 6423
    iget-object v2, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/MentionsContainerView;->withDelegate(Lorg/telegram/ui/Components/MentionsContainerView$Delegate;)V

    .line 6424
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v2, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    iget-object v3, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->frameLayout2:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v3

    const/4 v4, -0x1

    const/16 v5, 0x53

    invoke-static {v4, v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 6425
    iget-object v0, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->setupMentionContainer(Lorg/telegram/ui/Components/MentionsContainerView;)V

    .line 6426
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->updateCommentTextViewPosition()V

    return-void
.end method

.method private getActionBarDrawableColor()I
    .locals 1

    const/4 v0, 0x1

    .line 4524
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getShadowDrawableColor(Z)I

    move-result v0

    return v0
.end method

.method private getEmojiPadding()I
    .locals 3

    .line 3963
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->pollLayout:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    if-ne v0, v1, :cond_0

    iget-object v2, v1, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz v2, :cond_0

    .line 3964
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->getEmojiPadding()I

    move-result v0

    return v0

    .line 3965
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->todoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    if-ne v0, v1, :cond_1

    iget-object v0, v1, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz v0, :cond_1

    .line 3966
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->getEmojiPadding()I

    move-result v0

    return v0

    .line 3967
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->captionAbove:Z

    if-eqz v0, :cond_2

    .line 3968
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->topCommentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEmojiPadding()I

    move-result v0

    return v0

    .line 3970
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEmojiPadding()I

    move-result v0

    return v0
.end method

.method private getScrollOffsetY(I)I
    .locals 2

    .line 5194
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    instance-of v1, v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    if-nez v1, :cond_0

    instance-of v0, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    if-eqz v0, :cond_1

    .line 5195
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->scrollOffsetY:[I

    const/4 v0, 0x0

    aget v0, p1, v0

    const/4 v1, 0x1

    aget p1, p1, v1

    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->translationProgress:F

    invoke-static {v0, p1, v1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result p1

    return p1

    .line 5197
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->scrollOffsetY:[I

    aget p1, v0, p1

    return p1
.end method

.method private getShadowDrawableColor()I
    .locals 1

    const/4 v0, 0x0

    .line 4500
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getShadowDrawableColor(Z)I

    move-result v0

    return v0
.end method

.method private getShadowDrawableColor(Z)I
    .locals 9

    .line 4504
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->forceDarkTheme:Z

    if-eqz v0, :cond_0

    .line 4505
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_listViewBackground:I

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p1

    return p1

    .line 4508
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->isDark()Z

    move-result v0

    goto :goto_0

    :cond_1
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v0

    .line 4510
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->animatorCurrentVisibleLayout:Lme/vkryl/android/animator/ReplaceAnimator;

    invoke-virtual {v1}, Lme/vkryl/android/animator/ReplaceAnimator;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lme/vkryl/android/animator/ListAnimator$Entry;

    .line 4511
    iget-object v5, v4, Lme/vkryl/android/animator/ListAnimator$Entry;->item:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0x3

    cmp-long v7, v5, v7

    if-eqz v7, :cond_3

    const-wide/16 v7, 0x4

    cmp-long v7, v5, v7

    if-eqz v7, :cond_3

    const-wide/16 v7, 0x5

    cmp-long v7, v5, v7

    if-eqz v7, :cond_3

    const-wide/16 v7, 0x6

    cmp-long v7, v5, v7

    if-eqz v7, :cond_3

    const-wide/16 v7, 0x9

    cmp-long v7, v5, v7

    if-eqz v7, :cond_3

    const-wide/16 v7, 0xb

    cmp-long v7, v5, v7

    if-eqz v7, :cond_3

    const-wide/16 v7, 0xc

    cmp-long v5, v5, v7

    if-nez v5, :cond_2

    .line 4513
    :cond_3
    invoke-virtual {v4}, Lme/vkryl/android/animator/ListAnimator$Entry;->getVisibility()F

    move-result v4

    add-float/2addr v3, v4

    goto :goto_1

    :cond_4
    const/high16 v1, 0x3f800000    # 1.0f

    .line 4516
    invoke-static {v3, v2, v1}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v2

    if-eqz p1, :cond_5

    .line 4517
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_5

    .line 4518
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p1

    sub-float/2addr v1, p1

    mul-float/2addr v2, v1

    .line 4520
    :cond_5
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p1

    if-eqz v0, :cond_6

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    goto :goto_2

    :cond_6
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackgroundGray:I

    :goto_2
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v0

    invoke-static {p1, v0, v2}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p1

    return p1
.end method

.method private isLightStatusBar()Z
    .locals 4

    .line 4124
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->forceDarkTheme:Z

    if-eqz v0, :cond_0

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_listViewBackground:I

    goto :goto_0

    :cond_0
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    :goto_0
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v0

    .line 4125
    invoke-static {v0}, Landroidx/core/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v0

    const-wide v2, 0x3fe6666660000000L    # 0.699999988079071

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private synthetic lambda$dismiss$54(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    const/4 p1, 0x1

    .line 6297
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->allowPassConfirmationAlert:Z

    .line 6298
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss()V

    return-void
.end method

.method private synthetic lambda$dismiss$55(Landroid/content/DialogInterface;)V
    .locals 3

    .line 6302
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->appearSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz p1, :cond_0

    .line 6303
    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    .line 6305
    :cond_0
    new-instance p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    sget-object v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->appearSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 6306
    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    const/high16 v0, 0x3fc00000    # 1.5f

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 6307
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->appearSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    const v0, 0x44bb8000    # 1500.0f

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 6308
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->appearSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    return-void
.end method

.method private synthetic lambda$dismiss$56(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    .line 6311
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->confirmationAlertShown:Z

    return-void
.end method

.method private synthetic lambda$dismiss$57(I)V
    .locals 1

    const/4 v0, -0x1

    .line 6327
    iput v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->navBarColorKey:I

    .line 6328
    iput p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->navBarColor:I

    .line 6329
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$init$53(Lorg/telegram/tgnet/TLRPC$MessageMedia;IZIJ)V
    .locals 7

    .line 5655
    iget-object p5, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    move-object v0, p5

    check-cast v0, Lorg/telegram/ui/ChatActivity;

    const-wide/16 v5, 0x0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/ChatActivity;->didSelectLocation(Lorg/telegram/tgnet/TLRPC$MessageMedia;IZIJ)V

    return-void
.end method

.method private synthetic lambda$makeFocusable$52(Lorg/telegram/ui/Components/EditTextBoldCursor;Z)V
    .locals 1

    const/4 v0, 0x1

    .line 5046
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->setFocusable(Z)V

    .line 5047
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    if-eqz p2, :cond_0

    .line 5049
    new-instance p2, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda54;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda54;-><init>(Lorg/telegram/ui/Components/EditTextBoldCursor;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$0(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 9

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_3

    if-nez v0, :cond_0

    .line 1285
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    :goto_1
    if-eqz v1, :cond_2

    .line 1286
    iget-object v2, v1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->iBlur3Capture:Lorg/telegram/ui/Components/blur3/capture/IBlur3Capture;

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    if-nez v0, :cond_1

    .line 1288
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 1289
    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, v3

    mul-float/2addr v2, v4

    goto :goto_2

    .line 1291
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v2

    :goto_2
    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v2, v3

    float-to-int v8, v2

    .line 1294
    iget-object v3, v1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->iBlur3Capture:Lorg/telegram/ui/Components/blur3/capture/IBlur3Capture;

    iget-object v6, v1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->iBlur3CaptureView:Landroid/view/View;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v7

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v3 .. v8}, Lorg/telegram/ui/Components/blur3/utils/Blur3Utils;->captureRelativeParent(Lorg/telegram/ui/Components/blur3/capture/IBlur3Capture;Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/view/View;Landroid/view/ViewGroup;I)V

    goto :goto_3

    :cond_2
    move-object v4, p1

    move-object v5, p2

    :goto_3
    add-int/lit8 v0, v0, 0x1

    move-object p1, v4

    move-object p2, v5

    goto :goto_0

    :cond_3
    return-void
.end method

.method private synthetic lambda$new$1(I)V
    .locals 1

    .line 2196
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->getActionBarMenuOnItemClick()Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;->onItemClick(I)V

    return-void
.end method

.method private synthetic lambda$new$10(Lorg/telegram/tgnet/TLRPC$MessageMedia;Ljava/util/HashMap;ZIJ)V
    .locals 6

    .line 2745
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    move-object v0, p2

    check-cast v0, Lorg/telegram/ui/ChatActivity;

    move-object v1, p1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaToDo;

    move v2, p3

    move v3, p4

    move-wide v4, p5

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/ChatActivity;->sendTodo(Lorg/telegram/tgnet/TLRPC$TL_messageMediaToDo;ZIJ)V

    return-void
.end method

.method private synthetic lambda$new$11(Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;)V
    .locals 3

    .line 2763
    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->-$$Nest$fgetattachMenuBot(Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;)Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;

    move-result-object v0

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->-$$Nest$fgetattachMenuBot(Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;)Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;

    move-result-object v1

    const/4 v2, 0x0

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->side_menu_disclaimer_needed:Z

    iput-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->inactive:Z

    .line 2764
    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->-$$Nest$fgetattachMenuBot(Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;)Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;

    move-result-object p1

    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->bot_id:J

    const/4 p1, 0x1

    invoke-virtual {p0, v0, v1, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->showBotLayout(JZ)V

    .line 2765
    iget p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MediaDataController;->updateAttachMenuBotsInCache()V

    return-void
.end method

.method private synthetic lambda$new$12(Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 2762
    new-instance p2, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda60;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda60;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$new$13(Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;Ljava/lang/Boolean;)V
    .locals 3

    .line 2758
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_messages_toggleBotInAttachMenu;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_messages_toggleBotInAttachMenu;-><init>()V

    .line 2759
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->-$$Nest$fgetattachMenuBot(Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;)Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;

    move-result-object v1

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->bot_id:J

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->getInputUser(J)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v0

    iput-object v0, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_toggleBotInAttachMenu;->bot:Lorg/telegram/tgnet/TLRPC$InputUser;

    const/4 v0, 0x1

    .line 2760
    iput-boolean v0, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_toggleBotInAttachMenu;->enabled:Z

    .line 2761
    iput-boolean v0, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_toggleBotInAttachMenu;->write_allowed:Z

    .line 2762
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda51;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda51;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;)V

    const/16 p1, 0x42

    invoke-virtual {v0, p2, v1, p1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    return-void
.end method

.method private synthetic lambda$new$14(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;I)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 2638
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-nez v3, :cond_0

    .line 2640
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v3

    :cond_0
    if-eqz v3, :cond_25

    .line 2642
    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    if-nez v4, :cond_1

    goto/16 :goto_2

    .line 2645
    :cond_1
    instance-of v4, v2, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_20

    .line 2646
    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-nez v3, :cond_2

    .line 2648
    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->findActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v3

    .line 2650
    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/Integer;

    if-eqz v4, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_0

    :cond_3
    const/4 v4, -0x1

    :goto_0
    if-ne v4, v6, :cond_6

    .line 2652
    iget-boolean v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->photosEnabled:Z

    if-nez v3, :cond_4

    iget-boolean v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->videosEnabled:Z

    if-nez v3, :cond_4

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->checkCanRemoveRestrictionsByBoosts()Z

    move-result v3

    if-eqz v3, :cond_4

    goto/16 :goto_2

    .line 2655
    :cond_4
    iget-boolean v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->photosEnabled:Z

    if-nez v3, :cond_5

    iget-boolean v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->videosEnabled:Z

    if-nez v3, :cond_5

    .line 2656
    new-instance v3, Lorg/telegram/ui/Components/ChatAttachRestrictedLayout;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v6, v0, v4, v1}, Lorg/telegram/ui/Components/ChatAttachRestrictedLayout;-><init>(ILorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->restrictedLayout:Lorg/telegram/ui/Components/ChatAttachRestrictedLayout;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/ChatAttachAlert;->showLayout(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;)V

    .line 2658
    :cond_5
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->showLayout(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;)V

    goto/16 :goto_1

    :cond_6
    const/4 v7, 0x3

    const/4 v8, 0x4

    const/16 v9, 0x21

    if-ne v4, v7, :cond_a

    .line 2660
    iget-boolean v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->musicEnabled:Z

    if-nez v1, :cond_7

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->checkCanRemoveRestrictionsByBoosts()Z

    move-result v1

    if-eqz v1, :cond_7

    goto/16 :goto_2

    .line 2663
    :cond_7
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v9, :cond_8

    .line 2664
    invoke-static {}, Lcom/exteragram/messenger/utils/system/SystemUtils;->isAudioPermissionGranted()Z

    move-result v1

    if-nez v1, :cond_9

    .line 2665
    invoke-static {v3}, Lcom/exteragram/messenger/utils/system/SystemUtils;->requestAudioPermission(Landroid/app/Activity;)V

    return-void

    .line 2668
    :cond_8
    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v3, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_9

    .line 2669
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1, v8}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    return-void

    .line 2672
    :cond_9
    invoke-direct {v0, v6}, Lorg/telegram/ui/Components/ChatAttachAlert;->openAudioLayout(Z)V

    goto/16 :goto_1

    :cond_a
    if-ne v4, v8, :cond_e

    .line 2674
    iget-boolean v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->documentsEnabled:Z

    if-nez v1, :cond_b

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->checkCanRemoveRestrictionsByBoosts()Z

    move-result v1

    if-eqz v1, :cond_b

    goto/16 :goto_2

    .line 2677
    :cond_b
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v9, :cond_c

    .line 2678
    invoke-static {}, Lcom/exteragram/messenger/utils/system/SystemUtils;->isImagesAndVideoPermissionGranted()Z

    move-result v1

    if-nez v1, :cond_d

    .line 2679
    invoke-static {v3}, Lcom/exteragram/messenger/utils/system/SystemUtils;->requestImagesAndVideoPermission(Landroid/app/Activity;)V

    return-void

    .line 2682
    :cond_c
    invoke-static {}, Lcom/exteragram/messenger/utils/system/SystemUtils;->isStoragePermissionGranted()Z

    move-result v1

    if-nez v1, :cond_d

    .line 2683
    invoke-static {v3}, Lcom/exteragram/messenger/utils/system/SystemUtils;->requestStoragePermission(Landroid/app/Activity;)V

    return-void

    .line 2686
    :cond_d
    invoke-direct {v0, v6}, Lorg/telegram/ui/Components/ChatAttachAlert;->openDocumentsLayout(Z)V

    goto/16 :goto_1

    :cond_e
    const/4 v7, 0x5

    if-ne v4, v7, :cond_11

    .line 2688
    iget-boolean v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->plainTextEnabled:Z

    if-nez v1, :cond_f

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->checkCanRemoveRestrictionsByBoosts()Z

    move-result v1

    if-eqz v1, :cond_f

    goto/16 :goto_2

    .line 2691
    :cond_f
    iget v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    iget-boolean v1, v1, Lorg/telegram/messenger/UserConfig;->syncContacts:Z

    .line 2692
    iget-boolean v4, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->plainTextEnabled:Z

    if-eqz v4, :cond_10

    if-eqz v1, :cond_10

    .line 2693
    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v4, "android.permission.READ_CONTACTS"

    invoke-virtual {v1, v4}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_10

    .line 2694
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1, v7}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    return-void

    .line 2698
    :cond_10
    invoke-direct {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->openContactsLayout()V

    goto/16 :goto_1

    :cond_11
    const/4 v3, 0x6

    if-ne v4, v3, :cond_16

    .line 2700
    iget-boolean v4, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->plainTextEnabled:Z

    if-nez v4, :cond_12

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->checkCanRemoveRestrictionsByBoosts()Z

    move-result v4

    if-eqz v4, :cond_12

    goto/16 :goto_2

    .line 2703
    :cond_12
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->isMapsInstalled(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v4

    if-nez v4, :cond_13

    goto/16 :goto_2

    .line 2706
    :cond_13
    iget-boolean v4, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->plainTextEnabled:Z

    if-nez v4, :cond_14

    .line 2707
    new-instance v4, Lorg/telegram/ui/Components/ChatAttachRestrictedLayout;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v3, v0, v6, v1}, Lorg/telegram/ui/Components/ChatAttachRestrictedLayout;-><init>(ILorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v4, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->restrictedLayout:Lorg/telegram/ui/Components/ChatAttachRestrictedLayout;

    .line 2708
    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/ChatAttachAlert;->showLayout(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;)V

    goto/16 :goto_1

    .line 2710
    :cond_14
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->locationLayout:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    if-nez v3, :cond_15

    .line 2711
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->layouts:[Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    new-instance v4, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v0, v6, v1}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v4, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->locationLayout:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    aput-object v4, v3, v7

    .line 2712
    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda32;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda32;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v4, v1}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->setDelegate(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$LocationActivityDelegate;)V

    .line 2714
    :cond_15
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->locationLayout:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->showLayout(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;)V

    goto/16 :goto_1

    :cond_16
    const/16 v7, 0x9

    if-ne v4, v7, :cond_1a

    .line 2717
    iget-boolean v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->pollsEnabled:Z

    if-nez v3, :cond_17

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->checkCanRemoveRestrictionsByBoosts()Z

    move-result v3

    if-eqz v3, :cond_17

    goto/16 :goto_2

    .line 2720
    :cond_17
    iget-boolean v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->pollsEnabled:Z

    if-nez v3, :cond_18

    .line 2721
    new-instance v3, Lorg/telegram/ui/Components/ChatAttachRestrictedLayout;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v7, v0, v4, v1}, Lorg/telegram/ui/Components/ChatAttachRestrictedLayout;-><init>(ILorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->restrictedLayout:Lorg/telegram/ui/Components/ChatAttachRestrictedLayout;

    .line 2722
    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/ChatAttachAlert;->showLayout(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;)V

    goto/16 :goto_1

    .line 2724
    :cond_18
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->pollLayout:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    if-nez v3, :cond_19

    .line 2725
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->layouts:[Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    new-instance v4, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v4, v0, v7, v5, v1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v4, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->pollLayout:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    aput-object v4, v3, v6

    .line 2726
    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda33;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda33;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v4, v1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->setDelegate(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$PollCreateActivityDelegate;)V

    .line 2730
    :cond_19
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->pollLayout:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->showLayout(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;)V

    goto/16 :goto_1

    :cond_1a
    const/16 v8, 0xb

    if-ne v4, v8, :cond_1b

    .line 2733
    invoke-direct {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->openQuickRepliesLayout()V

    goto/16 :goto_1

    :cond_1b
    const/16 v8, 0xc

    if-ne v4, v8, :cond_1f

    .line 2735
    iget-boolean v4, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->todoEnabled:Z

    if-nez v4, :cond_1c

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->checkCanRemoveRestrictionsByBoosts()Z

    move-result v4

    if-eqz v4, :cond_1c

    goto/16 :goto_2

    .line 2738
    :cond_1c
    iget-boolean v4, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->todoEnabled:Z

    if-nez v4, :cond_1d

    .line 2739
    new-instance v3, Lorg/telegram/ui/Components/ChatAttachRestrictedLayout;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v7, v0, v4, v1}, Lorg/telegram/ui/Components/ChatAttachRestrictedLayout;-><init>(ILorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->restrictedLayout:Lorg/telegram/ui/Components/ChatAttachRestrictedLayout;

    .line 2740
    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/ChatAttachAlert;->showLayout(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;)V

    goto/16 :goto_1

    .line 2742
    :cond_1d
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->todoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    if-nez v4, :cond_1e

    .line 2743
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->layouts:[Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    new-instance v7, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v0, v8, v6, v1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v7, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->todoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    aput-object v7, v4, v3

    .line 2744
    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda34;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda34;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v7, v1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->setDelegate(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$PollCreateActivityDelegate;)V

    .line 2748
    :cond_1e
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->todoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->showLayout(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;)V

    goto :goto_1

    .line 2750
    :cond_1f
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Integer;

    if-eqz v1, :cond_23

    .line 2751
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->delegate:Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->isCaptionAbove()Z

    move-result v14

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    invoke-interface/range {v6 .. v17}, Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;->didPressedButton(IZZIIJZZJ)V

    goto :goto_1

    .line 2753
    :cond_20
    instance-of v1, v2, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;

    if-eqz v1, :cond_23

    .line 2754
    move-object v1, v2

    check-cast v1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;

    .line 2755
    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->-$$Nest$fgetattachMenuBot(Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;)Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;

    move-result-object v3

    if-eqz v3, :cond_22

    .line 2756
    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->-$$Nest$fgetattachMenuBot(Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;)Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;

    move-result-object v3

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->inactive:Z

    if-eqz v3, :cond_21

    .line 2757
    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda35;

    invoke-direct {v4, v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda35;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;)V

    const/4 v1, 0x0

    invoke-static {v3, v4, v1, v1}, Lorg/telegram/ui/WebAppDisclaimerAlert;->show(Landroid/content/Context;Lcom/google/android/exoplayer2/util/Consumer;Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/Runnable;)V

    goto :goto_1

    .line 2769
    :cond_21
    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->-$$Nest$fgetattachMenuBot(Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;)Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;

    move-result-object v1

    iget-wide v3, v1, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->bot_id:J

    invoke-virtual {v0, v3, v4, v6}, Lorg/telegram/ui/Components/ChatAttachAlert;->showBotLayout(JZ)V

    goto :goto_1

    .line 2772
    :cond_22
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->delegate:Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->-$$Nest$fgetcurrentUser(Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    invoke-interface {v3, v1}, Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;->didSelectBot(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 2773
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss()V

    .line 2777
    :cond_23
    :goto_1
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 2778
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    const/high16 v3, 0x428c0000    # 70.0f

    .line 2779
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v1, v3

    if-gez v1, :cond_24

    .line 2781
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v1, v5}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    return-void

    :cond_24
    add-int/2addr v2, v3

    .line 2782
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    if-le v2, v1, :cond_25

    .line 2783
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2, v5}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    :cond_25
    :goto_2
    return-void
.end method

.method private synthetic lambda$new$15(Landroid/view/View;I)Z
    .locals 1

    .line 2787
    instance-of p2, p1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 2788
    check-cast p1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;

    .line 2789
    iget-boolean p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->destroyed:Z

    if-nez p2, :cond_1

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->-$$Nest$fgetcurrentUser(Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 2792
    :cond_0
    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->-$$Nest$fgetattachMenuBot(Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;)Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;

    move-result-object p2

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->-$$Nest$fgetcurrentUser(Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->onLongClickBotButton(Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;Lorg/telegram/tgnet/TLRPC$User;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    return v0
.end method

.method private synthetic lambda$new$16(Landroid/view/View;)V
    .locals 4

    .line 2807
    iget-wide v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedId:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    .line 2808
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botAttachLayouts:Landroid/util/LongSparseArray;

    neg-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;

    if-eqz p1, :cond_0

    .line 2810
    invoke-virtual {p1}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->getWebViewContainer()Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/web/BotWebViewContainer;->onMainButtonPressed()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$17(Landroid/view/View;)V
    .locals 1

    .line 2827
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    if-ne p1, v0, :cond_0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 2828
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->checkCamera(Z)V

    .line 2829
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->openCamera(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$18(Landroid/view/View;)Z
    .locals 12

    .line 2833
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->delegate:Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;

    if-eqz v0, :cond_0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    .line 2834
    invoke-interface/range {v0 .. v11}, Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;->didPressedButton(IZZIIJZZJ)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private synthetic lambda$new$19(Landroid/view/View;)V
    .locals 0

    .line 2848
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->captionAbove:Z

    if-nez p1, :cond_0

    .line 2849
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->toggleCaptionAbove()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$2(Landroid/view/View;)V
    .locals 0

    .line 2200
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->toggleSubMenu()V

    return-void
.end method

.method private synthetic lambda$new$21(Landroid/view/View;)V
    .locals 0

    .line 3324
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->captionAbove:Z

    if-eqz p1, :cond_0

    .line 3325
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->toggleCaptionAbove()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$22(ZII)V
    .locals 7

    .line 3416
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoPreviewLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    if-ne v0, v1, :cond_1

    :cond_0
    move v1, p1

    move v2, p2

    goto :goto_0

    :cond_1
    const-wide/16 v4, 0x0

    .line 3419
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->isCaptionAbove()Z

    move-result v6

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->sendSelectedItems(ZIIJZ)Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    .line 3420
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->allowPassConfirmationAlert:Z

    .line 3421
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss()V

    :cond_2
    return-void

    .line 3417
    :goto_0
    iget-wide v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->effectId:J

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->isCaptionAbove()Z

    move-result v6

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/ChatAttachAlert;->sendPressed(ZIIJZ)Z

    return-void
.end method

.method private synthetic lambda$new$23(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)V
    .locals 9

    .line 3388
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lorg/telegram/messenger/MessageObject;->needResendWhenEdit()Z

    move-result p3

    if-eqz p3, :cond_1

    iget p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v0

    invoke-static {p3, v0, v1}, Lorg/telegram/messenger/ChatObject;->canManageMonoForum(IJ)Z

    move-result p3

    if-nez p3, :cond_1

    .line 3389
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v0, p3, Lorg/telegram/ui/ChatActivity;

    if-eqz v0, :cond_1

    .line 3390
    check-cast p3, Lorg/telegram/ui/ChatActivity;

    .line 3391
    iget-object v0, p3, Lorg/telegram/ui/ChatActivity;->messageSuggestionParams:Lorg/telegram/messenger/MessageSuggestionParams;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3393
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->suggested_post:Lorg/telegram/tgnet/TLRPC$SuggestedPost;

    invoke-static {v0}, Lorg/telegram/messenger/MessageSuggestionParams;->of(Lorg/telegram/tgnet/TLRPC$SuggestedPost;)Lorg/telegram/messenger/MessageSuggestionParams;

    move-result-object v0

    .line 3395
    :goto_0
    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    iget-object v2, v0, Lorg/telegram/messenger/MessageSuggestionParams;->amount:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;

    invoke-static {v1, v2}, Lorg/telegram/ui/Stars/StarsController;->isEnoughAmount(ILorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3396
    invoke-virtual {p3, v0}, Lorg/telegram/ui/ChatActivity;->showSuggestionOfferForEditMessage(Lorg/telegram/messenger/MessageSuggestionParams;)V

    return-void

    .line 3402
    :cond_1
    iget p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentLimit:I

    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->codepointCount:I

    sub-int/2addr p3, v0

    if-gez p3, :cond_2

    .line 3403
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->captionLimitView:Lorg/telegram/ui/Components/NumberTextView;

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->shakeView(Landroid/view/View;)V

    .line 3404
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->topCaptionLimitView:Lorg/telegram/ui/Components/NumberTextView;

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->shakeView(Landroid/view/View;)V

    .line 3406
    :try_start_0
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    const/4 p3, 0x3

    const/4 v0, 0x2

    invoke-virtual {p2, p3, v0}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3409
    :catch_0
    iget p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/MessagesController;->premiumFeaturesBlocked()Z

    move-result p2

    if-nez p2, :cond_5

    iget p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget p2, p2, Lorg/telegram/messenger/MessagesController;->captionLengthLimitPremium:I

    iget p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->codepointCount:I

    if-le p2, p3, :cond_5

    .line 3410
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->showCaptionLimitBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    goto :goto_1

    .line 3414
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of p3, p1, Lorg/telegram/ui/ChatActivity;

    if-eqz p3, :cond_3

    check-cast p1, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->isInScheduleMode()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 3415
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    check-cast p3, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p3}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v0

    new-instance p3, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda49;

    invoke-direct {p3, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda49;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-static {p1, v0, v1, p3, p2}, Lorg/telegram/ui/Components/AlertsCreator;->createScheduleDatePickerDialog(Landroid/content/Context;JLorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerDelegate;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    return-void

    .line 3426
    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    if-eq v2, p1, :cond_6

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoPreviewLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    if-ne v2, p1, :cond_4

    goto :goto_2

    .line 3429
    :cond_4
    iget-wide v6, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->effectId:J

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->isCaptionAbove()Z

    move-result v8

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v8}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->sendSelectedItems(ZIIJZ)Z

    move-result p1

    if-nez p1, :cond_5

    const/4 p1, 0x1

    .line 3430
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->allowPassConfirmationAlert:Z

    .line 3431
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss()V

    :cond_5
    :goto_1
    return-void

    .line 3427
    :cond_6
    :goto_2
    iget-wide v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->effectId:J

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->isCaptionAbove()Z

    move-result v6

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/ChatAttachAlert;->sendPressed(ZIIJZ)Z

    return-void
.end method

.method private synthetic lambda$new$24(JZII)V
    .locals 8

    .line 3492
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    const/4 v7, 0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoPreviewLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    if-ne v0, v1, :cond_1

    :cond_0
    move-wide v4, p1

    move v1, p3

    move v2, p4

    move v3, p5

    goto :goto_0

    .line 3495
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->isCaptionAbove()Z

    move-result v6

    move-wide v4, p1

    move v1, p3

    move v2, p4

    move v3, p5

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->sendSelectedItems(ZIIJZ)Z

    move-result p1

    if-nez p1, :cond_2

    .line 3496
    iput-boolean v7, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->allowPassConfirmationAlert:Z

    .line 3497
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss()V

    :cond_2
    const/4 p1, 0x0

    move-object v0, p0

    goto :goto_1

    .line 3493
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->isCaptionAbove()Z

    move-result v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/ChatAttachAlert;->sendPressed(ZIIJZ)Z

    move-result p1

    .line 3500
    :goto_1
    iget-object p2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->messageSendPreview:Lorg/telegram/ui/MessageSendPreview;

    if-eqz p2, :cond_3

    xor-int/2addr p1, v7

    .line 3501
    invoke-virtual {p2, p1}, Lorg/telegram/ui/MessageSendPreview;->dismiss(Z)V

    const/4 p1, 0x0

    .line 3502
    iput-object p1, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->messageSendPreview:Lorg/telegram/ui/MessageSendPreview;

    :cond_3
    return-void
.end method

.method private synthetic lambda$new$25(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)V
    .locals 9

    .line 3471
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->messageSendPreview:Lorg/telegram/ui/MessageSendPreview;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lorg/telegram/ui/MessageSendPreview;->getSelectedEffect()J

    move-result-wide v0

    :goto_0
    move-wide v6, v0

    goto :goto_1

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 3472
    :goto_1
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    iput-wide v6, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->effectId:J

    invoke-virtual {p3, v6, v7}, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->setEffect(J)V

    .line 3473
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->forceKeyboardOnDismiss()V

    .line 3474
    iget p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentLimit:I

    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->codepointCount:I

    sub-int/2addr p3, v0

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-gez p3, :cond_3

    .line 3475
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->captionLimitView:Lorg/telegram/ui/Components/NumberTextView;

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->shakeView(Landroid/view/View;)V

    .line 3476
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->topCaptionLimitView:Lorg/telegram/ui/Components/NumberTextView;

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->shakeView(Landroid/view/View;)V

    .line 3478
    :try_start_0
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    const/4 p3, 0x3

    const/4 v2, 0x2

    invoke-virtual {p2, p3, v2}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3480
    :catch_0
    iget p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/MessagesController;->premiumFeaturesBlocked()Z

    move-result p2

    if-nez p2, :cond_1

    iget p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget p2, p2, Lorg/telegram/messenger/MessagesController;->captionLengthLimitPremium:I

    iget p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->codepointCount:I

    if-le p2, p3, :cond_1

    .line 3481
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->showCaptionLimitBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 3483
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->messageSendPreview:Lorg/telegram/ui/MessageSendPreview;

    if-eqz p1, :cond_2

    .line 3484
    invoke-virtual {p1, v1}, Lorg/telegram/ui/MessageSendPreview;->dismiss(Z)V

    .line 3485
    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->messageSendPreview:Lorg/telegram/ui/MessageSendPreview;

    :cond_2
    return-void

    .line 3489
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez p1, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of p3, p1, Lorg/telegram/ui/ChatActivity;

    if-eqz p3, :cond_4

    check-cast p1, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->isInScheduleMode()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 3490
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    check-cast p3, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p3}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v2

    new-instance p3, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda56;

    invoke-direct {p3, p0, v6, v7}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda56;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;J)V

    invoke-static {p1, v2, v3, p3, p2}, Lorg/telegram/ui/Components/AlertsCreator;->createScheduleDatePickerDialog(Landroid/content/Context;JLorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerDelegate;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    move-object v2, p0

    goto :goto_4

    .line 3507
    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    const/4 p2, 0x1

    if-eq v2, p1, :cond_7

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoPreviewLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    if-ne v2, p1, :cond_5

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    .line 3510
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->isCaptionAbove()Z

    move-result v8

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual/range {v2 .. v8}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->sendSelectedItems(ZIIJZ)Z

    move-result p1

    if-nez p1, :cond_6

    .line 3511
    iput-boolean p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->allowPassConfirmationAlert:Z

    .line 3512
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss()V

    :cond_6
    move-object v2, p0

    move p1, v1

    goto :goto_3

    :cond_7
    :goto_2
    const/4 v5, 0x0

    .line 3508
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->isCaptionAbove()Z

    move-result v8

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/ChatAttachAlert;->sendPressed(ZIIJZ)Z

    move-result p1

    .line 3515
    :goto_3
    iget-object p3, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->messageSendPreview:Lorg/telegram/ui/MessageSendPreview;

    if-eqz p3, :cond_8

    xor-int/2addr p1, p2

    .line 3516
    invoke-virtual {p3, p1}, Lorg/telegram/ui/MessageSendPreview;->dismiss(Z)V

    .line 3517
    iput-object v0, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->messageSendPreview:Lorg/telegram/ui/MessageSendPreview;

    .line 3520
    :cond_8
    :goto_4
    invoke-virtual {p0, v1, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->setCaptionAbove(ZZ)V

    return-void
.end method

.method private synthetic lambda$new$26(Lorg/telegram/messenger/MessageObject;Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;Landroid/view/View;)V
    .locals 2

    .line 3760
    iget-boolean p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->captionAbove:Z

    const/4 v0, 0x1

    xor-int/2addr p3, v0

    invoke-virtual {p0, p3}, Lorg/telegram/ui/Components/ChatAttachAlert;->setCaptionAbove(Z)V

    .line 3761
    iget-object p3, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->captionAbove:Z

    iput-boolean v1, p3, Lorg/telegram/tgnet/TLRPC$Message;->invert_media:Z

    xor-int/lit8 p3, v1, 0x1

    .line 3762
    invoke-virtual {p2, p3, v0}, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;->setState(ZZ)V

    .line 3763
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->messageSendPreview:Lorg/telegram/ui/MessageSendPreview;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/MessageSendPreview;->changeMessage(Lorg/telegram/messenger/MessageObject;)V

    .line 3764
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->captionItem:Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;

    if-eqz p1, :cond_0

    .line 3765
    iget-boolean p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->captionAbove:Z

    xor-int/2addr p2, v0

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;->setState(ZZ)V

    .line 3767
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->messageSendPreview:Lorg/telegram/ui/MessageSendPreview;

    iget-boolean p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->captionAbove:Z

    xor-int/2addr p2, v0

    invoke-virtual {p1, p2}, Lorg/telegram/ui/MessageSendPreview;->scrollTo(Z)V

    return-void
.end method

.method private synthetic lambda$new$27(ZII)V
    .locals 9

    .line 3822
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->messageSendPreview:Lorg/telegram/ui/MessageSendPreview;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/MessageSendPreview;->getSelectedEffect()J

    move-result-wide v0

    :goto_0
    move-wide v6, v0

    goto :goto_1

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 3823
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    iput-wide v6, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->effectId:J

    invoke-virtual {v0, v6, v7}, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->setEffect(J)V

    .line 3825
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    if-eq v2, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoPreviewLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    if-ne v2, v0, :cond_2

    :cond_1
    move v3, p1

    move v4, p2

    move v5, p3

    goto :goto_2

    .line 3828
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->isCaptionAbove()Z

    move-result v8

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v2 .. v8}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->sendSelectedItems(ZIIJZ)Z

    move-result p1

    if-nez p1, :cond_3

    .line 3829
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss()V

    :cond_3
    const/4 p1, 0x0

    move-object v2, p0

    goto :goto_3

    .line 3826
    :goto_2
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->isCaptionAbove()Z

    move-result v8

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/ChatAttachAlert;->sendPressed(ZIIJZ)Z

    move-result p1

    .line 3832
    :goto_3
    iget-object p2, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->messageSendPreview:Lorg/telegram/ui/MessageSendPreview;

    if-eqz p2, :cond_4

    xor-int/lit8 p1, p1, 0x1

    .line 3833
    invoke-virtual {p2, p1}, Lorg/telegram/ui/MessageSendPreview;->dismiss(Z)V

    const/4 p1, 0x0

    .line 3834
    iput-object p1, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->messageSendPreview:Lorg/telegram/ui/MessageSendPreview;

    :cond_4
    return-void
.end method

.method private synthetic lambda$new$28(JLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 2

    .line 3821
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda50;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda50;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-static {v0, p1, p2, v1, p3}, Lorg/telegram/ui/Components/AlertsCreator;->createScheduleDatePickerDialog(Landroid/content/Context;JLorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerDelegate;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    return-void
.end method

.method private synthetic lambda$new$29(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageSuggestionParams;)V
    .locals 7

    .line 3847
    iput-object p2, p1, Lorg/telegram/ui/ChatActivity;->messageSuggestionParams:Lorg/telegram/messenger/MessageSuggestionParams;

    .line 3848
    iget-wide v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->effectId:J

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->isCaptionAbove()Z

    move-result v6

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/ChatAttachAlert;->sendPressed(ZIIJZ)Z

    move-result p1

    .line 3849
    iget-object p2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->messageSendPreview:Lorg/telegram/ui/MessageSendPreview;

    if-eqz p2, :cond_0

    xor-int/lit8 p1, p1, 0x1

    .line 3850
    invoke-virtual {p2, p1}, Lorg/telegram/ui/MessageSendPreview;->dismiss(Z)V

    const/4 p1, 0x0

    .line 3851
    iput-object p1, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->messageSendPreview:Lorg/telegram/ui/MessageSendPreview;

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$3(Landroid/view/View;)V
    .locals 1

    .line 2210
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    if-eqz p1, :cond_0

    const/16 v0, 0x28

    .line 2211
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onMenuItemClick(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$30(JLorg/telegram/ui/ChatActivity;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 10

    .line 3843
    new-instance v0, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    .line 3844
    iget-object v3, p3, Lorg/telegram/ui/ChatActivity;->messageSuggestionParams:Lorg/telegram/messenger/MessageSuggestionParams;

    if-eqz v3, :cond_0

    :goto_0
    move-object v5, v3

    goto :goto_1

    :cond_0
    invoke-static {}, Lorg/telegram/messenger/MessageSuggestionParams;->empty()Lorg/telegram/messenger/MessageSuggestionParams;

    move-result-object v3

    goto :goto_0

    :goto_1
    new-instance v9, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda58;

    invoke-direct {v9, p0, p3}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda58;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/ui/ChatActivity;)V

    const/4 v8, 0x0

    move-wide v3, p1

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v9}, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;-><init>(Landroid/content/Context;IJLorg/telegram/messenger/MessageSuggestionParams;Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ILorg/telegram/messenger/Utilities$Callback;)V

    .line 3853
    invoke-virtual {v0}, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->show()V

    return-void
.end method

.method private synthetic lambda$new$31()V
    .locals 9

    .line 3858
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->messageSendPreview:Lorg/telegram/ui/MessageSendPreview;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/MessageSendPreview;->getSelectedEffect()J

    move-result-wide v0

    :goto_0
    move-wide v6, v0

    goto :goto_1

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 3859
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    iput-wide v6, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->effectId:J

    invoke-virtual {v0, v6, v7}, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->setEffect(J)V

    .line 3861
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    if-eq v2, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoPreviewLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    if-ne v2, v0, :cond_1

    goto :goto_2

    :cond_1
    const/4 v5, 0x0

    .line 3864
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->isCaptionAbove()Z

    move-result v8

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v2 .. v8}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->sendSelectedItems(ZIIJZ)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3865
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss()V

    :cond_2
    const/4 v0, 0x0

    move-object v2, p0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v5, 0x0

    .line 3862
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->isCaptionAbove()Z

    move-result v8

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/ChatAttachAlert;->sendPressed(ZIIJZ)Z

    move-result v0

    .line 3868
    :goto_3
    iget-object v1, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->messageSendPreview:Lorg/telegram/ui/MessageSendPreview;

    if-eqz v1, :cond_4

    xor-int/lit8 v0, v0, 0x1

    .line 3869
    invoke-virtual {v1, v0}, Lorg/telegram/ui/MessageSendPreview;->dismiss(Z)V

    const/4 v0, 0x0

    .line 3870
    iput-object v0, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->messageSendPreview:Lorg/telegram/ui/MessageSendPreview;

    :cond_4
    return-void
.end method

.method private synthetic lambda$new$32(Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Ljava/lang/Long;Ljava/lang/Runnable;)V
    .locals 4

    .line 3879
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    .line 3880
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->setStarsPrice(J)V

    .line 3881
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p3, v0, v2

    if-lez p3, :cond_0

    .line 3882
    sget p3, Lorg/telegram/messenger/R$string;->PaidMediaPriceButton:I

    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setText(Ljava/lang/CharSequence;)V

    .line 3883
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-int p3, v0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Stars"

    invoke-static {v1, p3, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setSubtext(Ljava/lang/CharSequence;)V

    .line 3884
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->messageSendPreview:Lorg/telegram/ui/MessageSendPreview;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/MessageSendPreview;->setStars(J)V

    return-void

    .line 3886
    :cond_0
    sget p2, Lorg/telegram/messenger/R$string;->PaidMediaButton:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setText(Ljava/lang/CharSequence;)V

    const/4 p2, 0x0

    .line 3887
    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setSubtext(Ljava/lang/CharSequence;)V

    .line 3888
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->messageSendPreview:Lorg/telegram/ui/MessageSendPreview;

    invoke-virtual {p1, v2, v3}, Lorg/telegram/ui/MessageSendPreview;->setStars(J)V

    return-void
.end method

.method private synthetic lambda$new$33(Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)V
    .locals 6

    .line 3877
    iget-object p4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    if-nez p4, :cond_0

    return-void

    .line 3878
    :cond_0
    invoke-virtual {p4}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->getStarsPrice()J

    move-result-wide v1

    new-instance v4, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda52;

    invoke-direct {v4, p0, p2}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda52;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;)V

    const/4 v3, 0x1

    move-object v0, p1

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Stars/StarsIntroActivity;->showMediaPriceSheet(Landroid/content/Context;JZLorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/BottomSheet;

    return-void
.end method

.method private synthetic lambda$new$34(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;)Z
    .locals 36

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v5, p2

    move-object/from16 v9, p3

    .line 3437
    iget-wide v3, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->dialogId:J

    const-wide/16 v10, 0x0

    cmp-long v0, v3, v10

    const/4 v12, 0x0

    if-nez v0, :cond_0

    iget-object v0, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v0, v0, Lorg/telegram/ui/ChatActivity;

    if-eqz v0, :cond_1

    :cond_0
    iget v0, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->currentLimit:I

    iget v6, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->codepointCount:I

    sub-int/2addr v0, v6

    if-gez v0, :cond_2

    :cond_1
    return v12

    .line 3445
    :cond_2
    iget-object v0, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v6, v0, Lorg/telegram/ui/ChatActivity;

    if-eqz v6, :cond_5

    .line 3446
    check-cast v0, Lorg/telegram/ui/ChatActivity;

    .line 3447
    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    .line 3448
    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    .line 3449
    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getReplyMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    .line 3450
    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getReplyTopMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v6

    .line 3451
    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->isInScheduleMode()Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getChatMode()I

    move-result v7

    const/4 v8, 0x5

    if-ne v7, v8, :cond_3

    goto :goto_0

    .line 3454
    :cond_3
    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v7

    move-object v14, v0

    move-object v15, v3

    move-object/from16 v35, v6

    move-object v6, v4

    move-wide v3, v7

    move-object/from16 v7, v35

    goto :goto_1

    :cond_4
    :goto_0
    return v12

    .line 3457
    :cond_5
    iget v0, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    move-object v15, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v14, 0x0

    .line 3460
    :goto_1
    iget-object v0, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->messageSendPreview:Lorg/telegram/ui/MessageSendPreview;

    if-eqz v0, :cond_6

    .line 3461
    invoke-virtual {v0}, Lorg/telegram/ui/MessageSendPreview;->dismiss()V

    .line 3463
    :cond_6
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlert$24;

    invoke-direct {v0, v1, v2, v5}, Lorg/telegram/ui/Components/ChatAttachAlert$24;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->messageSendPreview:Lorg/telegram/ui/MessageSendPreview;

    .line 3470
    iget-object v8, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    move-wide/from16 v16, v10

    new-instance v10, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda43;

    invoke-direct {v10, v1, v9, v5}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda43;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v0, v8, v12, v10}, Lorg/telegram/ui/MessageSendPreview;->setSendButton(Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;ZLandroid/view/View$OnClickListener;)V

    .line 3527
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 3529
    iget-object v0, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    iget-object v8, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    const/high16 v18, 0x41200000    # 10.0f

    const-string v13, ""

    const/16 v19, 0x2

    if-eq v0, v8, :cond_7

    iget-object v11, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->photoPreviewLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    if-ne v0, v11, :cond_8

    :cond_7
    move-object/from16 v23, v14

    goto/16 :goto_10

    .line 3639
    :cond_8
    iget-object v6, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->contactsLayout:Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;

    if-ne v0, v6, :cond_c

    .line 3640
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->getCommentView()Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 3642
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    .line 3643
    iput v12, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    const/4 v6, 0x1

    .line 3644
    iput-boolean v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    .line 3645
    iget v6, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget v7, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {v7}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lorg/telegram/messenger/MessagesController;->getPeer(J)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v6

    iput-object v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 3646
    iget v6, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Lorg/telegram/messenger/MessagesController;->getPeer(J)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v6

    iput-object v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 3647
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->getCommentView()Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/ui/Components/EditTextEmoji;->getText()Landroid/text/Editable;

    move-result-object v6

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/CharSequence;

    aput-object v6, v8, v12

    .line 3648
    aget-object v6, v8, v12

    invoke-static {v7, v6}, Lorg/telegram/messenger/MessageObject;->addLinks(ZLjava/lang/CharSequence;)V

    .line 3649
    iget v6, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v6

    invoke-virtual {v6, v8, v7}, Lorg/telegram/messenger/MediaDataController;->getEntities([Ljava/lang/CharSequence;Z)Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    .line 3650
    aget-object v6, v8, v12

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 3651
    new-instance v6, Lorg/telegram/messenger/MessageObject;

    iget v8, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-direct {v6, v8, v0, v7, v12}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    .line 3652
    iput-boolean v7, v6, Lorg/telegram/messenger/MessageObject;->sendPreview:Z

    .line 3653
    iput-boolean v7, v6, Lorg/telegram/messenger/MessageObject;->notime:Z

    .line 3654
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, v6, Lorg/telegram/messenger/MessageObject;->isOutOwnerCached:Ljava/lang/Boolean;

    .line 3655
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    const/4 v6, 0x1

    goto :goto_2

    :cond_9
    move v0, v12

    move v6, v0

    .line 3657
    :goto_2
    iget-object v7, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->contactsLayout:Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;->getSelected()Ljava/util/ArrayList;

    move-result-object v7

    move v8, v12

    .line 3658
    :goto_3
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v8, v11, :cond_b

    .line 3659
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$User;

    .line 3661
    new-instance v11, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v11}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    add-int/lit8 v18, v0, 0x1

    .line 3662
    iput v0, v11, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    const/4 v12, 0x1

    .line 3663
    iput-boolean v12, v11, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    .line 3664
    iget v0, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v12, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {v12}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v12

    move-object/from16 v20, v7

    move/from16 v23, v8

    invoke-virtual {v12}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Lorg/telegram/messenger/MessagesController;->getPeer(J)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v0

    iput-object v0, v11, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 3665
    iget v0, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Lorg/telegram/messenger/MessagesController;->getPeer(J)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v0

    iput-object v0, v11, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 3666
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaContact;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaContact;-><init>()V

    iput-object v0, v11, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 3667
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    iput-object v7, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->phone_number:Ljava/lang/String;

    .line 3668
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iput-object v7, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->first_name:Ljava/lang/String;

    .line 3669
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    iput-object v7, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->last_name:Ljava/lang/String;

    .line 3670
    iget-object v0, v6, Lorg/telegram/tgnet/TLRPC$User;->restriction_reason:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, v6, Lorg/telegram/tgnet/TLRPC$User;->restriction_reason:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$RestrictionReason;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$RestrictionReason;->text:Ljava/lang/String;

    const-string v8, "BEGIN:VCARD"

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3671
    iget-object v0, v11, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v8, v6, Lorg/telegram/tgnet/TLRPC$User;->restriction_reason:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$RestrictionReason;

    iget-object v7, v8, Lorg/telegram/tgnet/TLRPC$RestrictionReason;->text:Ljava/lang/String;

    iput-object v7, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->vcard:Ljava/lang/String;

    goto :goto_4

    .line 3673
    :cond_a
    iget-object v0, v11, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iput-object v13, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->vcard:Ljava/lang/String;

    .line 3675
    :goto_4
    iget-object v0, v11, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-wide v6, v6, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iput-wide v6, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->user_id:J

    .line 3676
    new-instance v0, Lorg/telegram/messenger/MessageObject;

    iget v6, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    const/4 v7, 0x0

    const/4 v12, 0x1

    invoke-direct {v0, v6, v11, v12, v7}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    .line 3677
    iput-boolean v12, v0, Lorg/telegram/messenger/MessageObject;->sendPreview:Z

    .line 3678
    iput-boolean v12, v0, Lorg/telegram/messenger/MessageObject;->notime:Z

    .line 3679
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v6, v0, Lorg/telegram/messenger/MessageObject;->isOutOwnerCached:Ljava/lang/Boolean;

    .line 3680
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v23, 0x1

    move/from16 v0, v18

    move-object/from16 v7, v20

    const/4 v6, 0x1

    const/4 v12, 0x0

    goto/16 :goto_3

    :cond_b
    move-wide/from16 v33, v3

    move/from16 v25, v6

    move-object/from16 v23, v14

    const/4 v0, 0x0

    :goto_5
    const/16 v24, 0x0

    goto/16 :goto_1f

    .line 3682
    :cond_c
    iget-object v6, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->documentLayout:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    if-ne v0, v6, :cond_13

    const/4 v0, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 3683
    :goto_6
    iget-object v11, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->documentLayout:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    iget-object v11, v11, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->selectedFilesOrder:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v7, v11, :cond_12

    .line 3684
    iget-object v11, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->documentLayout:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    iget-object v11, v11, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->selectedFilesOrder:Ljava/util/ArrayList;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    if-nez v11, :cond_d

    goto :goto_8

    .line 3686
    :cond_d
    sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v12

    if-gez v12, :cond_e

    move-object v12, v11

    goto :goto_7

    :cond_e
    add-int/lit8 v12, v12, 0x1

    .line 3687
    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 3688
    :goto_7
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_f

    :goto_8
    move-object/from16 v23, v14

    goto/16 :goto_b

    .line 3689
    :cond_f
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    add-int/lit8 v13, v8, 0x1

    .line 3690
    iput v8, v6, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    const/4 v8, 0x1

    .line 3691
    iput-boolean v8, v6, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    .line 3692
    iget v8, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {v8}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    move-object/from16 v18, v0

    iget v0, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    move/from16 v20, v13

    move-object/from16 v23, v14

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v13

    invoke-virtual {v8, v13, v14}, Lorg/telegram/messenger/MessagesController;->getPeer(J)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v0

    iput-object v0, v6, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 3693
    iget v0, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Lorg/telegram/messenger/MessagesController;->getPeer(J)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v0

    iput-object v0, v6, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 3694
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;-><init>()V

    iput-object v0, v6, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 3695
    iput-object v11, v6, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    .line 3696
    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_document;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_document;-><init>()V

    iput-object v8, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 3697
    iget-object v0, v6, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iput-object v12, v0, Lorg/telegram/tgnet/TLRPC$Document;->file_name:Ljava/lang/String;

    .line 3698
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v11

    iput-wide v11, v0, Lorg/telegram/tgnet/TLRPC$Document;->size:J

    .line 3699
    iget-object v0, v6, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    if-nez v7, :cond_10

    .line 3700
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->getCommentView()Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getText()Landroid/text/Editable;

    move-result-object v0

    const/4 v12, 0x1

    new-array v8, v12, [Ljava/lang/CharSequence;

    const/4 v11, 0x0

    aput-object v0, v8, v11

    .line 3701
    iget v0, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0, v8, v12}, Lorg/telegram/messenger/MediaDataController;->getEntities([Ljava/lang/CharSequence;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    .line 3702
    aget-object v0, v8, v11

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    goto :goto_9

    :cond_10
    const/4 v11, 0x0

    const/4 v12, 0x1

    .line 3704
    :goto_9
    new-instance v0, Lorg/telegram/messenger/MessageObject;

    iget v8, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-direct {v0, v8, v6, v12, v11}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    .line 3705
    iput-boolean v12, v0, Lorg/telegram/messenger/MessageObject;->attachPathExists:Z

    .line 3706
    iput-boolean v12, v0, Lorg/telegram/messenger/MessageObject;->sendPreview:Z

    .line 3707
    iput-boolean v12, v0, Lorg/telegram/messenger/MessageObject;->notime:Z

    .line 3708
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v8, v0, Lorg/telegram/messenger/MessageObject;->isOutOwnerCached:Ljava/lang/Boolean;

    .line 3709
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v7, :cond_11

    if-nez v18, :cond_11

    .line 3711
    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_11

    :goto_a
    move/from16 v8, v20

    const/4 v6, 0x1

    goto :goto_b

    :cond_11
    move-object/from16 v0, v18

    goto :goto_a

    :goto_b
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v14, v23

    goto/16 :goto_6

    :cond_12
    move-object/from16 v18, v0

    move-object/from16 v23, v14

    move-wide/from16 v33, v3

    move/from16 v25, v6

    goto/16 :goto_5

    :cond_13
    move-object/from16 v23, v14

    .line 3715
    iget-object v6, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->audioLayout:Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;

    if-ne v0, v6, :cond_18

    .line 3717
    invoke-virtual {v6}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->getSelected()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3718
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v7, 0x0

    .line 3719
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    .line 3720
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->getCommentView()Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/ui/Components/EditTextEmoji;->getText()Landroid/text/Editable;

    move-result-object v6

    const/4 v12, 0x1

    new-array v8, v12, [Ljava/lang/CharSequence;

    aput-object v6, v8, v7

    .line 3721
    aget-object v6, v8, v7

    invoke-static {v12, v6}, Lorg/telegram/messenger/MessageObject;->addLinks(ZLjava/lang/CharSequence;)V

    .line 3722
    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v11, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {v11}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v11

    invoke-virtual {v11, v8, v12}, Lorg/telegram/messenger/MediaDataController;->getEntities([Ljava/lang/CharSequence;Z)Ljava/util/ArrayList;

    move-result-object v11

    iput-object v11, v6, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    .line 3723
    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    aget-object v8, v8, v7

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 3724
    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_14

    .line 3726
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->generateCaption()V

    goto :goto_c

    :cond_14
    const/4 v0, 0x0

    .line 3729
    :goto_c
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v12, 0x1

    if-le v6, v12, :cond_17

    const/4 v6, 0x0

    :goto_d
    int-to-double v7, v6

    .line 3730
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    int-to-float v11, v11

    div-float v11, v11, v18

    float-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v11

    cmpg-double v7, v7, v11

    if-gez v7, :cond_17

    .line 3731
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v7

    mul-int/lit8 v8, v6, 0xa

    sub-int/2addr v7, v8

    const/16 v11, 0xa

    invoke-static {v11, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 3732
    sget-object v11, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v11}, Ljava/util/Random;->nextLong()J

    move-result-wide v11

    const/4 v13, 0x0

    :goto_e
    if-ge v13, v7, :cond_16

    add-int v14, v8, v13

    move-object/from16 v24, v0

    .line 3735
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v14, v0, :cond_15

    goto :goto_f

    .line 3738
    :cond_15
    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iput-wide v11, v0, Lorg/telegram/tgnet/TLRPC$Message;->grouped_id:J

    :goto_f
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, v24

    goto :goto_e

    :cond_16
    move-object/from16 v24, v0

    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    :cond_17
    move-object/from16 v24, v0

    move-wide/from16 v33, v3

    move-object/from16 v0, v24

    const/16 v24, 0x0

    const/16 v25, 0x1

    goto/16 :goto_1f

    :cond_18
    move-wide/from16 v33, v3

    const/4 v0, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    goto/16 :goto_1f

    .line 3530
    :goto_10
    invoke-virtual {v8}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->getSelectedPhotos()Ljava/util/HashMap;

    move-result-object v8

    .line 3531
    iget-object v0, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->getSelectedPhotosOrder()Ljava/util/ArrayList;

    move-result-object v11

    .line 3532
    invoke-virtual {v8}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 3533
    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v0

    int-to-float v0, v0

    div-float v0, v0, v18

    move-object v14, v13

    float-to-double v12, v0

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v12, v12

    const/4 v0, 0x0

    const/4 v13, 0x0

    const/16 v18, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    :goto_11
    if-ge v13, v12, :cond_29

    .line 3535
    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v26

    mul-int/lit8 v27, v13, 0xa

    move-object/from16 v28, v0

    sub-int v0, v26, v27

    move-object/from16 v20, v7

    const/16 v2, 0xa

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 3536
    sget-object v0, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    move-wide/from16 v29, v3

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    move/from16 v0, v18

    const/4 v4, 0x0

    :goto_12
    if-ge v4, v7, :cond_28

    move/from16 v26, v4

    add-int v4, v27, v26

    move/from16 v31, v7

    .line 3538
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt v4, v7, :cond_19

    move-object/from16 v32, v8

    move-wide/from16 v33, v29

    move-wide/from16 v29, v2

    goto/16 :goto_1c

    .line 3541
    :cond_19
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 3542
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    add-int/lit8 v24, v0, 0x1

    .line 3543
    iput v0, v7, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move-object/from16 v32, v8

    const/4 v8, 0x1

    .line 3544
    iput-boolean v8, v7, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    .line 3545
    iget v0, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v8, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {v8}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Lorg/telegram/messenger/MessagesController;->getPeer(J)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v0

    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 3546
    iget v0, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    move-wide/from16 v8, v29

    invoke-virtual {v0, v8, v9}, Lorg/telegram/messenger/MessagesController;->getPeer(J)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v0

    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 3547
    iget-boolean v0, v4, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    move/from16 v25, v0

    if-nez v0, :cond_1a

    iget-object v0, v4, Lorg/telegram/messenger/MediaController$MediaEditState;->imagePath:Ljava/lang/String;

    if-eqz v0, :cond_1a

    .line 3548
    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    goto :goto_13

    .line 3549
    :cond_1a
    iget-object v0, v4, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    if-eqz v0, :cond_1b

    .line 3550
    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    :cond_1b
    :goto_13
    if-lez v31, :cond_1c

    .line 3553
    iput-wide v2, v7, Lorg/telegram/tgnet/TLRPC$Message;->grouped_id:J

    :cond_1c
    move-wide/from16 v29, v2

    .line 3555
    iget v2, v4, Lorg/telegram/messenger/MediaController$PhotoEntry;->width:I

    .line 3556
    iget v3, v4, Lorg/telegram/messenger/MediaController$PhotoEntry;->height:I

    .line 3557
    iget v0, v4, Lorg/telegram/messenger/MediaController$PhotoEntry;->orientation:I

    if-eqz v25, :cond_1f

    .line 3559
    iget v0, v4, Lorg/telegram/messenger/MediaController$PhotoEntry;->videoOrientation:I

    move/from16 v25, v2

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1e

    .line 3562
    :try_start_0
    new-instance v2, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v2}, Landroid/media/MediaMetadataRetriever;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3563
    :try_start_1
    iget-object v0, v4, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const/16 v0, 0x18

    .line 3564
    invoke-virtual {v2, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v4, Lorg/telegram/messenger/MediaController$PhotoEntry;->videoOrientation:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3571
    :try_start_2
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_17

    :catch_0
    move-exception v0

    .line 3573
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_17

    :catchall_0
    move-exception v0

    move-object v13, v2

    move-object v2, v0

    goto :goto_15

    :catch_1
    move-exception v0

    move-object/from16 v33, v2

    const/4 v2, 0x0

    goto :goto_14

    :catchall_1
    move-exception v0

    move-object v2, v0

    const/4 v13, 0x0

    goto :goto_15

    :catch_2
    move-exception v0

    const/4 v2, 0x0

    const/16 v33, 0x0

    .line 3566
    :goto_14
    :try_start_3
    iput v2, v4, Lorg/telegram/messenger/MediaController$PhotoEntry;->videoOrientation:I

    .line 3567
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v33, :cond_1e

    .line 3571
    :try_start_4
    invoke-virtual/range {v33 .. v33}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_17

    :catchall_2
    move-exception v0

    move-object v2, v0

    move-object/from16 v13, v33

    :goto_15
    if-eqz v13, :cond_1d

    :try_start_5
    invoke-virtual {v13}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_16

    :catch_3
    move-exception v0

    .line 3573
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 3576
    :cond_1d
    :goto_16
    throw v2

    .line 3578
    :cond_1e
    :goto_17
    iget v0, v4, Lorg/telegram/messenger/MediaController$PhotoEntry;->videoOrientation:I

    goto :goto_18

    :cond_1f
    move/from16 v25, v2

    .line 3580
    :goto_18
    div-int/lit8 v0, v0, 0x5a

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_20

    move v2, v3

    move/from16 v3, v25

    goto :goto_19

    :cond_20
    move/from16 v2, v25

    .line 3585
    :goto_19
    iget-boolean v0, v4, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    if-eqz v0, :cond_21

    .line 3586
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;-><init>()V

    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-wide/from16 v33, v8

    .line 3587
    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_document;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_document;-><init>()V

    iput-object v8, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 3588
    iget-object v0, v7, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v8

    iget-object v9, v7, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    .line 3589
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;-><init>()V

    .line 3590
    iput v2, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->w:I

    .line 3591
    iput v3, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->h:I

    .line 3592
    iget v2, v4, Lorg/telegram/messenger/MediaController$PhotoEntry;->duration:I

    int-to-double v2, v2

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->duration:D

    .line 3593
    iget-object v2, v7, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    :cond_21
    move-wide/from16 v33, v8

    .line 3595
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;-><init>()V

    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 3596
    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_photo;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_photo;-><init>()V

    iput-object v8, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    .line 3597
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_photoSize;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_photoSize;-><init>()V

    .line 3598
    iput v2, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    .line 3599
    iput v3, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    .line 3600
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;-><init>()V

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 3601
    iget-object v2, v7, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3603
    :goto_1a
    iget-object v0, v7, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-boolean v2, v4, Lorg/telegram/messenger/MediaController$PhotoEntry;->hasSpoiler:Z

    iput-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->spoiler:Z

    .line 3604
    iget-object v0, v4, Lorg/telegram/messenger/MediaController$MediaEditState;->caption:Ljava/lang/CharSequence;

    if-nez v0, :cond_22

    move-object v0, v14

    goto :goto_1b

    :cond_22
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1b
    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 3605
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_23

    if-nez v13, :cond_23

    if-nez v26, :cond_23

    .line 3606
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->getCommentView()Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getText()Landroid/text/Editable;

    move-result-object v0

    const/4 v8, 0x1

    new-array v2, v8, [Ljava/lang/CharSequence;

    const/16 v22, 0x0

    aput-object v0, v2, v22

    .line 3607
    aget-object v0, v2, v22

    invoke-static {v8, v0}, Lorg/telegram/messenger/MessageObject;->addLinks(ZLjava/lang/CharSequence;)V

    .line 3608
    iget v0, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0, v2, v8}, Lorg/telegram/messenger/MediaDataController;->getEntities([Ljava/lang/CharSequence;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    .line 3609
    aget-object v0, v2, v22

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    :cond_23
    if-nez v13, :cond_25

    if-eqz v6, :cond_25

    .line 3611
    iget-boolean v0, v6, Lorg/telegram/messenger/MessageObject;->isTopicMainMessage:Z

    if-nez v0, :cond_25

    .line 3612
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageReplyHeader;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageReplyHeader;-><init>()V

    if-eqz v20, :cond_24

    .line 3614
    iget v2, v0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->flags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->flags:I

    .line 3615
    invoke-virtual/range {v20 .. v20}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->reply_to_top_id:I

    .line 3617
    :cond_24
    iget v2, v0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->flags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->flags:I

    .line 3618
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->reply_to_msg_id:I

    .line 3619
    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$Message;->reply_to:Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;

    .line 3621
    :cond_25
    new-instance v0, Lorg/telegram/messenger/MessageObject;

    iget v2, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    const/4 v3, 0x0

    const/4 v8, 0x1

    invoke-direct {v0, v2, v7, v8, v3}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    if-nez v13, :cond_26

    if-eqz v6, :cond_26

    .line 3622
    iget-boolean v2, v6, Lorg/telegram/messenger/MessageObject;->isTopicMainMessage:Z

    if-nez v2, :cond_26

    .line 3623
    iput-object v6, v0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 3625
    :cond_26
    iput-object v4, v0, Lorg/telegram/messenger/MessageObject;->sendPreviewEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 3626
    iput-boolean v8, v0, Lorg/telegram/messenger/MessageObject;->sendPreview:Z

    .line 3627
    iput-boolean v8, v0, Lorg/telegram/messenger/MessageObject;->notime:Z

    .line 3628
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v2, v0, Lorg/telegram/messenger/MessageObject;->isOutOwnerCached:Ljava/lang/Boolean;

    .line 3630
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v28, :cond_27

    .line 3631
    iget-object v2, v7, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_27

    move-object/from16 v28, v0

    :cond_27
    move/from16 v0, v24

    const/16 v24, 0x1

    const/16 v25, 0x1

    :goto_1c
    add-int/lit8 v4, v26, 0x1

    move-object/from16 v9, p3

    move-wide/from16 v2, v29

    move/from16 v7, v31

    move-object/from16 v8, v32

    move-wide/from16 v29, v33

    goto/16 :goto_12

    :cond_28
    move-object/from16 v32, v8

    move-wide/from16 v33, v29

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v2, p1

    move-object/from16 v9, p3

    move/from16 v18, v0

    move-object/from16 v7, v20

    move-object/from16 v0, v28

    move-wide/from16 v3, v33

    goto/16 :goto_11

    :cond_29
    move-object/from16 v28, v0

    :goto_1d
    move-wide/from16 v33, v3

    goto :goto_1e

    :cond_2a
    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v28, 0x0

    goto :goto_1d

    :goto_1e
    move-object/from16 v0, v28

    .line 3745
    :goto_1f
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2b

    const/16 v22, 0x0

    return v22

    .line 3749
    :cond_2b
    iget-object v2, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v3, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    invoke-static {v2, v5, v3}, Lorg/telegram/ui/Components/ItemOptions;->makeOptions(Landroid/view/ViewGroup;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v9

    if-eqz v0, :cond_2c

    .line 3750
    iget-object v2, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    iget-object v3, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    if-eq v2, v3, :cond_2d

    iget-object v3, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->photoPreviewLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    if-ne v2, v3, :cond_2c

    goto :goto_20

    :cond_2c
    move-wide/from16 v11, v33

    goto :goto_21

    .line 3751
    :cond_2d
    :goto_20
    new-instance v2, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;

    sget v4, Lorg/telegram/messenger/R$raw;->position_below:I

    sget v3, Lorg/telegram/messenger/R$string;->CaptionAbove:I

    .line 3753
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v6, Lorg/telegram/messenger/R$raw;->position_above:I

    sget v7, Lorg/telegram/messenger/R$string;->CaptionBelow:I

    .line 3754
    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v8, v5

    move-wide/from16 v11, v33

    move-object v5, v3

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;-><init>(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 3758
    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-boolean v4, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->captionAbove:Z

    iput-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$Message;->invert_media:Z

    const/16 v21, 0x1

    xor-int/lit8 v3, v4, 0x1

    const/4 v7, 0x0

    invoke-virtual {v2, v3, v7}, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;->setState(ZZ)V

    .line 3759
    new-instance v3, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda44;

    invoke-direct {v3, v1, v0, v2}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda44;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/messenger/MessageObject;Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3769
    invoke-virtual {v9, v2}, Lorg/telegram/ui/Components/ItemOptions;->addView(Landroid/view/View;)Lorg/telegram/ui/Components/ItemOptions;

    .line 3770
    iget-object v0, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v0, :cond_2e

    .line 3771
    invoke-virtual {v9}, Lorg/telegram/ui/Components/ItemOptions;->addGap()Lorg/telegram/ui/Components/ItemOptions;

    .line 3775
    :cond_2e
    :goto_21
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->getCommentTextView()Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 3776
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlert$25;

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object/from16 v2, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/ChatAttachAlert$25;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    move-object v7, v6

    move-object v6, v2

    const/16 v2, 0x30

    const/4 v3, -0x1

    .line 3814
    invoke-static {v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v9, v0, v2}, Lorg/telegram/ui/Components/ItemOptions;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)Lorg/telegram/ui/Components/ItemOptions;

    goto :goto_22

    :cond_2f
    move-object/from16 v6, p1

    move-object/from16 v5, p2

    move-object/from16 v7, p3

    .line 3817
    :goto_22
    invoke-static {v15}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v8

    .line 3818
    iget-object v0, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v0, :cond_34

    if-eqz v23, :cond_30

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/ui/ChatActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isMonoForum(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-nez v0, :cond_34

    :cond_30
    if-eqz v23, :cond_31

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/ui/ChatActivity;->canScheduleMessage()Z

    move-result v0

    if-nez v0, :cond_32

    :cond_31
    iget-object v0, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->canScheduleMessages()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 3820
    :cond_32
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_calendar2:I

    if-eqz v8, :cond_33

    sget v2, Lorg/telegram/messenger/R$string;->SetReminder:I

    goto :goto_23

    :cond_33
    sget v2, Lorg/telegram/messenger/R$string;->ScheduleMessage:I

    :goto_23
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda45;

    invoke-direct {v3, v1, v11, v12, v5}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda45;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;JLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v9, v0, v2, v3}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    .line 3839
    :cond_34
    iget-object v0, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    iget-object v2, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    if-eq v0, v2, :cond_36

    iget-object v2, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->photoPreviewLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    if-ne v0, v2, :cond_35

    goto :goto_24

    :cond_35
    move-object/from16 v4, v23

    goto :goto_25

    :cond_36
    :goto_24
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getSelectedItemsCount()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_35

    if-eqz v23, :cond_35

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/ui/ChatActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isMonoForum(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 3842
    sget v13, Lorg/telegram/messenger/R$drawable;->input_suggest_paid_24:I

    sget v0, Lorg/telegram/messenger/R$string;->PostSuggestionsSendWithOffer:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v14

    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda46;

    move-wide v2, v11

    move-object/from16 v4, v23

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda46;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;JLorg/telegram/ui/ChatActivity;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v9, v13, v14, v0}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    .line 3856
    :goto_25
    iget-object v0, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v0, :cond_37

    if-nez v8, :cond_37

    .line 3857
    sget v0, Lorg/telegram/messenger/R$drawable;->input_notify_off:I

    sget v2, Lorg/telegram/messenger/R$string;->SendWithoutSound:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda47;

    invoke-direct {v3, v1}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda47;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v9, v0, v2, v3}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    .line 3874
    :cond_37
    iget-object v0, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v0, :cond_39

    if-eqz v24, :cond_39

    if-eqz v4, :cond_39

    invoke-virtual {v4}, Lorg/telegram/ui/ChatActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-virtual {v4}, Lorg/telegram/ui/ChatActivity;->getCurrentChatInfo()Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v0

    if-eqz v0, :cond_39

    invoke-virtual {v4}, Lorg/telegram/ui/ChatActivity;->getCurrentChatInfo()Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->paid_media_allowed:Z

    if-eqz v0, :cond_39

    .line 3875
    sget v0, Lorg/telegram/messenger/R$drawable;->menu_feature_paid:I

    sget v2, Lorg/telegram/messenger/R$string;->PaidMediaButton:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v9, v0, v2, v3}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ItemOptions;->getLast()Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v0

    .line 3876
    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda48;

    invoke-direct {v2, v1, v6, v0, v5}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda48;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3892
    iget-object v2, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->getStarsPrice()J

    move-result-wide v2

    cmp-long v4, v2, v16

    if-lez v4, :cond_38

    .line 3894
    sget v4, Lorg/telegram/messenger/R$string;->PaidMediaPriceButton:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setText(Ljava/lang/CharSequence;)V

    long-to-int v4, v2

    const/4 v5, 0x0

    .line 3895
    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "Stars"

    invoke-static {v6, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setSubtext(Ljava/lang/CharSequence;)V

    goto :goto_26

    .line 3897
    :cond_38
    sget v4, Lorg/telegram/messenger/R$string;->PaidMediaButton:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setText(Ljava/lang/CharSequence;)V

    const/4 v4, 0x0

    .line 3898
    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setSubtext(Ljava/lang/CharSequence;)V

    .line 3900
    :goto_26
    iget-object v0, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->messageSendPreview:Lorg/telegram/ui/MessageSendPreview;

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/MessageSendPreview;->setStars(J)V

    .line 3902
    :cond_39
    invoke-virtual {v9}, Lorg/telegram/ui/Components/ItemOptions;->setupSelectors()V

    .line 3903
    iget-object v0, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->messageSendPreview:Lorg/telegram/ui/MessageSendPreview;

    invoke-virtual {v0, v9}, Lorg/telegram/ui/MessageSendPreview;->setItemOptions(Lorg/telegram/ui/Components/ItemOptions;)V

    .line 3905
    iget-object v0, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->messageSendPreview:Lorg/telegram/ui/MessageSendPreview;

    invoke-virtual {v0, v10}, Lorg/telegram/ui/MessageSendPreview;->setMessageObjects(Ljava/util/ArrayList;)V

    .line 3906
    iget-object v0, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v0, :cond_3a

    cmp-long v0, v11, v16

    if-ltz v0, :cond_3a

    if-eqz v25, :cond_3a

    .line 3907
    iget-object v0, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->messageSendPreview:Lorg/telegram/ui/MessageSendPreview;

    invoke-virtual {v0, v7}, Lorg/telegram/ui/MessageSendPreview;->allowEffectSelector(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 3908
    iget-object v0, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->messageSendPreview:Lorg/telegram/ui/MessageSendPreview;

    iget-wide v2, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->effectId:J

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/MessageSendPreview;->setEffectId(J)V

    .line 3911
    :cond_3a
    iget-object v0, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->messageSendPreview:Lorg/telegram/ui/MessageSendPreview;

    invoke-virtual {v0}, Lorg/telegram/ui/MessageSendPreview;->show()V

    const/4 v0, 0x3

    move-object/from16 v2, p4

    move/from16 v3, v19

    .line 3914
    :try_start_6
    invoke-virtual {v2, v0, v3}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    :catch_4
    const/16 v21, 0x1

    return v21
.end method

.method private synthetic lambda$new$4(ZLandroid/view/View;)V
    .locals 6

    .line 2226
    iget p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarPicker:I

    if-eqz p2, :cond_0

    .line 2227
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->delegate:Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;

    invoke-interface {p1}, Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;->openAvatarsSearch()V

    .line 2228
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss()V

    return-void

    .line 2231
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2232
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2233
    new-instance v0, Lorg/telegram/ui/PhotoPickerSearchActivity;

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    move-object v5, p2

    check-cast v5, Lorg/telegram/ui/ChatActivity;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/PhotoPickerSearchActivity;-><init>(Ljava/util/HashMap;Ljava/util/ArrayList;IZLorg/telegram/ui/ChatActivity;)V

    .line 2234
    new-instance p2, Lorg/telegram/ui/Components/ChatAttachAlert$9;

    invoke-direct {p2, p0, v1, v2}, Lorg/telegram/ui/Components/ChatAttachAlert$9;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Ljava/util/HashMap;Ljava/util/ArrayList;)V

    invoke-virtual {v0, p2}, Lorg/telegram/ui/PhotoPickerSearchActivity;->setDelegate(Lorg/telegram/ui/PhotoPickerActivity$PhotoPickerActivityDelegate;)V

    .line 2285
    iget p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->maxSelectedPhotos:I

    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->allowOrder:Z

    invoke-virtual {v0, p2, v1}, Lorg/telegram/ui/PhotoPickerSearchActivity;->setMaxSelectedPhotos(IZ)V

    if-eqz p1, :cond_1

    .line 2287
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showAsSheet(Lorg/telegram/ui/ActionBar/BaseFragment;)[Lorg/telegram/ui/ActionBar/INavigationLayout;

    goto :goto_0

    .line 2289
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 2291
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss()V

    return-void
.end method

.method private synthetic lambda$new$5(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)V
    .locals 18

    move-object/from16 v1, p0

    .line 2302
    iget-object v0, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->optionsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->toggleSubMenu()V

    .line 2303
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    move-object/from16 v3, p1

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/PhotoViewer;->setParentActivity(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 2304
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/PhotoViewer;->setParentAlert(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    .line 2305
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    iget v2, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->maxSelectedPhotos:I

    iget-boolean v3, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->allowOrder:Z

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/PhotoViewer;->setMaxSelectedPhotos(IZ)V

    .line 2306
    iget-object v0, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->delegate:Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;

    invoke-interface {v0}, Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;->needEnterComment()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2307
    iget-object v0, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 2308
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getContainer()Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 2310
    :cond_0
    iget v0, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    const-string v2, "webp"

    invoke-static {v0, v2}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->makeCacheFile(ILjava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 2311
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    const/16 v4, 0x438

    if-gt v3, v4, :cond_1

    if-le v0, v4, :cond_2

    .line 2313
    :cond_1
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x44870000    # 1080.0f

    div-float/2addr v4, v5

    int-to-float v3, v3

    mul-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v0, v0

    mul-float/2addr v0, v4

    float-to-int v0, v0

    .line 2317
    :cond_2
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v0, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 2319
    :try_start_0
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->WEBP:Landroid/graphics/Bitmap$CompressFormat;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v5, 0x64

    invoke-virtual {v3, v0, v5, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2321
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2323
    :goto_0
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 2325
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2326
    new-instance v6, Lorg/telegram/messenger/MediaController$PhotoEntry;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v6 .. v17}, Lorg/telegram/messenger/MediaController$PhotoEntry;-><init>(IIJLjava/lang/String;IZIIJ)V

    .line 2327
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2328
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v4

    new-instance v9, Lorg/telegram/ui/Components/ChatAttachAlert$10;

    invoke-direct {v9, v1, v6}, Lorg/telegram/ui/Components/ChatAttachAlert$10;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/messenger/MediaController$PhotoEntry;)V

    .line 2348
    iget-object v0, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v2, v0, Lorg/telegram/ui/ChatActivity;

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    check-cast v0, Lorg/telegram/ui/ChatActivity;

    move-object v10, v0

    goto :goto_1

    :cond_3
    move-object v10, v3

    :goto_1
    const/4 v6, 0x0

    const/16 v7, 0xb

    const/4 v8, 0x0

    .line 2328
    invoke-virtual/range {v4 .. v10}, Lorg/telegram/ui/PhotoViewer;->openPhotoForSelect(Ljava/util/ArrayList;IIZLorg/telegram/ui/PhotoViewer$PhotoViewerProvider;Lorg/telegram/ui/ChatActivity;)Z

    .line 2349
    iget-boolean v0, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->isStickerMode:Z

    if-eqz v0, :cond_4

    .line 2350
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    const/4 v2, 0x1

    iget-object v4, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->customStickerHandler:Lorg/telegram/messenger/Utilities$Callback2;

    invoke-virtual {v0, v3, v3, v2, v4}, Lorg/telegram/ui/PhotoViewer;->enableStickerMode(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$Document;ZLorg/telegram/messenger/Utilities$Callback2;)V

    :cond_4
    return-void
.end method

.method private synthetic lambda$new$6(Landroid/view/View;)V
    .locals 0

    .line 2356
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->optionsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->toggleSubMenu()V

    return-void
.end method

.method private synthetic lambda$new$7(Landroid/view/View;)V
    .locals 1

    .line 2384
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoPreviewLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->updatePhotoPreview(Z)V

    return-void
.end method

.method private synthetic lambda$new$8(Lorg/telegram/tgnet/TLRPC$MessageMedia;IZIJ)V
    .locals 8

    .line 2712
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    move-object v1, v0

    check-cast v1, Lorg/telegram/ui/ChatActivity;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lorg/telegram/ui/ChatActivity;->didSelectLocation(Lorg/telegram/tgnet/TLRPC$MessageMedia;IZIJ)V

    return-void
.end method

.method private synthetic lambda$new$9(Lorg/telegram/tgnet/TLRPC$MessageMedia;Ljava/util/HashMap;ZIJ)V
    .locals 8

    .line 2727
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    move-object v1, v0

    check-cast v1, Lorg/telegram/ui/ChatActivity;

    move-object v2, p1

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lorg/telegram/ui/ChatActivity;->sendPoll(Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;Ljava/util/HashMap;ZIJ)V

    return-void
.end method

.method private synthetic lambda$onCustomOpenAnimation$47(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 4928
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->navigationBarAlpha:F

    .line 4929
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    if-eqz p1, :cond_0

    .line 4930
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onCustomOpenAnimation$48(Lorg/telegram/messenger/AnimationNotificationsLocker;Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetDelegateInterface;)V
    .locals 3

    const/4 v0, 0x0

    .line 4961
    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    .line 4962
    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->appearSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 4963
    invoke-virtual {p1}, Lorg/telegram/messenger/AnimationNotificationsLocker;->unlock()V

    const/4 p1, 0x0

    .line 4964
    iput p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimationType:I

    if-eqz p2, :cond_0

    .line 4966
    invoke-interface {p2}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetDelegateInterface;->onOpenAnimationEnd()V

    .line 4968
    :cond_0
    iget-boolean p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->useHardwareLayer:Z

    if-eqz p2, :cond_1

    .line 4969
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    invoke-virtual {p2, p1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 4972
    :cond_1
    iget-boolean p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->isFullscreen:Z

    if-eqz p2, :cond_2

    .line 4973
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    .line 4974
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 4975
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 4977
    :cond_2
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/NotificationCenter;->startAllHeavyOperations:I

    const/16 v1, 0x200

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, p1

    invoke-virtual {p2, v0, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$onCustomOpenAnimation$49(Ljava/lang/Runnable;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    .line 4980
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p2

    if-nez p2, :cond_0

    .line 4981
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onCustomOpenAnimation$50(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 5016
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->setNavBarAlpha(F)V

    return-void
.end method

.method private synthetic lambda$onLongClickBotButton$36(Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;)V
    .locals 4

    .line 4148
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MediaDataController;->loadAttachMenuBots(ZZ)V

    .line 4149
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botAttachLayouts:Landroid/util/LongSparseArray;

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->bot_id:J

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    if-ne v0, p1, :cond_0

    .line 4150
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->showLayout(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onLongClickBotButton$37(Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 4147
    new-instance p2, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda62;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda62;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onLongClickBotButton$38(Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    if-eqz p1, :cond_0

    .line 4144
    new-instance p3, Lorg/telegram/tgnet/TLRPC$TL_messages_toggleBotInAttachMenu;

    invoke-direct {p3}, Lorg/telegram/tgnet/TLRPC$TL_messages_toggleBotInAttachMenu;-><init>()V

    .line 4145
    iget p4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {p4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p4

    invoke-virtual {p4, p2}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object p2

    iput-object p2, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_toggleBotInAttachMenu;->bot:Lorg/telegram/tgnet/TLRPC$InputUser;

    const/4 p2, 0x0

    .line 4146
    iput-boolean p2, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_toggleBotInAttachMenu;->enabled:Z

    .line 4147
    iget p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    new-instance p4, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda61;

    invoke-direct {p4, p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda61;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;)V

    const/16 p1, 0x42

    invoke-virtual {p2, p3, p4, p1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    return-void

    .line 4154
    :cond_0
    iget p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    iget-wide p2, p2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {p1, p2, p3}, Lorg/telegram/messenger/MediaDataController;->removeInline(J)V

    return-void
.end method

.method private synthetic lambda$openAudioLayout$44(Ljava/util/ArrayList;Ljava/lang/CharSequence;ZIIJZJ)V
    .locals 14

    .line 4609
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lorg/telegram/ui/ChatActivity;

    if-eqz v1, :cond_0

    .line 4610
    move-object v2, v0

    check-cast v2, Lorg/telegram/ui/ChatActivity;

    move-object v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-wide/from16 v8, p6

    move/from16 v10, p8

    move-wide/from16 v11, p9

    invoke-virtual/range {v2 .. v12}, Lorg/telegram/ui/ChatActivity;->sendAudio(Ljava/util/ArrayList;Ljava/lang/CharSequence;ZIIJZJ)V

    return-void

    .line 4611
    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->delegate:Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;

    if-eqz v3, :cond_1

    move-object v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-wide/from16 v9, p6

    move/from16 v11, p8

    move-wide/from16 v12, p9

    .line 4612
    invoke-interface/range {v3 .. v13}, Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;->sendAudio(Ljava/util/ArrayList;Ljava/lang/CharSequence;ZIIJZJ)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$openColorsLayout$45(Ljava/lang/Object;)V
    .locals 1

    .line 4630
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->delegate:Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;

    if-eqz v0, :cond_0

    .line 4631
    invoke-interface {v0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;->onWallpaperSelected(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$sendPressed$39(ZIIJZLjava/lang/Long;)V
    .locals 13

    const/4 v0, 0x1

    .line 4247
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->setButtonPressed(Z)V

    .line 4248
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->delegate:Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;

    const/4 v10, 0x0

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    const/4 v2, 0x7

    const/4 v3, 0x1

    move v4, p1

    move v5, p2

    move/from16 v6, p3

    move-wide/from16 v7, p4

    move/from16 v9, p6

    invoke-interface/range {v1 .. v12}, Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;->didPressedButton(IZZIIJZZJ)V

    return-void
.end method

.method private synthetic lambda$setCaptionAbove$58(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 6466
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->updatedTopCaptionHeight()V

    return-void
.end method

.method private synthetic lambda$setCaptionAbove$59(ZZ)V
    .locals 0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 6470
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->topCommentContainer:Landroid/widget/FrameLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 6472
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->updatedTopCaptionHeight()V

    return-void
.end method

.method private synthetic lambda$setCaptionAbove$60(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 6483
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->frameLayout2:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$setCaptionAbove$61(ZZ)V
    .locals 0

    if-nez p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 6487
    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->captionContainer:Landroid/widget/FrameLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$showCaptionLimitBulletin$35(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 2

    const/4 v0, 0x1

    .line 4108
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss(Z)V

    if-eqz p1, :cond_0

    .line 4110
    new-instance v0, Lorg/telegram/ui/PremiumPreviewFragment;

    const-string v1, "caption_limit"

    invoke-direct {v0, v1}, Lorg/telegram/ui/PremiumPreviewFragment;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_0
    return-void
.end method

.method private synthetic lambda$showCommentTextView$46(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 4755
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->updatedTopCaptionHeight()V

    return-void
.end method

.method private synthetic lambda$showLayout$40()V
    .locals 4

    const/4 v0, 0x0

    .line 4352
    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->viewChangeAnimator:Ljava/lang/Object;

    .line 4353
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoPreviewLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    if-eq v2, v3, :cond_0

    if-eq v1, v2, :cond_0

    if-eq v1, v3, :cond_0

    .line 4354
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 4356
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4357
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onHidden()V

    .line 4358
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onShown()V

    .line 4359
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    iput-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    .line 4360
    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    .line 4361
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->scrollOffsetY:[I

    const/4 v1, 0x1

    aget v1, v0, v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 4363
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->captionAbove:Z

    invoke-virtual {p0, v0, v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->setCaptionAbove(ZZ)V

    .line 4364
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->updateDoneItemEnabled()V

    return-void
.end method

.method private synthetic lambda$showLayout$41(FFZLandroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 1

    const/high16 p4, 0x43fa0000    # 500.0f

    div-float/2addr p5, p4

    .line 4447
    iget-object p4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->ATTACH_ALERT_LAYOUT_TRANSLATION:Landroid/util/Property;

    iget-object p6, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p4, p6, v0}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4448
    iget-object p4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-static {p1, p2, p5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p1

    invoke-virtual {p4, p1}, Landroid/view/View;->setAlpha(F)V

    .line 4449
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p2}, Lorg/telegram/ui/Components/ChatAttachAlert;->updateLayout(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;ZI)V

    .line 4450
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {p0, p1, p2, p2}, Lorg/telegram/ui/Components/ChatAttachAlert;->updateLayout(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;ZI)V

    .line 4451
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    instance-of p1, p1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    const/high16 p2, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    sub-float p5, p2, p5

    :goto_0
    const/4 p1, 0x0

    .line 4452
    invoke-static {p5, p2, p1}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result p1

    .line 4453
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->mediaPreviewView:Landroid/widget/LinearLayout;

    invoke-virtual {p3, p1}, Landroid/view/View;->setAlpha(F)V

    .line 4454
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedView:Landroid/widget/LinearLayout;

    sub-float/2addr p2, p1

    invoke-virtual {p3, p2}, Landroid/view/View;->setAlpha(F)V

    .line 4455
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedView:Landroid/widget/LinearLayout;

    const/high16 p4, 0x41800000    # 16.0f

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p5

    neg-int p5, p5

    int-to-float p5, p5

    mul-float/2addr p1, p5

    invoke-virtual {p3, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 4456
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->mediaPreviewView:Landroid/widget/LinearLayout;

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p2, p3

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method

.method private synthetic lambda$showLayout$42(ZLjava/lang/Runnable;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    .line 4459
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    const/high16 p4, 0x3f800000    # 1.0f

    invoke-virtual {p3, p4}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onHideShowProgress(F)V

    .line 4460
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {p3, p4}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onHideShowProgress(F)V

    .line 4461
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    iget p4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentPanTranslationY:F

    invoke-virtual {p3, p4}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onContainerTranslationUpdated(F)V

    .line 4462
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    iget p4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentPanTranslationY:F

    invoke-virtual {p3, p4}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onContainerTranslationUpdated(F)V

    .line 4463
    iget-object p3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {p3}, Landroid/view/View;->invalidate()V

    .line 4464
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p3, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 4465
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$showLayout$43(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;Ljava/lang/Runnable;)V
    .locals 6

    .line 4441
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getCurrentItemTop()I

    move-result v0

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getButtonsHideOffset()I

    move-result p1

    if-gt v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4442
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p1, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    .line 4444
    :goto_1
    new-instance v4, Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v5, Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-direct {v5, v1}, Landroidx/dynamicanimation/animation/FloatValueHolder;-><init>(F)V

    invoke-direct {v4, v5}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V

    .line 4445
    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda37;

    invoke-direct {v1, p0, v0, v3, p1}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda37;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;FFZ)V

    invoke-virtual {v4, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 4458
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda38;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda38;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;ZLjava/lang/Runnable;)V

    invoke-virtual {v4, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 4467
    new-instance p1, Landroidx/dynamicanimation/animation/SpringForce;

    const/high16 p2, 0x43fa0000    # 500.0f

    invoke-direct {p1, p2}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    invoke-virtual {v4, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 4468
    invoke-virtual {v4}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 4469
    invoke-virtual {v4}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    const/high16 p2, 0x447a0000    # 1000.0f

    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 4470
    invoke-virtual {v4}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    .line 4472
    iput-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->viewChangeAnimator:Ljava/lang/Object;

    return-void
.end method

.method private onCurrentLayoutAnimatorChanged(Lme/vkryl/android/animator/ReplaceAnimator;)V
    .locals 1

    .line 4490
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    goto :goto_0

    .line 4494
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getShadowDrawableColor()I

    move-result v0

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->setDrawableColor(Landroid/graphics/drawable/Drawable;I)V

    .line 4495
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->updateDoneItemEnabled()V

    .line 4496
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_1
    :goto_0
    return-void
.end method

.method private openAudioLayout(Z)V
    .locals 5

    .line 4599
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->musicEnabled:Z

    const/4 v1, 0x3

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 4601
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachRestrictedLayout;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, p0, v2, v3}, Lorg/telegram/ui/Components/ChatAttachRestrictedLayout;-><init>(ILorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->restrictedLayout:Lorg/telegram/ui/Components/ChatAttachRestrictedLayout;

    .line 4602
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->showLayout(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;)V

    .line 4605
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->audioLayout:Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;

    if-nez v0, :cond_1

    .line 4606
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->layouts:[Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v2, p0, v3, v4}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->audioLayout:Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;

    aput-object v2, v0, v1

    .line 4607
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->iBlur3FactoryLiquidGlass:Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->setupBlurredSearchField(Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;)V

    .line 4608
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->audioLayout:Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda59;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda59;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->setDelegate(Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$AudioSelectDelegate;)V

    .line 4616
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v1, v0, Lorg/telegram/ui/ChatActivity;

    if-eqz v1, :cond_5

    .line 4617
    check-cast v0, Lorg/telegram/ui/ChatActivity;

    .line 4618
    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 4619
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->audioLayout:Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->hasAdminRights(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->slowmode_enabled:Z

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, -0x1

    :goto_0
    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->setMaxSelectedFiles(I)V

    :cond_5
    if-eqz p1, :cond_6

    .line 4622
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->audioLayout:Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->showLayout(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;)V

    :cond_6
    return-void
.end method

.method private openContactsLayout()V
    .locals 4

    .line 4559
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->plainTextEnabled:Z

    if-nez v0, :cond_0

    .line 4560
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachRestrictedLayout;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v3, 0x5

    invoke-direct {v0, v3, p0, v1, v2}, Lorg/telegram/ui/Components/ChatAttachRestrictedLayout;-><init>(ILorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->restrictedLayout:Lorg/telegram/ui/Components/ChatAttachRestrictedLayout;

    .line 4561
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->showLayout(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;)V

    .line 4563
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->contactsLayout:Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;

    if-nez v0, :cond_1

    .line 4564
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->layouts:[Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v1, p0, v2, v3}, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->contactsLayout:Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 4565
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->iBlur3FactoryLiquidGlass:Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;->setupBlurredSearchField(Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;)V

    .line 4566
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->contactsLayout:Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlert$28;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$28;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;->setDelegate(Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$PhonebookShareAlertDelegate;)V

    .line 4578
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v1, v0, Lorg/telegram/ui/ChatActivity;

    if-eqz v1, :cond_4

    .line 4579
    check-cast v0, Lorg/telegram/ui/ChatActivity;

    .line 4580
    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 4581
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->contactsLayout:Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;

    if-eqz v0, :cond_3

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->hasAdminRights(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->slowmode_enabled:Z

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;->setMultipleSelectionAllowed(Z)V

    .line 4583
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->contactsLayout:Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->showLayout(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;)V

    return-void
.end method

.method private openDocumentsLayout(Z)V
    .locals 7

    .line 4639
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->documentsEnabled:Z

    const/4 v1, 0x4

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 4641
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachRestrictedLayout;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, p0, v2, v3}, Lorg/telegram/ui/Components/ChatAttachRestrictedLayout;-><init>(ILorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->restrictedLayout:Lorg/telegram/ui/Components/ChatAttachRestrictedLayout;

    .line 4642
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->showLayout(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;)V

    .line 4645
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->documentLayout:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 4646
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->isSoundPicker:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    move v0, v2

    .line 4647
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->layouts:[Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    new-instance v4, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v4, p0, v5, v0, v6}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->documentLayout:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    aput-object v4, v3, v1

    .line 4648
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlert$29;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$29;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v4, v0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->setDelegate(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$DocumentSelectActivityDelegate;)V

    .line 4688
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v1, v0, Lorg/telegram/ui/ChatActivity;

    const/4 v3, 0x1

    if-eqz v1, :cond_6

    .line 4689
    check-cast v0, Lorg/telegram/ui/ChatActivity;

    .line 4690
    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 4691
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->documentLayout:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    if-eqz v0, :cond_3

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->hasAdminRights(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->slowmode_enabled:Z

    if-nez v0, :cond_5

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v3, -0x1

    :cond_5
    :goto_1
    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->setMaxSelectedFiles(I)V

    goto :goto_2

    .line 4693
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->documentLayout:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->maxSelectedPhotos:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->setMaxSelectedFiles(I)V

    .line 4694
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->documentLayout:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->isSoundPicker:Z

    if-nez v1, :cond_7

    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->allowEnterCaption:Z

    if-nez v1, :cond_7

    move v2, v3

    :cond_7
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->setCanSelectOnlyImageFiles(Z)V

    .line 4696
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->documentLayout:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->isSoundPicker:Z

    iput-boolean v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->isSoundPicker:Z

    if-eqz p1, :cond_8

    .line 4698
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->showLayout(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;)V

    :cond_8
    return-void
.end method

.method private openQuickRepliesLayout()V
    .locals 4

    .line 4587
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->quickRepliesLayout:Lorg/telegram/ui/Business/ChatAttachAlertQuickRepliesLayout;

    if-nez v0, :cond_0

    .line 4588
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->layouts:[Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    new-instance v1, Lorg/telegram/ui/Business/ChatAttachAlertQuickRepliesLayout;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v1, p0, v2, v3}, Lorg/telegram/ui/Business/ChatAttachAlertQuickRepliesLayout;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->quickRepliesLayout:Lorg/telegram/ui/Business/ChatAttachAlertQuickRepliesLayout;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 4589
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->iBlur3FactoryLiquidGlass:Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Business/ChatAttachAlertQuickRepliesLayout;->setupBlurredSearchField(Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;)V

    .line 4591
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->quickRepliesLayout:Lorg/telegram/ui/Business/ChatAttachAlertQuickRepliesLayout;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->showLayout(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;)V

    return-void
.end method

.method private removeFromRoot()V
    .locals 4

    .line 6192
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    .line 6193
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6195
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->isSearchFieldVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6196
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->closeSearchField()V

    :cond_1
    const/4 v0, 0x0

    .line 6198
    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->contactsLayout:Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;

    .line 6199
    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->quickRepliesLayout:Lorg/telegram/ui/Business/ChatAttachAlertQuickRepliesLayout;

    .line 6200
    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->audioLayout:Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;

    .line 6201
    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->pollLayout:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    .line 6202
    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->todoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    .line 6203
    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->locationLayout:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    .line 6204
    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->documentLayout:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    const/4 v1, 0x1

    .line 6205
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->layouts:[Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    array-length v3, v2

    if-ge v1, v3, :cond_3

    .line 6206
    aget-object v2, v2, v1

    if-nez v2, :cond_2

    goto :goto_1

    .line 6209
    :cond_2
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onDestroy()V

    .line 6210
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->layouts:[Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 6211
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->layouts:[Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    aput-object v0, v2, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 6213
    invoke-direct {p0, v0, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->updateActionBarVisibility(ZZ)V

    .line 6214
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismissInternal()V

    return-void
.end method

.method private replaceWithText(IILjava/lang/CharSequence;Z)V
    .locals 2

    .line 6377
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getCommentView()Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 6381
    :cond_0
    :try_start_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getCommentView()Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EditTextEmoji;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    add-int/2addr p2, p1

    .line 6382
    invoke-virtual {v0, p1, p2, p3}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    if-eqz p4, :cond_1

    .line 6384
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getCommentView()Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p2

    const/4 p4, 0x0

    invoke-static {v0, p2, p4}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 6386
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getCommentView()Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object p2

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/EditTextEmoji;->setText(Ljava/lang/CharSequence;)V

    .line 6387
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getCommentView()Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object p2

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p3

    add-int/2addr p1, p3

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/EditTextEmoji;->setSelection(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 6389
    :goto_1
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method private sendPressed(ZIIJZ)Z
    .locals 12

    .line 4231
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonPressed:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 4234
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v1, v0, Lorg/telegram/ui/ChatActivity;

    if-eqz v1, :cond_3

    .line 4235
    check-cast v0, Lorg/telegram/ui/ChatActivity;

    .line 4236
    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    .line 4237
    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    if-nez v2, :cond_2

    .line 4238
    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v2, :cond_2

    :cond_1
    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 4239
    :cond_2
    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getNotificationsSettings(I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "silent_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    xor-int/lit8 v2, p1, 0x1

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 4242
    :cond_3
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getCommentView()Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->checkCaption(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    return v1

    .line 4245
    :cond_4
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->applyCaption()V

    .line 4246
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getDialogId()J

    move-result-wide v2

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    if-nez v4, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {v4}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getSelectedItemsCount()I

    move-result v1

    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getAdditionalMessagesCount()I

    move-result v4

    add-int/2addr v1, v4

    new-instance v4, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda57;

    move-object v5, p0

    move v6, p1

    move v7, p2

    move v8, p3

    move-wide/from16 v9, p4

    move/from16 v11, p6

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda57;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;ZIIJZ)V

    invoke-static {v0, v2, v3, v1, v4}, Lorg/telegram/ui/Components/AlertsCreator;->ensurePaidMessageConfirmation(IJILorg/telegram/messenger/Utilities$Callback;)Z

    move-result p1

    return p1
.end method

.method private setNavBarAlpha(F)V
    .locals 6

    .line 5027
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr p1, v1

    float-to-int p1, p1

    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/16 v2, 0xff

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v0, p1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->navBarColor:I

    .line 5028
    invoke-static {p0, p1, v1}, Lorg/telegram/messenger/AndroidUtilities;->setNavigationBarColor(Landroid/app/Dialog;IZ)V

    .line 5029
    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->navBarColor:I

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result p1

    float-to-double v2, p1

    const-wide v4, 0x3fe7126e978d4fdfL    # 0.721

    cmpl-double p1, v2, v4

    if-lez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-static {p0, v1}, Lorg/telegram/messenger/AndroidUtilities;->setLightNavigationBar(Landroid/app/Dialog;Z)V

    .line 5030
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getContainer()Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private showCaptionLimitBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 3

    .line 4103
    instance-of v0, p1, Lorg/telegram/ui/ChatActivity;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4107
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget v1, v1, Lorg/telegram/messenger/MessagesController;->captionLengthLimitPremium:I

    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda55;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda55;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/BulletinFactory;->createCaptionLimitBulletin(ILjava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    .line 4112
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    :cond_1
    :goto_0
    return-void
.end method

.method private showCommentTextView(ZZ)Z
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 4703
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->animatorCaptionVisible:Lme/vkryl/android/animator/BoolAnimator;

    const/4 v4, 0x1

    invoke-virtual {v3, v1, v4}, Lme/vkryl/android/animator/BoolAnimator;->setValue(ZZ)V

    .line 4705
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->frameLayout2:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    if-ne v1, v3, :cond_1

    return v5

    .line 4708
    :cond_1
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->commentsAnimator:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_2

    .line 4709
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    .line 4711
    :cond_2
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->frameLayout2:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    :goto_1
    invoke-virtual {v3, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 4712
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 4713
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 4715
    :cond_4
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/EditTextEmoji;->hidePopup(Z)V

    .line 4716
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->topCommentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/EditTextEmoji;->hidePopup(Z)V

    if-eqz v1, :cond_6

    .line 4718
    iget-boolean v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->isSoundPicker:Z

    if-nez v3, :cond_5

    .line 4719
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->frameLayout2:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 4721
    :cond_5
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 4722
    :cond_6
    iget-boolean v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->typeButtonsAvailable:Z

    if-eqz v3, :cond_7

    .line 4723
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerViewWrapper:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 4725
    :cond_7
    :goto_2
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    iget-object v6, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    if-eq v3, v6, :cond_8

    iget-object v6, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoPreviewLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    if-ne v3, v6, :cond_9

    .line 4726
    :cond_8
    iget-boolean v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->captionAbove:Z

    if-eqz v3, :cond_9

    move v3, v4

    goto :goto_3

    :cond_9
    move v3, v5

    :goto_3
    const v7, 0x3e4ccccd    # 0.2f

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    if-eqz v2, :cond_1a

    .line 4728
    new-instance v10, Landroid/animation/AnimatorSet;

    invoke-direct {v10}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v10, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->commentsAnimator:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_a

    .line 4730
    iget-object v10, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->topCommentContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v10, v5}, Landroid/view/View;->setVisibility(I)V

    .line 4732
    :cond_a
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 4733
    iget-object v11, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->frameLayout2:Landroid/widget/FrameLayout;

    sget-object v12, Landroid/view/View;->ALPHA:Landroid/util/Property;

    if-eqz v1, :cond_b

    move v13, v9

    goto :goto_4

    :cond_b
    move v13, v8

    :goto_4
    new-array v14, v4, [F

    aput v13, v14, v5

    invoke-static {v11, v12, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4734
    iget-object v11, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->captionContainer:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_c

    if-nez v3, :cond_c

    move v13, v9

    goto :goto_5

    :cond_c
    move v13, v8

    :goto_5
    new-array v14, v4, [F

    aput v13, v14, v5

    invoke-static {v11, v12, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_d

    if-nez v3, :cond_d

    .line 4736
    iget-object v11, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->captionContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v11, v5}, Landroid/view/View;->setVisibility(I)V

    .line 4737
    iget-object v11, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->captionContainer:Landroid/widget/FrameLayout;

    sget-object v13, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v14, v4, [F

    aput v8, v14, v5

    invoke-static {v11, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4739
    :cond_d
    iget-object v11, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->topCommentContainer:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_e

    if-eqz v3, :cond_e

    move v13, v9

    goto :goto_6

    :cond_e
    move v13, v8

    :goto_6
    new-array v14, v4, [F

    aput v13, v14, v5

    invoke-static {v11, v12, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4740
    iget-object v11, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButtonContainer:Landroid/widget/FrameLayout;

    sget-object v13, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    if-eqz v1, :cond_f

    move v14, v9

    goto :goto_7

    :cond_f
    move v14, v7

    :goto_7
    new-array v15, v4, [F

    aput v14, v15, v5

    invoke-static {v11, v13, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4741
    iget-object v11, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButtonContainer:Landroid/widget/FrameLayout;

    sget-object v14, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    if-eqz v1, :cond_10

    move v15, v9

    :goto_8
    const/high16 v16, 0x42400000    # 48.0f

    goto :goto_9

    :cond_10
    move v15, v7

    goto :goto_8

    :goto_9
    new-array v6, v4, [F

    aput v15, v6, v5

    invoke-static {v11, v14, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4742
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButtonContainer:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_11

    move v11, v9

    goto :goto_a

    :cond_11
    move v11, v8

    :goto_a
    new-array v15, v4, [F

    aput v11, v15, v5

    invoke-static {v6, v12, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4743
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    if-eqz v1, :cond_12

    move v11, v9

    goto :goto_b

    :cond_12
    move v11, v7

    :goto_b
    new-array v15, v4, [F

    aput v11, v15, v5

    invoke-static {v6, v13, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4744
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    if-eqz v1, :cond_13

    move v7, v9

    :cond_13
    new-array v11, v4, [F

    aput v7, v11, v5

    invoke-static {v6, v14, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4745
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_15

    .line 4746
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->frameLayout2:Landroid/widget/FrameLayout;

    sget-object v7, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    if-eqz v1, :cond_14

    goto :goto_c

    :cond_14
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    :goto_c
    new-array v9, v4, [F

    aput v8, v9, v5

    invoke-static {v6, v7, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 4747
    :cond_15
    iget-boolean v6, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->typeButtonsAvailable:Z

    if-eqz v6, :cond_18

    .line 4748
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerViewWrapper:Landroid/widget/FrameLayout;

    sget-object v7, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    if-eqz v1, :cond_16

    const/high16 v11, 0x42100000    # 36.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    goto :goto_d

    :cond_16
    move v11, v8

    :goto_d
    new-array v13, v4, [F

    aput v11, v13, v5

    invoke-static {v6, v7, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4749
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerViewWrapper:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_17

    goto :goto_e

    :cond_17
    move v8, v9

    :goto_e
    new-array v7, v4, [F

    aput v8, v7, v5

    invoke-static {v6, v12, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_18
    :goto_f
    if-eqz v3, :cond_19

    const/4 v6, 0x2

    .line 4753
    new-array v6, v6, [F

    fill-array-data v6, :array_0

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v6

    .line 4754
    new-instance v7, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda5;

    invoke-direct {v7, v0}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 4757
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4759
    :cond_19
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->commentsAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v6, v10}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 4760
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->commentsAnimator:Landroid/animation/AnimatorSet;

    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4761
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->commentsAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v7, 0xb4

    invoke-virtual {v6, v7, v8}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 4762
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->commentsAnimator:Landroid/animation/AnimatorSet;

    new-instance v7, Lorg/telegram/ui/Components/ChatAttachAlert$30;

    invoke-direct {v7, v0, v1, v3}, Lorg/telegram/ui/Components/ChatAttachAlert$30;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;ZZ)V

    invoke-virtual {v6, v7}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4791
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->commentsAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_1a

    :cond_1a
    const/high16 v16, 0x42400000    # 48.0f

    .line 4793
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->frameLayout2:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_1b

    move v10, v9

    goto :goto_10

    :cond_1b
    move v10, v8

    :goto_10
    invoke-virtual {v6, v10}, Landroid/view/View;->setAlpha(F)V

    .line 4794
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->captionContainer:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_1c

    if-eqz v3, :cond_1c

    move v10, v9

    goto :goto_11

    :cond_1c
    move v10, v8

    :goto_11
    invoke-virtual {v6, v10}, Landroid/view/View;->setAlpha(F)V

    if-eqz v1, :cond_1d

    if-nez v3, :cond_1d

    .line 4796
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->captionContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 4797
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->captionContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v8}, Landroid/view/View;->setTranslationY(F)V

    .line 4799
    :cond_1d
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButtonContainer:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_1e

    move v10, v9

    goto :goto_12

    :cond_1e
    move v10, v7

    :goto_12
    invoke-virtual {v6, v10}, Landroid/view/View;->setScaleX(F)V

    .line 4800
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButtonContainer:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_1f

    move v10, v9

    goto :goto_13

    :cond_1f
    move v10, v7

    :goto_13
    invoke-virtual {v6, v10}, Landroid/view/View;->setScaleY(F)V

    .line 4801
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButtonContainer:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_20

    move v10, v9

    goto :goto_14

    :cond_20
    move v10, v8

    :goto_14
    invoke-virtual {v6, v10}, Landroid/view/View;->setAlpha(F)V

    .line 4802
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->topCommentContainer:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_21

    if-eqz v3, :cond_21

    move v10, v5

    goto :goto_15

    :cond_21
    const/16 v10, 0x8

    :goto_15
    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    .line 4803
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->topCommentContainer:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_22

    if-eqz v3, :cond_22

    move v10, v9

    goto :goto_16

    :cond_22
    move v10, v8

    :goto_16
    invoke-virtual {v6, v10}, Landroid/view/View;->setAlpha(F)V

    .line 4804
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    if-eqz v1, :cond_23

    move v10, v9

    goto :goto_17

    :cond_23
    move v10, v7

    :goto_17
    invoke-virtual {v6, v10}, Landroid/view/View;->setScaleX(F)V

    .line 4805
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    if-eqz v1, :cond_24

    move v7, v9

    :cond_24
    invoke-virtual {v6, v7}, Landroid/view/View;->setScaleY(F)V

    .line 4806
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_26

    .line 4807
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->frameLayout2:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_25

    goto :goto_18

    :cond_25
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v8, v7

    :goto_18
    invoke-virtual {v6, v8}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_19

    .line 4808
    :cond_26
    iget-boolean v6, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->typeButtonsAvailable:Z

    if-eqz v6, :cond_29

    .line 4809
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    if-eqz v6, :cond_27

    invoke-virtual {v6}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->shouldHideBottomButtons()Z

    move-result v6

    if-eqz v6, :cond_29

    .line 4810
    :cond_27
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerViewWrapper:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_28

    const/high16 v7, 0x42a80000    # 84.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v8, v7

    :cond_28
    invoke-virtual {v6, v8}, Landroid/view/View;->setTranslationY(F)V

    :cond_29
    :goto_19
    if-nez v1, :cond_2a

    .line 4814
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->frameLayout2:Landroid/widget/FrameLayout;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 4815
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 4817
    :cond_2a
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBarShadow:Landroid/view/View;

    iget v7, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentPanTranslationY:F

    invoke-virtual {v6, v7}, Landroid/view/View;->setTranslationY(F)V

    if-eqz v3, :cond_2b

    .line 4819
    invoke-direct {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->updatedTopCaptionHeight()V

    .line 4822
    :cond_2b
    :goto_1a
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    if-eqz v1, :cond_2c

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getSelectedItemsCount()I

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    :cond_2c
    invoke-virtual {v3, v5, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->setCount(IZ)V

    .line 4823
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v1, :cond_2d

    const-wide/16 v1, 0x0

    goto :goto_1b

    :cond_2d
    iget v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getDialogId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getSendPaidMessagesStars(J)J

    move-result-wide v1

    .line 4824
    :goto_1b
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getSelectedItemsCount()I

    move-result v3

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getAdditionalMessagesCount()I

    move-result v5

    add-int/2addr v3, v5

    .line 4825
    iget-object v5, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    invoke-virtual {v5, v1, v2, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->setStarsPrice(JI)V

    .line 4826
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    if-eqz v1, :cond_2e

    .line 4827
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 4828
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->width()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 4829
    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-eq v3, v2, :cond_2e

    .line 4830
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 4831
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4834
    :cond_2e
    invoke-direct {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->updateCameraButtonVisibility()V

    return v4

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private showLayout(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;J)V
    .locals 1

    const/4 v0, 0x1

    .line 4283
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->showLayout(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;JZ)V

    return-void
.end method

.method private showLayout(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;JZ)V
    .locals 10

    const/4 v0, 0x0

    .line 4409
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 4287
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->viewChangeAnimator:Ljava/lang/Object;

    if-nez v2, :cond_15

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->commentsAnimator:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_0

    goto/16 :goto_8

    .line 4290
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    if-ne v2, p1, :cond_1

    .line 4291
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->scrollToTop()V

    return-void

    .line 4294
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->todoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    const/4 v3, 0x0

    if-ne p1, v2, :cond_2

    iget v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v2

    if-nez v2, :cond_2

    .line 4295
    new-instance p1, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    const/16 p3, 0x27

    invoke-direct {p1, p2, p3, v3}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;IZ)V

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->show()V

    return-void

    .line 4299
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->animatorToggleCaptionSupported:Lme/vkryl/android/animator/BoolAnimator;

    const-wide/16 v4, 0x1

    cmp-long v4, p2, v4

    const/4 v5, 0x1

    if-nez v4, :cond_3

    move v4, v5

    goto :goto_0

    :cond_3
    move v4, v3

    :goto_0
    invoke-virtual {v2, v4, p4}, Lme/vkryl/android/animator/BoolAnimator;->setValue(ZZ)V

    .line 4300
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->animatorCurrentVisibleLayout:Lme/vkryl/android/animator/ReplaceAnimator;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4, p4}, Lme/vkryl/android/animator/ReplaceAnimator;->replace(Ljava/lang/Object;Z)V

    .line 4302
    iput-boolean v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botButtonWasVisible:Z

    .line 4303
    iput-boolean v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botButtonProgressWasVisible:Z

    .line 4304
    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botMainButtonOffsetY:F

    .line 4305
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botMainButtonTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 4306
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/RadialProgressView;->setAlpha(F)V

    .line 4307
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    const v6, 0x3dcccccd    # 0.1f

    invoke-virtual {v2, v6}, Landroid/view/View;->setScaleX(F)V

    .line 4308
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v2, v6}, Landroid/view/View;->setScaleY(F)V

    .line 4309
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 4310
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerViewWrapper:Landroid/widget/FrameLayout;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v2, v4}, Landroid/view/View;->setAlpha(F)V

    .line 4311
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerViewWrapper:Landroid/widget/FrameLayout;

    iget v6, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botMainButtonOffsetY:F

    invoke-virtual {v2, v6}, Landroid/view/View;->setTranslationY(F)V

    move v2, v3

    .line 4312
    :goto_1
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botAttachLayouts:Landroid/util/LongSparseArray;

    invoke-virtual {v6}, Landroid/util/LongSparseArray;->size()I

    move-result v6

    if-ge v2, v6, :cond_4

    .line 4313
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botAttachLayouts:Landroid/util/LongSparseArray;

    invoke-virtual {v6, v2}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;

    invoke-virtual {v6, v3}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->setMeasureOffsetY(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 4316
    :cond_4
    iput-wide p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedId:J

    .line 4317
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    move p3, v3

    :goto_2
    if-ge p3, p2, :cond_7

    .line 4319
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4320
    instance-of v6, v2, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;

    if-eqz v6, :cond_5

    .line 4321
    check-cast v2, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;

    .line 4322
    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->updateCheckedState(Z)V

    goto :goto_3

    .line 4323
    :cond_5
    instance-of v6, v2, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;

    if-eqz v6, :cond_6

    .line 4324
    check-cast v2, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;

    .line 4325
    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->updateCheckedState(Z)V

    :cond_6
    :goto_3
    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    .line 4328
    :cond_7
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getFirstOffset()I

    move-result p2

    const/high16 p3, 0x41300000    # 11.0f

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    sub-int/2addr p2, p3

    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->scrollOffsetY:[I

    aget p3, p3, v3

    sub-int/2addr p2, p3

    .line 4329
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    .line 4330
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->needsActionBar()I

    move-result v2

    const/4 v6, 0x4

    if-eqz v2, :cond_8

    move v2, v3

    goto :goto_4

    :cond_8
    move v2, v6

    :goto_4
    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4331
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBarShadow:Landroid/view/View;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4332
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/ActionBar;->isSearchFieldVisible()Z

    move-result p3

    if-eqz p3, :cond_9

    .line 4333
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/ActionBar;->closeSearchField()V

    .line 4335
    :cond_9
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {p3}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onHide()V

    .line 4336
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    if-ne p3, v2, :cond_a

    .line 4337
    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->setCheckCameraWhenShown(Z)V

    .line 4339
    :cond_a
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {p3, v2}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onShow(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;)V

    .line 4340
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {p3, v3}, Landroid/view/View;->setVisibility(I)V

    .line 4341
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->updateCameraButtonVisibility()V

    .line 4343
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    if-eqz p3, :cond_b

    .line 4344
    iget-object p3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {p3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 4346
    :cond_b
    iget-object p3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {p3, v2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p3

    .line 4347
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    iget-object v7, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    if-eq v2, v7, :cond_d

    .line 4348
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    iget-object v8, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->locationLayout:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    if-ne v2, v8, :cond_c

    goto :goto_5

    :cond_c
    add-int/lit8 p3, p3, 0x1

    :goto_5
    const/4 v8, -0x1

    const/high16 v9, -0x40800000    # -1.0f

    invoke-static {v8, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v7, v2, p3, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 4351
    :cond_d
    new-instance p3, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda6;

    invoke-direct {p3, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    .line 4367
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    instance-of v7, v2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    if-nez v7, :cond_f

    iget-object v7, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    instance-of v7, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    if-nez v7, :cond_f

    if-eqz p4, :cond_e

    .line 4369
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 4370
    iget-object p4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {p4, v0}, Landroid/view/View;->setAlpha(F)V

    .line 4371
    iget-object p4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    const/high16 v2, 0x429c0000    # 78.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p4, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 4372
    iget-object p4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    sget-object v4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    .line 4373
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v2, p2

    int-to-float v2, v2

    new-array v6, v5, [F

    aput v2, v6, v3

    invoke-static {p4, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p4

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->ATTACH_ALERT_LAYOUT_TRANSLATION:Landroid/util/Property;

    const/4 v6, 0x2

    new-array v7, v6, [F

    fill-array-data v7, :array_0

    .line 4374
    invoke-static {v2, v4, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    .line 4375
    invoke-virtual {v4}, Landroid/view/View;->getAlpha()F

    move-result v8

    new-array v9, v6, [F

    aput v8, v9, v3

    aput v0, v9, v5

    invoke-static {v4, v7, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/Animator;

    aput-object p4, v4, v3

    aput-object v2, v4, v5

    aput-object v0, v4, v6

    .line 4372
    invoke-virtual {p1, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v2, 0xb4

    .line 4377
    invoke-virtual {p1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 4379
    sget-object p4, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4380
    new-instance p4, Lorg/telegram/ui/Components/ChatAttachAlert$27;

    invoke-direct {p4, p0, p2, p3}, Lorg/telegram/ui/Components/ChatAttachAlert$27;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;ILjava/lang/Runnable;)V

    invoke-virtual {p1, p4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4408
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->viewChangeAnimator:Ljava/lang/Object;

    .line 4409
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->ATTACH_ALERT_LAYOUT_TRANSLATION:Landroid/util/Property;

    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {p2, p3, v1}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4410
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    .line 4412
    :cond_e
    invoke-virtual {v2, v0}, Landroid/view/View;->setAlpha(F)V

    .line 4413
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    .line 4414
    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/ChatAttachAlert;->updateSelectedPosition(I)V

    .line 4415
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void

    .line 4418
    :cond_f
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 4419
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    instance-of v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    if-eqz v2, :cond_10

    int-to-float p2, p2

    .line 4420
    invoke-virtual {v0, p2}, Landroid/view/View;->setTranslationX(F)V

    .line 4421
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    instance-of v0, p2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    if-eqz v0, :cond_11

    .line 4422
    check-cast p2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    .line 4423
    iget-object p2, p2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;

    if-eqz p2, :cond_11

    .line 4424
    invoke-virtual {p2, v6}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;->setVisibility(I)V

    goto :goto_6

    .line 4428
    :cond_10
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    neg-int p2, p2

    int-to-float p2, p2

    invoke-virtual {v0, p2}, Landroid/view/View;->setTranslationX(F)V

    .line 4429
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    if-ne p2, v0, :cond_11

    .line 4430
    check-cast p2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    .line 4431
    iget-object p2, p2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;

    if-eqz p2, :cond_11

    .line 4432
    invoke-virtual {p2, v3}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;->setVisibility(I)V

    .line 4436
    :cond_11
    :goto_6
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {p2, v4}, Landroid/view/View;->setAlpha(F)V

    .line 4437
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {p2, v4}, Landroid/view/View;->setAlpha(F)V

    if-eqz p4, :cond_12

    .line 4439
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->ATTACH_ALERT_LAYOUT_TRANSLATION:Landroid/util/Property;

    iget-object p4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {p2, p4, v1}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4440
    new-instance p2, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda7;

    invoke-direct {p2, p0, p1, p3}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;Ljava/lang/Runnable;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    .line 4475
    :cond_12
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getCurrentItemTop()I

    move-result p2

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getButtonsHideOffset()I

    move-result p1

    if-gt p2, p1, :cond_13

    move v3, v5

    .line 4476
    :cond_13
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {p1, v4}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onHideShowProgress(F)V

    .line 4477
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {p1, v4}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onHideShowProgress(F)V

    .line 4478
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    iget p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentPanTranslationY:F

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onContainerTranslationUpdated(F)V

    .line 4479
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    iget p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentPanTranslationY:F

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onContainerTranslationUpdated(F)V

    .line 4480
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 4481
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->ATTACH_ALERT_LAYOUT_TRANSLATION:Landroid/util/Property;

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p4

    invoke-virtual {p1, p2, p4}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4482
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v3, :cond_14

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_7

    :cond_14
    const/4 p2, 0x0

    :goto_7
    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 4483
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    :cond_15
    :goto_8
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private toggleCaptionAbove()V
    .locals 1

    .line 6533
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->captionAbove:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->setCaptionAbove(Z)V

    return-void
.end method

.method private updateActionBarVisibility(ZZ)V
    .locals 10

    .line 5307
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->animatorActionBarVisible:Lme/vkryl/android/animator/BoolAnimator;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lme/vkryl/android/animator/BoolAnimator;->setValue(ZZ)V

    if-eqz p1, :cond_0

    .line 5309
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    if-nez p1, :cond_1f

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 5310
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    :cond_2
    move-object v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 5311
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBarAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_3

    .line 5312
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 5313
    iput-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBarAnimation:Landroid/animation/AnimatorSet;

    .line 5317
    :cond_3
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->isPhotoPicker:Z

    const/4 v2, 0x0

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->storyMediaPicker:Z

    if-nez v0, :cond_6

    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarPicker:I

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->menuShowed:Z

    if-nez v0, :cond_6

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    if-ne v0, v3, :cond_6

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photosEnabled:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->videosEnabled:Z

    if-eqz v0, :cond_6

    :cond_5
    move v0, v1

    goto :goto_1

    :cond_6
    move v0, v2

    .line 5318
    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->restrictedLayout:Lorg/telegram/ui/Components/ChatAttachRestrictedLayout;

    if-ne v3, v4, :cond_7

    move v0, v2

    :cond_7
    if-eqz p1, :cond_8

    if-eqz v0, :cond_9

    .line 5327
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5328
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v3, v1}, Landroid/view/View;->setClickable(Z)V

    goto :goto_2

    .line 5330
    :cond_8
    iget-boolean v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->typeButtonsAvailable:Z

    if-eqz v3, :cond_9

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->frameLayout2:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_9

    .line 5331
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerViewWrapper:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5334
    :cond_9
    :goto_2
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v3, :cond_b

    if-eqz p1, :cond_a

    .line 5336
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->isLightStatusBar()Z

    move-result v4

    invoke-static {v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->setLightStatusBar(Landroid/view/Window;Z)V

    goto :goto_3

    .line 5338
    :cond_a
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->isLightStatusBar()Z

    move-result v4

    invoke-static {v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->setLightStatusBar(Landroid/view/Window;Z)V

    :cond_b
    :goto_3
    const v3, 0x3f19999a    # 0.6f

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz p2, :cond_13

    .line 5342
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBarAnimation:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_c

    move v6, v5

    goto :goto_4

    :cond_c
    move v6, v4

    .line 5343
    :goto_4
    iget-object v7, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v7}, Landroid/view/View;->getAlpha()F

    move-result v7

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const/high16 v7, 0x43340000    # 180.0f

    mul-float/2addr v6, v7

    float-to-long v6, v6

    invoke-virtual {p2, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 5344
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 5345
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    if-eqz p1, :cond_d

    move v8, v5

    goto :goto_5

    :cond_d
    move v8, v4

    :goto_5
    new-array v9, v1, [F

    aput v8, v9, v2

    invoke-static {v6, v7, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5346
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBarShadow:Landroid/view/View;

    if-eqz p1, :cond_e

    move v8, v5

    goto :goto_6

    :cond_e
    move v8, v4

    :goto_6
    new-array v9, v1, [F

    aput v8, v9, v2

    invoke-static {v6, v7, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_12

    .line 5351
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz p1, :cond_f

    move v4, v5

    :cond_f
    new-array v6, v1, [F

    aput v4, v6, v2

    invoke-static {v0, v7, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5352
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget-object v4, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    if-eqz p1, :cond_10

    move v6, v5

    goto :goto_7

    :cond_10
    move v6, v3

    :goto_7
    new-array v7, v1, [F

    aput v6, v7, v2

    invoke-static {v0, v4, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5353
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget-object v4, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    if-eqz p1, :cond_11

    move v3, v5

    :cond_11
    new-array v1, v1, [F

    aput v3, v1, v2

    invoke-static {v0, v4, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5355
    :cond_12
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBarAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 5356
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBarAnimation:Landroid/animation/AnimatorSet;

    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlert$33;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert$33;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Z)V

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 5380
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBarAnimation:Landroid/animation/AnimatorSet;

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 5381
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBarAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0x17c

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 5382
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBarAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_b

    :cond_13
    const/4 p2, 0x4

    if-eqz p1, :cond_15

    .line 5385
    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->typeButtonsAvailable:Z

    if-eqz v1, :cond_15

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    if-eqz v1, :cond_14

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->shouldHideBottomButtons()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 5386
    :cond_14
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerViewWrapper:Landroid/widget/FrameLayout;

    invoke-virtual {v1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 5389
    :cond_15
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz p1, :cond_16

    move v2, v5

    goto :goto_8

    :cond_16
    move v2, v4

    :goto_8
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 5390
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBarShadow:Landroid/view/View;

    if-eqz p1, :cond_17

    move v2, v5

    goto :goto_9

    :cond_17
    move v2, v4

    :goto_9
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    if-eqz v0, :cond_1b

    .line 5395
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz p1, :cond_18

    move v4, v5

    :cond_18
    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setAlpha(F)V

    .line 5396
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz p1, :cond_19

    move v1, v5

    goto :goto_a

    :cond_19
    move v1, v3

    :goto_a
    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 5397
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz p1, :cond_1a

    move v3, v5

    :cond_1a
    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleY(F)V

    :cond_1b
    if-nez p1, :cond_1e

    .line 5400
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz p1, :cond_1c

    .line 5401
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 5403
    :cond_1c
    iget p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarPicker:I

    if-nez p1, :cond_1d

    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->menuShowed:Z

    if-nez p1, :cond_1e

    .line 5404
    :cond_1d
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 5408
    :cond_1e
    :goto_b
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->updateCameraButtonVisibility()V

    :cond_1f
    return-void
.end method

.method private updateCameraButtonVisibility()V
    .locals 6

    .line 5413
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraFloatingButton:Lorg/telegram/ui/Components/FragmentFloatingButton;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 5416
    :cond_0
    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->hideCameraTile:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    if-ne v0, v3, :cond_2

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    if-ne v0, v3, :cond_2

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    if-eqz v0, :cond_2

    iget-boolean v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->deviceHasGoodCamera:Z

    if-eqz v3, :cond_2

    iget-boolean v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraOpened:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->isPhotoPicker:Z

    if-nez v3, :cond_2

    .line 5421
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->getSelectedItemsCount()I

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v1

    .line 5423
    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerViewWrapper:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v3

    .line 5424
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerViewWrapper:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_3

    const/4 v3, 0x0

    .line 5427
    :cond_3
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerViewWrapper:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/view/View;->getTranslationY()F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v5, v3

    const/high16 v3, 0x428c0000    # 70.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v5, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    if-eqz v0, :cond_5

    .line 5430
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraFloatingButton:Lorg/telegram/ui/Components/FragmentFloatingButton;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/FragmentFloatingButton;->getButtonVisible()Z

    move-result v0

    if-nez v0, :cond_4

    .line 5431
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraFloatingButton:Lorg/telegram/ui/Components/FragmentFloatingButton;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/FragmentFloatingButton;->setTranslationY(F)V

    .line 5432
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraFloatingButton:Lorg/telegram/ui/Components/FragmentFloatingButton;

    invoke-virtual {v0, v2, v2}, Lorg/telegram/ui/Components/FragmentFloatingButton;->setButtonVisible(ZZ)V

    return-void

    .line 5434
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraFloatingButton:Lorg/telegram/ui/Components/FragmentFloatingButton;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/FragmentFloatingButton;->setTranslationY(F)V

    return-void

    .line 5437
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraFloatingButton:Lorg/telegram/ui/Components/FragmentFloatingButton;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/FragmentFloatingButton;->getButtonVisible()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5438
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraFloatingButton:Lorg/telegram/ui/Components/FragmentFloatingButton;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/FragmentFloatingButton;->setButtonVisible(ZZ)V

    :cond_6
    :goto_2
    return-void
.end method

.method private updateSelectedPosition(I)V
    .locals 14

    .line 5202
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->animatorActionBarVisible:Lme/vkryl/android/animator/BoolAnimator;

    invoke-virtual {v0}, Lme/vkryl/android/animator/BoolAnimator;->getFloatValue()F

    move-result v0

    if-nez p1, :cond_0

    .line 5203
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    :goto_0
    if-eqz v1, :cond_1a

    .line 5204
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_f

    .line 5207
    :cond_1
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->getScrollOffsetY(I)I

    move-result p1

    .line 5210
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->pollLayout:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    if-eq v1, v2, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->todoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    if-ne v1, v2, :cond_2

    goto :goto_1

    :cond_2
    const/high16 v1, 0x421c0000    # 39.0f

    .line 5214
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    const/high16 v1, 0x422c0000    # 43.0f

    .line 5215
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    goto :goto_2

    :cond_3
    :goto_1
    const/high16 v1, 0x41500000    # 13.0f

    .line 5211
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    const/high16 v1, 0x41300000    # 11.0f

    .line 5212
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    .line 5217
    :goto_2
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v2, v1, v0

    .line 5224
    iput v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cornerRadius:F

    .line 5227
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0x10

    goto :goto_3

    .line 5229
    :cond_4
    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v4, v3, Landroid/graphics/Point;->x:I

    iget v3, v3, Landroid/graphics/Point;->y:I

    if-le v4, v3, :cond_5

    const/4 v3, 0x6

    goto :goto_3

    :cond_5
    const/16 v3, 0xc

    .line 5235
    :goto_3
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v4}, Landroid/view/View;->getAlpha()F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    const/high16 v6, 0x41d00000    # 26.0f

    if-eqz v4, :cond_6

    move v4, v5

    goto :goto_4

    :cond_6
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->headerView:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/view/View;->getAlpha()F

    move-result v4

    sub-float v4, v1, v4

    mul-float/2addr v4, v6

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    .line 5236
    :goto_4
    iget-boolean v7, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->menuShowed:Z

    const/high16 v8, 0x40800000    # 4.0f

    if-eqz v7, :cond_7

    iget v7, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarPicker:I

    if-nez v7, :cond_7

    iget-boolean v7, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->storyMediaPicker:Z

    if-nez v7, :cond_7

    .line 5237
    iget-object v7, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v9

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    sub-int/2addr v9, v10

    add-int/lit8 v10, v3, 0x25

    int-to-float v10, v10

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    sub-int/2addr v9, v10

    int-to-float v9, v9

    int-to-float v10, v3

    mul-float/2addr v10, v0

    const/high16 v11, 0x42140000    # 37.0f

    add-float/2addr v10, v11

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    sub-int v10, p1, v10

    int-to-float v10, v10

    add-float/2addr v10, v4

    iget-object v11, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->topCommentContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    int-to-float v11, v11

    iget-object v12, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->topCommentContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v12}, Landroid/view/View;->getAlpha()F

    move-result v12

    mul-float/2addr v11, v12

    sub-float/2addr v10, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v9

    iget v10, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentPanTranslationY:F

    add-float/2addr v9, v10

    invoke-virtual {v7, v9}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_5

    .line 5239
    :cond_7
    iget-object v7, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v9

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    sub-int/2addr v9, v10

    add-int/lit8 v10, v3, 0x25

    int-to-float v10, v10

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    sub-int/2addr v9, v10

    int-to-float v9, v9

    iget v10, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentPanTranslationY:F

    add-float/2addr v9, v10

    invoke-virtual {v7, v9}, Landroid/view/View;->setTranslationY(F)V

    .line 5242
    :goto_5
    iget-boolean v7, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->isPhotoPicker:Z

    if-eqz v7, :cond_9

    iget-boolean v7, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->openTransitionFinished:Z

    if-eqz v7, :cond_9

    .line 5243
    iget-object v7, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    if-eqz v7, :cond_8

    iget-object v9, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    if-eqz v9, :cond_8

    .line 5244
    invoke-virtual {v7}, Landroid/view/View;->getTranslationY()F

    move-result v7

    iget-object v9, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {v9}, Landroid/view/View;->getTranslationY()F

    move-result v9

    invoke-static {v7, v9}, Ljava/lang/Math;->min(FF)F

    move-result v7

    goto :goto_6

    :cond_8
    if-eqz v7, :cond_9

    .line 5246
    invoke-virtual {v7}, Landroid/view/View;->getTranslationY()F

    move-result v7

    goto :goto_6

    :cond_9
    move v7, v5

    .line 5249
    :goto_6
    iget-object v9, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v9, :cond_a

    .line 5250
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v10

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    sub-int/2addr v10, v8

    add-int/lit8 v8, v3, 0x25

    int-to-float v8, v8

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    sub-int/2addr v10, v8

    int-to-float v8, v10

    iget v10, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentPanTranslationY:F

    add-float/2addr v8, v10

    invoke-virtual {v9, v8}, Landroid/view/View;->setTranslationY(F)V

    :cond_a
    int-to-float v3, v3

    mul-float/2addr v3, v0

    const/high16 v8, 0x41c80000    # 25.0f

    add-float/2addr v3, v8

    .line 5252
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr p1, v3

    int-to-float p1, p1

    add-float/2addr p1, v4

    iget v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentPanTranslationY:F

    add-float/2addr p1, v3

    add-float/2addr p1, v7

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->topCommentContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->topCommentContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/view/View;->getAlpha()F

    move-result v4

    mul-float/2addr v3, v4

    sub-float/2addr p1, v3

    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseSelectedTextViewTranslationY:F

    .line 5253
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->headerView:Landroid/widget/FrameLayout;

    iget v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentPanTranslationY:F

    invoke-static {v4, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-virtual {v3, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 5254
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->topCommentContainer:Landroid/widget/FrameLayout;

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentPanTranslationY:F

    add-float/2addr v3, v4

    iget v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseSelectedTextViewTranslationY:F

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->headerView:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/view/View;->getAlpha()F

    move-result v7

    mul-float/2addr v6, v7

    add-float/2addr v4, v6

    const/high16 v6, 0x41000000    # 8.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v4, v6

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 5255
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->captionAbove:Z

    if-eqz p1, :cond_b

    .line 5256
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->updateCommentTextViewPosition()V

    .line 5258
    :cond_b
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->checkUi_writeButtonContainerY()V

    .line 5261
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->pollLayout:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v6, 0x3b

    const/16 v7, 0x35

    const/16 v8, 0x3f

    const/high16 v9, 0x40e00000    # 7.0f

    const/high16 v10, 0x41400000    # 12.0f

    if-eqz p1, :cond_10

    .line 5262
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result p1

    if-eqz p1, :cond_c

    move p1, v8

    goto :goto_7

    .line 5264
    :cond_c
    sget-object p1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v11, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    if-le v11, p1, :cond_d

    move p1, v7

    goto :goto_7

    :cond_d
    move p1, v6

    .line 5269
    :goto_7
    iget-object v11, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->pollLayout:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    iget-object v12, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    if-ne v11, v12, :cond_e

    .line 5270
    invoke-virtual {v11}, Landroid/view/View;->getTranslationY()F

    move-result v11

    invoke-direct {p0, v4}, Lorg/telegram/ui/Components/ChatAttachAlert;->getScrollOffsetY(I)I

    move-result v12

    int-to-float v12, v12

    add-float/2addr v11, v12

    int-to-float p1, p1

    mul-float/2addr p1, v0

    add-float/2addr p1, v9

    mul-float v12, v2, v10

    sub-float/2addr p1, v12

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr v11, p1

    .line 5271
    iget p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->translationProgress:F

    goto :goto_8

    .line 5272
    :cond_e
    iget-object v12, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    if-ne v11, v12, :cond_10

    .line 5273
    invoke-virtual {v11}, Landroid/view/View;->getTranslationY()F

    move-result v11

    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/ChatAttachAlert;->getScrollOffsetY(I)I

    move-result v12

    int-to-float v12, v12

    add-float/2addr v11, v12

    int-to-float p1, p1

    mul-float/2addr p1, v0

    add-float/2addr p1, v9

    mul-float v12, v2, v10

    sub-float/2addr p1, v12

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr v11, p1

    .line 5274
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    if-nez p1, :cond_f

    move p1, v1

    goto :goto_8

    :cond_f
    iget p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->translationProgress:F

    sub-float p1, v1, p1

    goto :goto_8

    :cond_10
    move p1, v5

    move v11, p1

    .line 5277
    :goto_8
    iget-object v12, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->todoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    if-eqz v12, :cond_15

    .line 5278
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v12

    if-eqz v12, :cond_11

    move v6, v8

    goto :goto_9

    .line 5280
    :cond_11
    sget-object v8, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v12, v8, Landroid/graphics/Point;->x:I

    iget v8, v8, Landroid/graphics/Point;->y:I

    if-le v12, v8, :cond_12

    move v6, v7

    .line 5285
    :cond_12
    :goto_9
    iget-object v7, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->todoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    iget-object v8, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    if-ne v7, v8, :cond_13

    .line 5286
    invoke-virtual {v7}, Landroid/view/View;->getTranslationY()F

    move-result v1

    invoke-direct {p0, v4}, Lorg/telegram/ui/Components/ChatAttachAlert;->getScrollOffsetY(I)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v1, v3

    int-to-float v3, v6

    mul-float/2addr v3, v0

    add-float/2addr v3, v9

    mul-float v0, v2, v10

    sub-float/2addr v3, v0

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v1, v0

    .line 5287
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->translationProgress:F

    goto :goto_b

    .line 5288
    :cond_13
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    if-ne v7, v4, :cond_15

    .line 5289
    invoke-virtual {v7}, Landroid/view/View;->getTranslationY()F

    move-result v4

    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/ChatAttachAlert;->getScrollOffsetY(I)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v4, v3

    int-to-float v3, v6

    mul-float/2addr v3, v0

    add-float/2addr v3, v9

    mul-float v0, v2, v10

    sub-float/2addr v3, v0

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    sub-float v0, v4, v0

    .line 5290
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    if-nez v3, :cond_14

    goto :goto_a

    :cond_14
    iget v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->translationProgress:F

    sub-float/2addr v1, v3

    :goto_a
    move v13, v1

    move v1, v0

    move v0, v13

    goto :goto_b

    :cond_15
    move v0, v5

    move v1, v0

    .line 5293
    :goto_b
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v3, :cond_19

    cmpl-float v4, p1, v5

    if-lez v4, :cond_16

    cmpl-float v6, v0, v5

    if-lez v6, :cond_16

    .line 5296
    invoke-static {v11, v1, v0}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v1

    goto :goto_e

    :cond_16
    if-lez v4, :cond_17

    goto :goto_c

    :cond_17
    move v11, v5

    :goto_c
    cmpl-float v4, v0, v5

    if-lez v4, :cond_18

    goto :goto_d

    :cond_18
    move v1, v5

    .line 5297
    :goto_d
    invoke-static {v11, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 5294
    :goto_e
    invoke-static {v5, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentPanTranslationY:F

    add-float/2addr v1, v4

    invoke-virtual {v3, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 5299
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    mul-float/2addr v2, v10

    add-float/2addr v2, v10

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setTranslationX(F)V

    .line 5302
    :cond_19
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->doneItemAlphaByLayout:F

    .line 5303
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->checkUi_doneItemVisibility()V

    :cond_1a
    :goto_f
    return-void
.end method

.method private updatedTopCaptionHeight()V
    .locals 4

    .line 6516
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBarShadow:Landroid/view/View;

    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentPanTranslationY:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    const/4 v0, 0x0

    .line 6517
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->updateSelectedPosition(I)V

    .line 6518
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 6519
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->topCommentContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 6520
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    if-eqz v1, :cond_1

    .line 6521
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->checkCameraViewPosition()V

    .line 6522
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RecyclerListView;->getFastScroll()Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 6523
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RecyclerListView;->getFastScroll()Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    move-result-object v1

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget v3, v3, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->listAdditionalH:I

    add-int/2addr v2, v3

    .line 6524
    iget-boolean v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->captionAbove:Z

    if-eqz v3, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->topCommentContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->topCommentContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v3

    mul-float/2addr v0, v3

    float-to-int v0, v0

    :cond_0
    add-int/2addr v2, v0

    iput v2, v1, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->topOffset:I

    .line 6525
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView;->getFastScroll()Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 6528
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->updateCommentTextViewPosition()V

    .line 6529
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->checkUi_writeButtonContainerY()V

    return-void
.end method


# virtual methods
.method protected applyCaption()V
    .locals 2

    .line 4224
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getCommentView()Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->length()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 4227
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getCommentView()Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EditTextEmoji;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->applyCaption(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public avatarFor(Lorg/telegram/ui/Components/ImageUpdater$AvatarFor;)V
    .locals 0

    .line 570
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->setAvatarFor:Lorg/telegram/ui/Components/ImageUpdater$AvatarFor;

    return-void
.end method

.method public canDismiss()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected canDismissWithSwipe()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected canDismissWithTouchOutside()Z
    .locals 1

    .line 6251
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->canDismissWithTouchOutside()Z

    move-result v0

    return v0
.end method

.method protected cancelSheetAnimation()V
    .locals 1

    .line 4891
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    .line 4892
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 4893
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->appearSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_0

    .line 4894
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    .line 4896
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 4897
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1
    const/4 v0, 0x0

    .line 4899
    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    const/4 v0, 0x0

    .line 4900
    iput v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimationType:I

    :cond_2
    return-void
.end method

.method public checkCanRemoveRestrictionsByBoosts()Z
    .locals 2

    .line 4595
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v1, v0, Lorg/telegram/ui/ChatActivity;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->checkCanRemoveRestrictionsByBoosts()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public checkCaption(Ljava/lang/CharSequence;)Z
    .locals 7

    .line 561
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v1, v0, Lorg/telegram/ui/ChatActivity;

    if-eqz v1, :cond_0

    .line 562
    check-cast v0, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v2

    .line 563
    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->checkPremiumAnimatedEmoji(IJLorg/telegram/ui/ActionBar/BaseFragment;Landroid/widget/FrameLayout;Ljava/lang/CharSequence;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public checkColors()V
    .locals 8

    .line 5081
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    if-nez v0, :cond_0

    return-void

    .line 5084
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 5086
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/ChatAttachAlert;->applyAttachButtonColors(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5088
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedTextView:Landroid/widget/TextView;

    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->forceDarkTheme:Z

    if-eqz v2, :cond_2

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_actionBarItems:I

    :goto_1
    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v2

    goto :goto_2

    :cond_2
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    goto :goto_1

    :goto_2
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5089
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->mediaPreviewTextView:Landroid/widget/TextView;

    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->forceDarkTheme:Z

    if-eqz v2, :cond_3

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_actionBarItems:I

    :goto_3
    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v2

    goto :goto_4

    :cond_3
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    goto :goto_3

    :goto_4
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5091
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueHeader:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5093
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->forceDarkTheme:Z

    if-eqz v2, :cond_4

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_actionBarItems:I

    :goto_5
    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v2

    goto :goto_6

    :cond_4
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    goto :goto_5

    :goto_6
    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIconColor(I)V

    .line 5094
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->forceDarkTheme:Z

    if-eqz v2, :cond_5

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_actionBarItemsSelector:I

    :goto_7
    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v2

    goto :goto_8

    :cond_5
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogButtonSelector:I

    goto :goto_7

    :goto_8
    invoke-static {v0, v2}, Lorg/telegram/ui/ActionBar/Theme;->setDrawableColor(Landroid/graphics/drawable/Drawable;I)V

    .line 5095
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v0, v3, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setPopupItemsColor(IZ)V

    .line 5096
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setPopupItemsColor(IZ)V

    .line 5097
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuBackground:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->redrawPopup(I)V

    .line 5099
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v0, :cond_8

    .line 5100
    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->forceDarkTheme:Z

    if-eqz v2, :cond_6

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_actionBarItems:I

    :goto_9
    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v2

    goto :goto_a

    :cond_6
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    goto :goto_9

    :goto_a
    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIconColor(I)V

    .line 5101
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->forceDarkTheme:Z

    if-eqz v2, :cond_7

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_actionBarItemsSelector:I

    :goto_b
    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v2

    goto :goto_c

    :cond_7
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogButtonSelector:I

    goto :goto_b

    :goto_c
    invoke-static {v0, v2}, Lorg/telegram/ui/ActionBar/Theme;->setDrawableColor(Landroid/graphics/drawable/Drawable;I)V

    .line 5104
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->updateColors()V

    .line 5106
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBarShadow:Landroid/view/View;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogShadowLine:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 5108
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogScrollGlow:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setGlowColor(I)V

    .line 5113
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->forceDarkTheme:Z

    if-eqz v2, :cond_9

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_actionBar:I

    :goto_d
    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v2

    goto :goto_e

    :cond_9
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    goto :goto_d

    :goto_e
    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 5114
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->forceDarkTheme:Z

    if-eqz v2, :cond_a

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_actionBarItems:I

    :goto_f
    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v2

    goto :goto_10

    :cond_a
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    goto :goto_f

    :goto_10
    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    .line 5115
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->forceDarkTheme:Z

    if-eqz v2, :cond_b

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_actionBarItemsSelector:I

    :goto_11
    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v2

    goto :goto_12

    :cond_b
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogButtonSelector:I

    goto :goto_11

    :goto_12
    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    .line 5116
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->forceDarkTheme:Z

    if-eqz v2, :cond_c

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_actionBarItems:I

    :goto_13
    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v2

    goto :goto_14

    :cond_c
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    goto :goto_13

    :goto_14
    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleColor(I)V

    .line 5118
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getShadowDrawableColor()I

    move-result v2

    invoke-static {v0, v2}, Lorg/telegram/ui/ActionBar/Theme;->setDrawableColor(Landroid/graphics/drawable/Drawable;I)V

    .line 5120
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    move v0, v1

    .line 5122
    :goto_15
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->layouts:[Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    array-length v4, v2

    if-ge v0, v4, :cond_e

    .line 5123
    aget-object v2, v2, v0

    if-eqz v2, :cond_d

    .line 5124
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->checkColors()V

    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 5128
    :cond_e
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v0, v2, :cond_10

    const/4 v0, -0x1

    .line 5129
    iput v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->navBarColorKey:I

    .line 5130
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackgroundGray:I

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->navBarColor:I

    .line 5131
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v0

    invoke-static {p0, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->setNavigationBarColor(Landroid/app/Dialog;IZ)V

    .line 5132
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->navBarColor:I

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result v0

    float-to-double v4, v0

    const-wide v6, 0x3fe7126e978d4fdfL    # 0.721

    cmpl-double v0, v4, v6

    if-lez v0, :cond_f

    move v1, v3

    :cond_f
    invoke-static {p0, v1}, Lorg/telegram/messenger/AndroidUtilities;->setLightNavigationBar(Landroid/app/Dialog;Z)V

    return-void

    .line 5134
    :cond_10
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->fixNavigationBar(I)V

    return-void
.end method

.method public checkUi_moveCaptionButtonVisibility()V
    .locals 2

    .line 639
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->animatorCaptionNotEmpty:Lme/vkryl/android/animator/BoolAnimator;

    invoke-virtual {v0}, Lme/vkryl/android/animator/BoolAnimator;->getFloatValue()F

    move-result v0

    .line 640
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->animatorToggleCaptionSupported:Lme/vkryl/android/animator/BoolAnimator;

    invoke-virtual {v1}, Lme/vkryl/android/animator/BoolAnimator;->getFloatValue()F

    move-result v1

    mul-float/2addr v0, v1

    .line 643
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->moveCaptionButton:Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lorg/telegram/ui/Components/FragmentFloatingButton;->setAnimatedVisibility(Landroid/view/View;F)V

    return-void
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    .line 5184
    sget p2, Lorg/telegram/messenger/NotificationCenter;->reloadInlineHints:I

    if-eq p1, p2, :cond_1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->attachMenuBotsDidLoad:I

    if-eq p1, p2, :cond_1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->quickRepliesUpdated:I

    if-ne p1, p2, :cond_0

    goto :goto_0

    .line 5188
    :cond_0
    sget p2, Lorg/telegram/messenger/NotificationCenter;->currentUserPremiumStatusChanged:I

    if-ne p1, p2, :cond_2

    .line 5189
    sget p1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->getCaptionMaxLengthLimit()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentLimit:I

    return-void

    .line 5185
    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsAdapter:Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;

    if-eqz p1, :cond_2

    .line 5186
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method

.method public dismiss()V
    .locals 6

    .line 6273
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onDismiss()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->isDismissed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 6276
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    if-eqz v0, :cond_1

    .line 6277
    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 6279
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->topCommentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    if-eqz v0, :cond_2

    .line 6280
    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 6282
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botAttachLayouts:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 6283
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-nez v0, :cond_3

    .line 6285
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    .line 6287
    :cond_3
    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->allowPassConfirmationAlert:Z

    const/4 v2, 0x1

    if-nez v1, :cond_5

    if-eqz v0, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getSelectedItemsCount()I

    move-result v1

    if-lez v1, :cond_5

    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->isPhotoPicker:Z

    if-nez v1, :cond_5

    .line 6288
    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->confirmationAlertShown:Z

    if-eqz v1, :cond_4

    goto/16 :goto_1

    .line 6291
    :cond_4
    iput-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->confirmationAlertShown:Z

    .line 6292
    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 6293
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v1, v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget v0, Lorg/telegram/messenger/R$string;->DiscardSelectionAlertTitle:I

    .line 6294
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->DiscardSelectionAlertMessage:I

    .line 6295
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->Discard:I

    .line 6296
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->Cancel:I

    .line 6300
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    .line 6301
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    .line 6310
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setOnPreDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    .line 6313
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    .line 6314
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    const/4 v1, -0x1

    .line 6315
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 6317
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    :cond_5
    const/4 v1, 0x0

    move v3, v1

    .line 6321
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->layouts:[Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    array-length v5, v4

    if-ge v3, v5, :cond_7

    .line 6322
    aget-object v4, v4, v3

    if-eqz v4, :cond_6

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    if-eq v5, v4, :cond_6

    .line 6323
    invoke-virtual {v4}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onDismiss()Z

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6326
    :cond_7
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-virtual {p0, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v3

    invoke-static {v3, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v3

    new-instance v4, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda3;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-static {p0, v3, v2, v4}, Lorg/telegram/messenger/AndroidUtilities;->setNavigationBarColor(Landroid/app/Dialog;IZLorg/telegram/messenger/AndroidUtilities$IntColorCallback;)V

    if-eqz v0, :cond_8

    .line 6332
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->isLightStatusBar()Z

    move-result v0

    invoke-static {v2, v0}, Lorg/telegram/messenger/AndroidUtilities;->setLightStatusBar(Landroid/view/Window;Z)V

    .line 6334
    :cond_8
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->captionLimitBulletinShown:Z

    .line 6335
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    .line 6336
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->allowPassConfirmationAlert:Z

    :cond_9
    :goto_1
    return-void
.end method

.method public dismiss(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 6266
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->allowPassConfirmationAlert:Z

    .line 6268
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss()V

    return-void
.end method

.method public dismissInternal()V
    .locals 2

    .line 6184
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->delegate:Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;

    if-eqz v0, :cond_0

    .line 6185
    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-interface {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;->doOnIdle(Ljava/lang/Runnable;)V

    return-void

    .line 6187
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->removeFromRoot()V

    return-void
.end method

.method public dismissWithButtonClick(I)V
    .locals 1

    .line 6245
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismissWithButtonClick(I)V

    .line 6246
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onDismissWithButtonClick(I)V

    return-void
.end method

.method public enableDefaultMode()V
    .locals 2

    const/4 v0, 0x1

    .line 5861
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->typeButtonsAvailable:Z

    .line 5862
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerViewWrapper:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5863
    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarPicker:I

    .line 5864
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->isPhotoPicker:Z

    .line 5865
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->isStickerMode:Z

    const/4 v0, 0x0

    .line 5866
    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->customStickerHandler:Lorg/telegram/messenger/Utilities$Callback2;

    .line 5867
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->optionsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v0, :cond_0

    .line 5868
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 5869
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->optionsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public enableStickerMode(Lorg/telegram/messenger/Utilities$Callback2;)V
    .locals 3

    .line 5843
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedTextView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/messenger/R$string;->ChoosePhotoForSticker:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    .line 5844
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->typeButtonsAvailable:Z

    .line 5845
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerViewWrapper:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const/4 v1, 0x1

    .line 5846
    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarPicker:I

    .line 5847
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->isPhotoPicker:Z

    .line 5848
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->isStickerMode:Z

    .line 5849
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->customStickerHandler:Lorg/telegram/messenger/Utilities$Callback2;

    .line 5850
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->optionsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz p1, :cond_0

    .line 5851
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedTextView:Landroid/widget/TextView;

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 5852
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->optionsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 5853
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->optionsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1, v1}, Landroid/view/View;->setClickable(Z)V

    .line 5854
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->optionsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setAlpha(F)V

    .line 5855
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->optionsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 5856
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->optionsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    :cond_0
    return-void
.end method

.method public getAdditionalMessagesCount()I
    .locals 2

    .line 4839
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v1, v0, Lorg/telegram/ui/ChatActivity;

    if-eqz v1, :cond_0

    .line 4840
    check-cast v0, Lorg/telegram/ui/ChatActivity;

    .line 4841
    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    if-eqz v0, :cond_0

    .line 4842
    invoke-virtual {v0}, Lorg/telegram/messenger/MessagePreviewParams;->getForwardedMessagesCount()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getAvatarFor()Lorg/telegram/ui/Components/ImageUpdater$AvatarFor;
    .locals 1

    .line 574
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->setAvatarFor:Lorg/telegram/ui/Components/ImageUpdater$AvatarFor;

    return-object v0
.end method

.method public getBaseFragment()Lorg/telegram/ui/ActionBar/BaseFragment;
    .locals 1

    .line 6353
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    return-object v0
.end method

.method public getChat()Lorg/telegram/tgnet/TLRPC$Chat;
    .locals 3

    .line 247
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v1, v0, Lorg/telegram/ui/ChatActivity;

    if-eqz v1, :cond_0

    .line 248
    check-cast v0, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    return-object v0

    .line 250
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->dialogId:J

    neg-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    return-object v0
.end method

.method public getClipLayoutBottom()F
    .locals 3

    .line 259
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->frameLayout2:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    const/high16 v1, 0x42a80000    # 84.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->frameLayout2:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v1

    mul-float/2addr v0, v2

    .line 260
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->frameLayout2:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v0

    return v1
.end method

.method public getCommentTextView()Lorg/telegram/ui/Components/EditTextEmoji;
    .locals 1

    .line 6357
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    return-object v0
.end method

.method public getCommentTextViewTop()I
    .locals 2

    .line 4099
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextViewLocation:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getCommentView()Lorg/telegram/ui/Components/EditTextEmoji;
    .locals 2

    .line 6240
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->captionAbove:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoPreviewLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->topCommentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    return-object v0
.end method

.method public getCurrentAttachLayout()Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;
    .locals 1

    .line 4528
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    return-object v0
.end method

.method public getDialogId()J
    .locals 2

    .line 610
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v1, v0, Lorg/telegram/ui/ChatActivity;

    if-eqz v1, :cond_0

    .line 611
    check-cast v0, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v0

    return-wide v0

    .line 613
    :cond_0
    iget-wide v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->dialogId:J

    return-wide v0
.end method

.method public getDocumentLayout()Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;
    .locals 1

    .line 6361
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->documentLayout:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    return-object v0
.end method

.method public getEditingMessageObject()Lorg/telegram/messenger/MessageObject;
    .locals 1

    .line 4220
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    return-object v0
.end method

.method public getPhotoLayout()Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;
    .locals 1

    .line 5927
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    return-object v0
.end method

.method public getPhotoPreviewLayout()Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;
    .locals 1

    .line 4532
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoPreviewLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    return-object v0
.end method

.method public getSelectedTextView()Landroid/widget/TextView;
    .locals 1

    .line 5874
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 10

    .line 5067
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 5068
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->layouts:[Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 5069
    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    .line 5070
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getThemeDescriptions()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5072
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5076
    :cond_1
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    const/4 v8, 0x0

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackgroundGray:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public hasCaption()Z
    .locals 10

    .line 3975
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3979
    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->getSelectedPhotos()Ljava/util/HashMap;

    move-result-object v0

    .line 3980
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->getSelectedPhotosOrder()Ljava/util/ArrayList;

    move-result-object v2

    .line 3981
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8

    move v3, v1

    move v4, v3

    :goto_0
    int-to-double v5, v3

    .line 3982
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x41200000    # 10.0f

    div-float/2addr v7, v8

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    cmpg-double v5, v5, v7

    if-gez v5, :cond_7

    .line 3983
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v5

    mul-int/lit8 v6, v3, 0xa

    sub-int/2addr v5, v6

    const/16 v7, 0xa

    invoke-static {v7, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 3984
    sget-object v7, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v7}, Ljava/util/Random;->nextLong()J

    move v7, v1

    :goto_1
    if-ge v7, v5, :cond_6

    add-int v8, v6, v7

    .line 3986
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lt v8, v9, :cond_1

    goto :goto_3

    .line 3989
    :cond_1
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 3990
    iget-object v8, v8, Lorg/telegram/messenger/MediaController$MediaEditState;->caption:Ljava/lang/CharSequence;

    if-nez v8, :cond_2

    const-string v8, ""

    goto :goto_2

    :cond_2
    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3991
    :goto_2
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getCommentView()Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object v9

    if-eqz v9, :cond_3

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    if-nez v7, :cond_3

    .line 3992
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getCommentView()Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/ui/Components/EditTextEmoji;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3994
    :cond_3
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    if-eqz v4, :cond_4

    return v1

    :cond_4
    const/4 v4, 0x1

    :cond_5
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_7
    return v4

    :cond_8
    return v1
.end method

.method public init()V
    .locals 16

    move-object/from16 v0, p0

    .line 5599
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->effectId:J

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->setEffect(J)V

    const/4 v1, 0x0

    .line 5600
    iput-boolean v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->botButtonWasVisible:Z

    .line 5601
    iput-boolean v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->botButtonProgressWasVisible:Z

    const/4 v4, 0x0

    .line 5602
    iput v4, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->botMainButtonOffsetY:F

    .line 5603
    iget-object v5, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->botMainButtonTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 5604
    iget-object v5, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->botProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v5, v4}, Lorg/telegram/ui/Components/RadialProgressView;->setAlpha(F)V

    .line 5605
    iget-object v5, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->botProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    const v7, 0x3dcccccd    # 0.1f

    invoke-virtual {v5, v7}, Landroid/view/View;->setScaleX(F)V

    .line 5606
    iget-object v5, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->botProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v5, v7}, Landroid/view/View;->setScaleY(F)V

    .line 5607
    iget-object v5, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->botProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 5608
    iget-object v5, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerViewWrapper:Landroid/widget/FrameLayout;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v5, v7}, Landroid/view/View;->setAlpha(F)V

    .line 5609
    iget-object v5, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerViewWrapper:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v4}, Landroid/view/View;->setTranslationY(F)V

    move v5, v1

    .line 5610
    :goto_0
    iget-object v8, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->botAttachLayouts:Landroid/util/LongSparseArray;

    invoke-virtual {v8}, Landroid/util/LongSparseArray;->size()I

    move-result v8

    if-ge v5, v8, :cond_0

    .line 5611
    iget-object v8, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->botAttachLayouts:Landroid/util/LongSparseArray;

    invoke-virtual {v8, v5}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;

    invoke-virtual {v8, v1}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->setMeasureOffsetY(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 5616
    :cond_0
    iget v5, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarPicker:I

    const/4 v8, 0x0

    const/4 v9, 0x2

    if-eq v5, v9, :cond_3

    .line 5617
    iget-object v5, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v10, v5, Lorg/telegram/ui/ChatActivity;

    if-eqz v10, :cond_1

    .line 5618
    check-cast v5, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v5}, Lorg/telegram/ui/ChatActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    .line 5619
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    check-cast v3, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ChatActivity;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    goto :goto_1

    .line 5620
    :cond_1
    iget-wide v10, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->dialogId:J

    cmp-long v5, v10, v2

    if-ltz v5, :cond_2

    .line 5621
    iget v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-wide v10, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->dialogId:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    move-object v2, v8

    goto :goto_1

    :cond_2
    cmp-long v2, v10, v2

    if-gez v2, :cond_3

    .line 5623
    iget v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-wide v10, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->dialogId:J

    neg-long v10, v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    move-object v3, v8

    goto :goto_1

    :cond_3
    move-object v2, v8

    move-object v3, v2

    .line 5627
    :goto_1
    iget-object v5, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v5, v5, Lorg/telegram/ui/ChatActivity;

    const/4 v10, 0x1

    if-eqz v5, :cond_4

    iget v5, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarPicker:I

    if-ne v5, v9, :cond_5

    :cond_4
    if-nez v2, :cond_5

    if-eqz v3, :cond_c

    :cond_5
    if-eqz v2, :cond_7

    .line 5630
    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->canSendPhoto(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    iput-boolean v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->photosEnabled:Z

    .line 5631
    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->canSendVideo(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    iput-boolean v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->videosEnabled:Z

    .line 5632
    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->canSendMusic(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    iput-boolean v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->musicEnabled:Z

    .line 5633
    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->canSendPolls(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    iput-boolean v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->pollsEnabled:Z

    .line 5634
    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->canSendPolls(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    if-eqz v3, :cond_6

    move v3, v10

    goto :goto_2

    :cond_6
    move v3, v1

    :goto_2
    iput-boolean v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->todoEnabled:Z

    .line 5635
    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->canSendPlain(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    iput-boolean v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->plainTextEnabled:Z

    .line 5636
    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->canSendDocument(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    iput-boolean v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->documentsEnabled:Z

    goto :goto_7

    .line 5638
    :cond_7
    invoke-static {v3}, Lorg/telegram/messenger/UserObject;->isBot(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-static {v3}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_3

    :cond_8
    move v2, v1

    goto :goto_4

    :cond_9
    :goto_3
    move v2, v10

    :goto_4
    iput-boolean v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->pollsEnabled:Z

    .line 5639
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v3, v2, Lorg/telegram/ui/ChatActivity;

    if-eqz v3, :cond_b

    check-cast v2, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->getCurrentEncryptedChat()Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v2

    if-nez v2, :cond_a

    goto :goto_5

    :cond_a
    move v2, v1

    goto :goto_6

    :cond_b
    :goto_5
    move v2, v10

    :goto_6
    iput-boolean v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->todoEnabled:Z

    .line 5641
    :goto_7
    iget-boolean v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->todoEnabled:Z

    iget v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v3

    and-int/2addr v2, v3

    iput-boolean v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->todoEnabled:Z

    .line 5643
    :cond_c
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v2, v2, Lorg/telegram/ui/ChatActivity;

    if-eqz v2, :cond_d

    iget v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarPicker:I

    if-ne v2, v9, :cond_f

    .line 5644
    :cond_d
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    iget-boolean v5, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->allowEnterCaption:Z

    if-eqz v5, :cond_e

    move v5, v1

    goto :goto_8

    :cond_e
    const/4 v5, 0x4

    :goto_8
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 5646
    :cond_f
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-boolean v5, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->videosEnabled:Z

    iget-boolean v11, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->photosEnabled:Z

    iget-boolean v12, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->documentsEnabled:Z

    invoke-virtual {v2, v5, v11, v12}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->onInit(ZZZ)V

    .line 5647
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v2, v10}, Lorg/telegram/ui/Components/EditTextEmoji;->hidePopup(Z)V

    .line 5648
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->topCommentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v2, v10}, Lorg/telegram/ui/Components/EditTextEmoji;->hidePopup(Z)V

    .line 5649
    iput-boolean v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->enterCommentEventSent:Z

    .line 5650
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setFocusable(Z)V

    .line 5652
    iget-boolean v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->isStoryLocationPicker:Z

    const/4 v5, -0x1

    if-nez v2, :cond_1a

    iget-boolean v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->isBizLocationPicker:Z

    if-eqz v2, :cond_10

    goto/16 :goto_b

    .line 5659
    :cond_10
    iget-boolean v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->isStoryAudioPicker:Z

    const-wide/16 v11, 0x3

    if-eqz v2, :cond_11

    .line 5660
    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->openAudioLayout(Z)V

    .line 5661
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->audioLayout:Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;

    .line 5662
    iput-wide v11, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedId:J

    goto/16 :goto_c

    .line 5663
    :cond_11
    iget-boolean v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->isSoundPicker:Z

    const-wide/16 v13, 0x4

    if-eqz v2, :cond_12

    .line 5664
    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->openDocumentsLayout(Z)V

    .line 5665
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->documentLayout:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    .line 5666
    iput-wide v13, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedId:J

    goto/16 :goto_c

    .line 5667
    :cond_12
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    const-wide/16 v3, 0x1

    if-eqz v2, :cond_18

    .line 5668
    iget v15, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->editType:I

    if-ne v15, v5, :cond_15

    .line 5669
    iput-boolean v10, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->typeButtonsAvailable:Z

    .line 5670
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 5671
    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->openAudioLayout(Z)V

    .line 5672
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->audioLayout:Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;

    .line 5673
    iput-wide v11, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedId:J

    goto/16 :goto_c

    .line 5674
    :cond_13
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isDocument()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 5675
    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->openDocumentsLayout(Z)V

    .line 5676
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->documentLayout:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    .line 5677
    iput-wide v13, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedId:J

    goto :goto_c

    .line 5679
    :cond_14
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    .line 5680
    iput-wide v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedId:J

    goto :goto_c

    :cond_15
    if-ne v15, v9, :cond_16

    .line 5684
    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->openAudioLayout(Z)V

    .line 5685
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->audioLayout:Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;

    .line 5686
    iput-wide v11, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedId:J

    goto :goto_9

    :cond_16
    if-ne v15, v10, :cond_17

    .line 5688
    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->openDocumentsLayout(Z)V

    .line 5689
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->documentLayout:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    .line 5690
    iput-wide v13, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedId:J

    goto :goto_9

    .line 5692
    :cond_17
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    .line 5693
    iput-wide v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedId:J

    .line 5695
    :goto_9
    iput-boolean v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->typeButtonsAvailable:Z

    goto :goto_c

    .line 5698
    :cond_18
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    .line 5699
    iget v9, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarPicker:I

    if-nez v9, :cond_19

    iget-boolean v9, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->storyMediaPicker:Z

    if-nez v9, :cond_19

    move v9, v10

    goto :goto_a

    :cond_19
    move v9, v1

    :goto_a
    iput-boolean v9, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->typeButtonsAvailable:Z

    .line 5700
    iput-wide v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedId:J

    goto :goto_c

    .line 5653
    :cond_1a
    :goto_b
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->locationLayout:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    if-nez v2, :cond_1b

    .line 5654
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->layouts:[Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    new-instance v3, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v9, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v3, v0, v4, v9}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->locationLayout:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    const/4 v4, 0x5

    aput-object v3, v2, v4

    .line 5655
    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda31;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda31;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->setDelegate(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$LocationActivityDelegate;)V

    :cond_1b
    const-wide/16 v2, 0x5

    .line 5657
    iput-wide v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedId:J

    .line 5658
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->locationLayout:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    .line 5702
    :goto_c
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerViewWrapper:Landroid/widget/FrameLayout;

    iget-boolean v4, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->typeButtonsAvailable:Z

    if-eqz v4, :cond_1c

    move v4, v1

    goto :goto_d

    :cond_1c
    move v4, v6

    :goto_d
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 5703
    iget-boolean v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->typeButtonsAvailable:Z

    if-eqz v3, :cond_1d

    .line 5704
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerViewWrapper:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v7}, Landroid/view/View;->setAlpha(F)V

    .line 5705
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerViewWrapper:Landroid/widget/FrameLayout;

    const/4 v15, 0x0

    invoke-virtual {v3, v15}, Landroid/view/View;->setTranslationY(F)V

    .line 5707
    :cond_1d
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    if-eq v3, v2, :cond_21

    .line 5708
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBar;->isSearchFieldVisible()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 5709
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBar;->closeSearchField()V

    .line 5711
    :cond_1e
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 5712
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onHide()V

    .line 5713
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 5714
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onHidden()V

    .line 5715
    iput-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    .line 5716
    invoke-virtual {v0, v10}, Lorg/telegram/ui/Components/ChatAttachAlert;->setAllowNestedScroll(Z)V

    .line 5717
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_1f

    .line 5718
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    const/high16 v6, -0x40800000    # -1.0f

    invoke-static {v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v4, v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 5720
    :cond_1f
    invoke-virtual {v2, v7}, Landroid/view/View;->setAlpha(F)V

    .line 5721
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5722
    invoke-virtual {v2, v8}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onShow(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;)V

    .line 5723
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onShown()V

    .line 5724
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->needsActionBar()I

    move-result v2

    if-eqz v2, :cond_20

    move v2, v1

    goto :goto_e

    :cond_20
    const/4 v2, 0x4

    :goto_e
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5725
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBarShadow:Landroid/view/View;

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 5727
    iget-boolean v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->captionAbove:Z

    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->setCaptionAbove(ZZ)V

    .line 5728
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->updateDoneItemEnabled()V

    .line 5729
    invoke-direct {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->updateCameraButtonVisibility()V

    .line 5731
    :cond_21
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    if-eq v2, v3, :cond_22

    .line 5732
    invoke-virtual {v3, v10}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->setCheckCameraWhenShown(Z)V

    .line 5734
    :cond_22
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->updateCountButton(I)V

    .line 5736
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsAdapter:Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->notifyDataSetChanged()V

    .line 5737
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getCommentView()Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/EditTextEmoji;->setText(Ljava/lang/CharSequence;)V

    .line 5738
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    const v3, 0xf4240

    invoke-virtual {v2, v1, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    return-void
.end method

.method public isCaptionAbove()Z
    .locals 2

    .line 4048
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->captionAbove:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoPreviewLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public makeFocusable(Lorg/telegram/ui/Components/EditTextBoldCursor;Z)V
    .locals 2

    .line 5039
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->delegate:Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;

    if-nez v0, :cond_0

    goto :goto_1

    .line 5042
    :cond_0
    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->enterCommentEventSent:Z

    if-nez v1, :cond_2

    .line 5043
    invoke-interface {v0}, Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;->needEnterComment()Z

    move-result v0

    const/4 v1, 0x1

    .line 5044
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->enterCommentEventSent:Z

    .line 5045
    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda36;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda36;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/ui/Components/EditTextBoldCursor;Z)V

    if-eqz v0, :cond_1

    const-wide/16 p1, 0xc8

    goto :goto_0

    :cond_1
    const-wide/16 p1, 0x0

    :goto_0
    invoke-static {v1, p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onActivityResultFragment(ILandroid/content/Intent;Ljava/lang/String;)V
    .locals 1

    .line 5179
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->onActivityResultFragment(ILandroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 6219
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 6220
    invoke-virtual {p0}, Landroid/app/Dialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6221
    invoke-virtual {p0}, Landroid/app/Dialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void

    .line 6225
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->isSearchFieldVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6226
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->closeSearchField()V

    return-void

    .line 6229
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    return-void

    .line 6232
    :cond_3
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getCommentView()Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getCommentView()Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6233
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getCommentView()Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextEmoji;->hidePopup(Z)V

    return-void

    .line 6236
    :cond_4
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->onBackPressed()V

    return-void
.end method

.method public onCameraStateChanged()V
    .locals 0

    .line 5444
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->updateCameraButtonVisibility()V

    return-void
.end method

.method protected onContainerTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 5035
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onContainerViewTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 4117
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->onCreate(Landroid/os/Bundle;)V

    .line 4118
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz p1, :cond_0

    .line 4119
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->isLightStatusBar()Z

    move-result v0

    invoke-static {p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->setLightStatusBar(Landroid/view/Window;Z)V

    :cond_0
    return-void
.end method

.method protected onCustomLayout(Landroid/view/View;IIII)Z
    .locals 6

    .line 5148
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->onCustomLayout(Landroid/view/View;IIII)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected onCustomMeasure(Landroid/view/View;II)Z
    .locals 1

    .line 5140
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->onCustomMeasure(Landroid/view/View;II)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected onCustomOpenAnimation()Z
    .locals 12

    .line 4909
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 4910
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->mediaPreviewView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 4911
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedView:Landroid/widget/LinearLayout;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 4913
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 4914
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    int-to-float v0, v0

    invoke-virtual {v3, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 4916
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsAnimation:Landroid/animation/AnimatorSet;

    .line 4917
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->ATTACH_ALERT_PROGRESS:Landroid/util/Property;

    const/4 v4, 0x2

    new-array v5, v4, [F

    fill-array-data v5, :array_0

    invoke-static {p0, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const/4 v5, 0x1

    new-array v6, v5, [Landroid/animation/Animator;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 4918
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v8, 0x190

    invoke-virtual {v0, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 4919
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v10, 0x14

    invoke-virtual {v0, v10, v11}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 4920
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->ATTACH_ALERT_PROGRESS:Landroid/util/Property;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, p0, v3}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4921
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 4923
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->navigationBarAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 4924
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 4926
    :cond_0
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->navigationBarAlpha:F

    new-array v3, v4, [F

    aput v0, v3, v7

    aput v2, v3, v5

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->navigationBarAnimation:Landroid/animation/ValueAnimator;

    .line 4927
    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 4934
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->appearSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_1

    .line 4935
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    .line 4937
    :cond_1
    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    sget-object v3, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-direct {v0, v2, v3, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->appearSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 4938
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    const/high16 v3, 0x43af0000    # 350.0f

    const/high16 v6, 0x3f400000    # 0.75f

    if-eqz v2, :cond_2

    .line 4939
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 4940
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->appearSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    goto :goto_0

    .line 4942
    :cond_2
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 4943
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->appearSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 4945
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->appearSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    .line 4947
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->useHardwareLayer:Z

    if-eqz v0, :cond_3

    .line 4948
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    const/4 v2, 0x0

    invoke-virtual {v0, v4, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 4950
    :cond_3
    iput v5, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimationType:I

    .line 4951
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    .line 4952
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backDrawable:Landroid/graphics/drawable/ColorDrawable;

    sget-object v3, Lorg/telegram/ui/Components/AnimationProperties;->COLOR_DRAWABLE_ALPHA:Landroid/util/Property;

    .line 4953
    iget-boolean v6, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->dimBehind:Z

    if-eqz v6, :cond_4

    iget v6, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->dimBehindAlpha:I

    goto :goto_1

    :cond_4
    move v6, v7

    :goto_1
    filled-new-array {v6}, [I

    move-result-object v6

    invoke-static {v2, v3, v6}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-array v3, v5, [Landroid/animation/Animator;

    aput-object v2, v3, v7

    .line 4952
    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 4955
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 4956
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v10, v11}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 4957
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->openInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4958
    new-instance v0, Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-direct {v0}, Lorg/telegram/messenger/AnimationNotificationsLocker;-><init>()V

    .line 4959
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->delegate:Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetDelegateInterface;

    .line 4960
    new-instance v3, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda9;

    invoke-direct {v3, p0, v0, v2}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/messenger/AnimationNotificationsLocker;Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetDelegateInterface;)V

    .line 4979
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->appearSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v6, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda10;

    invoke-direct {v6, p0, v3}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v6}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 4984
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    new-instance v6, Lorg/telegram/ui/Components/ChatAttachAlert$32;

    invoke-direct {v6, p0, v3}, Lorg/telegram/ui/Components/ChatAttachAlert$32;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 5003
    invoke-virtual {v0}, Lorg/telegram/messenger/AnimationNotificationsLocker;->lock()V

    .line 5004
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->stopAllHeavyOperations:I

    const/16 v3, 0x200

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v6, v5, [Ljava/lang/Object;

    aput-object v3, v6, v7

    invoke-virtual {v0, v2, v6}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 5005
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 5013
    new-array v0, v4, [F

    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 5014
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->setNavBarAlpha(F)V

    .line 5015
    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v1, 0x19

    .line 5018
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    const-wide/16 v1, 0xc8

    .line 5019
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 5020
    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 5021
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return v5

    :array_0
    .array-data 4
        0x0
        0x43c80000    # 400.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onDestroy()V
    .locals 3

    const/4 v0, 0x0

    .line 5742
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->layouts:[Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 5743
    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 5744
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onDestroy()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5747
    :cond_1
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->reloadInlineHints:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 5748
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->attachMenuBotsDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 5749
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->currentUserPremiumStatusChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 5750
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->quickRepliesUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    const/4 v0, 0x1

    .line 5751
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->destroyed:Z

    .line 5752
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    if-eqz v0, :cond_2

    .line 5753
    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->onDestroy()V

    .line 5755
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->topCommentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    if-eqz v0, :cond_3

    .line 5756
    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->onDestroy()V

    .line 5760
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    if-eqz v0, :cond_5

    .line 5761
    invoke-virtual {v0}, Lorg/telegram/ui/Components/MentionsContainerView;->getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 5762
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/MentionsContainerView;->getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->onDestroy()V

    .line 5764
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/MentionsContainerView;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 5765
    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    .line 5767
    :cond_5
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/telegram/ui/PhotoViewer;->nullifyParentAlert(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    return-void
.end method

.method protected onDismissWithTouchOutside()V
    .locals 1

    .line 6256
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onDismissWithTouchOutside()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6257
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss()V

    :cond_0
    return-void
.end method

.method public synthetic onFactorChangeFinished(IFLme/vkryl/android/animator/FactorAnimator;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lme/vkryl/android/animator/FactorAnimator$Target$-CC;->$default$onFactorChangeFinished(Lme/vkryl/android/animator/FactorAnimator$Target;IFLme/vkryl/android/animator/FactorAnimator;)V

    return-void
.end method

.method public onFactorChanged(IFFLme/vkryl/android/animator/FactorAnimator;)V
    .locals 1

    if-nez p1, :cond_0

    .line 619
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->checkUi_writeButtonContainerY()V

    .line 620
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->checkUi_bottomFade()V

    return-void

    :cond_0
    const/4 p2, 0x2

    const/4 p3, 0x1

    if-ne p1, p2, :cond_6

    .line 622
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->checkUi_bottomFade()V

    .line 623
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->pollLayout:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    const/4 p2, 0x0

    if-eqz p1, :cond_3

    iget-object p4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    if-eq p4, p1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    if-ne v0, p1, :cond_3

    :cond_1
    if-ne p4, p1, :cond_2

    move p1, p3

    goto :goto_0

    :cond_2
    move p1, p2

    .line 624
    :goto_0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->updateSelectedPosition(I)V

    .line 626
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->todoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    if-eqz p1, :cond_9

    iget-object p4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    if-eq p4, p1, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    if-ne v0, p1, :cond_9

    :cond_4
    if-ne p4, p1, :cond_5

    goto :goto_1

    :cond_5
    move p3, p2

    .line 627
    :goto_1
    invoke-direct {p0, p3}, Lorg/telegram/ui/Components/ChatAttachAlert;->updateSelectedPosition(I)V

    return-void

    :cond_6
    if-ne p1, p3, :cond_7

    .line 630
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->checkUi_bottomFade()V

    return-void

    :cond_7
    const/4 p2, 0x3

    if-ne p1, p2, :cond_8

    .line 632
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->checkUi_moveCaptionButtonVisibility()V

    return-void

    :cond_8
    const/4 p2, 0x4

    if-ne p1, p2, :cond_9

    .line 634
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->checkUi_moveCaptionButtonVisibility()V

    :cond_9
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 6341
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onSheetKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 6344
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onLongClickBotButton(Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 9

    if-eqz p1, :cond_0

    .line 4129
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->short_name:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    .line 4132
    :goto_0
    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MediaDataController;->getAttachMenuBots()Lorg/telegram/tgnet/TLRPC$TL_attachMenuBots;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBots;->bots:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :cond_1
    if-ge v4, v2, :cond_2

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;

    .line 4133
    iget-wide v5, v5, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->bot_id:J

    iget-wide v7, p2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    cmp-long v5, v5, v7

    if-nez v5, :cond_1

    .line 4138
    :cond_2
    sget v1, Lorg/telegram/messenger/R$string;->BotRemoveFromMenu:I

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/Object;

    aput-object v0, v4, v3

    const-string v5, "BotRemoveFromMenu"

    invoke-static {v5, v1, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 4139
    new-instance v4, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v5, Lorg/telegram/messenger/R$string;->BotRemoveFromMenuTitle:I

    .line 4140
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v4

    if-eqz p1, :cond_3

    goto :goto_1

    .line 4141
    :cond_3
    sget v1, Lorg/telegram/messenger/R$string;->BotRemoveInlineFromMenu:I

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    const-string v0, "BotRemoveInlineFromMenu"

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "OK"

    sget v2, Lorg/telegram/messenger/R$string;->OK:I

    .line 4142
    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda53;

    invoke-direct {v2, p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda53;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;Lorg/telegram/tgnet/TLRPC$User;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    const-string p2, "Cancel"

    sget v0, Lorg/telegram/messenger/R$string;->Cancel:I

    .line 4157
    invoke-static {p2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    .line 4158
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    return-void
.end method

.method public onOpenAnimationEnd()V
    .locals 2

    .line 5773
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v0, v0, Lorg/telegram/ui/ChatActivity;

    if-eqz v0, :cond_0

    .line 5774
    sget v0, Lorg/telegram/messenger/MediaController;->VIDEO_BITRATE_1080:I

    goto :goto_0

    .line 5776
    :cond_0
    sget v0, Lorg/telegram/messenger/MediaController;->VIDEO_BITRATE_1080:I

    .line 5778
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onOpenAnimationEnd()V

    .line 5779
    const-string v0, "AccDescrAttachButton"

    sget v1, Lorg/telegram/messenger/R$string;->AccDescrAttachButton:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->makeAccessibilityAnnouncement(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 5780
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->openTransitionFinished:Z

    .line 5781
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->videosEnabled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photosEnabled:Z

    if-nez v0, :cond_1

    .line 5782
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->checkCanRemoveRestrictionsByBoosts()Z

    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 3

    const/4 v0, 0x0

    .line 5155
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->layouts:[Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 5156
    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 5157
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onPause()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 5160
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->paused:Z

    return-void
.end method

.method public onRequestPermissionsResultFragment(I[Ljava/lang/String;[I)V
    .locals 0

    const/4 p2, 0x5

    if-ne p1, p2, :cond_0

    if-eqz p3, :cond_0

    .line 4551
    array-length p2, p3

    if-lez p2, :cond_0

    const/4 p2, 0x0

    aget p2, p3, p2

    if-nez p2, :cond_0

    .line 4552
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->openContactsLayout()V

    return-void

    :cond_0
    const/16 p2, 0x1e

    if-ne p1, p2, :cond_1

    .line 4553
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->locationLayout:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    if-eqz p1, :cond_1

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    if-ne p2, p1, :cond_1

    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4554
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->locationLayout:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->openShareLiveLocation()V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 3

    const/4 v0, 0x0

    .line 5164
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->paused:Z

    .line 5165
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->layouts:[Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 5166
    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 5167
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onResume()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5170
    :cond_1
    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5171
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->delegate:Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;

    invoke-interface {v0}, Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;->needEnterComment()Z

    .line 5173
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsAdapter:Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;

    if-eqz v0, :cond_3

    .line 5174
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->notifyDataSetChanged()V

    :cond_3
    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 4053
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->onStart()V

    .line 4055
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 4056
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_0

    instance-of v1, v0, Lorg/telegram/ui/LaunchActivity;

    if-nez v1, :cond_0

    .line 4057
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 4059
    :cond_0
    instance-of v1, v0, Lorg/telegram/ui/LaunchActivity;

    if-eqz v1, :cond_1

    .line 4060
    check-cast v0, Lorg/telegram/ui/LaunchActivity;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/LaunchActivity;->addOverlayPasscodeView(Lorg/telegram/ui/Components/PasscodeView;)V

    :cond_1
    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 4066
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 4068
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 4069
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_0

    instance-of v1, v0, Lorg/telegram/ui/LaunchActivity;

    if-nez v1, :cond_0

    .line 4070
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 4072
    :cond_0
    instance-of v1, v0, Lorg/telegram/ui/LaunchActivity;

    if-eqz v1, :cond_1

    .line 4073
    check-cast v0, Lorg/telegram/ui/LaunchActivity;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/LaunchActivity;->removeOverlayPasscodeView(Lorg/telegram/ui/Components/PasscodeView;)V

    :cond_1
    return-void
.end method

.method public openColorsLayout()V
    .locals 3

    .line 4627
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->colorsLayout:Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout;

    if-nez v0, :cond_0

    .line 4628
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, p0, v1, v2}, Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->colorsLayout:Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout;

    .line 4629
    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda63;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda63;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout;->setDelegate(Landroidx/core/util/Consumer;)V

    .line 4635
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->colorsLayout:Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->showLayout(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;)V

    return-void
.end method

.method public presentFragment(Lorg/telegram/ui/PhotoPickerActivity;)V
    .locals 1

    .line 595
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v0, :cond_0

    .line 596
    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    .line 598
    :cond_0
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 600
    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_1
    return-void
.end method

.method public setAllowDrawContent(Z)V
    .locals 2

    .line 5800
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setAllowDrawContent(Z)V

    .line 5801
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentPanTranslationY:F

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onContainerTranslationUpdated(F)V

    .line 5802
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->allowDrawContent:Z

    if-eq v0, p1, :cond_2

    .line 5803
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->allowDrawContent:Z

    .line 5804
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    if-ne v0, v1, :cond_2

    if-eqz v1, :cond_2

    iget-boolean v0, v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraExpanded:Z

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    .line 5805
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->sent:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->pauseCamera(Z)V

    :cond_2
    return-void
.end method

.method public setAllowEnterCaption(Z)V
    .locals 0

    .line 6369
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->allowEnterCaption:Z

    return-void
.end method

.method public setAllowNestedScroll(Z)V
    .locals 0

    .line 6349
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->allowNestedScroll:Z

    return-void
.end method

.method public setAvatarPicker(IZLorg/telegram/messenger/Utilities$Callback0Return;)V
    .locals 0

    .line 5815
    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarPicker:I

    .line 5816
    iput-boolean p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarSearch:Z

    .line 5817
    iput-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarWithBulletin:Lorg/telegram/messenger/Utilities$Callback0Return;

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    .line 5819
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->typeButtonsAvailable:Z

    .line 5820
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    if-ne p1, p2, :cond_1

    .line 5821
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerViewWrapper:Landroid/widget/FrameLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 5823
    :cond_1
    iget p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarPicker:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    .line 5824
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedTextView:Landroid/widget/TextView;

    sget p2, Lorg/telegram/messenger/R$string;->ChoosePhotoOrVideo:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 5826
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedTextView:Landroid/widget/TextView;

    sget p2, Lorg/telegram/messenger/R$string;->ChoosePhoto:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    .line 5829
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->typeButtonsAvailable:Z

    .line 5831
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    if-eqz p1, :cond_4

    .line 5832
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->updateAvatarPicker()V

    :cond_4
    return-void
.end method

.method public setButtonPressed(Z)V
    .locals 0

    .line 4253
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonPressed:Z

    return-void
.end method

.method public setCanOpenPreview(Z)V
    .locals 2

    .line 254
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->canOpenPreview:Z

    .line 255
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedArrowImageView:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    iget p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarPicker:I

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setCaptionAbove(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 6447
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->setCaptionAbove(ZZ)V

    return-void
.end method

.method public setCaptionAbove(ZZ)V
    .locals 11

    .line 6450
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->animatorCaptionAbove:Lme/vkryl/android/animator/BoolAnimator;

    invoke-virtual {v0, p1, p2}, Lme/vkryl/android/animator/BoolAnimator;->setValue(ZZ)V

    .line 6452
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getCommentView()Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object v0

    .line 6453
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->captionAbove:Z

    .line 6454
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getCommentView()Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object p1

    .line 6456
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->frameLayout2:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 6457
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    if-eq v4, v5, :cond_2

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoPreviewLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    if-ne v4, v5, :cond_1

    goto :goto_1

    :cond_1
    move v4, v3

    goto :goto_2

    :cond_2
    :goto_1
    move v4, v2

    .line 6458
    :goto_2
    iget-boolean v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->captionAbove:Z

    if-eqz v5, :cond_3

    if-eqz v4, :cond_3

    move v4, v2

    goto :goto_3

    :cond_3
    move v4, v3

    :goto_3
    const/16 v5, 0x8

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    if-eqz p2, :cond_8

    .line 6460
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->topCommentContainer:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_4

    move v5, v3

    :cond_4
    invoke-virtual {p2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 6461
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->topCommentContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    if-eqz v4, :cond_5

    if-eqz v1, :cond_5

    move v5, v6

    goto :goto_4

    :cond_5
    move v5, v7

    .line 6462
    :goto_4
    invoke-virtual {p2, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const-wide/16 v8, 0x140

    .line 6463
    invoke-virtual {p2, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    sget-object v5, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    .line 6464
    invoke-virtual {p2, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    new-instance v10, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda39;

    invoke-direct {v10, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda39;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    .line 6465
    invoke-virtual {p2, v10}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    new-instance v10, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda40;

    invoke-direct {v10, p0, v4, v1}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda40;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;ZZ)V

    .line 6468
    invoke-virtual {p2, v10}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    .line 6474
    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 6476
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->captionContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 6477
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->captionContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    if-nez v4, :cond_6

    if-eqz v1, :cond_6

    move v3, v7

    goto :goto_5

    .line 6478
    :cond_6
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->captionContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    :goto_5
    invoke-virtual {p2, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    if-nez v4, :cond_7

    if-eqz v1, :cond_7

    goto :goto_6

    :cond_7
    move v6, v7

    .line 6479
    :goto_6
    invoke-virtual {p2, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    .line 6480
    invoke-virtual {p2, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    .line 6481
    invoke-virtual {p2, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    new-instance v3, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda41;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda41;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    .line 6482
    invoke-virtual {p2, v3}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    new-instance v3, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda42;

    invoke-direct {v3, p0, v4, v1}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda42;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;ZZ)V

    .line 6485
    invoke-virtual {p2, v3}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    .line 6490
    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_c

    .line 6492
    :cond_8
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->topCommentContainer:Landroid/widget/FrameLayout;

    if-eqz v4, :cond_9

    if-eqz v1, :cond_9

    move v8, v3

    goto :goto_7

    :cond_9
    move v8, v5

    :goto_7
    invoke-virtual {p2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 6493
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->topCommentContainer:Landroid/widget/FrameLayout;

    if-eqz v4, :cond_a

    if-eqz v1, :cond_a

    move v8, v6

    goto :goto_8

    :cond_a
    move v8, v7

    :goto_8
    invoke-virtual {p2, v8}, Landroid/view/View;->setAlpha(F)V

    .line 6494
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->updatedTopCaptionHeight()V

    .line 6496
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->captionContainer:Landroid/widget/FrameLayout;

    if-nez v4, :cond_b

    if-eqz v1, :cond_b

    goto :goto_9

    :cond_b
    move v6, v7

    :goto_9
    invoke-virtual {p2, v6}, Landroid/view/View;->setAlpha(F)V

    .line 6497
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->captionContainer:Landroid/widget/FrameLayout;

    if-nez v4, :cond_c

    if-eqz v1, :cond_c

    goto :goto_a

    :cond_c
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    int-to-float v7, v6

    :goto_a
    invoke-virtual {p2, v7}, Landroid/view/View;->setTranslationY(F)V

    .line 6498
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->captionContainer:Landroid/widget/FrameLayout;

    if-nez v4, :cond_d

    if-eqz v1, :cond_d

    goto :goto_b

    :cond_d
    move v3, v5

    :goto_b
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_c
    if-eq v0, p1, :cond_e

    .line 6502
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/EditTextEmoji;->hidePopup(Z)V

    .line 6503
    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->cloneSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/EditTextEmoji;->setText(Ljava/lang/CharSequence;)V

    .line 6504
    invoke-virtual {p1}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object p2

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EditTextCaption;->getAllowTextEntitiesIntersection()Z

    move-result v1

    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/EditTextCaption;->setAllowTextEntitiesIntersection(Z)V

    .line 6505
    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->isFocused()Z

    move-result p2

    if-eqz p2, :cond_e

    .line 6506
    invoke-virtual {p1}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    .line 6507
    invoke-virtual {p1}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object p1

    .line 6508
    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result p2

    .line 6509
    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 6507
    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(II)V

    :cond_e
    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;)V
    .locals 0

    .line 5595
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->delegate:Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;

    return-void
.end method

.method public setDialogId(J)V
    .locals 0

    .line 606
    iput-wide p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->dialogId:J

    return-void
.end method

.method public setDocumentsDelegate(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$DocumentSelectActivityDelegate;)V
    .locals 0

    .line 6373
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->documentsDelegate:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$DocumentSelectActivityDelegate;

    return-void
.end method

.method public setEditingMessageObject(ILorg/telegram/messenger/MessageObject;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 4191
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    if-eqz v0, :cond_0

    .line 4192
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->clearSelectedPhotos()V

    .line 4195
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-ne v0, p2, :cond_1

    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->editType:I

    if-ne v0, p1, :cond_1

    return-void

    .line 4198
    :cond_1
    iput-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_4

    .line 4199
    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->hasValidGroupId()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 4200
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    goto :goto_0

    .line 4202
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isDocument()Z

    move-result p1

    if-eqz p1, :cond_3

    move p1, v1

    goto :goto_0

    :cond_3
    move p1, v0

    .line 4207
    :cond_4
    :goto_0
    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->editType:I

    .line 4208
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz p1, :cond_5

    .line 4209
    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->maxSelectedPhotos:I

    .line 4210
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->allowOrder:Z

    goto :goto_1

    :cond_5
    const/4 p1, -0x1

    .line 4212
    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->maxSelectedPhotos:I

    .line 4213
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->allowOrder:Z

    .line 4215
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsAdapter:Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->notifyDataSetChanged()V

    .line 4216
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->updateCountButton(I)V

    return-void
.end method

.method public setImageUpdater(Lorg/telegram/ui/Components/ImageUpdater;)V
    .locals 0

    .line 578
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->parentImageUpdater:Lorg/telegram/ui/Components/ImageUpdater;

    return-void
.end method

.method public setMaxSelectedPhotos(IZ)V
    .locals 1

    .line 5915
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_0

    return-void

    .line 5918
    :cond_0
    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->maxSelectedPhotos:I

    .line 5919
    iput-boolean p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->allowOrder:Z

    return-void
.end method

.method public setOpenWithFrontFaceCamera(Z)V
    .locals 0

    .line 5923
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->openWithFrontFaceCamera:Z

    return-void
.end method

.method public setSoundPicker()V
    .locals 2

    const/4 v0, 0x1

    .line 5878
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->isSoundPicker:Z

    .line 5879
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerViewWrapper:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5880
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedTextView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/messenger/R$string;->ChoosePhotoOrVideo:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setStoryLocationPicker()V
    .locals 2

    const/4 v0, 0x1

    .line 5893
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->isStoryLocationPicker:Z

    .line 5894
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerViewWrapper:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setStoryLocationPicker(DD)V
    .locals 2

    const/4 v0, 0x2

    .line 5905
    new-array v0, v0, [D

    const/4 v1, 0x0

    aput-wide p1, v0, v1

    const/4 p1, 0x1

    aput-wide p3, v0, p1

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->storyLocationPickerLatLong:[D

    .line 5906
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->isStoryLocationPicker:Z

    .line 5907
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerViewWrapper:Landroid/widget/FrameLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setStoryLocationPicker(ZLjava/io/File;)V
    .locals 0

    .line 5898
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->storyLocationPickerFileIsVideo:Z

    .line 5899
    iput-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->storyLocationPickerPhotoFile:Ljava/io/File;

    const/4 p1, 0x1

    .line 5900
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->isStoryLocationPicker:Z

    .line 5901
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerViewWrapper:Landroid/widget/FrameLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setStoryMediaPicker()V
    .locals 2

    const/4 v0, 0x1

    .line 5837
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->storyMediaPicker:Z

    const/4 v0, 0x0

    .line 5838
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->typeButtonsAvailable:Z

    .line 5839
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedTextView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/messenger/R$string;->ChoosePhotoOrVideo:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected setupMentionContainer(Lorg/telegram/ui/Components/MentionsContainerView;)V
    .locals 6

    .line 6430
    invoke-virtual {p1}, Lorg/telegram/ui/Components/MentionsContainerView;->getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Adapters/MentionsAdapter;->setAllowStickers(Z)V

    .line 6431
    invoke-virtual {p1}, Lorg/telegram/ui/Components/MentionsContainerView;->getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Adapters/MentionsAdapter;->setAllowBots(Z)V

    .line 6432
    invoke-virtual {p1}, Lorg/telegram/ui/Components/MentionsContainerView;->getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Adapters/MentionsAdapter;->setAllowChats(Z)V

    .line 6433
    invoke-virtual {p1}, Lorg/telegram/ui/Components/MentionsContainerView;->getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Adapters/MentionsAdapter;->setSearchInDailogs(Z)V

    .line 6434
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v3, v0, Lorg/telegram/ui/ChatActivity;

    if-eqz v3, :cond_1

    .line 6435
    check-cast v0, Lorg/telegram/ui/ChatActivity;

    .line 6436
    invoke-virtual {p1}, Lorg/telegram/ui/Components/MentionsContainerView;->getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v3

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/telegram/ui/Adapters/MentionsAdapter;->setUserOrChat(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;)V

    .line 6437
    invoke-virtual {p1}, Lorg/telegram/ui/Components/MentionsContainerView;->getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v3

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getCurrentChatInfo()Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Adapters/MentionsAdapter;->setChatInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    .line 6438
    invoke-virtual {p1}, Lorg/telegram/ui/Components/MentionsContainerView;->getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v3

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {v3, v2}, Lorg/telegram/ui/Adapters/MentionsAdapter;->setNeedUsernames(Z)V

    goto :goto_1

    .line 6440
    :cond_1
    invoke-virtual {p1}, Lorg/telegram/ui/Components/MentionsContainerView;->getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Adapters/MentionsAdapter;->setChatInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    .line 6441
    invoke-virtual {p1}, Lorg/telegram/ui/Components/MentionsContainerView;->getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Adapters/MentionsAdapter;->setNeedUsernames(Z)V

    .line 6443
    :goto_1
    invoke-virtual {p1}, Lorg/telegram/ui/Components/MentionsContainerView;->getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Adapters/MentionsAdapter;->setNeedBotContext(Z)V

    return-void
.end method

.method public setupPhotoPicker(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    .line 582
    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarPicker:I

    .line 583
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->isPhotoPicker:Z

    const/4 v0, 0x0

    .line 584
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarSearch:Z

    .line 585
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->typeButtonsAvailable:Z

    .line 586
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->videosEnabled:Z

    .line 587
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerViewWrapper:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 588
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 589
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    if-eqz p1, :cond_0

    .line 590
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->updateAvatarPicker()V

    :cond_0
    return-void
.end method

.method protected shouldOverlayCameraViewOverNavBar()Z
    .locals 2

    .line 4163
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    if-ne v0, v1, :cond_0

    iget-boolean v0, v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraExpanded:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public show()V
    .locals 5

    .line 4168
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    const/4 v0, 0x0

    .line 4169
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonPressed:Z

    .line 4170
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v2, v1, Lorg/telegram/ui/ChatActivity;

    if-eqz v2, :cond_0

    .line 4171
    check-cast v1, Lorg/telegram/ui/ChatActivity;

    .line 4172
    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->isKeyboardVisible()Z

    move-result v1

    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->calcMandatoryInsets:Z

    .line 4174
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->updateDoneItemEnabled()V

    .line 4175
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->openTransitionFinished:Z

    .line 4176
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_2

    const/4 v1, -0x1

    .line 4177
    iput v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->navBarColorKey:I

    .line 4178
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v1

    invoke-static {v1, v0}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->navBarColor:I

    .line 4179
    invoke-static {p0, v1, v0}, Lorg/telegram/messenger/AndroidUtilities;->setNavigationBarColor(Landroid/app/Dialog;IZ)V

    .line 4180
    iget v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->navBarColor:I

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result v1

    float-to-double v1, v1

    const-wide v3, 0x3fe7126e978d4fdfL    # 0.721

    cmpl-double v1, v1, v3

    if-lez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-static {p0, v0}, Lorg/telegram/messenger/AndroidUtilities;->setLightNavigationBar(Landroid/app/Dialog;Z)V

    :cond_2
    return-void
.end method

.method public showBotLayout(JLjava/lang/String;ZZ)V
    .locals 14

    move-wide v4, p1

    .line 268
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botAttachLayouts:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    const/4 v11, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botAttachLayouts:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->getStartCommand()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v3, p3

    invoke-static {v3, v0}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botAttachLayouts:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->needReload()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_0
    move-object/from16 v3, p3

    .line 269
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v0, v0, Lorg/telegram/ui/ChatActivity;

    if-eqz v0, :cond_3

    .line 270
    new-instance v2, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v2, p0, v0, v1}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 271
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botAttachLayouts:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v4, v5, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 272
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botAttachLayouts:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;

    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlert$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/ChatAttachAlert$1;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;Ljava/lang/String;J)V

    invoke-virtual {v6, v0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->setDelegate(Lorg/telegram/ui/web/BotWebViewContainer$Delegate;)V

    .line 544
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    check-cast v0, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getChatActivityEnterView()Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getReplyingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    .line 545
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botAttachLayouts:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;

    move-object v2, v1

    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    check-cast v3, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v6

    if-eqz v0, :cond_2

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    goto :goto_1

    :cond_2
    move v0, v11

    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    check-cast v3, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ChatActivity;->getSendMonoForumPeerId()J

    move-result-wide v9

    move-wide v12, v6

    move v7, v0

    move-object v0, v2

    move-wide v2, v12

    const/4 v6, 0x0

    move-object/from16 v8, p3

    invoke-virtual/range {v0 .. v10}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->requestWebView(IJJZILjava/lang/String;J)V

    .line 548
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botAttachLayouts:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 549
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botAttachLayouts:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->disallowSwipeOffsetAnimation()V

    .line 550
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botAttachLayouts:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->getSwipeContainer()Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    move-result-object v0

    iput-boolean v11, v0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->isPinned:Z

    .line 551
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botAttachLayouts:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;

    iget-object v0, v0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->pinItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    sget v1, Lorg/telegram/messenger/R$string;->PinMessage:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_pin:I

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 552
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botAttachLayouts:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    neg-long v1, v4

    move/from16 v3, p5

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/telegram/ui/Components/ChatAttachAlert;->showLayout(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;JZ)V

    if-eqz p4, :cond_4

    .line 555
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botAttachLayouts:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->showJustAddedBulletin()V

    :cond_4
    return-void
.end method

.method public showBotLayout(JZ)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v5, p3

    .line 264
    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/ChatAttachAlert;->showBotLayout(JLjava/lang/String;ZZ)V

    return-void
.end method

.method public showLayout(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;)V
    .locals 3

    .line 4257
    iget-wide v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedId:J

    .line 4258
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->restrictedLayout:Lorg/telegram/ui/Components/ChatAttachRestrictedLayout;

    if-ne p1, v2, :cond_0

    .line 4259
    iget v0, v2, Lorg/telegram/ui/Components/ChatAttachRestrictedLayout;->id:I

    int-to-long v0, v0

    goto :goto_0

    .line 4260
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    if-ne p1, v2, :cond_1

    const-wide/16 v0, 0x1

    goto :goto_0

    .line 4262
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->audioLayout:Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;

    if-ne p1, v2, :cond_2

    const-wide/16 v0, 0x3

    goto :goto_0

    .line 4264
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->documentLayout:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    if-ne p1, v2, :cond_3

    const-wide/16 v0, 0x4

    goto :goto_0

    .line 4266
    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->contactsLayout:Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;

    if-ne p1, v2, :cond_4

    const-wide/16 v0, 0x5

    goto :goto_0

    .line 4268
    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->locationLayout:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    if-ne p1, v2, :cond_5

    const-wide/16 v0, 0x6

    goto :goto_0

    .line 4270
    :cond_5
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->pollLayout:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    if-ne p1, v2, :cond_6

    const-wide/16 v0, 0x9

    goto :goto_0

    .line 4272
    :cond_6
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->colorsLayout:Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout;

    if-ne p1, v2, :cond_7

    const-wide/16 v0, 0xa

    goto :goto_0

    .line 4274
    :cond_7
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->quickRepliesLayout:Lorg/telegram/ui/Business/ChatAttachAlertQuickRepliesLayout;

    if-ne p1, v2, :cond_8

    const-wide/16 v0, 0xb

    goto :goto_0

    .line 4276
    :cond_8
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->todoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    if-ne p1, v2, :cond_9

    const-wide/16 v0, 0xc

    .line 4279
    :cond_9
    :goto_0
    invoke-direct {p0, p1, v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->showLayout(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;J)V

    return-void
.end method

.method public updateCommentTextViewPosition()V
    .locals 3

    .line 4078
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextViewLocation:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 4079
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    if-eqz v0, :cond_2

    .line 4081
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoPreviewLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->captionAbove:Z

    if-eqz v0, :cond_1

    .line 4083
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->topCommentContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->topCommentContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->topCommentContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    goto :goto_0

    .line 4085
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    .line 4087
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    sub-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 4088
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 4089
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 4090
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    if-eqz v0, :cond_2

    .line 4091
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->checkCameraViewPosition()V

    .line 4095
    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->checkUi_writeButtonContainerY()V

    return-void
.end method

.method public updateCountButton(I)V
    .locals 10

    .line 5490
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->viewChangeAnimator:Ljava/lang/Object;

    if-eqz v0, :cond_0

    goto/16 :goto_14

    .line 5493
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getSelectedItemsCount()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_3

    .line 5496
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    if-eqz p1, :cond_1

    move v4, v1

    goto :goto_0

    :cond_1
    move v4, v2

    :goto_0
    invoke-virtual {v3, v2, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->setCount(IZ)V

    if-eqz p1, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    move v3, v2

    .line 5497
    :goto_1
    invoke-direct {p0, v2, v3}, Lorg/telegram/ui/Components/ChatAttachAlert;->showCommentTextView(ZZ)Z

    goto :goto_4

    :cond_3
    if-eqz p1, :cond_4

    move v3, v1

    goto :goto_2

    :cond_4
    move v3, v2

    .line 5499
    :goto_2
    invoke-direct {p0, v1, v3}, Lorg/telegram/ui/Components/ChatAttachAlert;->showCommentTextView(ZZ)Z

    move-result v3

    if-nez v3, :cond_5

    if-eqz p1, :cond_5

    .line 5500
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    invoke-virtual {v3, v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->setCount(IZ)V

    .line 5501
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->bounceCount()V

    goto :goto_4

    .line 5503
    :cond_5
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    if-eqz p1, :cond_6

    move v4, v1

    goto :goto_3

    :cond_6
    move v4, v2

    :goto_3
    invoke-virtual {v3, v0, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->setCount(IZ)V

    .line 5504
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->bounceCount()V

    .line 5507
    :goto_4
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {v3, v0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onSelectedItemsCountChanged(I)V

    .line 5518
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    if-ne v3, v4, :cond_21

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v3, v3, Lorg/telegram/ui/ChatActivity;

    if-nez v3, :cond_7

    iget v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarPicker:I

    if-nez v3, :cond_7

    iget-boolean v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->storyMediaPicker:Z

    if-eqz v3, :cond_21

    :cond_7
    if-nez v0, :cond_8

    iget-boolean v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->menuShowed:Z

    if-nez v3, :cond_a

    :cond_8
    if-nez v0, :cond_9

    iget v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarPicker:I

    if-nez v3, :cond_9

    iget-boolean v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->storyMediaPicker:Z

    if-eqz v3, :cond_21

    :cond_9
    iget-boolean v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->menuShowed:Z

    if-nez v3, :cond_21

    :cond_a
    if-nez v0, :cond_c

    .line 5519
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarPicker:I

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->storyMediaPicker:Z

    if-eqz v0, :cond_b

    goto :goto_5

    :cond_b
    move v0, v2

    goto :goto_6

    :cond_c
    :goto_5
    move v0, v1

    :goto_6
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->menuShowed:Z

    .line 5520
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->menuAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_d

    .line 5521
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v0, 0x0

    .line 5522
    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->menuAnimator:Landroid/animation/AnimatorSet;

    .line 5524
    :cond_d
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarPicker:I

    if-eqz v0, :cond_e

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v3, v0, Lorg/telegram/ui/ChatActivity;

    if-eqz v3, :cond_e

    check-cast v0, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->allowSendGifs()Z

    move-result v0

    if-eqz v0, :cond_e

    move v0, v1

    goto :goto_7

    :cond_e
    move v0, v2

    .line 5525
    :goto_7
    iget-boolean v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->menuShowed:Z

    if-eqz v3, :cond_10

    .line 5526
    iget v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarPicker:I

    if-nez v3, :cond_f

    iget-boolean v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->storyMediaPicker:Z

    if-nez v3, :cond_f

    .line 5527
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5528
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v3, v1}, Landroid/view/View;->setClickable(Z)V

    .line 5530
    :cond_f
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->headerView:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_8

    .line 5532
    :cond_10
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_11

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v3, :cond_11

    .line 5533
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_11
    :goto_8
    const v3, 0x3f19999a    # 0.6f

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    if-nez p1, :cond_19

    .line 5537
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_15

    iget p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarPicker:I

    if-nez p1, :cond_15

    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->storyMediaPicker:Z

    if-nez p1, :cond_15

    .line 5538
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->menuShowed:Z

    if-eqz v1, :cond_12

    move v1, v5

    goto :goto_9

    :cond_12
    move v1, v4

    :goto_9
    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setAlpha(F)V

    .line 5539
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->menuShowed:Z

    if-eqz v1, :cond_13

    move v1, v5

    goto :goto_a

    :cond_13
    move v1, v3

    :goto_a
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    .line 5540
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->menuShowed:Z

    if-eqz v1, :cond_14

    move v3, v5

    :cond_14
    invoke-virtual {p1, v3}, Landroid/view/View;->setScaleY(F)V

    .line 5542
    :cond_15
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->headerView:Landroid/widget/FrameLayout;

    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->menuShowed:Z

    if-eqz v1, :cond_16

    move v1, v5

    goto :goto_b

    :cond_16
    move v1, v4

    :goto_b
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    if-eqz v0, :cond_18

    .line 5544
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->menuShowed:Z

    if-eqz v0, :cond_17

    goto :goto_c

    :cond_17
    move v4, v5

    :goto_c
    invoke-virtual {p1, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setAlpha(F)V

    .line 5546
    :cond_18
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->menuShowed:Z

    if-eqz p1, :cond_21

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz p1, :cond_21

    const/4 v0, 0x4

    .line 5547
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_11

    .line 5550
    :cond_19
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->menuAnimator:Landroid/animation/AnimatorSet;

    .line 5551
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 5552
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_1d

    iget v6, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarPicker:I

    if-nez v6, :cond_1d

    iget-boolean v6, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->storyMediaPicker:Z

    if-nez v6, :cond_1d

    .line 5553
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    iget-boolean v8, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->menuShowed:Z

    if-eqz v8, :cond_1a

    move v8, v5

    goto :goto_d

    :cond_1a
    move v8, v4

    :goto_d
    new-array v9, v1, [F

    aput v8, v9, v2

    invoke-static {v6, v7, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5554
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget-object v7, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    iget-boolean v8, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->menuShowed:Z

    if-eqz v8, :cond_1b

    move v8, v5

    goto :goto_e

    :cond_1b
    move v8, v3

    :goto_e
    new-array v9, v1, [F

    aput v8, v9, v2

    invoke-static {v6, v7, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5555
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget-object v7, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    iget-boolean v8, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->menuShowed:Z

    if-eqz v8, :cond_1c

    move v3, v5

    :cond_1c
    new-array v8, v1, [F

    aput v3, v8, v2

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5557
    :cond_1d
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->headerView:Landroid/widget/FrameLayout;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    iget-boolean v7, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->menuShowed:Z

    if-eqz v7, :cond_1e

    move v7, v5

    goto :goto_f

    :cond_1e
    move v7, v4

    :goto_f
    new-array v8, v1, [F

    aput v7, v8, v2

    invoke-static {v3, v6, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_20

    .line 5559
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    iget-boolean v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->menuShowed:Z

    if-eqz v3, :cond_1f

    goto :goto_10

    :cond_1f
    move v4, v5

    :goto_10
    new-array v1, v1, [F

    aput v4, v1, v2

    invoke-static {v0, v6, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5561
    :cond_20
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->menuAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 5562
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->menuAnimator:Landroid/animation/AnimatorSet;

    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlert$34;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$34;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 5576
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->menuAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0xb4

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 5577
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->menuAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 5581
    :cond_21
    :goto_11
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz p1, :cond_22

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->needResendWhenEdit()Z

    move-result p1

    if-nez p1, :cond_22

    const-wide/16 v0, 0x0

    goto :goto_12

    :cond_22
    iget p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getDialogId()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/MessagesController;->getSendPaidMessagesStars(J)J

    move-result-wide v0

    .line 5582
    :goto_12
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    if-nez p1, :cond_23

    goto :goto_13

    :cond_23
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getSelectedItemsCount()I

    move-result v2

    :goto_13
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getAdditionalMessagesCount()I

    move-result p1

    add-int/2addr v2, p1

    .line 5583
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    invoke-virtual {p1, v0, v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->setStarsPrice(JI)V

    .line 5584
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    if-eqz p1, :cond_24

    .line 5585
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v0, 0x42400000    # 48.0f

    .line 5586
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->width()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 5587
    iget v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-eq v1, v0, :cond_24

    .line 5588
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 5589
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_24
    :goto_14
    return-void
.end method

.method public updateDoneItemEnabled()V
    .locals 5

    .line 729
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->isDoneItemEnabled()Z

    move-result v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 731
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    .line 732
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->isDoneItemEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    if-nez v4, :cond_2

    move v4, v2

    goto :goto_2

    :cond_2
    iget v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->translationProgress:F

    :goto_2
    mul-float/2addr v0, v4

    add-float/2addr v3, v0

    .line 734
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    if-eqz v0, :cond_5

    .line 735
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->isDoneItemEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    move v1, v2

    :cond_4
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->translationProgress:F

    sub-float/2addr v2, v0

    mul-float/2addr v1, v2

    add-float/2addr v3, v1

    .line 738
    :cond_5
    iput v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->doneItemAlphaByEnabled:F

    .line 739
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->checkUi_doneItemVisibility()V

    return-void
.end method

.method public updateLayout(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;ZI)V
    .locals 4

    if-nez p1, :cond_0

    goto :goto_0

    .line 5452
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->scrollableViewNoiseSuppressor:Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;

    if-eqz p2, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    int-to-float v1, p3

    .line 5453
    invoke-virtual {p2, v0, v1}, Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;->onScrolled(FF)V

    .line 5454
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->blur3_InvalidateBlur()V

    .line 5457
    :cond_1
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getCurrentItemTop()I

    move-result p2

    const v0, 0x7fffffff

    if-ne p2, v0, :cond_2

    :goto_0
    return-void

    .line 5461
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_3

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getButtonsHideOffset()I

    move-result v0

    if-gt p2, v0, :cond_3

    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v1

    .line 5462
    :goto_1
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->pinnedToTop:Z

    .line 5463
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    if-ne p1, v3, :cond_4

    .line 5467
    invoke-direct {p0, v0, v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->updateActionBarVisibility(ZZ)V

    .line 5469
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    if-nez v0, :cond_5

    move v0, v1

    goto :goto_2

    .line 5470
    :cond_5
    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    :goto_2
    const/high16 v3, 0x41300000    # 11.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v0, v3

    add-int/2addr p2, v0

    .line 5471
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    if-ne v0, p1, :cond_6

    move p1, v1

    goto :goto_3

    :cond_6
    move p1, v2

    .line 5472
    :goto_3
    instance-of v0, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    if-nez v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    instance-of v0, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    if-eqz v0, :cond_8

    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->viewChangeAnimator:Ljava/lang/Object;

    instance-of v3, v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v3, :cond_8

    check-cast v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_8

    move v1, v2

    .line 5473
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->scrollOffsetY:[I

    aget v2, v0, p1

    if-ne v2, p2, :cond_a

    if-eqz v1, :cond_9

    goto :goto_4

    :cond_9
    if-eqz p3, :cond_b

    .line 5479
    iput v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->previousScrollOffsetY:I

    goto :goto_5

    .line 5474
    :cond_a
    :goto_4
    iput v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->previousScrollOffsetY:I

    .line 5475
    aput p2, v0, p1

    .line 5476
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->updateSelectedPosition(I)V

    .line 5477
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 5481
    :cond_b
    :goto_5
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->updateCameraButtonVisibility()V

    return-void
.end method

.method public updatePhotoPreview(Z)V
    .locals 2

    if-eqz p1, :cond_4

    .line 4537
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->canOpenPreview:Z

    if-nez p1, :cond_0

    return-void

    .line 4540
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoPreviewLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    if-nez p1, :cond_2

    .line 4541
    new-instance p1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->parentThemeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    :goto_0
    invoke-direct {p1, p0, v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoPreviewLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    .line 4542
    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    .line 4544
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoPreviewLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    :cond_3
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->showLayout(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;)V

    return-void

    .line 4546
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->showLayout(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;)V

    return-void
.end method
