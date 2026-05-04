.class public Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;
.super Lorg/telegram/ui/Components/SlideView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/LoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LoginActivityPhraseView"
.end annotation


# instance fields
.field private beginning:Ljava/lang/String;

.field private final checkPasteRunnable:Ljava/lang/Runnable;

.field private final codeField:Lorg/telegram/ui/Components/EditTextBoldCursor;

.field private codeTime:I

.field private final confirmTextView:Landroid/widget/TextView;

.field private currentParams:Landroid/os/Bundle;

.field private final currentType:I

.field private final dismissField:Ljava/lang/Runnable;

.field private emailPhone:Ljava/lang/String;

.field private errorShown:Z

.field private final errorTextView:Landroid/widget/TextView;

.field private final fieldContainer:Landroid/widget/LinearLayout;

.field private final imageView:Lorg/telegram/ui/Components/RLottieImageView;

.field private final infoContainer:Landroid/widget/FrameLayout;

.field private final infoTextView:Landroid/widget/TextView;

.field private isResendingCode:Z

.field private lastCurrentTime:D

.field private lastError:Ljava/lang/String;

.field private nextCodeAuth:Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;

.field private nextCodeParams:Landroid/os/Bundle;

.field private nextPressed:Z

.field private nextType:I

.field private final outlineField:Lorg/telegram/ui/Components/OutlineTextContainerView;

.field private pasteShown:Z

.field private final pasteTextView:Landroid/widget/TextView;

.field private pasted:Z

.field private pasting:Z

.field private phone:Ljava/lang/String;

.field private phoneHash:Ljava/lang/String;

.field private prevType:I

.field private final prevTypeTextView:Landroid/widget/TextView;

.field private requestPhone:Ljava/lang/String;

.field private shiftDp:F

.field final synthetic this$0:Lorg/telegram/ui/LoginActivity;

.field private time:I

.field private final timeText:Lorg/telegram/ui/LoginActivity$LoadingTextView;

.field private timeTimer:Ljava/util/Timer;

.field private final timerSync:Ljava/lang/Object;

.field private final titleTextView:Landroid/widget/TextView;

.field private waitingForEvent:Z


# direct methods
.method public static synthetic $r8$lambda$59Qt4rSBDehKxzSbroLmMSXw5M4(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->lambda$new$8()V

    return-void
.end method

.method public static synthetic $r8$lambda$78auo4enSe4f_MhbCAm5nyJTmdg(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->lambda$onNextPressed$9(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AqbqRgKXuFfjXl8FinaXc_wylq4(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;Landroid/view/View;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->lambda$new$0(Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$B5pfn987_adrMYrFGCaqk1h6-3I(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;Landroid/os/Bundle;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->lambda$resendCode$15(Landroid/os/Bundle;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CbbnlKrlH9D9Y4YZrozbB8PYzLg(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;Lorg/telegram/tgnet/TLRPC$TL_error;Landroid/os/Bundle;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->lambda$resendCode$14(Lorg/telegram/tgnet/TLRPC$TL_error;Landroid/os/Bundle;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EAd2sKAa4tPccUXNmXzINYfzVYk(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->lambda$onNextPressed$11()V

    return-void
.end method

.method public static synthetic $r8$lambda$G8OzuNBOcbjTbevXmhFQGIubAzk(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->lambda$onNextPressed$12(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KvbWKghFqtuXrJl3w1tDE3Iye44(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;Landroid/os/Bundle;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->lambda$new$5(Landroid/os/Bundle;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NY9F9NzTQ8S35cpfN4WRg1pCrTo(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->lambda$onNextPressed$10(Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OtWPOsh7VYIImLXChvDi7nZjBVE(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->lambda$onNextPressed$13(Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XfIVhNDB6CggtlV8_jgPmTUA4AQ(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$a3pMBcEZSvwUPNkcy0_ZR3hHkCI(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->lambda$new$2(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$aB-WSQTQ0FN8Gskjhou_orSv3Sc(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;Lorg/telegram/tgnet/TLObject;Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->lambda$new$4(Lorg/telegram/tgnet/TLObject;Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eM7zHBUPektFEyPuLbPePlGFIAs(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->lambda$new$7()V

    return-void
.end method

.method public static synthetic $r8$lambda$ed604TFlg7KcFtKRcYtlKBav1Fw(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->lambda$new$6(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gL3-AKUEtqxHzqO1Qd1x8H_EDLA(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->lambda$new$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sij0REe_q9RE34kC1GhYxXrejWI(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->lambda$onShow$16()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetbeginning(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->beginning:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcodeField(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;)Lorg/telegram/ui/Components/EditTextBoldCursor;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->codeField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdismissField(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;)Ljava/lang/Runnable;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->dismissField:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetisResendingCode(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->isResendingCode:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlastCurrentTime(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;)D
    .locals 2

    .line 0
    iget-wide v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->lastCurrentTime:D

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetnextType(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->nextType:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetpasted(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->pasted:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgettime(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->time:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgettimeText(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;)Lorg/telegram/ui/LoginActivity$LoadingTextView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->timeText:Lorg/telegram/ui/LoginActivity$LoadingTextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettimeTimer(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;)Ljava/util/Timer;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->timeTimer:Ljava/util/Timer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputlastCurrentTime(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;D)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->lastCurrentTime:D

    return-void
.end method

.method static bridge synthetic -$$Nest$fputpasted(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->pasted:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputpasting(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->pasting:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputtime(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->time:I

    return-void
.end method

.method static bridge synthetic -$$Nest$manimateError(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->animateError(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mbeginsOk(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;Ljava/lang/String;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->beginsOk(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mcheckPaste(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->checkPaste(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdestroyTimer(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->destroyTimer()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monInputError(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->onInputError(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mtrimLeft(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->trimLeft(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;I)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    .line 9218
    iput-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->this$0:Lorg/telegram/ui/LoginActivity;

    .line 9219
    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/SlideView;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x1

    .line 9191
    iput-boolean v4, v0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->pasteShown:Z

    const/4 v5, 0x0

    .line 9192
    iput-boolean v5, v0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->errorShown:Z

    .line 9193
    iput-boolean v5, v0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->pasting:Z

    iput-boolean v5, v0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->pasted:Z

    .line 9205
    new-instance v6, Ljava/lang/Object;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-object v6, v0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->timerSync:Ljava/lang/Object;

    const v6, 0xea60

    .line 9206
    iput v6, v0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->time:I

    const/16 v6, 0x3a98

    .line 9207
    iput v6, v0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->codeTime:I

    .line 9213
    const-string v6, ""

    iput-object v6, v0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->lastError:Ljava/lang/String;

    .line 9499
    new-instance v6, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$$ExternalSyntheticLambda1;

    invoke-direct {v6, v0}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;)V

    iput-object v6, v0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->checkPasteRunnable:Ljava/lang/Runnable;

    .line 9660
    new-instance v6, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$$ExternalSyntheticLambda2;

    invoke-direct {v6, v0}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;)V

    iput-object v6, v0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->dismissField:Ljava/lang/Runnable;

    const/high16 v6, -0x3fc00000    # -3.0f

    .line 9662
    iput v6, v0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->shiftDp:F

    .line 9220
    iput v3, v0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->currentType:I

    const/16 v6, 0x10

    if-ne v3, v6, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v4

    .line 9228
    :goto_0
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 9230
    new-instance v6, Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v6, v2}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    .line 9231
    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 9232
    sget v7, Lorg/telegram/messenger/R$raw;->bubble:I

    const/16 v8, 0x5f

    invoke-virtual {v6, v7, v8, v8}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    .line 9233
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isSmallScreen()Z

    move-result v7

    if-nez v7, :cond_2

    sget-object v7, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v8, v7, Landroid/graphics/Point;->x:I

    iget v7, v7, Landroid/graphics/Point;->y:I

    if-le v8, v7, :cond_1

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v7

    if-nez v7, :cond_1

    goto :goto_1

    :cond_1
    move v7, v5

    goto :goto_2

    :cond_2
    :goto_1
    move v7, v4

    :goto_2
    const/16 v8, 0x8

    if-eqz v7, :cond_3

    move v9, v8

    goto :goto_3

    :cond_3
    move v9, v5

    .line 9234
    :goto_3
    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    const/4 v15, 0x0

    const/16 v16, 0x5

    const/16 v10, 0x5f

    const/16 v11, 0x5f

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/16 v14, 0xa

    .line 9235
    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v0, v6, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 9237
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->titleTextView:Landroid/widget/TextView;

    const/high16 v9, 0x41900000    # 18.0f

    .line 9238
    invoke-virtual {v6, v4, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 9239
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v10, 0x40000000    # 2.0f

    .line 9240
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-virtual {v6, v11, v12}, Landroid/widget/TextView;->setLineSpacing(FF)V

    const/16 v11, 0x31

    .line 9241
    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setGravity(I)V

    if-nez v3, :cond_4

    .line 9242
    sget v11, Lorg/telegram/messenger/R$string;->SMSWordTitle:I

    goto :goto_4

    :cond_4
    sget v11, Lorg/telegram/messenger/R$string;->SMSPhraseTitle:I

    :goto_4
    invoke-static {v11}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v7, :cond_5

    const/16 v7, 0x19

    move/from16 v17, v7

    goto :goto_5

    :cond_5
    move/from16 v17, v5

    :goto_5
    const/16 v18, 0x8

    const/16 v19, 0x0

    const/4 v13, -0x2

    const/4 v14, -0x2

    const/4 v15, 0x1

    const/16 v16, 0x8

    .line 9243
    invoke-static/range {v13 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 9245
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->confirmTextView:Landroid/widget/TextView;

    const/high16 v7, 0x41600000    # 14.0f

    .line 9246
    invoke-virtual {v6, v4, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 9247
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 9248
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v6, v11, v12}, Landroid/widget/TextView;->setLineSpacing(FF)V

    const/16 v19, 0x10

    const/16 v17, 0x5

    .line 9249
    invoke-static/range {v13 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v0, v6, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 9251
    new-instance v6, Lorg/telegram/ui/Components/OutlineTextContainerView;

    invoke-direct {v6, v2}, Lorg/telegram/ui/Components/OutlineTextContainerView;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->outlineField:Lorg/telegram/ui/Components/OutlineTextContainerView;

    if-nez v3, :cond_6

    .line 9252
    sget v11, Lorg/telegram/messenger/R$string;->SMSWord:I

    goto :goto_6

    :cond_6
    sget v11, Lorg/telegram/messenger/R$string;->SMSPhrase:I

    :goto_6
    invoke-static {v11}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Lorg/telegram/ui/Components/OutlineTextContainerView;->setText(Ljava/lang/String;)V

    .line 9254
    new-instance v11, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$1;

    invoke-direct {v11, v0, v2, v1}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$1;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;Landroid/content/Context;Lorg/telegram/ui/LoginActivity;)V

    iput-object v11, v0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->codeField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    .line 9267
    invoke-virtual {v11}, Landroid/widget/TextView;->setSingleLine()V

    .line 9268
    invoke-virtual {v11, v4}, Landroid/widget/TextView;->setLines(I)V

    const/high16 v13, 0x41a00000    # 20.0f

    .line 9269
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    invoke-virtual {v11, v13}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorSize(I)V

    const/high16 v13, 0x3fc00000    # 1.5f

    .line 9270
    invoke-virtual {v11, v13}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorWidth(F)V

    const v14, 0x10000005

    .line 9271
    invoke-virtual {v11, v14}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 9272
    invoke-virtual {v11, v4, v9}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTextSize(IF)V

    .line 9273
    invoke-virtual {v11, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    const/4 v9, 0x0

    .line 9274
    invoke-virtual {v11, v9}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    if-nez v3, :cond_7

    .line 9275
    sget v9, Lorg/telegram/messenger/R$string;->SMSWordHint:I

    goto :goto_7

    :cond_7
    sget v9, Lorg/telegram/messenger/R$string;->SMSPhraseHint:I

    :goto_7
    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 9276
    new-instance v9, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$2;

    invoke-direct {v9, v0, v1}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$2;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;Lorg/telegram/ui/LoginActivity;)V

    invoke-virtual {v11, v9}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 9312
    invoke-virtual {v11, v4}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setEllipsizeByGradient(Z)V

    .line 9313
    invoke-virtual {v11, v4}, Landroid/widget/TextView;->setInputType(I)V

    .line 9315
    sget-object v9, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v11, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 9316
    sget-boolean v9, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v9, :cond_8

    const/4 v9, 0x5

    goto :goto_8

    :cond_8
    const/4 v9, 0x3

    :goto_8
    invoke-virtual {v11, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 9318
    new-instance v9, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$$ExternalSyntheticLambda3;

    invoke-direct {v9, v0}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;)V

    invoke-virtual {v11, v9}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 9320
    new-instance v9, Landroid/widget/TextView;

    invoke-direct {v9, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v9, v0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->pasteTextView:Landroid/widget/TextView;

    const/high16 v14, 0x41400000    # 12.0f

    .line 9321
    invoke-virtual {v9, v4, v14}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 9322
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v14

    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 9323
    sget v14, Lorg/telegram/messenger/R$string;->Paste:I

    invoke-static {v14}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v14, 0x41200000    # 10.0f

    .line 9324
    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    invoke-virtual {v9, v15, v5, v14, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 v5, 0x11

    .line 9325
    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 9326
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText2:I

    invoke-static {v1}, Lorg/telegram/ui/LoginActivity;->access$4000(Lorg/telegram/ui/LoginActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v14

    invoke-static {v5, v14}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v5

    .line 9327
    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v14, 0x40c00000    # 6.0f

    .line 9328
    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    const v15, 0x3df5c28f    # 0.12f

    invoke-static {v5, v15}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v15

    move/from16 p3, v10

    const v10, 0x3e19999a    # 0.15f

    invoke-static {v5, v10}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v5

    invoke-static {v14, v15, v5}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v9, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const v5, 0x3dcccccd    # 0.1f

    .line 9329
    invoke-static {v9, v5, v13}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;FF)V

    const/high16 v5, 0x41800000    # 16.0f

    .line 9330
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    const v13, 0x415570a4    # 13.34f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    invoke-virtual {v11, v10, v14, v15, v13}, Landroid/view/View;->setPadding(IIII)V

    .line 9331
    new-instance v10, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$$ExternalSyntheticLambda4;

    invoke-direct {v10, v0}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/4 v13, -0x1

    const/high16 v14, -0x40000000    # -2.0f

    const/16 v15, 0x77

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 9352
    invoke-static/range {v13 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v6, v11, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 9353
    invoke-virtual {v6, v11}, Lorg/telegram/ui/Components/OutlineTextContainerView;->attachEditText(Landroid/widget/EditText;)V

    const/high16 v18, 0x41200000    # 10.0f

    const/4 v13, -0x2

    const/high16 v14, 0x41d00000    # 26.0f

    const/16 v15, 0x15

    .line 9354
    invoke-static/range {v13 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 9356
    new-instance v9, Landroid/widget/LinearLayout;

    invoke-direct {v9, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v9, v0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->fieldContainer:Landroid/widget/LinearLayout;

    .line 9357
    invoke-virtual {v9, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v10, -0x1

    .line 9358
    invoke-static {v10, v13, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v9, v6, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v20, 0x10

    const/16 v21, 0x0

    const/4 v15, -0x1

    const/16 v16, -0x2

    const/16 v17, 0x1

    const/16 v18, 0x10

    const/16 v19, 0x3

    .line 9359
    invoke-static/range {v15 .. v21}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v9, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 9360
    new-instance v6, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$$ExternalSyntheticLambda5;

    invoke-direct {v6, v0}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;)V

    invoke-virtual {v11, v6}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 9368
    new-instance v6, Landroid/widget/FrameLayout;

    invoke-direct {v6, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->infoContainer:Landroid/widget/FrameLayout;

    .line 9369
    invoke-static {v10, v13}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v9, v6, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 9371
    new-instance v9, Lorg/telegram/ui/LoginActivity$LoadingTextView;

    invoke-direct {v9, v1, v2}, Lorg/telegram/ui/LoginActivity$LoadingTextView;-><init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;)V

    iput-object v9, v0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->prevTypeTextView:Landroid/widget/TextView;

    .line 9372
    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteValueText:I

    invoke-static {v11}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v13

    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 9373
    invoke-virtual {v1, v11}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v13

    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 9374
    invoke-virtual {v9, v4, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 9375
    invoke-static/range {p3 .. p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    int-to-float v13, v13

    invoke-virtual {v9, v13, v12}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 9376
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    const/high16 v14, 0x41000000    # 8.0f

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    move/from16 v16, v5

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    move/from16 v17, v7

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-virtual {v9, v13, v15, v5, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 9377
    new-instance v5, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$$ExternalSyntheticLambda6;

    invoke-direct {v5, v0}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;)V

    invoke-virtual {v9, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v18, -0x2

    const/16 v19, -0x2

    const/16 v20, 0x1

    const/16 v22, 0x12

    .line 9378
    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v9, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 9379
    invoke-virtual {v9, v8}, Landroid/view/View;->setVisibility(I)V

    .line 9381
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->errorTextView:Landroid/widget/TextView;

    const/4 v7, 0x0

    .line 9382
    invoke-virtual {v5, v7}, Landroid/view/View;->setPivotX(F)V

    .line 9383
    invoke-virtual {v5, v7}, Landroid/view/View;->setPivotY(F)V

    if-nez v3, :cond_9

    .line 9384
    sget v8, Lorg/telegram/messenger/R$string;->SMSWordError:I

    goto :goto_9

    :cond_9
    sget v8, Lorg/telegram/messenger/R$string;->SMSPhraseError:I

    :goto_9
    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9385
    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-virtual {v1, v8}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v8, 0x41500000    # 13.0f

    .line 9386
    invoke-virtual {v5, v4, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    const/high16 v23, 0x41800000    # 16.0f

    const/high16 v24, 0x41000000    # 8.0f

    const/16 v18, -0x1

    const/high16 v19, -0x40000000    # -2.0f

    const/16 v20, 0x77

    const/high16 v21, 0x41800000    # 16.0f

    const/high16 v22, 0x41000000    # 8.0f

    .line 9387
    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v6, v5, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 9388
    invoke-virtual {v5, v7}, Landroid/view/View;->setAlpha(F)V

    const v9, 0x3f4ccccd    # 0.8f

    .line 9389
    invoke-virtual {v5, v9}, Landroid/view/View;->setScaleX(F)V

    .line 9390
    invoke-virtual {v5, v9}, Landroid/view/View;->setScaleY(F)V

    const/high16 v9, 0x40800000    # 4.0f

    .line 9391
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    neg-int v9, v9

    int-to-float v9, v9

    invoke-virtual {v5, v9}, Landroid/view/View;->setTranslationY(F)V

    .line 9393
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->infoTextView:Landroid/widget/TextView;

    .line 9394
    invoke-virtual {v5, v7}, Landroid/view/View;->setPivotX(F)V

    .line 9395
    invoke-virtual {v5, v7}, Landroid/view/View;->setPivotY(F)V

    if-nez v3, :cond_a

    .line 9396
    sget v3, Lorg/telegram/messenger/R$string;->SMSWordPasteHint:I

    goto :goto_a

    :cond_a
    sget v3, Lorg/telegram/messenger/R$string;->SMSPhrasePasteHint:I

    :goto_a
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9397
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 9398
    invoke-virtual {v5, v4, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    const/high16 v23, 0x41800000    # 16.0f

    const/high16 v24, 0x41000000    # 8.0f

    const/16 v18, -0x1

    const/high16 v19, -0x40000000    # -2.0f

    const/16 v20, 0x77

    const/high16 v21, 0x41800000    # 16.0f

    const/high16 v22, 0x41000000    # 8.0f

    .line 9399
    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v6, v5, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 9401
    new-instance v3, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$3;

    invoke-direct {v3, v0, v2, v1}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$3;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;Landroid/content/Context;Lorg/telegram/ui/LoginActivity;)V

    iput-object v3, v0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->timeText:Lorg/telegram/ui/LoginActivity$LoadingTextView;

    .line 9411
    invoke-static {v11}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 9412
    invoke-static/range {p3 .. p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v3, v1, v12}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 9413
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-virtual {v3, v1, v5, v6, v7}, Landroid/view/View;->setPadding(IIII)V

    const/high16 v1, 0x41700000    # 15.0f

    .line 9414
    invoke-virtual {v3, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v1, 0x13

    .line 9415
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 9416
    new-instance v1, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$$ExternalSyntheticLambda7;

    invoke-direct {v1, v0}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;)V

    invoke-virtual {v3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9489
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/high16 v16, 0x42700000    # 60.0f

    const/high16 v17, 0x41e00000    # 28.0f

    const/4 v11, -0x1

    const/high16 v12, 0x42600000    # 56.0f

    const/16 v13, 0x50

    const/high16 v14, 0x40c00000    # 6.0f

    const/4 v15, 0x0

    .line 9490
    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v2, 0x50

    .line 9491
    invoke-static {v10, v10, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 9492
    invoke-static {v3}, Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;->attach(Landroid/view/View;)Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;

    return-void
.end method

.method private animateError(Z)V
    .locals 8

    .line 9650
    iput-boolean p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->errorShown:Z

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    .line 9652
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->outlineField:Lorg/telegram/ui/Components/OutlineTextContainerView;

    invoke-virtual {v2, p1}, Lorg/telegram/ui/Components/OutlineTextContainerView;->animateError(F)V

    .line 9653
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->errorTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const v3, 0x3dcccccd    # 0.1f

    mul-float v4, p1, v3

    const v5, 0x3f666666    # 0.9f

    add-float/2addr v4, v5

    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    sub-float p1, v1, p1

    const/high16 v4, -0x3f600000    # -5.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr p1, v6

    invoke-virtual {v2, p1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v6, 0x122

    invoke-virtual {p1, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 9655
    iget-boolean p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->pasteShown:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->errorShown:Z

    if-nez p1, :cond_1

    move v0, v1

    .line 9657
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->infoTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    mul-float/2addr v3, v0

    add-float/2addr v3, v5

    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sub-float/2addr v1, v0

    iget-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->errorShown:Z

    if-eqz v0, :cond_2

    const/high16 v4, 0x40a00000    # 5.0f

    :cond_2
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v1, v0

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private beginsOk(Ljava/lang/String;)Z
    .locals 4

    .line 10044
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->beginning:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 10047
    :cond_0
    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->trimLeft(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 10048
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->beginning:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 10049
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-gtz v2, :cond_1

    return v1

    :cond_1
    const/4 v1, 0x0

    .line 10051
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method private checkPaste(Z)V
    .locals 9

    .line 9502
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->checkPasteRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 9505
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 9506
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->codeField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 9508
    :goto_0
    iget-boolean v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->pasteShown:Z

    if-eq v1, v0, :cond_12

    .line 9509
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->pasteShown:Z

    const/high16 v1, -0x3f600000    # -5.0f

    const/high16 v2, 0x40a00000    # 5.0f

    const v3, 0x3f666666    # 0.9f

    const v4, 0x3f333333    # 0.7f

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz p1, :cond_9

    .line 9511
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->pasteTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    if-eqz v0, :cond_1

    move v7, v6

    goto :goto_1

    :cond_1
    move v7, v5

    .line 9512
    :goto_1
    invoke-virtual {p1, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    if-eqz v0, :cond_2

    move v7, v6

    goto :goto_2

    :cond_2
    move v7, v4

    .line 9513
    :goto_2
    invoke-virtual {p1, v7}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    if-eqz v0, :cond_3

    move v4, v6

    .line 9514
    :cond_3
    invoke-virtual {p1, v4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    .line 9515
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v7, 0x12c

    .line 9516
    invoke-virtual {p1, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 9517
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 9519
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->infoTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 9520
    iget-boolean v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->pasteShown:Z

    if-eqz v4, :cond_4

    iget-boolean v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->errorShown:Z

    if-nez v4, :cond_4

    move v4, v6

    goto :goto_3

    :cond_4
    move v4, v3

    :goto_3
    invoke-virtual {p1, v4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 9521
    iget-boolean v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->pasteShown:Z

    if-eqz v4, :cond_5

    iget-boolean v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->errorShown:Z

    if-nez v4, :cond_5

    move v3, v6

    :cond_5
    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 9522
    iget-boolean v3, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->pasteShown:Z

    if-eqz v3, :cond_6

    iget-boolean v3, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->errorShown:Z

    if-nez v3, :cond_6

    goto :goto_4

    :cond_6
    move v6, v5

    :goto_4
    invoke-virtual {p1, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 9523
    iget-boolean v3, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->pasteShown:Z

    if-eqz v3, :cond_7

    iget-boolean v3, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->errorShown:Z

    if-nez v3, :cond_7

    goto :goto_5

    :cond_7
    iget-boolean v3, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->errorShown:Z

    if-eqz v3, :cond_8

    move v1, v2

    :cond_8
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v5, v1

    :goto_5
    invoke-virtual {p1, v5}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 9524
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 9525
    invoke-virtual {p1, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 9526
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/16 :goto_b

    .line 9528
    :cond_9
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->pasteTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_a

    move v7, v6

    goto :goto_6

    :cond_a
    move v7, v5

    :goto_6
    invoke-virtual {p1, v7}, Landroid/view/View;->setAlpha(F)V

    .line 9529
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->pasteTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_b

    move v7, v6

    goto :goto_7

    :cond_b
    move v7, v4

    :goto_7
    invoke-virtual {p1, v7}, Landroid/view/View;->setScaleX(F)V

    .line 9530
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->pasteTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_c

    move v4, v6

    :cond_c
    invoke-virtual {p1, v4}, Landroid/view/View;->setScaleY(F)V

    .line 9532
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->infoTextView:Landroid/widget/TextView;

    iget-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->pasteShown:Z

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->errorShown:Z

    if-nez v0, :cond_d

    move v0, v6

    goto :goto_8

    :cond_d
    move v0, v3

    :goto_8
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 9533
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->infoTextView:Landroid/widget/TextView;

    iget-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->pasteShown:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->errorShown:Z

    if-nez v0, :cond_e

    move v3, v6

    :cond_e
    invoke-virtual {p1, v3}, Landroid/view/View;->setScaleY(F)V

    .line 9534
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->infoTextView:Landroid/widget/TextView;

    iget-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->pasteShown:Z

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->errorShown:Z

    if-nez v0, :cond_f

    goto :goto_9

    :cond_f
    move v6, v5

    :goto_9
    invoke-virtual {p1, v6}, Landroid/view/View;->setAlpha(F)V

    .line 9535
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->infoTextView:Landroid/widget/TextView;

    iget-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->pasteShown:Z

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->errorShown:Z

    if-nez v0, :cond_10

    goto :goto_a

    :cond_10
    iget-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->errorShown:Z

    if-eqz v0, :cond_11

    move v1, v2

    :cond_11
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v5, v0

    :goto_a
    invoke-virtual {p1, v5}, Landroid/view/View;->setTranslationY(F)V

    .line 9539
    :cond_12
    :goto_b
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->checkPasteRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x1388

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private createTimer()V
    .locals 9

    .line 9974
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->timeTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    return-void

    .line 9977
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->timeText:Lorg/telegram/ui/LoginActivity$LoadingTextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 9978
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->timeText:Lorg/telegram/ui/LoginActivity$LoadingTextView;

    sget v2, Lorg/telegram/messenger/R$id;->color_key_tag:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 9982
    new-instance v3, Ljava/util/Timer;

    invoke-direct {v3}, Ljava/util/Timer;-><init>()V

    iput-object v3, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->timeTimer:Ljava/util/Timer;

    .line 9983
    new-instance v4, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$4;

    invoke-direct {v4, p0}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$4;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;)V

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x3e8

    invoke-virtual/range {v3 .. v8}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method private destroyTimer()V
    .locals 3

    .line 10029
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->timeText:Lorg/telegram/ui/LoginActivity$LoadingTextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 10030
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->timeText:Lorg/telegram/ui/LoginActivity$LoadingTextView;

    sget v2, Lorg/telegram/messenger/R$id;->color_key_tag:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 10032
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->timerSync:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10033
    :try_start_1
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->timeTimer:Ljava/util/Timer;

    if-eqz v1, :cond_0

    .line 10034
    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    const/4 v1, 0x0

    .line 10035
    iput-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->timeTimer:Ljava/util/Timer;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 10037
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 10039
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;Z)V
    .locals 0

    .line 9318
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->outlineField:Lorg/telegram/ui/Components/OutlineTextContainerView;

    if-eqz p2, :cond_0

    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/OutlineTextContainerView;->animateSelection(F)V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)V
    .locals 5

    .line 9332
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "clipboard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ClipboardManager;

    const/4 v0, 0x0

    .line 9335
    :try_start_0
    invoke-virtual {p1}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9337
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_0
    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 9340
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->codeField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 9341
    iput-boolean v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->pasted:Z

    iput-boolean v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->pasting:Z

    if-eqz v2, :cond_0

    .line 9343
    iget-object v3, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->codeField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 9344
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->codeField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v4}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 9345
    invoke-interface {v2, v3, v4, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 9347
    :cond_0
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->pasting:Z

    .line 9349
    :cond_1
    invoke-direct {p0, v1}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->checkPaste(Z)V

    return-void
.end method

.method private synthetic lambda$new$2(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x5

    if-ne p2, p1, :cond_0

    const/4 p1, 0x0

    .line 9362
    invoke-virtual {p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->onNextPressed(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$new$3(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    .line 9377
    invoke-virtual {p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->onBackPressed(Z)Z

    return-void
.end method

.method private synthetic lambda$new$4(Lorg/telegram/tgnet/TLObject;Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2

    const/4 v0, 0x0

    .line 9450
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->isResendingCode:Z

    .line 9451
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->timeText:Lorg/telegram/ui/LoginActivity$LoadingTextView;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    if-eqz p1, :cond_0

    .line 9453
    iput-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->nextCodeParams:Landroid/os/Bundle;

    .line 9454
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;

    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->nextCodeAuth:Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;

    .line 9455
    iget-object p3, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p3, p2, p1}, Lorg/telegram/ui/LoginActivity;->-$$Nest$mfillNextCodeParams(Lorg/telegram/ui/LoginActivity;Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$auth_SentCode;)V

    return-void

    :cond_0
    if-eqz p3, :cond_7

    .line 9456
    iget-object p1, p3, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    if-eqz p1, :cond_7

    .line 9457
    const-string p2, "PHONE_NUMBER_INVALID"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 9458
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->this$0:Lorg/telegram/ui/LoginActivity;

    sget p2, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$string;->InvalidPhoneNumber:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lorg/telegram/ui/LoginActivity;->-$$Nest$mneedShowAlert(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 9459
    :cond_1
    iget-object p1, p3, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string p2, "PHONE_CODE_EMPTY"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p3, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string p2, "PHONE_CODE_INVALID"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 9461
    :cond_2
    iget-object p1, p3, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string p2, "PHONE_CODE_EXPIRED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    .line 9462
    invoke-virtual {p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->onBackPressed(Z)Z

    .line 9463
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->this$0:Lorg/telegram/ui/LoginActivity;

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1, p1}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    .line 9464
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->this$0:Lorg/telegram/ui/LoginActivity;

    sget p2, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$string;->CodeExpired:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lorg/telegram/ui/LoginActivity;->-$$Nest$mneedShowAlert(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 9465
    :cond_3
    iget-object p1, p3, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string p2, "FLOOD_WAIT"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 9466
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->this$0:Lorg/telegram/ui/LoginActivity;

    sget p2, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$string;->FloodWait:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lorg/telegram/ui/LoginActivity;->-$$Nest$mneedShowAlert(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 9467
    :cond_4
    iget p1, p3, Lorg/telegram/tgnet/TLRPC$TL_error;->code:I

    const/16 p2, -0x3e8

    if-eq p1, p2, :cond_6

    .line 9468
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->this$0:Lorg/telegram/ui/LoginActivity;

    sget p2, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lorg/telegram/messenger/R$string;->ErrorOccurred:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p3, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lorg/telegram/ui/LoginActivity;->-$$Nest$mneedShowAlert(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 9460
    :cond_5
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->this$0:Lorg/telegram/ui/LoginActivity;

    sget p2, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$string;->InvalidCode:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lorg/telegram/ui/LoginActivity;->-$$Nest$mneedShowAlert(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 9470
    :cond_6
    :goto_1
    iget-object p1, p3, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->lastError:Ljava/lang/String;

    :cond_7
    return-void
.end method

.method private synthetic lambda$new$5(Landroid/os/Bundle;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 9449
    new-instance v0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0, p2, p1, p3}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;Lorg/telegram/tgnet/TLObject;Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$new$6(Landroid/view/View;)V
    .locals 4

    .line 9420
    iget p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->time:I

    if-lez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->timeTimer:Ljava/util/Timer;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 9423
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->nextCodeParams:Landroid/os/Bundle;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->nextCodeAuth:Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;

    if-eqz v0, :cond_1

    .line 9424
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v1, p1, v0}, Lorg/telegram/ui/LoginActivity;->-$$Nest$mfillNextCodeParams(Lorg/telegram/ui/LoginActivity;Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$auth_SentCode;)V

    return-void

    .line 9428
    :cond_1
    iget p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->nextType:I

    const/16 v0, 0xb

    const/4 v1, 0x4

    if-eq p1, v1, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_4

    if-eq p1, v0, :cond_4

    const/16 v2, 0xf

    if-ne p1, v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    const/4 p1, 0x0

    .line 9474
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->setWaitingForSms(Z)V

    .line 9476
    iput-boolean p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->waitingForEvent:Z

    .line 9478
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->resendCode()V

    :cond_3
    :goto_0
    return-void

    :cond_4
    :goto_1
    const/4 p1, 0x1

    .line 9429
    iput-boolean p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->isResendingCode:Z

    .line 9430
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->timeText:Lorg/telegram/ui/LoginActivity$LoadingTextView;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 9431
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->timeText:Lorg/telegram/ui/LoginActivity$LoadingTextView;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteValueText:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 9433
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->timeText:Lorg/telegram/ui/LoginActivity$LoadingTextView;

    const/high16 v3, 0x41700000    # 15.0f

    invoke-virtual {v2, p1, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 9434
    iget p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->nextType:I

    if-eq p1, v1, :cond_6

    if-ne p1, v0, :cond_5

    goto :goto_2

    .line 9437
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->timeText:Lorg/telegram/ui/LoginActivity$LoadingTextView;

    sget v0, Lorg/telegram/messenger/R$string;->SendingSms:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 9435
    :cond_6
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->timeText:Lorg/telegram/ui/LoginActivity$LoadingTextView;

    sget v0, Lorg/telegram/messenger/R$string;->Calling:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9439
    :goto_3
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 9440
    const-string v0, "phone"

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->phone:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9441
    const-string v0, "ephone"

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->emailPhone:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9442
    const-string v0, "phoneFormated"

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->requestPhone:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9443
    const-string v0, "prevType"

    iget v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->currentType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 9446
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;-><init>()V

    .line 9447
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->requestPhone:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;->phone_number:Ljava/lang/String;

    .line 9448
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->phoneHash:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;->phone_code_hash:Ljava/lang/String;

    .line 9449
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v1}, Lorg/telegram/ui/LoginActivity;->access$4300(Lorg/telegram/ui/LoginActivity;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;Landroid/os/Bundle;)V

    const/16 p1, 0xa

    invoke-virtual {v1, v0, v2, p1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    return-void
.end method

.method private synthetic lambda$new$7()V
    .locals 1

    const/4 v0, 0x1

    .line 9499
    invoke-direct {p0, v0}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->checkPaste(Z)V

    return-void
.end method

.method private synthetic lambda$new$8()V
    .locals 1

    const/4 v0, 0x0

    .line 9660
    invoke-direct {p0, v0}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->animateError(Z)V

    return-void
.end method

.method private synthetic lambda$onNextPressed$10(Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 9742
    new-instance v0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0, p3, p2, p1}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onNextPressed$11()V
    .locals 6

    .line 9791
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->codeField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 9792
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->beginning:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    .line 9793
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->codeField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 9794
    invoke-direct {p0, v0}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->trimLeftLen(Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->beginning:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    if-ltz v3, :cond_0

    .line 9795
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x20

    if-ne v4, v5, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 9796
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->codeField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    add-int/2addr v3, v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v3, v0, v1}, Lorg/telegram/messenger/Utilities;->clamp(III)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->codeField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {v4, v0, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(II)V

    return-void

    .line 9798
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->codeField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(II)V

    return-void
.end method

.method private synthetic lambda$onNextPressed$12(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;)V
    .locals 4

    .line 9713
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->this$0:Lorg/telegram/ui/LoginActivity;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/LoginActivity;->-$$Nest$mneedHideProgress(Lorg/telegram/ui/LoginActivity;ZZ)V

    const/4 v0, 0x3

    if-nez p1, :cond_2

    .line 9718
    iput-boolean v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->nextPressed:Z

    .line 9720
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1, v1, v2}, Lorg/telegram/ui/LoginActivity;->-$$Nest$mshowDoneButton(Lorg/telegram/ui/LoginActivity;ZZ)V

    .line 9721
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->destroyTimer()V

    .line 9723
    instance-of p1, p2, Lorg/telegram/tgnet/TLRPC$TL_auth_authorizationSignUpRequired;

    if-eqz p1, :cond_1

    .line 9724
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_auth_authorizationSignUpRequired;

    .line 9725
    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_auth_authorizationSignUpRequired;->terms_of_service:Lorg/telegram/tgnet/TLRPC$TL_help_termsOfService;

    if-eqz p1, :cond_0

    .line 9726
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p2, p1}, Lorg/telegram/ui/LoginActivity;->-$$Nest$fputcurrentTermsOfService(Lorg/telegram/ui/LoginActivity;Lorg/telegram/tgnet/TLRPC$TL_help_termsOfService;)V

    .line 9728
    :cond_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 9729
    const-string p2, "phoneFormated"

    iget-object v3, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->requestPhone:Ljava/lang/String;

    invoke-virtual {p1, p2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9730
    const-string p2, "phoneHash"

    iget-object v3, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->phoneHash:Ljava/lang/String;

    invoke-virtual {p1, p2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9731
    const-string p2, "code"

    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;->phone_code:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9733
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->this$0:Lorg/telegram/ui/LoginActivity;

    const/4 p3, 0x5

    invoke-virtual {p2, p3, v2, p1, v1}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    goto :goto_0

    .line 9735
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->this$0:Lorg/telegram/ui/LoginActivity;

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;

    invoke-static {p1, p2}, Lorg/telegram/ui/LoginActivity;->-$$Nest$monAuthSuccess(Lorg/telegram/ui/LoginActivity;Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;)V

    goto :goto_0

    .line 9738
    :cond_2
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    iput-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->lastError:Ljava/lang/String;

    .line 9739
    const-string v3, "SESSION_PASSWORD_NEEDED"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 9741
    new-instance p1, Lorg/telegram/tgnet/tl/TL_account$getPassword;

    invoke-direct {p1}, Lorg/telegram/tgnet/tl/TL_account$getPassword;-><init>()V

    .line 9742
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p2}, Lorg/telegram/ui/LoginActivity;->access$4200(Lorg/telegram/ui/LoginActivity;)I

    move-result p2

    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    new-instance v2, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$$ExternalSyntheticLambda14;

    invoke-direct {v2, p0, p3}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;)V

    const/16 p3, 0xa

    invoke-virtual {p2, p1, v2, p3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    .line 9764
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->destroyTimer()V

    .line 9809
    :goto_0
    iget p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->currentType:I

    if-ne p1, v0, :cond_9

    .line 9810
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->endIncomingCall()V

    .line 9811
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->setWaitingForCall(Z)V

    return-void

    .line 9767
    :cond_3
    iput-boolean v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->nextPressed:Z

    .line 9772
    iget p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->currentType:I

    if-eq p2, v0, :cond_9

    .line 9774
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string p3, "PHONE_NUMBER_INVALID"

    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 9775
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->this$0:Lorg/telegram/ui/LoginActivity;

    sget p2, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "InvalidPhoneNumber"

    sget v0, Lorg/telegram/messenger/R$string;->InvalidPhoneNumber:I

    invoke-static {p3, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lorg/telegram/ui/LoginActivity;->-$$Nest$mneedShowAlert(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 9776
    :cond_4
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string p3, "PHONE_CODE_EMPTY"

    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_8

    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string p3, "PHONE_CODE_INVALID"

    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_5

    goto/16 :goto_2

    .line 9779
    :cond_5
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string p3, "PHONE_CODE_EXPIRED"

    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 9780
    invoke-virtual {p0, v2}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->onBackPressed(Z)Z

    .line 9781
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->this$0:Lorg/telegram/ui/LoginActivity;

    const/4 p2, 0x0

    invoke-virtual {p1, v1, v2, p2, v2}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    .line 9782
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->this$0:Lorg/telegram/ui/LoginActivity;

    sget p2, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "CodeExpired"

    sget v0, Lorg/telegram/messenger/R$string;->CodeExpired:I

    invoke-static {p3, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lorg/telegram/ui/LoginActivity;->-$$Nest$mneedShowAlert(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 9783
    :cond_6
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string p3, "FLOOD_WAIT"

    invoke-virtual {p2, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 9784
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->this$0:Lorg/telegram/ui/LoginActivity;

    sget p2, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "FloodWait"

    sget v0, Lorg/telegram/messenger/R$string;->FloodWait:I

    invoke-static {p3, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lorg/telegram/ui/LoginActivity;->-$$Nest$mneedShowAlert(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 9786
    :cond_7
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->this$0:Lorg/telegram/ui/LoginActivity;

    sget p3, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ErrorOccurred"

    sget v2, Lorg/telegram/messenger/R$string;->ErrorOccurred:I

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p3, p1}, Lorg/telegram/ui/LoginActivity;->-$$Nest$mneedShowAlert(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 9802
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->codeField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9803
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->codeField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return-void

    .line 9777
    :cond_8
    :goto_2
    invoke-direct {p0, v1}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->onInputError(Z)V

    .line 9790
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->codeField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance p2, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$$ExternalSyntheticLambda15;

    invoke-direct {p2, p0}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_9
    return-void
.end method

.method private synthetic lambda$onNextPressed$13(Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 9712
    new-instance v0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0, p3, p2, p1}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onNextPressed$9(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;)V
    .locals 4

    const/4 v0, 0x0

    .line 9743
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->nextPressed:Z

    .line 9744
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->this$0:Lorg/telegram/ui/LoginActivity;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lorg/telegram/ui/LoginActivity;->-$$Nest$mshowDoneButton(Lorg/telegram/ui/LoginActivity;ZZ)V

    if-nez p1, :cond_1

    .line 9746
    check-cast p2, Lorg/telegram/tgnet/tl/TL_account$Password;

    .line 9747
    invoke-static {p2, v2}, Lorg/telegram/ui/TwoStepVerificationActivity;->canHandleCurrentPassword(Lorg/telegram/tgnet/tl/TL_account$Password;Z)Z

    move-result p1

    if-nez p1, :cond_0

    .line 9748
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    const-string p2, "UpdateAppAlert"

    sget p3, Lorg/telegram/messenger/R$string;->UpdateAppAlert:I

    invoke-static {p2, p3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v2}, Lorg/telegram/ui/Components/AlertsCreator;->showUpdateAppAlert(Landroid/content/Context;Ljava/lang/String;Z)Lorg/telegram/ui/ActionBar/AlertDialog;

    return-void

    .line 9751
    :cond_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 9752
    new-instance v1, Lorg/telegram/tgnet/SerializedData;

    invoke-virtual {p2}, Lorg/telegram/tgnet/TLObject;->getObjectSize()I

    move-result v3

    invoke-direct {v1, v3}, Lorg/telegram/tgnet/SerializedData;-><init>(I)V

    .line 9753
    invoke-virtual {p2, v1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 9754
    invoke-virtual {v1}, Lorg/telegram/tgnet/SerializedData;->toByteArray()[B

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object p2

    const-string v1, "password"

    invoke-virtual {p1, v1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9755
    const-string p2, "phoneFormated"

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->requestPhone:Ljava/lang/String;

    invoke-virtual {p1, p2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9756
    const-string p2, "phoneHash"

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->phoneHash:Ljava/lang/String;

    invoke-virtual {p1, p2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9757
    const-string p2, "code"

    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;->phone_code:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9759
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->this$0:Lorg/telegram/ui/LoginActivity;

    const/4 p3, 0x6

    invoke-virtual {p2, p3, v2, p1, v0}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    return-void

    .line 9761
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->this$0:Lorg/telegram/ui/LoginActivity;

    sget p3, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p3

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-static {p2, p3, p1}, Lorg/telegram/ui/LoginActivity;->-$$Nest$mneedShowAlert(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onShow$16()V
    .locals 2

    .line 9888
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->codeField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    if-eqz v0, :cond_0

    .line 9889
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 9890
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->codeField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    .line 9891
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->codeField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    :cond_0
    return-void
.end method

.method private synthetic lambda$resendCode$14(Lorg/telegram/tgnet/TLRPC$TL_error;Landroid/os/Bundle;Lorg/telegram/tgnet/TLObject;)V
    .locals 3

    const/4 v0, 0x0

    .line 9841
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->nextPressed:Z

    if-nez p1, :cond_0

    .line 9843
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->this$0:Lorg/telegram/ui/LoginActivity;

    check-cast p3, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;

    invoke-static {p1, p2, p3}, Lorg/telegram/ui/LoginActivity;->-$$Nest$mfillNextCodeParams(Lorg/telegram/ui/LoginActivity;Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$auth_SentCode;)V

    goto/16 :goto_1

    .line 9845
    :cond_0
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    if-eqz p2, :cond_6

    .line 9846
    const-string p3, "PHONE_NUMBER_INVALID"

    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 9847
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->this$0:Lorg/telegram/ui/LoginActivity;

    sget p2, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/R$string;->InvalidPhoneNumber:I

    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lorg/telegram/ui/LoginActivity;->-$$Nest$mneedShowAlert(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 9848
    :cond_1
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string p3, "PHONE_CODE_EMPTY"

    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_5

    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string p3, "PHONE_CODE_INVALID"

    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    .line 9850
    :cond_2
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string p3, "PHONE_CODE_EXPIRED"

    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 p1, 0x1

    .line 9851
    invoke-virtual {p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->onBackPressed(Z)Z

    .line 9852
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->this$0:Lorg/telegram/ui/LoginActivity;

    const/4 p3, 0x0

    invoke-virtual {p2, v0, p1, p3, p1}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    .line 9853
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->this$0:Lorg/telegram/ui/LoginActivity;

    sget p2, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/R$string;->CodeExpired:I

    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lorg/telegram/ui/LoginActivity;->-$$Nest$mneedShowAlert(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 9854
    :cond_3
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string p3, "FLOOD_WAIT"

    invoke-virtual {p2, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 9855
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->this$0:Lorg/telegram/ui/LoginActivity;

    sget p2, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/R$string;->FloodWait:I

    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lorg/telegram/ui/LoginActivity;->-$$Nest$mneedShowAlert(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 9856
    :cond_4
    iget p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->code:I

    const/16 p3, -0x3e8

    if-eq p2, p3, :cond_6

    .line 9857
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->this$0:Lorg/telegram/ui/LoginActivity;

    sget p3, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lorg/telegram/messenger/R$string;->ErrorOccurred:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p3, p1}, Lorg/telegram/ui/LoginActivity;->-$$Nest$mneedShowAlert(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 9849
    :cond_5
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->this$0:Lorg/telegram/ui/LoginActivity;

    sget p2, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/R$string;->InvalidCode:I

    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lorg/telegram/ui/LoginActivity;->-$$Nest$mneedShowAlert(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 9861
    :cond_6
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1, v0}, Lorg/telegram/ui/LoginActivity;->-$$Nest$mneedHideProgress(Lorg/telegram/ui/LoginActivity;Z)V

    return-void
.end method

.method private synthetic lambda$resendCode$15(Landroid/os/Bundle;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 9840
    new-instance v0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$$ExternalSyntheticLambda17;

    invoke-direct {v0, p0, p3, p1, p2}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;Lorg/telegram/tgnet/TLRPC$TL_error;Landroid/os/Bundle;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private onInputError(Z)V
    .locals 3

    .line 9664
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 9668
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->codeField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v1, 0x3

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9670
    :catch_0
    iget v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->currentType:I

    const/16 v1, 0x10

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    if-eqz p1, :cond_3

    .line 9672
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->errorTextView:Landroid/widget/TextView;

    if-nez v0, :cond_2

    sget v0, Lorg/telegram/messenger/R$string;->SMSWordBeginningError:I

    goto :goto_1

    :cond_2
    sget v0, Lorg/telegram/messenger/R$string;->SMSPhraseBeginningError:I

    :goto_1
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 9673
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->codeField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 9674
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->errorTextView:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 9676
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->errorTextView:Landroid/widget/TextView;

    if-nez v0, :cond_5

    sget v0, Lorg/telegram/messenger/R$string;->SMSWordError:I

    goto :goto_2

    :cond_5
    sget v0, Lorg/telegram/messenger/R$string;->SMSPhraseError:I

    :goto_2
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9678
    :goto_3
    iget-boolean p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->errorShown:Z

    if-nez p1, :cond_6

    iget-boolean p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->pasted:Z

    if-nez p1, :cond_6

    .line 9679
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->codeField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    iget v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->shiftDp:F

    invoke-static {p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->shakeViewSpring(Landroid/view/View;F)V

    .line 9680
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->errorTextView:Landroid/widget/TextView;

    iget v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->shiftDp:F

    invoke-static {p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->shakeViewSpring(Landroid/view/View;F)V

    .line 9682
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->dismissField:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 9683
    invoke-direct {p0, v2}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->animateError(Z)V

    .line 9684
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->dismissField:Ljava/lang/Runnable;

    const-wide/16 v0, 0x2710

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 9685
    iget p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->shiftDp:F

    neg-float p1, p1

    iput p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->shiftDp:F

    return-void
.end method

.method private resendCode()V
    .locals 4

    .line 9821
    iget-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->nextPressed:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->isResendingCode:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->-$$Nest$fgetisRequestingFirebaseSms(Lorg/telegram/ui/LoginActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 9825
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->isResendingCode:Z

    .line 9826
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->timeText:Lorg/telegram/ui/LoginActivity$LoadingTextView;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 9827
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->timeText:Lorg/telegram/ui/LoginActivity$LoadingTextView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteValueText:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 9830
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 9831
    const-string v2, "phone"

    iget-object v3, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->phone:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9832
    const-string v2, "ephone"

    iget-object v3, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->emailPhone:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9833
    const-string v2, "phoneFormated"

    iget-object v3, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->requestPhone:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9835
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->nextPressed:Z

    .line 9837
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;-><init>()V

    .line 9838
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->requestPhone:Ljava/lang/String;

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;->phone_number:Ljava/lang/String;

    .line 9839
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->phoneHash:Ljava/lang/String;

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;->phone_code_hash:Ljava/lang/String;

    .line 9840
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v2}, Lorg/telegram/ui/LoginActivity;->access$4100(Lorg/telegram/ui/LoginActivity;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$$ExternalSyntheticLambda12;

    invoke-direct {v3, p0, v1}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;Landroid/os/Bundle;)V

    const/16 v1, 0xa

    invoke-virtual {v2, v0, v3, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    move-result v0

    .line 9863
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v1, v0}, Lorg/telegram/ui/LoginActivity;->-$$Nest$mneedShowProgress(Lorg/telegram/ui/LoginActivity;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private trimLeft(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 10064
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 10067
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-gt v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-gtz v1, :cond_2

    .line 10073
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    goto :goto_1

    :cond_1
    return-object p1

    :cond_2
    :goto_1
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private trimLeftLen(Ljava/lang/String;)I
    .locals 4

    .line 10055
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 10057
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-gt v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method


# virtual methods
.method public getHeaderName()Ljava/lang/String;
    .locals 2

    .line 9565
    const-string v0, "NewPassword"

    sget v1, Lorg/telegram/messenger/R$string;->NewPassword:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public needBackButton()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onBackPressed(Z)Z
    .locals 4

    .line 9868
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->this$0:Lorg/telegram/ui/LoginActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/telegram/ui/LoginActivity;->-$$Nest$mneedHideProgress(Lorg/telegram/ui/LoginActivity;Z)V

    .line 9869
    iget p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->prevType:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 9870
    iget-object v3, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v3, p1, v0, v2, v0}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    return v1

    .line 9873
    :cond_0
    iput-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->currentParams:Landroid/os/Bundle;

    .line 9874
    iput-boolean v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->nextPressed:Z

    return v0
.end method

.method public onCancelPressed()V
    .locals 1

    const/4 v0, 0x0

    .line 9560
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->nextPressed:Z

    return-void
.end method

.method public onHide()V
    .locals 1

    .line 9898
    invoke-super {p0}, Lorg/telegram/ui/Components/SlideView;->onHide()V

    .line 9899
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->checkPasteRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onNextPressed(Ljava/lang/String;)V
    .locals 4

    .line 9690
    iget-boolean p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->nextPressed:Z

    if-eqz p1, :cond_0

    return-void

    .line 9694
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->codeField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 9695
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    .line 9696
    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->onInputError(Z)V

    return-void

    .line 9700
    :cond_1
    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->beginsOk(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 9701
    invoke-direct {p0, v1}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->onInputError(Z)V

    return-void

    .line 9705
    :cond_2
    iput-boolean v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->nextPressed:Z

    .line 9707
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;-><init>()V

    .line 9708
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->requestPhone:Ljava/lang/String;

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;->phone_number:Ljava/lang/String;

    .line 9709
    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;->phone_code:Ljava/lang/String;

    .line 9710
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->phoneHash:Ljava/lang/String;

    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;->phone_code_hash:Ljava/lang/String;

    .line 9711
    iget p1, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;->flags:I

    or-int/2addr p1, v1

    iput p1, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;->flags:I

    .line 9712
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance v2, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;)V

    const/16 v3, 0xa

    invoke-virtual {p1, v0, v2, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    move-result p1

    .line 9815
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0, p1, v1}, Lorg/telegram/ui/LoginActivity;->-$$Nest$mneedShowProgress(Lorg/telegram/ui/LoginActivity;IZ)V

    .line 9816
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1, v1, v1}, Lorg/telegram/ui/LoginActivity;->-$$Nest$mshowDoneButton(Lorg/telegram/ui/LoginActivity;ZZ)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 9880
    invoke-super {p0}, Lorg/telegram/ui/Components/SlideView;->onResume()V

    const/4 v0, 0x1

    .line 9881
    invoke-direct {p0, v0}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->checkPaste(Z)V

    return-void
.end method

.method public onShow()V
    .locals 3

    .line 9886
    invoke-super {p0}, Lorg/telegram/ui/Components/SlideView;->onShow()V

    .line 9887
    new-instance v0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;)V

    invoke-static {}, Lorg/telegram/ui/LoginActivity;->-$$Nest$sfgetSHOW_DELAY()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public restoreStateParams(Landroid/os/Bundle;)V
    .locals 2

    .line 9911
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "recoveryview_word"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->currentType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->currentParams:Landroid/os/Bundle;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 9913
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->setParams(Landroid/os/Bundle;Z)V

    :cond_0
    return-void
.end method

.method public saveStateParams(Landroid/os/Bundle;)V
    .locals 2

    .line 9904
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->currentParams:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 9905
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "recoveryview_word"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->currentType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->currentParams:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public setParams(Landroid/os/Bundle;Z)V
    .locals 10

    const/16 p2, 0x11

    const/4 v0, 0x3

    const/16 v1, 0x10

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    if-nez p1, :cond_4

    .line 9571
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->nextCodeParams:Landroid/os/Bundle;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->nextCodeAuth:Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;

    if-eqz p1, :cond_3

    .line 9572
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->timeText:Lorg/telegram/ui/LoginActivity$LoadingTextView;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteValueText:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 9574
    iget p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->nextType:I

    if-ne p1, p2, :cond_0

    .line 9575
    sget p1, Lorg/telegram/messenger/R$string;->ReturnEnteringPhrase:I

    goto :goto_0

    :cond_0
    if-ne p1, v1, :cond_1

    .line 9577
    sget p1, Lorg/telegram/messenger/R$string;->ReturnEnteringWord:I

    goto :goto_0

    :cond_1
    if-ne p1, v0, :cond_2

    .line 9579
    sget p1, Lorg/telegram/messenger/R$string;->ReturnPhoneCall:I

    goto :goto_0

    .line 9581
    :cond_2
    sget p1, Lorg/telegram/messenger/R$string;->ReturnEnteringSMS:I

    .line 9583
    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->timeText:Lorg/telegram/ui/LoginActivity$LoadingTextView;

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-static {p1, v3, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceArrows(Ljava/lang/CharSequence;ZFF)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void

    .line 9587
    :cond_4
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->codeField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9588
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->currentParams:Landroid/os/Bundle;

    const/4 v4, 0x0

    .line 9589
    iput-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->beginning:Ljava/lang/String;

    .line 9590
    const-string v5, "nextType"

    invoke-virtual {p1, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->nextType:I

    .line 9591
    const-string v5, "prevType"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->prevType:I

    .line 9592
    const-string v5, "ephone"

    invoke-virtual {p1, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->emailPhone:Ljava/lang/String;

    .line 9593
    iget-object v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->currentParams:Landroid/os/Bundle;

    const-string v7, "beginning"

    invoke-virtual {v5, v7}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 9594
    iget-object v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->currentParams:Landroid/os/Bundle;

    invoke-virtual {v5, v7}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->beginning:Ljava/lang/String;

    .line 9596
    :cond_5
    const-string v5, "phoneFormated"

    invoke-virtual {p1, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->requestPhone:Ljava/lang/String;

    .line 9597
    const-string v5, "phoneHash"

    invoke-virtual {p1, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->phoneHash:Ljava/lang/String;

    .line 9598
    iget-object v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->currentParams:Landroid/os/Bundle;

    const-string v7, "phone"

    invoke-virtual {v5, v7}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->phone:Ljava/lang/String;

    .line 9599
    const-string v5, "timeout"

    invoke-virtual {p1, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->time:I

    .line 9601
    iget p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->prevType:I

    const/16 v5, 0x8

    const/4 v7, 0x4

    const/4 v8, 0x2

    const/high16 v9, -0x40800000    # -1.0f

    if-ne p1, p2, :cond_6

    .line 9602
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->prevTypeTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 9603
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->prevTypeTextView:Landroid/widget/TextView;

    sget p2, Lorg/telegram/messenger/R$string;->BackEnteringPhrase:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-static {p2, v3, v9, v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceArrows(Ljava/lang/CharSequence;ZFF)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_6
    if-ne p1, v1, :cond_7

    .line 9605
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->prevTypeTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 9606
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->prevTypeTextView:Landroid/widget/TextView;

    sget p2, Lorg/telegram/messenger/R$string;->BackEnteringWord:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-static {p2, v3, v9, v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceArrows(Ljava/lang/CharSequence;ZFF)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_7
    if-eq p1, v3, :cond_9

    if-eq p1, v8, :cond_9

    if-eq p1, v7, :cond_9

    if-eq p1, v0, :cond_9

    const/16 p2, 0xf

    if-ne p1, p2, :cond_8

    goto :goto_1

    .line 9611
    :cond_8
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->prevTypeTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 9608
    :cond_9
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->prevTypeTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 9609
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->prevTypeTextView:Landroid/widget/TextView;

    sget p2, Lorg/telegram/messenger/R$string;->BackEnteringCode:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-static {p2, v3, v9, v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceArrows(Ljava/lang/CharSequence;ZFF)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9614
    :goto_2
    iput-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->nextCodeParams:Landroid/os/Bundle;

    .line 9615
    iput-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->nextCodeAuth:Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;

    .line 9616
    iput-boolean v6, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->nextPressed:Z

    .line 9617
    iput-boolean v6, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->isResendingCode:Z

    .line 9618
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1, v6}, Lorg/telegram/ui/LoginActivity;->-$$Nest$fputisRequestingFirebaseSms(Lorg/telegram/ui/LoginActivity;Z)V

    .line 9619
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->timeText:Lorg/telegram/ui/LoginActivity$LoadingTextView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 9621
    iget p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->currentType:I

    if-ne p1, v1, :cond_a

    move p1, v6

    goto :goto_3

    :cond_a
    move p1, v3

    .line 9622
    :goto_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/telegram/PhoneFormat/PhoneFormat;->getInstance()Lorg/telegram/PhoneFormat/PhoneFormat;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->phone:Ljava/lang/String;

    invoke-static {v2}, Lorg/telegram/PhoneFormat/PhoneFormat;->stripExceptNumbers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/PhoneFormat/PhoneFormat;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 9623
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->beginning:Ljava/lang/String;

    if-nez v1, :cond_c

    .line 9624
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->confirmTextView:Landroid/widget/TextView;

    if-nez p1, :cond_b

    sget p1, Lorg/telegram/messenger/R$string;->SMSWordText:I

    goto :goto_4

    :cond_b
    sget p1, Lorg/telegram/messenger/R$string;->SMSPhraseText:I

    :goto_4
    new-array v2, v3, [Ljava/lang/Object;

    aput-object p2, v2, v6

    invoke-static {p1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 9626
    :cond_c
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->confirmTextView:Landroid/widget/TextView;

    if-nez p1, :cond_d

    sget p1, Lorg/telegram/messenger/R$string;->SMSWordBeginningText:I

    goto :goto_5

    :cond_d
    sget p1, Lorg/telegram/messenger/R$string;->SMSPhraseBeginningText:I

    :goto_5
    new-array v4, v8, [Ljava/lang/Object;

    aput-object p2, v4, v6

    aput-object v1, v4, v3

    invoke-static {p1, v4}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9629
    :goto_6
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->this$0:Lorg/telegram/ui/LoginActivity;

    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->codeField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {p1, p2}, Lorg/telegram/ui/LoginActivity;->-$$Nest$mshowKeyboard(Lorg/telegram/ui/LoginActivity;Landroid/view/View;)Z

    .line 9630
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->codeField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 9632
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieImageView;->getAnimatedDrawable()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 9633
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieImageView;->getAnimatedDrawable()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object p1

    invoke-virtual {p1, v6, v6}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZ)V

    .line 9635
    :cond_e
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$$ExternalSyntheticLambda8;

    invoke-direct {p2, p1}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Components/RLottieImageView;)V

    const-wide/16 v1, 0x1f4

    invoke-static {p2, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 9637
    invoke-direct {p0, v6}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->checkPaste(Z)V

    .line 9638
    invoke-direct {p0, v6}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->animateError(Z)V

    .line 9640
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    long-to-double p1, p1

    iput-wide p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->lastCurrentTime:D

    .line 9641
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->timeText:Lorg/telegram/ui/LoginActivity$LoadingTextView;

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 9642
    iget p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->nextType:I

    if-eq p1, v8, :cond_10

    if-eq p1, v7, :cond_10

    if-ne p1, v0, :cond_f

    goto :goto_7

    .line 9645
    :cond_f
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->timeText:Lorg/telegram/ui/LoginActivity$LoadingTextView;

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 9643
    :cond_10
    :goto_7
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->createTimer()V

    return-void
.end method

.method public updateColors()V
    .locals 4

    .line 9544
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->titleTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->this$0:Lorg/telegram/ui/LoginActivity;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 9545
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->confirmTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->this$0:Lorg/telegram/ui/LoginActivity;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText6:I

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 9546
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->codeField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    .line 9547
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->codeField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->this$0:Lorg/telegram/ui/LoginActivity;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteInputFieldActivated:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    .line 9548
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->codeField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->this$0:Lorg/telegram/ui/LoginActivity;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteHintText:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 9549
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->outlineField:Lorg/telegram/ui/Components/OutlineTextContainerView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/OutlineTextContainerView;->updateColor()V

    return-void
.end method
