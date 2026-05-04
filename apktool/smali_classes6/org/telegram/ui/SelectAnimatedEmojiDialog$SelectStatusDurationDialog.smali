.class abstract Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/SelectAnimatedEmojiDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectStatusDurationDialog"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;
    }
.end annotation


# instance fields
.field private blurBitmap:Landroid/graphics/Bitmap;

.field private blurBitmapPaint:Landroid/graphics/Paint;

.field private changeToScrimColor:Z

.field private clipBottom:I

.field private contentView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;

.field private current:Landroid/graphics/Rect;

.field private dateBottomSheet:Lorg/telegram/ui/ActionBar/BottomSheet;

.field private dismissed:Z

.field private done:Z

.field private emojiPreviewView:Landroid/view/View;

.field private from:Landroid/graphics/Rect;

.field private imageReceiver:Lorg/telegram/messenger/ImageReceiver;

.field private imageViewEmoji:Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

.field private lastInsets:Landroid/view/WindowInsets;

.field private linearLayoutView:Landroid/widget/LinearLayout;

.field private menuView:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

.field private parentDialogDismiss:Ljava/lang/Runnable;

.field private parentDialogView:Landroid/view/View;

.field private parentDialogX:I

.field private parentDialogY:I

.field private resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private showAnimator:Landroid/animation/ValueAnimator;

.field private showMenuAnimator:Landroid/animation/ValueAnimator;

.field private showMenuT:F

.field private showT:F

.field private showing:Z

.field private showingMenu:Z

.field private tempLocation:[I

.field final synthetic this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

.field private to:Landroid/graphics/Rect;


# direct methods
.method public static synthetic $r8$lambda$-TLyzKSWSet6vA8FhVYmDCaEtUU(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$1sRpEgMZY62n1ryFwlg6lg-onmo(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->lambda$new$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$2m5TZjTaQCaGOi0m303AEEtAamU(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->lambda$animateMenuShow$11(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$90yjfsbw67lSRVdBkuMA1O1Vrak(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;[ZLandroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->lambda$new$5([ZLandroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9Nq76aJ9Ztt4l94aBB2EqI-RytY(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;Ljava/lang/Integer;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->lambda$done$9(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OuzzjnxgNYBMzO1ylT6ETZ4Gui4(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;ZZLjava/lang/Runnable;[ZLandroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->lambda$animateShow$10(ZZLjava/lang/Runnable;[ZLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YoH5oxonncSjmBNwuhtvWdYnf3w(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_sLeparfCQ-mXeTxHFy60zi_Dxs(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;[ZI)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->lambda$new$4([ZI)V

    return-void
.end method

.method public static synthetic $r8$lambda$b7SR9v1P5ezJbe5_on89xdTzjiI(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->lambda$new$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$go6zH7_hPO6zKFFuKJI6V3PGbe8(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;Ljava/lang/Integer;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->lambda$done$8(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$l9CLb_rSQ7kk_9ZMnfOwajoRKeA(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->lambda$new$7(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$xTOAVuC4iEqpsvRWHOMSeEgnILI(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->lambda$new$6(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetblurBitmap(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)Landroid/graphics/Bitmap;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->blurBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetblurBitmapPaint(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)Landroid/graphics/Paint;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->blurBitmapPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetchangeToScrimColor(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->changeToScrimColor:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetclipBottom(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->clipBottom:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcontentView(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->contentView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrent(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)Landroid/graphics/Rect;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->current:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetfrom(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)Landroid/graphics/Rect;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->from:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetimageReceiver(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)Lorg/telegram/messenger/ImageReceiver;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetimageViewEmoji(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->imageViewEmoji:Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmenuView(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->menuView:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetparentDialogX(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->parentDialogX:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetparentDialogY(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->parentDialogY:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetshowMenuT(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->showMenuT:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetshowT(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->showT:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgettempLocation(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)[I
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->tempLocation:[I

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetto(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)Landroid/graphics/Rect;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->to:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputlastInsets(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;Landroid/view/WindowInsets;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->lastInsets:Landroid/view/WindowInsets;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputshowAnimator(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->showAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputshowMenuAnimator(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->showMenuAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputshowMenuT(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;F)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->showMenuT:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputshowT(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;F)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->showT:F

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetParentActivity(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)Landroid/app/Activity;
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->getParentActivity()Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mprepareBlurBitmap(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->prepareBlurBitmap()V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Landroid/content/Context;Ljava/lang/Runnable;Landroid/view/View;Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v11, p6

    .line 5963
    iput-object v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    .line 5964
    invoke-direct {v0, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 5819
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->from:Landroid/graphics/Rect;

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->to:Landroid/graphics/Rect;

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->current:Landroid/graphics/Rect;

    const/4 v5, 0x2

    .line 5841
    new-array v5, v5, [I

    iput-object v5, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->tempLocation:[I

    const/4 v12, 0x0

    .line 6106
    iput-boolean v12, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->done:Z

    .line 6347
    iput-boolean v12, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->dismissed:Z

    .line 5965
    iput-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->imageViewEmoji:Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    .line 5966
    iput-object v11, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object/from16 v5, p3

    .line 5967
    iput-object v5, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->parentDialogDismiss:Ljava/lang/Runnable;

    .line 5968
    iput-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->parentDialogView:Landroid/view/View;

    .line 5970
    new-instance v5, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;

    invoke-direct {v5, v0, v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->contentView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    const/4 v13, -0x1

    invoke-direct {v6, v13, v13}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v5, v6}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 5975
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->linearLayoutView:Landroid/widget/LinearLayout;

    const/4 v14, 0x1

    .line 5976
    invoke-virtual {v5, v14}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 5978
    new-instance v5, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$1;

    invoke-direct {v5, v0, v2, v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$1;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;Landroid/content/Context;Lorg/telegram/ui/SelectAnimatedEmojiDialog;)V

    iput-object v5, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->emojiPreviewView:Landroid/view/View;

    .line 5992
    iget-object v6, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->linearLayoutView:Landroid/widget/LinearLayout;

    const/16 v20, 0x0

    const/16 v21, 0x10

    const/16 v15, 0xa0

    const/16 v16, 0xa0

    const/16 v17, 0x11

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-static/range {v15 .. v21}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 5994
    new-instance v5, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    sget v6, Lorg/telegram/messenger/R$drawable;->popup_fixed_alert2:I

    invoke-direct {v5, v2, v6, v11}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v5, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->menuView:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    .line 5995
    iget-object v6, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->linearLayoutView:Landroid/widget/LinearLayout;

    const/16 v21, 0x0

    const/4 v15, -0x2

    const/16 v16, -0x2

    invoke-static/range {v15 .. v21}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 5998
    iget-object v7, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->menuView:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    sget v5, Lorg/telegram/messenger/R$string;->SetEmojiStatusUntil1Hour:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addItem(ZZLandroid/view/ViewGroup;ILjava/lang/CharSequence;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v5

    new-instance v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$$ExternalSyntheticLambda0;

    invoke-direct {v6, v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)V

    .line 5999
    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6000
    iget-object v7, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->menuView:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    sget v5, Lorg/telegram/messenger/R$string;->SetEmojiStatusUntil2Hours:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addItem(ZZLandroid/view/ViewGroup;ILjava/lang/CharSequence;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v5

    new-instance v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$$ExternalSyntheticLambda1;

    invoke-direct {v6, v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)V

    .line 6001
    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6002
    iget-object v7, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->menuView:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    sget v5, Lorg/telegram/messenger/R$string;->SetEmojiStatusUntil8Hours:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addItem(ZZLandroid/view/ViewGroup;ILjava/lang/CharSequence;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v5

    new-instance v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$$ExternalSyntheticLambda2;

    invoke-direct {v6, v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)V

    .line 6003
    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6004
    iget-object v7, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->menuView:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    sget v5, Lorg/telegram/messenger/R$string;->SetEmojiStatusUntil2Days:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addItem(ZZLandroid/view/ViewGroup;ILjava/lang/CharSequence;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v5

    new-instance v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$$ExternalSyntheticLambda3;

    invoke-direct {v6, v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)V

    .line 6005
    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6006
    iget-object v7, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->menuView:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    sget v5, Lorg/telegram/messenger/R$string;->SetEmojiStatusUntilOther:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addItem(ZZLandroid/view/ViewGroup;ILjava/lang/CharSequence;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v5

    new-instance v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$$ExternalSyntheticLambda4;

    invoke-direct {v6, v0, v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;Landroid/content/Context;)V

    .line 6007
    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6026
    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->contentView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;

    iget-object v5, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->linearLayoutView:Landroid/widget/LinearLayout;

    const/4 v6, -0x2

    const/16 v7, 0x11

    invoke-static {v6, v6, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 6028
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 6030
    sget v5, Lorg/telegram/messenger/R$style;->DialogNoAnimation:I

    invoke-virtual {v2, v5}, Landroid/view/Window;->setWindowAnimations(I)V

    const/4 v5, 0x0

    .line 6031
    invoke-virtual {v2, v5}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6033
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    .line 6034
    iput v13, v5, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 v6, 0x33

    .line 6035
    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v6, 0x0

    .line 6036
    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 6037
    iget v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v6, v6, -0x3

    const v7, -0x7ffcff00

    or-int/2addr v6, v7

    .line 6039
    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 6042
    iget-object v6, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->contentView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;

    new-instance v7, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$$ExternalSyntheticLambda5;

    invoke-direct {v7, v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 6047
    iget v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v6, v6, 0x400

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 6048
    iget-object v6, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->contentView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;

    invoke-virtual {v6, v14}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 6049
    iget-object v6, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->contentView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;

    const/16 v7, 0x504

    invoke-virtual {v6, v7}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 6050
    iput v13, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 6051
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1c

    if-lt v6, v7, :cond_0

    .line 6052
    invoke-static {v5, v14}, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticApiModelOutline2;->m(Landroid/view/WindowManager$LayoutParams;I)V

    .line 6054
    :cond_0
    invoke-virtual {v2, v5}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_1
    if-eqz v4, :cond_2

    .line 6058
    iput-boolean v14, v4, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->notDraw:Z

    .line 6060
    :cond_2
    invoke-direct {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->prepareBlurBitmap()V

    .line 6062
    new-instance v2, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v2}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    iput-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 6063
    iget-object v5, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->contentView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;

    invoke-virtual {v2, v5}, Lorg/telegram/messenger/ImageReceiver;->setParentView(Landroid/view/View;)V

    .line 6064
    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 v5, 0x7

    invoke-virtual {v2, v5}, Lorg/telegram/messenger/ImageReceiver;->setLayerNum(I)V

    .line 6065
    iget-object v2, v4, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-nez v2, :cond_3

    .line 6066
    iget-object v5, v4, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->drawable:Landroid/graphics/drawable/Drawable;

    instance-of v6, v5, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v6, :cond_3

    .line 6067
    check-cast v5, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v2

    :cond_3
    if-eqz v2, :cond_a

    .line 6073
    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayIcon:I

    const v7, 0x3e4ccccd    # 0.2f

    invoke-static {v5, v6, v7}, Lorg/telegram/messenger/DocumentObject;->getSvgThumb(Ljava/util/ArrayList;IF)Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    move-result-object v5

    .line 6074
    iget-object v6, v2, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    const/16 v7, 0x5a

    invoke-static {v6, v7}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v6

    .line 6075
    const-string v7, "video/webm"

    iget-object v8, v2, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/16 v8, 0x200

    const-string v9, "160_160"

    if-eqz v7, :cond_5

    .line 6076
    invoke-static {v2}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v7

    .line 6077
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "g"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    if-eqz v5, :cond_4

    .line 6079
    invoke-virtual {v5, v8, v8}, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->overrideWidthAndHeight(II)V

    :cond_4
    move-object/from16 v17, v10

    :goto_0
    move-object/from16 v16, v7

    goto :goto_1

    :cond_5
    if-eqz v5, :cond_6

    .line 6082
    invoke-static {v2, v12}, Lorg/telegram/messenger/MessageObject;->isAnimatedStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;Z)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 6083
    invoke-virtual {v5, v8, v8}, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->overrideWidthAndHeight(II)V

    .line 6085
    :cond_6
    invoke-static {v2}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v7

    move-object/from16 v17, v9

    goto :goto_0

    .line 6088
    :goto_1
    iget-object v15, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-static {v6, v2}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v18

    iget-wide v6, v2, Lorg/telegram/tgnet/TLRPC$Document;->size:J

    const/16 v25, 0x0

    const/16 v27, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v26, v2

    move-object/from16 v22, v5

    move-wide/from16 v23, v6

    move-object/from16 v19, v9

    invoke-virtual/range {v15 .. v27}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    .line 6089
    iget-object v2, v4, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->drawable:Landroid/graphics/drawable/Drawable;

    instance-of v2, v2, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v2, :cond_a

    invoke-static/range {v26 .. v26}, Lorg/telegram/messenger/MessageObject;->isTextColorEmoji(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, v4, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->drawable:Landroid/graphics/drawable/Drawable;

    check-cast v2, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->canOverrideColor()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 6090
    :cond_7
    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-static/range {v26 .. v26}, Lorg/telegram/messenger/MessageObject;->isTextColorEmoji(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v5

    if-nez v5, :cond_9

    iget-object v5, v4, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->drawable:Landroid/graphics/drawable/Drawable;

    check-cast v5, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-static {v5}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->isDefaultStatusEmoji(Lorg/telegram/ui/Components/AnimatedEmojiDrawable;)Z

    move-result v5

    if-eqz v5, :cond_8

    goto :goto_2

    :cond_8
    invoke-static/range {p6 .. p6}, Lorg/telegram/ui/ActionBar/Theme;->getAnimatedEmojiColorFilter(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/graphics/ColorFilter;

    move-result-object v1

    goto :goto_3

    :cond_9
    :goto_2
    invoke-static {v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetpremiumStarColorFilter(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Landroid/graphics/ColorFilter;

    move-result-object v1

    :goto_3
    invoke-virtual {v2, v1}, Lorg/telegram/messenger/ImageReceiver;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 6094
    :cond_a
    iget-object v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->tempLocation:[I

    invoke-virtual {v4, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 6095
    iget-object v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->from:Landroid/graphics/Rect;

    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->tempLocation:[I

    aget v2, v2, v12

    invoke-virtual {v4}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    add-int/2addr v2, v5

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 6096
    iget-object v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->from:Landroid/graphics/Rect;

    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->tempLocation:[I

    aget v2, v2, v14

    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    add-int/2addr v2, v5

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 6097
    iget-object v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->from:Landroid/graphics/Rect;

    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->tempLocation:[I

    aget v2, v2, v12

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v2, v5

    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    sub-int/2addr v2, v5

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 6098
    iget-object v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->from:Landroid/graphics/Rect;

    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->tempLocation:[I

    aget v2, v2, v14

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v2, v5

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v2, v4

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 6099
    iget-object v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->from:Landroid/graphics/Rect;

    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->to:Landroid/graphics/Rect;

    iget v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->showT:F

    iget-object v5, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->current:Landroid/graphics/Rect;

    invoke-static {v1, v2, v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(Landroid/graphics/Rect;Landroid/graphics/Rect;FLandroid/graphics/Rect;)V

    .line 6101
    iget-object v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->tempLocation:[I

    invoke-virtual {v3, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 6102
    iget-object v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->tempLocation:[I

    aget v2, v1, v12

    iput v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->parentDialogX:I

    .line 6103
    aget v1, v1, v14

    iput v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->parentDialogY:I

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->clipBottom:I

    return-void
.end method

.method private animateMenuShow(ZLjava/lang/Runnable;)V
    .locals 4

    .line 6278
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->showMenuAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 6279
    iget-boolean v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->showingMenu:Z

    if-ne v1, p1, :cond_0

    return-void

    .line 6282
    :cond_0
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 6284
    :cond_1
    iput-boolean p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->showingMenu:Z

    .line 6286
    iget v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->showMenuT:F

    if-eqz p1, :cond_2

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    aput v1, v2, v0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->showMenuAnimator:Landroid/animation/ValueAnimator;

    .line 6287
    new-instance v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 6299
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->showMenuAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$3;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$3;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;ZLjava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-eqz p1, :cond_3

    .line 6320
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->showMenuAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x168

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 6321
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->showMenuAnimator:Landroid/animation/ValueAnimator;

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_1

    .line 6323
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->showMenuAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0xf0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 6324
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->showMenuAnimator:Landroid/animation/ValueAnimator;

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 6326
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->showMenuAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private animateShow(ZLjava/lang/Runnable;Ljava/lang/Runnable;Z)V
    .locals 10

    .line 6200
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->imageViewEmoji:Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    if-nez v0, :cond_0

    if-eqz p2, :cond_1

    .line 6202
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-void

    .line 6206
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->showAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_3

    .line 6207
    iget-boolean v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->showing:Z

    if-ne v1, p1, :cond_2

    :cond_1
    return-void

    .line 6210
    :cond_2
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 6212
    :cond_3
    iput-boolean p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->showing:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    .line 6214
    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->imageViewEmoji:Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    iput-boolean v0, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->notDraw:Z

    .line 6216
    :cond_4
    new-array v6, v0, [Z

    .line 6217
    iget v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->showT:F

    if-eqz p1, :cond_5

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v1, v3, v4

    aput v2, v3, v0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->showAnimator:Landroid/animation/ValueAnimator;

    .line 6218
    new-instance v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$$ExternalSyntheticLambda7;

    move-object v3, p0

    move v4, p1

    move v5, p4

    move-object v7, v6

    move-object v6, p3

    invoke-direct/range {v2 .. v7}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;ZZLjava/lang/Runnable;[Z)V

    move-object v9, v7

    move v7, v5

    move-object v5, v6

    move-object v6, v9

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 6240
    iget-object p1, v3, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->showAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$2;

    move-object v8, p2

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$2;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;ZLjava/lang/Runnable;[ZZLjava/lang/Runnable;)V

    invoke-virtual {p1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 6268
    iget-object p1, v3, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->showAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 p2, 0x1a4

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 6269
    iget-object p1, v3, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->showAnimator:Landroid/animation/ValueAnimator;

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 6270
    iget-object p1, v3, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->showAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private done(Ljava/lang/Integer;)V
    .locals 6

    .line 6109
    iget-boolean v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->done:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 6112
    iput-boolean v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->done:Z

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 6114
    iget-object v2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->from:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->getOutBounds(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    iput-boolean v2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->changeToScrimColor:Z

    if-eqz v2, :cond_2

    .line 6115
    iget-object v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->parentDialogView:Landroid/view/View;

    iget-object v4, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->tempLocation:[I

    invoke-virtual {v3, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 6116
    iget-object v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->from:Landroid/graphics/Rect;

    iget-object v4, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->tempLocation:[I

    aget v5, v4, v1

    aget v4, v4, v0

    invoke-virtual {v3, v5, v4}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_1

    .line 6118
    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->imageViewEmoji:Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    iget-object v4, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->tempLocation:[I

    invoke-virtual {v3, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 6119
    iget-object v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->from:Landroid/graphics/Rect;

    iget-object v4, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->tempLocation:[I

    aget v4, v4, v1

    iget-object v5, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->imageViewEmoji:Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 6120
    iget-object v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->from:Landroid/graphics/Rect;

    iget-object v4, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->tempLocation:[I

    aget v4, v4, v0

    iget-object v5, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->imageViewEmoji:Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 6121
    iget-object v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->from:Landroid/graphics/Rect;

    iget-object v4, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->tempLocation:[I

    aget v4, v4, v1

    iget-object v5, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->imageViewEmoji:Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->imageViewEmoji:Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 6122
    iget-object v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->from:Landroid/graphics/Rect;

    iget-object v4, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->tempLocation:[I

    aget v4, v4, v0

    iget-object v5, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->imageViewEmoji:Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->imageViewEmoji:Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    :goto_1
    if-eqz p1, :cond_3

    .line 6124
    iget-object v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->parentDialogDismiss:Ljava/lang/Runnable;

    if-eqz v3, :cond_3

    .line 6125
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 6127
    :cond_3
    new-instance v3, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$$ExternalSyntheticLambda8;

    invoke-direct {v3, p0, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;Ljava/lang/Integer;)V

    new-instance v4, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$$ExternalSyntheticLambda9;

    invoke-direct {v4, p0, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;Ljava/lang/Integer;)V

    xor-int/lit8 p1, v2, 0x1

    invoke-direct {p0, v1, v3, v4, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->animateShow(ZLjava/lang/Runnable;Ljava/lang/Runnable;Z)V

    const/4 p1, 0x0

    .line 6142
    invoke-direct {p0, v1, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->animateMenuShow(ZLjava/lang/Runnable;)V

    return-void
.end method

.method private getParentActivity()Landroid/app/Activity;
    .locals 2

    .line 6158
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 6159
    :goto_0
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_1

    .line 6160
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 6161
    check-cast v0, Landroid/app/Activity;

    return-object v0

    .line 6162
    :cond_0
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private synthetic lambda$animateMenuShow$11(Landroid/animation/ValueAnimator;)V
    .locals 5

    .line 6288
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->showMenuT:F

    .line 6290
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->menuView:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setBackScaleY(F)V

    .line 6291
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->menuView:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iget v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->showMenuT:F

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 6292
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->menuView:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemsCount()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 6294
    iget v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->showMenuT:F

    int-to-float v2, v0

    int-to-float v3, p1

    const/high16 v4, 0x40800000    # 4.0f

    invoke-static {v1, v2, v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->cascade(FFFF)F

    move-result v1

    .line 6295
    iget-object v2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->menuView:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v2, v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemAt(I)Landroid/view/View;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v1

    const/high16 v4, -0x3ec00000    # -12.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 6296
    iget-object v2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->menuView:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v2, v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setAlpha(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic lambda$animateShow$10(ZZLjava/lang/Runnable;[ZLandroid/animation/ValueAnimator;)V
    .locals 4

    .line 6219
    invoke-virtual {p5}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Float;

    invoke-virtual {p5}, Ljava/lang/Float;->floatValue()F

    move-result p5

    iput p5, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->showT:F

    .line 6220
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->from:Landroid/graphics/Rect;

    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->to:Landroid/graphics/Rect;

    iget-object v2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->current:Landroid/graphics/Rect;

    invoke-static {v0, v1, p5, v2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(Landroid/graphics/Rect;Landroid/graphics/Rect;FLandroid/graphics/Rect;)V

    .line 6221
    iget-object p5, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->contentView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;

    invoke-virtual {p5}, Landroid/view/View;->invalidate()V

    if-nez p1, :cond_0

    .line 6224
    iget-object p5, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->menuView:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    iget v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->showT:F

    invoke-virtual {p5, v0}, Landroid/view/View;->setAlpha(F)V

    .line 6227
    :cond_0
    iget p5, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->showT:F

    const v0, 0x3ccccccd    # 0.025f

    cmpg-float p5, p5, v0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-gez p5, :cond_2

    if-nez p1, :cond_2

    if-eqz p2, :cond_1

    .line 6229
    iget-object p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->imageViewEmoji:Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    iput-boolean v1, p2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->notDraw:Z

    .line 6230
    iget-object p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object p2, p2, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {p2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->invalidate()V

    .line 6232
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p2

    sget p5, Lorg/telegram/messenger/NotificationCenter;->startAllHeavyOperations:I

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    aput-object v2, v3, v1

    invoke-virtual {p2, p5, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 6235
    :cond_2
    iget p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->showT:F

    const/high16 p5, 0x3f000000    # 0.5f

    cmpg-float p2, p2, p5

    if-gez p2, :cond_3

    if-nez p1, :cond_3

    if-eqz p3, :cond_3

    aget-boolean p1, p4, v1

    if-nez p1, :cond_3

    .line 6236
    aput-boolean v0, p4, v1

    .line 6237
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    :cond_3
    return-void
.end method

.method private synthetic lambda$done$8(Ljava/lang/Integer;)V
    .locals 0

    .line 6128
    invoke-virtual {p0, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->onEnd(Ljava/lang/Integer;)V

    .line 6130
    :try_start_0
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private synthetic lambda$done$9(Ljava/lang/Integer;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 6137
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/exteragram/messenger/utils/system/VibratorUtils;->getType(I)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6139
    :catch_0
    invoke-virtual {p0, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->onEndPartly(Ljava/lang/Integer;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 4

    .line 5999
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0xe10

    add-long/2addr v0, v2

    long-to-int p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->done(Ljava/lang/Integer;)V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)V
    .locals 4

    .line 6001
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x1c20

    add-long/2addr v0, v2

    long-to-int p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->done(Ljava/lang/Integer;)V

    return-void
.end method

.method private synthetic lambda$new$2(Landroid/view/View;)V
    .locals 4

    .line 6003
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x7080

    add-long/2addr v0, v2

    long-to-int p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->done(Ljava/lang/Integer;)V

    return-void
.end method

.method private synthetic lambda$new$3(Landroid/view/View;)V
    .locals 4

    .line 6005
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/32 v2, 0x2a300

    add-long/2addr v0, v2

    long-to-int p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->done(Ljava/lang/Integer;)V

    return-void
.end method

.method private synthetic lambda$new$4([ZI)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 6013
    aput-boolean v1, p1, v0

    .line 6014
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->done(Ljava/lang/Integer;)V

    return-void
.end method

.method private synthetic lambda$new$5([ZLandroid/content/DialogInterface;)V
    .locals 0

    const/4 p2, 0x0

    .line 6017
    aget-boolean p1, p1, p2

    const/4 p2, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 6018
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->animateMenuShow(ZLjava/lang/Runnable;)V

    .line 6020
    :cond_0
    iput-object p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->dateBottomSheet:Lorg/telegram/ui/ActionBar/BottomSheet;

    return-void
.end method

.method private synthetic lambda$new$6(Landroid/content/Context;Landroid/view/View;)V
    .locals 4

    .line 6008
    iget-object p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->dateBottomSheet:Lorg/telegram/ui/ActionBar/BottomSheet;

    if-eqz p2, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x1

    .line 6011
    new-array p2, p2, [Z

    .line 6012
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    new-instance v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0, p2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;[Z)V

    invoke-static {p1, v0, v1, v2}, Lorg/telegram/ui/Components/AlertsCreator;->createStatusUntilDatePickerDialog(Landroid/content/Context;JLorg/telegram/ui/Components/AlertsCreator$StatusUntilDatePickerDelegate;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    move-result-object p1

    .line 6016
    new-instance v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0, p2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;[Z)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setOnPreDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 6022
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->show()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->dateBottomSheet:Lorg/telegram/ui/ActionBar/BottomSheet;

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 6023
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->animateMenuShow(ZLjava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$new$7(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    .line 6043
    iput-object p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->lastInsets:Landroid/view/WindowInsets;

    .line 6044
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 6045
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    if-lt p1, v0, :cond_0

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Impl30$$ExternalSyntheticApiModelOutline0;->m()Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p2}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
.end method

.method private prepareBlurBitmap()V
    .locals 7

    .line 6168
    invoke-direct {p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 6172
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 6173
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x41400000    # 12.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    .line 6174
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    float-to-int v3, v4

    .line 6175
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 6176
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const v6, 0x3daaaaab

    .line 6177
    invoke-virtual {v5, v6, v6}, Landroid/graphics/Canvas;->scale(FF)V

    .line 6178
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 6179
    invoke-virtual {v1, v5}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 6180
    instance-of v1, v0, Lorg/telegram/ui/LaunchActivity;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/LaunchActivity;->getActionBarLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v1

    invoke-interface {v1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getVisibleDialog()Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 6181
    invoke-virtual {v0}, Lorg/telegram/ui/LaunchActivity;->getActionBarLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getVisibleDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 6183
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->parentDialogView:Landroid/view/View;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 6184
    iget-object v6, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->tempLocation:[I

    invoke-virtual {v0, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 6185
    invoke-virtual {v5}, Landroid/graphics/Canvas;->save()I

    .line 6186
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->tempLocation:[I

    const/4 v6, 0x0

    aget v6, v0, v6

    int-to-float v6, v6

    aget v0, v0, v1

    int-to-float v0, v0

    invoke-virtual {v5, v6, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 6187
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->parentDialogView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 6188
    invoke-virtual {v5}, Landroid/graphics/Canvas;->restore()V

    .line 6190
    :cond_2
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    div-int/lit16 v0, v0, 0xb4

    const/16 v2, 0xa

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v4, v0}, Lorg/telegram/messenger/Utilities;->stackBlurBitmap(Landroid/graphics/Bitmap;I)V

    .line 6191
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->blurBitmapPaint:Landroid/graphics/Paint;

    .line 6192
    iput-object v4, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->blurBitmap:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 6351
    iget-boolean v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->dismissed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 6354
    invoke-direct {p0, v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->done(Ljava/lang/Integer;)V

    const/4 v0, 0x1

    .line 6355
    iput-boolean v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->dismissed:Z

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 6331
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6332
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    .line 6333
    invoke-virtual {p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->dismiss()V

    const/4 p1, 0x0

    return p1

    :cond_0
    return v0
.end method

.method protected abstract getOutBounds(Landroid/graphics/Rect;)Z
.end method

.method protected abstract onEnd(Ljava/lang/Integer;)V
.end method

.method protected abstract onEndPartly(Ljava/lang/Integer;)V
.end method

.method public show()V
    .locals 6

    .line 6341
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 6342
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->stopAllHeavyOperations:I

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-virtual {v0, v1, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 6343
    invoke-direct {p0, v3, v0, v0, v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->animateShow(ZLjava/lang/Runnable;Ljava/lang/Runnable;Z)V

    .line 6344
    invoke-direct {p0, v3, v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->animateMenuShow(ZLjava/lang/Runnable;)V

    return-void
.end method
