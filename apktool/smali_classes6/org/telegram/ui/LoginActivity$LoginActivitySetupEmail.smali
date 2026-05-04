.class public Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;
.super Lorg/telegram/ui/Components/SlideView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/LoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LoginActivitySetupEmail"
.end annotation


# instance fields
.field private currentParams:Landroid/os/Bundle;

.field private emailField:Lorg/telegram/ui/Components/EditTextBoldCursor;

.field private emailOutlineView:Lorg/telegram/ui/Components/OutlineTextContainerView;

.field private emailPhone:Ljava/lang/String;

.field private googleAccount:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

.field private inboxImageView:Lorg/telegram/ui/Components/RLottieImageView;

.field private loginOrView:Lorg/telegram/ui/Components/LoginOrView;

.field private nextPressed:Z

.field private phone:Ljava/lang/String;

.field private phoneHash:Ljava/lang/String;

.field private requestPhone:Ljava/lang/String;

.field private signInWithGoogleView:Landroid/widget/TextView;

.field private subtitleView:Landroid/widget/TextView;

.field final synthetic this$0:Lorg/telegram/ui/LoginActivity;

.field private titleView:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$2P2RcbSwuO3M-plRPAVbfZlPN9s(Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;Landroid/os/Bundle;Lorg/telegram/tgnet/tl/TL_account$verifyEmail;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->lambda$onNextPressed$6(Landroid/os/Bundle;Lorg/telegram/tgnet/tl/TL_account$verifyEmail;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4Cgr6It3JpcGDWbpElTSeY2Jm70(Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;Landroid/view/View;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->lambda$new$0(Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$GyCv6lPm5inSgpwL30praYTxKqQ(Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->lambda$onShow$9()V

    return-void
.end method

.method public static synthetic $r8$lambda$TIB10ea6oT7KWGOVRzRFO8GminY(Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;Lorg/telegram/tgnet/TLObject;Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/tl/TL_account$verifyEmail;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->lambda$onNextPressed$5(Lorg/telegram/tgnet/TLObject;Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/tl/TL_account$verifyEmail;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cCP4tleCyUlQTUIsw1P-3KRkuaw(Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->lambda$new$1(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$g1A2EPJz9xoPIhI7BkdCyGNzZaU(Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->lambda$new$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jCpVLVsM9vUpwnuAEZxPfacKBkY(Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;Landroid/os/Bundle;Lorg/telegram/tgnet/tl/TL_account$sendVerifyEmailCode;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->lambda$onNextPressed$8(Landroid/os/Bundle;Lorg/telegram/tgnet/tl/TL_account$sendVerifyEmailCode;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kUDFuMKR293PG3Kl1e8rdHfeaVU(Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->lambda$new$2(Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oiEKE2v09Sd3ZPT5uw8FRmeo3jQ(Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;Lorg/telegram/tgnet/TLObject;Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/tl/TL_account$sendVerifyEmailCode;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->lambda$onNextPressed$7(Lorg/telegram/tgnet/TLObject;Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/tl/TL_account$sendVerifyEmailCode;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pw1fVpf5UU6T0UTcwBz8nMicQHw(Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->lambda$onPasscodeError$4()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fputgoogleAccount(Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->googleAccount:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 5894
    iput-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->this$0:Lorg/telegram/ui/LoginActivity;

    .line 5895
    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/SlideView;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    .line 5897
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 5899
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 5900
    new-instance v5, Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v5, v2}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->inboxImageView:Lorg/telegram/ui/Components/RLottieImageView;

    .line 5901
    sget v6, Lorg/telegram/messenger/R$raw;->tsv_setup_mail:I

    const/16 v7, 0x78

    invoke-virtual {v5, v6, v7, v7}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    .line 5902
    iget-object v5, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->inboxImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/RLottieImageView;->setAutoRepeat(Z)V

    .line 5903
    iget-object v5, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->inboxImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-static {v7, v7, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 5904
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isSmallScreen()Z

    move-result v5

    if-nez v5, :cond_1

    sget-object v5, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v7, v5, Landroid/graphics/Point;->x:I

    iget v5, v5, Landroid/graphics/Point;->y:I

    if-le v7, v5, :cond_0

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    move v5, v6

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v5, 0x8

    :goto_1
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    const/4 v5, -0x1

    const/4 v7, -0x2

    .line 5905
    invoke-static {v5, v7, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v0, v4, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 5907
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->titleView:Landroid/widget/TextView;

    const/high16 v8, 0x41900000    # 18.0f

    .line 5908
    invoke-virtual {v4, v3, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 5909
    iget-object v4, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->titleView:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 5910
    iget-object v4, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->titleView:Landroid/widget/TextView;

    invoke-static {v1}, Lorg/telegram/ui/LoginActivity;->-$$Nest$fgetactivityMode(Lorg/telegram/ui/LoginActivity;)I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_2

    sget v9, Lorg/telegram/messenger/R$string;->EnterNewEmail:I

    goto :goto_2

    :cond_2
    sget v9, Lorg/telegram/messenger/R$string;->AddEmailTitle:I

    :goto_2
    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5911
    iget-object v4, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->titleView:Landroid/widget/TextView;

    const/16 v9, 0x11

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 5912
    iget-object v4, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->titleView:Landroid/widget/TextView;

    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    int-to-float v12, v12

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-virtual {v4, v12, v13}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 5913
    iget-object v4, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->titleView:Landroid/widget/TextView;

    const/high16 v19, 0x42000000    # 32.0f

    const/16 v20, 0x0

    const/4 v14, -0x1

    const/high16 v15, -0x40000000    # -2.0f

    const/16 v16, 0x1

    const/high16 v17, 0x42000000    # 32.0f

    const/high16 v18, 0x41800000    # 16.0f

    invoke-static/range {v14 .. v20}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v0, v4, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 5915
    new-instance v4, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-direct {v4, v2}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->subtitleView:Landroid/widget/TextView;

    const/high16 v12, 0x41600000    # 14.0f

    .line 5916
    invoke-virtual {v4, v3, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 5917
    iget-object v4, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->subtitleView:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 5918
    iget-object v4, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->subtitleView:Landroid/widget/TextView;

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v4, v9, v13}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 5919
    iget-object v4, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->subtitleView:Landroid/widget/TextView;

    sget v9, Lorg/telegram/messenger/R$string;->AddEmailSubtitle:I

    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5920
    iget-object v4, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->subtitleView:Landroid/widget/TextView;

    const/16 v19, 0x20

    const/16 v20, 0x0

    const/4 v14, -0x2

    const/4 v15, -0x2

    const/16 v17, 0x20

    const/16 v18, 0x8

    invoke-static/range {v14 .. v20}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v0, v4, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 5922
    new-instance v4, Lorg/telegram/ui/Components/OutlineTextContainerView;

    invoke-direct {v4, v2}, Lorg/telegram/ui/Components/OutlineTextContainerView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->emailOutlineView:Lorg/telegram/ui/Components/OutlineTextContainerView;

    .line 5923
    invoke-static {v1}, Lorg/telegram/ui/LoginActivity;->-$$Nest$fgetactivityMode(Lorg/telegram/ui/LoginActivity;)I

    move-result v9

    if-ne v9, v10, :cond_3

    sget v9, Lorg/telegram/messenger/R$string;->YourNewEmail:I

    goto :goto_3

    :cond_3
    sget v9, Lorg/telegram/messenger/R$string;->YourEmail:I

    :goto_3
    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lorg/telegram/ui/Components/OutlineTextContainerView;->setText(Ljava/lang/String;)V

    .line 5925
    new-instance v4, Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-direct {v4, v2}, Lorg/telegram/ui/Components/EditTextBoldCursor;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->emailField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/high16 v9, 0x41a00000    # 20.0f

    .line 5926
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-virtual {v4, v9}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorSize(I)V

    .line 5927
    iget-object v4, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->emailField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/high16 v9, 0x3fc00000    # 1.5f

    invoke-virtual {v4, v9}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorWidth(F)V

    .line 5928
    iget-object v4, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->emailField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const v9, 0x10000005

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 5929
    iget-object v4, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->emailField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/high16 v9, 0x41880000    # 17.0f

    invoke-virtual {v4, v3, v9}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTextSize(IF)V

    .line 5930
    iget-object v4, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->emailField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 5931
    iget-object v4, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->emailField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/16 v9, 0x21

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setInputType(I)V

    .line 5932
    iget-object v4, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->emailField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance v14, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail$$ExternalSyntheticLambda3;

    invoke-direct {v14, v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;)V

    invoke-virtual {v4, v14}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 5933
    iget-object v4, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->emailField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v14, 0x0

    invoke-virtual {v4, v14}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 5934
    iget-object v4, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->emailField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/high16 v14, 0x41800000    # 16.0f

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    move/from16 v16, v8

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    move/from16 v17, v11

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    move/from16 v18, v14

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    invoke-virtual {v4, v15, v8, v11, v14}, Landroid/view/View;->setPadding(IIII)V

    .line 5936
    iget-object v4, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->emailOutlineView:Lorg/telegram/ui/Components/OutlineTextContainerView;

    iget-object v8, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->emailField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v4, v8}, Lorg/telegram/ui/Components/OutlineTextContainerView;->attachEditText(Landroid/widget/EditText;)V

    .line 5937
    iget-object v4, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->emailOutlineView:Lorg/telegram/ui/Components/OutlineTextContainerView;

    iget-object v8, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->emailField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/16 v11, 0x30

    invoke-static {v5, v7, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v4, v8, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 5939
    iget-object v4, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->emailField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance v8, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail$$ExternalSyntheticLambda4;

    invoke-direct {v8, v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;)V

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 5947
    iget-object v4, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->emailOutlineView:Lorg/telegram/ui/Components/OutlineTextContainerView;

    const/high16 v23, 0x41800000    # 16.0f

    const/16 v24, 0x0

    const/16 v19, -0x1

    const/16 v20, 0x3a

    const/high16 v21, 0x41800000    # 16.0f

    const/high16 v22, 0x41c00000    # 24.0f

    invoke-static/range {v19 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v0, v4, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 5949
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->signInWithGoogleView:Landroid/widget/TextView;

    .line 5950
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 5951
    iget-object v4, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->signInWithGoogleView:Landroid/widget/TextView;

    invoke-virtual {v4, v3, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 5952
    iget-object v4, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->signInWithGoogleView:Landroid/widget/TextView;

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v4, v8, v13}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 5953
    iget-object v4, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->signInWithGoogleView:Landroid/widget/TextView;

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    invoke-virtual {v4, v8, v10, v11, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 5954
    iget-object v4, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->signInWithGoogleView:Landroid/widget/TextView;

    const/4 v8, 0x2

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 5956
    new-instance v4, Landroid/text/SpannableStringBuilder;

    const-string v10, "d "

    invoke-direct {v4, v10}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 5957
    sget v10, Lcom/google/android/gms/auth/api/R$drawable;->googleg_standard_color_18:I

    invoke-static {v2, v10}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    const/high16 v11, 0x41100000    # 9.0f

    .line 5958
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    const/high16 v14, 0x41d80000    # 27.0f

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    invoke-virtual {v10, v6, v11, v12, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 5959
    new-instance v11, Landroid/text/style/ImageSpan;

    invoke-direct {v11, v10, v6}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {v4, v11, v6, v3, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 5960
    new-instance v10, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail$1;

    invoke-direct {v10, v0, v1}, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail$1;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;Lorg/telegram/ui/LoginActivity;)V

    invoke-virtual {v4, v10, v3, v8, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 5969
    sget v1, Lorg/telegram/messenger/R$string;->SignInWithGoogle:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 5970
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->signInWithGoogleView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5972
    new-instance v1, Lorg/telegram/ui/Components/LoginOrView;

    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/LoginOrView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->loginOrView:Lorg/telegram/ui/Components/LoginOrView;

    .line 5974
    new-instance v1, Landroid/widget/Space;

    invoke-direct {v1, v2}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    .line 5975
    invoke-static {v6, v6, v13}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 5977
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 5978
    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->signInWithGoogleView:Landroid/widget/TextView;

    const/4 v13, 0x0

    const/high16 v14, 0x41c00000    # 24.0f

    const/4 v8, -0x2

    const/high16 v9, -0x40000000    # -2.0f

    const/16 v10, 0x53

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v8 .. v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 5979
    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->loginOrView:Lorg/telegram/ui/Components/LoginOrView;

    const/high16 v14, 0x428c0000    # 70.0f

    const/high16 v9, 0x41800000    # 16.0f

    invoke-static/range {v8 .. v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 5980
    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->loginOrView:Lorg/telegram/ui/Components/LoginOrView;

    iget-object v3, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->signInWithGoogleView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/LoginOrView;->setMeasureAfter(Landroid/view/View;)V

    .line 5981
    invoke-static {v5, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 5982
    invoke-static {v1}, Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;->attach(Landroid/view/View;)Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;

    .line 5984
    new-instance v2, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail$$ExternalSyntheticLambda5;

    invoke-direct {v2, v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;Z)V
    .locals 0

    .line 5932
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->emailOutlineView:Lorg/telegram/ui/Components/OutlineTextContainerView;

    if-eqz p2, :cond_0

    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/OutlineTextContainerView;->animateSelection(F)V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x5

    if-ne p2, p1, :cond_0

    const/4 p1, 0x0

    .line 5941
    invoke-virtual {p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->onNextPressed(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$new$2(Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;Lcom/google/android/gms/tasks/Task;)V
    .locals 1

    .line 6009
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->isFinishing()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 6012
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;->getSignInIntent()Landroid/content/Intent;

    move-result-object p1

    const/16 v0, 0xc8

    invoke-virtual {p2, p1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$new$3(Landroid/view/View;)V
    .locals 2

    .line 5985
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail$2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail$2;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;)V

    sget v1, Lorg/telegram/messenger/NotificationCenter;->onActivityResultReceived:I

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 6004
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;-><init>()V

    sget-object v1, Lorg/telegram/messenger/BuildVars;->GOOGLE_AUTH_CLIENT_ID:Ljava/lang/String;

    .line 6005
    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->requestIdToken(Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    move-result-object v0

    .line 6006
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->requestEmail()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    move-result-object v0

    .line 6007
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->build()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object v0

    .line 6004
    invoke-static {p1, v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getClient(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    move-result-object p1

    .line 6008
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;->signOut()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method private synthetic lambda$onNextPressed$5(Lorg/telegram/tgnet/TLObject;Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/tl/TL_account$verifyEmail;)V
    .locals 2

    .line 6106
    instance-of v0, p1, Lorg/telegram/tgnet/tl/TL_account$TL_emailVerified;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->-$$Nest$fgetactivityMode(Lorg/telegram/ui/LoginActivity;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 6107
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    .line 6108
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity;->-$$Nest$fgetemailChangeFinishCallback(Lorg/telegram/ui/LoginActivity;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 6109
    :cond_0
    instance-of v0, p1, Lorg/telegram/tgnet/tl/TL_account$TL_emailVerifiedLogin;

    if-eqz v0, :cond_1

    .line 6110
    check-cast p1, Lorg/telegram/tgnet/tl/TL_account$TL_emailVerifiedLogin;

    .line 6112
    const-string p3, "email"

    iget-object p4, p1, Lorg/telegram/tgnet/tl/TL_account$TL_emailVerifiedLogin;->email:Ljava/lang/String;

    invoke-virtual {p2, p3, p4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6113
    iget-object p3, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->this$0:Lorg/telegram/ui/LoginActivity;

    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_account$TL_emailVerifiedLogin;->sent_code:Lorg/telegram/tgnet/TLRPC$auth_SentCode;

    invoke-static {p3, p2, p1}, Lorg/telegram/ui/LoginActivity;->-$$Nest$mfillNextCodeParams(Lorg/telegram/ui/LoginActivity;Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$auth_SentCode;)V

    return-void

    :cond_1
    if-eqz p3, :cond_4

    .line 6115
    iget-object p1, p3, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string p2, "EMAIL_NOT_ALLOWED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6116
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->this$0:Lorg/telegram/ui/LoginActivity;

    sget p2, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/R$string;->EmailNotAllowed:I

    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lorg/telegram/ui/LoginActivity;->-$$Nest$mneedShowAlert(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 6117
    :cond_2
    iget-object p1, p3, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string p2, "EMAIL_TOKEN_INVALID"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 6118
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->this$0:Lorg/telegram/ui/LoginActivity;

    sget p2, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/R$string;->EmailTokenInvalid:I

    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lorg/telegram/ui/LoginActivity;->-$$Nest$mneedShowAlert(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 6119
    :cond_3
    iget p1, p3, Lorg/telegram/tgnet/TLRPC$TL_error;->code:I

    const/16 p2, -0x3e8

    if-eq p1, p2, :cond_4

    .line 6120
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity;->access$2800(Lorg/telegram/ui/LoginActivity;)I

    move-result p1

    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->this$0:Lorg/telegram/ui/LoginActivity;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p3, p2, p4, v0}, Lorg/telegram/ui/Components/AlertsCreator;->processError(ILorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLObject;[Ljava/lang/Object;)Landroid/app/Dialog;

    :cond_4
    return-void
.end method

.method private synthetic lambda$onNextPressed$6(Landroid/os/Bundle;Lorg/telegram/tgnet/tl/TL_account$verifyEmail;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 6

    .line 6105
    new-instance v0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail$$ExternalSyntheticLambda8;

    move-object v1, p0

    move-object v3, p1

    move-object v5, p2

    move-object v2, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;Lorg/telegram/tgnet/TLObject;Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/tl/TL_account$verifyEmail;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onNextPressed$7(Lorg/telegram/tgnet/TLObject;Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/tl/TL_account$sendVerifyEmailCode;)V
    .locals 3

    .line 6145
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->this$0:Lorg/telegram/ui/LoginActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/LoginActivity;->-$$Nest$mneedHideProgress(Lorg/telegram/ui/LoginActivity;Z)V

    .line 6146
    iput-boolean v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->nextPressed:Z

    .line 6148
    instance-of v0, p1, Lorg/telegram/tgnet/tl/TL_account$sentEmailCode;

    if-eqz v0, :cond_0

    .line 6149
    check-cast p1, Lorg/telegram/tgnet/tl/TL_account$sentEmailCode;

    .line 6150
    iget-object p3, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p3, p2, p1}, Lorg/telegram/ui/LoginActivity;->-$$Nest$mfillNextCodeParams(Lorg/telegram/ui/LoginActivity;Landroid/os/Bundle;Lorg/telegram/tgnet/tl/TL_account$sentEmailCode;)V

    return-void

    .line 6151
    :cond_0
    iget-object p1, p3, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    if-eqz p1, :cond_9

    .line 6152
    const-string p2, "EMAIL_INVALID"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6153
    invoke-direct {p0, v1}, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->onPasscodeError(Z)V

    return-void

    .line 6154
    :cond_1
    iget-object p1, p3, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string p2, "EMAIL_NOT_ALLOWED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6155
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->this$0:Lorg/telegram/ui/LoginActivity;

    sget p2, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/R$string;->EmailNotAllowed:I

    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lorg/telegram/ui/LoginActivity;->-$$Nest$mneedShowAlert(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 6156
    :cond_2
    iget-object p1, p3, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string p2, "PHONE_PASSWORD_FLOOD"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string p2, "FloodWait"

    if-eqz p1, :cond_3

    .line 6157
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->this$0:Lorg/telegram/ui/LoginActivity;

    sget p3, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p3

    sget p4, Lorg/telegram/messenger/R$string;->FloodWait:I

    invoke-static {p2, p4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p3, p2}, Lorg/telegram/ui/LoginActivity;->-$$Nest$mneedShowAlert(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 6158
    :cond_3
    iget-object p1, p3, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v0, "PHONE_NUMBER_FLOOD"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 6159
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->this$0:Lorg/telegram/ui/LoginActivity;

    sget p2, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "PhoneNumberFlood"

    sget p4, Lorg/telegram/messenger/R$string;->PhoneNumberFlood:I

    invoke-static {p3, p4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lorg/telegram/ui/LoginActivity;->-$$Nest$mneedShowAlert(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 6160
    :cond_4
    iget-object p1, p3, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v0, "PHONE_CODE_EMPTY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p3, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v0, "PHONE_CODE_INVALID"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_0

    .line 6162
    :cond_5
    iget-object p1, p3, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v0, "PHONE_CODE_EXPIRED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_6

    .line 6163
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/SlideView;->onBackPressed(Z)Z

    .line 6164
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->this$0:Lorg/telegram/ui/LoginActivity;

    const/4 p2, 0x0

    invoke-virtual {p1, v1, v0, p2, v0}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    .line 6165
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->this$0:Lorg/telegram/ui/LoginActivity;

    sget p2, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "CodeExpired"

    sget p4, Lorg/telegram/messenger/R$string;->CodeExpired:I

    invoke-static {p3, p4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lorg/telegram/ui/LoginActivity;->-$$Nest$mneedShowAlert(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 6166
    :cond_6
    iget-object p1, p3, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v2, "FLOOD_WAIT"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 6167
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->this$0:Lorg/telegram/ui/LoginActivity;

    sget p3, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p3

    sget p4, Lorg/telegram/messenger/R$string;->FloodWait:I

    invoke-static {p2, p4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p3, p2}, Lorg/telegram/ui/LoginActivity;->-$$Nest$mneedShowAlert(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 6168
    :cond_7
    iget p1, p3, Lorg/telegram/tgnet/TLRPC$TL_error;->code:I

    const/16 p2, -0x3e8

    if-eq p1, p2, :cond_9

    .line 6169
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity;->access$2700(Lorg/telegram/ui/LoginActivity;)I

    move-result p1

    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->this$0:Lorg/telegram/ui/LoginActivity;

    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->requestPhone:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, v1

    invoke-static {p1, p3, p2, p4, v0}, Lorg/telegram/ui/Components/AlertsCreator;->processError(ILorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLObject;[Ljava/lang/Object;)Landroid/app/Dialog;

    return-void

    .line 6161
    :cond_8
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->this$0:Lorg/telegram/ui/LoginActivity;

    sget p2, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "InvalidCode"

    sget p4, Lorg/telegram/messenger/R$string;->InvalidCode:I

    invoke-static {p3, p4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lorg/telegram/ui/LoginActivity;->-$$Nest$mneedShowAlert(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method private synthetic lambda$onNextPressed$8(Landroid/os/Bundle;Lorg/telegram/tgnet/tl/TL_account$sendVerifyEmailCode;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 6

    .line 6144
    new-instance v0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail$$ExternalSyntheticLambda7;

    move-object v1, p0

    move-object v3, p1

    move-object v5, p2

    move-object v2, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;Lorg/telegram/tgnet/TLObject;Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/tl/TL_account$sendVerifyEmailCode;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onPasscodeError$4()V
    .locals 1

    .line 6072
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->emailField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method private synthetic lambda$onShow$9()V
    .locals 2

    .line 6179
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->inboxImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieImageView;->getAnimatedDrawable()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZ)V

    .line 6180
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->inboxImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    .line 6181
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->emailField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 6182
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->emailField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    return-void
.end method

.method private onPasscodeError(Z)V
    .locals 3

    .line 6060
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 6064
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->emailOutlineView:Lorg/telegram/ui/Components/OutlineTextContainerView;

    const/4 v1, 0x3

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    if-eqz p1, :cond_1

    .line 6067
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->emailField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6069
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->emailField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 6071
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->this$0:Lorg/telegram/ui/LoginActivity;

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->emailOutlineView:Lorg/telegram/ui/Components/OutlineTextContainerView;

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lorg/telegram/ui/LoginActivity;->-$$Nest$monFieldError(Lorg/telegram/ui/LoginActivity;Landroid/view/View;Z)V

    .line 6072
    new-instance p1, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail$$ExternalSyntheticLambda6;

    invoke-direct {p1, p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;)V

    const-wide/16 v0, 0x12c

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public getHeaderName()Ljava/lang/String;
    .locals 2

    .line 6036
    const-string v0, "AddEmailTitle"

    sget v1, Lorg/telegram/messenger/R$string;->AddEmailTitle:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public needBackButton()Z
    .locals 1

    .line 6031
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->-$$Nest$fgetemailChangeIsSuggestion(Lorg/telegram/ui/LoginActivity;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public onNextPressed(Ljava/lang/String;)V
    .locals 6

    .line 6077
    iget-boolean p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->nextPressed:Z

    if-eqz p1, :cond_0

    return-void

    .line 6081
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->googleAccount:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getEmail()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->emailField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6082
    :goto_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6083
    const-string v1, "phone"

    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->phone:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6084
    const-string v1, "ephone"

    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->emailPhone:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6085
    const-string v1, "phoneFormated"

    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->requestPhone:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6086
    const-string v1, "phoneHash"

    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->phoneHash:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6087
    const-string v1, "email"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6088
    const-string v1, "setup"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 6090
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->googleAccount:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    const/16 v3, 0xa

    const/4 v4, 0x3

    if-eqz v1, :cond_3

    .line 6091
    new-instance p1, Lorg/telegram/tgnet/tl/TL_account$verifyEmail;

    invoke-direct {p1}, Lorg/telegram/tgnet/tl/TL_account$verifyEmail;-><init>()V

    .line 6092
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v1}, Lorg/telegram/ui/LoginActivity;->-$$Nest$fgetactivityMode(Lorg/telegram/ui/LoginActivity;)I

    move-result v1

    if-ne v1, v4, :cond_2

    .line 6093
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_emailVerifyPurposeLoginChange;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_emailVerifyPurposeLoginChange;-><init>()V

    iput-object v1, p1, Lorg/telegram/tgnet/tl/TL_account$verifyEmail;->purpose:Lorg/telegram/tgnet/TLRPC$EmailVerifyPurpose;

    goto :goto_1

    .line 6095
    :cond_2
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_emailVerifyPurposeLoginSetup;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_emailVerifyPurposeLoginSetup;-><init>()V

    .line 6096
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->requestPhone:Ljava/lang/String;

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_emailVerifyPurposeLoginSetup;->phone_number:Ljava/lang/String;

    .line 6097
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->phoneHash:Ljava/lang/String;

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_emailVerifyPurposeLoginSetup;->phone_code_hash:Ljava/lang/String;

    .line 6098
    iput-object v1, p1, Lorg/telegram/tgnet/tl/TL_account$verifyEmail;->purpose:Lorg/telegram/tgnet/TLRPC$EmailVerifyPurpose;

    .line 6100
    :goto_1
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_emailVerificationGoogle;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_emailVerificationGoogle;-><init>()V

    .line 6101
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->googleAccount:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    invoke-virtual {v2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getIdToken()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_emailVerificationGoogle;->token:Ljava/lang/String;

    .line 6102
    iput-object v1, p1, Lorg/telegram/tgnet/tl/TL_account$verifyEmail;->verification:Lorg/telegram/tgnet/TLRPC$EmailVerification;

    const/4 v1, 0x0

    .line 6104
    iput-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->googleAccount:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 6105
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v1}, Lorg/telegram/ui/LoginActivity;->access$2500(Lorg/telegram/ui/LoginActivity;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;Landroid/os/Bundle;Lorg/telegram/tgnet/tl/TL_account$verifyEmail;)V

    invoke-virtual {v1, p1, v2, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    return-void

    .line 6128
    :cond_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v5, 0x0

    if-eqz v1, :cond_4

    .line 6129
    invoke-direct {p0, v5}, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->onPasscodeError(Z)V

    return-void

    .line 6132
    :cond_4
    iput-boolean v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->nextPressed:Z

    .line 6133
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v1, v5}, Lorg/telegram/ui/LoginActivity;->-$$Nest$mneedShowProgress(Lorg/telegram/ui/LoginActivity;I)V

    .line 6134
    new-instance v1, Lorg/telegram/tgnet/tl/TL_account$sendVerifyEmailCode;

    invoke-direct {v1}, Lorg/telegram/tgnet/tl/TL_account$sendVerifyEmailCode;-><init>()V

    .line 6135
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v2}, Lorg/telegram/ui/LoginActivity;->-$$Nest$fgetactivityMode(Lorg/telegram/ui/LoginActivity;)I

    move-result v2

    if-ne v2, v4, :cond_5

    .line 6136
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_emailVerifyPurposeLoginChange;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_emailVerifyPurposeLoginChange;-><init>()V

    iput-object v2, v1, Lorg/telegram/tgnet/tl/TL_account$sendVerifyEmailCode;->purpose:Lorg/telegram/tgnet/TLRPC$EmailVerifyPurpose;

    goto :goto_2

    .line 6138
    :cond_5
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_emailVerifyPurposeLoginSetup;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_emailVerifyPurposeLoginSetup;-><init>()V

    .line 6139
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->requestPhone:Ljava/lang/String;

    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_emailVerifyPurposeLoginSetup;->phone_number:Ljava/lang/String;

    .line 6140
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->phoneHash:Ljava/lang/String;

    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_emailVerifyPurposeLoginSetup;->phone_code_hash:Ljava/lang/String;

    .line 6141
    iput-object v2, v1, Lorg/telegram/tgnet/tl/TL_account$sendVerifyEmailCode;->purpose:Lorg/telegram/tgnet/TLRPC$EmailVerifyPurpose;

    .line 6143
    :goto_2
    iput-object p1, v1, Lorg/telegram/tgnet/tl/TL_account$sendVerifyEmailCode;->email:Ljava/lang/String;

    .line 6144
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity;->access$2600(Lorg/telegram/ui/LoginActivity;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance v2, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v0, v1}, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;Landroid/os/Bundle;Lorg/telegram/tgnet/tl/TL_account$sendVerifyEmailCode;)V

    invoke-virtual {p1, v1, v2, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    return-void
.end method

.method public onShow()V
    .locals 3

    .line 6177
    invoke-super {p0}, Lorg/telegram/ui/Components/SlideView;->onShow()V

    .line 6178
    new-instance v0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;)V

    invoke-static {}, Lorg/telegram/ui/LoginActivity;->-$$Nest$sfgetSHOW_DELAY()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public restoreStateParams(Landroid/os/Bundle;)V
    .locals 2

    .line 6199
    const-string v0, "emailsetup_params"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->currentParams:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 6201
    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->setParams(Landroid/os/Bundle;Z)V

    .line 6203
    :cond_0
    const-string v0, "emailsetup_email"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 6205
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->emailField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public saveStateParams(Landroid/os/Bundle;)V
    .locals 2

    .line 6188
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->emailField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6189
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 6190
    const-string v1, "emailsetup_email"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6192
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->currentParams:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    .line 6193
    const-string v1, "emailsetup_params"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method public setParams(Landroid/os/Bundle;Z)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 6044
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->emailField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const-string v0, ""

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6045
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->currentParams:Landroid/os/Bundle;

    .line 6046
    const-string p2, "phone"

    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->phone:Ljava/lang/String;

    .line 6047
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->currentParams:Landroid/os/Bundle;

    const-string v0, "ephone"

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->emailPhone:Ljava/lang/String;

    .line 6048
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->currentParams:Landroid/os/Bundle;

    const-string v0, "phoneFormated"

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->requestPhone:Ljava/lang/String;

    .line 6049
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->currentParams:Landroid/os/Bundle;

    const-string v0, "phoneHash"

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->phoneHash:Ljava/lang/String;

    .line 6051
    const-string p2, "googleSignInAllowed"

    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lorg/telegram/messenger/PushListenerController$GooglePushListenerServiceProvider;->INSTANCE:Lorg/telegram/messenger/PushListenerController$GooglePushListenerServiceProvider;

    invoke-virtual {p1}, Lorg/telegram/messenger/PushListenerController$GooglePushListenerServiceProvider;->hasServices()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    .line 6052
    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->loginOrView:Lorg/telegram/ui/Components/LoginOrView;

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 6053
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->signInWithGoogleView:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 6055
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->this$0:Lorg/telegram/ui/LoginActivity;

    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->emailField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {p1, p2}, Lorg/telegram/ui/LoginActivity;->-$$Nest$mshowKeyboard(Lorg/telegram/ui/LoginActivity;Landroid/view/View;)Z

    .line 6056
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->emailField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method public updateColors()V
    .locals 3

    .line 6019
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->titleView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 6020
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->subtitleView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText6:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 6021
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->subtitleView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageLinkIn:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 6022
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->emailField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    .line 6023
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->signInWithGoogleView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText4:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 6024
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->loginOrView:Lorg/telegram/ui/Components/LoginOrView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/LoginOrView;->updateColors()V

    .line 6026
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->emailOutlineView:Lorg/telegram/ui/Components/OutlineTextContainerView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method
