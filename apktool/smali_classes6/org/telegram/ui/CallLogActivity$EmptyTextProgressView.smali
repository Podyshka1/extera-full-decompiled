.class Lorg/telegram/ui/CallLogActivity$EmptyTextProgressView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/CallLogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EmptyTextProgressView"
.end annotation


# instance fields
.field private final emptyTextView1:Landroid/widget/TextView;

.field private final emptyTextView2:Landroid/widget/TextView;

.field private final imageView:Lorg/telegram/ui/Components/RLottieImageView;

.field private final progressView:Landroid/view/View;

.field final synthetic this$0:Lorg/telegram/ui/CallLogActivity;


# direct methods
.method public static synthetic $r8$lambda$-r2yXPcVr5CyXI-jl7raCNSCXp8(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 261
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$OxhmBW6fhTroA3w5W619shCJEUE(Lorg/telegram/ui/CallLogActivity$EmptyTextProgressView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/CallLogActivity$EmptyTextProgressView;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/CallLogActivity;Landroid/content/Context;Landroid/view/View;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    .line 219
    iput-object v2, v0, Lorg/telegram/ui/CallLogActivity$EmptyTextProgressView;->this$0:Lorg/telegram/ui/CallLogActivity;

    .line 220
    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v4, -0x1

    const/high16 v5, -0x40800000    # -1.0f

    .line 222
    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 223
    iput-object v3, v0, Lorg/telegram/ui/CallLogActivity$EmptyTextProgressView;->progressView:Landroid/view/View;

    .line 225
    new-instance v4, Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v4, v1}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/CallLogActivity$EmptyTextProgressView;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    .line 226
    sget v5, Lorg/telegram/messenger/R$raw;->utyan_call:I

    const/16 v6, 0x6e

    invoke-virtual {v4, v5, v6, v6}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    const/4 v5, 0x0

    .line 227
    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RLottieImageView;->setAutoRepeat(Z)V

    const/high16 v11, 0x42500000    # 52.0f

    const/high16 v12, 0x42700000    # 60.0f

    const/high16 v7, 0x42dc0000    # 110.0f

    const/16 v8, 0x11

    const/high16 v9, 0x42500000    # 52.0f

    const/high16 v10, 0x41880000    # 17.0f

    .line 228
    invoke-static/range {v6 .. v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 229
    new-instance v6, Lorg/telegram/ui/CallLogActivity$EmptyTextProgressView$$ExternalSyntheticLambda0;

    invoke-direct {v6, v0}, Lorg/telegram/ui/CallLogActivity$EmptyTextProgressView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/CallLogActivity$EmptyTextProgressView;)V

    invoke-virtual {v4, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lorg/telegram/ui/CallLogActivity$EmptyTextProgressView;->emptyTextView1:Landroid/widget/TextView;

    .line 237
    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 238
    sget v7, Lorg/telegram/messenger/R$string;->MakeYourFirstCall:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v7, 0x41a00000    # 20.0f

    const/4 v8, 0x1

    .line 239
    invoke-virtual {v6, v8, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 240
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 v7, 0x11

    .line 241
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v14, 0x41880000    # 17.0f

    const/4 v15, 0x0

    const/4 v9, -0x1

    const/high16 v10, -0x40000000    # -2.0f

    const/16 v11, 0x11

    const/high16 v12, 0x41880000    # 17.0f

    const/high16 v13, 0x42200000    # 40.0f

    .line 242
    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v0, v6, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 244
    new-instance v9, Landroid/widget/TextView;

    invoke-direct {v9, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v9, v0, Lorg/telegram/ui/CallLogActivity$EmptyTextProgressView;->emptyTextView2:Landroid/widget/TextView;

    .line 245
    sget v1, Lorg/telegram/messenger/R$string;->MakeYourFirstCallHint:I

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget v2, v2, Lorg/telegram/messenger/MessagesController;->conferenceCallSizeLimit:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v10, v8, [Ljava/lang/Object;

    aput-object v2, v10, v5

    invoke-static {v1, v10}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 246
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isSmallTablet()Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0xa

    const/16 v5, 0x20

    .line 247
    invoke-virtual {v1, v2, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 249
    :cond_0
    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_emptyListPlaceholder:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v1, 0x41600000    # 14.0f

    .line 251
    invoke-virtual {v9, v8, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 252
    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v1, 0x40000000    # 2.0f

    .line 253
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v9, v1, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    const/high16 v15, 0x41880000    # 17.0f

    const/16 v16, 0x0

    const/4 v10, -0x1

    const/high16 v11, -0x40000000    # -2.0f

    const/16 v12, 0x11

    const/high16 v13, 0x41880000    # 17.0f

    const/high16 v14, 0x42a00000    # 80.0f

    .line 254
    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v9, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x0

    .line 256
    invoke-virtual {v3, v1}, Landroid/view/View;->setAlpha(F)V

    .line 257
    invoke-virtual {v4, v1}, Landroid/view/View;->setAlpha(F)V

    .line 258
    invoke-virtual {v6, v1}, Landroid/view/View;->setAlpha(F)V

    .line 259
    invoke-virtual {v9, v1}, Landroid/view/View;->setAlpha(F)V

    .line 261
    new-instance v1, Lorg/telegram/ui/CallLogActivity$EmptyTextProgressView$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lorg/telegram/ui/CallLogActivity$EmptyTextProgressView$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 1

    .line 230
    iget-object p1, p0, Lorg/telegram/ui/CallLogActivity$EmptyTextProgressView;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieImageView;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_0

    .line 231
    iget-object p1, p0, Lorg/telegram/ui/CallLogActivity$EmptyTextProgressView;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RLottieImageView;->setProgress(F)V

    .line 232
    iget-object p1, p0, Lorg/telegram/ui/CallLogActivity$EmptyTextProgressView;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    :cond_0
    return-void
.end method


# virtual methods
.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public showProgress()V
    .locals 4

    .line 265
    iget-object v0, p0, Lorg/telegram/ui/CallLogActivity$EmptyTextProgressView;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 266
    iget-object v0, p0, Lorg/telegram/ui/CallLogActivity$EmptyTextProgressView;->emptyTextView1:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 267
    iget-object v0, p0, Lorg/telegram/ui/CallLogActivity$EmptyTextProgressView;->emptyTextView2:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 268
    iget-object v0, p0, Lorg/telegram/ui/CallLogActivity$EmptyTextProgressView;->progressView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public showTextView()V
    .locals 4

    .line 272
    iget-object v0, p0, Lorg/telegram/ui/CallLogActivity$EmptyTextProgressView;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 273
    iget-object v0, p0, Lorg/telegram/ui/CallLogActivity$EmptyTextProgressView;->emptyTextView1:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 274
    iget-object v0, p0, Lorg/telegram/ui/CallLogActivity$EmptyTextProgressView;->emptyTextView2:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 275
    iget-object v0, p0, Lorg/telegram/ui/CallLogActivity$EmptyTextProgressView;->progressView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 276
    iget-object v0, p0, Lorg/telegram/ui/CallLogActivity$EmptyTextProgressView;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    return-void
.end method
