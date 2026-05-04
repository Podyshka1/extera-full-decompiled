.class public Lorg/telegram/ui/Components/UndoView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/UndoView$LinkMovementMethodMy;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static ACTION_RINGTONE_ADDED:I = 0x53


# instance fields
.field private additionalTranslationY:F

.field private avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

.field backgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private bottomInset:I

.field private currentAccount:I

.field private currentAction:I

.field private currentActionRunnable:Ljava/lang/Runnable;

.field private currentCancelRunnable:Ljava/lang/Runnable;

.field private currentDialogIds:Ljava/util/ArrayList;

.field private currentInfoObject:Ljava/lang/Object;

.field private currentInfoObject2:Ljava/lang/Object;

.field enterOffset:F

.field private enterOffsetMargin:I

.field private fromTop:Z

.field private hideAnimationType:I

.field private infoText:Ljava/lang/CharSequence;

.field private infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

.field private infoTextViewEmojiCacheType:I

.field private isShown:Z

.field private lastUpdateTime:J

.field private leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

.field private parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private prevSeconds:I

.field private progressPaint:Landroid/graphics/Paint;

.field private rect:Landroid/graphics/RectF;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private subinfoTextView:Landroid/widget/TextView;

.field private textPaint:Landroid/text/TextPaint;

.field private textWidth:I

.field textWidthOut:I

.field timeLayout:Landroid/text/StaticLayout;

.field timeLayoutOut:Landroid/text/StaticLayout;

.field private timeLeft:J

.field private timeLeftString:Ljava/lang/String;

.field timeReplaceProgress:F

.field private undoButton:Landroid/widget/LinearLayout;

.field private undoImageView:Landroid/widget/ImageView;

.field private undoTextView:Landroid/widget/TextView;

.field private undoViewHeight:I


# direct methods
.method public static synthetic $r8$lambda$E6zBwLnxhEKtx1u1QXgvyZGX15M(Lorg/telegram/ui/Components/UndoView;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/UndoView;->lambda$showWithAction$4(Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$L1jUFoyovK0vaJ33tzr4uDtEY3I(Lorg/telegram/ui/Components/UndoView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/UndoView;->lambda$showWithAction$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ObNJKqvGU8xXsV6D0ktsjRDi0mw(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 343
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$TU5MmGUgN7S1eYjqCZW6dSQfE3o(Lorg/telegram/ui/Components/UndoView;Lorg/telegram/tgnet/TLRPC$Message;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/UndoView;->lambda$showWithAction$6(Lorg/telegram/tgnet/TLRPC$Message;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cZqccd_9fRsjeu5NHwsZhhH7p3Y(Lorg/telegram/ui/Components/UndoView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/UndoView;->lambda$showWithAction$7()V

    return-void
.end method

.method public static synthetic $r8$lambda$ke2GkMc8i9xdqgwNxqwaq_q8L_Y(Lorg/telegram/ui/Components/UndoView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/UndoView;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$l8XtLSzZxmJyp89hFOLv7CHxCiE(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 530
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$svmU10HvztcemtPEGVxBBnlGpSw(Lorg/telegram/ui/Components/UndoView;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/UndoView;->lambda$showWithAction$5(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetinfoTextViewEmojiCacheType(Lorg/telegram/ui/Components/UndoView;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/UndoView;->infoTextViewEmojiCacheType:I

    return p0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 246
    invoke-direct {p0, p1, v0, v1, v0}, Lorg/telegram/ui/Components/UndoView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 250
    invoke-direct {p0, p1, p2, v0, v1}, Lorg/telegram/ui/Components/UndoView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    .line 254
    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    .line 74
    iput v3, v0, Lorg/telegram/ui/Components/UndoView;->infoTextViewEmojiCacheType:I

    .line 89
    sget v4, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v4, v0, Lorg/telegram/ui/Components/UndoView;->currentAccount:I

    const/4 v4, -0x1

    .line 100
    iput v4, v0, Lorg/telegram/ui/Components/UndoView;->currentAction:I

    .line 113
    iput v3, v0, Lorg/telegram/ui/Components/UndoView;->bottomInset:I

    const/4 v4, 0x1

    .line 212
    iput v4, v0, Lorg/telegram/ui/Components/UndoView;->hideAnimationType:I

    const/high16 v5, 0x41000000    # 8.0f

    .line 1599
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    iput v5, v0, Lorg/telegram/ui/Components/UndoView;->enterOffsetMargin:I

    const/high16 v5, 0x3f800000    # 1.0f

    .line 1619
    iput v5, v0, Lorg/telegram/ui/Components/UndoView;->timeReplaceProgress:F

    .line 255
    iput-object v2, v0, Lorg/telegram/ui/Components/UndoView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object/from16 v5, p2

    .line 256
    iput-object v5, v0, Lorg/telegram/ui/Components/UndoView;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    move/from16 v5, p3

    .line 257
    iput-boolean v5, v0, Lorg/telegram/ui/Components/UndoView;->fromTop:Z

    .line 259
    new-instance v5, Lorg/telegram/ui/Components/UndoView$1;

    invoke-direct {v5, v0, v1, v2}, Lorg/telegram/ui/Components/UndoView$1;-><init>(Lorg/telegram/ui/Components/UndoView;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v5, v0, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/high16 v2, 0x41700000    # 15.0f

    .line 265
    invoke-virtual {v5, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 266
    iget-object v5, v0, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_undo_infoColor:I

    invoke-direct {v0, v6}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(I)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 267
    iget-object v5, v0, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_undo_cancelColor:I

    invoke-direct {v0, v7}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 268
    iget-object v5, v0, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    new-instance v8, Lorg/telegram/ui/Components/UndoView$LinkMovementMethodMy;

    invoke-direct {v8, v0}, Lorg/telegram/ui/Components/UndoView$LinkMovementMethodMy;-><init>(Lorg/telegram/ui/Components/UndoView;)V

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 269
    iget-object v5, v0, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v8, -0x2

    const/high16 v9, -0x40000000    # -2.0f

    const/16 v10, 0x33

    const/high16 v11, 0x42340000    # 45.0f

    const/high16 v12, 0x41500000    # 13.0f

    invoke-static/range {v8 .. v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v0, v5, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 271
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    const/high16 v8, 0x41500000    # 13.0f

    .line 272
    invoke-virtual {v5, v4, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 273
    iget-object v5, v0, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    invoke-direct {v0, v6}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 274
    iget-object v5, v0, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 275
    iget-object v5, v0, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 276
    iget-object v5, v0, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 277
    iget-object v5, v0, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 278
    iget-object v5, v0, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    new-instance v8, Lorg/telegram/messenger/AndroidUtilities$LinkMovementMethodMy;

    invoke-direct {v8}, Lorg/telegram/messenger/AndroidUtilities$LinkMovementMethodMy;-><init>()V

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 279
    iget-object v5, v0, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    const/high16 v13, 0x41000000    # 8.0f

    const/4 v8, -0x2

    const/high16 v11, 0x42680000    # 58.0f

    const/high16 v12, 0x41d80000    # 27.0f

    invoke-static/range {v8 .. v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v0, v5, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 281
    new-instance v5, Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v5, v1}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    .line 282
    sget-object v8, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 283
    iget-object v5, v0, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_undo_background:I

    invoke-direct {v0, v8}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(I)I

    move-result v9

    const/high16 v10, -0x1000000

    or-int/2addr v9, v10

    const-string v11, "info1.**"

    invoke-virtual {v5, v11, v9}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    .line 284
    iget-object v5, v0, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v0, v8}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(I)I

    move-result v9

    or-int/2addr v9, v10

    const-string v10, "info2.**"

    invoke-virtual {v5, v10, v9}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    .line 285
    iget-object v5, v0, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const-string v9, "luc12.**"

    invoke-direct {v0, v6}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(I)I

    move-result v10

    invoke-virtual {v5, v9, v10}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    .line 286
    iget-object v5, v0, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const-string v9, "luc11.**"

    invoke-direct {v0, v6}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(I)I

    move-result v10

    invoke-virtual {v5, v9, v10}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    .line 287
    iget-object v5, v0, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const-string v9, "luc10.**"

    invoke-direct {v0, v6}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(I)I

    move-result v10

    invoke-virtual {v5, v9, v10}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    .line 288
    iget-object v5, v0, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const-string v9, "luc9.**"

    invoke-direct {v0, v6}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(I)I

    move-result v10

    invoke-virtual {v5, v9, v10}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    .line 289
    iget-object v5, v0, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const-string v9, "luc8.**"

    invoke-direct {v0, v6}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(I)I

    move-result v10

    invoke-virtual {v5, v9, v10}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    .line 290
    iget-object v5, v0, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const-string v9, "luc7.**"

    invoke-direct {v0, v6}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(I)I

    move-result v10

    invoke-virtual {v5, v9, v10}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    .line 291
    iget-object v5, v0, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const-string v9, "luc6.**"

    invoke-direct {v0, v6}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(I)I

    move-result v10

    invoke-virtual {v5, v9, v10}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    .line 292
    iget-object v5, v0, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const-string v9, "luc5.**"

    invoke-direct {v0, v6}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(I)I

    move-result v10

    invoke-virtual {v5, v9, v10}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    .line 293
    iget-object v5, v0, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const-string v9, "luc4.**"

    invoke-direct {v0, v6}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(I)I

    move-result v10

    invoke-virtual {v5, v9, v10}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    .line 294
    iget-object v5, v0, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const-string v9, "luc3.**"

    invoke-direct {v0, v6}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(I)I

    move-result v10

    invoke-virtual {v5, v9, v10}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    .line 295
    iget-object v5, v0, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const-string v9, "luc2.**"

    invoke-direct {v0, v6}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(I)I

    move-result v10

    invoke-virtual {v5, v9, v10}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    .line 296
    iget-object v5, v0, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const-string v9, "luc1.**"

    invoke-direct {v0, v6}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(I)I

    move-result v10

    invoke-virtual {v5, v9, v10}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    .line 297
    iget-object v5, v0, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const-string v9, "Oval.**"

    invoke-direct {v0, v6}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(I)I

    move-result v10

    invoke-virtual {v5, v9, v10}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    .line 298
    iget-object v5, v0, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v15, 0x0

    const/16 v9, 0x36

    const/high16 v10, -0x40000000    # -2.0f

    const/16 v11, 0x13

    const/high16 v12, 0x40400000    # 3.0f

    const/4 v13, 0x0

    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v0, v5, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 300
    new-instance v5, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v5, v1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/Components/UndoView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v9, 0x41f00000    # 30.0f

    .line 301
    invoke-static {v9}, Lcom/exteragram/messenger/ExteraConfig;->getAvatarCorners(F)I

    move-result v9

    invoke-virtual {v5, v9}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 302
    iget-object v5, v0, Lorg/telegram/ui/Components/UndoView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v9, 0x1e

    const/high16 v10, 0x41f00000    # 30.0f

    const/high16 v12, 0x41700000    # 15.0f

    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v0, v5, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 304
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/Components/UndoView;->undoButton:Landroid/widget/LinearLayout;

    .line 305
    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 306
    iget-object v5, v0, Lorg/telegram/ui/Components/UndoView;->undoButton:Landroid/widget/LinearLayout;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(I)I

    move-result v9

    const v10, 0x22ffffff

    and-int/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    invoke-static {v9, v11, v12}, Lorg/telegram/ui/ActionBar/Theme;->createRadSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 307
    iget-object v5, v0, Lorg/telegram/ui/Components/UndoView;->undoButton:Landroid/widget/LinearLayout;

    const/high16 v16, 0x41300000    # 11.0f

    const/16 v17, 0x0

    const/4 v11, -0x2

    const/high16 v12, -0x40000000    # -2.0f

    const/16 v13, 0x15

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v0, v5, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 308
    iget-object v5, v0, Lorg/telegram/ui/Components/UndoView;->undoButton:Landroid/widget/LinearLayout;

    new-instance v9, Lorg/telegram/ui/Components/UndoView$$ExternalSyntheticLambda0;

    invoke-direct {v9, v0}, Lorg/telegram/ui/Components/UndoView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/UndoView;)V

    invoke-virtual {v5, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 315
    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/Components/UndoView;->undoImageView:Landroid/widget/ImageView;

    .line 316
    sget v9, Lorg/telegram/messenger/R$drawable;->chats_undo:I

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 317
    iget-object v5, v0, Lorg/telegram/ui/Components/UndoView;->undoImageView:Landroid/widget/ImageView;

    new-instance v9, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(I)I

    move-result v11

    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v9, v11, v12}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 318
    iget-object v5, v0, Lorg/telegram/ui/Components/UndoView;->undoButton:Landroid/widget/LinearLayout;

    iget-object v9, v0, Lorg/telegram/ui/Components/UndoView;->undoImageView:Landroid/widget/ImageView;

    const/16 v16, 0x0

    const/16 v17, 0x4

    const/4 v11, -0x2

    const/4 v12, -0x2

    const/16 v13, 0x13

    const/4 v14, 0x4

    const/4 v15, 0x4

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v5, v9, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 320
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/Components/UndoView;->undoTextView:Landroid/widget/TextView;

    const/high16 v1, 0x41600000    # 14.0f

    .line 321
    invoke-virtual {v5, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 322
    iget-object v1, v0, Lorg/telegram/ui/Components/UndoView;->undoTextView:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 323
    iget-object v1, v0, Lorg/telegram/ui/Components/UndoView;->undoTextView:Landroid/widget/TextView;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(I)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 324
    iget-object v1, v0, Lorg/telegram/ui/Components/UndoView;->undoTextView:Landroid/widget/TextView;

    sget v5, Lorg/telegram/messenger/R$string;->UndoNoCaps:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 325
    iget-object v1, v0, Lorg/telegram/ui/Components/UndoView;->undoButton:Landroid/widget/LinearLayout;

    iget-object v5, v0, Lorg/telegram/ui/Components/UndoView;->undoTextView:Landroid/widget/TextView;

    const/16 v16, 0x8

    const/4 v11, -0x2

    const/4 v14, 0x6

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v1, v5, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 327
    new-instance v1, Landroid/graphics/RectF;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    const/high16 v7, 0x42040000    # 33.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    invoke-direct {v1, v5, v2, v9, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, v0, Lorg/telegram/ui/Components/UndoView;->rect:Landroid/graphics/RectF;

    .line 329
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v0, Lorg/telegram/ui/Components/UndoView;->progressPaint:Landroid/graphics/Paint;

    .line 330
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 331
    iget-object v1, v0, Lorg/telegram/ui/Components/UndoView;->progressPaint:Landroid/graphics/Paint;

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 332
    iget-object v1, v0, Lorg/telegram/ui/Components/UndoView;->progressPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 333
    iget-object v1, v0, Lorg/telegram/ui/Components/UndoView;->progressPaint:Landroid/graphics/Paint;

    invoke-direct {v0, v6}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 335
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1, v4}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v1, v0, Lorg/telegram/ui/Components/UndoView;->textPaint:Landroid/text/TextPaint;

    const/high16 v2, 0x41400000    # 12.0f

    .line 336
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 337
    iget-object v1, v0, Lorg/telegram/ui/Components/UndoView;->textPaint:Landroid/text/TextPaint;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 338
    iget-object v1, v0, Lorg/telegram/ui/Components/UndoView;->textPaint:Landroid/text/TextPaint;

    invoke-direct {v0, v6}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 340
    invoke-virtual {v0, v3}, Landroid/view/View;->setWillNotDraw(Z)V

    const/high16 v1, 0x41200000    # 10.0f

    .line 341
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-direct {v0, v8}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(I)I

    move-result v2

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Components/UndoView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 343
    new-instance v1, Lorg/telegram/ui/Components/UndoView$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lorg/telegram/ui/Components/UndoView$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 v1, 0x4

    .line 345
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private getThemedColor(I)I
    .locals 1

    .line 1760
    iget-object v0, p0, Lorg/telegram/ui/Components/UndoView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    return p1
.end method

.method private hasSubInfo()Z
    .locals 2

    .line 370
    iget v0, p0, Lorg/telegram/ui/Components/UndoView;->currentAction:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_2

    const/16 v1, 0x18

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const/16 v1, 0xd

    if-eq v0, v1, :cond_2

    const/16 v1, 0xe

    if-eq v0, v1, :cond_2

    const/16 v1, 0x4a

    if-eq v0, v1, :cond_2

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/UndoView;->currentAccount:I

    .line 372
    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogFilters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/UndoView;->currentAction:I

    sget v1, Lorg/telegram/ui/Components/UndoView;->ACTION_RINGTONE_ADDED:I

    if-eq v0, v1, :cond_2

    const/16 v1, 0x55

    if-eq v0, v1, :cond_2

    const/16 v1, 0x58

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/UndoView;->currentInfoObject2:Ljava/lang/Object;

    if-eqz v0, :cond_1

    check-cast v0, Ljava/lang/Integer;

    .line 373
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private isTooltipAction()Z
    .locals 2

    .line 357
    iget v0, p0, Lorg/telegram/ui/Components/UndoView;->currentAction:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    const/16 v1, 0x57

    if-eq v0, v1, :cond_1

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    const/16 v1, 0xe

    if-eq v0, v1, :cond_1

    const/16 v1, 0x13

    if-eq v0, v1, :cond_1

    const/16 v1, 0x14

    if-eq v0, v1, :cond_1

    const/16 v1, 0x15

    if-eq v0, v1, :cond_1

    const/16 v1, 0x16

    if-eq v0, v1, :cond_1

    const/16 v1, 0x17

    if-eq v0, v1, :cond_1

    const/16 v1, 0x1e

    if-eq v0, v1, :cond_1

    const/16 v1, 0x1f

    if-eq v0, v1, :cond_1

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    const/16 v1, 0x66

    if-eq v0, v1, :cond_1

    const/16 v1, 0x21

    if-eq v0, v1, :cond_1

    const/16 v1, 0x22

    if-eq v0, v1, :cond_1

    const/16 v1, 0x23

    if-eq v0, v1, :cond_1

    const/16 v1, 0x24

    if-eq v0, v1, :cond_1

    const/16 v1, 0x4a

    if-eq v0, v1, :cond_1

    const/16 v1, 0x25

    if-eq v0, v1, :cond_1

    const/16 v1, 0x26

    if-eq v0, v1, :cond_1

    const/16 v1, 0x27

    if-eq v0, v1, :cond_1

    const/16 v1, 0x28

    if-eq v0, v1, :cond_1

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_1

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_1

    const/16 v1, 0x4d

    if-eq v0, v1, :cond_1

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_1

    const/16 v1, 0x4e

    if-eq v0, v1, :cond_1

    const/16 v1, 0x4f

    if-eq v0, v1, :cond_1

    const/16 v1, 0x64

    if-eq v0, v1, :cond_1

    const/16 v1, 0x65

    if-eq v0, v1, :cond_1

    sget v1, Lorg/telegram/ui/Components/UndoView;->ACTION_RINGTONE_ADDED:I

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

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 1

    .line 309
    invoke-virtual {p0}, Lorg/telegram/ui/Components/UndoView;->canUndo()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 312
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/UndoView;->hide(ZI)V

    return-void
.end method

.method private synthetic lambda$showWithAction$2(Landroid/view/View;)V
    .locals 1

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 526
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/UndoView;->hide(ZI)V

    return-void
.end method

.method private synthetic lambda$showWithAction$4(Lorg/telegram/tgnet/TLObject;)V
    .locals 2

    .line 644
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$PaymentReceipt;

    if-eqz v0, :cond_0

    .line 645
    iget-object v0, p0, Lorg/telegram/ui/Components/UndoView;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    new-instance v1, Lorg/telegram/ui/PaymentFormActivity;

    check-cast p1, Lorg/telegram/tgnet/TLRPC$PaymentReceipt;

    invoke-direct {v1, p1}, Lorg/telegram/ui/PaymentFormActivity;-><init>(Lorg/telegram/tgnet/TLRPC$PaymentReceipt;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_0
    return-void
.end method

.method private synthetic lambda$showWithAction$5(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 643
    new-instance p2, Lorg/telegram/ui/Components/UndoView$$ExternalSyntheticLambda7;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Components/UndoView$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/UndoView;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$showWithAction$6(Lorg/telegram/tgnet/TLRPC$Message;Landroid/view/View;)V
    .locals 2

    const/4 p2, 0x1

    .line 639
    invoke-virtual {p0, p2, p2}, Lorg/telegram/ui/Components/UndoView;->hide(ZI)V

    .line 640
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentReceipt;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentReceipt;-><init>()V

    .line 641
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    iput v0, p2, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentReceipt;->msg_id:I

    .line 642
    iget-object v0, p0, Lorg/telegram/ui/Components/UndoView;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MessagesController;->getInputPeer(Lorg/telegram/tgnet/TLRPC$Peer;)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object p1

    iput-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentReceipt;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 643
    iget-object p1, p0, Lorg/telegram/ui/Components/UndoView;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/Components/UndoView$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/UndoView$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/UndoView;)V

    const/4 v1, 0x2

    invoke-virtual {p1, p2, v0, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    return-void
.end method

.method private synthetic lambda$showWithAction$7()V
    .locals 3

    .line 1154
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v1, 0x3

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private updatePosition()V
    .locals 2

    .line 1750
    iget v0, p0, Lorg/telegram/ui/Components/UndoView;->enterOffset:F

    iget v1, p0, Lorg/telegram/ui/Components/UndoView;->enterOffsetMargin:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/Components/UndoView;->additionalTranslationY:F

    sub-float/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 1751
    invoke-virtual {p0}, Lorg/telegram/ui/Components/UndoView;->invalidate()V

    return-void
.end method


# virtual methods
.method protected canUndo()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public didPressUrl(Landroid/text/style/CharacterStyle;)V
    .locals 0

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 1623
    iget v0, p0, Lorg/telegram/ui/Components/UndoView;->additionalTranslationY:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 1624
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1626
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lorg/telegram/ui/Components/UndoView;->enterOffset:F

    sub-float/2addr v0, v2

    const/high16 v2, 0x41100000    # 9.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    cmpl-float v2, v0, v1

    if-lez v2, :cond_0

    .line 1628
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v1, v2, v0}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 1629
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1631
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    .line 1633
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1756
    iget-object v0, p0, Lorg/telegram/ui/Components/UndoView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getCurrentInfoObject()Ljava/lang/Object;
    .locals 1

    .line 389
    iget-object v0, p0, Lorg/telegram/ui/Components/UndoView;->currentInfoObject:Ljava/lang/Object;

    return-object v0
.end method

.method public getEnterOffset()F
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1738
    iget v0, p0, Lorg/telegram/ui/Components/UndoView;->enterOffset:F

    return v0
.end method

.method public hide(ZI)V
    .locals 8

    .line 393
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_d

    iget-boolean v0, p0, Lorg/telegram/ui/Components/UndoView;->isShown:Z

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v0, 0x0

    .line 396
    iput-object v0, p0, Lorg/telegram/ui/Components/UndoView;->currentInfoObject:Ljava/lang/Object;

    .line 397
    iput-object v0, p0, Lorg/telegram/ui/Components/UndoView;->currentInfoObject2:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 398
    iput-boolean v1, p0, Lorg/telegram/ui/Components/UndoView;->isShown:Z

    .line 399
    iget-object v2, p0, Lorg/telegram/ui/Components/UndoView;->currentActionRunnable:Ljava/lang/Runnable;

    if-eqz v2, :cond_2

    if-eqz p1, :cond_1

    .line 401
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 403
    :cond_1
    iput-object v0, p0, Lorg/telegram/ui/Components/UndoView;->currentActionRunnable:Ljava/lang/Runnable;

    .line 405
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/Components/UndoView;->currentCancelRunnable:Ljava/lang/Runnable;

    if-eqz v2, :cond_4

    if-nez p1, :cond_3

    .line 407
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 409
    :cond_3
    iput-object v0, p0, Lorg/telegram/ui/Components/UndoView;->currentCancelRunnable:Ljava/lang/Runnable;

    .line 411
    :cond_4
    iget v0, p0, Lorg/telegram/ui/Components/UndoView;->currentAction:I

    const/16 v2, 0x1a

    const/4 v3, 0x1

    if-eqz v0, :cond_5

    if-eq v0, v3, :cond_5

    const/16 v4, 0x5f

    if-eq v0, v4, :cond_5

    if-eq v0, v2, :cond_5

    const/16 v4, 0x1b

    if-ne v0, v4, :cond_8

    :cond_5
    move v0, v1

    .line 412
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/Components/UndoView;->currentDialogIds:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_8

    .line 413
    iget-object v4, p0, Lorg/telegram/ui/Components/UndoView;->currentDialogIds:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 414
    iget v6, p0, Lorg/telegram/ui/Components/UndoView;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget v7, p0, Lorg/telegram/ui/Components/UndoView;->currentAction:I

    if-eqz v7, :cond_7

    if-ne v7, v2, :cond_6

    goto :goto_1

    :cond_6
    move v7, v1

    goto :goto_2

    :cond_7
    :goto_1
    move v7, v3

    :goto_2
    invoke-virtual {v6, v4, v5, v7, p1}, Lorg/telegram/messenger/MessagesController;->removeDialogAction(JZZ)V

    .line 415
    iget v6, p0, Lorg/telegram/ui/Components/UndoView;->currentAction:I

    invoke-virtual {p0, v4, v5, v6}, Lorg/telegram/ui/Components/UndoView;->onRemoveDialogAction(JI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_8
    const/high16 p1, 0x3f800000    # 1.0f

    const/high16 v0, -0x40800000    # -1.0f

    if-eqz p2, :cond_b

    .line 419
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    if-ne p2, v3, :cond_a

    .line 421
    iget-boolean p2, p0, Lorg/telegram/ui/Components/UndoView;->fromTop:Z

    if-eqz p2, :cond_9

    move p1, v0

    :cond_9
    iget p2, p0, Lorg/telegram/ui/Components/UndoView;->enterOffsetMargin:I

    iget v0, p0, Lorg/telegram/ui/Components/UndoView;->undoViewHeight:I

    add-int/2addr p2, v0

    iget v0, p0, Lorg/telegram/ui/Components/UndoView;->bottomInset:I

    add-int/2addr p2, v0

    int-to-float p2, p2

    mul-float/2addr p1, p2

    new-array p2, v3, [F

    aput p1, p2, v1

    const-string p1, "enterOffset"

    invoke-static {p0, p1, p2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    new-array p2, v3, [Landroid/animation/Animator;

    aput-object p1, p2, v1

    invoke-virtual {v2, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 p1, 0xfa

    .line 422
    invoke-virtual {v2, p1, p2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    goto :goto_3

    .line 424
    :cond_a
    new-array p1, v3, [F

    const p2, 0x3f4ccccd    # 0.8f

    aput p2, p1, v1

    .line 425
    sget-object v0, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    invoke-static {p0, v0, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    new-array v0, v3, [F

    aput p2, v0, v1

    .line 426
    sget-object p2, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    invoke-static {p0, p2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    new-array v0, v3, [F

    const/4 v4, 0x0

    aput v4, v0, v1

    .line 427
    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-static {p0, v4, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/Animator;

    aput-object p1, v4, v1

    aput-object p2, v4, v3

    const/4 p1, 0x2

    aput-object v0, v4, p1

    .line 424
    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 p1, 0xb4

    .line 428
    invoke-virtual {v2, p1, p2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 430
    :goto_3
    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 431
    new-instance p1, Lorg/telegram/ui/Components/UndoView$2;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/UndoView$2;-><init>(Lorg/telegram/ui/Components/UndoView;)V

    invoke-virtual {v2, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 440
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    return-void

    .line 442
    :cond_b
    iget-boolean p2, p0, Lorg/telegram/ui/Components/UndoView;->fromTop:Z

    if-eqz p2, :cond_c

    move p1, v0

    :cond_c
    iget p2, p0, Lorg/telegram/ui/Components/UndoView;->enterOffsetMargin:I

    iget v0, p0, Lorg/telegram/ui/Components/UndoView;->undoViewHeight:I

    add-int/2addr p2, v0

    iget v0, p0, Lorg/telegram/ui/Components/UndoView;->bottomInset:I

    add-int/2addr p2, v0

    int-to-float p2, p2

    mul-float/2addr p1, p2

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/UndoView;->setEnterOffset(F)V

    const/4 p1, 0x4

    .line 443
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_d
    :goto_4
    return-void
.end method

.method public invalidate()V
    .locals 1

    .line 1720
    invoke-super {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 1721
    iget-object v0, p0, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 1722
    iget-object v0, p0, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public isMultilineSubInfo()Z
    .locals 2

    .line 377
    iget v0, p0, Lorg/telegram/ui/Components/UndoView;->currentAction:I

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    const/16 v1, 0xf

    if-eq v0, v1, :cond_1

    const/16 v1, 0x18

    if-eq v0, v1, :cond_1

    const/16 v1, 0x4a

    if-eq v0, v1, :cond_1

    sget v1, Lorg/telegram/ui/Components/UndoView;->ACTION_RINGTONE_ADDED:I

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

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    .line 1639
    iget v0, p0, Lorg/telegram/ui/Components/UndoView;->additionalTranslationY:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_1

    .line 1640
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1642
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    iget v3, p0, Lorg/telegram/ui/Components/UndoView;->enterOffset:F

    sub-float/2addr v0, v3

    iget v3, p0, Lorg/telegram/ui/Components/UndoView;->enterOffsetMargin:I

    int-to-float v3, v3

    add-float/2addr v0, v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v0, v3

    cmpl-float v3, v0, v1

    if-lez v3, :cond_0

    .line 1644
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v1, v1, v3, v0}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 1645
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1647
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/UndoView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1648
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 1650
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/UndoView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1653
    :goto_0
    iget v0, p0, Lorg/telegram/ui/Components/UndoView;->currentAction:I

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    if-eq v0, v5, :cond_2

    const/16 v6, 0x5f

    if-eq v0, v6, :cond_2

    if-eqz v0, :cond_2

    const/16 v6, 0x1b

    if-eq v0, v6, :cond_2

    const/16 v6, 0x1a

    if-eq v0, v6, :cond_2

    const/16 v6, 0x51

    if-eq v0, v6, :cond_2

    const/16 v6, 0x58

    if-ne v0, v6, :cond_c

    .line 1654
    :cond_2
    iget-wide v6, p0, Lorg/telegram/ui/Components/UndoView;->timeLeft:J

    cmp-long v0, v6, v3

    const/4 v8, 0x0

    if-lez v0, :cond_3

    long-to-float v0, v6

    const/high16 v6, 0x447a0000    # 1000.0f

    div-float/2addr v0, v6

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v0, v6

    goto :goto_1

    :cond_3
    move v0, v8

    .line 1655
    :goto_1
    iget v6, p0, Lorg/telegram/ui/Components/UndoView;->prevSeconds:I

    if-eq v6, v0, :cond_5

    .line 1656
    iput v0, p0, Lorg/telegram/ui/Components/UndoView;->prevSeconds:I

    .line 1657
    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v6, v5, [Ljava/lang/Object;

    aput-object v0, v6, v8

    const-string v0, "%d"

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/UndoView;->timeLeftString:Ljava/lang/String;

    .line 1658
    iget-object v6, p0, Lorg/telegram/ui/Components/UndoView;->timeLayout:Landroid/text/StaticLayout;

    if-eqz v6, :cond_4

    .line 1659
    iput-object v6, p0, Lorg/telegram/ui/Components/UndoView;->timeLayoutOut:Landroid/text/StaticLayout;

    .line 1660
    iput v1, p0, Lorg/telegram/ui/Components/UndoView;->timeReplaceProgress:F

    .line 1661
    iget v1, p0, Lorg/telegram/ui/Components/UndoView;->textWidth:I

    iput v1, p0, Lorg/telegram/ui/Components/UndoView;->textWidthOut:I

    .line 1663
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/Components/UndoView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/UndoView;->textWidth:I

    .line 1664
    new-instance v6, Landroid/text/StaticLayout;

    iget-object v7, p0, Lorg/telegram/ui/Components/UndoView;->timeLeftString:Ljava/lang/String;

    iget-object v8, p0, Lorg/telegram/ui/Components/UndoView;->textPaint:Landroid/text/TextPaint;

    sget-object v10, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const v9, 0x7fffffff

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct/range {v6 .. v13}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v6, p0, Lorg/telegram/ui/Components/UndoView;->timeLayout:Landroid/text/StaticLayout;

    .line 1667
    :cond_5
    iget v0, p0, Lorg/telegram/ui/Components/UndoView;->timeReplaceProgress:F

    cmpg-float v1, v0, v2

    if-gez v1, :cond_7

    const v1, 0x3dda740e

    add-float/2addr v0, v1

    .line 1668
    iput v0, p0, Lorg/telegram/ui/Components/UndoView;->timeReplaceProgress:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_6

    .line 1670
    iput v2, p0, Lorg/telegram/ui/Components/UndoView;->timeReplaceProgress:F

    goto :goto_2

    .line 1672
    :cond_6
    invoke-virtual {p0}, Lorg/telegram/ui/Components/UndoView;->invalidate()V

    .line 1676
    :cond_7
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/Components/UndoView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    .line 1678
    iget-object v1, p0, Lorg/telegram/ui/Components/UndoView;->timeLayoutOut:Landroid/text/StaticLayout;

    const/high16 v6, 0x41200000    # 10.0f

    const v7, 0x4189999a    # 17.2f

    if-eqz v1, :cond_8

    iget v1, p0, Lorg/telegram/ui/Components/UndoView;->timeReplaceProgress:F

    cmpg-float v8, v1, v2

    if-gez v8, :cond_8

    .line 1679
    iget-object v8, p0, Lorg/telegram/ui/Components/UndoView;->textPaint:Landroid/text/TextPaint;

    int-to-float v9, v0

    sub-float v1, v2, v1

    mul-float/2addr v9, v1

    float-to-int v1, v9

    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1680
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1681
    iget-object v1, p0, Lorg/telegram/ui/Components/UndoView;->rect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget v8, p0, Lorg/telegram/ui/Components/UndoView;->textWidth:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    sub-float/2addr v1, v8

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    iget v10, p0, Lorg/telegram/ui/Components/UndoView;->timeReplaceProgress:F

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    invoke-virtual {p1, v1, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1682
    iget-object v1, p0, Lorg/telegram/ui/Components/UndoView;->timeLayoutOut:Landroid/text/StaticLayout;

    invoke-virtual {v1, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 1683
    iget-object v1, p0, Lorg/telegram/ui/Components/UndoView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1684
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1687
    :cond_8
    iget-object v1, p0, Lorg/telegram/ui/Components/UndoView;->timeLayout:Landroid/text/StaticLayout;

    if-eqz v1, :cond_b

    .line 1688
    iget v1, p0, Lorg/telegram/ui/Components/UndoView;->timeReplaceProgress:F

    cmpl-float v8, v1, v2

    if-eqz v8, :cond_9

    .line 1689
    iget-object v8, p0, Lorg/telegram/ui/Components/UndoView;->textPaint:Landroid/text/TextPaint;

    int-to-float v9, v0

    mul-float/2addr v9, v1

    float-to-int v1, v9

    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1691
    :cond_9
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1692
    iget-object v1, p0, Lorg/telegram/ui/Components/UndoView;->rect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget v8, p0, Lorg/telegram/ui/Components/UndoView;->textWidth:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    sub-float/2addr v1, v8

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    iget v8, p0, Lorg/telegram/ui/Components/UndoView;->timeReplaceProgress:F

    sub-float v8, v2, v8

    mul-float/2addr v6, v8

    sub-float/2addr v7, v6

    invoke-virtual {p1, v1, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1693
    iget-object v1, p0, Lorg/telegram/ui/Components/UndoView;->timeLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 1694
    iget v1, p0, Lorg/telegram/ui/Components/UndoView;->timeReplaceProgress:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_a

    .line 1695
    iget-object v1, p0, Lorg/telegram/ui/Components/UndoView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1697
    :cond_a
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1702
    :cond_b
    iget-object v7, p0, Lorg/telegram/ui/Components/UndoView;->rect:Landroid/graphics/RectF;

    iget-wide v0, p0, Lorg/telegram/ui/Components/UndoView;->timeLeft:J

    long-to-float v0, v0

    const v1, 0x459c4000    # 5000.0f

    div-float/2addr v0, v1

    const/high16 v1, -0x3c4c0000    # -360.0f

    mul-float v9, v0, v1

    const/4 v10, 0x0

    iget-object v11, p0, Lorg/telegram/ui/Components/UndoView;->progressPaint:Landroid/graphics/Paint;

    const/high16 v8, -0x3d4c0000    # -90.0f

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 1705
    :cond_c
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1706
    iget-wide v6, p0, Lorg/telegram/ui/Components/UndoView;->lastUpdateTime:J

    sub-long v6, v0, v6

    .line 1707
    iget-wide v8, p0, Lorg/telegram/ui/Components/UndoView;->timeLeft:J

    sub-long/2addr v8, v6

    iput-wide v8, p0, Lorg/telegram/ui/Components/UndoView;->timeLeft:J

    .line 1708
    iput-wide v0, p0, Lorg/telegram/ui/Components/UndoView;->lastUpdateTime:J

    cmp-long p1, v8, v3

    if-gtz p1, :cond_d

    .line 1710
    iget p1, p0, Lorg/telegram/ui/Components/UndoView;->hideAnimationType:I

    invoke-virtual {p0, v5, p1}, Lorg/telegram/ui/Components/UndoView;->hide(ZI)V

    .line 1713
    :cond_d
    iget p1, p0, Lorg/telegram/ui/Components/UndoView;->currentAction:I

    const/16 v0, 0x52

    if-eq p1, v0, :cond_e

    .line 1714
    invoke-virtual {p0}, Lorg/telegram/ui/Components/UndoView;->invalidate()V

    :cond_e
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 1611
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    iget v0, p0, Lorg/telegram/ui/Components/UndoView;->undoViewHeight:I

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 1612
    iget-object p1, p0, Lorg/telegram/ui/Components/UndoView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, p2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method protected onRemoveDialogAction(JI)V
    .locals 0

    return-void
.end method

.method public setAdditionalTranslationY(F)V
    .locals 1

    .line 382
    iget v0, p0, Lorg/telegram/ui/Components/UndoView;->additionalTranslationY:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 383
    iput p1, p0, Lorg/telegram/ui/Components/UndoView;->additionalTranslationY:F

    .line 384
    invoke-direct {p0}, Lorg/telegram/ui/Components/UndoView;->updatePosition()V

    :cond_0
    return-void
.end method

.method public setBottomInset(I)V
    .locals 0

    .line 116
    iput p1, p0, Lorg/telegram/ui/Components/UndoView;->bottomInset:I

    return-void
.end method

.method public setColors(II)V
    .locals 1

    .line 349
    iget-object v0, p0, Lorg/telegram/ui/Components/UndoView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/Theme;->setDrawableColor(Landroid/graphics/drawable/Drawable;I)V

    .line 350
    iget-object v0, p0, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 351
    iget-object v0, p0, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 352
    iget-object p2, p0, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/high16 v0, -0x1000000

    or-int/2addr p1, v0

    const-string v0, "info1.**"

    invoke-virtual {p2, v0, p1}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    .line 353
    iget-object p2, p0, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const-string v0, "info2.**"

    invoke-virtual {p2, v0, p1}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    return-void
.end method

.method public setEnterOffset(F)V
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1743
    iget v0, p0, Lorg/telegram/ui/Components/UndoView;->enterOffset:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 1744
    iput p1, p0, Lorg/telegram/ui/Components/UndoView;->enterOffset:F

    .line 1745
    invoke-direct {p0}, Lorg/telegram/ui/Components/UndoView;->updatePosition()V

    :cond_0
    return-void
.end method

.method public setEnterOffsetMargin(I)V
    .locals 0

    .line 1602
    iput p1, p0, Lorg/telegram/ui/Components/UndoView;->enterOffsetMargin:I

    return-void
.end method

.method public setHideAnimationType(I)V
    .locals 0

    .line 1730
    iput p1, p0, Lorg/telegram/ui/Components/UndoView;->hideAnimationType:I

    return-void
.end method

.method public setInfoText(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1726
    iput-object p1, p0, Lorg/telegram/ui/Components/UndoView;->infoText:Ljava/lang/CharSequence;

    return-void
.end method

.method public showWithAction(JILjava/lang/Object;)V
    .locals 8

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move-object v4, p4

    .line 460
    invoke-virtual/range {v0 .. v7}, Lorg/telegram/ui/Components/UndoView;->showWithAction(JILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public showWithAction(JILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 2

    move-wide v0, p1

    .line 472
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 473
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object p1, p0

    .line 474
    invoke-virtual/range {p1 .. p7}, Lorg/telegram/ui/Components/UndoView;->showWithAction(Ljava/util/ArrayList;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public showWithAction(JILjava/lang/Object;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 8

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move-object v4, p4

    move-object v6, p5

    move-object v7, p6

    .line 468
    invoke-virtual/range {v0 .. v7}, Lorg/telegram/ui/Components/UndoView;->showWithAction(JILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public showWithAction(JILjava/lang/Runnable;)V
    .locals 8

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move-object v6, p4

    .line 456
    invoke-virtual/range {v0 .. v7}, Lorg/telegram/ui/Components/UndoView;->showWithAction(JILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public showWithAction(JILjava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 8

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move-object v6, p4

    move-object v7, p5

    .line 464
    invoke-virtual/range {v0 .. v7}, Lorg/telegram/ui/Components/UndoView;->showWithAction(JILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public showWithAction(Ljava/util/ArrayList;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 29

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    .line 478
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->shouldShowClipboardToast()Z

    move-result v7

    const/16 v8, 0x3a

    const/16 v9, 0x50

    const/16 v10, 0x3c

    const/16 v11, 0x3b

    const/16 v12, 0x39

    const/16 v13, 0x38

    const/16 v14, 0x34

    const/16 v15, 0x21

    if-nez v7, :cond_0

    iget v7, v1, Lorg/telegram/ui/Components/UndoView;->currentAction:I

    if-eq v7, v14, :cond_bb

    if-eq v7, v13, :cond_bb

    if-eq v7, v12, :cond_bb

    if-eq v7, v8, :cond_bb

    if-eq v7, v11, :cond_bb

    if-eq v7, v10, :cond_bb

    if-eq v7, v9, :cond_bb

    if-ne v7, v15, :cond_0

    goto/16 :goto_59

    .line 481
    :cond_0
    iget-object v7, v1, Lorg/telegram/ui/Components/UndoView;->currentActionRunnable:Ljava/lang/Runnable;

    if-eqz v7, :cond_1

    .line 482
    invoke-interface {v7}, Ljava/lang/Runnable;->run()V

    :cond_1
    const/4 v7, 0x1

    .line 484
    iput-boolean v7, v1, Lorg/telegram/ui/Components/UndoView;->isShown:Z

    .line 485
    iput-object v5, v1, Lorg/telegram/ui/Components/UndoView;->currentActionRunnable:Ljava/lang/Runnable;

    .line 486
    iput-object v6, v1, Lorg/telegram/ui/Components/UndoView;->currentCancelRunnable:Ljava/lang/Runnable;

    .line 487
    iput-object v0, v1, Lorg/telegram/ui/Components/UndoView;->currentDialogIds:Ljava/util/ArrayList;

    const/4 v9, 0x0

    .line 488
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v10, v17

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    .line 489
    iput v2, v1, Lorg/telegram/ui/Components/UndoView;->currentAction:I

    const-wide/16 v13, 0x1388

    .line 490
    iput-wide v13, v1, Lorg/telegram/ui/Components/UndoView;->timeLeft:J

    .line 491
    iput-object v3, v1, Lorg/telegram/ui/Components/UndoView;->currentInfoObject:Ljava/lang/Object;

    .line 492
    iput-object v4, v1, Lorg/telegram/ui/Components/UndoView;->currentInfoObject2:Ljava/lang/Object;

    .line 493
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    iput-wide v13, v1, Lorg/telegram/ui/Components/UndoView;->lastUpdateTime:J

    .line 494
    iget-object v13, v1, Lorg/telegram/ui/Components/UndoView;->undoTextView:Landroid/widget/TextView;

    sget v14, Lorg/telegram/messenger/R$string;->UndoNoCaps:I

    invoke-static {v14}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 495
    iget-object v13, v1, Lorg/telegram/ui/Components/UndoView;->undoImageView:Landroid/widget/ImageView;

    invoke-virtual {v13, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 496
    iget-object v13, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v13, v9, v9, v9, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 497
    iget-object v13, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-virtual {v13, v14}, Landroid/view/View;->setScaleX(F)V

    .line 498
    iget-object v13, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v13, v14}, Landroid/view/View;->setScaleY(F)V

    .line 499
    iget-object v13, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/high16 v14, 0x41700000    # 15.0f

    invoke-virtual {v13, v7, v14}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 500
    iget-object v13, v1, Lorg/telegram/ui/Components/UndoView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v8, 0x8

    invoke-virtual {v13, v8}, Landroid/view/View;->setVisibility(I)V

    .line 502
    iget-object v13, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/16 v14, 0x33

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setGravity(I)V

    .line 505
    iget-object v13, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v20, 0x42680000    # 58.0f

    .line 506
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    iput v14, v13, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 508
    iget-object v13, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v14, -0x2

    .line 509
    iput v14, v13, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/high16 v21, 0x41500000    # 13.0f

    .line 510
    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    iput v8, v13, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 511
    iput v9, v13, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 513
    iget-object v8, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget-object v15, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v8, v15}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 514
    iget-object v8, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v15, 0x13

    .line 515
    iput v15, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 516
    iput v9, v8, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iput v9, v8, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const/high16 v15, 0x40400000    # 3.0f

    .line 517
    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    iput v15, v8, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    const/high16 v15, 0x42580000    # 54.0f

    .line 518
    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    iput v15, v8, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 519
    iput v14, v8, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 521
    iget-object v15, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v15, v9}, Landroid/widget/TextView;->setMinHeight(I)V

    const/4 v15, 0x0

    if-nez v5, :cond_2

    if-eqz v6, :cond_3

    .line 525
    :cond_2
    sget v6, Lorg/telegram/ui/Components/UndoView;->ACTION_RINGTONE_ADDED:I

    if-ne v2, v6, :cond_4

    .line 526
    :cond_3
    new-instance v6, Lorg/telegram/ui/Components/UndoView$$ExternalSyntheticLambda2;

    invoke-direct {v6, v1}, Lorg/telegram/ui/Components/UndoView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/UndoView;)V

    invoke-virtual {v1, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 527
    invoke-virtual {v1, v15}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    .line 529
    :cond_4
    invoke-virtual {v1, v15}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 530
    new-instance v6, Lorg/telegram/ui/Components/UndoView$$ExternalSyntheticLambda3;

    invoke-direct {v6}, Lorg/telegram/ui/Components/UndoView$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {v1, v6}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 533
    :goto_0
    iget-object v6, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v6, v15}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 535
    invoke-direct {v1}, Lorg/telegram/ui/Components/UndoView;->isTooltipAction()Z

    move-result v6

    move-object/from16 v23, v8

    const/high16 v24, 0x41000000    # 8.0f

    const/high16 v25, 0x40c00000    # 6.0f

    const-string v14, ""

    const/16 v7, 0x24

    if-eqz v6, :cond_56

    .line 543
    sget v0, Lorg/telegram/ui/Components/UndoView;->ACTION_RINGTONE_ADDED:I

    if-ne v2, v0, :cond_5

    .line 544
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 545
    sget v0, Lorg/telegram/messenger/R$string;->SoundAdded:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 546
    sget v2, Lorg/telegram/messenger/R$string;->SoundAddedSubtitle:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v5}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    .line 547
    iput-object v15, v1, Lorg/telegram/ui/Components/UndoView;->currentActionRunnable:Ljava/lang/Runnable;

    .line 548
    sget v3, Lorg/telegram/messenger/R$raw;->sound_download:I

    const-wide/16 v4, 0xfa0

    .line 549
    iput-wide v4, v1, Lorg/telegram/ui/Components/UndoView;->timeLeft:J

    move-object v15, v2

    goto/16 :goto_26

    :cond_5
    const/16 v0, 0x4a

    if-ne v2, v0, :cond_6

    .line 551
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 552
    sget v0, Lorg/telegram/messenger/R$string;->ReportChatSent:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 553
    sget v2, Lorg/telegram/messenger/R$string;->ReportSentInfo:I

    new-array v3, v9, [Ljava/lang/Object;

    const-string v4, "ReportSentInfo"

    invoke-static {v4, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 554
    sget v3, Lorg/telegram/messenger/R$raw;->ic_admin:I

    const-wide/16 v4, 0xfa0

    .line 555
    iput-wide v4, v1, Lorg/telegram/ui/Components/UndoView;->timeLeft:J

    goto/16 :goto_26

    :cond_6
    const/16 v0, 0x22

    const/high16 v5, 0x41400000    # 12.0f

    if-ne v2, v0, :cond_8

    .line 557
    move-object v0, v3

    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    .line 558
    move-object v2, v4

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 559
    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isChannelOrGiga(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 560
    sget v2, Lorg/telegram/messenger/R$string;->VoipChannelInvitedUser:I

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v6, v4, [Ljava/lang/Object;

    aput-object v3, v6, v9

    const-string v3, "VoipChannelInvitedUser"

    invoke-static {v3, v2, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    goto :goto_1

    :cond_7
    const/4 v4, 0x1

    .line 562
    sget v2, Lorg/telegram/messenger/R$string;->VoipGroupInvitedUser:I

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v3

    new-array v6, v4, [Ljava/lang/Object;

    aput-object v3, v6, v9

    const-string v3, "VoipGroupInvitedUser"

    invoke-static {v3, v2, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    .line 566
    :goto_1
    new-instance v3, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v3}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    .line 567
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/AvatarDrawable;->setTextSize(I)V

    .line 568
    iget v4, v1, Lorg/telegram/ui/Components/UndoView;->currentAccount:I

    invoke-virtual {v3, v4, v0}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILorg/telegram/tgnet/TLRPC$User;)V

    .line 569
    iget-object v4, v1, Lorg/telegram/ui/Components/UndoView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v4, v0, v3}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    .line 570
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    const-wide/16 v3, 0xbb8

    .line 571
    iput-wide v3, v1, Lorg/telegram/ui/Components/UndoView;->timeLeft:J

    move-object v0, v2

    :goto_2
    move v3, v9

    goto/16 :goto_26

    :cond_8
    const/16 v0, 0x2c

    if-ne v2, v0, :cond_d

    .line 573
    move-object v0, v4

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 574
    instance-of v2, v3, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v2, :cond_a

    .line 575
    move-object v2, v3

    check-cast v2, Lorg/telegram/tgnet/TLRPC$User;

    .line 576
    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannelOrGiga(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 577
    sget v0, Lorg/telegram/messenger/R$string;->VoipChannelUserJoined:I

    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    new-array v6, v4, [Ljava/lang/Object;

    aput-object v2, v6, v9

    invoke-static {v0, v6}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    goto :goto_3

    :cond_9
    const/4 v4, 0x1

    .line 579
    sget v0, Lorg/telegram/messenger/R$string;->VoipChatUserJoined:I

    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v2

    new-array v6, v4, [Ljava/lang/Object;

    aput-object v2, v6, v9

    invoke-static {v0, v6}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    goto :goto_3

    .line 581
    :cond_a
    instance-of v2, v3, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v2, :cond_c

    .line 582
    move-object v2, v3

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 583
    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannelOrGiga(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 584
    sget v0, Lorg/telegram/messenger/R$string;->VoipChannelChatJoined:I

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v6, v4, [Ljava/lang/Object;

    aput-object v2, v6, v9

    invoke-static {v0, v6}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    goto :goto_3

    :cond_b
    const/4 v4, 0x1

    .line 586
    sget v0, Lorg/telegram/messenger/R$string;->VoipChatChatJoined:I

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    new-array v6, v4, [Ljava/lang/Object;

    aput-object v2, v6, v9

    invoke-static {v0, v6}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    goto :goto_3

    :cond_c
    move-object v0, v14

    .line 593
    :goto_3
    new-instance v2, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v2}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    .line 594
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/AvatarDrawable;->setTextSize(I)V

    .line 595
    iget v4, v1, Lorg/telegram/ui/Components/UndoView;->currentAccount:I

    check-cast v3, Lorg/telegram/tgnet/TLObject;

    invoke-virtual {v2, v4, v3}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILorg/telegram/tgnet/TLObject;)V

    .line 596
    iget-object v4, v1, Lorg/telegram/ui/Components/UndoView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v4, v3, v2}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    .line 597
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    const-wide/16 v3, 0xbb8

    .line 598
    iput-wide v3, v1, Lorg/telegram/ui/Components/UndoView;->timeLeft:J

    goto/16 :goto_2

    :cond_d
    const/16 v6, 0x25

    if-ne v2, v6, :cond_10

    .line 600
    new-instance v0, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    .line 601
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/AvatarDrawable;->setTextSize(I)V

    .line 603
    instance-of v2, v3, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v2, :cond_e

    .line 604
    move-object v2, v3

    check-cast v2, Lorg/telegram/tgnet/TLRPC$User;

    .line 605
    iget v3, v1, Lorg/telegram/ui/Components/UndoView;->currentAccount:I

    invoke-virtual {v0, v3, v2}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILorg/telegram/tgnet/TLRPC$User;)V

    .line 606
    iget-object v3, v1, Lorg/telegram/ui/Components/UndoView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v3, v2, v0}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    .line 607
    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v0, v2}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 609
    :cond_e
    move-object v2, v3

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 610
    iget v3, v1, Lorg/telegram/ui/Components/UndoView;->currentAccount:I

    invoke-virtual {v0, v3, v2}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILorg/telegram/tgnet/TLRPC$Chat;)V

    .line 611
    iget-object v3, v1, Lorg/telegram/ui/Components/UndoView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v3, v2, v0}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    .line 612
    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    .line 614
    :goto_4
    move-object v2, v4

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 615
    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isChannelOrGiga(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 616
    sget v2, Lorg/telegram/messenger/R$string;->VoipChannelUserChanged:I

    const/4 v4, 0x1

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v0, v3, v9

    const-string v0, "VoipChannelUserChanged"

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    goto :goto_5

    :cond_f
    const/4 v4, 0x1

    .line 618
    sget v2, Lorg/telegram/messenger/R$string;->VoipGroupUserChanged:I

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v0, v3, v9

    const-string v0, "VoipGroupUserChanged"

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 622
    :goto_5
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    const-wide/16 v5, 0xbb8

    .line 623
    iput-wide v5, v1, Lorg/telegram/ui/Components/UndoView;->timeLeft:J

    goto/16 :goto_2

    :cond_10
    const-wide/16 v5, 0xbb8

    const/16 v8, 0x21

    if-ne v2, v8, :cond_11

    .line 625
    sget v0, Lorg/telegram/messenger/R$string;->VoipGroupCopyInviteLinkCopied:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 627
    sget v3, Lorg/telegram/messenger/R$raw;->voip_invite:I

    .line 628
    iput-wide v5, v1, Lorg/telegram/ui/Components/UndoView;->timeLeft:J

    goto/16 :goto_26

    :cond_11
    const/16 v5, 0x4d

    if-ne v2, v5, :cond_12

    .line 630
    move-object v0, v3

    check-cast v0, Ljava/lang/CharSequence;

    .line 632
    sget v3, Lorg/telegram/messenger/R$raw;->payment_success:I

    const-wide/16 v5, 0x1388

    .line 633
    iput-wide v5, v1, Lorg/telegram/ui/Components/UndoView;->timeLeft:J

    .line 634
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v2, :cond_53

    instance-of v2, v4, Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v2, :cond_53

    .line 635
    move-object v2, v4

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Message;

    .line 636
    invoke-virtual {v1, v15}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 637
    iget-object v4, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v4, v15}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 638
    new-instance v4, Lorg/telegram/ui/Components/UndoView$$ExternalSyntheticLambda4;

    invoke-direct {v4, v1, v2}, Lorg/telegram/ui/Components/UndoView$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/UndoView;Lorg/telegram/tgnet/TLRPC$Message;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_26

    :cond_12
    const/16 v5, 0x1e

    if-ne v2, v5, :cond_14

    .line 652
    instance-of v0, v3, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_13

    .line 653
    move-object v0, v3

    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    .line 654
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 656
    :cond_13
    move-object v0, v3

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 657
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    .line 659
    :goto_6
    sget v2, Lorg/telegram/messenger/R$string;->VoipGroupUserCantNowSpeak:I

    const/4 v4, 0x1

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v0, v3, v9

    const-string v0, "VoipGroupUserCantNowSpeak"

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 661
    sget v3, Lorg/telegram/messenger/R$raw;->voip_muted:I

    const-wide/16 v5, 0xbb8

    .line 662
    iput-wide v5, v1, Lorg/telegram/ui/Components/UndoView;->timeLeft:J

    goto/16 :goto_26

    :cond_14
    const/16 v5, 0x23

    if-ne v2, v5, :cond_17

    .line 665
    instance-of v0, v3, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_15

    .line 666
    move-object v0, v3

    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    .line 667
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 668
    :cond_15
    instance-of v0, v3, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_16

    .line 669
    move-object v0, v3

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 670
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    goto :goto_7

    :cond_16
    move-object v0, v14

    .line 674
    :goto_7
    sget v2, Lorg/telegram/messenger/R$string;->VoipGroupUserCantNowSpeakForYou:I

    const/4 v4, 0x1

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v0, v3, v9

    const-string v0, "VoipGroupUserCantNowSpeakForYou"

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 676
    sget v3, Lorg/telegram/messenger/R$raw;->voip_muted:I

    const-wide/16 v5, 0xbb8

    .line 677
    iput-wide v5, v1, Lorg/telegram/ui/Components/UndoView;->timeLeft:J

    goto/16 :goto_26

    :cond_17
    const/16 v5, 0x1f

    if-ne v2, v5, :cond_19

    .line 680
    instance-of v0, v3, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_18

    .line 681
    move-object v0, v3

    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    .line 682
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    .line 684
    :cond_18
    move-object v0, v3

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 685
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    .line 687
    :goto_8
    sget v2, Lorg/telegram/messenger/R$string;->VoipGroupUserCanNowSpeak:I

    const/4 v4, 0x1

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v0, v3, v9

    const-string v0, "VoipGroupUserCanNowSpeak"

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 689
    sget v3, Lorg/telegram/messenger/R$raw;->voip_unmuted:I

    const-wide/16 v5, 0xbb8

    .line 690
    iput-wide v5, v1, Lorg/telegram/ui/Components/UndoView;->timeLeft:J

    goto/16 :goto_26

    :cond_19
    const/16 v5, 0x26

    if-ne v2, v5, :cond_1b

    .line 692
    instance-of v0, v3, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_1a

    .line 693
    move-object v0, v3

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 694
    sget v2, Lorg/telegram/messenger/R$string;->VoipGroupYouCanNowSpeakIn:I

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v0, v3, v9

    const-string v0, "VoipGroupYouCanNowSpeakIn"

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    goto :goto_9

    .line 696
    :cond_1a
    sget v0, Lorg/telegram/messenger/R$string;->VoipGroupYouCanNowSpeak:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 699
    :goto_9
    sget v3, Lorg/telegram/messenger/R$raw;->voip_allow_talk:I

    const-wide/16 v5, 0xbb8

    .line 700
    iput-wide v5, v1, Lorg/telegram/ui/Components/UndoView;->timeLeft:J

    goto/16 :goto_26

    :cond_1b
    const/16 v5, 0x2a

    if-ne v2, v5, :cond_1d

    .line 702
    move-object v0, v3

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 703
    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannelOrGiga(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 704
    sget v0, Lorg/telegram/messenger/R$string;->VoipChannelSoundMuted:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    goto :goto_a

    .line 706
    :cond_1c
    sget v0, Lorg/telegram/messenger/R$string;->VoipGroupSoundMuted:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 709
    :goto_a
    sget v3, Lorg/telegram/messenger/R$raw;->ic_mute:I

    const-wide/16 v5, 0xbb8

    .line 710
    iput-wide v5, v1, Lorg/telegram/ui/Components/UndoView;->timeLeft:J

    goto/16 :goto_26

    :cond_1d
    const/16 v5, 0x2b

    if-ne v2, v5, :cond_1f

    .line 712
    move-object v0, v3

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 713
    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannelOrGiga(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 714
    sget v0, Lorg/telegram/messenger/R$string;->VoipChannelSoundUnmuted:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    goto :goto_b

    .line 716
    :cond_1e
    sget v0, Lorg/telegram/messenger/R$string;->VoipGroupSoundUnmuted:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 719
    :goto_b
    sget v3, Lorg/telegram/messenger/R$raw;->ic_unmute:I

    const-wide/16 v5, 0xbb8

    .line 720
    iput-wide v5, v1, Lorg/telegram/ui/Components/UndoView;->timeLeft:J

    goto/16 :goto_26

    .line 721
    :cond_1f
    iget v5, v1, Lorg/telegram/ui/Components/UndoView;->currentAction:I

    const/16 v6, 0x27

    if-eq v5, v6, :cond_51

    const/16 v6, 0x64

    if-ne v5, v6, :cond_20

    goto/16 :goto_23

    :cond_20
    const/16 v6, 0x28

    if-eq v5, v6, :cond_4f

    const/16 v6, 0x65

    if-ne v5, v6, :cond_21

    goto/16 :goto_20

    :cond_21
    if-ne v2, v7, :cond_23

    .line 747
    instance-of v0, v3, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_22

    .line 748
    move-object v0, v3

    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    .line 749
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 751
    :cond_22
    move-object v0, v3

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 752
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    .line 754
    :goto_c
    sget v2, Lorg/telegram/messenger/R$string;->VoipGroupUserCanNowSpeakForYou:I

    const/4 v4, 0x1

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v0, v3, v9

    const-string v0, "VoipGroupUserCanNowSpeakForYou"

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 756
    sget v3, Lorg/telegram/messenger/R$raw;->voip_unmuted:I

    const-wide/16 v5, 0xbb8

    .line 757
    iput-wide v5, v1, Lorg/telegram/ui/Components/UndoView;->timeLeft:J

    goto/16 :goto_26

    :cond_23
    const/16 v6, 0x20

    if-eq v2, v6, :cond_4c

    const/16 v6, 0x66

    if-ne v2, v6, :cond_24

    goto/16 :goto_1d

    :cond_24
    const/16 v6, 0x9

    if-eq v2, v6, :cond_4a

    const/16 v6, 0xa

    if-ne v2, v6, :cond_25

    goto/16 :goto_1b

    :cond_25
    const/16 v6, 0x8

    if-ne v2, v6, :cond_26

    .line 785
    move-object v0, v3

    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    .line 786
    sget v2, Lorg/telegram/messenger/R$string;->NowInContacts:I

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x1

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v0, v3, v9

    const-string v0, "NowInContacts"

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 788
    sget v3, Lorg/telegram/messenger/R$raw;->contact_check:I

    goto/16 :goto_26

    :cond_26
    const/16 v6, 0x57

    if-ne v2, v6, :cond_27

    .line 790
    sget v0, Lorg/telegram/messenger/R$string;->ProxyAddedSuccess:I

    new-array v2, v9, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 792
    sget v3, Lorg/telegram/messenger/R$raw;->contact_check:I

    goto/16 :goto_26

    :cond_27
    const/16 v6, 0x16

    if-ne v2, v6, :cond_2d

    .line 794
    invoke-static {v11, v12}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v0

    if-eqz v0, :cond_29

    if-nez v3, :cond_28

    .line 796
    sget v0, Lorg/telegram/messenger/R$string;->MainProfilePhotoSetHint:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 798
    :cond_28
    sget v0, Lorg/telegram/messenger/R$string;->MainProfileVideoSetHint:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 801
    :cond_29
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    neg-long v4, v11

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 802
    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_2b

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v0, :cond_2b

    if-nez v3, :cond_2a

    .line 804
    sget v0, Lorg/telegram/messenger/R$string;->MainChannelProfilePhotoSetHint:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 806
    :cond_2a
    sget v0, Lorg/telegram/messenger/R$string;->MainChannelProfileVideoSetHint:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :cond_2b
    if-nez v3, :cond_2c

    .line 810
    sget v0, Lorg/telegram/messenger/R$string;->MainGroupProfilePhotoSetHint:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 812
    :cond_2c
    sget v0, Lorg/telegram/messenger/R$string;->MainGroupProfileVideoSetHint:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 817
    :goto_d
    sget v3, Lorg/telegram/messenger/R$raw;->contact_check:I

    goto/16 :goto_26

    :cond_2d
    const/16 v6, 0x17

    if-ne v2, v6, :cond_2e

    .line 819
    sget v0, Lorg/telegram/messenger/R$string;->ChatWasMovedToMainList:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 821
    sget v3, Lorg/telegram/messenger/R$raw;->contact_check:I

    goto/16 :goto_26

    :cond_2e
    const/4 v6, 0x6

    if-ne v2, v6, :cond_2f

    .line 823
    sget v0, Lorg/telegram/messenger/R$string;->ArchiveHidden:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 824
    sget v2, Lorg/telegram/messenger/R$string;->ArchiveHiddenInfo:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 825
    sget v3, Lorg/telegram/messenger/R$raw;->chats_swipearchive:I

    const/16 v7, 0x30

    goto/16 :goto_26

    :cond_2f
    const/16 v6, 0xd

    if-ne v5, v6, :cond_31

    .line 828
    sget v2, Lorg/telegram/messenger/R$string;->QuizWellDone:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 829
    sget v3, Lorg/telegram/messenger/R$string;->QuizWellDoneInfo:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 830
    sget v3, Lorg/telegram/messenger/R$raw;->wallet_congrats:I

    :goto_e
    move v7, v0

    :cond_30
    :goto_f
    move-object v0, v2

    goto/16 :goto_26

    :cond_31
    const/16 v6, 0xe

    if-ne v5, v6, :cond_32

    .line 833
    sget v2, Lorg/telegram/messenger/R$string;->QuizWrongAnswer:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 834
    sget v3, Lorg/telegram/messenger/R$string;->QuizWrongAnswerInfo:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 835
    sget v3, Lorg/telegram/messenger/R$raw;->wallet_science:I

    goto :goto_e

    :cond_32
    const/4 v0, 0x7

    if-ne v2, v0, :cond_34

    .line 838
    sget v0, Lorg/telegram/messenger/R$string;->ArchivePinned:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 839
    iget v2, v1, Lorg/telegram/ui/Components/UndoView;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->dialogFilters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_33

    .line 840
    sget v2, Lorg/telegram/messenger/R$string;->ArchivePinnedInfo:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 844
    :cond_33
    sget v3, Lorg/telegram/messenger/R$raw;->chats_infotip:I

    goto/16 :goto_26

    :cond_34
    const/16 v0, 0x14

    if-eq v2, v0, :cond_3f

    const/16 v5, 0x15

    if-ne v2, v5, :cond_35

    goto/16 :goto_16

    :cond_35
    const/16 v0, 0x13

    if-ne v2, v0, :cond_36

    .line 888
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoText:Ljava/lang/CharSequence;

    .line 890
    sget v3, Lorg/telegram/messenger/R$raw;->ic_delete:I

    goto/16 :goto_26

    :cond_36
    const/16 v0, 0x52

    if-ne v2, v0, :cond_38

    .line 892
    move-object v0, v3

    check-cast v0, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 893
    iget-boolean v0, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    if-eqz v0, :cond_37

    sget v0, Lorg/telegram/messenger/R$string;->AttachMediaVideoDeselected:I

    :goto_10
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_37
    sget v0, Lorg/telegram/messenger/R$string;->AttachMediaPhotoDeselected:I

    goto :goto_10

    :cond_38
    const/16 v0, 0x4e

    if-eq v2, v0, :cond_3c

    const/16 v0, 0x4f

    if-ne v2, v0, :cond_39

    goto :goto_12

    :cond_39
    const/4 v0, 0x3

    if-ne v2, v0, :cond_3a

    .line 910
    sget v0, Lorg/telegram/messenger/R$string;->ChatArchived:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    .line 912
    :cond_3a
    sget v0, Lorg/telegram/messenger/R$string;->ChatsArchived:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 914
    :goto_11
    iget v2, v1, Lorg/telegram/ui/Components/UndoView;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->dialogFilters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 915
    sget v2, Lorg/telegram/messenger/R$string;->ChatArchivedInfo:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 919
    :cond_3b
    sget v3, Lorg/telegram/messenger/R$raw;->chats_infotip:I

    goto/16 :goto_26

    .line 897
    :cond_3c
    :goto_12
    move-object v0, v3

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v3, 0x4e

    if-ne v2, v3, :cond_3d

    .line 899
    const-string v2, "PinnedDialogsCount"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v2, v0, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    .line 901
    :cond_3d
    const-string v2, "UnpinnedDialogsCount"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v2, v0, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 904
    :goto_13
    iget v2, v1, Lorg/telegram/ui/Components/UndoView;->currentAction:I

    if-ne v2, v3, :cond_3e

    sget v2, Lorg/telegram/messenger/R$raw;->ic_pin:I

    :goto_14
    move v3, v2

    goto :goto_15

    :cond_3e
    sget v2, Lorg/telegram/messenger/R$raw;->ic_unpin:I

    goto :goto_14

    .line 905
    :goto_15
    instance-of v2, v4, Ljava/lang/Integer;

    if-eqz v2, :cond_53

    .line 906
    move-object v2, v4

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v4, v2

    iput-wide v4, v1, Lorg/telegram/ui/Components/UndoView;->timeLeft:J

    goto/16 :goto_26

    .line 846
    :cond_3f
    :goto_16
    check-cast v4, Lorg/telegram/messenger/MessagesController$DialogFilter;

    .line 847
    iget-object v5, v4, Lorg/telegram/messenger/MessagesController$DialogFilter;->name:Ljava/lang/String;

    .line 848
    iget-object v6, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v6

    invoke-static {v5, v6, v9}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object v5

    .line 849
    iget-object v6, v4, Lorg/telegram/messenger/MessagesController$DialogFilter;->entities:Ljava/util/ArrayList;

    iget-object v8, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v8

    invoke-static {v5, v6, v8}, Lorg/telegram/messenger/MessageObject;->replaceAnimatedEmoji(Ljava/lang/CharSequence;Ljava/util/ArrayList;Landroid/graphics/Paint$FontMetricsInt;)Landroid/text/Spannable;

    move-result-object v5

    .line 850
    iget-boolean v4, v4, Lorg/telegram/messenger/MessagesController$DialogFilter;->title_noanimate:Z

    if-eqz v4, :cond_40

    const/16 v4, 0x1a

    goto :goto_17

    :cond_40
    move v4, v9

    :goto_17
    iput v4, v1, Lorg/telegram/ui/Components/UndoView;->infoTextViewEmojiCacheType:I

    const-wide/16 v16, 0x0

    cmp-long v4, v11, v16

    if-eqz v4, :cond_47

    .line 853
    invoke-static {v11, v12}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v3

    if-eqz v3, :cond_41

    .line 854
    iget v3, v1, Lorg/telegram/ui/Components/UndoView;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-static {v11, v12}, Lorg/telegram/messenger/DialogObject;->getEncryptedChatId(J)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v3

    .line 855
    iget-wide v11, v3, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->user_id:J

    .line 857
    :cond_41
    invoke-static {v11, v12}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 858
    iget v3, v1, Lorg/telegram/ui/Components/UndoView;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    .line 859
    invoke-static {v3}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v4

    .line 860
    invoke-static {v3}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v6

    if-eqz v6, :cond_42

    .line 861
    sget v3, Lorg/telegram/messenger/R$string;->SavedMessages:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_18

    .line 862
    :cond_42
    invoke-static {v3}, Lorg/telegram/messenger/UserObject;->isReplyUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v3

    if-eqz v3, :cond_43

    .line 863
    sget v3, Lorg/telegram/messenger/R$string;->RepliesTitle:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    :cond_43
    :goto_18
    if-ne v2, v0, :cond_44

    .line 866
    sget v3, Lorg/telegram/messenger/R$string;->FilterUserAddedToExisting:I

    const/4 v6, 0x2

    new-array v8, v6, [Ljava/lang/Object;

    aput-object v4, v8, v9

    const/16 v22, 0x1

    aput-object v5, v8, v22

    invoke-static {v3, v8}, Lorg/telegram/messenger/LocaleController;->formatSpannable(I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    goto/16 :goto_19

    :cond_44
    const/4 v6, 0x2

    const/16 v22, 0x1

    .line 868
    sget v3, Lorg/telegram/messenger/R$string;->FilterUserRemovedFrom:I

    new-array v8, v6, [Ljava/lang/Object;

    aput-object v4, v8, v9

    aput-object v5, v8, v22

    invoke-static {v3, v8}, Lorg/telegram/messenger/LocaleController;->formatSpannable(I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    goto/16 :goto_19

    .line 871
    :cond_45
    iget v3, v1, Lorg/telegram/ui/Components/UndoView;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    neg-long v10, v11

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    if-ne v2, v0, :cond_46

    .line 873
    sget v4, Lorg/telegram/messenger/R$string;->FilterChatAddedToExisting:I

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v6, 0x2

    new-array v8, v6, [Ljava/lang/Object;

    aput-object v3, v8, v9

    const/16 v22, 0x1

    aput-object v5, v8, v22

    invoke-static {v4, v8}, Lorg/telegram/messenger/LocaleController;->formatSpannable(I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_19

    :cond_46
    const/4 v6, 0x2

    const/16 v22, 0x1

    .line 875
    sget v4, Lorg/telegram/messenger/R$string;->FilterChatRemovedFrom:I

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    new-array v8, v6, [Ljava/lang/Object;

    aput-object v3, v8, v9

    aput-object v5, v8, v22

    invoke-static {v4, v8}, Lorg/telegram/messenger/LocaleController;->formatSpannable(I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_19

    :cond_47
    if-ne v2, v0, :cond_48

    .line 880
    sget v4, Lorg/telegram/messenger/R$string;->FilterChatsAddedToExisting:I

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    new-array v6, v9, [Ljava/lang/Object;

    const-string v8, "ChatsSelected"

    invoke-static {v8, v3, v6}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x2

    new-array v8, v6, [Ljava/lang/Object;

    aput-object v3, v8, v9

    const/16 v22, 0x1

    aput-object v5, v8, v22

    invoke-static {v4, v8}, Lorg/telegram/messenger/LocaleController;->formatSpannable(I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_19

    .line 882
    :cond_48
    sget v4, Lorg/telegram/messenger/R$string;->FilterChatsRemovedFrom:I

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    new-array v6, v9, [Ljava/lang/Object;

    const-string v8, "ChatsSelected"

    invoke-static {v8, v3, v6}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x2

    new-array v8, v6, [Ljava/lang/Object;

    aput-object v3, v8, v9

    const/16 v22, 0x1

    aput-object v5, v8, v22

    invoke-static {v4, v8}, Lorg/telegram/messenger/LocaleController;->formatSpannable(I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    :goto_19
    if-ne v2, v0, :cond_49

    .line 886
    sget v0, Lorg/telegram/messenger/R$raw;->folder_in:I

    goto :goto_1a

    :cond_49
    sget v0, Lorg/telegram/messenger/R$raw;->folder_out:I

    :goto_1a
    move-object/from16 v28, v3

    move v3, v0

    move-object/from16 v0, v28

    goto/16 :goto_26

    .line 776
    :cond_4a
    :goto_1b
    move-object v0, v3

    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    const/16 v3, 0x9

    if-ne v2, v3, :cond_4b

    .line 778
    sget v2, Lorg/telegram/messenger/R$string;->EditAdminTransferChannelToast:I

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x1

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v0, v3, v9

    const-string v0, "EditAdminTransferChannelToast"

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    goto :goto_1c

    :cond_4b
    const/4 v4, 0x1

    .line 780
    sget v2, Lorg/telegram/messenger/R$string;->EditAdminTransferGroupToast:I

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v0, v3, v9

    const-string v0, "EditAdminTransferGroupToast"

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 783
    :goto_1c
    sget v3, Lorg/telegram/messenger/R$raw;->contact_check:I

    goto/16 :goto_26

    .line 760
    :cond_4c
    :goto_1d
    instance-of v0, v3, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_4d

    .line 761
    move-object v0, v3

    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    .line 762
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1e

    .line 764
    :cond_4d
    move-object v0, v3

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 765
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    :goto_1e
    const/16 v3, 0x66

    if-ne v2, v3, :cond_4e

    .line 768
    sget v2, Lorg/telegram/messenger/R$string;->VoipConferenceKicked:I

    const/4 v4, 0x1

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v0, v3, v9

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    goto :goto_1f

    :cond_4e
    const/4 v4, 0x1

    .line 770
    sget v2, Lorg/telegram/messenger/R$string;->VoipGroupRemovedFromGroup:I

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v0, v3, v9

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 773
    :goto_1f
    sget v3, Lorg/telegram/messenger/R$raw;->ic_ban:I

    const-wide/16 v5, 0xbb8

    .line 774
    iput-wide v5, v1, Lorg/telegram/ui/Components/UndoView;->timeLeft:J

    goto/16 :goto_26

    :cond_4f
    :goto_20
    const/16 v0, 0x28

    if-ne v5, v0, :cond_50

    .line 727
    sget v0, Lorg/telegram/messenger/R$string;->VoipGroupAudioRecordSaved:I

    :goto_21
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_22

    :cond_50
    sget v0, Lorg/telegram/messenger/R$string;->VoipGroupVideoRecordSaved:I

    goto :goto_21

    .line 729
    :goto_22
    sget v3, Lorg/telegram/messenger/R$raw;->voip_record_saved:I

    const-wide/16 v4, 0xfa0

    .line 730
    iput-wide v4, v1, Lorg/telegram/ui/Components/UndoView;->timeLeft:J

    .line 731
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    new-instance v4, Lorg/telegram/messenger/AndroidUtilities$LinkMovementMethodMy;

    invoke-direct {v4}, Lorg/telegram/messenger/AndroidUtilities$LinkMovementMethodMy;-><init>()V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 732
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 733
    const-string v4, "**"

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 734
    const-string v5, "**"

    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v4, :cond_30

    if-ltz v0, :cond_30

    if-eq v4, v0, :cond_30

    add-int/lit8 v5, v0, 0x2

    .line 736
    invoke-virtual {v2, v0, v5, v14}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v5, v4, 0x2

    .line 737
    invoke-virtual {v2, v4, v5, v14}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 739
    :try_start_0
    new-instance v5, Lorg/telegram/ui/Components/URLSpanNoUnderline;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "tg://openmessage?user_id="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v1, Lorg/telegram/ui/Components/UndoView;->currentAccount:I

    invoke-static {v8}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v10

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/telegram/ui/Components/URLSpanNoUnderline;-><init>(Ljava/lang/String;)V

    const/16 v26, 0x2

    add-int/lit8 v0, v0, -0x2

    const/16 v8, 0x21

    invoke-virtual {v2, v5, v4, v0, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_f

    :catch_0
    move-exception v0

    .line 741
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_f

    :cond_51
    :goto_23
    const/16 v0, 0x27

    if-ne v5, v0, :cond_52

    .line 722
    sget v0, Lorg/telegram/messenger/R$string;->VoipGroupAudioRecordStarted:I

    :goto_24
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_25

    :cond_52
    sget v0, Lorg/telegram/messenger/R$string;->VoipGroupVideoRecordStarted:I

    goto :goto_24

    :goto_25
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 724
    sget v3, Lorg/telegram/messenger/R$raw;->voip_record_start:I

    const-wide/16 v5, 0xbb8

    .line 725
    iput-wide v5, v1, Lorg/telegram/ui/Components/UndoView;->timeLeft:J

    .line 922
    :cond_53
    :goto_26
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v3, :cond_54

    .line 927
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0, v3, v7, v7}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    .line 928
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieImageView;->getAnimatedDrawable()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    .line 929
    invoke-virtual {v0, v9}, Lorg/telegram/ui/Components/RLottieDrawable;->setPlayInDirectionOfCustomEndFrame(Z)V

    .line 930
    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->getFramesCount()I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->setCustomEndFrame(I)Z

    .line 932
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 934
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RLottieImageView;->setProgress(F)V

    .line 935
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    goto :goto_27

    .line 938
    :cond_54
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/16 v6, 0x8

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    :goto_27
    if-eqz v15, :cond_55

    .line 942
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, v13, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 943
    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, v13, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 944
    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, v13, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 945
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 946
    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 947
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 948
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 949
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/high16 v2, 0x41600000    # 14.0f

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 950
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 v6, 0x8

    goto :goto_28

    .line 952
    :cond_55
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, v13, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 953
    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, v13, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 954
    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, v13, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 955
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 956
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/high16 v2, 0x41700000    # 15.0f

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 957
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 960
    :goto_28
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->undoButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3b

    .line 961
    :cond_56
    iget v5, v1, Lorg/telegram/ui/Components/UndoView;->currentAction:I

    const/16 v6, 0x2d

    if-eq v5, v6, :cond_84

    const/16 v6, 0x2e

    if-eq v5, v6, :cond_84

    const/16 v6, 0x2f

    if-eq v5, v6, :cond_84

    const/16 v6, 0x34

    if-eq v5, v6, :cond_84

    const/16 v6, 0x35

    if-eq v5, v6, :cond_84

    const/16 v6, 0x36

    if-eq v5, v6, :cond_84

    const/16 v6, 0x37

    if-eq v5, v6, :cond_84

    const/16 v6, 0x38

    if-eq v5, v6, :cond_84

    const/16 v6, 0x39

    if-eq v5, v6, :cond_84

    const/16 v6, 0x3a

    if-eq v5, v6, :cond_84

    const/16 v6, 0x3b

    if-eq v5, v6, :cond_84

    const/16 v6, 0x3c

    if-eq v5, v6, :cond_84

    const/16 v6, 0x47

    if-eq v5, v6, :cond_84

    const/16 v6, 0x46

    if-eq v5, v6, :cond_84

    const/16 v6, 0x4b

    if-eq v5, v6, :cond_84

    const/16 v6, 0x4c

    if-eq v5, v6, :cond_84

    const/16 v6, 0x29

    if-eq v5, v6, :cond_84

    const/16 v6, 0x4e

    if-eq v5, v6, :cond_84

    const/16 v6, 0x4f

    if-eq v5, v6, :cond_84

    const/16 v6, 0x3d

    if-eq v5, v6, :cond_84

    const/16 v6, 0x50

    if-ne v5, v6, :cond_57

    goto/16 :goto_3c

    :cond_57
    const/16 v6, 0x18

    if-eq v5, v6, :cond_58

    const/16 v6, 0x19

    if-ne v5, v6, :cond_59

    :cond_58
    const/16 v6, 0x8

    goto/16 :goto_38

    :cond_59
    const/16 v6, 0xb

    if-ne v5, v6, :cond_5a

    .line 1212
    move-object v0, v3

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_authorization;

    .line 1214
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v3, Lorg/telegram/messenger/R$string;->AuthAnotherClientOk:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1215
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v3, Lorg/telegram/messenger/R$raw;->contact_check:I

    invoke-virtual {v2, v3, v7, v7}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    .line 1217
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iput v2, v13, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1218
    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iput v2, v13, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1219
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_authorization;->app_name:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1220
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1221
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/high16 v2, 0x41600000    # 14.0f

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1222
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1224
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->undoTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1225
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->undoImageView:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1226
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->undoButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1227
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1229
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RLottieImageView;->setProgress(F)V

    .line 1230
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    goto/16 :goto_3b

    :cond_5a
    const/16 v6, 0xf

    const/high16 v8, 0x41d00000    # 26.0f

    if-ne v5, v6, :cond_5c

    const-wide/16 v2, 0x2710

    .line 1232
    iput-wide v2, v1, Lorg/telegram/ui/Components/UndoView;->timeLeft:J

    .line 1233
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->undoTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->Open:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1234
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v2, Lorg/telegram/messenger/R$string;->FilterAvailableTitle:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1235
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v2, Lorg/telegram/messenger/R$raw;->filter_new:I

    invoke-virtual {v0, v2, v7, v7}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    .line 1236
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->undoTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->undoTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v0, v2

    .line 1238
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iput v2, v13, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1239
    iput v0, v13, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 1240
    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iput v2, v13, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1242
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 1243
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 1245
    sget v0, Lorg/telegram/messenger/R$string;->FilterAvailableText:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1246
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/16 v5, 0x2a

    .line 1247
    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 1248
    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ltz v3, :cond_5b

    if-ltz v0, :cond_5b

    if-eq v3, v0, :cond_5b

    add-int/lit8 v4, v0, 0x1

    .line 1250
    invoke-virtual {v2, v0, v4, v14}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v4, v3, 0x1

    .line 1251
    invoke-virtual {v2, v3, v4, v14}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1252
    new-instance v4, Lorg/telegram/ui/Components/URLSpanNoUnderline;

    const-string/jumbo v5, "tg://settings/folders"

    invoke-direct {v4, v5}, Lorg/telegram/ui/Components/URLSpanNoUnderline;-><init>(Ljava/lang/String;)V

    const/16 v22, 0x1

    add-int/lit8 v0, v0, -0x1

    const/16 v8, 0x21

    invoke-virtual {v2, v4, v3, v0, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1254
    :cond_5b
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1255
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1256
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1257
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1258
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->undoButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1259
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->undoImageView:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1260
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1262
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RLottieImageView;->setProgress(F)V

    .line 1263
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    goto/16 :goto_3b

    :cond_5c
    const/16 v6, 0x10

    if-eq v5, v6, :cond_5d

    const/16 v6, 0x11

    if-ne v5, v6, :cond_5e

    :cond_5d
    move-object/from16 v2, v23

    const-wide/16 v4, 0xfa0

    goto/16 :goto_34

    :cond_5e
    const/16 v6, 0x12

    if-ne v5, v6, :cond_5f

    .line 1316
    move-object v0, v3

    check-cast v0, Ljava/lang/CharSequence;

    .line 1317
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x32

    mul-int/lit16 v2, v2, 0x640

    const/16 v3, 0x2710

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/16 v3, 0xfa0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, v1, Lorg/telegram/ui/Components/UndoView;->timeLeft:J

    .line 1318
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/high16 v3, 0x41600000    # 14.0f

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1319
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/16 v6, 0x10

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 1320
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1322
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->undoTextView:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1323
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->undoButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1324
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, v13, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1325
    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, v13, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 1326
    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, v13, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const/high16 v0, 0x40e00000    # 7.0f

    .line 1327
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, v13, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    const/4 v0, -0x1

    .line 1328
    iput v0, v13, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v0, 0x33

    move-object/from16 v2, v23

    .line 1330
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1331
    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1333
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1334
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v2, Lorg/telegram/messenger/R$raw;->chats_infotip:I

    invoke-virtual {v0, v2, v7, v7}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    .line 1335
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RLottieImageView;->setProgress(F)V

    .line 1336
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    .line 1338
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    new-instance v2, Lorg/telegram/messenger/AndroidUtilities$LinkMovementMethodMy;

    invoke-direct {v2}, Lorg/telegram/messenger/AndroidUtilities$LinkMovementMethodMy;-><init>()V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto/16 :goto_3b

    :cond_5f
    const/16 v6, 0xc

    const/high16 v10, 0x42400000    # 48.0f

    if-ne v5, v6, :cond_61

    .line 1340
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v2, Lorg/telegram/messenger/R$string;->ColorThemeChanged:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1341
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v2, Lorg/telegram/messenger/R$drawable;->toast_pallete:I

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RLottieImageView;->setImageResource(I)V

    .line 1343
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, v13, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1344
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, v13, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 1345
    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, v13, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1347
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1348
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 1350
    sget v0, Lorg/telegram/messenger/R$string;->ColorThemeChangedInfo:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1351
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/16 v5, 0x2a

    .line 1352
    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 1353
    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ltz v3, :cond_60

    if-ltz v0, :cond_60

    if-eq v3, v0, :cond_60

    add-int/lit8 v4, v0, 0x1

    .line 1355
    invoke-virtual {v2, v0, v4, v14}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v4, v3, 0x1

    .line 1356
    invoke-virtual {v2, v3, v4, v14}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1357
    new-instance v4, Lorg/telegram/ui/Components/URLSpanNoUnderline;

    const-string/jumbo v5, "tg://settings/themes"

    invoke-direct {v4, v5}, Lorg/telegram/ui/Components/URLSpanNoUnderline;-><init>(Ljava/lang/String;)V

    const/16 v22, 0x1

    add-int/lit8 v0, v0, -0x1

    const/16 v8, 0x21

    invoke-virtual {v2, v4, v3, v0, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1359
    :cond_60
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1360
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1361
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1362
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1363
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->undoTextView:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1364
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->undoButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1365
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3b

    :cond_61
    const/16 v6, 0x54

    if-ne v5, v6, :cond_62

    .line 1367
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1368
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/high16 v2, 0x41700000    # 15.0f

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1369
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1370
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v2, Lorg/telegram/messenger/R$string;->UnlockPremiumTranscriptionHint:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1371
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1372
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v2, Lorg/telegram/messenger/R$raw;->voice_to_text:I

    invoke-virtual {v0, v2, v7, v7}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    .line 1373
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RLottieImageView;->setProgress(F)V

    .line 1374
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    .line 1376
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->undoTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->PremiumMore:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1377
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, v13, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1378
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->undoTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->undoTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v0, v2

    iput v0, v13, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 1379
    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, v13, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iput v0, v13, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const/4 v0, -0x2

    .line 1380
    iput v0, v13, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1382
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v6, 0x8

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1383
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1384
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->undoTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1385
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->undoButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1386
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->undoImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3b

    :cond_62
    const/16 v6, 0x55

    if-ne v5, v6, :cond_63

    .line 1388
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1389
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/high16 v2, 0x41700000    # 15.0f

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1390
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1391
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v2, Lorg/telegram/messenger/R$string;->SwipeToReplyHint:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1392
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1393
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v2, Lorg/telegram/messenger/R$raw;->hint_swipe_reply:I

    const/16 v3, 0x40

    const/16 v4, 0x40

    invoke-virtual {v0, v2, v3, v4}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    .line 1394
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RLottieImageView;->setProgress(F)V

    .line 1395
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    .line 1397
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1398
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->SwipeToReplyHintMessage:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1400
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, v13, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1401
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->undoTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->undoTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v0, v2

    iput v0, v13, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 1402
    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, v13, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const/4 v0, -0x2

    .line 1403
    iput v0, v13, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1405
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v6, 0x8

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1406
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->undoButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3b

    :cond_63
    const/16 v6, 0x5a

    if-eq v5, v6, :cond_7c

    const/16 v6, 0x5b

    if-eq v5, v6, :cond_7c

    const/16 v6, 0x5c

    if-eq v5, v6, :cond_7c

    const/16 v6, 0x5d

    if-eq v5, v6, :cond_7c

    const/16 v6, 0x5e

    if-ne v5, v6, :cond_64

    goto/16 :goto_32

    :cond_64
    const/4 v6, 0x2

    if-eq v5, v6, :cond_7a

    const/4 v6, 0x4

    if-ne v5, v6, :cond_65

    const/4 v6, 0x2

    goto/16 :goto_30

    :cond_65
    const/16 v5, 0x52

    if-ne v2, v5, :cond_6a

    .line 1462
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, v13, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1464
    move-object v0, v3

    check-cast v0, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 1465
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    iget-boolean v3, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    if-eqz v3, :cond_66

    sget v3, Lorg/telegram/messenger/R$string;->AttachMediaVideoDeselected:I

    :goto_29
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2a

    :cond_66
    sget v3, Lorg/telegram/messenger/R$string;->AttachMediaPhotoDeselected:I

    goto :goto_29

    :goto_2a
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1466
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->undoButton:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1467
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/high16 v3, 0x41700000    # 15.0f

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1468
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1469
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1471
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1472
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 1473
    iget-object v2, v0, Lorg/telegram/messenger/MediaController$MediaEditState;->thumbPath:Ljava/lang/String;

    if-eqz v2, :cond_67

    .line 1474
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->chat_attachEmptyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2, v15, v3}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3b

    .line 1475
    :cond_67
    iget-object v2, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    if-eqz v2, :cond_69

    .line 1476
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget v3, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->orientation:I

    iget v4, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->invert:I

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lorg/telegram/ui/Components/BackupImageView;->setOrientation(IIZ)V

    .line 1477
    iget-boolean v2, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    if-eqz v2, :cond_68

    .line 1478
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "vthumb://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->chat_attachEmptyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0, v15, v3}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3b

    .line 1480
    :cond_68
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "thumb://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->chat_attachEmptyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0, v15, v3}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3b

    .line 1483
    :cond_69
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->chat_attachEmptyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3b

    :cond_6a
    const/high16 v2, 0x42340000    # 45.0f

    .line 1486
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iput v2, v13, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1487
    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iput v2, v13, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1488
    iput v9, v13, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 1490
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/high16 v5, 0x41700000    # 15.0f

    const/4 v6, 0x1

    invoke-virtual {v2, v6, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1491
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->undoButton:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1492
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget-object v5, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1493
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1494
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1496
    iget v2, v1, Lorg/telegram/ui/Components/UndoView;->currentAction:I

    const/16 v6, 0x58

    if-ne v2, v6, :cond_6d

    .line 1497
    move-object v2, v3

    check-cast v2, Ljava/lang/String;

    .line 1498
    move-object v3, v4

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_6b

    .line 1500
    iget-object v4, v1, Lorg/telegram/ui/Components/UndoView;->undoTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    iget-object v5, v1, Lorg/telegram/ui/Components/UndoView;->undoTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v4, v5

    .line 1502
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    iput v5, v13, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1503
    iput v4, v13, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 1504
    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    iput v5, v13, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1506
    iget-object v5, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 1507
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1508
    iput v4, v5, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 1510
    iget-object v4, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v5, Lorg/telegram/messenger/R$string;->FolderLinkDeletedTitle:I

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    aput-object v2, v7, v9

    const-string v2, "FolderLinkDeletedTitle"

    invoke-static {v2, v5, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1511
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1513
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1514
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    const-string v4, "FolderLinkDeletedSubtitle"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v4, v3, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2c

    .line 1516
    :cond_6b
    iget-object v3, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1517
    iget-object v3, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v4, Lorg/telegram/messenger/R$string;->FolderLinkDeleted:I

    if-nez v2, :cond_6c

    move-object v2, v14

    :cond_6c
    const/16 v5, 0x2731

    const/16 v6, 0x2a

    invoke-virtual {v2, v6, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x1

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v2, v5, v9

    const-string v2, "FolderLinkDeleted"

    invoke-static {v2, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2c

    :cond_6d
    const/16 v3, 0x51

    if-eq v2, v3, :cond_77

    if-eqz v2, :cond_77

    const/16 v3, 0x1a

    if-ne v2, v3, :cond_6e

    goto/16 :goto_2b

    :cond_6e
    const/16 v3, 0x1b

    if-ne v2, v3, :cond_6f

    .line 1522
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v3, Lorg/telegram/messenger/R$string;->ChatsDeletedUndo:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2c

    :cond_6f
    const/16 v3, 0x5f

    if-ne v2, v3, :cond_73

    .line 1524
    invoke-static {v11, v12}, Lorg/telegram/messenger/DialogObject;->isChatDialog(J)Z

    move-result v2

    if-eqz v2, :cond_72

    .line 1525
    iget v2, v1, Lorg/telegram/ui/Components/UndoView;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    neg-long v3, v11

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    .line 1526
    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isMonoForum(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    if-eqz v3, :cond_70

    .line 1527
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v3, Lorg/telegram/messenger/R$string;->MonoforumDeletedUndo:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2c

    .line 1528
    :cond_70
    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    if-eqz v3, :cond_71

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v2, :cond_71

    .line 1529
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v3, Lorg/telegram/messenger/R$string;->ChannelLeftUndo:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2c

    .line 1531
    :cond_71
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v3, Lorg/telegram/messenger/R$string;->GroupLeftUndo:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2c

    .line 1534
    :cond_72
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v3, Lorg/telegram/messenger/R$string;->ChatDeletedUndo:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2c

    .line 1537
    :cond_73
    invoke-static {v11, v12}, Lorg/telegram/messenger/DialogObject;->isChatDialog(J)Z

    move-result v2

    if-eqz v2, :cond_76

    .line 1538
    iget v2, v1, Lorg/telegram/ui/Components/UndoView;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    neg-long v3, v11

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    .line 1539
    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isMonoForum(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    if-eqz v3, :cond_74

    .line 1540
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v3, Lorg/telegram/messenger/R$string;->MonoforumDeletedUndo:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2c

    .line 1541
    :cond_74
    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    if-eqz v3, :cond_75

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v2, :cond_75

    .line 1542
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v3, Lorg/telegram/messenger/R$string;->ChannelDeletedUndo:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2c

    .line 1544
    :cond_75
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v3, Lorg/telegram/messenger/R$string;->GroupDeletedUndo:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2c

    .line 1547
    :cond_76
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v3, Lorg/telegram/messenger/R$string;->ChatDeletedUndo:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2c

    .line 1520
    :cond_77
    :goto_2b
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v3, Lorg/telegram/messenger/R$string;->HistoryClearedUndo:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1550
    :goto_2c
    iget v2, v1, Lorg/telegram/ui/Components/UndoView;->currentAction:I

    const/16 v3, 0x51

    if-eq v2, v3, :cond_83

    move v2, v9

    .line 1551
    :goto_2d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_83

    .line 1552
    iget v3, v1, Lorg/telegram/ui/Components/UndoView;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget v6, v1, Lorg/telegram/ui/Components/UndoView;->currentAction:I

    const/16 v7, 0x1a

    if-eqz v6, :cond_79

    if-ne v6, v7, :cond_78

    goto :goto_2e

    :cond_78
    move v6, v9

    goto :goto_2f

    :cond_79
    :goto_2e
    const/4 v6, 0x1

    :goto_2f
    invoke-virtual {v3, v4, v5, v6}, Lorg/telegram/messenger/MessagesController;->addDialogAction(JZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    :cond_7a
    :goto_30
    if-ne v2, v6, :cond_7b

    .line 1443
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v2, Lorg/telegram/messenger/R$string;->ChatArchived:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_31

    .line 1445
    :cond_7b
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v2, Lorg/telegram/messenger/R$string;->ChatsArchived:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1448
    :goto_31
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, v13, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1449
    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, v13, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1450
    iput v9, v13, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 1452
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/high16 v2, 0x41700000    # 15.0f

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1453
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->undoButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1454
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1455
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1457
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1458
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v2, Lorg/telegram/messenger/R$raw;->chats_archived:I

    invoke-virtual {v0, v2, v7, v7}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    .line 1459
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RLottieImageView;->setProgress(F)V

    .line 1460
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    goto/16 :goto_3b

    :cond_7c
    :goto_32
    packed-switch v5, :pswitch_data_0

    goto :goto_33

    .line 1415
    :pswitch_0
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v2, Lorg/telegram/messenger/R$string;->BoostingOnlyRecipientCode:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_33

    .line 1427
    :pswitch_1
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-static {}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->boostsPerSentGift()I

    move-result v2

    new-array v3, v9, [Ljava/lang/Object;

    const-string v4, "BoostingWaitWarningPlural"

    invoke-static {v4, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_33

    .line 1424
    :pswitch_2
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-static {}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->giveawayCountriesMax()J

    move-result-wide v2

    long-to-int v2, v2

    new-array v3, v9, [Ljava/lang/Object;

    const-string v4, "BoostingSelectUpToWarningCountriesPlural"

    invoke-static {v4, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_33

    .line 1418
    :pswitch_3
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v2, Lorg/telegram/messenger/R$string;->BoostingSelectUpToWarningUsers:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_33

    .line 1421
    :pswitch_4
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-static {}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->giveawayAddPeersMax()J

    move-result-wide v2

    long-to-int v2, v2

    new-array v3, v9, [Ljava/lang/Object;

    const-string v4, "BoostingSelectUpToWarningChannelsGroupsPlural"

    invoke-static {v4, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1430
    :goto_33
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, v13, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1431
    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, v13, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 1432
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/high16 v2, 0x41700000    # 15.0f

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1433
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->undoButton:Landroid/widget/LinearLayout;

    const/16 v6, 0x8

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1434
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1435
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1437
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1438
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v2, Lorg/telegram/messenger/R$raw;->chats_infotip:I

    invoke-virtual {v0, v2, v7, v7}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    .line 1439
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RLottieImageView;->setProgress(F)V

    .line 1440
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    goto/16 :goto_3b

    .line 1265
    :goto_34
    iput-wide v4, v1, Lorg/telegram/ui/Components/UndoView;->timeLeft:J

    .line 1266
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/high16 v4, 0x41600000    # 14.0f

    const/4 v6, 0x1

    invoke-virtual {v0, v6, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1267
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/16 v6, 0x10

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 1268
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/high16 v4, 0x41f00000    # 30.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 1269
    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    .line 1270
    const-string/jumbo v3, "\ud83c\udfb2"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7d

    .line 1271
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v2, Lorg/telegram/messenger/R$string;->DiceInfo2:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1272
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v2, Lorg/telegram/messenger/R$drawable;->dice:I

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RLottieImageView;->setImageResource(I)V

    goto/16 :goto_36

    .line 1274
    :cond_7d
    const-string/jumbo v3, "\ud83c\udfaf"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7e

    .line 1275
    iget-object v3, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v4, Lorg/telegram/messenger/R$string;->DartInfo:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_35

    .line 1277
    :cond_7e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DiceEmojiInfo_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getServerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1278
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7f

    .line 1279
    iget-object v4, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v5

    invoke-static {v3, v5, v9}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_35

    .line 1281
    :cond_7f
    iget-object v3, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v4, Lorg/telegram/messenger/R$string;->DiceEmojiInfo:I

    const/4 v6, 0x1

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v0, v5, v9

    const-string v6, "DiceEmojiInfo"

    invoke-static {v6, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v5

    invoke-static {v4, v5, v9}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1284
    :goto_35
    iget-object v3, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-static {v0}, Lorg/telegram/messenger/Emoji;->getEmojiDrawable(Ljava/lang/CharSequence;)Lorg/telegram/messenger/Emoji$EmojiDrawable;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1285
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/high16 v27, 0x41600000    # 14.0f

    .line 1286
    invoke-static/range {v27 .. v27}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, v13, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1287
    invoke-static/range {v27 .. v27}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, v13, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 1288
    invoke-static/range {v27 .. v27}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1289
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1290
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1292
    :goto_36
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->undoTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->SendDice:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1295
    iget v0, v1, Lorg/telegram/ui/Components/UndoView;->currentAction:I

    const/16 v6, 0x10

    if-ne v0, v6, :cond_80

    .line 1296
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->undoTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->undoTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v0, v2

    .line 1297
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->undoTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1298
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->undoTextView:Landroid/widget/TextView;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_undo_cancelColor:I

    invoke-direct {v1, v3}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1299
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->undoImageView:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1300
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->undoButton:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_37

    :cond_80
    const/16 v6, 0x8

    .line 1302
    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    .line 1303
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->undoTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1304
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->undoButton:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1307
    :goto_37
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iput v2, v13, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1308
    iput v0, v13, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 1309
    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, v13, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const/high16 v0, 0x40e00000    # 7.0f

    .line 1310
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, v13, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    const/4 v0, -0x1

    .line 1311
    iput v0, v13, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1313
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1314
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3b

    .line 1159
    :goto_38
    move-object v0, v3

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1160
    move-object v2, v4

    check-cast v2, Lorg/telegram/tgnet/TLRPC$User;

    .line 1162
    iget-object v3, v1, Lorg/telegram/ui/Components/UndoView;->undoImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1163
    iget-object v3, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    const/16 v3, 0x1c

    if-eqz v0, :cond_82

    .line 1166
    iget-object v4, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1167
    iget-object v4, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/high16 v5, 0x41600000    # 14.0f

    const/4 v6, 0x1

    invoke-virtual {v4, v6, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1168
    iget-object v4, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/RLottieImageView;->clearLayerColors()V

    .line 1169
    iget-object v4, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_undo_infoColor:I

    invoke-direct {v1, v5}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(I)I

    move-result v6

    const-string v7, "BODY.**"

    invoke-virtual {v4, v7, v6}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    .line 1170
    iget-object v4, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const-string v6, "Wibe Big.**"

    invoke-direct {v1, v5}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(I)I

    move-result v7

    invoke-virtual {v4, v6, v7}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    .line 1171
    iget-object v4, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const-string v6, "Wibe Big 3.**"

    invoke-direct {v1, v5}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(I)I

    move-result v7

    invoke-virtual {v4, v6, v7}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    .line 1172
    iget-object v4, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const-string v6, "Wibe Small.**"

    invoke-direct {v1, v5}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(I)I

    move-result v5

    invoke-virtual {v4, v6, v5}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    .line 1174
    iget-object v4, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v5, Lorg/telegram/messenger/R$string;->ProximityAlertSet:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1175
    iget-object v4, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v5, Lorg/telegram/messenger/R$raw;->ic_unmute:I

    invoke-virtual {v4, v5, v3, v3}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    .line 1176
    iget-object v3, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1177
    iget-object v3, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1178
    iget-object v3, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    if-eqz v2, :cond_81

    .line 1181
    iget-object v3, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    sget v4, Lorg/telegram/messenger/R$string;->ProximityAlertSetInfoUser:I

    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v2

    int-to-float v0, v0

    const/4 v6, 0x2

    invoke-static {v0, v6}, Lorg/telegram/messenger/LocaleController;->formatDistance(FI)Ljava/lang/String;

    move-result-object v0

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v2, v5, v9

    const/4 v2, 0x1

    aput-object v0, v5, v2

    const-string v0, "ProximityAlertSetInfoUser"

    invoke-static {v0, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_39

    :cond_81
    const/4 v2, 0x1

    const/4 v6, 0x2

    .line 1183
    iget-object v3, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    sget v4, Lorg/telegram/messenger/R$string;->ProximityAlertSetInfoGroup2:I

    int-to-float v0, v0

    invoke-static {v0, v6}, Lorg/telegram/messenger/LocaleController;->formatDistance(FI)Ljava/lang/String;

    move-result-object v0

    new-array v5, v2, [Ljava/lang/Object;

    aput-object v0, v5, v9

    const-string v0, "ProximityAlertSetInfoGroup2"

    invoke-static {v0, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1185
    :goto_39
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->undoButton:Landroid/widget/LinearLayout;

    const/16 v6, 0x8

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1187
    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, v13, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto/16 :goto_3a

    .line 1189
    :cond_82
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1190
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/high16 v2, 0x41700000    # 15.0f

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1191
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieImageView;->clearLayerColors()V

    .line 1192
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_undo_infoColor:I

    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(I)I

    move-result v4

    const-string v5, "Body Main.**"

    invoke-virtual {v0, v5, v4}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    .line 1193
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const-string v4, "Body Top.**"

    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(I)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    .line 1194
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const-string v4, "Line.**"

    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(I)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    .line 1195
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const-string v4, "Curve Big.**"

    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(I)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    .line 1196
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const-string v4, "Curve Small.**"

    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v0, v4, v2}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    const/high16 v27, 0x41600000    # 14.0f

    .line 1198
    invoke-static/range {v27 .. v27}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, v13, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1200
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v2, Lorg/telegram/messenger/R$string;->ProximityAlertCancelled:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1201
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v2, Lorg/telegram/messenger/R$raw;->ic_mute:I

    invoke-virtual {v0, v2, v3, v3}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    .line 1202
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1203
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->undoTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_undo_cancelColor:I

    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1204
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->undoButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1207
    :goto_3a
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, v13, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1209
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RLottieImageView;->setProgress(F)V

    .line 1210
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    :cond_83
    :goto_3b
    move v4, v9

    const/high16 v2, 0x41600000    # 14.0f

    goto/16 :goto_51

    .line 967
    :cond_84
    :goto_3c
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->undoImageView:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 968
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 970
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget-object v5, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 972
    iget v0, v1, Lorg/telegram/ui/Components/UndoView;->currentAction:I

    const/16 v5, 0x4c

    const/high16 v6, 0x41100000    # 9.0f

    const-wide/16 v18, -0x1

    if-ne v0, v5, :cond_85

    .line 973
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v2, Lorg/telegram/messenger/R$string;->BroadcastGroupConvertSuccess:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 974
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v2, Lorg/telegram/messenger/R$raw;->gigagroup_convert:I

    invoke-virtual {v0, v2, v7, v7}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    .line 976
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, v13, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 977
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/high16 v2, 0x41600000    # 14.0f

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    :goto_3d
    move-wide/from16 v5, v18

    :goto_3e
    const/4 v4, 0x1

    goto/16 :goto_50

    :cond_85
    const/16 v5, 0x4b

    if-ne v0, v5, :cond_86

    .line 979
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v2, Lorg/telegram/messenger/R$string;->GigagroupConvertCancelHint:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 980
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v2, Lorg/telegram/messenger/R$raw;->chats_infotip:I

    invoke-virtual {v0, v2, v7, v7}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    .line 982
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, v13, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 983
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/high16 v2, 0x41600000    # 14.0f

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_3d

    :cond_86
    const/16 v5, 0x46

    if-ne v2, v5, :cond_87

    .line 985
    move-object v0, v3

    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    .line 986
    move-object v0, v4

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 987
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 988
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->formatTTLString(I)Ljava/lang/String;

    move-result-object v0

    .line 989
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v3, Lorg/telegram/messenger/R$string;->AutoDeleteHintOnText:I

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v0, v5, v9

    const-string v0, "AutoDeleteHintOnText"

    invoke-static {v0, v3, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 990
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v2, Lorg/telegram/messenger/R$raw;->fire_on:I

    invoke-virtual {v0, v2, v7, v7}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    .line 991
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, v13, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const-wide/16 v4, 0xfa0

    .line 992
    iput-wide v4, v1, Lorg/telegram/ui/Components/UndoView;->timeLeft:J

    .line 994
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/high16 v2, 0x40400000    # 3.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v0, v9, v9, v9, v2}, Landroid/view/View;->setPadding(IIII)V

    move-wide/from16 v5, v18

    const/high16 v2, 0x41600000    # 14.0f

    goto :goto_3e

    :cond_87
    const/16 v2, 0x47

    if-ne v0, v2, :cond_88

    .line 996
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v2, Lorg/telegram/messenger/R$string;->AutoDeleteHintOffText:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 997
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v2, Lorg/telegram/messenger/R$raw;->fire_off:I

    invoke-virtual {v0, v2, v7, v7}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    .line 998
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/high16 v2, 0x41600000    # 14.0f

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    const-wide/16 v5, 0xbb8

    .line 999
    iput-wide v5, v1, Lorg/telegram/ui/Components/UndoView;->timeLeft:J

    .line 1000
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v0, v9, v9, v9, v2}, Landroid/view/View;->setPadding(IIII)V

    const/high16 v2, 0x41600000    # 14.0f

    goto/16 :goto_4a

    :cond_88
    const/16 v2, 0x2d

    if-ne v0, v2, :cond_89

    .line 1002
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v2, Lorg/telegram/messenger/R$string;->ImportMutualError:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1003
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v2, Lorg/telegram/messenger/R$raw;->error:I

    invoke-virtual {v0, v2, v7, v7}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    .line 1005
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, v13, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1006
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/high16 v2, 0x41600000    # 14.0f

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_3d

    :cond_89
    const/16 v2, 0x2e

    if-ne v0, v2, :cond_8a

    .line 1008
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v2, Lorg/telegram/messenger/R$string;->ImportNotAdmin:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1009
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v2, Lorg/telegram/messenger/R$raw;->error:I

    invoke-virtual {v0, v2, v7, v7}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    .line 1011
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, v13, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1012
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/high16 v2, 0x41600000    # 14.0f

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_3d

    :cond_8a
    const/16 v2, 0x2f

    if-ne v0, v2, :cond_8b

    .line 1014
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v2, Lorg/telegram/messenger/R$string;->ImportedInfo:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1015
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v2, Lorg/telegram/messenger/R$raw;->imported:I

    invoke-virtual {v0, v2, v7, v7}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    .line 1016
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v0, v9, v9, v9, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 1018
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, v13, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1019
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/high16 v2, 0x41600000    # 14.0f

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_3d

    :cond_8b
    const/high16 v2, 0x41600000    # 14.0f

    const/16 v6, 0x34

    if-eq v0, v6, :cond_a5

    const/16 v6, 0x38

    if-eq v0, v6, :cond_a5

    const/16 v6, 0x39

    if-eq v0, v6, :cond_a5

    const/16 v6, 0x3a

    if-eq v0, v6, :cond_a5

    const/16 v6, 0x3b

    if-eq v0, v6, :cond_a5

    const/16 v6, 0x3c

    if-eq v0, v6, :cond_a5

    const/16 v6, 0x50

    if-ne v0, v6, :cond_8c

    goto/16 :goto_4e

    :cond_8c
    const/16 v5, 0x36

    if-ne v0, v5, :cond_8d

    .line 1045
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v3, Lorg/telegram/messenger/R$string;->ChannelNotifyMembersInfoOn:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1046
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v3, Lorg/telegram/messenger/R$raw;->silent_unmute:I

    const/16 v5, 0x1e

    invoke-virtual {v0, v3, v5, v5}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    const-wide/16 v5, 0xbb8

    .line 1047
    iput-wide v5, v1, Lorg/telegram/ui/Components/UndoView;->timeLeft:J

    .line 1048
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/high16 v3, 0x41700000    # 15.0f

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_4a

    :cond_8d
    const/16 v5, 0x37

    if-ne v0, v5, :cond_8e

    .line 1050
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v3, Lorg/telegram/messenger/R$string;->ChannelNotifyMembersInfoOff:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1051
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v3, Lorg/telegram/messenger/R$raw;->silent_mute:I

    const/16 v5, 0x1e

    invoke-virtual {v0, v3, v5, v5}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    const-wide/16 v5, 0xbb8

    .line 1052
    iput-wide v5, v1, Lorg/telegram/ui/Components/UndoView;->timeLeft:J

    .line 1053
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/high16 v3, 0x41700000    # 15.0f

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_4a

    :cond_8e
    const/16 v5, 0x29

    if-ne v0, v5, :cond_92

    if-nez v4, :cond_91

    .line 1056
    iget v0, v1, Lorg/telegram/ui/Components/UndoView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    iget-wide v3, v0, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    cmp-long v0, v11, v3

    if-nez v0, :cond_8f

    .line 1057
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v3, Lorg/telegram/messenger/R$string;->InvLinkToSavedMessages:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3f

    .line 1059
    :cond_8f
    invoke-static {v11, v12}, Lorg/telegram/messenger/DialogObject;->isChatDialog(J)Z

    move-result v0

    if-eqz v0, :cond_90

    .line 1060
    iget v0, v1, Lorg/telegram/ui/Components/UndoView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    neg-long v3, v11

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 1061
    iget-object v3, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v4, Lorg/telegram/messenger/R$string;->InvLinkToGroup:I

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v6, 0x1

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v0, v5, v9

    const-string v0, "InvLinkToGroup"

    invoke-static {v0, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3f

    .line 1063
    :cond_90
    iget v0, v1, Lorg/telegram/ui/Components/UndoView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0, v10}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    .line 1064
    iget-object v3, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v4, Lorg/telegram/messenger/R$string;->InvLinkToUser:I

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x1

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v0, v5, v9

    const-string v0, "InvLinkToUser"

    invoke-static {v0, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3f

    .line 1068
    :cond_91
    move-object v0, v4

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1069
    iget-object v3, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v4, Lorg/telegram/messenger/R$string;->InvLinkToChats:I

    const-string v5, "Chats"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v5, v0, v6}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x1

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v0, v5, v9

    const-string v0, "InvLinkToChats"

    invoke-static {v0, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1071
    :goto_3f
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v3, Lorg/telegram/messenger/R$raw;->contact_check:I

    invoke-virtual {v0, v3, v7, v7}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    const-wide/16 v5, 0xbb8

    .line 1072
    iput-wide v5, v1, Lorg/telegram/ui/Components/UndoView;->timeLeft:J

    goto/16 :goto_4a

    :cond_92
    const/16 v5, 0x35

    if-ne v0, v5, :cond_a1

    .line 1074
    move-object v0, v3

    check-cast v0, Ljava/lang/Integer;

    if-eqz v4, :cond_95

    .line 1075
    instance-of v3, v4, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    if-eqz v3, :cond_93

    goto :goto_43

    .line 1109
    :cond_93
    move-object v3, v4

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1110
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_94

    .line 1111
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const-string v4, "FwdMessageToManyChats"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v4, v3, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_40

    .line 1113
    :cond_94
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const-string v4, "FwdMessagesToManyChats"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v4, v3, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1115
    :goto_40
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v3, Lorg/telegram/messenger/R$raw;->forward:I

    const/16 v5, 0x1e

    invoke-virtual {v0, v3, v5, v5}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    :goto_41
    const-wide/16 v18, 0x12c

    :goto_42
    const-wide/16 v5, 0xbb8

    goto/16 :goto_49

    .line 1076
    :cond_95
    :goto_43
    iget v3, v1, Lorg/telegram/ui/Components/UndoView;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    iget-wide v5, v3, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    cmp-long v3, v11, v5

    if-nez v3, :cond_97

    .line 1077
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_96

    .line 1078
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v3, Lorg/telegram/messenger/R$string;->FwdMessageToSavedMessages:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/Components/BulletinFactory$$ExternalSyntheticLambda5;

    invoke-direct {v4}, Lorg/telegram/ui/Components/BulletinFactory$$ExternalSyntheticLambda5;-><init>()V

    invoke-static {v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_44

    .line 1080
    :cond_96
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v3, Lorg/telegram/messenger/R$string;->FwdMessagesToSavedMessages:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/Components/BulletinFactory$$ExternalSyntheticLambda5;

    invoke-direct {v4}, Lorg/telegram/ui/Components/BulletinFactory$$ExternalSyntheticLambda5;-><init>()V

    invoke-static {v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1082
    :goto_44
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v3, Lorg/telegram/messenger/R$raw;->saved_messages:I

    const/16 v5, 0x1e

    invoke-virtual {v0, v3, v5, v5}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    goto :goto_42

    .line 1084
    :cond_97
    invoke-static {v11, v12}, Lorg/telegram/messenger/DialogObject;->isChatDialog(J)Z

    move-result v3

    if-eqz v3, :cond_9e

    .line 1085
    iget v3, v1, Lorg/telegram/ui/Components/UndoView;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    neg-long v5, v11

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    .line 1086
    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    .line 1088
    invoke-static {v3}, Lorg/telegram/messenger/ChatObject;->isMonoForum(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v5

    if-eqz v5, :cond_98

    .line 1089
    iget v5, v1, Lorg/telegram/ui/Components/UndoView;->currentAccount:I

    invoke-static {v5, v3}, Lorg/telegram/ui/Components/Forum/ForumUtilities;->getMonoForumTitle(ILorg/telegram/tgnet/TLRPC$Chat;)Ljava/lang/String;

    move-result-object v15

    .line 1092
    :cond_98
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v6, 0x1

    if-ne v0, v6, :cond_9b

    .line 1093
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v5, Lorg/telegram/messenger/R$string;->FwdMessageToGroup:I

    if-eqz v15, :cond_99

    goto :goto_45

    :cond_99
    if-eqz v4, :cond_9a

    iget-object v15, v4, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->title:Ljava/lang/String;

    goto :goto_45

    :cond_9a
    iget-object v15, v3, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    :goto_45
    new-array v3, v6, [Ljava/lang/Object;

    aput-object v15, v3, v9

    const-string v4, "FwdMessageToGroup"

    invoke-static {v4, v5, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_48

    .line 1095
    :cond_9b
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v5, Lorg/telegram/messenger/R$string;->FwdMessagesToGroup:I

    if-eqz v15, :cond_9c

    :goto_46
    const/4 v4, 0x1

    goto :goto_47

    :cond_9c
    if-eqz v4, :cond_9d

    iget-object v15, v4, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->title:Ljava/lang/String;

    goto :goto_46

    :cond_9d
    iget-object v15, v3, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    goto :goto_46

    :goto_47
    new-array v3, v4, [Ljava/lang/Object;

    aput-object v15, v3, v9

    const-string v4, "FwdMessagesToGroup"

    invoke-static {v4, v5, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_48

    .line 1098
    :cond_9e
    iget v3, v1, Lorg/telegram/ui/Components/UndoView;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-virtual {v3, v10}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    .line 1099
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_9f

    .line 1100
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v5, Lorg/telegram/messenger/R$string;->FwdMessageToUser:I

    invoke-static {v3}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v3

    new-array v6, v4, [Ljava/lang/Object;

    aput-object v3, v6, v9

    const-string v3, "FwdMessageToUser"

    invoke-static {v3, v5, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_48

    .line 1102
    :cond_9f
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v5, Lorg/telegram/messenger/R$string;->FwdMessagesToUser:I

    invoke-static {v3}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v3

    new-array v6, v4, [Ljava/lang/Object;

    aput-object v3, v6, v9

    const-string v3, "FwdMessagesToUser"

    invoke-static {v3, v5, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1105
    :goto_48
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v3, Lorg/telegram/messenger/R$raw;->forward:I

    const/16 v5, 0x1e

    invoke-virtual {v0, v3, v5, v5}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    goto/16 :goto_41

    .line 1118
    :goto_49
    iput-wide v5, v1, Lorg/telegram/ui/Components/UndoView;->timeLeft:J

    :cond_a0
    :goto_4a
    move v4, v9

    move-wide/from16 v5, v18

    goto/16 :goto_50

    :cond_a1
    const/16 v5, 0x3d

    if-ne v0, v5, :cond_a0

    .line 1120
    move-object v0, v3

    check-cast v0, Ljava/lang/Integer;

    if-nez v4, :cond_a4

    .line 1122
    iget v0, v1, Lorg/telegram/ui/Components/UndoView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    iget-wide v3, v0, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    cmp-long v0, v11, v3

    if-nez v0, :cond_a2

    .line 1123
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v3, Lorg/telegram/messenger/R$string;->BackgroundToSavedMessages:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1124
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v3, Lorg/telegram/messenger/R$raw;->saved_messages:I

    const/16 v5, 0x1e

    invoke-virtual {v0, v3, v5, v5}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    :goto_4b
    const-wide/16 v5, 0xbb8

    goto/16 :goto_4d

    .line 1126
    :cond_a2
    invoke-static {v11, v12}, Lorg/telegram/messenger/DialogObject;->isChatDialog(J)Z

    move-result v0

    if-eqz v0, :cond_a3

    .line 1127
    iget v0, v1, Lorg/telegram/ui/Components/UndoView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    neg-long v3, v11

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 1128
    iget-object v3, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v4, Lorg/telegram/messenger/R$string;->BackgroundToGroup:I

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v6, 0x1

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v0, v5, v9

    const-string v0, "BackgroundToGroup"

    invoke-static {v0, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4c

    .line 1130
    :cond_a3
    iget v0, v1, Lorg/telegram/ui/Components/UndoView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0, v10}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    .line 1131
    iget-object v3, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v4, Lorg/telegram/messenger/R$string;->BackgroundToUser:I

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x1

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v0, v5, v9

    const-string v0, "BackgroundToUser"

    invoke-static {v0, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1133
    :goto_4c
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v3, Lorg/telegram/messenger/R$raw;->forward:I

    const/16 v5, 0x1e

    invoke-virtual {v0, v3, v5, v5}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    goto :goto_4b

    .line 1136
    :cond_a4
    move-object v0, v4

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1137
    iget-object v3, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v4, Lorg/telegram/messenger/R$string;->BackgroundToChats:I

    const-string v5, "Chats"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v5, v0, v6}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x1

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v0, v5, v9

    const-string v0, "BackgroundToChats"

    invoke-static {v0, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1138
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v3, Lorg/telegram/messenger/R$raw;->forward:I

    const/16 v5, 0x1e

    invoke-virtual {v0, v3, v5, v5}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    goto/16 :goto_4b

    .line 1140
    :goto_4d
    iput-wide v5, v1, Lorg/telegram/ui/Components/UndoView;->timeLeft:J

    goto/16 :goto_4a

    .line 1021
    :cond_a5
    :goto_4e
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->shouldShowClipboardToast()Z

    move-result v0

    if-nez v0, :cond_a6

    goto/16 :goto_59

    .line 1024
    :cond_a6
    sget v0, Lorg/telegram/messenger/R$raw;->copy:I

    .line 1025
    iget v3, v1, Lorg/telegram/ui/Components/UndoView;->currentAction:I

    const/16 v6, 0x50

    if-ne v3, v6, :cond_a7

    .line 1026
    iget-object v3, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v4, Lorg/telegram/messenger/R$string;->EmailCopied:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4f

    :cond_a7
    const/16 v6, 0x3c

    if-ne v3, v6, :cond_a8

    .line 1028
    iget-object v3, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v4, Lorg/telegram/messenger/R$string;->PhoneCopied:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4f

    :cond_a8
    const/16 v6, 0x38

    if-ne v3, v6, :cond_a9

    .line 1030
    iget-object v3, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v4, Lorg/telegram/messenger/R$string;->UsernameCopied:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4f

    :cond_a9
    const/16 v6, 0x39

    if-ne v3, v6, :cond_aa

    .line 1032
    iget-object v3, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v4, Lorg/telegram/messenger/R$string;->HashtagCopied:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4f

    :cond_aa
    const/16 v6, 0x34

    if-ne v3, v6, :cond_ab

    .line 1034
    iget-object v3, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v4, Lorg/telegram/messenger/R$string;->MessageCopied:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4f

    :cond_ab
    const/16 v6, 0x3b

    if-ne v3, v6, :cond_ac

    .line 1036
    sget v0, Lorg/telegram/messenger/R$raw;->voip_invite:I

    .line 1037
    iget-object v3, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v4, Lorg/telegram/messenger/R$string;->LinkCopied:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4f

    .line 1039
    :cond_ac
    iget-object v3, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v4, Lorg/telegram/messenger/R$string;->TextCopied:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1041
    :goto_4f
    iget-object v3, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/16 v5, 0x1e

    invoke-virtual {v3, v0, v5, v5}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    const-wide/16 v5, 0xbb8

    .line 1042
    iput-wide v5, v1, Lorg/telegram/ui/Components/UndoView;->timeLeft:J

    .line 1043
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/high16 v3, 0x41700000    # 15.0f

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_4a

    .line 1142
    :goto_50
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1143
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->undoTextView:Landroid/widget/TextView;

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_undo_cancelColor:I

    invoke-direct {v1, v7}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(I)I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1144
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->undoButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1146
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, v13, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1147
    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, v13, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 1149
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/RLottieImageView;->setProgress(F)V

    .line 1150
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-lez v0, :cond_ad

    .line 1152
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    new-instance v3, Lorg/telegram/ui/Components/UndoView$$ExternalSyntheticLambda5;

    invoke-direct {v3, v1}, Lorg/telegram/ui/Components/UndoView$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/UndoView;)V

    invoke-virtual {v0, v3, v5, v6}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1557
    :cond_ad
    :goto_51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_ae

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ". "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    :cond_ae
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->makeAccessibilityAnnouncement(Ljava/lang/CharSequence;)V

    .line 1559
    invoke-virtual {v1}, Lorg/telegram/ui/Components/UndoView;->isMultilineSubInfo()Z

    move-result v0

    if-eqz v0, :cond_b0

    .line 1560
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1561
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-nez v0, :cond_af

    .line 1563
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    :cond_af
    const/high16 v2, 0x41800000    # 16.0f

    .line 1565
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v0, v2

    .line 1566
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {v9, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move/from16 p3, v0

    move-object/from16 p1, v1

    move-object/from16 p2, v2

    move/from16 p5, v3

    move/from16 p6, v4

    move/from16 p4, v5

    invoke-virtual/range {p1 .. p6}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1567
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    const/high16 v2, 0x42140000    # 37.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v0, v2

    iput v0, v1, Lorg/telegram/ui/Components/UndoView;->undoViewHeight:I

    goto/16 :goto_54

    .line 1568
    :cond_b0
    invoke-direct {v1}, Lorg/telegram/ui/Components/UndoView;->hasSubInfo()Z

    move-result v0

    if-eqz v0, :cond_b1

    const/high16 v0, 0x42500000    # 52.0f

    .line 1569
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Components/UndoView;->undoViewHeight:I

    goto/16 :goto_54

    .line 1570
    :cond_b1
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_b7

    .line 1571
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1572
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v3, v5

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    sub-int/2addr v3, v0

    if-gtz v3, :cond_b2

    .line 1574
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v3, v0, Landroid/graphics/Point;->x:I

    :cond_b2
    const/high16 v0, 0x41800000    # 16.0f

    .line 1576
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int/2addr v3, v0

    .line 1577
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v9, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 p2, v0

    move-object/from16 p1, v1

    move/from16 p3, v3

    move/from16 p5, v5

    move/from16 p6, v6

    move/from16 p4, v7

    invoke-virtual/range {p1 .. p6}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1578
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget v3, v1, Lorg/telegram/ui/Components/UndoView;->currentAction:I

    const/16 v6, 0x10

    if-eq v3, v6, :cond_b4

    const/16 v5, 0x11

    if-eq v3, v5, :cond_b4

    const/16 v6, 0x12

    if-eq v3, v6, :cond_b4

    const/16 v5, 0x54

    if-eq v3, v5, :cond_b4

    const/16 v5, 0x56

    if-ne v3, v5, :cond_b3

    goto :goto_52

    :cond_b3
    const/high16 v7, 0x41e00000    # 28.0f

    goto :goto_53

    :cond_b4
    :goto_52
    move v7, v2

    :goto_53
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v0, v2

    iput v0, v1, Lorg/telegram/ui/Components/UndoView;->undoViewHeight:I

    .line 1579
    iget v2, v1, Lorg/telegram/ui/Components/UndoView;->currentAction:I

    const/16 v6, 0x12

    if-ne v2, v6, :cond_b5

    const/high16 v2, 0x42500000    # 52.0f

    .line 1580
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Components/UndoView;->undoViewHeight:I

    goto :goto_54

    :cond_b5
    const/16 v3, 0x19

    if-ne v2, v3, :cond_b6

    const/high16 v2, 0x42480000    # 50.0f

    .line 1582
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Components/UndoView;->undoViewHeight:I

    goto :goto_54

    :cond_b6
    if-eqz v4, :cond_b7

    .line 1584
    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, v1, Lorg/telegram/ui/Components/UndoView;->undoViewHeight:I

    .line 1588
    :cond_b7
    :goto_54
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_bb

    .line 1589
    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1590
    iget-boolean v0, v1, Lorg/telegram/ui/Components/UndoView;->fromTop:Z

    const/high16 v2, -0x40800000    # -1.0f

    if-eqz v0, :cond_b8

    move v0, v2

    goto :goto_55

    :cond_b8
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_55
    iget v3, v1, Lorg/telegram/ui/Components/UndoView;->enterOffsetMargin:I

    iget v4, v1, Lorg/telegram/ui/Components/UndoView;->undoViewHeight:I

    add-int/2addr v3, v4

    iget v4, v1, Lorg/telegram/ui/Components/UndoView;->bottomInset:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v0, v3

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/UndoView;->setEnterOffset(F)V

    .line 1591
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1592
    iget-boolean v3, v1, Lorg/telegram/ui/Components/UndoView;->fromTop:Z

    if-eqz v3, :cond_b9

    move v4, v2

    goto :goto_56

    :cond_b9
    const/high16 v4, 0x3f800000    # 1.0f

    :goto_56
    iget v5, v1, Lorg/telegram/ui/Components/UndoView;->enterOffsetMargin:I

    iget v6, v1, Lorg/telegram/ui/Components/UndoView;->undoViewHeight:I

    add-int/2addr v5, v6

    iget v6, v1, Lorg/telegram/ui/Components/UndoView;->bottomInset:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v4, v5

    if-eqz v3, :cond_ba

    const/high16 v14, 0x3f800000    # 1.0f

    :goto_57
    const/4 v6, 0x2

    goto :goto_58

    :cond_ba
    move v14, v2

    goto :goto_57

    :goto_58
    new-array v2, v6, [F

    aput v4, v2, v9

    const/4 v4, 0x1

    aput v14, v2, v4

    const-string v3, "enterOffset"

    invoke-static {v1, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-array v3, v4, [Landroid/animation/Animator;

    aput-object v2, v3, v9

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1593
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0xb4

    .line 1594
    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1595
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_bb
    :goto_59
    return-void

    :pswitch_data_0
    .packed-switch 0x5a
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
