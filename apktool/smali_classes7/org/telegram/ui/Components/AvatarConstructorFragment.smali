.class public Lorg/telegram/ui/Components/AvatarConstructorFragment;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/AvatarConstructorFragment$ContainerLayout;,
        Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;,
        Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundSelectView;,
        Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;,
        Lorg/telegram/ui/Components/AvatarConstructorFragment$Delegate;,
        Lorg/telegram/ui/Components/AvatarConstructorFragment$GradientSelectorView;
    }
.end annotation


# static fields
.field public static final defaultColors:[[I

.field public static final premiumColors:[[I


# instance fields
.field actionBarPaint:Landroid/graphics/Paint;

.field avatarClickableArea:Lorg/telegram/ui/Components/CanvasButton;

.field final avatarFor:Lorg/telegram/ui/Components/ImageUpdater$AvatarFor;

.field private backgroundSelectView:Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundSelectView;

.field private bottomBulletinContainer:Landroid/widget/FrameLayout;

.field private bottomSheet:Lorg/telegram/ui/ActionBar/BottomSheet;

.field private button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

.field private buttonIsLocked:Z

.field private buttonText:Ljava/lang/CharSequence;

.field private chooseBackgroundHint:Landroid/widget/TextView;

.field private chooseEmojiHint:Landroid/widget/TextView;

.field collapsedHeight:I

.field colorPickerGradient:Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;

.field colorPickerInAnimatoin:Z

.field colorPickerPreviewView:Landroid/view/View;

.field delegate:Lorg/telegram/ui/Components/AvatarConstructorFragment$Delegate;

.field drawForBlur:Z

.field expandAnimator:Landroid/animation/ValueAnimator;

.field expandWithKeyboard:Z

.field expandedHeight:I

.field public finishOnDone:Z

.field forGroup:Z

.field private forUser:Z

.field private gradientBackgroundItemWidth:I

.field imageUpdater:Lorg/telegram/ui/Components/ImageUpdater;

.field isLandscapeMode:Z

.field isLightInternal:Z

.field keyboardVisibilityAnimator:Landroid/animation/ValueAnimator;

.field keyboardVisible:Z

.field keyboardVisibleProgress:F

.field lightProgressAnimator:Landroid/animation/ValueAnimator;

.field linearLayout:Landroid/widget/LinearLayout;

.field private lockedButtonText:Ljava/lang/CharSequence;

.field protected overlayActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

.field previewView:Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;

.field progressToExpand:F

.field progressToLightStatusBar:F

.field private selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

.field private setPhotoItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field wasChanged:Z


# direct methods
.method public static synthetic $r8$lambda$03O1myZznNkrRmTFbjKjHyp4siE(Lorg/telegram/ui/Components/AvatarConstructorFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/AvatarConstructorFragment;->lambda$createView$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$5a464XYkxCH0lu2wx1i_MVEnh-c(Lorg/telegram/ui/Components/AvatarConstructorFragment;IIZ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/AvatarConstructorFragment;->lambda$showColorPicker$5(IIZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$6kYdyFotoCiobM-Rz79epqRyYKM(Lorg/telegram/ui/Components/AvatarConstructorFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/AvatarConstructorFragment;->lambda$onDonePressed$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$GhftkL6meHv0dUp3vRJB1Ou0Dig(Lorg/telegram/ui/Components/AvatarConstructorFragment;ZLandroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/AvatarConstructorFragment;->lambda$setExpanded$4(ZLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HvKJIgv55IxCfnJfMxobo2S55XY(Lorg/telegram/ui/Components/AvatarConstructorFragment;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/AvatarConstructorFragment;->lambda$discardEditor$2(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$QiuU2N2VMKkxo-UWydCcl4FKA9M(Lorg/telegram/ui/Components/AvatarConstructorFragment;[ZLandroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/AvatarConstructorFragment;->lambda$showColorPicker$6([ZLandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VfaYcCBbtphcdsjDnN-bt99Phh0(Lorg/telegram/ui/Components/AvatarConstructorFragment;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AvatarConstructorFragment;->lambda$createView$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YDBYf1zv54hfAPsmz2duHTt59ig(Lorg/telegram/ui/Components/AvatarConstructorFragment;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/AvatarConstructorFragment;->lambda$onBackPressed$8(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$rdrrIORwotlzU17zX04Ivp2WHeE(Lorg/telegram/ui/Components/AvatarConstructorFragment;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AvatarConstructorFragment;->lambda$isLightStatusBar$7(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetbackgroundSelectView(Lorg/telegram/ui/Components/AvatarConstructorFragment;)Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundSelectView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->backgroundSelectView:Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundSelectView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetbutton(Lorg/telegram/ui/Components/AvatarConstructorFragment;)Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetchooseBackgroundHint(Lorg/telegram/ui/Components/AvatarConstructorFragment;)Landroid/widget/TextView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->chooseBackgroundHint:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetchooseEmojiHint(Lorg/telegram/ui/Components/AvatarConstructorFragment;)Landroid/widget/TextView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->chooseEmojiHint:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetgradientBackgroundItemWidth(Lorg/telegram/ui/Components/AvatarConstructorFragment;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->gradientBackgroundItemWidth:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetselectAnimatedEmojiDialog(Lorg/telegram/ui/Components/AvatarConstructorFragment;)Lorg/telegram/ui/SelectAnimatedEmojiDialog;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputbottomSheet(Lorg/telegram/ui/Components/AvatarConstructorFragment;Lorg/telegram/ui/ActionBar/BottomSheet;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->bottomSheet:Lorg/telegram/ui/ActionBar/BottomSheet;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputgradientBackgroundItemWidth(Lorg/telegram/ui/Components/AvatarConstructorFragment;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->gradientBackgroundItemWidth:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mcreateKeyboardVisibleAnimator(Lorg/telegram/ui/Components/AvatarConstructorFragment;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AvatarConstructorFragment;->createKeyboardVisibleAnimator(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdiscardEditor(Lorg/telegram/ui/Components/AvatarConstructorFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/AvatarConstructorFragment;->discardEditor()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monDonePressed(Lorg/telegram/ui/Components/AvatarConstructorFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/AvatarConstructorFragment;->onDonePressed()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetExpanded(Lorg/telegram/ui/Components/AvatarConstructorFragment;ZZZ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/AvatarConstructorFragment;->setExpanded(ZZZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetPreview(Lorg/telegram/ui/Components/AvatarConstructorFragment;ZJLorg/telegram/tgnet/TLRPC$Document;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/AvatarConstructorFragment;->setPreview(ZJLorg/telegram/tgnet/TLRPC$Document;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetProgressToExpand(Lorg/telegram/ui/Components/AvatarConstructorFragment;FZ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/AvatarConstructorFragment;->setProgressToExpand(FZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowColorPicker(Lorg/telegram/ui/Components/AvatarConstructorFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/AvatarConstructorFragment;->showColorPicker()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateButton(Lorg/telegram/ui/Components/AvatarConstructorFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/AvatarConstructorFragment;->updateButton()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 12

    const/4 v0, 0x7

    .line 112
    new-array v1, v0, [[I

    const v2, -0x9f2945

    const v3, -0xaf2d27

    const v4, -0xac7825

    const v5, -0xb06f25

    filled-new-array {v4, v5, v2, v3}, [I

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, -0x9c296b

    const v4, -0xa51944

    const v5, -0xab5a1d

    const v6, -0xb75239

    filled-new-array {v5, v6, v2, v4}, [I

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const v2, -0x3333ae

    const v5, -0x4f38aa

    const v6, -0xc5427a

    const v7, -0xaa42b6

    filled-new-array {v6, v7, v2, v5}, [I

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const v2, -0x219266

    const v6, -0x268b13

    const v7, -0x7c9315

    const v8, -0x509718

    filled-new-array {v7, v8, v2, v6}, [I

    move-result-object v2

    const/4 v6, 0x3

    aput-object v2, v1, v6

    const v2, -0x1468bc

    const v7, -0xd819c

    const v8, -0x13a45f

    const v9, -0x149a89

    filled-new-array {v8, v9, v2, v7}, [I

    move-result-object v2

    const/4 v7, 0x4

    aput-object v2, v1, v7

    const v2, -0xb55b7

    const v8, -0xf7ab0

    const v9, -0x15a789

    const v10, -0x1d8db3

    filled-new-array {v9, v10, v2, v8}, [I

    move-result-object v2

    const/4 v8, 0x5

    aput-object v2, v1, v8

    const v2, -0xf3dbf

    const v9, -0xf4fb6

    const v10, -0xf87ac

    const v11, -0x1281c7

    filled-new-array {v10, v11, v2, v9}, [I

    move-result-object v2

    const/4 v9, 0x6

    aput-object v2, v1, v9

    sput-object v1, Lorg/telegram/ui/Components/AvatarConstructorFragment;->defaultColors:[[I

    const/16 v1, 0x1e

    .line 121
    new-array v1, v1, [[I

    const v2, -0x6b5c50

    const v10, -0x938479

    filled-new-array {v2, v10}, [I

    move-result-object v2

    aput-object v2, v1, v3

    const v2, -0x145ea5

    const v3, -0x5e98d0

    filled-new-array {v2, v3}, [I

    move-result-object v2

    aput-object v2, v1, v4

    const v2, -0x1746b8

    const v3, -0x4783d0

    filled-new-array {v2, v3}, [I

    move-result-object v2

    aput-object v2, v1, v5

    const v2, -0xa9a29f

    const v3, -0xc4bcb9

    filled-new-array {v2, v3}, [I

    move-result-object v2

    aput-object v2, v1, v6

    const v2, -0xe4e4e5

    const/high16 v3, -0x1000000

    filled-new-array {v2, v3}, [I

    move-result-object v2

    aput-object v2, v1, v7

    const v2, -0xa1906f

    const v3, -0xbead8b

    filled-new-array {v2, v3}, [I

    move-result-object v2

    aput-object v2, v1, v8

    const v2, -0x518d1d

    const v3, -0x77ab4b

    filled-new-array {v2, v3}, [I

    move-result-object v2

    aput-object v2, v1, v9

    const v2, -0x508a44

    const v3, -0x76ae6a

    filled-new-array {v2, v3}, [I

    move-result-object v2

    aput-object v2, v1, v0

    const v0, -0x3d9642

    const v2, -0x74bc7c

    filled-new-array {v0, v2}, [I

    move-result-object v0

    const/16 v2, 0x8

    aput-object v0, v1, v2

    const v0, -0x258958

    const v2, -0x51a76f

    filled-new-array {v0, v2}, [I

    move-result-object v0

    const/16 v2, 0x9

    aput-object v0, v1, v2

    const v0, -0x199b8d

    const v2, -0x58baa7

    filled-new-array {v0, v2}, [I

    move-result-object v0

    const/16 v2, 0xa

    aput-object v0, v1, v2

    const v0, -0x93630c

    const v2, -0xa39514

    filled-new-array {v0, v2}, [I

    move-result-object v0

    const/16 v2, 0xb

    aput-object v0, v1, v2

    const v0, -0xb9632d

    const v2, -0xd18758

    filled-new-array {v0, v2}, [I

    move-result-object v0

    const/16 v2, 0xc

    aput-object v0, v1, v2

    const v0, -0xbc7347

    const v2, -0xd29d7d

    filled-new-array {v0, v2}, [I

    move-result-object v0

    const/16 v2, 0xd

    aput-object v0, v1, v2

    const v0, -0x994d86

    const v2, -0xcc8793

    filled-new-array {v0, v2}, [I

    move-result-object v3

    const/16 v4, 0xe

    aput-object v3, v1, v4

    const v3, -0x7e494e

    const v4, -0xb4656a

    filled-new-array {v3, v4}, [I

    move-result-object v3

    const/16 v4, 0xf

    aput-object v3, v1, v4

    const v3, -0xa4313b

    const v4, -0xc96d72

    filled-new-array {v3, v4}, [I

    move-result-object v3

    const/16 v4, 0x10

    aput-object v3, v1, v4

    const v3, -0xa02991

    const v4, -0xce608a

    filled-new-array {v3, v4}, [I

    move-result-object v3

    const/16 v4, 0x11

    aput-object v3, v1, v4

    const v3, -0x1975c4

    const v4, -0x2bac6d

    filled-new-array {v3, v4}, [I

    move-result-object v3

    const/16 v4, 0x12

    aput-object v3, v1, v4

    const v3, -0x941d0e

    const v4, -0x998a09

    filled-new-array {v3, v4}, [I

    move-result-object v3

    const/16 v4, 0x13

    aput-object v3, v1, v4

    const v3, -0x3a920c

    const v4, -0x9f8c0c

    filled-new-array {v3, v4}, [I

    move-result-object v3

    const/16 v4, 0x14

    aput-object v3, v1, v4

    const v3, -0x1436d1

    const v4, -0xab47b8

    filled-new-array {v3, v4}, [I

    move-result-object v3

    const/16 v4, 0x15

    aput-object v3, v1, v4

    filled-new-array {v0, v2}, [I

    move-result-object v0

    const/16 v2, 0x16

    aput-object v0, v1, v2

    const v0, -0x354aa0

    const v2, -0x737fc4

    filled-new-array {v0, v2}, [I

    move-result-object v0

    const/16 v2, 0x17

    aput-object v0, v1, v2

    const v0, -0x524f90

    const v2, -0x9482ac

    filled-new-array {v0, v2}, [I

    move-result-object v0

    const/16 v2, 0x18

    aput-object v0, v1, v2

    const v0, -0x6b6b79

    const v2, -0x8f8f9e

    filled-new-array {v0, v2}, [I

    move-result-object v0

    const/16 v2, 0x19

    aput-object v0, v1, v2

    const v0, -0x4f6067

    const v2, -0x70818e

    filled-new-array {v0, v2}, [I

    move-result-object v0

    const/16 v2, 0x1a

    aput-object v0, v1, v2

    const v0, -0x387ca2

    const v2, -0x619cbb

    filled-new-array {v0, v2}, [I

    move-result-object v0

    const/16 v2, 0x1b

    aput-object v0, v1, v2

    const v0, -0x438faf

    const v2, -0x68aab9

    filled-new-array {v0, v2}, [I

    move-result-object v0

    const/16 v2, 0x1c

    aput-object v0, v1, v2

    const v0, -0x7099ab

    const v2, -0x97bbc1

    filled-new-array {v0, v2}, [I

    move-result-object v0

    const/16 v2, 0x1d

    aput-object v0, v1, v2

    sput-object v1, Lorg/telegram/ui/Components/AvatarConstructorFragment;->premiumColors:[[I

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/ImageUpdater;Lorg/telegram/ui/Components/ImageUpdater$AvatarFor;)V
    .locals 1

    .line 162
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 109
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->actionBarPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    .line 153
    iput-boolean v0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->finishOnDone:Z

    const/4 v0, 0x0

    .line 1461
    iput-boolean v0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->isLightInternal:Z

    const/4 v0, 0x0

    .line 1462
    iput v0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->progressToLightStatusBar:F

    .line 163
    iput-object p1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->imageUpdater:Lorg/telegram/ui/Components/ImageUpdater;

    .line 164
    iput-object p2, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->avatarFor:Lorg/telegram/ui/Components/ImageUpdater$AvatarFor;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/AvatarConstructorFragment;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 75
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/AvatarConstructorFragment;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 75
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/AvatarConstructorFragment;)I
    .locals 0

    .line 75
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/AvatarConstructorFragment;)I
    .locals 0

    .line 75
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/AvatarConstructorFragment;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 75
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/AvatarConstructorFragment;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 75
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/AvatarConstructorFragment;)I
    .locals 0

    .line 75
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/AvatarConstructorFragment;)I
    .locals 0

    .line 75
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method private createKeyboardVisibleAnimator(Z)V
    .locals 5

    .line 596
    iget-boolean v0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->isLandscapeMode:Z

    if-eqz v0, :cond_0

    return-void

    .line 599
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->keyboardVisibleProgress:F

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v0, v3, v4

    const/4 v0, 0x1

    aput v2, v3, v0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->keyboardVisibilityAnimator:Landroid/animation/ValueAnimator;

    .line 600
    iget v2, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->expandedHeight:I

    iget v3, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->collapsedHeight:I

    sub-int/2addr v2, v3

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->progressToExpand:F

    mul-float/2addr v2, v3

    if-eqz p1, :cond_2

    .line 603
    iget-object v2, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->previewView:Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->setExpanded(Z)V

    .line 604
    iget-object v2, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    goto :goto_1

    .line 608
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    .line 610
    :goto_1
    iget-boolean v3, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->expandWithKeyboard:Z

    if-eqz v3, :cond_3

    if-nez p1, :cond_3

    .line 611
    iget-object v3, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->previewView:Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;

    invoke-virtual {v3, v0}, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->setExpanded(Z)V

    goto :goto_2

    .line 613
    :cond_3
    iput-boolean v4, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->expandWithKeyboard:Z

    .line 615
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->keyboardVisibilityAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lorg/telegram/ui/Components/AvatarConstructorFragment$8;

    invoke-direct {v3, p0, v2, v1, p1}, Lorg/telegram/ui/Components/AvatarConstructorFragment$8;-><init>(Lorg/telegram/ui/Components/AvatarConstructorFragment;FFZ)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 630
    iget-object p1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->keyboardVisibilityAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/Components/AvatarConstructorFragment$9;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/AvatarConstructorFragment$9;-><init>(Lorg/telegram/ui/Components/AvatarConstructorFragment;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 637
    iget-object p1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->keyboardVisibilityAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0xfa

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 638
    iget-object p1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->keyboardVisibilityAnimator:Landroid/animation/ValueAnimator;

    sget-object v0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->keyboardInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 639
    iget-object p1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->keyboardVisibilityAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private discardEditor()V
    .locals 3

    .line 578
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 581
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->wasChanged:Z

    if-eqz v0, :cond_1

    .line 582
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 583
    sget v1, Lorg/telegram/messenger/R$string;->PhotoEditorDiscardAlert:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 584
    sget v1, Lorg/telegram/messenger/R$string;->DiscardChanges:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 585
    sget v1, Lorg/telegram/messenger/R$string;->PassportDiscard:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/AvatarConstructorFragment$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/AvatarConstructorFragment$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/AvatarConstructorFragment;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 586
    sget v1, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 587
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    .line 588
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 589
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->redPositive()V

    return-void

    .line 591
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void
.end method

.method private isLocked()Z
    .locals 3

    .line 538
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 539
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->previewView:Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;

    iget-object v2, v0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->backgroundGradient:Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;

    if-eqz v2, :cond_1

    iget-boolean v2, v2, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;->premium:Z

    if-nez v2, :cond_2

    :cond_1
    iget-boolean v2, v0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->isCustomGradient:Z

    if-eqz v2, :cond_3

    :cond_2
    const/4 v0, 0x1

    return v0

    .line 542
    :cond_3
    iget-boolean v0, v0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->freeEmoji:Z

    return v1
.end method

.method private synthetic lambda$createView$0(Landroid/view/View;)V
    .locals 0

    .line 518
    invoke-direct {p0}, Lorg/telegram/ui/Components/AvatarConstructorFragment;->onDonePressed()V

    return-void
.end method

.method private synthetic lambda$createView$1()V
    .locals 0

    .line 531
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AvatarConstructorFragment;->onPreviewClick()V

    return-void
.end method

.method private synthetic lambda$discardEditor$2(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 585
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void
.end method

.method private synthetic lambda$isLightStatusBar$7(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1485
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AvatarConstructorFragment;->setProgressToLightStatusBar(F)V

    return-void
.end method

.method private synthetic lambda$onBackPressed$8(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 1609
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void
.end method

.method private synthetic lambda$onDonePressed$3()V
    .locals 2

    .line 648
    new-instance v0, Lorg/telegram/ui/PremiumPreviewFragment;

    const-string v1, "avatar"

    invoke-direct {v0, v1}, Lorg/telegram/ui/PremiumPreviewFragment;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$setExpanded$4(ZLandroid/animation/ValueAnimator;)V
    .locals 1

    .line 676
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    const/4 v0, 0x0

    .line 677
    invoke-direct {p0, p2, v0}, Lorg/telegram/ui/Components/AvatarConstructorFragment;->setProgressToExpand(FZ)V

    if-eqz p1, :cond_0

    .line 679
    iget-object p1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->previewView:Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;

    iput p2, p1, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->overrideExpandProgress:F

    .line 680
    invoke-virtual {p1}, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->invalidate()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$showColorPicker$5(IIZ)V
    .locals 1

    const/4 p3, 0x1

    if-eqz p2, :cond_9

    if-eq p2, p3, :cond_6

    const/4 v0, 0x2

    if-eq p2, v0, :cond_3

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    goto/16 :goto_0

    .line 1218
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->colorPickerGradient:Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;

    iget v0, p2, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;->color4:I

    if-eq v0, p1, :cond_2

    if-eqz v0, :cond_1

    if-nez p1, :cond_2

    .line 1219
    :cond_1
    invoke-virtual {p2}, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;->copy()Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->colorPickerGradient:Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;

    .line 1220
    iget-object v0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->previewView:Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;

    invoke-virtual {v0, p2, p3}, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->setGradient(Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;Z)V

    .line 1221
    invoke-direct {p0}, Lorg/telegram/ui/Components/AvatarConstructorFragment;->updateButton()V

    .line 1223
    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->colorPickerGradient:Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;

    iput p1, p2, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;->color4:I

    goto :goto_0

    .line 1210
    :cond_3
    iget-object p2, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->colorPickerGradient:Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;

    iget v0, p2, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;->color3:I

    if-eq v0, p1, :cond_5

    if-eqz v0, :cond_4

    if-nez p1, :cond_5

    .line 1211
    :cond_4
    invoke-virtual {p2}, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;->copy()Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->colorPickerGradient:Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;

    .line 1212
    iget-object v0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->previewView:Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;

    invoke-virtual {v0, p2, p3}, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->setGradient(Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;Z)V

    .line 1213
    invoke-direct {p0}, Lorg/telegram/ui/Components/AvatarConstructorFragment;->updateButton()V

    .line 1215
    :cond_5
    iget-object p2, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->colorPickerGradient:Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;

    iput p1, p2, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;->color3:I

    goto :goto_0

    .line 1202
    :cond_6
    iget-object p2, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->colorPickerGradient:Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;

    iget v0, p2, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;->color2:I

    if-eq v0, p1, :cond_8

    if-eqz v0, :cond_7

    if-nez p1, :cond_8

    .line 1203
    :cond_7
    invoke-virtual {p2}, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;->copy()Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->colorPickerGradient:Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;

    .line 1204
    iget-object v0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->previewView:Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;

    invoke-virtual {v0, p2, p3}, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->setGradient(Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;Z)V

    .line 1205
    invoke-direct {p0}, Lorg/telegram/ui/Components/AvatarConstructorFragment;->updateButton()V

    .line 1207
    :cond_8
    iget-object p2, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->colorPickerGradient:Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;

    iput p1, p2, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;->color2:I

    goto :goto_0

    .line 1194
    :cond_9
    iget-object p2, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->colorPickerGradient:Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;

    iget v0, p2, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;->color1:I

    if-eq v0, p1, :cond_b

    if-eqz v0, :cond_a

    if-nez p1, :cond_b

    .line 1195
    :cond_a
    invoke-virtual {p2}, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;->copy()Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->colorPickerGradient:Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;

    .line 1196
    iget-object v0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->previewView:Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;

    invoke-virtual {v0, p2, p3}, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->setGradient(Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;Z)V

    .line 1197
    invoke-direct {p0}, Lorg/telegram/ui/Components/AvatarConstructorFragment;->updateButton()V

    .line 1199
    :cond_b
    iget-object p2, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->colorPickerGradient:Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;

    iput p1, p2, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;->color1:I

    .line 1227
    :goto_0
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->needCheckSystemBarColors:I

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1229
    iget-object p1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->previewView:Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->invalidate()V

    return-void
.end method

.method private synthetic lambda$showColorPicker$6([ZLandroid/view/View;)V
    .locals 1

    const/4 p2, 0x0

    const/4 v0, 0x1

    .line 1267
    aput-boolean v0, p1, p2

    .line 1268
    iget-object p1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->backgroundSelectView:Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundSelectView;

    iget-object p2, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->colorPickerGradient:Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundSelectView;->selectGradient(Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;)V

    .line 1269
    iget-object p1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->bottomSheet:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method private onDonePressed()V
    .locals 7

    .line 643
    iget-object v0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->previewView:Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->previewView:Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->hasImageLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 646
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/AvatarConstructorFragment;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 647
    iget-object v0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->bottomBulletinContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$raw;->star_premium_2:I

    sget v2, Lorg/telegram/messenger/R$string;->PremiumAvatarToast:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Components/AvatarConstructorFragment$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/AvatarConstructorFragment$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/AvatarConstructorFragment;)V

    invoke-static {v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->premiumText(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    .line 649
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void

    .line 652
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->delegate:Lorg/telegram/ui/Components/AvatarConstructorFragment$Delegate;

    if-eqz v1, :cond_2

    .line 653
    iget-object v6, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->previewView:Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;

    iget-object v2, v6, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->backgroundGradient:Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;

    iget-wide v3, v6, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->documentId:J

    iget-object v5, v6, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-interface/range {v1 .. v6}, Lorg/telegram/ui/Components/AvatarConstructorFragment$Delegate;->onDone(Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;JLorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;)V

    .line 655
    :cond_2
    iget-boolean v0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->finishOnDone:Z

    if-eqz v0, :cond_3

    .line 656
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    :cond_3
    :goto_0
    return-void
.end method

.method private setExpanded(ZZZ)V
    .locals 4

    .line 662
    iget-boolean v0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->isLandscapeMode:Z

    if-eqz v0, :cond_0

    return-void

    .line 667
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AvatarConstructorFragment;->cancelExpandAnimator()V

    .line 668
    iget v0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->progressToExpand:F

    if-eqz p1, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
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

    iput-object v0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->expandAnimator:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_2

    .line 670
    iget-object v0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->previewView:Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;

    iget v1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->progressToExpand:F

    iput v1, v0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->overrideExpandProgress:F

    .line 672
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->needCheckSystemBarColors:I

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 675
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->expandAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Components/AvatarConstructorFragment$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p2}, Lorg/telegram/ui/Components/AvatarConstructorFragment$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/AvatarConstructorFragment;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 683
    iget-object v0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->expandAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Components/AvatarConstructorFragment$10;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/ui/Components/AvatarConstructorFragment$10;-><init>(Lorg/telegram/ui/Components/AvatarConstructorFragment;ZZ)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-eqz p3, :cond_3

    .line 696
    iget-object p1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->expandAnimator:Landroid/animation/ValueAnimator;

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 697
    iget-object p1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->expandAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 p2, 0x15e

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 698
    iget-object p1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->expandAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 p2, 0x96

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    goto :goto_1

    .line 700
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->expandAnimator:Landroid/animation/ValueAnimator;

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 701
    iget-object p1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->expandAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 p2, 0xfa

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 703
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->expandAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private setPreview(ZJLorg/telegram/tgnet/TLRPC$Document;)V
    .locals 13

    move-wide v0, p2

    move-object/from16 v9, p4

    .line 556
    iget-object v2, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->previewView:Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;

    iput-wide v0, v2, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->documentId:J

    .line 557
    iput-object v9, v2, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 558
    iput-boolean p1, v2, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->freeEmoji:Z

    const-wide/16 v11, 0x0

    cmp-long p1, v0, v11

    if-nez p1, :cond_0

    .line 560
    iget-object p1, v2, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/BackupImageView;->setAnimatedEmojiDrawable(Lorg/telegram/ui/Components/AnimatedEmojiDrawable;)V

    .line 561
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayIcon:I

    const v0, 0x3e4ccccd    # 0.2f

    invoke-static {v9, p1, v0}, Lorg/telegram/messenger/DocumentObject;->getSvgThumb(Lorg/telegram/tgnet/TLRPC$Document;IF)Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    move-result-object v5

    .line 562
    iget-object p1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->previewView:Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;

    iget-object p1, p1, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-static {v9}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v1

    const-string v8, "tgs"

    const/4 v10, 0x0

    const-string v2, "100_100"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v6, 0x0

    invoke-virtual/range {v0 .. v10}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    goto :goto_0

    .line 564
    :cond_0
    iget-object p1, v2, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    new-instance v2, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    const/16 v3, 0xe

    iget v4, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-direct {v2, v3, v4, v0, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;-><init>(IIJ)V

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/BackupImageView;->setAnimatedEmojiDrawable(Lorg/telegram/ui/Components/AnimatedEmojiDrawable;)V

    .line 565
    iget-object p1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->previewView:Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;

    iget-object p1, p1, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->clearImage()V

    .line 567
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->previewView:Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->previewView:Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->getAnimation()Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 568
    iget-object p1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->previewView:Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->getAnimation()Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-result-object p1

    invoke-virtual {p1, v11, v12, v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->seekTo(JZ)V

    .line 570
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->previewView:Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->previewView:Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 571
    iget-object p1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->previewView:Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZZ)V

    .line 573
    :cond_2
    iput-boolean v0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->wasChanged:Z

    .line 574
    invoke-direct {p0}, Lorg/telegram/ui/Components/AvatarConstructorFragment;->updateButton()V

    return-void
.end method

.method private setProgressToExpand(FZ)V
    .locals 3

    .line 716
    iput p1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->progressToExpand:F

    .line 718
    iget v0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->expandedHeight:I

    iget v1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->collapsedHeight:I

    sub-int/2addr v0, v1

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, p1

    .line 719
    iget v1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->keyboardVisibleProgress:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 720
    iget-object v1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 721
    iget-object v1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 723
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->previewView:Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;

    iget v1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->expandedHeight:I

    iget v2, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->collapsedHeight:I

    sub-int/2addr v1, v2

    neg-int v1, v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 724
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    if-eqz p2, :cond_2

    .line 726
    iget-object p2, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->previewView:Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;

    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->setExpanded(Z)V

    :cond_2
    return-void
.end method

.method private setProgressToLightStatusBar(F)V
    .locals 3

    .line 1497
    iget v0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->progressToLightStatusBar:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 1498
    iput p1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->progressToLightStatusBar:F

    const/high16 v0, -0x1000000

    const/4 v1, -0x1

    .line 1499
    invoke-static {v0, v1, p1}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p1

    const/16 v0, 0x3c

    .line 1500
    invoke-static {p1, v0}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    .line 1501
    iget-object v1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->overlayActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    .line 1502
    iget-object p1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->setPhotoItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method private showColorPicker()V
    .locals 14

    .line 1135
    iget-object v0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->bottomSheet:Lorg/telegram/ui/ActionBar/BottomSheet;

    if-eqz v0, :cond_0

    return-void

    .line 1138
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->previewView:Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;

    iget-boolean v0, v0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->expanded:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 1139
    invoke-direct {p0, v1, v1, v1}, Lorg/telegram/ui/Components/AvatarConstructorFragment;->setExpanded(ZZZ)V

    .line 1143
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->previewView:Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;

    iget-object v0, v0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->backgroundGradient:Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;

    .line 1146
    new-array v0, v1, [Z

    const/4 v2, 0x0

    aput-boolean v2, v0, v2

    .line 1148
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getClassGuid()I

    move-result v4

    invoke-static {v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->requestAdjustNothing(Landroid/app/Activity;I)V

    .line 1149
    new-instance v3, Lorg/telegram/ui/Components/AvatarConstructorFragment$11;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, p0, v4, v1}, Lorg/telegram/ui/Components/AvatarConstructorFragment$11;-><init>(Lorg/telegram/ui/Components/AvatarConstructorFragment;Landroid/content/Context;Z)V

    iput-object v3, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->bottomSheet:Lorg/telegram/ui/ActionBar/BottomSheet;

    .line 1172
    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->fixNavigationBar()V

    .line 1173
    iget-object v3, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->bottomSheet:Lorg/telegram/ui/ActionBar/BottomSheet;

    iput-boolean v2, v3, Lorg/telegram/ui/ActionBar/BottomSheet;->pauseAllHeavyOperations:Z

    .line 1175
    iput-boolean v1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->drawForBlur:Z

    .line 1176
    iget-object v3, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->colorPickerPreviewView:Landroid/view/View;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    const/high16 v7, 0x41400000    # 12.0f

    const/16 v8, 0xa

    invoke-static {v6, v7, v8}, Lorg/telegram/messenger/AndroidUtilities;->makeBlurBitmap(Landroid/view/View;FI)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1177
    iput-boolean v2, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->drawForBlur:Z

    .line 1178
    iget-object v3, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->colorPickerPreviewView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1179
    iget-object v3, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->colorPickerPreviewView:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    .line 1180
    iput-boolean v1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->colorPickerInAnimatoin:Z

    .line 1181
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    .line 1182
    iget-object v3, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->colorPickerPreviewView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/Components/AvatarConstructorFragment$12;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Components/AvatarConstructorFragment$12;-><init>(Lorg/telegram/ui/Components/AvatarConstructorFragment;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    .line 1188
    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v4, 0xc8

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1190
    new-instance v3, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;

    invoke-direct {v3}, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;-><init>()V

    iput-object v3, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->colorPickerGradient:Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;

    .line 1191
    new-instance v4, Lorg/telegram/ui/Components/AvatarConstructorFragment$13;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v5, Lorg/telegram/ui/Components/AvatarConstructorFragment$$ExternalSyntheticLambda7;

    invoke-direct {v5, p0}, Lorg/telegram/ui/Components/AvatarConstructorFragment$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/AvatarConstructorFragment;)V

    invoke-direct {v4, p0, v3, v2, v5}, Lorg/telegram/ui/Components/AvatarConstructorFragment$13;-><init>(Lorg/telegram/ui/Components/AvatarConstructorFragment;Landroid/content/Context;ZLorg/telegram/ui/Components/ColorPicker$ColorPickerDelegate;)V

    .line 1237
    iget-object v3, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->previewView:Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;

    iget-object v3, v3, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->backgroundGradient:Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;

    if-eqz v3, :cond_2

    .line 1238
    iget-object v5, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->colorPickerGradient:Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;

    iget v3, v3, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;->color4:I

    iput v3, v5, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;->color4:I

    const/4 v5, 0x3

    invoke-virtual {v4, v3, v5}, Lorg/telegram/ui/Components/ColorPicker;->setColor(II)V

    .line 1239
    iget-object v3, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->colorPickerGradient:Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;

    iget-object v5, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->previewView:Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;

    iget-object v5, v5, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->backgroundGradient:Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;

    iget v5, v5, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;->color3:I

    iput v5, v3, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;->color3:I

    const/4 v3, 0x2

    invoke-virtual {v4, v5, v3}, Lorg/telegram/ui/Components/ColorPicker;->setColor(II)V

    .line 1240
    iget-object v3, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->colorPickerGradient:Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;

    iget-object v5, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->previewView:Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;

    iget-object v5, v5, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->backgroundGradient:Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;

    iget v5, v5, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;->color2:I

    iput v5, v3, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;->color2:I

    invoke-virtual {v4, v5, v1}, Lorg/telegram/ui/Components/ColorPicker;->setColor(II)V

    .line 1241
    iget-object v3, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->colorPickerGradient:Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;

    iget-object v5, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->previewView:Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;

    iget-object v5, v5, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->backgroundGradient:Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;

    iget v5, v5, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;->color1:I

    iput v5, v3, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;->color1:I

    invoke-virtual {v4, v5, v2}, Lorg/telegram/ui/Components/ColorPicker;->setColor(II)V

    .line 1244
    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->colorPickerGradient:Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;->colorsCount()I

    move-result v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x4

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v11}, Lorg/telegram/ui/Components/ColorPicker;->setType(IZIIZIZ)V

    .line 1246
    iget-object v3, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->previewView:Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;

    iget-object v5, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->colorPickerGradient:Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;

    invoke-virtual {v3, v5, v1}, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->setGradient(Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;Z)V

    .line 1247
    invoke-direct {p0}, Lorg/telegram/ui/Components/AvatarConstructorFragment;->updateButton()V

    .line 1249
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1250
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v5, 0x41000000    # 8.0f

    .line 1251
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v3, v2, v6, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 1252
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1254
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1255
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    new-array v7, v1, [F

    aput v5, v7, v2

    invoke-static {v6, v7}, Lorg/telegram/ui/ActionBar/Theme$AdaptiveRipple;->filledRectByKey(I[F)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1257
    new-instance v5, Landroid/widget/TextView;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v6, 0x41600000    # 14.0f

    .line 1258
    invoke-virtual {v5, v1, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1259
    sget v6, Lorg/telegram/messenger/R$string;->SetColor:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v6, 0x11

    .line 1260
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 1261
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1262
    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_buttonText:I

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v7, -0x2

    .line 1263
    invoke-static {v7, v7, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v12, 0x41800000    # 16.0f

    const/high16 v13, 0x41800000    # 16.0f

    const/4 v7, -0x1

    const/high16 v8, 0x42400000    # 48.0f

    const/high16 v10, 0x41800000    # 16.0f

    const/high16 v11, -0x3f000000    # -8.0f

    .line 1265
    invoke-static/range {v7 .. v13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1266
    new-instance v5, Lorg/telegram/ui/Components/AvatarConstructorFragment$$ExternalSyntheticLambda8;

    invoke-direct {v5, p0, v0}, Lorg/telegram/ui/Components/AvatarConstructorFragment$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Components/AvatarConstructorFragment;[Z)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1271
    iget-object v0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->bottomSheet:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->setCustomView(Landroid/view/View;)V

    .line 1272
    iget-object v0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->bottomSheet:Lorg/telegram/ui/ActionBar/BottomSheet;

    iput-boolean v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->smoothKeyboardAnimationEnabled:Z

    .line 1273
    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->setDimBehind(Z)V

    .line 1274
    iget-object v0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->bottomSheet:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    .line 1275
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AvatarConstructorFragment;->isLightStatusBar()Z

    return-void
.end method

.method private updateButton()V
    .locals 3

    .line 549
    invoke-direct {p0}, Lorg/telegram/ui/Components/AvatarConstructorFragment;->isLocked()Z

    move-result v0

    .line 550
    iget-boolean v1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->buttonIsLocked:Z

    if-eq v1, v0, :cond_1

    .line 551
    iget-object v1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    iput-boolean v0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->buttonIsLocked:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->lockedButtonText:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->buttonText:Ljava/lang/CharSequence;

    :goto_0
    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method cancelExpandAnimator()V
    .locals 1

    .line 708
    iget-object v0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->expandAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 709
    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 710
    iget-object v0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->expandAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    .line 711
    iput-object v0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->expandAnimator:Landroid/animation/ValueAnimator;

    :cond_0
    return-void
.end method

.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 23

    move-object/from16 v1, p0

    move-object/from16 v11, p1

    const/4 v12, 0x1

    .line 169
    iput-boolean v12, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->hasOwnBackground:Z

    .line 170
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 171
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v13, 0x0

    invoke-virtual {v0, v13}, Lorg/telegram/ui/ActionBar/ActionBar;->setCastShadows(Z)V

    .line 172
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v13}, Lorg/telegram/ui/ActionBar/ActionBar;->setAddToContainer(Z)V

    .line 173
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v12}, Lorg/telegram/ui/ActionBar/ActionBar;->setOccupyStatusBar(Z)V

    .line 174
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleColor(I)V

    .line 175
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3, v13}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    .line 176
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3, v13}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    .line 177
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v3, Lorg/telegram/ui/ActionBar/BackDrawable;

    invoke-direct {v3, v13}, Lorg/telegram/ui/ActionBar/BackDrawable;-><init>(Z)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 178
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v13}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 179
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v3, Lorg/telegram/messenger/R$string;->PhotoEditor:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v3, Lorg/telegram/ui/Components/AvatarConstructorFragment$1;

    invoke-direct {v3, v1}, Lorg/telegram/ui/Components/AvatarConstructorFragment$1;-><init>(Lorg/telegram/ui/Components/AvatarConstructorFragment;)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 188
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->getTitleTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 190
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/Components/AvatarConstructorFragment;->overlayActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 191
    invoke-virtual {v0, v13}, Lorg/telegram/ui/ActionBar/ActionBar;->setCastShadows(Z)V

    .line 192
    iget-object v0, v1, Lorg/telegram/ui/Components/AvatarConstructorFragment;->overlayActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v13}, Lorg/telegram/ui/ActionBar/ActionBar;->setAddToContainer(Z)V

    .line 193
    iget-object v0, v1, Lorg/telegram/ui/Components/AvatarConstructorFragment;->overlayActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v12}, Lorg/telegram/ui/ActionBar/ActionBar;->setOccupyStatusBar(Z)V

    .line 194
    iget-object v0, v1, Lorg/telegram/ui/Components/AvatarConstructorFragment;->overlayActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    const/16 v0, 0x3c

    const/4 v14, -0x1

    .line 195
    invoke-static {v14, v0}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    .line 196
    iget-object v3, v1, Lorg/telegram/ui/Components/AvatarConstructorFragment;->overlayActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v3, v14, v13}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    .line 198
    iget-object v3, v1, Lorg/telegram/ui/Components/AvatarConstructorFragment;->overlayActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v4, Lorg/telegram/ui/ActionBar/BackDrawable;

    invoke-direct {v4, v13}, Lorg/telegram/ui/ActionBar/BackDrawable;-><init>(Z)V

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 199
    iget-object v3, v1, Lorg/telegram/ui/Components/AvatarConstructorFragment;->overlayActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v3, v13}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 200
    iget-object v3, v1, Lorg/telegram/ui/Components/AvatarConstructorFragment;->overlayActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v3, v0, v13}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    .line 201
    iget-object v3, v1, Lorg/telegram/ui/Components/AvatarConstructorFragment;->overlayActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v3

    .line 202
    invoke-virtual {v3, v13}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 203
    iget-object v4, v1, Lorg/telegram/ui/Components/AvatarConstructorFragment;->avatarFor:Lorg/telegram/ui/Components/ImageUpdater$AvatarFor;

    const/4 v15, 0x2

    if-eqz v4, :cond_0

    iget v4, v4, Lorg/telegram/ui/Components/ImageUpdater$AvatarFor;->type:I

    if-ne v4, v15, :cond_0

    .line 204
    sget v4, Lorg/telegram/messenger/R$string;->SuggestPhoto:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 205
    :cond_0
    sget v4, Lorg/telegram/messenger/R$string;->SetPhoto:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 203
    :goto_0
    invoke-virtual {v3, v12, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(ILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v3

    iput-object v3, v1, Lorg/telegram/ui/Components/AvatarConstructorFragment;->setPhotoItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v4, 0x3

    .line 207
    invoke-static {v0, v4}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 208
    iget-object v0, v1, Lorg/telegram/ui/Components/AvatarConstructorFragment;->overlayActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v3, Lorg/telegram/ui/Components/AvatarConstructorFragment$2;

    invoke-direct {v3, v1}, Lorg/telegram/ui/Components/AvatarConstructorFragment$2;-><init>(Lorg/telegram/ui/Components/AvatarConstructorFragment;)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 220
    new-instance v0, Lorg/telegram/ui/Components/AvatarConstructorFragment$3;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lorg/telegram/ui/Components/AvatarConstructorFragment$3;-><init>(Lorg/telegram/ui/Components/AvatarConstructorFragment;Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/Components/AvatarConstructorFragment;->linearLayout:Landroid/widget/LinearLayout;

    .line 230
    new-instance v0, Lorg/telegram/ui/Components/AvatarConstructorFragment$4;

    invoke-direct {v0, v1, v11}, Lorg/telegram/ui/Components/AvatarConstructorFragment$4;-><init>(Lorg/telegram/ui/Components/AvatarConstructorFragment;Landroid/content/Context;)V

    .line 398
    invoke-virtual {v0, v12}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 399
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 402
    iget-object v3, v1, Lorg/telegram/ui/Components/AvatarConstructorFragment;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v13}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 403
    iget-object v3, v1, Lorg/telegram/ui/Components/AvatarConstructorFragment;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v13}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 404
    iget-object v3, v1, Lorg/telegram/ui/Components/AvatarConstructorFragment;->linearLayout:Landroid/widget/LinearLayout;

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    invoke-virtual {v3, v13, v4, v13, v13}, Landroid/view/View;->setPadding(IIII)V

    .line 405
    iget-object v3, v1, Lorg/telegram/ui/Components/AvatarConstructorFragment;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 406
    iget-object v3, v1, Lorg/telegram/ui/Components/AvatarConstructorFragment;->linearLayout:Landroid/widget/LinearLayout;

    new-instance v4, Lorg/telegram/ui/Components/AvatarConstructorFragment$5;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v1, v5, v0}, Lorg/telegram/ui/Components/AvatarConstructorFragment$5;-><init>(Lorg/telegram/ui/Components/AvatarConstructorFragment;Landroid/content/Context;Lorg/telegram/ui/Components/AvatarConstructorFragment$ContainerLayout;)V

    iput-object v4, v1, Lorg/telegram/ui/Components/AvatarConstructorFragment;->previewView:Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 414
    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, v1, Lorg/telegram/ui/Components/AvatarConstructorFragment;->chooseBackgroundHint:Landroid/widget/TextView;

    .line 415
    sget v4, Lorg/telegram/messenger/R$string;->ChooseBackground:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 416
    iget-object v3, v1, Lorg/telegram/ui/Components/AvatarConstructorFragment;->chooseBackgroundHint:Landroid/widget/TextView;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 417
    iget-object v3, v1, Lorg/telegram/ui/Components/AvatarConstructorFragment;->chooseBackgroundHint:Landroid/widget/TextView;

    const/high16 v5, 0x41600000    # 14.0f

    invoke-virtual {v3, v12, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 418
    iget-object v3, v1, Lorg/telegram/ui/Components/AvatarConstructorFragment;->chooseBackgroundHint:Landroid/widget/TextView;

    const/16 v6, 0x11

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 419
    iget-object v3, v1, Lorg/telegram/ui/Components/AvatarConstructorFragment;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v7, v1, Lorg/telegram/ui/Components/AvatarConstructorFragment;->chooseBackgroundHint:Landroid/widget/TextView;

    const/16 v21, 0x15

    const/16 v22, 0xa

    const/16 v16, -0x1

    const/16 v17, -0x2

    const/16 v18, 0x0

    const/16 v19, 0x15

    const/16 v20, 0xa

    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 421
    new-instance v3, Lorg/telegram/ui/Components/AvatarConstructorFragment$6;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v3, v1, v7}, Lorg/telegram/ui/Components/AvatarConstructorFragment$6;-><init>(Lorg/telegram/ui/Components/AvatarConstructorFragment;Landroid/content/Context;)V

    .line 441
    new-instance v7, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundSelectView;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v1, v8}, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundSelectView;-><init>(Lorg/telegram/ui/Components/AvatarConstructorFragment;Landroid/content/Context;)V

    iput-object v7, v1, Lorg/telegram/ui/Components/AvatarConstructorFragment;->backgroundSelectView:Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundSelectView;

    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 442
    iget-object v7, v1, Lorg/telegram/ui/Components/AvatarConstructorFragment;->linearLayout:Landroid/widget/LinearLayout;

    const/16 v21, 0xc

    const/16 v22, 0x0

    const/16 v17, 0x30

    const/16 v19, 0xc

    const/16 v20, 0x0

    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v7, v3, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 444
    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v3, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, v1, Lorg/telegram/ui/Components/AvatarConstructorFragment;->chooseEmojiHint:Landroid/widget/TextView;

    .line 445
    sget v7, Lorg/telegram/messenger/R$string;->ChooseEmojiOrSticker:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 446
    iget-object v3, v1, Lorg/telegram/ui/Components/AvatarConstructorFragment;->chooseEmojiHint:Landroid/widget/TextView;

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 447
    iget-object v3, v1, Lorg/telegram/ui/Components/AvatarConstructorFragment;->chooseEmojiHint:Landroid/widget/TextView;

    invoke-virtual {v3, v12, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 448
    iget-object v3, v1, Lorg/telegram/ui/Components/AvatarConstructorFragment;->chooseEmojiHint:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 449
    iget-object v3, v1, Lorg/telegram/ui/Components/AvatarConstructorFragment;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v4, v1, Lorg/telegram/ui/Components/AvatarConstructorFragment;->chooseEmojiHint:Landroid/widget/TextView;

    const/16 v21, 0x15

    const/16 v22, 0xa

    const/16 v17, -0x2

    const/16 v19, 0x15

    const/16 v20, 0x12

    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object v3, v0

    .line 451
    new-instance v0, Lorg/telegram/ui/Components/AvatarConstructorFragment$7;

    move-object v4, v3

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const/16 v9, 0x10

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v10

    move-object v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object/from16 v16, v2

    move-object/from16 v2, p0

    move-object/from16 v14, v16

    invoke-direct/range {v0 .. v10}, Lorg/telegram/ui/Components/AvatarConstructorFragment$7;-><init>(Lorg/telegram/ui/Components/AvatarConstructorFragment;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;ZLjava/lang/Integer;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;II)V

    iput-object v0, v1, Lorg/telegram/ui/Components/AvatarConstructorFragment;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    .line 487
    iget-boolean v2, v1, Lorg/telegram/ui/Components/AvatarConstructorFragment;->forGroup:Z

    xor-int/2addr v2, v12

    iput-boolean v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->forUser:Z

    .line 489
    iget-boolean v2, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentBeginToShow:Z

    invoke-virtual {v0, v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->setAnimationsEnabled(Z)V

    .line 490
    iget-object v0, v1, Lorg/telegram/ui/Components/AvatarConstructorFragment;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 491
    iget-object v0, v1, Lorg/telegram/ui/Components/AvatarConstructorFragment;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v2, v1, Lorg/telegram/ui/Components/AvatarConstructorFragment;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    const/16 v8, 0xc

    const/16 v9, 0xc

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 493
    iget-object v0, v1, Lorg/telegram/ui/Components/AvatarConstructorFragment;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 494
    iget-object v0, v1, Lorg/telegram/ui/Components/AvatarConstructorFragment;->linearLayout:Landroid/widget/LinearLayout;

    const/4 v7, 0x0

    const/high16 v8, 0x42800000    # 64.0f

    const/4 v2, -0x1

    const/high16 v3, -0x40800000    # -1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v14, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 496
    new-instance v0, Landroid/view/View;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/Components/AvatarConstructorFragment;->colorPickerPreviewView:Landroid/view/View;

    const/16 v2, 0x8

    .line 497
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 499
    new-instance v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    iget-object v2, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v11, v2}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v1, Lorg/telegram/ui/Components/AvatarConstructorFragment;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    .line 500
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setRound()Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    .line 501
    iget-object v0, v1, Lorg/telegram/ui/Components/AvatarConstructorFragment;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->text:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v0, v13, v12, v13}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setHacks(ZZZ)V

    .line 502
    iget-object v0, v1, Lorg/telegram/ui/Components/AvatarConstructorFragment;->imageUpdater:Lorg/telegram/ui/Components/ImageUpdater;

    iget v0, v0, Lorg/telegram/ui/Components/ImageUpdater;->setForType:I

    if-ne v0, v12, :cond_1

    .line 503
    sget v0, Lorg/telegram/messenger/R$string;->SetChannelPhoto:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/Components/AvatarConstructorFragment;->buttonText:Ljava/lang/CharSequence;

    goto :goto_1

    :cond_1
    if-ne v0, v15, :cond_2

    .line 505
    sget v0, Lorg/telegram/messenger/R$string;->SetGroupPhoto:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/Components/AvatarConstructorFragment;->buttonText:Ljava/lang/CharSequence;

    goto :goto_1

    .line 506
    :cond_2
    iget-object v0, v1, Lorg/telegram/ui/Components/AvatarConstructorFragment;->avatarFor:Lorg/telegram/ui/Components/ImageUpdater$AvatarFor;

    if-eqz v0, :cond_3

    iget v0, v0, Lorg/telegram/ui/Components/ImageUpdater$AvatarFor;->type:I

    if-ne v0, v15, :cond_3

    .line 507
    sget v0, Lorg/telegram/messenger/R$string;->SuggestPhoto:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/Components/AvatarConstructorFragment;->buttonText:Ljava/lang/CharSequence;

    goto :goto_1

    .line 509
    :cond_3
    sget v0, Lorg/telegram/messenger/R$string;->SetMyProfilePhotoAvatarConstructor:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/Components/AvatarConstructorFragment;->buttonText:Ljava/lang/CharSequence;

    .line 511
    :goto_1
    new-instance v0, Landroid/text/SpannableStringBuilder;

    iget-object v2, v1, Lorg/telegram/ui/Components/AvatarConstructorFragment;->buttonText:Ljava/lang/CharSequence;

    invoke-direct {v0, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, v1, Lorg/telegram/ui/Components/AvatarConstructorFragment;->buttonText:Ljava/lang/CharSequence;

    .line 512
    new-instance v0, Landroid/text/SpannableStringBuilder;

    iget-object v2, v1, Lorg/telegram/ui/Components/AvatarConstructorFragment;->buttonText:Ljava/lang/CharSequence;

    invoke-direct {v0, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 513
    const-string v2, " l"

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 514
    new-instance v2, Lorg/telegram/ui/Components/ColoredImageSpan;

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_mini_lock2:I

    invoke-direct {v2, v3}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(I)V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    sub-int/2addr v3, v12

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    const/16 v5, 0x21

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 515
    iput-object v0, v1, Lorg/telegram/ui/Components/AvatarConstructorFragment;->lockedButtonText:Ljava/lang/CharSequence;

    .line 516
    iput-boolean v13, v1, Lorg/telegram/ui/Components/AvatarConstructorFragment;->buttonIsLocked:Z

    .line 517
    iget-object v0, v1, Lorg/telegram/ui/Components/AvatarConstructorFragment;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    iget-object v2, v1, Lorg/telegram/ui/Components/AvatarConstructorFragment;->buttonText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2, v13}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    .line 518
    iget-object v0, v1, Lorg/telegram/ui/Components/AvatarConstructorFragment;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    new-instance v2, Lorg/telegram/ui/Components/AvatarConstructorFragment$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Components/AvatarConstructorFragment$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/AvatarConstructorFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 520
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v11}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/Components/AvatarConstructorFragment;->bottomBulletinContainer:Landroid/widget/FrameLayout;

    .line 522
    iget-object v0, v1, Lorg/telegram/ui/Components/AvatarConstructorFragment;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    const/high16 v7, 0x41800000    # 16.0f

    const/high16 v8, 0x41800000    # 16.0f

    const/4 v2, -0x1

    const/high16 v3, 0x42400000    # 48.0f

    const/16 v4, 0x50

    const/high16 v5, 0x41800000    # 16.0f

    const/high16 v6, 0x41800000    # 16.0f

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v14, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 523
    iget-object v0, v1, Lorg/telegram/ui/Components/AvatarConstructorFragment;->bottomBulletinContainer:Landroid/widget/FrameLayout;

    const/high16 v7, 0x41000000    # 8.0f

    const/high16 v8, 0x42800000    # 64.0f

    const/4 v2, -0x1

    const/high16 v3, 0x42a00000    # 80.0f

    const/high16 v5, 0x41000000    # 8.0f

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v14, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 524
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v14, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 526
    iget-object v0, v1, Lorg/telegram/ui/Components/AvatarConstructorFragment;->overlayActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v14, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 527
    iget-object v0, v1, Lorg/telegram/ui/Components/AvatarConstructorFragment;->colorPickerPreviewView:Landroid/view/View;

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v3, -0x1

    invoke-static {v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v14, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 529
    new-instance v0, Lorg/telegram/ui/Components/CanvasButton;

    invoke-direct {v0, v14}, Lorg/telegram/ui/Components/CanvasButton;-><init>(Landroid/view/View;)V

    iput-object v0, v1, Lorg/telegram/ui/Components/AvatarConstructorFragment;->avatarClickableArea:Lorg/telegram/ui/Components/CanvasButton;

    .line 530
    new-instance v2, Lorg/telegram/ui/Components/AvatarConstructorFragment$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Components/AvatarConstructorFragment$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/AvatarConstructorFragment;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/CanvasButton;->setDelegate(Ljava/lang/Runnable;)V

    .line 533
    iput-object v14, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object v14
.end method

.method public isLightStatusBar()Z
    .locals 6

    .line 1468
    iget-object v0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->previewView:Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const v3, 0x3f389375    # 0.721f

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    iget-boolean v5, v0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->expanded:Z

    if-nez v5, :cond_0

    iget v5, v0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->overrideExpandProgress:F

    cmpl-float v5, v5, v4

    if-ltz v5, :cond_2

    iget-object v5, v0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->backgroundGradient:Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;

    if-eqz v5, :cond_2

    .line 1469
    :cond_0
    iget-object v0, v0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->backgroundGradient:Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;->getAverageColor()I

    move-result v0

    .line 1470
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result v0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_1

    :goto_0
    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_1

    .line 1472
    :cond_2
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result v0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_1

    goto :goto_0

    .line 1474
    :goto_1
    iget-boolean v3, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->isLightInternal:Z

    if-eq v3, v0, :cond_7

    .line 1475
    iput-boolean v0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->isLightInternal:Z

    .line 1476
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v3

    cmpl-float v3, v3, v4

    const/high16 v5, 0x3f800000    # 1.0f

    if-nez v3, :cond_4

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    move v4, v5

    .line 1477
    :goto_2
    invoke-direct {p0, v4}, Lorg/telegram/ui/Components/AvatarConstructorFragment;->setProgressToLightStatusBar(F)V

    goto :goto_4

    .line 1479
    :cond_4
    iget-object v3, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->lightProgressAnimator:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_5

    .line 1480
    invoke-virtual {v3}, Landroid/animation/Animator;->removeAllListeners()V

    .line 1481
    iget-object v3, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->lightProgressAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1483
    :cond_5
    iget v3, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->progressToLightStatusBar:F

    if-eqz v0, :cond_6

    goto :goto_3

    :cond_6
    move v4, v5

    :goto_3
    const/4 v5, 0x2

    new-array v5, v5, [F

    aput v3, v5, v1

    aput v4, v5, v2

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->lightProgressAnimator:Landroid/animation/ValueAnimator;

    .line 1484
    new-instance v2, Lorg/telegram/ui/Components/AvatarConstructorFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/AvatarConstructorFragment$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/AvatarConstructorFragment;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1487
    iget-object v1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->lightProgressAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x96

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 1490
    :cond_7
    :goto_4
    iget-object v1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->bottomSheet:Lorg/telegram/ui/ActionBar/BottomSheet;

    if-eqz v1, :cond_8

    .line 1491
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/telegram/messenger/AndroidUtilities;->setLightStatusBar(Landroid/view/Window;Z)V

    :cond_8
    return v0
.end method

.method public isSwipeBackEnabled(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onBackPressed(Z)Z
    .locals 2

    .line 1604
    iget-boolean v0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->wasChanged:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 1606
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1607
    sget v0, Lorg/telegram/messenger/R$string;->PhotoEditorDiscardAlert:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1608
    sget v0, Lorg/telegram/messenger/R$string;->DiscardChanges:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1609
    sget v0, Lorg/telegram/messenger/R$string;->PassportDiscard:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/AvatarConstructorFragment$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/AvatarConstructorFragment$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/AvatarConstructorFragment;)V

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1610
    sget v0, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1611
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 1612
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 1613
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->redPositive()V

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 1617
    :cond_1
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onBackPressed(Z)Z

    move-result p1

    return p1
.end method

.method public onPreviewClick()V
    .locals 3

    .line 1511
    iget-boolean v0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->isLandscapeMode:Z

    if-eqz v0, :cond_0

    return-void

    .line 1514
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->keyboardVisibleProgress:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v1, 0x1

    if-lez v0, :cond_2

    .line 1515
    iget-object v0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->keyboardVisibilityAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1516
    iput v0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->progressToExpand:F

    .line 1517
    iput-boolean v1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->expandWithKeyboard:Z

    .line 1519
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    return-void

    .line 1522
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->previewView:Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;

    iget-boolean v0, v0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->expanded:Z

    xor-int/2addr v0, v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/telegram/ui/Components/AvatarConstructorFragment;->setExpanded(ZZZ)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1626
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 1627
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getClassGuid()I

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->requestAdjustResize(Landroid/app/Activity;I)V

    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Components/AvatarConstructorFragment$Delegate;)V
    .locals 0

    .line 1507
    iput-object p1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->delegate:Lorg/telegram/ui/Components/AvatarConstructorFragment$Delegate;

    return-void
.end method

.method public startFrom(JZ)V
    .locals 5

    .line 748
    iget-object v0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->previewView:Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;

    if-nez v0, :cond_0

    return-void

    .line 751
    :cond_0
    new-instance v0, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;

    invoke-direct {v0}, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;-><init>()V

    .line 752
    sget-object v1, Lorg/telegram/ui/Components/AvatarConstructorFragment;->defaultColors:[[I

    const/4 v2, 0x0

    aget-object v1, v1, v2

    aget v3, v1, v2

    iput v3, v0, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;->color1:I

    const/4 v3, 0x1

    .line 753
    aget v3, v1, v3

    iput v3, v0, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;->color2:I

    const/4 v3, 0x2

    .line 754
    aget v3, v1, v3

    iput v3, v0, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;->color3:I

    const/4 v3, 0x3

    .line 755
    aget v1, v1, v3

    iput v1, v0, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;->color4:I

    .line 757
    iget-object v1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->previewView:Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;

    invoke-virtual {v1, v0, v2}, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->setGradient(Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;Z)V

    .line 758
    invoke-direct {p0}, Lorg/telegram/ui/Components/AvatarConstructorFragment;->updateButton()V

    .line 759
    iget-object v1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->previewView:Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;

    iput-wide p1, v1, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->documentId:J

    .line 760
    iget-object v1, v1, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    new-instance v2, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    const/16 v3, 0xe

    iget v4, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-direct {v2, v3, v4, p1, p2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;-><init>(IIJ)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/BackupImageView;->setAnimatedEmojiDrawable(Lorg/telegram/ui/Components/AnimatedEmojiDrawable;)V

    .line 761
    iget-object p1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->backgroundSelectView:Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundSelectView;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundSelectView;->selectGradient(Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;)V

    .line 762
    iget-object p1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iput-boolean p3, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->forUser:Z

    invoke-virtual {p1, p3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->setForUser(Z)V

    return-void
.end method

.method public startFrom(Lorg/telegram/tgnet/TLRPC$VideoSize;)V
    .locals 10

    .line 766
    new-instance v0, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;

    invoke-direct {v0}, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;-><init>()V

    .line 767
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$VideoSize;->background_colors:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v3, 0xff

    invoke-static {v1, v3}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;->color1:I

    .line 768
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$VideoSize;->background_colors:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v4, 0x1

    if-le v1, v4, :cond_0

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$VideoSize;->background_colors:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1, v3}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput v1, v0, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;->color2:I

    .line 769
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$VideoSize;->background_colors:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v5, 0x2

    if-le v1, v5, :cond_1

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$VideoSize;->background_colors:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1, v3}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iput v1, v0, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;->color3:I

    .line 770
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$VideoSize;->background_colors:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v5, 0x3

    if-le v1, v5, :cond_2

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$VideoSize;->background_colors:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1, v3}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v1

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    iput v1, v0, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;->color4:I

    .line 771
    iget-object v1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->previewView:Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;

    invoke-virtual {v1, v0, v2}, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->setGradient(Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;Z)V

    .line 772
    invoke-direct {p0}, Lorg/telegram/ui/Components/AvatarConstructorFragment;->updateButton()V

    .line 775
    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$TL_videoSizeEmojiMarkup;

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 776
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_videoSizeEmojiMarkup;

    iget-wide v5, p1, Lorg/telegram/tgnet/TLRPC$TL_videoSizeEmojiMarkup;->emoji_id:J

    invoke-direct {p0, v2, v5, v6, v3}, Lorg/telegram/ui/Components/AvatarConstructorFragment;->setPreview(ZJLorg/telegram/tgnet/TLRPC$Document;)V

    goto :goto_4

    .line 778
    :cond_3
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_videoSizeStickerMarkup;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_videoSizeStickerMarkup;-><init>()V

    .line 779
    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    iget-object v5, p1, Lorg/telegram/tgnet/TLRPC$TL_videoSizeStickerMarkup;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    invoke-virtual {v1, v5, v2}, Lorg/telegram/messenger/MediaDataController;->getStickerSet(Lorg/telegram/tgnet/TLRPC$InputStickerSet;Z)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v1

    if-eqz v1, :cond_5

    move v5, v2

    .line 782
    :goto_3
    iget-object v6, v1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_5

    .line 783
    iget-object v6, v1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v6, v6, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iget-wide v8, p1, Lorg/telegram/tgnet/TLRPC$TL_videoSizeStickerMarkup;->sticker_id:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_4

    .line 784
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Document;

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_5
    const-wide/16 v5, 0x0

    .line 788
    invoke-direct {p0, v2, v5, v6, v3}, Lorg/telegram/ui/Components/AvatarConstructorFragment;->setPreview(ZJLorg/telegram/tgnet/TLRPC$Document;)V

    .line 790
    :goto_4
    iget-object p1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->backgroundSelectView:Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundSelectView;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundSelectView;->selectGradient(Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;)V

    .line 791
    iget-object p1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iput-boolean v4, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->forUser:Z

    invoke-virtual {p1, v4}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->setForUser(Z)V

    return-void
.end method

.method public startFrom(Lorg/telegram/ui/Components/AvatarConstructorPreviewCell;)V
    .locals 7

    .line 732
    invoke-virtual {p1}, Lorg/telegram/ui/Components/AvatarConstructorPreviewCell;->getBackgroundGradient()Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;

    move-result-object v0

    .line 733
    iget-object v1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->previewView:Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    .line 736
    invoke-virtual {v1, v0, v2}, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->setGradient(Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;Z)V

    .line 737
    invoke-direct {p0}, Lorg/telegram/ui/Components/AvatarConstructorFragment;->updateButton()V

    .line 738
    invoke-virtual {p1}, Lorg/telegram/ui/Components/AvatarConstructorPreviewCell;->getAnimatedEmoji()Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 739
    invoke-virtual {p1}, Lorg/telegram/ui/Components/AvatarConstructorPreviewCell;->getAnimatedEmoji()Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getDocumentId()J

    move-result-wide v1

    .line 740
    iget-object v3, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->previewView:Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;

    iput-wide v1, v3, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->documentId:J

    .line 741
    iget-object v3, v3, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    new-instance v4, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    const/16 v5, 0xe

    iget v6, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-direct {v4, v5, v6, v1, v2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;-><init>(IIJ)V

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/BackupImageView;->setAnimatedEmojiDrawable(Lorg/telegram/ui/Components/AnimatedEmojiDrawable;)V

    .line 743
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->backgroundSelectView:Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundSelectView;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundSelectView;->selectGradient(Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;)V

    .line 744
    iget-object v0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-boolean p1, p1, Lorg/telegram/ui/Components/AvatarConstructorPreviewCell;->forUser:Z

    iput-boolean p1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->forUser:Z

    invoke-virtual {v0, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->setForUser(Z)V

    return-void
.end method
