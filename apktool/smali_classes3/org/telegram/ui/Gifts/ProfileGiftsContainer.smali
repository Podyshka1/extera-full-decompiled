.class public abstract Lorg/telegram/ui/Gifts/ProfileGiftsContainer;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;,
        Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet;,
        Lorg/telegram/ui/Gifts/ProfileGiftsContainer$UnpinSheet;,
        Lorg/telegram/ui/Gifts/ProfileGiftsContainer$TextFactory;
    }
.end annotation


# static fields
.field private static final cachedLastEmojis:Ljava/util/HashMap;


# instance fields
.field private addCollectionTabText:Ljava/lang/CharSequence;

.field private final addGiftsText:Ljava/lang/CharSequence;

.field private final animatorBottomButtonVisibility:Lme/vkryl/android/animator/BoolAnimator;

.field private backgroundColor:I

.field private final bulletinContainer:Landroid/widget/FrameLayout;

.field private final button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

.field private final buttonContainer:Landroid/widget/FrameLayout;

.field private buttonContainerHeightDp:I

.field private buttonContainerOffset:I

.field private final checkbox:Lorg/telegram/ui/Components/CheckBox2;

.field private final checkboxLayout:Landroid/widget/LinearLayout;

.field private checkboxRequestId:I

.field private final checkboxTextView:Landroid/widget/TextView;

.field public final collections:Lorg/telegram/ui/Stars/StarsController$GiftsCollections;

.field private final currentAccount:I

.field public currentMenu:Lorg/telegram/ui/Components/ItemOptions;

.field private final dialogId:J

.field private externalPaddingTop:I

.field private final fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field public iBlur3Capture:Lorg/telegram/ui/Components/blur3/capture/IBlur3Capture;

.field private iBlur3CaptureParent:Landroid/view/ViewGroup;

.field private final list:Lorg/telegram/ui/Stars/StarsController$GiftsList;

.field private pendingScrollToCollectionId:I

.field private reorderingCollections:Z

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private final sendCollectionsOrder:Ljava/lang/Runnable;

.field private final sendGiftsToFriendsText:Ljava/lang/CharSequence;

.field private final tabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

.field private final viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

.field private visibleHeight:I


# direct methods
.method public static synthetic $r8$lambda$0ExCHB2qa2NiDqdBnwan1uXcG1A(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->lambda$new$12()V

    return-void
.end method

.method public static synthetic $r8$lambda$1ee1LjmpysGeJLPt5p0M8BcnUwM(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;IFFLme/vkryl/android/animator/FactorAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->lambda$new$14(IFFLme/vkryl/android/animator/FactorAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6gNdInxBVLmXzwGabzY9seUAg6k(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;Lorg/telegram/ui/Components/EditTextCaption;Landroid/app/Activity;Landroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->lambda$openEnterNameAlert$17(Lorg/telegram/ui/Components/EditTextCaption;Landroid/app/Activity;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ESIyPBchTZKskIVx5Yk1VRMSXqQ(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->lambda$initBlurCapture$24(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EYS0j3tFmPHxAhotTj5_z9Jm_zk(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;ILorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->lambda$addGifts$21(ILorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GMpwj5Ts3mHYDueT_KEGE5qeZfQ(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftCollection;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->lambda$createCollection$19(Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftCollection;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HGXLJ2bQdDYNtuoDGUnONnEuUXI(Lorg/telegram/ui/Components/EditTextCaption;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 2

    .line 2070
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    .line 2071
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xc

    if-le v0, v1, :cond_0

    goto :goto_0

    .line 2076
    :cond_0
    invoke-interface {p1, p3}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    .line 2078
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    return-void

    .line 2072
    :cond_1
    :goto_0
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->shakeView(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PDJWy25l-XRdVtRGPrzAh8_Svq0(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 2081
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    return-void
.end method

.method public static synthetic $r8$lambda$PiflF7dP_XL2XId7FDu0rHYSHs0(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->lambda$new$9(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QVcXD97-c7Dv-c_xpBgbco0INzM(Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;I)V
    .locals 1

    .line 177
    invoke-static {p0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->-$$Nest$fgetlistView(Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;)Lorg/telegram/ui/Components/UniversalRecyclerView;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$Y_hy7wx-b_R6l3jq-f9bz9a6WDA(Lorg/telegram/ui/Components/EditTextCaption;Landroid/content/DialogInterface;)V
    .locals 0

    .line 2093
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 2094
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$bEzDNpga9c41IzwYlyeh3jZ7Fbo(Lorg/telegram/ui/Stars/StarsController$GiftsList;ILjava/lang/Runnable;Landroid/view/View;)Z
    .locals 0

    const/4 p3, 0x1

    .line 2452
    invoke-virtual {p0, p1, p3}, Lorg/telegram/ui/Stars/StarsController$GiftsList;->forceTypeIncludeFlag(IZ)V

    .line 2453
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return p3
.end method

.method public static synthetic $r8$lambda$cQlluNxrZ_MzLWpB54LUlYuWz-Y(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Boolean;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->lambda$new$1(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$dkHZH0MrRxrCHzdgqlEWIsLrSQo(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;ILorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/Integer;Landroid/view/View;)Ljava/lang/Boolean;
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->lambda$new$7(ILorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/Integer;Landroid/view/View;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$efZ8a2puKJJaEOtEfUskLcHKX1U(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->lambda$new$8(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$f9ksTmDUAzgQSn2BZ7GDxk7YS8g(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftCollection;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->lambda$new$4(Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftCollection;)V

    return-void
.end method

.method public static synthetic $r8$lambda$i8HPAreaJhMObMdMoUxFKqye6hg(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;ZILandroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->lambda$new$11(ZILandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kpih-kMUdIQNLn3ZRWv3Iie32bA(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 1

    .line 1518
    check-cast p0, Lorg/telegram/ui/ProfileActivity;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ProfileActivity;->scrollToSharedMedia(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$mUgy-IzyBmMB9T5WRvkdr9jR_7g(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;ILjava/lang/String;Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftCollection;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->lambda$new$2(ILjava/lang/String;Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftCollection;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mtoQEMJ-pkk1uam7V8B1Vb8JrQE(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->lambda$new$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$ni4K4h_wnetxIAY9FyDYS8jyRt8(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;Lorg/telegram/ui/ActionBar/BaseFragment;ILandroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->lambda$new$10(Lorg/telegram/ui/ActionBar/BaseFragment;ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tG0_7QHGLKjmgVicLbI9g1UvoKo(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->lambda$createCollection$20(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tYVcLJaoSuZkHNIzrEi_rPUek2E(Lorg/telegram/ui/Stars/StarsController$GiftsList;ILjava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    .line 2448
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stars/StarsController$GiftsList;->toggleTypeIncludeFlag(I)V

    .line 2449
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public static synthetic $r8$lambda$wsNxAcafa1REuCWUn53tXUYeKbQ(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;ILorg/telegram/tgnet/tl/TL_stars$TL_starGiftCollection;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->lambda$new$6(ILorg/telegram/tgnet/tl/TL_stars$TL_starGiftCollection;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zNeVEn3Wnf1gUlCW9bCeOj8aYG4(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftCollection;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->lambda$new$3(Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftCollection;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetaddCollectionTabText(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;)Ljava/lang/CharSequence;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->addCollectionTabText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetbackgroundColor(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->backgroundColor:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetdialogId(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->dialogId:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetexternalPaddingTop(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->externalPaddingTop:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetfragment(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;)Lorg/telegram/ui/ActionBar/BaseFragment;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlist(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;)Lorg/telegram/ui/Stars/StarsController$GiftsList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->list:Lorg/telegram/ui/Stars/StarsController$GiftsList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetresourcesProvider(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsendCollectionsOrder(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;)Ljava/lang/Runnable;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->sendCollectionsOrder:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettabsView(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;)Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->tabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetvisibleHeight(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->visibleHeight:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputaddCollectionTabText(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;Ljava/lang/CharSequence;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->addCollectionTabText:Ljava/lang/CharSequence;

    return-void
.end method

.method static bridge synthetic -$$Nest$mfillTabs(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->fillTabs(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mopenEnterNameAlert(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->openEnterNameAlert(Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 1719
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->cachedLastEmojis:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;IJLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 25

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v2, p3

    move-wide/from16 v5, p4

    move-object/from16 v0, p6

    .line 1016
    invoke-direct {v1, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v7, -0x1

    .line 148
    iput v7, v1, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->checkboxRequestId:I

    .line 1504
    new-instance v8, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$$ExternalSyntheticLambda3;

    invoke-direct {v8, v1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;)V

    iput-object v8, v1, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->sendCollectionsOrder:Ljava/lang/Runnable;

    .line 1550
    new-instance v9, Lme/vkryl/android/animator/BoolAnimator;

    new-instance v11, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$$ExternalSyntheticLambda4;

    invoke-direct {v11, v1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;)V

    sget-object v12, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v13, 0x17c

    const/4 v15, 0x1

    const/4 v10, 0x0

    invoke-direct/range {v9 .. v15}, Lme/vkryl/android/animator/BoolAnimator;-><init>(ILme/vkryl/android/animator/FactorAnimator$Target;Landroid/view/animation/Interpolator;JZ)V

    iput-object v9, v1, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->animatorBottomButtonVisibility:Lme/vkryl/android/animator/BoolAnimator;

    .line 1776
    sget-object v8, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    iput v8, v1, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->visibleHeight:I

    .line 1017
    iput-object v3, v1, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 1019
    iput v2, v1, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->currentAccount:I

    .line 1020
    invoke-static {v5, v6}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1021
    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    invoke-static {v5, v6}, Lorg/telegram/messenger/DialogObject;->getEncryptedChatId(J)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 1023
    iget-wide v5, v8, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->user_id:J

    iput-wide v5, v1, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->dialogId:J

    goto :goto_0

    .line 1025
    :cond_0
    iput-wide v5, v1, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->dialogId:J

    goto :goto_0

    .line 1028
    :cond_1
    iput-wide v5, v1, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->dialogId:J

    .line 1030
    :goto_0
    invoke-static {v2}, Lorg/telegram/ui/Stars/StarsController;->getInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object v5

    iget-wide v8, v1, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->dialogId:J

    invoke-virtual {v5, v8, v9}, Lorg/telegram/ui/Stars/StarsController;->invalidateProfileGifts(J)V

    .line 1031
    invoke-static {v2}, Lorg/telegram/ui/Stars/StarsController;->getInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object v5

    iget-wide v8, v1, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->dialogId:J

    invoke-virtual {v5, v8, v9}, Lorg/telegram/ui/Stars/StarsController;->getProfileGiftsList(J)Lorg/telegram/ui/Stars/StarsController$GiftsList;

    move-result-object v6

    iput-object v6, v1, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->list:Lorg/telegram/ui/Stars/StarsController$GiftsList;

    .line 1032
    invoke-static {v2}, Lorg/telegram/ui/Stars/StarsController;->getInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object v5

    iget-wide v8, v1, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->dialogId:J

    const/4 v10, 0x1

    invoke-virtual {v5, v8, v9, v10}, Lorg/telegram/ui/Stars/StarsController;->getProfileGiftCollectionsList(JZ)Lorg/telegram/ui/Stars/StarsController$GiftsCollections;

    move-result-object v5

    iput-object v5, v1, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->collections:Lorg/telegram/ui/Stars/StarsController$GiftsCollections;

    .line 1033
    iput-object v6, v5, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->all:Lorg/telegram/ui/Stars/StarsController$GiftsList;

    .line 1034
    iput-boolean v10, v6, Lorg/telegram/ui/Stars/StarsController$GiftsList;->shown:Z

    .line 1035
    instance-of v5, v3, Lorg/telegram/ui/ProfileActivity;

    if-eqz v5, :cond_2

    move-object v5, v3

    check-cast v5, Lorg/telegram/ui/ProfileActivity;

    iget-boolean v5, v5, Lorg/telegram/ui/ProfileActivity;->openGiftsUpgradable:Z

    if-eqz v5, :cond_2

    const/4 v5, 0x4

    .line 1036
    invoke-virtual {v6, v5}, Lorg/telegram/ui/Stars/StarsController$GiftsList;->setFilters(I)V

    goto :goto_1

    .line 1038
    :cond_2
    invoke-virtual {v6}, Lorg/telegram/ui/Stars/StarsController$GiftsList;->resetFilters()V

    .line 1040
    :goto_1
    invoke-virtual {v6}, Lorg/telegram/ui/Stars/StarsController$GiftsList;->load()V

    .line 1041
    iput-object v0, v1, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 1043
    new-instance v5, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$1;

    invoke-direct {v5, v1, v4, v3}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$1;-><init>(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    iput-object v5, v1, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    .line 1082
    invoke-virtual {v5, v10}, Lorg/telegram/ui/Components/ViewPagerFixed;->setAllowDisallowInterceptTouch(Z)V

    .line 1083
    new-instance v8, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$2;

    invoke-direct {v8, v1, v2, v0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$2;-><init>(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v5, v8}, Lorg/telegram/ui/Components/ViewPagerFixed;->setAdapter(Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;)V

    const/16 v8, 0x77

    .line 1178
    invoke-static {v7, v7, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v1, v5, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v8, 0xa

    .line 1180
    invoke-virtual {v5, v10, v8}, Lorg/telegram/ui/Components/ViewPagerFixed;->createTabsView(ZI)Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    move-result-object v11

    iput-object v11, v1, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->tabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    .line 1181
    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_profile_tabSelectedLine:I

    sget v13, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    sget v14, Lorg/telegram/ui/ActionBar/Theme;->key_profile_tabText:I

    sget v15, Lorg/telegram/ui/ActionBar/Theme;->key_profile_tabSelector:I

    sget v16, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    invoke-virtual/range {v11 .. v16}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->setColors(IIIII)V

    const/high16 v9, 0x41000000    # 8.0f

    .line 1188
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    const/4 v13, 0x0

    invoke-virtual {v11, v5, v13, v12, v13}, Landroid/view/View;->setPadding(IIII)V

    .line 1189
    invoke-virtual {v11, v13}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    const/16 v5, 0xc

    .line 1190
    iput v5, v11, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->tabMarginDp:I

    .line 1191
    new-instance v5, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$$ExternalSyntheticLambda5;

    invoke-direct {v5, v1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;)V

    invoke-virtual {v11, v5}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->setPreTabClick(Lorg/telegram/messenger/Utilities$Callback2Return;)V

    .line 1199
    new-instance v0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$$ExternalSyntheticLambda6;

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;ILorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    move-object/from16 v24, v5

    move-object v5, v0

    move-object/from16 v0, v24

    invoke-virtual {v11, v5}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->setOnTabLongClick(Lorg/telegram/messenger/Utilities$Callback2Return;)V

    const/16 v5, 0x2a

    const/16 v12, 0x30

    .line 1296
    invoke-static {v7, v5, v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v1, v11, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1298
    new-instance v5, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceColor;

    invoke-direct {v5}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceColor;-><init>()V

    .line 1299
    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v11, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v12

    invoke-virtual {v5, v12}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceColor;->setColor(I)V

    .line 1300
    new-instance v12, Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;

    invoke-direct {v12, v5}, Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;-><init>(Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSource;)V

    .line 1301
    new-instance v5, Lorg/telegram/ui/ProfileActivity$Button2;

    invoke-direct {v5, v4}, Lorg/telegram/ui/ProfileActivity$Button2;-><init>(Landroid/content/Context;)V

    .line 1302
    new-instance v14, Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProviderThemed;

    invoke-direct {v14, v0, v11}, Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProviderThemed;-><init>(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V

    invoke-virtual {v12, v5, v14}, Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;->create(Landroid/view/View;Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProvider;)Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    move-result-object v11

    .line 1303
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    invoke-virtual {v11, v12}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->setPadding(I)Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    const/high16 v12, 0x41b00000    # 22.0f

    .line 1304
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {v11, v12}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->setRadius(F)Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    .line 1305
    invoke-virtual {v5, v11}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const v11, 0x3ca3d70a    # 0.02f

    const v12, 0x3f99999a    # 1.2f

    .line 1306
    invoke-static {v5, v11, v12}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;FF)V

    .line 1308
    new-instance v11, Landroid/widget/FrameLayout;

    invoke-direct {v11, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v11, v1, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->buttonContainer:Landroid/widget/FrameLayout;

    const/16 v12, 0x3c

    const/16 v14, 0x57

    .line 1311
    invoke-static {v7, v12, v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v15

    move/from16 p4, v9

    .line 1312
    iget v9, v15, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sget v16, Lorg/telegram/messenger/AndroidUtilities;->navigationBarHeight:I

    add-int v9, v9, v16

    iput v9, v15, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 1313
    invoke-virtual {v1, v11, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v9, -0x2

    .line 1315
    invoke-static {v9, v12, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v15

    invoke-virtual {v11, v5, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1317
    new-instance v11, Landroid/widget/FrameLayout;

    invoke-direct {v11, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v11, v1, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->bulletinContainer:Landroid/widget/FrameLayout;

    .line 1319
    new-instance v15, Landroid/widget/LinearLayout;

    invoke-direct {v15, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v15, v1, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->checkboxLayout:Landroid/widget/LinearLayout;

    const/high16 v16, 0x41400000    # 12.0f

    .line 1320
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    invoke-static/range {p4 .. p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-static/range {p4 .. p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-virtual {v15, v14, v12, v7, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 1321
    invoke-virtual {v15, v13}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 1322
    invoke-virtual {v15, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1323
    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-static {v7, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v7

    const/16 v9, 0x18

    invoke-static {v7, v9, v9}, Lorg/telegram/ui/ActionBar/Theme;->createRadSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v15, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1324
    new-instance v7, Lorg/telegram/ui/Components/CheckBox2;

    invoke-direct {v7, v4, v9, v0}, Lorg/telegram/ui/Components/CheckBox2;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v7, v1, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->checkbox:Lorg/telegram/ui/Components/CheckBox2;

    .line 1325
    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_radioBackgroundChecked:I

    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxDisabled:I

    sget v14, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxCheck:I

    invoke-virtual {v7, v9, v12, v14}, Lorg/telegram/ui/Components/CheckBox2;->setColor(III)V

    .line 1326
    invoke-virtual {v7, v10}, Lorg/telegram/ui/Components/CheckBox2;->setDrawUnchecked(Z)V

    .line 1327
    invoke-virtual {v7, v13, v13}, Lorg/telegram/ui/Components/CheckBox2;->setChecked(ZZ)V

    .line 1328
    invoke-virtual {v7, v8}, Lorg/telegram/ui/Components/CheckBox2;->setDrawBackgroundAsArc(I)V

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v17, 0x1a

    const/16 v18, 0x1a

    const/16 v19, 0x10

    const/16 v20, 0x0

    const/16 v21, 0x0

    .line 1329
    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v15, v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1330
    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v8, v1, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->checkboxTextView:Landroid/widget/TextView;

    .line 1331
    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-static {v9, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v9, 0x41600000    # 14.0f

    .line 1332
    invoke-virtual {v8, v10, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1333
    sget v9, Lorg/telegram/messenger/R$string;->Gift2ChannelNotify:I

    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v17, -0x2

    const/16 v18, -0x2

    const/16 v20, 0x9

    .line 1334
    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v15, v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v22, 0x0

    const/high16 v23, 0x40c00000    # 6.0f

    const/high16 v18, 0x42180000    # 38.0f

    const/16 v19, 0x11

    const/16 v20, 0x0

    const/high16 v21, 0x40c00000    # 6.0f

    .line 1335
    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v5, v15, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const v8, 0x3ccccccd    # 0.025f

    const/high16 v9, 0x3fc00000    # 1.5f

    .line 1336
    invoke-static {v15, v8, v9}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;FF)V

    .line 1337
    new-instance v8, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$$ExternalSyntheticLambda7;

    invoke-direct {v8, v1, v3, v2}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;Lorg/telegram/ui/ActionBar/BaseFragment;I)V

    invoke-virtual {v15, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1359
    iget-object v3, v6, Lorg/telegram/ui/Stars/StarsController$GiftsList;->chat_notifications_enabled:Ljava/lang/Boolean;

    if-eqz v3, :cond_3

    .line 1360
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v7, v3, v13}, Lorg/telegram/ui/Components/CheckBox2;->setChecked(ZZ)V

    .line 1363
    :cond_3
    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-wide v6, v1, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->dialogId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    .line 1364
    iget-wide v6, v1, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->dialogId:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-ltz v6, :cond_5

    if-eqz v3, :cond_4

    invoke-static {v3}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-static {v3}, Lorg/telegram/messenger/UserObject;->isBot(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_2

    :cond_4
    move v3, v13

    goto :goto_3

    :cond_5
    :goto_2
    move v3, v10

    .line 1366
    :goto_3
    new-instance v6, Landroid/text/SpannableStringBuilder;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "G "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_7

    move-wide/from16 v17, v8

    iget-wide v8, v1, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->dialogId:J

    cmp-long v12, v8, v17

    if-gez v12, :cond_6

    sget v8, Lorg/telegram/messenger/R$string;->ProfileGiftsSendChannel:I

    :goto_4
    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_5

    :cond_6
    sget v12, Lorg/telegram/messenger/R$string;->ProfileGiftsSendUser:I

    invoke-static {v8, v9}, Lorg/telegram/messenger/DialogObject;->getShortName(J)Ljava/lang/String;

    move-result-object v8

    new-array v9, v10, [Ljava/lang/Object;

    aput-object v8, v9, v13

    invoke-static {v12, v9}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_5

    :cond_7
    sget v8, Lorg/telegram/messenger/R$string;->ProfileGiftsSend:I

    goto :goto_4

    :goto_5
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1367
    new-instance v7, Lorg/telegram/ui/Components/ColoredImageSpan;

    sget v8, Lorg/telegram/messenger/R$drawable;->filled_gift_simple:I

    invoke-direct {v7, v8}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(I)V

    const/16 v8, 0x21

    .line 1368
    invoke-virtual {v6, v7, v13, v10, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1369
    iput-object v6, v1, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->sendGiftsToFriendsText:Ljava/lang/CharSequence;

    .line 1371
    new-instance v7, Landroid/text/SpannableStringBuilder;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "+ "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v12, Lorg/telegram/messenger/R$string;->ProfileGiftsAdd:I

    invoke-static {v12}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1372
    new-instance v9, Lorg/telegram/ui/Components/ColoredImageSpan;

    sget v12, Lorg/telegram/messenger/R$drawable;->filled_add_album:I

    invoke-direct {v9, v12}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(I)V

    .line 1373
    invoke-virtual {v7, v9, v13, v10, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1374
    iput-object v7, v1, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->addGiftsText:Ljava/lang/CharSequence;

    .line 1376
    new-instance v7, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-direct {v7, v4, v0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v7, v1, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    .line 1377
    invoke-virtual {v7, v10}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setUseWrapContent(Z)V

    const/high16 v0, 0x41800000    # 16.0f

    .line 1378
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {v7, v4, v13, v0, v13}, Landroid/view/View;->setPadding(IIII)V

    const/high16 v0, 0x41980000    # 19.0f

    .line 1379
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {v7, v0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setRoundRadius(I)V

    .line 1380
    invoke-virtual {v7, v6, v13}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    const/4 v0, 0x0

    .line 1381
    invoke-virtual {v7, v0}, Landroid/view/View;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    const/16 v0, 0x11

    const/4 v4, -0x2

    const/4 v6, -0x1

    .line 1382
    invoke-static {v4, v6, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v5, v7, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1383
    new-instance v0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$$ExternalSyntheticLambda8;

    invoke-direct {v0, v1, v3, v2}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;ZI)V

    invoke-virtual {v5, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1397
    invoke-virtual {v1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->canSwitchNotify()Z

    move-result v0

    const/16 v2, 0x8

    if-eqz v0, :cond_8

    move v0, v2

    goto :goto_6

    :cond_8
    move v0, v13

    :goto_6
    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1398
    invoke-virtual {v1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->canSwitchNotify()Z

    move-result v0

    if-eqz v0, :cond_9

    move v2, v13

    :cond_9
    invoke-virtual {v15, v2}, Landroid/view/View;->setVisibility(I)V

    const/16 v0, 0x3c

    .line 1399
    iput v0, v1, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->buttonContainerHeightDp:I

    const/16 v0, 0xc8

    const/16 v2, 0x57

    const/4 v6, -0x1

    .line 1401
    invoke-static {v6, v0, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v1, v11, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1403
    invoke-virtual {v1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->updateColors()V

    .line 1404
    invoke-virtual {v1, v13}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->updateTabsShown(Z)V

    return-void
.end method

.method private checkScrollToCollection()V
    .locals 5

    .line 1487
    iget v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->pendingScrollToCollectionId:I

    if-gtz v0, :cond_0

    goto :goto_2

    .line 1490
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->collections:Lorg/telegram/ui/Stars/StarsController$GiftsCollections;

    invoke-virtual {v0}, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->getCollections()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 1491
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 1492
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftCollection;

    iget v3, v3, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftCollection;->collection_id:I

    iget v4, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->pendingScrollToCollectionId:I

    if-ne v3, v4, :cond_1

    .line 1493
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftCollection;

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, -0x1

    const/4 v0, 0x0

    :goto_1
    if-ltz v2, :cond_3

    if-eqz v0, :cond_3

    .line 1499
    iput v1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->pendingScrollToCollectionId:I

    .line 1500
    iget-object v1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->tabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    iget v0, v0, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftCollection;->collection_id:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v0, v2}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->scrollToTab(II)V

    :cond_3
    :goto_2
    return-void
.end method

.method private fillTabs(Z)V
    .locals 2

    .line 158
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->tabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    if-nez v1, :cond_0

    goto :goto_0

    .line 159
    :cond_0
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/ViewPagerFixed;->fillTabs(Z)V

    .line 160
    invoke-direct {p0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->checkScrollToCollection()V

    :cond_1
    :goto_0
    return-void
.end method

.method private hasTabs()F
    .locals 8

    .line 1434
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ViewPagerFixed;->getViewPages()[Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 1435
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ViewPagerFixed;->getViewPages()[Landroid/view/View;

    move-result-object v0

    .line 1436
    array-length v3, v0

    const/4 v4, 0x0

    move v5, v2

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v6, v0, v4

    .line 1437
    instance-of v7, v6, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;

    if-eqz v7, :cond_1

    .line 1438
    check-cast v6, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;

    invoke-static {v6}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->-$$Nest$fgethasTabs(Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v6, v1

    goto :goto_1

    :cond_0
    move v6, v2

    :goto_1
    add-float/2addr v5, v6

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    move v5, v2

    .line 1442
    :cond_3
    invoke-static {v5, v2, v1}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v0

    return v0
.end method

.method private synthetic lambda$addGifts$21(ILorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;Ljava/util/ArrayList;)V
    .locals 5

    .line 2123
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->collections:Lorg/telegram/ui/Stars/StarsController$GiftsCollections;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p3, v1}, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->addGifts(ILjava/util/ArrayList;Z)V

    .line 2124
    invoke-virtual {p2, v1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->update(Z)V

    .line 2125
    invoke-direct {p0, v1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->fillTabs(Z)V

    .line 2126
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->updateTabsShown(Z)V

    .line 2128
    iget-object p2, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->collections:Lorg/telegram/ui/Stars/StarsController$GiftsCollections;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->findById(I)Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftCollection;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2130
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v0, 0x0

    if-le p2, v1, :cond_0

    .line 2131
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    .line 2132
    iget-object v2, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-static {v2}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v2

    iget-object p2, p2, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    .line 2134
    invoke-virtual {p2}, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p2

    .line 2135
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftCollection;->title:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    const-string p1, "Gift2AddedToCollectionMany"

    invoke-static {p1, p3, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    .line 2133
    invoke-virtual {v2, p2, p1}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleMultiBulletin(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    .line 2137
    iput-boolean v0, p1, Lorg/telegram/ui/Components/Bulletin;->hideAfterBottomSheet:Z

    .line 2138
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void

    .line 2139
    :cond_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ne p2, v1, :cond_1

    .line 2140
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    .line 2141
    iget-object p3, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-static {p3}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p3

    iget-object v2, p2, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    .line 2143
    invoke-virtual {v2}, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->Gift2AddedToCollection:I

    iget-object p2, p2, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    .line 2144
    invoke-static {p2}, Lorg/telegram/ui/Stars/StarGiftSheet;->getGiftName(Lorg/telegram/tgnet/tl/TL_stars$StarGift;)Ljava/lang/String;

    move-result-object p2

    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftCollection;->title:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v0

    aput-object p1, v4, v1

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    .line 2142
    invoke-virtual {p3, v2, p1}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleMultiBulletin(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    .line 2146
    iput-boolean v0, p1, Lorg/telegram/ui/Components/Bulletin;->hideAfterBottomSheet:Z

    .line 2147
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    :cond_1
    return-void
.end method

.method private synthetic lambda$createCollection$19(Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftCollection;)V
    .locals 3

    const/4 v0, 0x1

    .line 2108
    invoke-direct {p0, v0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->fillTabs(Z)V

    .line 2109
    iget-object v1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->tabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    iget p1, p1, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftCollection;->collection_id:I

    iget-object v2, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->collections:Lorg/telegram/ui/Stars/StarsController$GiftsCollections;

    invoke-virtual {v2, p1}, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->indexOf(I)I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {v1, p1, v2}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->scrollToTab(II)V

    .line 2110
    iget-object p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v1, p1, Lorg/telegram/ui/ProfileActivity;

    if-eqz v1, :cond_0

    .line 2111
    check-cast p1, Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ProfileActivity;->scrollToSharedMedia(Z)V

    .line 2113
    :cond_0
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->updateTabsShown(Z)V

    return-void
.end method

.method private synthetic lambda$createCollection$20(Ljava/lang/String;)V
    .locals 2

    .line 2107
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->collections:Lorg/telegram/ui/Stars/StarsController$GiftsCollections;

    new-instance v1, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$$ExternalSyntheticLambda25;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$$ExternalSyntheticLambda25;-><init>(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;)V

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->createCollection(Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method private synthetic lambda$initBlurCapture$24(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 9

    .line 2465
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ViewPagerFixed;->getViewPages()[Landroid/view/View;

    move-result-object v0

    .line 2466
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 2467
    instance-of v4, v3, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;

    if-eqz v4, :cond_1

    .line 2468
    check-cast v3, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;

    .line 2469
    iget-object v4, v3, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->iBlur3Capture:Lorg/telegram/ui/Components/blur3/capture/IBlur3Capture;

    if-nez v4, :cond_0

    .line 2470
    new-instance v4, Lorg/telegram/ui/Components/blur3/ViewGroupPartRenderer;

    invoke-static {v3}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->-$$Nest$fgetlistView(Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;)Lorg/telegram/ui/Components/UniversalRecyclerView;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->iBlur3CaptureParent:Landroid/view/ViewGroup;

    invoke-static {v3}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->-$$Nest$fgetlistView(Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;)Lorg/telegram/ui/Components/UniversalRecyclerView;

    move-result-object v7

    invoke-static {v7}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda7;

    invoke-direct {v8, v7}, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/UniversalRecyclerView;)V

    invoke-direct {v4, v5, v6, v8}, Lorg/telegram/ui/Components/blur3/ViewGroupPartRenderer;-><init>(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Lorg/telegram/ui/Components/blur3/ViewGroupPartRenderer$DrawChildMethod;)V

    iput-object v4, v3, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->iBlur3Capture:Lorg/telegram/ui/Components/blur3/capture/IBlur3Capture;

    .line 2472
    :cond_0
    iget-object v3, v3, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->iBlur3Capture:Lorg/telegram/ui/Components/blur3/capture/IBlur3Capture;

    invoke-interface {v3, p1, p2}, Lorg/telegram/ui/Components/blur3/capture/IBlur3Capture;->capture(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private synthetic lambda$new$1(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Boolean;
    .locals 0

    .line 1192
    invoke-virtual {p0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->resetReordering()V

    .line 1193
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    .line 1194
    invoke-virtual {p0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->createCollection()V

    .line 1195
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    .line 1197
    :cond_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1
.end method

.method private synthetic lambda$new$10(Lorg/telegram/ui/ActionBar/BaseFragment;ILandroid/view/View;)V
    .locals 4

    .line 1338
    iget-object p3, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->checkbox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {p3}, Lorg/telegram/ui/Components/CheckBox2;->isChecked()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-virtual {p3, v0, v1}, Lorg/telegram/ui/Components/CheckBox2;->setChecked(ZZ)V

    .line 1339
    iget-object p3, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->checkbox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {p3}, Lorg/telegram/ui/Components/CheckBox2;->isChecked()Z

    move-result p3

    .line 1340
    invoke-static {p1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    if-eqz p3, :cond_0

    .line 1341
    sget v2, Lorg/telegram/messenger/R$raw;->silent_unmute:I

    goto :goto_0

    :cond_0
    sget v2, Lorg/telegram/messenger/R$raw;->silent_mute:I

    :goto_0
    if-eqz p3, :cond_1

    sget v3, Lorg/telegram/messenger/R$string;->Gift2ChannelNotifyChecked:I

    goto :goto_1

    :cond_1
    sget v3, Lorg/telegram/messenger/R$string;->Gift2ChannelNotifyNotChecked:I

    :goto_1
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletinDetail(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    .line 1342
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    .line 1344
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->list:Lorg/telegram/ui/Stars/StarsController$GiftsList;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->chat_notifications_enabled:Ljava/lang/Boolean;

    .line 1345
    iget v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->checkboxRequestId:I

    if-ltz v0, :cond_2

    .line 1346
    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v2, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->checkboxRequestId:I

    invoke-virtual {v0, v2, v1}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    const/4 v0, -0x1

    .line 1347
    iput v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->checkboxRequestId:I

    .line 1349
    :cond_2
    new-instance v0, Lorg/telegram/tgnet/tl/TL_stars$toggleChatStarGiftNotifications;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stars$toggleChatStarGiftNotifications;-><init>()V

    .line 1350
    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->dialogId:J

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_stars$toggleChatStarGiftNotifications;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 1351
    iput-boolean p3, v0, Lorg/telegram/tgnet/tl/TL_stars$toggleChatStarGiftNotifications;->enabled:Z

    .line 1352
    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    new-instance p3, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$$ExternalSyntheticLambda17;

    invoke-direct {p3, p0, p1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-virtual {p2, v0, p3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private synthetic lambda$new$11(ZILandroid/view/View;)V
    .locals 7

    .line 1384
    iget-object p3, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->collections:Lorg/telegram/ui/Stars/StarsController$GiftsCollections;

    invoke-virtual {p3}, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->isMine()Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {p3}, Lorg/telegram/ui/Components/ViewPagerFixed;->getCurrentPosition()I

    move-result p3

    if-nez p3, :cond_0

    goto :goto_0

    .line 1393
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->addGifts()V

    return-void

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 1386
    new-instance v0, Lorg/telegram/ui/Gifts/GiftSheet;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-wide v3, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->dialogId:J

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v2, p2

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Gifts/GiftSheet;-><init>(Landroid/content/Context;IJLjava/util/List;Ljava/lang/Runnable;)V

    .line 1387
    invoke-static {v2}, Lorg/telegram/messenger/BirthdayController;->getInstance(I)Lorg/telegram/messenger/BirthdayController;

    move-result-object p1

    iget-wide p2, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->dialogId:J

    invoke-virtual {p1, p2, p3}, Lorg/telegram/messenger/BirthdayController;->isToday(J)Z

    move-result p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Gifts/GiftSheet;->setBirthday(Z)Lorg/telegram/ui/Gifts/GiftSheet;

    move-result-object p1

    .line 1388
    invoke-virtual {p1}, Lorg/telegram/ui/Gifts/GiftSheet;->show()V

    return-void

    :cond_2
    move v2, p2

    .line 1390
    invoke-static {v2}, Lorg/telegram/messenger/BirthdayController;->getInstance(I)Lorg/telegram/messenger/BirthdayController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/BirthdayController;->getState()Lorg/telegram/messenger/BirthdayController$BirthdayState;

    move-result-object p1

    const/4 p2, 0x2

    const-wide/16 v0, 0x0

    invoke-static {p2, v0, v1, p1}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->open(IJLorg/telegram/messenger/BirthdayController$BirthdayState;)Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;

    return-void
.end method

.method private synthetic lambda$new$12()V
    .locals 1

    .line 1505
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->collections:Lorg/telegram/ui/Stars/StarsController$GiftsCollections;

    invoke-virtual {v0}, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->sendOrder()V

    return-void
.end method

.method private synthetic lambda$new$14(IFFLme/vkryl/android/animator/FactorAnimator;)V
    .locals 0

    .line 1551
    invoke-virtual {p0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->updateButton()V

    return-void
.end method

.method private synthetic lambda$new$2(ILjava/lang/String;Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftCollection;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 11

    .line 1245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/MessagesController;->linkPrefix:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/c/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p3, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftCollection;->collection_id:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1246
    new-instance v1, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$4;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v4, 0x0

    move-object v7, v5

    move-object v2, p0

    move-object v3, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-direct/range {v1 .. v10}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$4;-><init>(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;ZLjava/lang/String;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 1272
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    return-void
.end method

.method private synthetic lambda$new$3(Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftCollection;Ljava/lang/String;)V
    .locals 2

    .line 1276
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->collections:Lorg/telegram/ui/Stars/StarsController$GiftsCollections;

    iget v1, p1, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftCollection;->collection_id:I

    invoke-virtual {v0, v1, p2}, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->rename(ILjava/lang/String;)V

    .line 1277
    iput-object p2, p1, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftCollection;->title:Ljava/lang/String;

    const/4 p1, 0x1

    .line 1278
    invoke-direct {p0, p1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->fillTabs(Z)V

    return-void
.end method

.method private synthetic lambda$new$4(Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftCollection;)V
    .locals 2

    .line 1275
    iget-object v0, p1, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftCollection;->title:Ljava/lang/String;

    new-instance v1, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$$ExternalSyntheticLambda23;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftCollection;)V

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->openEnterNameAlert(Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method private synthetic lambda$new$5()V
    .locals 1

    const/4 v0, 0x1

    .line 1282
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->setReorderingCollections(Z)V

    return-void
.end method

.method private synthetic lambda$new$6(ILorg/telegram/tgnet/tl/TL_stars$TL_starGiftCollection;)V
    .locals 3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 1286
    iget-object v1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->collections:Lorg/telegram/ui/Stars/StarsController$GiftsCollections;

    iget p2, p2, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftCollection;->collection_id:I

    invoke-virtual {v1, p2}, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->removeCollection(I)V

    const/4 p2, 0x1

    .line 1287
    invoke-direct {p0, p2}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->fillTabs(Z)V

    .line 1288
    iget-object v1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->tabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    iget-object v2, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->collections:Lorg/telegram/ui/Stars/StarsController$GiftsCollections;

    invoke-virtual {v2}, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->getCollections()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt p1, v2, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    :goto_0
    invoke-virtual {v1, v0, p1}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->scrollToTab(II)V

    .line 1289
    invoke-virtual {p0, p2}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->updateTabsShown(Z)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$new$7(ILorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/Integer;Landroid/view/View;)Ljava/lang/Boolean;
    .locals 14

    .line 1200
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, -0x2

    if-eq v0, v2, :cond_4

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->reorderingCollections:Z

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v0, 0x0

    .line 1205
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->collections:Lorg/telegram/ui/Stars/StarsController$GiftsCollections;

    invoke-virtual {v2}, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->getCollections()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 1206
    iget-object v2, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->collections:Lorg/telegram/ui/Stars/StarsController$GiftsCollections;

    invoke-virtual {v2}, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->getCollections()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftCollection;

    iget v2, v2, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftCollection;->collection_id:I

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 1208
    iget-object v1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->collections:Lorg/telegram/ui/Stars/StarsController$GiftsCollections;

    invoke-virtual {v1}, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->getCollections()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftCollection;

    move-object v6, v1

    move v1, v0

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    move-object v6, v0

    .line 1215
    :goto_1
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v2, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->dialogId:J

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/MessagesController;->getUserOrChat(J)Lorg/telegram/tgnet/TLObject;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/DialogObject;->getPublicUsername(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v5

    .line 1216
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->collections:Lorg/telegram/ui/Stars/StarsController$GiftsCollections;

    invoke-virtual {v0}, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->isMine()Z

    move-result v0

    .line 1217
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-nez v0, :cond_3

    .line 1218
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    :cond_3
    move-object/from16 v9, p2

    move-object/from16 v2, p6

    .line 1221
    invoke-static {v9, v2}, Lorg/telegram/ui/Components/ItemOptions;->makeOptions(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$3;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$3;-><init>(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;)V

    .line 1222
    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/ItemOptions;->setScrimViewBackground(Landroid/graphics/drawable/Drawable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->menu_gift_add:I

    sget v4, Lorg/telegram/messenger/R$string;->Gift2CollectionsAdd:I

    .line 1243
    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v7, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$$ExternalSyntheticLambda12;

    invoke-direct {v7, p0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;)V

    invoke-virtual {v2, v0, v3, v4, v7}, Lorg/telegram/ui/Components/ItemOptions;->addIf(ZILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v10

    .line 1244
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/lit8 v11, v2, 0x1

    sget v12, Lorg/telegram/messenger/R$drawable;->msg_share:I

    sget v2, Lorg/telegram/messenger/R$string;->Gift2CollectionsShare:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v13

    new-instance v2, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$$ExternalSyntheticLambda13;

    move-object v3, p0

    move v4, p1

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;ILjava/lang/String;Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftCollection;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-virtual {v10, v11, v12, v13, v2}, Lorg/telegram/ui/Components/ItemOptions;->addIf(ZILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_edit:I

    sget v4, Lorg/telegram/messenger/R$string;->Gift2CollectionsRename:I

    .line 1274
    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$$ExternalSyntheticLambda14;

    invoke-direct {v5, p0, v6}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftCollection;)V

    invoke-virtual {p1, v0, v2, v4, v5}, Lorg/telegram/ui/Components/ItemOptions;->addIf(ZILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    sget v2, Lorg/telegram/messenger/R$drawable;->tabs_reorder:I

    sget v4, Lorg/telegram/messenger/R$string;->Gift2CollectionsReorder:I

    .line 1281
    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$$ExternalSyntheticLambda15;

    invoke-direct {v5, p0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;)V

    invoke-virtual {p1, v0, v2, v4, v5}, Lorg/telegram/ui/Components/ItemOptions;->addIf(ZILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    sget v4, Lorg/telegram/messenger/R$string;->Gift2CollectionsDelete:I

    .line 1284
    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$$ExternalSyntheticLambda16;

    invoke-direct {v5, p0, v1, v6}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;ILorg/telegram/tgnet/tl/TL_stars$TL_starGiftCollection;)V

    const/4 v1, 0x1

    move/from16 p2, v0

    move/from16 p5, v1

    move/from16 p3, v2

    move-object/from16 p4, v4

    move-object/from16 p6, v5

    invoke-virtual/range {p1 .. p6}, Lorg/telegram/ui/Components/ItemOptions;->addIf(ZILjava/lang/CharSequence;ZLjava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->currentMenu:Lorg/telegram/ui/Components/ItemOptions;

    .line 1292
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ItemOptions;->show()Lorg/telegram/ui/Components/ItemOptions;

    .line 1293
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    .line 1201
    :cond_4
    :goto_2
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1
.end method

.method private synthetic lambda$new$8(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 1

    const/4 v0, -0x1

    .line 1353
    iput v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->checkboxRequestId:I

    if-eqz p1, :cond_0

    .line 1355
    invoke-static {p2}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/BulletinFactory;->showForError(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$9(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 1352
    new-instance p2, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$$ExternalSyntheticLambda24;

    invoke-direct {p2, p0, p3, p1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$$ExternalSyntheticLambda24;-><init>(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$openEnterNameAlert$17(Lorg/telegram/ui/Components/EditTextCaption;Landroid/app/Activity;Landroid/content/DialogInterface;)V
    .locals 0

    .line 2089
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 2090
    iget-object p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getClassGuid()I

    move-result p1

    invoke-static {p2, p1}, Lorg/telegram/messenger/AndroidUtilities;->requestAdjustResize(Landroid/app/Activity;I)V

    return-void
.end method

.method private openEnterNameAlert(Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v6, p1

    .line 1945
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 1947
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->findActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v8

    const/4 v9, 0x0

    if-eqz v8, :cond_0

    .line 1948
    invoke-virtual {v8}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    goto :goto_0

    :cond_0
    move-object v5, v9

    :goto_0
    const/4 v10, 0x1

    .line 1950
    new-array v4, v10, [Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 1955
    new-instance v11, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v0, v1, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v11, v7, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    if-eqz v6, :cond_1

    .line 1960
    sget v0, Lorg/telegram/messenger/R$string;->Gift2EditCollectionNameTitle:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_1

    .line 1962
    :cond_1
    sget v0, Lorg/telegram/messenger/R$string;->Gift2NewCollectionTitle:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1963
    sget v0, Lorg/telegram/messenger/R$string;->Gift2NewCollectionText:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1966
    :goto_1
    new-instance v2, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$5;

    iget-object v0, v1, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v2, v1, v7, v0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$5;-><init>(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 2001
    iput-boolean v10, v2, Lorg/telegram/ui/Components/EditTextBoldCursor;->lineYFix:Z

    .line 2002
    new-instance v0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$6;

    move-object/from16 v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$6;-><init>(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;Lorg/telegram/ui/Components/EditTextCaption;Lorg/telegram/messenger/Utilities$Callback;[Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/view/View;)V

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 2025
    iget v0, v1, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getCurrentKeyboardLanguage()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v10}, Lorg/telegram/messenger/MediaDataController;->fetchNewEmojiKeywords([Ljava/lang/String;Z)V

    const/high16 v0, 0x41900000    # 18.0f

    .line 2026
    invoke-virtual {v2, v10, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTextSize(IF)V

    .line 2027
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    iget-object v3, v1, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    .line 2028
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_groupcreate_hintText:I

    iget-object v3, v1, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/EditTextCaption;->setHintColor(I)V

    .line 2029
    sget v0, Lorg/telegram/messenger/R$string;->Gift2NewCollectionHint:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHintText(Ljava/lang/CharSequence;)V

    .line 2030
    invoke-virtual {v2, v10}, Landroid/view/View;->setFocusable(Z)V

    const v0, 0x24001

    .line 2031
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setInputType(I)V

    .line 2032
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteInputField:I

    iget-object v3, v1, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteInputFieldActivated:I

    iget-object v5, v1, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v3, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    iget-object v12, v1, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v5, v12}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v5

    invoke-virtual {v2, v0, v3, v5}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setLineColors(III)V

    const/4 v0, 0x6

    .line 2033
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 2034
    invoke-virtual {v2, v9}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/high16 v0, 0x40c00000    # 6.0f

    .line 2035
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v3, v5, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 2037
    new-instance v0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$7;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$7;-><init>(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;Lorg/telegram/ui/Components/EditTextCaption;)V

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2060
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2061
    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2063
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v16, 0x41c00000    # 24.0f

    const/high16 v17, 0x41200000    # 10.0f

    const/4 v12, -0x1

    const/4 v13, -0x2

    const/high16 v14, 0x41c00000    # 24.0f

    const/4 v15, 0x0

    .line 2064
    invoke-static/range {v12 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2065
    invoke-virtual {v11}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->makeCustomMaxHeight()Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2066
    invoke-virtual {v11, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    const/high16 v0, 0x43920000    # 292.0f

    .line 2067
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {v11, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setWidth(I)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    if-eqz v6, :cond_2

    .line 2069
    sget v0, Lorg/telegram/messenger/R$string;->Edit:I

    goto :goto_2

    :cond_2
    sget v0, Lorg/telegram/messenger/R$string;->Create:I

    :goto_2
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$$ExternalSyntheticLambda19;

    move-object/from16 v6, p2

    invoke-direct {v3, v2, v6}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/Components/EditTextCaption;Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-virtual {v11, v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2080
    sget v0, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$$ExternalSyntheticLambda20;

    invoke-direct {v3}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$$ExternalSyntheticLambda20;-><init>()V

    invoke-virtual {v11, v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2083
    invoke-virtual {v11}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    aput-object v0, v4, v5

    .line 2084
    iget-object v0, v1, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->currentMenu:Lorg/telegram/ui/Components/ItemOptions;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lorg/telegram/ui/Components/ItemOptions;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz v0, :cond_3

    const/16 v3, 0x30

    .line 2085
    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    .line 2087
    :cond_3
    iget-object v0, v1, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getClassGuid()I

    move-result v0

    invoke-static {v8, v0}, Lorg/telegram/messenger/AndroidUtilities;->requestAdjustNothing(Landroid/app/Activity;I)V

    .line 2088
    aget-object v0, v4, v5

    new-instance v3, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$$ExternalSyntheticLambda21;

    invoke-direct {v3, v1, v2, v8}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;Lorg/telegram/ui/Components/EditTextCaption;Landroid/app/Activity;)V

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2092
    aget-object v0, v4, v5

    new-instance v3, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$$ExternalSyntheticLambda22;

    invoke-direct {v3, v2}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/ui/Components/EditTextCaption;)V

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 2096
    aget-object v0, v4, v5

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    .line 2097
    aget-object v0, v4, v5

    invoke-virtual {v0, v5}, Lorg/telegram/ui/ActionBar/AlertDialog;->setDismissDialogByButtons(Z)V

    .line 2098
    aget-object v0, v4, v5

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    .line 2102
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    return-void
.end method

.method public static setGiftFilterOptionsClickListeners(Landroid/view/View;Lorg/telegram/ui/Stars/StarsController$GiftsList;Ljava/lang/Runnable;I)V
    .locals 1

    .line 2447
    new-instance v0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$$ExternalSyntheticLambda9;

    invoke-direct {v0, p1, p3, p2}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Stars/StarsController$GiftsList;ILjava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2451
    new-instance v0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$$ExternalSyntheticLambda10;

    invoke-direct {v0, p1, p3, p2}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Stars/StarsController$GiftsList;ILjava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method private shouldHideButton(I)Z
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v0, 0x1

    sub-int/2addr p1, v0

    if-ltz p1, :cond_3

    .line 1544
    iget-object v1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->collections:Lorg/telegram/ui/Stars/StarsController$GiftsCollections;

    invoke-virtual {v1}, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->getCollections()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    goto :goto_0

    .line 1545
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->collections:Lorg/telegram/ui/Stars/StarsController$GiftsCollections;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->getListByIndex(I)Lorg/telegram/ui/Stars/StarsController$GiftsList;

    move-result-object p1

    if-nez p1, :cond_2

    return v0

    .line 1547
    :cond_2
    iget-object p1, p1, Lorg/telegram/ui/Stars/StarsController$GiftsList;->gifts:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    return p1

    :cond_3
    :goto_0
    return v0
.end method


# virtual methods
.method public addGifts()V
    .locals 9

    .line 2119
    invoke-virtual {p0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->getCurrentPage()Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2120
    iget-object v1, v0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->list:Lorg/telegram/ui/Stars/StarsController$GiftsList;

    if-eqz v1, :cond_1

    iget-boolean v2, v0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->isCollection:Z

    if-nez v2, :cond_0

    goto :goto_0

    .line 2121
    :cond_0
    iget v7, v1, Lorg/telegram/ui/Stars/StarsController$GiftsList;->collectionId:I

    .line 2122
    new-instance v3, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet;

    iget-object v4, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    iget-wide v5, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->dialogId:J

    new-instance v8, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$$ExternalSyntheticLambda18;

    invoke-direct {v8, p0, v7, v0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;ILorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;)V

    invoke-direct/range {v3 .. v8}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;JILorg/telegram/messenger/Utilities$Callback;)V

    .line 2150
    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    :cond_1
    :goto_0
    return-void
.end method

.method public canAdd()Z
    .locals 3

    .line 1537
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->collections:Lorg/telegram/ui/Stars/StarsController$GiftsCollections;

    invoke-virtual {v0}, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->isMine()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1538
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->collections:Lorg/telegram/ui/Stars/StarsController$GiftsCollections;

    invoke-virtual {v0}, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->getCollections()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v2, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->config:Lorg/telegram/messenger/AppGlobalConfig;

    iget-object v2, v2, Lorg/telegram/messenger/AppGlobalConfig;->stargiftsCollectionsLimit:Lorg/telegram/messenger/AppGlobalConfig$ConfigInt;

    invoke-virtual {v2}, Lorg/telegram/messenger/AppGlobalConfig$ConfigInt;->get()I

    move-result v2

    if-ge v0, v2, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public canFilter()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public canFilterHidden()Z
    .locals 4

    .line 1606
    iget-wide v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->dialogId:J

    iget v2, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 1607
    :cond_0
    iget-wide v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->dialogId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 1608
    :cond_1
    iget v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->dialogId:J

    neg-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    const/4 v1, 0x5

    .line 1609
    invoke-static {v0, v1}, Lorg/telegram/messenger/ChatObject;->canUserDoAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result v0

    return v0
.end method

.method public canReorder()Z
    .locals 5

    .line 1613
    iget-wide v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->dialogId:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_2

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    iget v2, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 1614
    :cond_2
    iget v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->dialogId:J

    neg-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    const/4 v1, 0x5

    .line 1615
    invoke-static {v0, v1}, Lorg/telegram/messenger/ChatObject;->canUserDoAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result v0

    return v0
.end method

.method public canScroll(Z)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 1005
    iget-object p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ViewPagerFixed;->getCurrentPosition()I

    move-result p1

    iget-object v2, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->collections:Lorg/telegram/ui/Stars/StarsController$GiftsCollections;

    invoke-virtual {v2}, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->getCollections()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt p1, v2, :cond_0

    return v1

    :cond_0
    return v0

    .line 1006
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ViewPagerFixed;->getCurrentPosition()I

    move-result p1

    if-gtz p1, :cond_2

    return v1

    :cond_2
    return v0
.end method

.method public canSwitchNotify()Z
    .locals 4

    .line 1619
    iget-wide v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->dialogId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    return v1

    .line 1620
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->list:Lorg/telegram/ui/Stars/StarsController$GiftsList;

    iget-object v0, v0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->chat_notifications_enabled:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public createCollection()V
    .locals 2

    .line 2106
    new-instance v0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->openEnterNameAlert(Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 6

    .line 1625
    sget p2, Lorg/telegram/messenger/NotificationCenter;->starUserGiftsLoaded:I

    const/16 v0, 0x3c

    const/4 v1, 0x1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-ne p1, p2, :cond_3

    .line 1626
    aget-object p1, p3, v3

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iget-wide v4, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->dialogId:J

    cmp-long p1, p1, v4

    if-eqz p1, :cond_0

    goto/16 :goto_2

    .line 1628
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {p0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->canSwitchNotify()Z

    move-result p2

    if-eqz p2, :cond_1

    move p2, v2

    goto :goto_0

    :cond_1
    move p2, v3

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 1629
    iget-object p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->checkboxLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->canSwitchNotify()Z

    move-result p2

    if-eqz p2, :cond_2

    move v2, v3

    :cond_2
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1630
    iput v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->buttonContainerHeightDp:I

    .line 1631
    iget-object p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->list:Lorg/telegram/ui/Stars/StarsController$GiftsList;

    iget-object p1, p1, Lorg/telegram/ui/Stars/StarsController$GiftsList;->chat_notifications_enabled:Ljava/lang/Boolean;

    if-eqz p1, :cond_8

    .line 1632
    iget-object p2, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->checkbox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p2, p1, v1}, Lorg/telegram/ui/Components/CheckBox2;->setChecked(ZZ)V

    return-void

    .line 1634
    :cond_3
    sget p2, Lorg/telegram/messenger/NotificationCenter;->starUserGiftCollectionsLoaded:I

    if-ne p1, p2, :cond_5

    .line 1635
    aget-object p1, p3, v3

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iget-wide v2, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->dialogId:J

    cmp-long p1, p1, v2

    if-eqz p1, :cond_4

    goto :goto_2

    .line 1636
    :cond_4
    invoke-direct {p0, v1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->fillTabs(Z)V

    .line 1637
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->updateTabsShown(Z)V

    return-void

    .line 1638
    :cond_5
    sget p2, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    if-ne p1, p2, :cond_8

    .line 1639
    iget-object p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {p0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->canSwitchNotify()Z

    move-result p2

    if-eqz p2, :cond_6

    move p2, v2

    goto :goto_1

    :cond_6
    move p2, v3

    :goto_1
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 1640
    iget-object p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->checkboxLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->canSwitchNotify()Z

    move-result p2

    if-eqz p2, :cond_7

    move v2, v3

    :cond_7
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1641
    iput v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->buttonContainerHeightDp:I

    .line 1642
    iget p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->visibleHeight:I

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->setVisibleHeight(I)V

    :cond_8
    :goto_2
    return-void
.end method

.method public getBottomOffset()I
    .locals 5

    .line 1593
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->buttonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    .line 1594
    iget-object v1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->buttonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    neg-int v1, v1

    const/high16 v2, 0x43700000    # 240.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iget v4, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->visibleHeight:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr v1, v3

    iget v3, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->buttonContainerHeightDp:I

    int-to-float v3, v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v1, v3

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    .line 1595
    iget v1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->visibleHeight:I

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 1596
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iget v2, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->visibleHeight:I

    sub-int/2addr v1, v2

    iget v2, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->buttonContainerHeightDp:I

    int-to-float v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 1598
    :cond_0
    iget v1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->buttonContainerHeightDp:I

    int-to-float v1, v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v0

    float-to-int v0, v1

    return v0
.end method

.method public getCurrentList()Lorg/telegram/ui/Stars/StarsController$GiftsList;
    .locals 1

    .line 1696
    invoke-virtual {p0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->getCurrentPage()Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1698
    iget-object v0, v0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->list:Lorg/telegram/ui/Stars/StarsController$GiftsList;

    return-object v0

    .line 1700
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->list:Lorg/telegram/ui/Stars/StarsController$GiftsList;

    return-object v0
.end method

.method public getCurrentListView()Lorg/telegram/ui/Components/RecyclerListView;
    .locals 1

    .line 1790
    invoke-virtual {p0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->getCurrentPage()Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1792
    invoke-static {v0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->-$$Nest$fgetlistView(Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;)Lorg/telegram/ui/Components/UniversalRecyclerView;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentPage()Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;
    .locals 1

    .line 1647
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ViewPagerFixed;->getCurrentView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1651
    :cond_0
    check-cast v0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;

    return-object v0
.end method

.method public getGiftsCount()I
    .locals 4

    .line 1704
    invoke-virtual {p0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->getCurrentPage()Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1705
    iget-object v0, v0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->list:Lorg/telegram/ui/Stars/StarsController$GiftsList;

    iget-object v1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->list:Lorg/telegram/ui/Stars/StarsController$GiftsList;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_2

    .line 1708
    iget v0, v0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->totalCount:I

    if-lez v0, :cond_2

    return v0

    .line 1706
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->list:Lorg/telegram/ui/Stars/StarsController$GiftsList;

    if-eqz v0, :cond_2

    iget v0, v0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->totalCount:I

    if-lez v0, :cond_2

    return v0

    .line 1710
    :cond_2
    iget-wide v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->dialogId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-ltz v0, :cond_4

    .line 1711
    iget v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v2, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->dialogId:J

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/MessagesController;->getUserFull(J)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1712
    iget v0, v0, Lorg/telegram/tgnet/TLRPC$UserFull;->stargifts_count:I

    return v0

    :cond_3
    return v1

    .line 1714
    :cond_4
    iget v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v2, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->dialogId:J

    neg-long v2, v2

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/MessagesController;->getChatFull(J)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1715
    iget v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->stargifts_count:I

    return v0

    :cond_5
    return v1
.end method

.method public getLastEmojis(Landroid/graphics/Paint$FontMetricsInt;)Ljava/lang/CharSequence;
    .locals 9

    .line 1721
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->list:Lorg/telegram/ui/Stars/StarsController$GiftsList;

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    .line 1722
    :cond_0
    new-instance v0, Landroid/util/Pair;

    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-wide v3, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->dialogId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1723
    iget-object v2, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->list:Lorg/telegram/ui/Stars/StarsController$GiftsList;

    iget-object v2, v2, Lorg/telegram/ui/Stars/StarsController$GiftsList;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1724
    iget-object p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->list:Lorg/telegram/ui/Stars/StarsController$GiftsList;

    iget-boolean p1, p1, Lorg/telegram/ui/Stars/StarsController$GiftsList;->loading:Z

    if-eqz p1, :cond_1

    .line 1725
    sget-object p1, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->cachedLastEmojis:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    if-eqz p1, :cond_1

    return-object p1

    :cond_1
    return-object v1

    .line 1733
    :cond_2
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 1734
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    move v5, v4

    .line 1735
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x3

    if-ge v6, v7, :cond_5

    iget-object v6, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->list:Lorg/telegram/ui/Stars/StarsController$GiftsList;

    iget-object v6, v6, Lorg/telegram/ui/Stars/StarsController$GiftsList;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_5

    .line 1736
    iget-object v6, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->list:Lorg/telegram/ui/Stars/StarsController$GiftsList;

    iget-object v6, v6, Lorg/telegram/ui/Stars/StarsController$GiftsList;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    .line 1737
    iget-object v6, v6, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    invoke-virtual {v6}, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v6

    if-nez v6, :cond_3

    goto :goto_1

    .line 1739
    :cond_3
    iget-wide v7, v6, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_1

    .line 1740
    :cond_4
    iget-wide v7, v6, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1741
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1744
    :cond_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    return-object v1

    .line 1745
    :cond_6
    new-instance v1, Landroid/text/SpannableStringBuilder;

    const-string v2, " "

    invoke-direct {v1, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    move v2, v4

    .line 1746
    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_7

    .line 1747
    new-instance v5, Landroid/text/SpannableStringBuilder;

    const-string/jumbo v6, "x"

    invoke-direct {v5, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1748
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$Document;

    .line 1749
    new-instance v7, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    const v8, 0x3f666666    # 0.9f

    invoke-direct {v7, v6, v8, p1}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;-><init>(Lorg/telegram/tgnet/TLRPC$Document;FLandroid/graphics/Paint$FontMetricsInt;)V

    const/16 v6, 0x21

    const/4 v8, 0x1

    .line 1750
    invoke-virtual {v5, v7, v4, v8, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1751
    invoke-virtual {v1, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1754
    :cond_7
    sget-object p1, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->cachedLastEmojis:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public getLastEmojisHash()J
    .locals 9

    .line 1759
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->list:Lorg/telegram/ui/Stars/StarsController$GiftsList;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, v0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 1763
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    const/4 v6, 0x3

    if-ge v4, v6, :cond_2

    .line 1764
    iget-object v6, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->list:Lorg/telegram/ui/Stars/StarsController$GiftsList;

    iget-object v6, v6, Lorg/telegram/ui/Stars/StarsController$GiftsList;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 1765
    iget-object v6, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->list:Lorg/telegram/ui/Stars/StarsController$GiftsList;

    iget-object v6, v6, Lorg/telegram/ui/Stars/StarsController$GiftsList;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    .line 1766
    iget-object v6, v6, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    invoke-virtual {v6}, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v6

    if-nez v6, :cond_1

    goto :goto_1

    .line 1768
    :cond_1
    iget-wide v7, v6, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1769
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v6, v6, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v3

    const/4 v1, 0x1

    aput-object v2, v6, v1

    invoke-static {v6}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v1

    int-to-long v1, v1

    add-int/lit8 v4, v4, 0x1

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-wide v1
.end method

.method public getTabsHeight()F
    .locals 7

    .line 1421
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ViewPagerFixed;->getViewPages()[Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1422
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ViewPagerFixed;->getViewPages()[Landroid/view/View;

    move-result-object v0

    .line 1423
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 1424
    instance-of v5, v4, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;

    if-eqz v5, :cond_0

    .line 1425
    invoke-virtual {v4}, Landroid/view/View;->getTranslationX()F

    move-result v5

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v6, v5

    check-cast v4, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;

    invoke-virtual {v4}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->getTabsHeight()F

    move-result v4

    mul-float/2addr v6, v4

    add-float/2addr v1, v6

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public getTabsVisibility()F
    .locals 1

    .line 1457
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->tabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public initBlurCapture(Landroid/view/ViewGroup;)V
    .locals 0

    .line 2462
    iput-object p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->iBlur3CaptureParent:Landroid/view/ViewGroup;

    .line 2464
    new-instance p1, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;)V

    iput-object p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->iBlur3Capture:Lorg/telegram/ui/Components/blur3/capture/IBlur3Capture;

    return-void
.end method

.method public isReordering()Z
    .locals 2

    .line 1467
    iget-boolean v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->reorderingCollections:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 1469
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->getCurrentPage()Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1470
    invoke-virtual {v0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->isReordering()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 1656
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 1657
    iget v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->starUserGiftsLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1658
    iget v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->starUserGiftCollectionsLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1659
    iget v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1660
    invoke-virtual {p0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->getCurrentPage()Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1662
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->update(Z)V

    .line 1664
    :cond_0
    invoke-direct {p0, v1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->fillTabs(Z)V

    .line 1665
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->updateTabsShown(Z)V

    .line 1666
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->list:Lorg/telegram/ui/Stars/StarsController$GiftsList;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 1667
    iput-boolean v1, v0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->shown:Z

    .line 1668
    invoke-virtual {v0}, Lorg/telegram/ui/Stars/StarsController$GiftsList;->load()V

    .line 1670
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->collections:Lorg/telegram/ui/Stars/StarsController$GiftsCollections;

    if-eqz v0, :cond_2

    .line 1671
    iput-boolean v1, v0, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->shown:Z

    .line 1672
    invoke-virtual {v0}, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->load()V

    :cond_2
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 1678
    invoke-virtual {p0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->getCurrentPage()Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;

    move-result-object v0

    .line 1679
    invoke-virtual {p0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->resetReordering()V

    if-eqz v0, :cond_0

    .line 1681
    invoke-virtual {v0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->resetReordering()V

    .line 1683
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 1684
    iget v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->starUserGiftsLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1685
    iget v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->starUserGiftCollectionsLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1686
    iget v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1687
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->list:Lorg/telegram/ui/Stars/StarsController$GiftsList;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1688
    iput-boolean v1, v0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->shown:Z

    .line 1690
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->collections:Lorg/telegram/ui/Stars/StarsController$GiftsCollections;

    if-eqz v0, :cond_2

    .line 1691
    iput-boolean v1, v0, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->shown:Z

    :cond_2
    return-void
.end method

.method protected abstract processColor(I)I
.end method

.method public resetReordering()V
    .locals 1

    .line 1529
    invoke-virtual {p0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->getCurrentPage()Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1531
    invoke-virtual {v0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->resetReordering()V

    :cond_0
    const/4 v0, 0x0

    .line 1533
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->setReorderingCollections(Z)V

    return-void
.end method

.method public scrollToCollectionId(I)V
    .locals 0

    .line 1482
    iput p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->pendingScrollToCollectionId:I

    .line 1483
    invoke-direct {p0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->checkScrollToCollection()V

    return-void
.end method

.method public setButtonOffset(I)V
    .locals 1

    .line 1586
    iget v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->buttonContainerOffset:I

    if-eq v0, p1, :cond_0

    .line 1587
    iput p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->buttonContainerOffset:I

    .line 1588
    invoke-virtual {p0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->updateButton()V

    :cond_0
    return-void
.end method

.method public setPaddingTop(I)V
    .locals 9

    .line 166
    iget v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->externalPaddingTop:I

    if-eq v0, p1, :cond_2

    .line 167
    iput p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->externalPaddingTop:I

    .line 169
    iget-object p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ViewPagerFixed;->getViewPages()[Landroid/view/View;

    move-result-object p1

    .line 170
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 171
    instance-of v3, v2, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;

    if-eqz v3, :cond_0

    .line 172
    check-cast v2, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;

    .line 173
    invoke-static {v2}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->-$$Nest$fgetlistView(Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;)Lorg/telegram/ui/Components/UniversalRecyclerView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    .line 174
    invoke-static {v2}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->-$$Nest$fgetlistView(Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;)Lorg/telegram/ui/Components/UniversalRecyclerView;

    move-result-object v4

    const/high16 v5, 0x41100000    # 9.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    iget v7, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->externalPaddingTop:I

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/high16 v8, 0x42ac0000    # 86.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-virtual {v4, v6, v7, v5, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 175
    invoke-static {v2}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->-$$Nest$fgetlistView(Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;)Lorg/telegram/ui/Components/UniversalRecyclerView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    .line 177
    invoke-static {v2}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->-$$Nest$fgetlistView(Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;)Lorg/telegram/ui/Components/UniversalRecyclerView;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$$ExternalSyntheticLambda1;

    invoke-direct {v5, v2, v3}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;I)V

    invoke-static {v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->doOnLayout(Landroid/view/View;Ljava/lang/Runnable;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 181
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->updateTabsY()V

    .line 182
    invoke-virtual {p0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->updateButton()V

    :cond_2
    return-void
.end method

.method public setReordering(Z)V
    .locals 1

    .line 1474
    invoke-virtual {p0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->getCurrentPage()Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1476
    invoke-static {v0, p1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->-$$Nest$msetReordering(Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;Z)V

    :cond_0
    return-void
.end method

.method public setReorderingCollections(Z)V
    .locals 3

    .line 1509
    iget-boolean v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->reorderingCollections:Z

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 1510
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->reorderingCollections:Z

    .line 1511
    invoke-virtual {p0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->isReordering()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->updatedReordering(Z)V

    .line 1512
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->tabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->setReordering(Z)V

    if-eqz p1, :cond_1

    .line 1514
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    .line 1515
    instance-of v1, v0, Lorg/telegram/ui/ProfileActivity;

    if-eqz v1, :cond_1

    .line 1516
    move-object v1, v0

    check-cast v1, Lorg/telegram/ui/ProfileActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ProfileActivity;->scrollToSharedMedia(Z)V

    .line 1517
    new-instance v1, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_1
    if-nez p1, :cond_2

    .line 1523
    iget-object p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->sendCollectionsOrder:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1524
    iget-object p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->sendCollectionsOrder:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setVisibleHeight(I)V
    .locals 4

    .line 1778
    iput p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->visibleHeight:I

    .line 1779
    invoke-virtual {p0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->updateButton()V

    .line 1780
    iget-object p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    if-eqz p1, :cond_1

    .line 1781
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ViewPagerFixed;->getViewPages()[Landroid/view/View;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 1782
    instance-of v3, v2, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;

    if-eqz v3, :cond_0

    .line 1783
    check-cast v2, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;

    iget v3, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->visibleHeight:I

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->setVisibleHeight(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public updateButton()V
    .locals 7

    .line 1555
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    if-nez v0, :cond_0

    return-void

    .line 1557
    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ViewPagerFixed;->getCurrentPosition()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ViewPagerFixed;->getNextPosition()I

    move-result v1

    const/high16 v2, 0x42880000    # 68.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    if-ne v0, v1, :cond_2

    .line 1558
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ViewPagerFixed;->getCurrentPosition()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->shouldHideButton(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v3, v4

    .line 1559
    :goto_0
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    mul-float/2addr v0, v3

    goto :goto_3

    .line 1562
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ViewPagerFixed;->getCurrentPosition()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->shouldHideButton(I)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v3

    goto :goto_1

    :cond_3
    move v0, v4

    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ViewPagerFixed;->getCurrentPositionAlpha()F

    move-result v1

    mul-float/2addr v0, v1

    .line 1563
    iget-object v1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ViewPagerFixed;->getNextPosition()I

    move-result v1

    invoke-direct {p0, v1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->shouldHideButton(I)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    move v3, v4

    :goto_2
    iget-object v1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ViewPagerFixed;->getNextPositionAlpha()F

    move-result v1

    mul-float/2addr v3, v1

    add-float/2addr v0, v3

    .line 1565
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    .line 1567
    :goto_3
    iget-object v1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->buttonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    neg-int v1, v1

    iget v2, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->visibleHeight:I

    add-int/2addr v1, v2

    iget v2, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->buttonContainerHeightDp:I

    int-to-float v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 1569
    iget-object v1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->animatorBottomButtonVisibility:Lme/vkryl/android/animator/BoolAnimator;

    iget v3, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->visibleHeight:I

    const/high16 v5, 0x43380000    # 184.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/4 v6, 0x0

    if-le v3, v5, :cond_5

    move v3, v2

    goto :goto_4

    :cond_5
    move v3, v6

    :goto_4
    invoke-virtual {v1, v3, v2}, Lme/vkryl/android/animator/BoolAnimator;->setValue(ZZ)V

    .line 1571
    iget-object v1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->animatorBottomButtonVisibility:Lme/vkryl/android/animator/BoolAnimator;

    invoke-virtual {v1}, Lme/vkryl/android/animator/BoolAnimator;->getFloatValue()F

    move-result v1

    const/high16 v3, 0x42700000    # 60.0f

    .line 1572
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v0

    invoke-static {v3, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    .line 1574
    iget-object v3, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->bulletinContainer:Landroid/widget/FrameLayout;

    const/high16 v5, 0x43480000    # 200.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    sub-float v5, v0, v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setTranslationY(F)V

    .line 1575
    iget-object v3, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->buttonContainer:Landroid/widget/FrameLayout;

    iget v5, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->buttonContainerOffset:I

    int-to-float v5, v5

    sub-float/2addr v0, v5

    invoke-virtual {v3, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 1576
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->buttonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1577
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->buttonContainer:Landroid/widget/FrameLayout;

    cmpl-float v1, v1, v4

    if-lez v1, :cond_6

    goto :goto_5

    :cond_6
    const/4 v6, 0x4

    :goto_5
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1578
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    iget-object v1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->collections:Lorg/telegram/ui/Stars/StarsController$GiftsCollections;

    invoke-virtual {v1}, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->isMine()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ViewPagerFixed;->getPositionAnimated()F

    move-result v1

    const/high16 v3, 0x3f000000    # 0.5f

    cmpg-float v1, v1, v3

    if-gez v1, :cond_7

    goto :goto_6

    :cond_7
    iget-object v1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->addGiftsText:Ljava/lang/CharSequence;

    goto :goto_7

    :cond_8
    :goto_6
    iget-object v1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->sendGiftsToFriendsText:Ljava/lang/CharSequence;

    :goto_7
    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    .line 1579
    invoke-static {}, Lorg/telegram/ui/Components/Bulletin;->updateCurrentPosition()V

    return-void
.end method

.method public updateColors()V
    .locals 4

    .line 1847
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->updateColors()V

    .line 1848
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    const/high16 v1, 0x41980000    # 19.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    iget-object v3, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->processColor(I)I

    move-result v2

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1849
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ViewPagerFixed;->getViewPages()[Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 1851
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 1852
    aget-object v2, v0, v1

    if-eqz v2, :cond_0

    .line 1853
    check-cast v2, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;

    invoke-virtual {v2}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->updateColors()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1857
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->checkboxTextView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    iget-object v2, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1858
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->checkboxLayout:Landroid/widget/LinearLayout;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    iget-object v2, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    const/16 v2, 0x18

    invoke-static {v1, v2, v2}, Lorg/telegram/ui/ActionBar/Theme;->createRadSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public updateTabsShown(Z)V
    .locals 5

    .line 1408
    iget-object p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->collections:Lorg/telegram/ui/Stars/StarsController$GiftsCollections;

    invoke-virtual {p1}, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->getCollections()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->canAdd()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 1409
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ViewPagerFixed;->getViewPages()[Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1410
    iget-object v1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ViewPagerFixed;->getViewPages()[Landroid/view/View;

    move-result-object v1

    .line 1411
    array-length v2, v1

    :goto_2
    if-ge v0, v2, :cond_3

    aget-object v3, v1, v0

    .line 1412
    instance-of v4, v3, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;

    if-eqz v4, :cond_2

    .line 1413
    check-cast v3, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;

    invoke-virtual {v3, p1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->setHasTabs(Z)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public updateTabsY()V
    .locals 4

    .line 1446
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->tabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    if-nez v0, :cond_0

    return-void

    .line 1447
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->externalPaddingTop:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->getTabsHeight()F

    move-result v1

    const/high16 v2, 0x42280000    # 42.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 1448
    iget v1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->externalPaddingTop:I

    int-to-float v1, v1

    sub-float v1, v0, v1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->ilerp(FFF)F

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/Utilities;->clamp01(F)F

    move-result v1

    const v2, 0x3f666666    # 0.9f

    const/high16 v3, 0x3f800000    # 1.0f

    .line 1449
    invoke-static {v2, v3, v1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v2

    .line 1450
    iget-object v3, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->tabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-virtual {v3, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 1451
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->tabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    .line 1452
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->tabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    .line 1453
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->tabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-direct {p0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->hasTabs()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method protected abstract updatedReordering(Z)V
.end method
