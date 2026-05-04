.class public Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;
.super Lorg/telegram/ui/Components/SlideView;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/LoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LoginActivitySmsView"
.end annotation


# instance fields
.field private blueImageView:Lorg/telegram/ui/Components/RLottieImageView;

.field private bottomContainer:Landroid/widget/FrameLayout;

.field private catchedPhone:Ljava/lang/String;

.field private codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

.field private codeTime:I

.field private codeTimer:Ljava/util/Timer;

.field private confirmTextView:Landroid/widget/TextView;

.field private currentParams:Landroid/os/Bundle;

.field private currentType:I

.field private dotsDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

.field private dotsToStarsDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

.field private emailPhone:Ljava/lang/String;

.field private errorColorTimeout:Ljava/lang/Runnable;

.field private errorViewSwitcher:Landroid/widget/ViewSwitcher;

.field hintDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

.field private isDotsAnimationVisible:Z

.field private isResendingCode:Z

.field private lastCodeTime:D

.field private lastCurrentTime:D

.field private lastError:Ljava/lang/String;

.field private length:I

.field private missedCallArrowIcon:Landroid/widget/ImageView;

.field private missedCallDescriptionSubtitle:Landroid/widget/TextView;

.field private missedCallDescriptionSubtitle2:Landroid/widget/TextView;

.field private missedCallPhoneIcon:Landroid/widget/ImageView;

.field private nextCodeAuth:Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;

.field private nextCodeParams:Landroid/os/Bundle;

.field private nextPressed:Z

.field private nextType:I

.field private openFragmentButton:Landroid/widget/LinearLayout;

.field private openFragmentButtonText:Landroid/widget/TextView;

.field private openFragmentImageView:Lorg/telegram/ui/Components/RLottieImageView;

.field private openTime:I

.field private pattern:Ljava/lang/String;

.field private phone:Ljava/lang/String;

.field private phoneHash:Ljava/lang/String;

.field private postedErrorColorTimeout:Z

.field private prefix:Ljava/lang/String;

.field private prefixTextView:Landroid/widget/TextView;

.field private prevType:I

.field private prevTypeTextView:Landroid/widget/TextView;

.field private problemFrame:Landroid/widget/FrameLayout;

.field private problemText:Lorg/telegram/ui/LoginActivity$LoadingTextView;

.field private requestPhone:Ljava/lang/String;

.field private starsToDotsDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

.field final synthetic this$0:Lorg/telegram/ui/LoginActivity;

.field private time:I

.field private timeText:Lorg/telegram/ui/LoginActivity$LoadingTextView;

.field private timeTimer:Ljava/util/Timer;

.field private final timerSync:Ljava/lang/Object;

.field private titleTextView:Landroid/widget/TextView;

.field private url:Ljava/lang/String;

.field private waitingForEvent:Z

.field private wrongCode:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$3Xyp65ucV9jE2EeLRVpUo_yHALs(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lambda$tryShowProgress$15()V

    return-void
.end method

.method public static synthetic $r8$lambda$4JCon9wxYAj4hWeGUv9AQRYHvLQ(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lambda$new$9(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4vWkQtf4H3Cfq9VJk4KdIbdaIwk(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lambda$animateSuccess$39(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$52DeFaYXxLV34a8iv3I32qkfJQM(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lambda$onNextPressed$37(Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5uCST0i3r35lEY2Qz_cCXianxNs(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lambda$new$6(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ATYof2zTHAED1vYiVyf1EZtZlQU(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lambda$tryShowProgress$14()V

    return-void
.end method

.method public static synthetic $r8$lambda$D3eZrDEHGrxRvSunrJ5CdwvdzNE(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Landroid/content/Context;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lambda$new$7(Landroid/content/Context;Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$DNFgdGXgmqgdtzPFpZcYqYfiR1A(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lambda$onNextPressed$24(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DRXgxQYvVyDdjZOV0FXr5kN9ZIM(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lambda$tryHideProgress$17()V

    return-void
.end method

.method public static synthetic $r8$lambda$FlLvXEdcfr_4gzQ31Gg_t9Hj4A8(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Landroid/os/Bundle;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lambda$new$4(Landroid/os/Bundle;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ghr6jfb18qnAnvXrdT7JcXLVh7c(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Lorg/telegram/tgnet/TLRPC$TL_error;Landroid/os/Bundle;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lambda$resendCode$10(Lorg/telegram/tgnet/TLRPC$TL_error;Landroid/os/Bundle;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GjNtscnZTaGjeeYr9ZBognF9o8g(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Landroid/os/Bundle;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lambda$onNextPressed$32(Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GlHFhxXvFdAUIJ1e42ByhAMH1JM(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lambda$tryHideProgress$18()V

    return-void
.end method

.method public static synthetic $r8$lambda$IyRGaPGIAeMJ0l8QMaf9WDZ0KI8(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;IZ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lambda$tryShowProgress$12(IZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$J89Lv8OERjD_mRxcHzyxJUwCAHA(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lambda$shakeWrongCode$40()V

    return-void
.end method

.method public static synthetic $r8$lambda$LXTmYlCi56hr25pqz4X-2uBDc9A(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Landroid/os/Bundle;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lambda$new$2(Landroid/os/Bundle;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MN-uWUxJVKVOcpHLEJIYlY8Cifg(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lambda$new$8(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Oph6KOQ39wvtd1ScisTul2yI4Pk(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lambda$onNextPressed$25(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$S1Ck0Tr0CAS2ZqFQkg-EqpVZ_Bw()V
    .locals 0

    .line 4943
    invoke-static {}, Lorg/telegram/messenger/CallReceiver;->checkLastReceivedCall()V

    return-void
.end method

.method public static synthetic $r8$lambda$SbVNKwJh3BRwkF1eWRTr22DQygA(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;IZ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lambda$tryShowProgress$13(IZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$SromzoXQEhgmipL-ENpal12-3Zs(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Landroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lambda$onNextPressed$22(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$T6YwBA3EV5-wBD9HI7k2EAaduzA(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lambda$onNextPressed$23()V

    return-void
.end method

.method public static synthetic $r8$lambda$U1B4i9hIC0g1Iz-kfSTMTOYqriw(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lambda$new$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UTT_O8hA0LvvxtMBX9nBhSYMxlc(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lambda$tryHideProgress$16()V

    return-void
.end method

.method public static synthetic $r8$lambda$UY9kxYEiJuAGRQbt45xrwEx3B_E(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lambda$shakeWrongCode$41()V

    return-void
.end method

.method public static synthetic $r8$lambda$XP7D3DhREepyTXZUksWlKbwwKIo(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Landroid/os/Bundle;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lambda$onNextPressed$30(Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZjHaXiS8yHRSqqUnt08Rjv-MPFs(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/tl/TL_account$confirmPhone;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lambda$onNextPressed$28(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/tl/TL_account$confirmPhone;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZwisHwNPNz3ktROxBpRORqczQZQ(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lambda$onNextPressed$31(Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aIaaslJtdVCVRnJ7sVf8arsJ5vU(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lambda$onBackPressed$42(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$bg7_VGc10uhNSybSgqbzPlkCk0c(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lambda$animateSuccess$38(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$cv7o9vQ3q44FR8bHaeyYPBm1Lrs(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lambda$onNextPressed$34(Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dG5jD8K8iO3B13fHMsej4tJzYOM(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Landroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lambda$onNextPressed$26(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gKyVJVXs5FXqCJwgMxzY5MPqX6U(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    return-void
.end method

.method public static synthetic $r8$lambda$gxf-xokGCci4-LMhiZX8ka9dK80(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Landroid/app/Activity;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lambda$onNextPressed$27(Landroid/app/Activity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jIMuEkxeFf5BTa8T63IZmQ7EJ8Y(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Lorg/telegram/tgnet/tl/TL_account$confirmPhone;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lambda$onNextPressed$29(Lorg/telegram/tgnet/tl/TL_account$confirmPhone;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lxfPWKZkitAmX6HCEmiamvO94YU(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lambda$onShow$44()V

    return-void
.end method

.method public static synthetic $r8$lambda$oJyQlGZDOOJ9CdJfsxDVziLUxBI(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oeHQ3NtJHqvmxmdnFi5ZFxjl5dc(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Landroid/view/View;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lambda$setParams$21(Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$soAlzppPzfFNHahRuAu5wYU04Lg(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Landroid/os/Bundle;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lambda$resendCode$11(Landroid/os/Bundle;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sqkKk61DZpbe1_Pj2vHvZt3Qj8I(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lambda$onNextPressed$36(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;)V

    return-void
.end method

.method public static synthetic $r8$lambda$svUv2hNG_CXh0XAMTrUU00FEAh0(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lambda$new$3(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tgas35wCGHO6JgGQEjmsSnueCQI(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$vCMpKtLixg89cTHNXcK6ofSHhqc()V
    .locals 0

    .line 4320
    invoke-static {}, Lorg/telegram/messenger/CallReceiver;->checkLastReceivedCall()V

    return-void
.end method

.method public static synthetic $r8$lambda$xUxaWIcbK50gpGE-FjSzrn1rcVE(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lambda$tryHideProgress$19()V

    return-void
.end method

.method public static synthetic $r8$lambda$zt7Mw2JofhVcsXPp4bp0E1T2Q_g(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lambda$onNextPressed$33(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetcodeTime(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeTime:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentType(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgeterrorColorTimeout(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Ljava/lang/Runnable;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->errorColorTimeout:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetisResendingCode(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->isResendingCode:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlastCodeTime(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)D
    .locals 2

    .line 0
    iget-wide v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lastCodeTime:D

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetlastCurrentTime(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)D
    .locals 2

    .line 0
    iget-wide v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lastCurrentTime:D

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetnextPressed(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextPressed:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetnextType(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextType:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetopenTime(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->openTime:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetpostedErrorColorTimeout(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->postedErrorColorTimeout:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetproblemText(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Lorg/telegram/ui/LoginActivity$LoadingTextView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemText:Lorg/telegram/ui/LoginActivity$LoadingTextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetprogressView(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Lorg/telegram/ui/LoginActivity$ProgressView;
    .locals 0

    .line 0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettime(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->time:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgettimeText(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Lorg/telegram/ui/LoginActivity$LoadingTextView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeText:Lorg/telegram/ui/LoginActivity$LoadingTextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettimeTimer(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Ljava/util/Timer;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeTimer:Ljava/util/Timer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputcodeTime(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeTime:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputlastCodeTime(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;D)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lastCodeTime:D

    return-void
.end method

.method static bridge synthetic -$$Nest$fputlastCurrentTime(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;D)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lastCurrentTime:D

    return-void
.end method

.method static bridge synthetic -$$Nest$fputtime(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->time:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mdestroyCodeTimer(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->destroyCodeTimer()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdestroyTimer(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->destroyTimer()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetProblemTextVisible(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->setProblemTextVisible(Z)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;I)V
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 3629
    iput-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    .line 3630
    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/SlideView;-><init>(Landroid/content/Context;)V

    .line 3588
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timerSync:Ljava/lang/Object;

    const v3, 0xea60

    .line 3589
    iput v3, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->time:I

    const/16 v3, 0x3a98

    .line 3590
    iput v3, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeTime:I

    .line 3596
    const-string v3, ""

    iput-object v3, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lastError:Ljava/lang/String;

    const/4 v4, 0x0

    .line 3605
    iput-boolean v4, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->isResendingCode:Z

    .line 3607
    const-string v5, "*"

    iput-object v5, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->pattern:Ljava/lang/String;

    .line 3608
    iput-object v3, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->prefix:Ljava/lang/String;

    .line 3617
    new-instance v3, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda1;

    invoke-direct {v3, v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V

    iput-object v3, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->errorColorTimeout:Ljava/lang/Runnable;

    move/from16 v3, p3

    .line 3632
    iput v3, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    const/4 v3, 0x1

    .line 3633
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 3635
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->confirmTextView:Landroid/widget/TextView;

    const/high16 v6, 0x41600000    # 14.0f

    .line 3636
    invoke-virtual {v5, v3, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 3637
    iget-object v5, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->confirmTextView:Landroid/widget/TextView;

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v5, v8, v9}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 3639
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->titleTextView:Landroid/widget/TextView;

    const/high16 v8, 0x41900000    # 18.0f

    .line 3640
    invoke-virtual {v5, v3, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 3641
    iget-object v5, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->titleTextView:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 3642
    iget-object v5, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->titleTextView:Landroid/widget/TextView;

    sget-boolean v8, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v10, 0x3

    if-eqz v8, :cond_0

    const/4 v8, 0x5

    goto :goto_0

    :cond_0
    move v8, v10

    :goto_0
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 3643
    iget-object v5, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->titleTextView:Landroid/widget/TextView;

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v5, v8, v9}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 3644
    iget-object v5, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->titleTextView:Landroid/widget/TextView;

    const/16 v8, 0x31

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 3647
    invoke-static {v1}, Lorg/telegram/ui/LoginActivity;->-$$Nest$fgetactivityMode(Lorg/telegram/ui/LoginActivity;)I

    move-result v5

    if-eq v5, v3, :cond_1

    const/4 v5, 0x0

    goto :goto_1

    .line 3653
    :cond_1
    sget v5, Lorg/telegram/messenger/R$string;->CancelAccountReset:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 3657
    :goto_1
    iget v12, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    const/16 v13, 0x10

    const/16 v14, 0xb

    const/high16 v16, 0x41800000    # 16.0f

    move/from16 p3, v7

    const/16 v7, 0x11

    const/4 v11, -0x1

    const/4 v15, -0x2

    if-ne v12, v14, :cond_3

    .line 3658
    iget-object v12, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->titleTextView:Landroid/widget/TextView;

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    sget v5, Lorg/telegram/messenger/R$string;->MissedCallDescriptionTitle:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_2
    invoke-virtual {v12, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3660
    new-instance v5, Landroid/widget/FrameLayout;

    invoke-direct {v5, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 3661
    new-instance v12, Landroid/widget/ImageView;

    invoke-direct {v12, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v12, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->missedCallArrowIcon:Landroid/widget/ImageView;

    .line 3662
    new-instance v12, Landroid/widget/ImageView;

    invoke-direct {v12, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v12, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->missedCallPhoneIcon:Landroid/widget/ImageView;

    .line 3663
    iget-object v12, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->missedCallArrowIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3664
    iget-object v12, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->missedCallPhoneIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3666
    iget-object v12, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->missedCallArrowIcon:Landroid/widget/ImageView;

    sget v14, Lorg/telegram/messenger/R$drawable;->login_arrow1:I

    invoke-virtual {v12, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3667
    iget-object v12, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->missedCallPhoneIcon:Landroid/widget/ImageView;

    sget v14, Lorg/telegram/messenger/R$drawable;->login_phone1:I

    invoke-virtual {v12, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v18, 0x40

    const/16 v19, 0x40

    const/16 v20, 0x1

    const/16 v21, 0x0

    const/16 v22, 0x10

    .line 3669
    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v0, v5, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3670
    iget-object v5, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->titleTextView:Landroid/widget/TextView;

    const/16 v18, -0x2

    const/16 v19, -0x2

    const/16 v20, 0x31

    const/16 v22, 0x8

    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v0, v5, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3672
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->missedCallDescriptionSubtitle:Landroid/widget/TextView;

    .line 3673
    invoke-virtual {v5, v3, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 3674
    iget-object v5, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->missedCallDescriptionSubtitle:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 3675
    iget-object v5, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->missedCallDescriptionSubtitle:Landroid/widget/TextView;

    invoke-static/range {p3 .. p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {v5, v12, v9}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 3676
    iget-object v5, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->missedCallDescriptionSubtitle:Landroid/widget/TextView;

    sget v12, Lorg/telegram/messenger/R$string;->MissedCallDescriptionSubtitle:I

    invoke-static {v12}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v12

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3678
    iget-object v5, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->missedCallDescriptionSubtitle:Landroid/widget/TextView;

    const/16 v23, 0x24

    const/16 v18, -0x1

    const/16 v21, 0x24

    const/16 v22, 0x10

    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v0, v5, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3680
    new-instance v5, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$1;

    invoke-direct {v5, v0, v2, v1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$1;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Landroid/content/Context;Lorg/telegram/ui/LoginActivity;)V

    iput-object v5, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    .line 3687
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 3688
    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 3689
    new-instance v12, Landroid/widget/TextView;

    invoke-direct {v12, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v12, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->prefixTextView:Landroid/widget/TextView;

    const/high16 v14, 0x41a00000    # 20.0f

    .line 3690
    invoke-virtual {v12, v3, v14}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 3691
    iget-object v12, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->prefixTextView:Landroid/widget/TextView;

    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 3692
    iget-object v12, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->prefixTextView:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v14

    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 3693
    iget-object v12, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->prefixTextView:Landroid/widget/TextView;

    invoke-virtual {v12, v4, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 3694
    iget-object v12, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->prefixTextView:Landroid/widget/TextView;

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setGravity(I)V

    .line 3696
    iget-object v12, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->prefixTextView:Landroid/widget/TextView;

    const/16 v23, 0x4

    const/16 v18, -0x2

    const/16 v19, -0x1

    const/16 v20, 0x10

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v5, v12, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3697
    iget-object v12, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    invoke-static {v15, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v5, v12, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v23, 0x0

    const/16 v19, 0x22

    const/16 v20, 0x1

    const/16 v22, 0x1c

    .line 3699
    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v0, v5, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3701
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->missedCallDescriptionSubtitle2:Landroid/widget/TextView;

    .line 3702
    invoke-virtual {v5, v3, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 3703
    iget-object v5, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->missedCallDescriptionSubtitle2:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 3704
    iget-object v5, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->missedCallDescriptionSubtitle2:Landroid/widget/TextView;

    invoke-static/range {p3 .. p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {v5, v12, v9}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 3705
    iget-object v5, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->missedCallDescriptionSubtitle2:Landroid/widget/TextView;

    sget v12, Lorg/telegram/messenger/R$string;->MissedCallDescriptionSubtitle2:I

    invoke-static {v12}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v12

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3707
    iget-object v5, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->missedCallDescriptionSubtitle2:Landroid/widget/TextView;

    const/16 v23, 0x24

    const/16 v24, 0xc

    const/16 v18, -0x1

    const/16 v19, -0x2

    const/16 v20, 0x31

    const/16 v21, 0x24

    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v0, v5, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_b

    :cond_3
    const/16 v14, 0x40

    if-ne v12, v10, :cond_6

    .line 3709
    iget-object v12, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->confirmTextView:Landroid/widget/TextView;

    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 3710
    new-instance v12, Landroid/widget/FrameLayout;

    invoke-direct {v12, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 3711
    invoke-static {v11, v4, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v0, v12, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3713
    new-instance v13, Landroid/widget/LinearLayout;

    invoke-direct {v13, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 3714
    invoke-virtual {v13, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 3715
    invoke-virtual {v13, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 3716
    invoke-static {v11, v15, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v12, v13, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3717
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 3718
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v17

    if-eqz v17, :cond_4

    const/4 v7, 0x0

    goto :goto_3

    :cond_4
    sget v17, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    move/from16 v7, v17

    :goto_3
    iput v7, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 3720
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 3721
    invoke-static {v15, v15, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v13, v4, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3723
    new-instance v7, Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v7, v2}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    iput-object v7, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->blueImageView:Lorg/telegram/ui/Components/RLottieImageView;

    .line 3724
    new-instance v20, Lorg/telegram/ui/Components/RLottieDrawable;

    sget v21, Lorg/telegram/messenger/R$raw;->phone_flash_call:I

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    const/high16 v7, 0x42800000    # 64.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v23

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v24

    const/16 v25, 0x1

    const/16 v26, 0x0

    invoke-direct/range {v20 .. v26}, Lorg/telegram/ui/Components/RLottieDrawable;-><init>(ILjava/lang/String;IIZ[I)V

    move-object/from16 v11, v20

    iput-object v11, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->hintDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    .line 3725
    iget-object v15, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->blueImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v15, v11}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(Lorg/telegram/ui/Components/RLottieDrawable;)V

    .line 3726
    iget-object v11, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->blueImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-static {v14, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v4, v11, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3728
    iget-object v4, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->titleTextView:Landroid/widget/TextView;

    if-eqz v5, :cond_5

    goto :goto_4

    :cond_5
    sget v5, Lorg/telegram/messenger/R$string;->YourCode:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_4
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3729
    iget-object v4, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->titleTextView:Landroid/widget/TextView;

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v22, -0x2

    const/16 v23, -0x2

    const/16 v24, 0x1

    const/16 v25, 0x0

    const/16 v26, 0x10

    invoke-static/range {v22 .. v28}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v13, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3730
    iget-object v4, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->confirmTextView:Landroid/widget/TextView;

    const/16 v26, 0x8

    invoke-static/range {v22 .. v28}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v13, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object v11, v12

    goto/16 :goto_c

    .line 3732
    :cond_6
    iget-object v4, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->confirmTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 3734
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v22, -0x2

    const/16 v23, -0x2

    const/16 v24, 0x31

    const/16 v25, 0x0

    const/16 v26, 0x10

    .line 3735
    invoke-static/range {v22 .. v28}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v0, v4, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3737
    iget v7, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    if-ne v7, v3, :cond_7

    const/16 v14, 0x80

    :cond_7
    if-ne v7, v3, :cond_8

    .line 3739
    new-instance v22, Lorg/telegram/ui/Components/RLottieDrawable;

    sget v23, Lorg/telegram/messenger/R$raw;->code_laptop:I

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    int-to-float v7, v14

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v25

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v26

    const/16 v27, 0x1

    const/16 v28, 0x0

    invoke-direct/range {v22 .. v28}, Lorg/telegram/ui/Components/RLottieDrawable;-><init>(ILjava/lang/String;IIZ[I)V

    move-object/from16 v7, v22

    iput-object v7, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->hintDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    goto :goto_5

    .line 3741
    :cond_8
    new-instance v22, Lorg/telegram/ui/Components/RLottieDrawable;

    sget v23, Lorg/telegram/messenger/R$raw;->sms_incoming_info:I

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    int-to-float v7, v14

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v25

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v26

    const/16 v27, 0x1

    const/16 v28, 0x0

    invoke-direct/range {v22 .. v28}, Lorg/telegram/ui/Components/RLottieDrawable;-><init>(ILjava/lang/String;IIZ[I)V

    move-object/from16 v11, v22

    iput-object v11, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->hintDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    .line 3743
    new-instance v22, Lorg/telegram/ui/Components/RLottieDrawable;

    sget v23, Lorg/telegram/messenger/R$raw;->phone_stars_to_dots:I

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v25

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v26

    invoke-direct/range {v22 .. v28}, Lorg/telegram/ui/Components/RLottieDrawable;-><init>(ILjava/lang/String;IIZ[I)V

    move-object/from16 v11, v22

    iput-object v11, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->starsToDotsDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    .line 3744
    new-instance v22, Lorg/telegram/ui/Components/RLottieDrawable;

    sget v23, Lorg/telegram/messenger/R$raw;->phone_dots:I

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v25

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v26

    invoke-direct/range {v22 .. v28}, Lorg/telegram/ui/Components/RLottieDrawable;-><init>(ILjava/lang/String;IIZ[I)V

    move-object/from16 v11, v22

    iput-object v11, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->dotsDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    .line 3745
    new-instance v22, Lorg/telegram/ui/Components/RLottieDrawable;

    sget v23, Lorg/telegram/messenger/R$raw;->phone_dots_to_stars:I

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v25

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v26

    invoke-direct/range {v22 .. v28}, Lorg/telegram/ui/Components/RLottieDrawable;-><init>(ILjava/lang/String;IIZ[I)V

    move-object/from16 v7, v22

    iput-object v7, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->dotsToStarsDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    .line 3747
    :goto_5
    new-instance v7, Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v7, v2}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    iput-object v7, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->blueImageView:Lorg/telegram/ui/Components/RLottieImageView;

    .line 3748
    iget-object v11, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->hintDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v7, v11}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(Lorg/telegram/ui/Components/RLottieDrawable;)V

    .line 3749
    iget v7, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    if-ne v7, v3, :cond_9

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isSmallScreen()Z

    move-result v7

    if-nez v7, :cond_9

    .line 3750
    iget-object v7, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->blueImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/high16 v11, 0x41c00000    # 24.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    neg-int v11, v11

    int-to-float v11, v11

    invoke-virtual {v7, v11}, Landroid/view/View;->setTranslationY(F)V

    .line 3752
    :cond_9
    iget-object v7, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->blueImageView:Lorg/telegram/ui/Components/RLottieImageView;

    int-to-float v11, v14

    iget v12, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    if-ne v12, v3, :cond_a

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isSmallScreen()Z

    move-result v12

    if-nez v12, :cond_a

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    neg-int v12, v12

    int-to-float v12, v12

    :goto_6
    move/from16 v28, v12

    goto :goto_7

    :cond_a
    const/4 v12, 0x0

    goto :goto_6

    :goto_7
    const/16 v24, 0x33

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v23, v11

    move/from16 v22, v14

    invoke-static/range {v22 .. v28}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v4, v7, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3753
    iget-object v4, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->titleTextView:Landroid/widget/TextView;

    if-eqz v5, :cond_b

    goto :goto_9

    :cond_b
    iget v5, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    if-ne v5, v3, :cond_c

    sget v5, Lorg/telegram/messenger/R$string;->SentAppCodeTitle:I

    goto :goto_8

    :cond_c
    sget v5, Lorg/telegram/messenger/R$string;->SentSmsCodeTitle:I

    :goto_8
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_9
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3754
    iget-object v4, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->titleTextView:Landroid/widget/TextView;

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v22, -0x2

    const/16 v23, -0x2

    const/16 v24, 0x31

    const/16 v25, 0x0

    const/16 v26, 0x12

    invoke-static/range {v22 .. v28}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3755
    iget v4, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    const/16 v5, 0xf

    if-ne v4, v5, :cond_d

    move/from16 v25, v13

    goto :goto_a

    :cond_d
    const/16 v25, 0x0

    .line 3756
    :goto_a
    iget-object v4, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->confirmTextView:Landroid/widget/TextView;

    const/16 v26, 0x11

    const/16 v28, 0x0

    const/16 v22, -0x2

    const/16 v23, -0x2

    const/16 v24, 0x31

    move/from16 v27, v25

    invoke-static/range {v22 .. v28}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_b
    const/4 v11, 0x0

    .line 3758
    :goto_c
    iget v4, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    const/16 v5, 0xb

    if-eq v4, v5, :cond_e

    .line 3759
    new-instance v4, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$2;

    invoke-direct {v4, v0, v2, v1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$2;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Landroid/content/Context;Lorg/telegram/ui/LoginActivity;)V

    iput-object v4, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v22, -0x2

    const/16 v23, 0x2a

    const/16 v24, 0x1

    const/16 v25, 0x0

    const/16 v26, 0x20

    .line 3766
    invoke-static/range {v22 .. v28}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3768
    :cond_e
    iget v4, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    const/16 v5, 0x8

    if-ne v4, v10, :cond_f

    .line 3769
    iget-object v4, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 3772
    :cond_f
    new-instance v4, Lorg/telegram/ui/LoginActivity$LoadingTextView;

    invoke-direct {v4, v1, v2}, Lorg/telegram/ui/LoginActivity$LoadingTextView;-><init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->prevTypeTextView:Landroid/widget/TextView;

    .line 3773
    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteValueText:I

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v10

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 3774
    iget-object v4, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->prevTypeTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v10

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3775
    iget-object v4, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->prevTypeTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v3, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 3776
    iget-object v4, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->prevTypeTextView:Landroid/widget/TextView;

    invoke-static/range {p3 .. p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v4, v10, v9}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 3777
    iget-object v4, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->prevTypeTextView:Landroid/widget/TextView;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    const/high16 v12, 0x41000000    # 8.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    invoke-virtual {v4, v10, v13, v14, v15}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 3778
    iget-object v4, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->prevTypeTextView:Landroid/widget/TextView;

    new-instance v10, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda2;

    invoke-direct {v10, v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V

    invoke-virtual {v4, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3779
    iget-object v4, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->prevTypeTextView:Landroid/widget/TextView;

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v22, -0x2

    const/16 v23, -0x2

    const/16 v24, 0x1

    const/16 v25, 0x0

    const/16 v26, 0x12

    invoke-static/range {v22 .. v28}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v0, v4, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3780
    iget-object v4, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->prevTypeTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 3782
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemFrame:Landroid/widget/FrameLayout;

    .line 3784
    new-instance v4, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$3;

    invoke-direct {v4, v0, v2, v1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$3;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Landroid/content/Context;Lorg/telegram/ui/LoginActivity;)V

    iput-object v4, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeText:Lorg/telegram/ui/LoginActivity$LoadingTextView;

    .line 3794
    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 3795
    iget-object v4, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeText:Lorg/telegram/ui/LoginActivity$LoadingTextView;

    invoke-static/range {p3 .. p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v5, v9}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 3796
    iget-object v4, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeText:Lorg/telegram/ui/LoginActivity$LoadingTextView;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    invoke-virtual {v4, v5, v7, v10, v13}, Landroid/view/View;->setPadding(IIII)V

    .line 3797
    iget-object v4, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeText:Lorg/telegram/ui/LoginActivity$LoadingTextView;

    const/high16 v5, 0x41700000    # 15.0f

    invoke-virtual {v4, v3, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 3798
    iget-object v4, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeText:Lorg/telegram/ui/LoginActivity$LoadingTextView;

    const/16 v7, 0x33

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 3799
    iget-object v4, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeText:Lorg/telegram/ui/LoginActivity$LoadingTextView;

    new-instance v7, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda3;

    invoke-direct {v7, v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V

    invoke-virtual {v4, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3852
    iget-object v4, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemFrame:Landroid/widget/FrameLayout;

    iget-object v7, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeText:Lorg/telegram/ui/LoginActivity$LoadingTextView;

    const/4 v10, -0x2

    invoke-static {v10, v10, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v4, v7, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3854
    new-instance v4, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$4;

    invoke-direct {v4, v0, v2, v1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$4;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Landroid/content/Context;Lorg/telegram/ui/LoginActivity;)V

    iput-object v4, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->errorViewSwitcher:Landroid/widget/ViewSwitcher;

    .line 3861
    iget v4, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    const/16 v7, 0xf

    if-eq v4, v7, :cond_10

    .line 3862
    sget v4, Lorg/telegram/messenger/R$anim;->text_in:I

    invoke-static {v2, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    .line 3863
    sget-object v7, Lorg/telegram/ui/Components/Easings;->easeInOutQuad:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v7}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 3864
    iget-object v10, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->errorViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v10, v4}, Landroid/widget/ViewAnimator;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 3866
    sget v4, Lorg/telegram/messenger/R$anim;->text_out:I

    invoke-static {v2, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    .line 3867
    invoke-virtual {v4, v7}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 3868
    iget-object v7, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->errorViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v7, v4}, Landroid/widget/ViewAnimator;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 3870
    new-instance v4, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$5;

    invoke-direct {v4, v0, v2, v1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$5;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Landroid/content/Context;Lorg/telegram/ui/LoginActivity;)V

    iput-object v4, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemText:Lorg/telegram/ui/LoginActivity$LoadingTextView;

    .line 3880
    invoke-static/range {p3 .. p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v4, v1, v9}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 3881
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemText:Lorg/telegram/ui/LoginActivity$LoadingTextView;

    invoke-virtual {v1, v3, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 3882
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemText:Lorg/telegram/ui/LoginActivity$LoadingTextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 3883
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemText:Lorg/telegram/ui/LoginActivity$LoadingTextView;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    invoke-virtual {v1, v4, v7, v6, v10}, Landroid/view/View;->setPadding(IIII)V

    .line 3884
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemFrame:Landroid/widget/FrameLayout;

    iget-object v4, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemText:Lorg/telegram/ui/LoginActivity$LoadingTextView;

    const/16 v6, 0x11

    const/4 v7, -0x1

    const/4 v10, -0x2

    invoke-static {v7, v10, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v1, v4, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3885
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->errorViewSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v4, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemFrame:Landroid/widget/FrameLayout;

    invoke-static {v10, v10, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v1, v4, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_d

    .line 3887
    :cond_10
    sget v1, Lorg/telegram/messenger/R$anim;->scale_in:I

    invoke-static {v2, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 3888
    sget-object v4, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 3889
    iget-object v6, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->errorViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v6, v1}, Landroid/widget/ViewAnimator;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 3891
    sget v1, Lorg/telegram/messenger/R$anim;->scale_out:I

    invoke-static {v2, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 3892
    invoke-virtual {v1, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 3893
    iget-object v4, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->errorViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v4, v1}, Landroid/widget/ViewAnimator;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 3895
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->openFragmentButton:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    .line 3896
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 3897
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->openFragmentButton:Landroid/widget/LinearLayout;

    const/16 v6, 0x11

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 3898
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->openFragmentButton:Landroid/widget/LinearLayout;

    const/high16 v6, 0x42080000    # 34.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v1, v7, v4, v6, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 3899
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->openFragmentButton:Landroid/widget/LinearLayout;

    const/high16 v4, 0x40c00000    # 6.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_changephoneinfo_image2:I

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionPressedBackground:I

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v7

    invoke-static {v4, v6, v7}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 3900
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->openFragmentButton:Landroid/widget/LinearLayout;

    new-instance v4, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda4;

    invoke-direct {v4, v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3907
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->errorViewSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v4, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->openFragmentButton:Landroid/widget/LinearLayout;

    const/high16 v6, 0x42500000    # 52.0f

    const/4 v7, -0x1

    invoke-static {v7, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v1, v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3909
    new-instance v1, Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->openFragmentImageView:Lorg/telegram/ui/Components/RLottieImageView;

    .line 3910
    sget v4, Lorg/telegram/messenger/R$raw;->fragment:I

    const/16 v6, 0x24

    const/16 v7, 0x24

    invoke-virtual {v1, v4, v6, v7}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    .line 3911
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->openFragmentButton:Landroid/widget/LinearLayout;

    iget-object v4, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->openFragmentImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/16 v27, 0x2

    const/16 v28, 0x0

    const/16 v22, 0x24

    const/16 v23, 0x24

    const/16 v24, 0x10

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-static/range {v22 .. v28}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v1, v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3913
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->openFragmentButtonText:Landroid/widget/TextView;

    .line 3914
    sget v4, Lorg/telegram/messenger/R$string;->OpenFragment:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3915
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->openFragmentButtonText:Landroid/widget/TextView;

    const/4 v7, -0x1

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3916
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->openFragmentButtonText:Landroid/widget/TextView;

    invoke-virtual {v1, v3, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 3917
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->openFragmentButtonText:Landroid/widget/TextView;

    const/16 v6, 0x11

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 3918
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->openFragmentButtonText:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 3919
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->openFragmentButton:Landroid/widget/LinearLayout;

    iget-object v4, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->openFragmentButtonText:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3922
    :goto_d
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->wrongCode:Landroid/widget/TextView;

    .line 3923
    sget v4, Lorg/telegram/messenger/R$string;->WrongCode:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3924
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->wrongCode:Landroid/widget/TextView;

    invoke-static/range {p3 .. p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1, v4, v9}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 3925
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->wrongCode:Landroid/widget/TextView;

    invoke-virtual {v1, v3, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 3926
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->wrongCode:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 3927
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->wrongCode:Landroid/widget/TextView;

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/high16 v4, 0x40800000    # 4.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v3, v5, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 3928
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->errorViewSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v3, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->wrongCode:Landroid/widget/TextView;

    const/16 v6, 0x11

    const/4 v10, -0x2

    invoke-static {v10, v10, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-nez v11, :cond_12

    .line 3931
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->bottomContainer:Landroid/widget/FrameLayout;

    .line 3932
    iget-object v3, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->errorViewSwitcher:Landroid/widget/ViewSwitcher;

    iget v4, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    const/16 v5, 0xf

    if-ne v4, v5, :cond_11

    const/4 v11, -0x1

    goto :goto_e

    :cond_11
    move v11, v10

    :goto_e
    const/16 v16, 0x0

    const/high16 v17, 0x42000000    # 32.0f

    const/high16 v12, -0x40000000    # -2.0f

    const/16 v13, 0x51

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3933
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->bottomContainer:Landroid/widget/FrameLayout;

    const/4 v4, 0x0

    const/4 v7, -0x1

    invoke-static {v7, v4, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_f

    .line 3935
    :cond_12
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->errorViewSwitcher:Landroid/widget/ViewSwitcher;

    const/4 v8, 0x0

    const/high16 v9, 0x42000000    # 32.0f

    const/4 v3, -0x2

    const/high16 v4, -0x40000000    # -2.0f

    const/16 v5, 0x51

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v11, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3937
    :goto_f
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->errorViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-static {v1}, Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;->attach(Landroid/view/View;)Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;

    .line 3939
    iget v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    const/16 v5, 0xf

    if-eq v1, v5, :cond_13

    .line 3940
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemText:Lorg/telegram/ui/LoginActivity$LoadingTextView;

    new-instance v3, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda5;

    invoke-direct {v3, v0, v2}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_13
    return-void
.end method

.method private animateSuccess(Ljava/lang/Runnable;)V
    .locals 7

    .line 4990
    iget v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 4991
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 4994
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v2, v1, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    array-length v2, v2

    const-wide/16 v3, 0x4b

    if-ge v0, v2, :cond_1

    .line 4996
    new-instance v2, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda38;

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda38;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;I)V

    int-to-long v5, v0

    mul-long/2addr v5, v3

    invoke-virtual {v1, v2, v5, v6}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4998
    :cond_1
    new-instance v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda39;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda39;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Ljava/lang/Runnable;)V

    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object p1, p1, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    array-length p1, p1

    int-to-long v5, p1

    mul-long/2addr v5, v3

    const-wide/16 v2, 0x190

    add-long/2addr v5, v2

    invoke-virtual {v1, v0, v5, v6}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private applyLottieColors(Lorg/telegram/ui/Components/RLottieDrawable;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 4134
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionBackground:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    const-string v1, "Bubble.**"

    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    .line 4135
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    const-string v2, "Phone.**"

    invoke-virtual {p1, v2, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    .line 4136
    const-string v1, "Note.**"

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private createCodeTimer()V
    .locals 8

    .line 4565
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x3a98

    .line 4568
    iput v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeTime:I

    .line 4569
    iget v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->time:I

    if-le v1, v0, :cond_1

    .line 4570
    iput v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeTime:I

    .line 4572
    :cond_1
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeTimer:Ljava/util/Timer;

    .line 4573
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-double v0, v0

    iput-wide v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lastCodeTime:D

    .line 4574
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeTimer:Ljava/util/Timer;

    new-instance v3, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7;

    invoke-direct {v3, p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x3e8

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method private createTimer()V
    .locals 9

    .line 4609
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    return-void

    .line 4612
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeText:Lorg/telegram/ui/LoginActivity$LoadingTextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText6:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4613
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeText:Lorg/telegram/ui/LoginActivity$LoadingTextView;

    sget v2, Lorg/telegram/messenger/R$id;->color_key_tag:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 4617
    new-instance v3, Ljava/util/Timer;

    invoke-direct {v3}, Ljava/util/Timer;-><init>()V

    iput-object v3, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeTimer:Ljava/util/Timer;

    .line 4618
    new-instance v4, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;

    invoke-direct {v4, p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x3e8

    invoke-virtual/range {v3 .. v8}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method private destroyCodeTimer()V
    .locals 2

    .line 4597
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timerSync:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4598
    :try_start_1
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeTimer:Ljava/util/Timer;

    if-eqz v1, :cond_0

    .line 4599
    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    const/4 v1, 0x0

    .line 4600
    iput-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeTimer:Ljava/util/Timer;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 4602
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

    .line 4604
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method private destroyTimer()V
    .locals 3

    .line 4662
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeText:Lorg/telegram/ui/LoginActivity$LoadingTextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText6:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4663
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeText:Lorg/telegram/ui/LoginActivity$LoadingTextView;

    sget v2, Lorg/telegram/messenger/R$id;->color_key_tag:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 4665
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timerSync:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4666
    :try_start_1
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeTimer:Ljava/util/Timer;

    if-eqz v1, :cond_0

    .line 4667
    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    const/4 v1, 0x0

    .line 4668
    iput-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeTimer:Ljava/util/Timer;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 4670
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

    .line 4672
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic lambda$animateSuccess$38(I)V
    .locals 1

    .line 4996
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v0, v0, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    aget-object p1, v0, p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lorg/telegram/ui/CodeNumberField;->animateSuccessProgress(F)V

    return-void
.end method

.method private synthetic lambda$animateSuccess$39(Ljava/lang/Runnable;)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 4999
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v2, v2, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 5000
    aget-object v2, v2, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/CodeNumberField;->animateSuccessProgress(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5002
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 5003
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iput-boolean v0, p1, Lorg/telegram/ui/CodeFieldContainer;->isFocusSuppressed:Z

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 3

    const/4 v0, 0x0

    .line 3618
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->postedErrorColorTimeout:Z

    .line 3619
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v1, v1, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 3620
    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/telegram/ui/CodeNumberField;->animateErrorProgress(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3623
    :cond_0
    iget v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->openFragmentButton:Landroid/widget/LinearLayout;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemFrame:Landroid/widget/FrameLayout;

    .line 3624
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->errorViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object v1

    if-eq v1, v0, :cond_2

    .line 3625
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->errorViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewAnimator;->showNext()V

    :cond_2
    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    .line 3778
    invoke-virtual {p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->onBackPressed(Z)Z

    return-void
.end method

.method private synthetic lambda$new$2(Landroid/os/Bundle;Lorg/telegram/tgnet/TLObject;)V
    .locals 2

    .line 3830
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextCodeParams:Landroid/os/Bundle;

    .line 3831
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;

    iput-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextCodeAuth:Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;

    .line 3832
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$auth_SentCode;->type:Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;

    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCodeTypeSmsPhrase;

    if-eqz v1, :cond_0

    const/16 v0, 0x11

    .line 3833
    iput v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextType:I

    goto :goto_0

    .line 3834
    :cond_0
    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCodeTypeSmsWord;

    if-eqz v0, :cond_1

    const/16 v0, 0x10

    .line 3835
    iput v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextType:I

    .line 3837
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0, p1, p2}, Lorg/telegram/ui/LoginActivity;->-$$Nest$mfillNextCodeParams(Lorg/telegram/ui/LoginActivity;Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$auth_SentCode;)V

    return-void
.end method

.method private synthetic lambda$new$3(Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 3840
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lastError:Ljava/lang/String;

    return-void
.end method

.method private synthetic lambda$new$4(Landroid/os/Bundle;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 3829
    new-instance p3, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda25;

    invoke-direct {p3, p0, p1, p2}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda25;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Landroid/os/Bundle;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    if-eqz p3, :cond_1

    .line 3839
    iget-object p1, p3, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 3840
    new-instance p1, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda26;

    invoke-direct {p1, p0, p3}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda26;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$new$5(Landroid/view/View;)V
    .locals 3

    .line 3803
    iget p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->time:I

    if-lez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeTimer:Ljava/util/Timer;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 3806
    iput-boolean p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->isResendingCode:Z

    .line 3807
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeText:Lorg/telegram/ui/LoginActivity$LoadingTextView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 3808
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeText:Lorg/telegram/ui/LoginActivity$LoadingTextView;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteValueText:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3810
    iget p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextType:I

    const/16 v0, 0xb

    const/4 v1, 0x4

    if-eq p1, v1, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    const/16 v2, 0x11

    if-eq p1, v2, :cond_3

    const/16 v2, 0x10

    if-eq p1, v2, :cond_3

    if-eq p1, v0, :cond_3

    const/16 v2, 0xf

    if-ne p1, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    const/4 p1, 0x0

    .line 3844
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->setWaitingForSms(Z)V

    .line 3845
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didReceiveSmsCode:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 3846
    iput-boolean p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->waitingForEvent:Z

    .line 3847
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->destroyCodeTimer()V

    .line 3848
    iput-boolean p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->isResendingCode:Z

    .line 3849
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->resendCode()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    :goto_1
    if-eq p1, v1, :cond_5

    if-ne p1, v0, :cond_4

    goto :goto_2

    .line 3815
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeText:Lorg/telegram/ui/LoginActivity$LoadingTextView;

    sget v0, Lorg/telegram/messenger/R$string;->SendingSms:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 3813
    :cond_5
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeText:Lorg/telegram/ui/LoginActivity$LoadingTextView;

    sget v0, Lorg/telegram/messenger/R$string;->Calling:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3817
    :goto_3
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 3818
    const-string v0, "phone"

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->phone:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3819
    const-string v0, "ephone"

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->emailPhone:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3820
    const-string v0, "phoneFormated"

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->requestPhone:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3821
    const-string v0, "prevType"

    iget v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 3823
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->createCodeTimer()V

    .line 3824
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;-><init>()V

    .line 3825
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->requestPhone:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;->phone_number:Ljava/lang/String;

    .line 3826
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->phoneHash:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;->phone_code_hash:Ljava/lang/String;

    .line 3827
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v1}, Lorg/telegram/ui/LoginActivity;->access$1900(Lorg/telegram/ui/LoginActivity;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda19;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Landroid/os/Bundle;)V

    const/16 p1, 0xa

    invoke-virtual {v1, v0, v2, p1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    return-void
.end method

.method private synthetic lambda$new$6(Landroid/view/View;)V
    .locals 3

    .line 3902
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->url:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 3904
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic lambda$new$7(Landroid/content/Context;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 11

    .line 3979
    const-string p2, " "

    const-string p3, "\n"

    :try_start_0
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 3980
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%s (%d)"

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iget v5, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Object;

    aput-object v4, v7, v2

    const/4 v2, 0x1

    aput-object v5, v7, v2

    invoke-static {v1, v3, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 3982
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.SENDTO"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3983
    const-string v4, "mailto:"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3984
    const-string v4, "android.intent.extra.EMAIL"

    const-string v5, "sms@telegram.org"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 3985
    const-string v4, "android.intent.extra.SUBJECT"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->emailPhone:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " Android Registration/Login Issue "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v7}, Lorg/telegram/ui/LoginActivity;->-$$Nest$fgetpaid(Lorg/telegram/ui/LoginActivity;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, " #paidauth"

    goto :goto_0

    :cond_0
    const-string v7, ""

    :goto_0
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3987
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 3988
    const-string v5, "Technical Details (PLEASE DO NOT EDIT OR REMOVE)\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3990
    const-string v5, "Device: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3991
    const-string v5, "OS version: SDK "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3992
    const-string v7, "Locale: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3993
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3994
    const-string v7, "Target Phone: +"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->requestPhone:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3995
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 3998
    :try_start_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v7

    const/16 v8, 0x1e

    if-lt v5, v8, :cond_1

    .line 4001
    invoke-virtual {v7}, Landroid/telephony/SubscriptionManager;->getCompleteActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v8

    goto :goto_1

    :catch_0
    move-exception v5

    goto/16 :goto_4

    :cond_1
    const/4 v8, 0x0

    :goto_1
    if-eqz v8, :cond_2

    .line 4003
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_3

    :cond_2
    const/16 v9, 0x1c

    if-lt v5, v9, :cond_3

    .line 4004
    invoke-virtual {v7}, Landroid/telephony/SubscriptionManager;->getAccessibleSubscriptionInfoList()Ljava/util/List;

    move-result-object v8

    :cond_3
    if-eqz v8, :cond_4

    .line 4006
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 4007
    :cond_4
    invoke-virtual {v7}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v8

    :cond_5
    if-eqz v8, :cond_8

    .line 4010
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_6
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/SubscriptionInfo;

    .line 4011
    invoke-virtual {v7}, Landroid/telephony/SubscriptionInfo;->getNumber()Ljava/lang/String;

    move-result-object v8

    .line 4012
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 4013
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SIM"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 4014
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ".Phone: "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4015
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ".MCC: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroid/telephony/SubscriptionInfo;->getMcc()I

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4016
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ".MNC: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroid/telephony/SubscriptionInfo;->getMnc()I

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4017
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ".Carrier: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_7

    const-string v7, "unknown"

    goto :goto_3

    :cond_7
    invoke-virtual {v7}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v7

    :goto_3
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v7, "\n\n"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 4036
    :goto_4
    :try_start_2
    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 4038
    :cond_8
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    const/16 v7, 0x1d

    const-string v8, "Signal: unknown\n"

    if-lt v5, v7, :cond_a

    .line 4040
    :try_start_3
    const-class v5, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 4041
    const-class v7, Landroid/net/ConnectivityManager;

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/ConnectivityManager;

    .line 4042
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 4044
    const-string v7, "Signal: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "/4\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :catch_1
    move-exception v5

    goto :goto_5

    .line 4046
    :cond_9
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_6

    .line 4049
    :goto_5
    :try_start_4
    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_6

    .line 4052
    :cond_a
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4054
    :goto_6
    const-string v5, "Wi-Fi: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4055
    const-string v5, "Airplane Mode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->isInAirplaneMode(Landroid/content/Context;)Z

    move-result p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4056
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4057
    const-string p1, "App: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/telegram/messenger/BuildVars;->getExteraAppId()I

    move-result p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4059
    iget p1, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 p1, p1, 0xa

    if-eq p1, v2, :cond_c

    if-eq p1, v6, :cond_c

    .line 4066
    invoke-static {}, Lorg/telegram/messenger/BuildVars;->isBetaApp()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 4067
    const-string p1, "beta"

    goto :goto_7

    .line 4069
    :cond_b
    const-string p1, "universal"

    goto :goto_7

    .line 4062
    :cond_c
    const-string p1, "store"

    .line 4073
    :goto_7
    const-string v0, "App version: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4074
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4075
    const-string p1, "Issue: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity;->-$$Nest$fgetpaid(Lorg/telegram/ui/LoginActivity;)Z

    move-result p1

    if-eqz p1, :cond_d

    const-string p1, "no_otp"

    goto :goto_8

    :cond_d
    const-string p1, "no_otp_paid"

    :goto_8
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4076
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lastError:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_e

    .line 4077
    const-string p1, "Error: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lastError:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4079
    :cond_e
    const-string p1, "\n\n================================================\n"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4080
    const-string p1, "WRITE YOUR COMMENT HERE:\n"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4081
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4082
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4083
    const-string p1, "android.intent.extra.TEXT"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4084
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "Send email..."

    invoke-static {v3, p2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_9

    .line 4086
    :catch_2
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    sget p2, Lorg/telegram/messenger/R$string;->AppName:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "NoMailInstalled"

    sget v0, Lorg/telegram/messenger/R$string;->NoMailInstalled:I

    invoke-static {p3, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lorg/telegram/ui/LoginActivity;->-$$Nest$mneedShowAlert(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    :goto_9
    return-void
.end method

.method private synthetic lambda$new$8(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 2

    .line 4090
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    const/4 p2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, p2, v0, p2}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    return-void
.end method

.method private synthetic lambda$new$9(Landroid/content/Context;Landroid/view/View;)V
    .locals 5

    .line 3941
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextCodeParams:Landroid/os/Bundle;

    if-eqz p2, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextCodeAuth:Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;

    if-eqz v0, :cond_0

    .line 3942
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1, p2, v0}, Lorg/telegram/ui/LoginActivity;->-$$Nest$mfillNextCodeParams(Lorg/telegram/ui/LoginActivity;Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$auth_SentCode;)V

    return-void

    .line 3945
    :cond_0
    iget-boolean p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextPressed:Z

    if-nez p2, :cond_6

    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeText:Lorg/telegram/ui/LoginActivity$LoadingTextView;

    const/16 v0, 0x8

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-ne p2, v0, :cond_6

    :cond_1
    iget-boolean p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->isResendingCode:Z

    if-eqz p2, :cond_2

    goto/16 :goto_1

    .line 3948
    :cond_2
    iget p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextType:I

    if-nez p2, :cond_4

    .line 3955
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_auth_reportMissingCode;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_auth_reportMissingCode;-><init>()V

    .line 3956
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->requestPhone:Ljava/lang/String;

    iput-object v1, p2, Lorg/telegram/tgnet/TLRPC$TL_auth_reportMissingCode;->phone_number:Ljava/lang/String;

    .line 3957
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->phoneHash:Ljava/lang/String;

    iput-object v1, p2, Lorg/telegram/tgnet/TLRPC$TL_auth_reportMissingCode;->phone_code_hash:Ljava/lang/String;

    .line 3958
    const-string v1, ""

    iput-object v1, p2, Lorg/telegram/tgnet/TLRPC$TL_auth_reportMissingCode;->mnc:Ljava/lang/String;

    const/4 v1, 0x0

    .line 3961
    :try_start_0
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 3962
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v2

    .line 3963
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, 0x3

    .line 3964
    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 3965
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 3967
    iput-object v2, p2, Lorg/telegram/tgnet/TLRPC$TL_auth_reportMissingCode;->mnc:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 3970
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 3973
    :cond_3
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p2, v3, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    .line 3974
    new-instance p2, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v0, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    .line 3975
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$string;->DidNotGetTheCodeInfo:I

    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->phone:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v1

    .line 3976
    invoke-static {v0, v4}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$string;->DidNotGetTheCodeHelpButton:I

    .line 3977
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda17;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Landroid/content/Context;)V

    invoke-virtual {p2, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->Close:I

    .line 4089
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->DidNotGetTheCodeEditNumberButton:I

    .line 4090
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda18;

    invoke-direct {v0, p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    .line 4091
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    return-void

    .line 3950
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity;->-$$Nest$fgetradialProgressView(Lorg/telegram/ui/LoginActivity;)Lorg/telegram/ui/Components/RadialProgressView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_5

    goto :goto_1

    .line 3953
    :cond_5
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->resendCode()V

    :cond_6
    :goto_1
    return-void
.end method

.method private synthetic lambda$onBackPressed$42(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 2

    const/4 p1, 0x1

    .line 5059
    invoke-virtual {p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->onBackPressed(Z)Z

    .line 5060
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1, p1}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    return-void
.end method

.method private synthetic lambda$onNextPressed$22(Landroid/content/DialogInterface;)V
    .locals 0

    .line 4753
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void
.end method

.method private synthetic lambda$onNextPressed$23()V
    .locals 5

    .line 4747
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    const/4 v1, 0x3

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4749
    :catch_0
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lorg/telegram/messenger/R$string;->YourPasswordSuccess:I

    .line 4750
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->ChangePhoneNumberSuccessWithPhone:I

    .line 4751
    invoke-static {}, Lorg/telegram/PhoneFormat/PhoneFormat;->getInstance()Lorg/telegram/PhoneFormat/PhoneFormat;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->requestPhone:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/PhoneFormat/PhoneFormat;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->OK:I

    .line 4752
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda40;

    invoke-direct {v1, p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda40;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V

    .line 4753
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    .line 4754
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    return-void
.end method

.method private synthetic lambda$onNextPressed$24(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 4726
    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->tryHideProgress(ZZ)V

    .line 4727
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextPressed:Z

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-nez p1, :cond_1

    .line 4729
    check-cast p2, Lorg/telegram/tgnet/TLRPC$User;

    .line 4730
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->destroyTimer()V

    .line 4731
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->destroyCodeTimer()V

    .line 4732
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity;->access$1400(Lorg/telegram/ui/LoginActivity;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/UserConfig;->setCurrentUser(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 4733
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity;->access$1500(Lorg/telegram/ui/LoginActivity;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 4734
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 4735
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4736
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v4}, Lorg/telegram/ui/LoginActivity;->access$1600(Lorg/telegram/ui/LoginActivity;)I

    move-result v4

    invoke-static {v4}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    invoke-virtual {v4, p1, v2, v1, v1}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/List;Ljava/util/List;ZZ)V

    .line 4737
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity;->access$1700(Lorg/telegram/ui/LoginActivity;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1, p2, v0}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    .line 4738
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity;->access$1800(Lorg/telegram/ui/LoginActivity;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->mainUserInfoChanged:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 4739
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    const-wide/16 v0, 0x0

    const-string p2, "VALIDATE_PHONE_NUMBER"

    invoke-virtual {p1, v0, v1, p2}, Lorg/telegram/messenger/MessagesController;->removeSuggestion(JLjava/lang/String;)V

    .line 4741
    iget p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    if-ne p1, v3, :cond_0

    .line 4742
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->endIncomingCall()V

    .line 4745
    :cond_0
    new-instance p1, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda24;

    invoke-direct {p1, p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda24;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V

    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->animateSuccess(Ljava/lang/Runnable;)V

    return-void

    .line 4757
    :cond_1
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    iput-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lastError:Ljava/lang/String;

    .line 4758
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextPressed:Z

    .line 4759
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p2, v0, v1}, Lorg/telegram/ui/LoginActivity;->-$$Nest$mshowDoneButton(Lorg/telegram/ui/LoginActivity;ZZ)V

    .line 4760
    iget p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    const/16 v4, 0x10

    const/16 v5, 0x11

    const/4 v6, 0x4

    const/4 v7, 0x2

    if-ne p2, v3, :cond_2

    iget v8, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextType:I

    if-eq v8, v6, :cond_4

    if-eq v8, v7, :cond_4

    if-eq v8, v5, :cond_4

    if-eq v8, v4, :cond_4

    :cond_2
    if-ne p2, v7, :cond_3

    iget v8, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextType:I

    if-eq v8, v6, :cond_4

    if-eq v8, v3, :cond_4

    :cond_3
    if-ne p2, v6, :cond_5

    iget p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextType:I

    if-eq p2, v7, :cond_4

    if-eq p2, v5, :cond_4

    if-ne p2, v4, :cond_5

    .line 4761
    :cond_4
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->createTimer()V

    .line 4763
    :cond_5
    iget p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    const/16 v4, 0xf

    if-ne p2, v4, :cond_6

    .line 4764
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p2

    sget v4, Lorg/telegram/messenger/NotificationCenter;->didReceiveSmsCode:I

    invoke-virtual {p2, p0, v4}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    goto :goto_0

    :cond_6
    if-ne p2, v7, :cond_7

    .line 4766
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->setWaitingForSms(Z)V

    .line 4767
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p2

    sget v4, Lorg/telegram/messenger/NotificationCenter;->didReceiveSmsCode:I

    invoke-virtual {p2, p0, v4}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    goto :goto_0

    :cond_7
    if-ne p2, v3, :cond_8

    .line 4769
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->setWaitingForCall(Z)V

    .line 4770
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p2

    sget v4, Lorg/telegram/messenger/NotificationCenter;->didReceiveCall:I

    invoke-virtual {p2, p0, v4}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 4772
    :cond_8
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->waitingForEvent:Z

    .line 4773
    iget p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    if-eq p2, v3, :cond_f

    .line 4775
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v3, "PHONE_NUMBER_INVALID"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 4776
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    sget p2, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v1, "InvalidPhoneNumber"

    sget v2, Lorg/telegram/messenger/R$string;->InvalidPhoneNumber:I

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, v1}, Lorg/telegram/ui/LoginActivity;->-$$Nest$mneedShowAlert(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 4777
    :cond_9
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v3, "PHONE_CODE_EMPTY"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_e

    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v3, "PHONE_CODE_INVALID"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_a

    goto/16 :goto_3

    .line 4780
    :cond_a
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v3, "PHONE_CODE_EXPIRED"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 4781
    invoke-virtual {p0, v1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->onBackPressed(Z)Z

    .line 4782
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {p1, v0, v1, v2, v1}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    .line 4783
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    sget p2, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v1, "CodeExpired"

    sget v2, Lorg/telegram/messenger/R$string;->CodeExpired:I

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, v1}, Lorg/telegram/ui/LoginActivity;->-$$Nest$mneedShowAlert(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 4784
    :cond_b
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v1, "FLOOD_WAIT"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_c

    .line 4785
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    sget p2, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v1, "FloodWait"

    sget v2, Lorg/telegram/messenger/R$string;->FloodWait:I

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, v1}, Lorg/telegram/ui/LoginActivity;->-$$Nest$mneedShowAlert(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 4787
    :cond_c
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    sget v1, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ErrorOccurred"

    sget v4, Lorg/telegram/messenger/R$string;->ErrorOccurred:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v1, p1}, Lorg/telegram/ui/LoginActivity;->-$$Nest$mneedShowAlert(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    move p1, v0

    .line 4791
    :goto_2
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v1, p2, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    array-length v2, v1

    if-ge p1, v2, :cond_d

    .line 4792
    aget-object p2, v1, p1

    const-string v1, ""

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 4795
    :cond_d
    iput-boolean v0, p2, Lorg/telegram/ui/CodeFieldContainer;->isFocusSuppressed:Z

    .line 4796
    aget-object p1, v1, v0

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return-void

    .line 4778
    :cond_e
    :goto_3
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->shakeWrongCode()V

    :cond_f
    return-void
.end method

.method private synthetic lambda$onNextPressed$25(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 4725
    new-instance v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onNextPressed$26(Landroid/content/DialogInterface;)V
    .locals 0

    .line 4829
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void
.end method

.method private synthetic lambda$onNextPressed$27(Landroid/app/Activity;)V
    .locals 4

    .line 4825
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-direct {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget p1, Lorg/telegram/messenger/R$string;->CancelLinkSuccessTitle:I

    .line 4826
    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->CancelLinkSuccess:I

    .line 4827
    invoke-static {}, Lorg/telegram/PhoneFormat/PhoneFormat;->getInstance()Lorg/telegram/PhoneFormat/PhoneFormat;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->phone:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/PhoneFormat/PhoneFormat;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string v1, "CancelLinkSuccess"

    invoke-static {v1, v0, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->Close:I

    .line 4828
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda37;

    invoke-direct {v0, p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda37;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V

    .line 4829
    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    .line 4830
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    return-void
.end method

.method private synthetic lambda$onNextPressed$28(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/tl/TL_account$confirmPhone;)V
    .locals 8

    const/4 v0, 0x0

    .line 4818
    invoke-direct {p0, v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->tryHideProgress(Z)V

    .line 4819
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextPressed:Z

    if-nez p1, :cond_1

    .line 4821
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 4825
    :cond_0
    new-instance p2, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda23;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Landroid/app/Activity;)V

    invoke-direct {p0, p2}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->animateSuccess(Ljava/lang/Runnable;)V

    return-void

    .line 4832
    :cond_1
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    iput-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lastError:Ljava/lang/String;

    .line 4833
    iget v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    const/16 v2, 0x10

    const/16 v3, 0x11

    const/4 v4, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x3

    if-ne v1, v6, :cond_2

    iget v7, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextType:I

    if-eq v7, v4, :cond_4

    if-eq v7, v5, :cond_4

    if-eq v7, v3, :cond_4

    if-eq v7, v2, :cond_4

    :cond_2
    if-ne v1, v5, :cond_3

    iget v7, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextType:I

    if-eq v7, v4, :cond_4

    if-eq v7, v6, :cond_4

    :cond_3
    if-ne v1, v4, :cond_5

    iget v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextType:I

    if-eq v1, v5, :cond_4

    if-eq v1, v3, :cond_4

    if-ne v1, v2, :cond_5

    .line 4835
    :cond_4
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->createTimer()V

    .line 4837
    :cond_5
    iget v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    const/16 v2, 0xf

    const/4 v3, 0x1

    if-ne v1, v2, :cond_6

    .line 4838
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->didReceiveSmsCode:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    goto :goto_0

    :cond_6
    if-ne v1, v5, :cond_7

    .line 4840
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->setWaitingForSms(Z)V

    .line 4841
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->didReceiveSmsCode:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    goto :goto_0

    :cond_7
    if-ne v1, v6, :cond_8

    .line 4843
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->setWaitingForCall(Z)V

    .line 4844
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->didReceiveCall:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 4846
    :cond_8
    :goto_0
    iput-boolean v3, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->waitingForEvent:Z

    .line 4847
    iget v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    if-eq v1, v6, :cond_9

    .line 4848
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v1}, Lorg/telegram/ui/LoginActivity;->access$1300(Lorg/telegram/ui/LoginActivity;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v1, p1, v2, p2, v4}, Lorg/telegram/ui/Components/AlertsCreator;->processError(ILorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLObject;[Ljava/lang/Object;)Landroid/app/Dialog;

    .line 4850
    :cond_9
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v1, "PHONE_CODE_EMPTY"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_c

    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v1, "PHONE_CODE_INVALID"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_a

    goto :goto_2

    .line 4852
    :cond_a
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string p2, "PHONE_CODE_EXPIRED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 4853
    invoke-virtual {p0, v3}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->onBackPressed(Z)Z

    .line 4854
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    const/4 p2, 0x0

    invoke-virtual {p1, v0, v3, p2, v3}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    :cond_b
    :goto_1
    return-void

    .line 4851
    :cond_c
    :goto_2
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->shakeWrongCode()V

    return-void
.end method

.method private synthetic lambda$onNextPressed$29(Lorg/telegram/tgnet/tl/TL_account$confirmPhone;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 4817
    new-instance p2, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda13;

    invoke-direct {p2, p0, p3, p1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/tl/TL_account$confirmPhone;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onNextPressed$30(Landroid/os/Bundle;)V
    .locals 4

    .line 4895
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x5

    invoke-virtual {v0, v3, v1, p1, v2}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    return-void
.end method

.method private synthetic lambda$onNextPressed$31(Lorg/telegram/tgnet/TLObject;)V
    .locals 1

    .line 4897
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;

    invoke-static {v0, p1}, Lorg/telegram/ui/LoginActivity;->-$$Nest$monAuthSuccess(Lorg/telegram/ui/LoginActivity;Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;)V

    return-void
.end method

.method private synthetic lambda$onNextPressed$32(Landroid/os/Bundle;)V
    .locals 4

    .line 4921
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x6

    invoke-virtual {v0, v3, v1, p1, v2}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    return-void
.end method

.method private synthetic lambda$onNextPressed$33(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;)V
    .locals 3

    const/4 v0, 0x0

    .line 4905
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextPressed:Z

    .line 4906
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lorg/telegram/ui/LoginActivity;->-$$Nest$mshowDoneButton(Lorg/telegram/ui/LoginActivity;ZZ)V

    if-nez p1, :cond_1

    .line 4908
    check-cast p2, Lorg/telegram/tgnet/tl/TL_account$Password;

    .line 4909
    invoke-static {p2, v2}, Lorg/telegram/ui/TwoStepVerificationActivity;->canHandleCurrentPassword(Lorg/telegram/tgnet/tl/TL_account$Password;Z)Z

    move-result p1

    if-nez p1, :cond_0

    .line 4910
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    const-string p2, "UpdateAppAlert"

    sget p3, Lorg/telegram/messenger/R$string;->UpdateAppAlert:I

    invoke-static {p2, p3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v2}, Lorg/telegram/ui/Components/AlertsCreator;->showUpdateAppAlert(Landroid/content/Context;Ljava/lang/String;Z)Lorg/telegram/ui/ActionBar/AlertDialog;

    return-void

    .line 4913
    :cond_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 4914
    new-instance v0, Lorg/telegram/tgnet/SerializedData;

    invoke-virtual {p2}, Lorg/telegram/tgnet/TLObject;->getObjectSize()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/telegram/tgnet/SerializedData;-><init>(I)V

    .line 4915
    invoke-virtual {p2, v0}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 4916
    invoke-virtual {v0}, Lorg/telegram/tgnet/SerializedData;->toByteArray()[B

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object p2

    const-string v0, "password"

    invoke-virtual {p1, v0, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4917
    const-string p2, "phoneFormated"

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->requestPhone:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4918
    const-string p2, "phoneHash"

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->phoneHash:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4919
    const-string p2, "code"

    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;->phone_code:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4921
    new-instance p2, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda42;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda42;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Landroid/os/Bundle;)V

    invoke-direct {p0, p2}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->animateSuccess(Ljava/lang/Runnable;)V

    return-void

    .line 4923
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    sget p3, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p3

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-static {p2, p3, p1}, Lorg/telegram/ui/LoginActivity;->-$$Nest$mneedShowAlert(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onNextPressed$34(Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 4904
    new-instance v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda35;

    invoke-direct {v0, p0, p3, p2, p1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda35;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onNextPressed$36(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 4875
    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->tryHideProgress(ZZ)V

    const/4 v2, 0x3

    if-nez p1, :cond_2

    .line 4880
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextPressed:Z

    .line 4882
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1, v0, v1}, Lorg/telegram/ui/LoginActivity;->-$$Nest$mshowDoneButton(Lorg/telegram/ui/LoginActivity;ZZ)V

    .line 4883
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->destroyTimer()V

    .line 4884
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->destroyCodeTimer()V

    .line 4885
    instance-of p1, p2, Lorg/telegram/tgnet/TLRPC$TL_auth_authorizationSignUpRequired;

    if-eqz p1, :cond_1

    .line 4886
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_auth_authorizationSignUpRequired;

    .line 4887
    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_auth_authorizationSignUpRequired;->terms_of_service:Lorg/telegram/tgnet/TLRPC$TL_help_termsOfService;

    if-eqz p1, :cond_0

    .line 4888
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p2, p1}, Lorg/telegram/ui/LoginActivity;->-$$Nest$fputcurrentTermsOfService(Lorg/telegram/ui/LoginActivity;Lorg/telegram/tgnet/TLRPC$TL_help_termsOfService;)V

    .line 4890
    :cond_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 4891
    const-string p2, "phoneFormated"

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->requestPhone:Ljava/lang/String;

    invoke-virtual {p1, p2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4892
    const-string p2, "phoneHash"

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->phoneHash:Ljava/lang/String;

    invoke-virtual {p1, p2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4893
    const-string p2, "code"

    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;->phone_code:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4895
    new-instance p2, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda27;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda27;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Landroid/os/Bundle;)V

    invoke-direct {p0, p2}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->animateSuccess(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 4897
    :cond_1
    new-instance p1, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda28;

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda28;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Lorg/telegram/tgnet/TLObject;)V

    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->animateSuccess(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 4900
    :cond_2
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    iput-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lastError:Ljava/lang/String;

    .line 4901
    const-string v3, "SESSION_PASSWORD_NEEDED"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 4903
    new-instance p1, Lorg/telegram/tgnet/tl/TL_account$getPassword;

    invoke-direct {p1}, Lorg/telegram/tgnet/tl/TL_account$getPassword;-><init>()V

    .line 4904
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p2}, Lorg/telegram/ui/LoginActivity;->access$1200(Lorg/telegram/ui/LoginActivity;)I

    move-result p2

    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    new-instance v1, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda29;

    invoke-direct {v1, p0, p3}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda29;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;)V

    const/16 p3, 0xa

    invoke-virtual {p2, p1, v1, p3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    .line 4926
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->destroyTimer()V

    .line 4927
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->destroyCodeTimer()V

    .line 4976
    :goto_0
    iget p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    if-ne p1, v2, :cond_11

    .line 4977
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->endIncomingCall()V

    .line 4978
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->setWaitingForCall(Z)V

    return-void

    .line 4929
    :cond_3
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextPressed:Z

    .line 4930
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p2, v0, v1}, Lorg/telegram/ui/LoginActivity;->-$$Nest$mshowDoneButton(Lorg/telegram/ui/LoginActivity;ZZ)V

    .line 4931
    iget p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    const/16 p3, 0x10

    const/16 v3, 0x11

    const/4 v4, 0x4

    const/4 v5, 0x2

    if-ne p2, v2, :cond_4

    iget v6, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextType:I

    if-eq v6, v4, :cond_6

    if-eq v6, v5, :cond_6

    if-eq v6, v3, :cond_6

    if-eq v6, p3, :cond_6

    :cond_4
    if-ne p2, v5, :cond_5

    iget v6, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextType:I

    if-eq v6, v4, :cond_6

    if-eq v6, v2, :cond_6

    :cond_5
    if-ne p2, v4, :cond_7

    iget p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextType:I

    if-eq p2, v5, :cond_6

    if-eq p2, v3, :cond_6

    if-ne p2, p3, :cond_7

    .line 4932
    :cond_6
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->createTimer()V

    .line 4934
    :cond_7
    iget p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    const/16 p3, 0xf

    if-ne p2, p3, :cond_8

    .line 4935
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/NotificationCenter;->didReceiveSmsCode:I

    invoke-virtual {p2, p0, p3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    goto :goto_1

    :cond_8
    if-ne p2, v5, :cond_9

    .line 4937
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->setWaitingForSms(Z)V

    .line 4938
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/NotificationCenter;->didReceiveSmsCode:I

    invoke-virtual {p2, p0, p3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    goto :goto_1

    :cond_9
    if-ne p2, v2, :cond_a

    .line 4940
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->setWaitingForCall(Z)V

    .line 4941
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/NotificationCenter;->didReceiveCall:I

    invoke-virtual {p2, p0, p3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 4942
    new-instance p2, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda30;

    invoke-direct {p2}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda30;-><init>()V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 4946
    :cond_a
    :goto_1
    iput-boolean v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->waitingForEvent:Z

    .line 4947
    iget p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    if-eq p2, v2, :cond_11

    .line 4949
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string p3, "PHONE_NUMBER_INVALID"

    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 4950
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    sget p2, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "InvalidPhoneNumber"

    sget v1, Lorg/telegram/messenger/R$string;->InvalidPhoneNumber:I

    invoke-static {p3, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lorg/telegram/ui/LoginActivity;->-$$Nest$mneedShowAlert(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 4951
    :cond_b
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string p3, "PHONE_CODE_EMPTY"

    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_10

    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string p3, "PHONE_CODE_INVALID"

    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_c

    goto/16 :goto_4

    .line 4954
    :cond_c
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string p3, "PHONE_CODE_EXPIRED"

    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_d

    .line 4955
    invoke-virtual {p0, v1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->onBackPressed(Z)Z

    .line 4956
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    const/4 p2, 0x0

    invoke-virtual {p1, v0, v1, p2, v1}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    .line 4957
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    sget p2, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "CodeExpired"

    sget v1, Lorg/telegram/messenger/R$string;->CodeExpired:I

    invoke-static {p3, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lorg/telegram/ui/LoginActivity;->-$$Nest$mneedShowAlert(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 4958
    :cond_d
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string p3, "FLOOD_WAIT"

    invoke-virtual {p2, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_e

    .line 4959
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    sget p2, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "FloodWait"

    sget v1, Lorg/telegram/messenger/R$string;->FloodWait:I

    invoke-static {p3, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lorg/telegram/ui/LoginActivity;->-$$Nest$mneedShowAlert(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 4961
    :cond_e
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    sget p3, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ErrorOccurred"

    sget v3, Lorg/telegram/messenger/R$string;->ErrorOccurred:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p3, p1}, Lorg/telegram/ui/LoginActivity;->-$$Nest$mneedShowAlert(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    move p1, v0

    .line 4965
    :goto_3
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object p3, p2, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    array-length v1, p3

    if-ge p1, v1, :cond_f

    .line 4966
    aget-object p2, p3, p1

    const-string p3, ""

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 4969
    :cond_f
    iput-boolean v0, p2, Lorg/telegram/ui/CodeFieldContainer;->isFocusSuppressed:Z

    .line 4970
    aget-object p1, p3, v0

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return-void

    .line 4952
    :cond_10
    :goto_4
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->shakeWrongCode()V

    :cond_11
    return-void
.end method

.method private synthetic lambda$onNextPressed$37(Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 4874
    new-instance v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0, p3, p2, p1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onShow$44()V
    .locals 3

    .line 5114
    iget v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v0, v0, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    if-eqz v0, :cond_2

    .line 5115
    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    if-eqz v0, :cond_1

    .line 5116
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v1, v1, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 5117
    :cond_1
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v1, v1, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 5118
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v1, v1, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    .line 5119
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v2, v2, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    aget-object v0, v2, v0

    invoke-static {v1, v0}, Lorg/telegram/ui/LoginActivity;->-$$Nest$mshowKeyboard(Lorg/telegram/ui/LoginActivity;Landroid/view/View;)Z

    .line 5124
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->hintDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz v0, :cond_3

    .line 5125
    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->start()V

    .line 5127
    :cond_3
    iget v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_4

    .line 5128
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->openFragmentImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieImageView;->getAnimatedDrawable()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZ)V

    .line 5129
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->openFragmentImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieImageView;->getAnimatedDrawable()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->start()V

    :cond_4
    return-void
.end method

.method private synthetic lambda$resendCode$10(Lorg/telegram/tgnet/TLRPC$TL_error;Landroid/os/Bundle;Lorg/telegram/tgnet/TLObject;)V
    .locals 3

    const/4 v0, 0x0

    .line 4171
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextPressed:Z

    if-nez p1, :cond_2

    .line 4173
    iput-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextCodeParams:Landroid/os/Bundle;

    .line 4174
    check-cast p3, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;

    iput-object p3, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextCodeAuth:Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;

    .line 4175
    iget-object p1, p3, Lorg/telegram/tgnet/TLRPC$auth_SentCode;->type:Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;

    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCodeTypeSmsPhrase;

    if-eqz v1, :cond_0

    const/16 p1, 0x11

    .line 4176
    iput p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextType:I

    goto :goto_0

    .line 4177
    :cond_0
    instance-of p1, p1, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCodeTypeSmsWord;

    if-eqz p1, :cond_1

    const/16 p1, 0x10

    .line 4178
    iput p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextType:I

    .line 4180
    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1, p2, p3}, Lorg/telegram/ui/LoginActivity;->-$$Nest$mfillNextCodeParams(Lorg/telegram/ui/LoginActivity;Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$auth_SentCode;)V

    goto/16 :goto_2

    .line 4182
    :cond_2
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    if-eqz p2, :cond_8

    .line 4183
    const-string p3, "PHONE_NUMBER_INVALID"

    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 4184
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    sget p2, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/R$string;->InvalidPhoneNumber:I

    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lorg/telegram/ui/LoginActivity;->-$$Nest$mneedShowAlert(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 4185
    :cond_3
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string p3, "PHONE_CODE_EMPTY"

    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_7

    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string p3, "PHONE_CODE_INVALID"

    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_1

    .line 4187
    :cond_4
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string p3, "PHONE_CODE_EXPIRED"

    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_5

    const/4 p1, 0x1

    .line 4188
    invoke-virtual {p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->onBackPressed(Z)Z

    .line 4189
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    const/4 p3, 0x0

    invoke-virtual {p2, v0, p1, p3, p1}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    .line 4190
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    sget p2, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/R$string;->CodeExpired:I

    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lorg/telegram/ui/LoginActivity;->-$$Nest$mneedShowAlert(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 4191
    :cond_5
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string p3, "FLOOD_WAIT"

    invoke-virtual {p2, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 4192
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    sget p2, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/R$string;->FloodWait:I

    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lorg/telegram/ui/LoginActivity;->-$$Nest$mneedShowAlert(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 4193
    :cond_6
    iget p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->code:I

    const/16 p3, -0x3e8

    if-eq p2, p3, :cond_8

    .line 4194
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

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

    goto :goto_2

    .line 4186
    :cond_7
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    sget p2, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/R$string;->InvalidCode:I

    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lorg/telegram/ui/LoginActivity;->-$$Nest$mneedShowAlert(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 4198
    :cond_8
    :goto_2
    invoke-direct {p0, v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->tryHideProgress(Z)V

    return-void
.end method

.method private synthetic lambda$resendCode$11(Landroid/os/Bundle;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 4170
    new-instance v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda34;

    invoke-direct {v0, p0, p3, p1, p2}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda34;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Lorg/telegram/tgnet/TLRPC$TL_error;Landroid/os/Bundle;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$setParams$21(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 4366
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p2}, Lorg/telegram/ui/LoginActivity;->-$$Nest$fgetkeyboardView(Lorg/telegram/ui/LoginActivity;)Lorg/telegram/ui/Components/CustomPhoneKeyboardView;

    move-result-object p2

    check-cast p1, Landroid/widget/EditText;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/CustomPhoneKeyboardView;->setEditText(Landroid/widget/EditText;)V

    .line 4367
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity;->-$$Nest$fgetkeyboardView(Lorg/telegram/ui/LoginActivity;)Lorg/telegram/ui/Components/CustomPhoneKeyboardView;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/CustomPhoneKeyboardView;->setDispatchBackWhenEmpty(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$shakeWrongCode$40()V
    .locals 3

    .line 5022
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/telegram/ui/CodeFieldContainer;->isFocusSuppressed:Z

    .line 5023
    iget-object v0, v0, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 5025
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v0, v0, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 5026
    aget-object v0, v0, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/CodeNumberField;->animateErrorProgress(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic lambda$shakeWrongCode$41()V
    .locals 3

    .line 5021
    new-instance v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda43;

    invoke-direct {v0, p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda43;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V

    const-wide/16 v1, 0x96

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private synthetic lambda$tryHideProgress$16()V
    .locals 2

    .line 4259
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->blueImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RLottieImageView;->setAutoRepeat(Z)V

    .line 4260
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->blueImageView:Lorg/telegram/ui/Components/RLottieImageView;

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->hintDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(Lorg/telegram/ui/Components/RLottieDrawable;)V

    return-void
.end method

.method private synthetic lambda$tryHideProgress$17()V
    .locals 1

    .line 4258
    new-instance v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda44;

    invoke-direct {v0, p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda44;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$tryHideProgress$18()V
    .locals 2

    .line 4258
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->dotsToStarsDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    new-instance v1, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda41;

    invoke-direct {v1, p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda41;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setOnAnimationEndListener(Ljava/lang/Runnable;)V

    .line 4263
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->blueImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RLottieImageView;->setAutoRepeat(Z)V

    .line 4264
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->dotsToStarsDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0, v1, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZ)V

    .line 4265
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->blueImageView:Lorg/telegram/ui/Components/RLottieImageView;

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->dotsToStarsDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(Lorg/telegram/ui/Components/RLottieDrawable;)V

    .line 4266
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->blueImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    return-void
.end method

.method private synthetic lambda$tryHideProgress$19()V
    .locals 1

    .line 4257
    new-instance v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda32;

    invoke-direct {v0, p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda32;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$tryShowProgress$12(IZ)V
    .locals 0

    .line 4225
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->tryShowProgress(IZ)V

    return-void
.end method

.method private synthetic lambda$tryShowProgress$13(IZ)V
    .locals 1

    .line 4225
    new-instance v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda33;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda33;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;IZ)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$tryShowProgress$14()V
    .locals 3

    .line 4230
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->blueImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RLottieImageView;->setAutoRepeat(Z)V

    .line 4231
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->dotsDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZ)V

    .line 4232
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->dotsDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setAutoRepeat(I)V

    .line 4233
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->blueImageView:Lorg/telegram/ui/Components/RLottieImageView;

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->dotsDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(Lorg/telegram/ui/Components/RLottieDrawable;)V

    .line 4234
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->blueImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    return-void
.end method

.method private synthetic lambda$tryShowProgress$15()V
    .locals 1

    .line 4229
    new-instance v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda22;

    invoke-direct {v0, p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private resendCode()V
    .locals 4

    .line 4151
    iget-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextPressed:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->isResendingCode:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->-$$Nest$fgetisRequestingFirebaseSms(Lorg/telegram/ui/LoginActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 4155
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->isResendingCode:Z

    .line 4156
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeText:Lorg/telegram/ui/LoginActivity$LoadingTextView;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 4157
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemText:Lorg/telegram/ui/LoginActivity$LoadingTextView;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 4159
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 4160
    const-string v2, "phone"

    iget-object v3, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->phone:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4161
    const-string v2, "ephone"

    iget-object v3, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->emailPhone:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4162
    const-string v2, "phoneFormated"

    iget-object v3, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->requestPhone:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4163
    const-string v2, "prevType"

    iget v3, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 4165
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextPressed:Z

    .line 4167
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;-><init>()V

    .line 4168
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->requestPhone:Ljava/lang/String;

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;->phone_number:Ljava/lang/String;

    .line 4169
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->phoneHash:Ljava/lang/String;

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;->phone_code_hash:Ljava/lang/String;

    .line 4170
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v2}, Lorg/telegram/ui/LoginActivity;->access$700(Lorg/telegram/ui/LoginActivity;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda31;

    invoke-direct {v3, p0, v1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda31;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Landroid/os/Bundle;)V

    const/16 v1, 0xa

    invoke-virtual {v2, v0, v3, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    move-result v0

    .line 4200
    invoke-direct {p0, v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->tryShowProgress(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setProblemTextVisible(Z)V
    .locals 2

    .line 4554
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemText:Lorg/telegram/ui/LoginActivity$LoadingTextView;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 4558
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_2

    .line 4559
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemText:Lorg/telegram/ui/LoginActivity$LoadingTextView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 4560
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemText:Lorg/telegram/ui/LoginActivity$LoadingTextView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x96

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_2
    :goto_1
    return-void
.end method

.method private shakeWrongCode()V
    .locals 4

    .line 5009
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    const/4 v1, 0x3

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    move v1, v0

    .line 5012
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v2, v2, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 5013
    aget-object v2, v2, v1

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5014
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v2, v2, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    aget-object v2, v2, v1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Lorg/telegram/ui/CodeNumberField;->animateErrorProgress(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5016
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->errorViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->wrongCode:Landroid/widget/TextView;

    if-eq v1, v2, :cond_1

    .line 5017
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->errorViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewAnimator;->showNext()V

    .line 5019
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v1, v1, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    aget-object v0, v1, v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 5020
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    const/16 v2, 0xb

    if-ne v1, v2, :cond_2

    const/high16 v1, 0x40600000    # 3.5f

    goto :goto_1

    :cond_2
    const/high16 v1, 0x41200000    # 10.0f

    :goto_1
    new-instance v2, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda36;

    invoke-direct {v2, p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda36;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->shakeViewSpring(Landroid/view/View;FLjava/lang/Runnable;)V

    .line 5030
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->errorColorTimeout:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5031
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->errorColorTimeout:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    .line 5032
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->postedErrorColorTimeout:Z

    return-void
.end method

.method private tryHideProgress(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 4246
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->tryHideProgress(ZZ)V

    return-void
.end method

.method private tryHideProgress(ZZ)V
    .locals 1

    .line 4250
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->starsToDotsDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz v0, :cond_1

    .line 4251
    iget-boolean p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->isDotsAnimationVisible:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 4254
    iput-boolean p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->isDotsAnimationVisible:Z

    .line 4255
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->blueImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/RLottieImageView;->setAutoRepeat(Z)V

    .line 4256
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->dotsDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/RLottieDrawable;->setAutoRepeat(I)V

    .line 4257
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->dotsDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    new-instance p2, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda14;

    invoke-direct {p2, p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->dotsDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    .line 4267
    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->getFramesCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 4257
    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setOnFinishCallback(Ljava/lang/Runnable;I)V

    return-void

    .line 4270
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0, p1, p2}, Lorg/telegram/ui/LoginActivity;->-$$Nest$mneedHideProgress(Lorg/telegram/ui/LoginActivity;ZZ)V

    return-void
.end method

.method private tryShowProgress(I)V
    .locals 1

    const/4 v0, 0x1

    .line 4215
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->tryShowProgress(IZ)V

    return-void
.end method

.method private tryShowProgress(IZ)V
    .locals 3

    .line 4219
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->starsToDotsDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz v0, :cond_2

    .line 4220
    iget-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->isDotsAnimationVisible:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 4223
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->isDotsAnimationVisible:Z

    .line 4224
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->hintDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RLottieDrawable;->getCurrentFrame()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->hintDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RLottieDrawable;->getFramesCount()I

    move-result v2

    sub-int/2addr v2, v0

    if-eq v1, v2, :cond_1

    .line 4225
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->hintDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    new-instance v1, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda20;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;IZ)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setOnAnimationEndListener(Ljava/lang/Runnable;)V

    return-void

    .line 4229
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->starsToDotsDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    new-instance p2, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda21;

    invoke-direct {p2, p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RLottieDrawable;->setOnAnimationEndListener(Ljava/lang/Runnable;)V

    .line 4236
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->blueImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RLottieImageView;->setAutoRepeat(Z)V

    .line 4237
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->starsToDotsDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p1, p2, p2}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZ)V

    .line 4238
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->blueImageView:Lorg/telegram/ui/Components/RLottieImageView;

    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->starsToDotsDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(Lorg/telegram/ui/Components/RLottieDrawable;)V

    .line 4239
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->blueImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    return-void

    .line 4242
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0, p1, p2}, Lorg/telegram/ui/LoginActivity;->-$$Nest$mneedShowProgress(Lorg/telegram/ui/LoginActivity;IZ)V

    return-void
.end method


# virtual methods
.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 3

    .line 5136
    iget-boolean p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->waitingForEvent:Z

    if-eqz p2, :cond_4

    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v0, p2, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    if-nez v0, :cond_0

    goto :goto_0

    .line 5139
    :cond_0
    sget v0, Lorg/telegram/messenger/NotificationCenter;->didReceiveSmsCode:I

    const/4 v1, 0x0

    const-string v2, ""

    if-ne p1, v0, :cond_1

    .line 5140
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p3, p3, v1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/telegram/ui/CodeFieldContainer;->setText(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 5141
    invoke-virtual {p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->onNextPressed(Ljava/lang/String;)V

    return-void

    .line 5142
    :cond_1
    sget p2, Lorg/telegram/messenger/NotificationCenter;->didReceiveCall:I

    if-ne p1, p2, :cond_4

    .line 5143
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p2, p3, v1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5144
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->pattern:Ljava/lang/String;

    invoke-static {p2, p1}, Lorg/telegram/messenger/AndroidUtilities;->checkPhonePattern(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    .line 5147
    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->pattern:Ljava/lang/String;

    const-string p3, "*"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 5148
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->catchedPhone:Ljava/lang/String;

    .line 5149
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->endIncomingCall()V

    .line 5151
    :cond_3
    invoke-virtual {p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->onNextPressed(Ljava/lang/String;)V

    .line 5152
    invoke-static {}, Lorg/telegram/messenger/CallReceiver;->clearLastCall()V

    :cond_4
    :goto_0
    return-void
.end method

.method public getHeaderName()Ljava/lang/String;
    .locals 2

    .line 4275
    iget v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 4278
    :cond_0
    const-string v0, "YourCode"

    sget v1, Lorg/telegram/messenger/R$string;->YourCode:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4276
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->phone:Ljava/lang/String;

    return-object v0
.end method

.method public hasCustomKeyboard()Z
    .locals 2

    .line 4142
    iget v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public needBackButton()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onBackPressed(Z)Z
    .locals 6

    .line 5043
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->-$$Nest$fgetactivityMode(Lorg/telegram/ui/LoginActivity;)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 5044
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return v1

    .line 5048
    :cond_0
    iget v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->prevType:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 5049
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {p1, v0, v3, v2, v3}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    return v1

    :cond_1
    if-nez p1, :cond_2

    .line 5054
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v4, Lorg/telegram/messenger/R$string;->EditNumber:I

    .line 5055
    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    sget v4, Lorg/telegram/messenger/R$string;->EditNumberInfo:I

    iget-object v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->phone:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v5, v3, v1

    .line 5056
    const-string v5, "EditNumberInfo"

    invoke-static {v5, v4, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/R$string;->Close:I

    .line 5057
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/R$string;->Edit:I

    .line 5058
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda11;

    invoke-direct {v3, p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    .line 5062
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    .line 5054
    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return v1

    .line 5065
    :cond_2
    iput-boolean v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextPressed:Z

    .line 5066
    invoke-direct {p0, v3}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->tryHideProgress(Z)V

    .line 5067
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_auth_cancelCode;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_auth_cancelCode;-><init>()V

    .line 5068
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->requestPhone:Ljava/lang/String;

    iput-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_auth_cancelCode;->phone_number:Ljava/lang/String;

    .line 5069
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->phoneHash:Ljava/lang/String;

    iput-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_auth_cancelCode;->phone_code_hash:Ljava/lang/String;

    .line 5070
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->access$1100(Lorg/telegram/ui/LoginActivity;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v4, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda12;

    invoke-direct {v4}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda12;-><init>()V

    const/16 v5, 0xa

    invoke-virtual {v0, p1, v4, v5}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    .line 5074
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->destroyTimer()V

    .line 5075
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->destroyCodeTimer()V

    .line 5076
    iput-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentParams:Landroid/os/Bundle;

    .line 5077
    iget p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    const/16 v0, 0xf

    if-ne p1, v0, :cond_3

    .line 5078
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->didReceiveSmsCode:I

    invoke-virtual {p1, p0, v0}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    .line 5080
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->setWaitingForSms(Z)V

    .line 5081
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->didReceiveSmsCode:I

    invoke-virtual {p1, p0, v0}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x3

    if-ne p1, v0, :cond_5

    .line 5083
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->setWaitingForCall(Z)V

    .line 5084
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->didReceiveCall:I

    invoke-virtual {p1, p0, v0}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 5086
    :cond_5
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->waitingForEvent:Z

    return v3
.end method

.method public onCancelPressed()V
    .locals 1

    const/4 v0, 0x0

    .line 4147
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextPressed:Z

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5

    .line 4205
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 4207
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    if-eqz p1, :cond_2

    .line 4208
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    .line 4209
    invoke-virtual {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->hasCustomKeyboard()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v4}, Lorg/telegram/ui/LoginActivity;->-$$Nest$misCustomKeyboardForceDisabled(Lorg/telegram/ui/LoginActivity;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    move v4, v1

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v4, 0x1

    :goto_2
    invoke-virtual {v3, v4}, Lorg/telegram/ui/CodeNumberField;->setShowSoftInputOnFocusCompat(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onDestroyActivity()V
    .locals 3

    .line 5092
    invoke-super {p0}, Lorg/telegram/ui/Components/SlideView;->onDestroyActivity()V

    .line 5093
    iget v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    const/16 v1, 0xf

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 5094
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didReceiveSmsCode:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 5096
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->setWaitingForSms(Z)V

    .line 5097
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didReceiveSmsCode:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 5099
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->setWaitingForCall(Z)V

    .line 5100
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didReceiveCall:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 5102
    :cond_2
    :goto_0
    iput-boolean v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->waitingForEvent:Z

    .line 5103
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->destroyTimer()V

    .line 5104
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->destroyCodeTimer()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 5037
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 5038
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->errorColorTimeout:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onHide()V
    .locals 3

    .line 5158
    invoke-super {p0}, Lorg/telegram/ui/Components/SlideView;->onHide()V

    const/4 v0, 0x0

    .line 5159
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->isResendingCode:Z

    .line 5160
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextPressed:Z

    .line 5161
    iget v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->prevType:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentParams:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 5162
    const-string v1, "timeout"

    iget v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->time:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onNextPressed(Ljava/lang/String;)V
    .locals 7

    .line 4679
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->-$$Nest$fgetcurrentViewNum(Lorg/telegram/ui/LoginActivity;)I

    move-result v0

    const/16 v1, 0xb

    const/16 v2, 0xf

    const/4 v3, 0x4

    const/4 v4, 0x1

    if-ne v0, v1, :cond_0

    .line 4680
    iget-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextPressed:Z

    if-eqz v0, :cond_2

    goto/16 :goto_4

    .line 4684
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextPressed:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->-$$Nest$fgetcurrentViewNum(Lorg/telegram/ui/LoginActivity;)I

    move-result v0

    if-lt v0, v4, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->-$$Nest$fgetcurrentViewNum(Lorg/telegram/ui/LoginActivity;)I

    move-result v0

    if-le v0, v3, :cond_2

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->-$$Nest$fgetcurrentViewNum(Lorg/telegram/ui/LoginActivity;)I

    move-result v0

    if-eq v0, v2, :cond_2

    goto/16 :goto_4

    :cond_2
    if-nez p1, :cond_3

    .line 4690
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    invoke-virtual {p1}, Lorg/telegram/ui/CodeFieldContainer;->getCode()Ljava/lang/String;

    move-result-object p1

    .line 4692
    :cond_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 4693
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    invoke-static {p1, v0, v1}, Lorg/telegram/ui/LoginActivity;->-$$Nest$monFieldError(Lorg/telegram/ui/LoginActivity;Landroid/view/View;Z)V

    return-void

    .line 4697
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->-$$Nest$fgetcurrentViewNum(Lorg/telegram/ui/LoginActivity;)I

    move-result v0

    if-lt v0, v4, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->-$$Nest$fgetcurrentViewNum(Lorg/telegram/ui/LoginActivity;)I

    move-result v0

    if-gt v0, v3, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-boolean v0, v0, Lorg/telegram/ui/CodeFieldContainer;->isFocusSuppressed:Z

    if-eqz v0, :cond_5

    goto/16 :goto_4

    .line 4701
    :cond_5
    iput-boolean v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextPressed:Z

    .line 4702
    iget v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    const/4 v3, 0x2

    if-ne v0, v2, :cond_6

    .line 4703
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->didReceiveSmsCode:I

    invoke-virtual {v0, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    goto :goto_0

    :cond_6
    if-ne v0, v3, :cond_7

    .line 4705
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->setWaitingForSms(Z)V

    .line 4706
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->didReceiveSmsCode:I

    invoke-virtual {v0, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    goto :goto_0

    :cond_7
    const/4 v2, 0x3

    if-ne v0, v2, :cond_8

    .line 4708
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->didReceiveCall:I

    invoke-virtual {v0, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 4710
    :cond_8
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->waitingForEvent:Z

    .line 4712
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->-$$Nest$fgetactivityMode(Lorg/telegram/ui/LoginActivity;)I

    move-result v0

    const/4 v2, 0x0

    if-eq v0, v4, :cond_c

    if-eq v0, v3, :cond_a

    .line 4862
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;-><init>()V

    .line 4863
    iget-object v3, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->requestPhone:Ljava/lang/String;

    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;->phone_number:Ljava/lang/String;

    .line 4864
    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;->phone_code:Ljava/lang/String;

    .line 4865
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->phoneHash:Ljava/lang/String;

    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;->phone_code_hash:Ljava/lang/String;

    .line 4866
    iget p1, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;->flags:I

    or-int/2addr p1, v4

    iput p1, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;->flags:I

    .line 4867
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->destroyTimer()V

    .line 4869
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iput-boolean v4, p1, Lorg/telegram/ui/CodeFieldContainer;->isFocusSuppressed:Z

    .line 4870
    iget-object p1, p1, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    array-length v3, p1

    :goto_1
    if-ge v1, v3, :cond_9

    aget-object v5, p1, v1

    .line 4871
    invoke-virtual {v5, v2}, Lorg/telegram/ui/CodeNumberField;->animateFocusedProgress(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4874
    :cond_9
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity;->access$1000(Lorg/telegram/ui/LoginActivity;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance v1, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;)V

    const/16 v2, 0xa

    invoke-virtual {p1, v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    move-result p1

    .line 4982
    invoke-direct {p0, p1, v4}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->tryShowProgress(IZ)V

    .line 4983
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1, v4, v4}, Lorg/telegram/ui/LoginActivity;->-$$Nest$mshowDoneButton(Lorg/telegram/ui/LoginActivity;ZZ)V

    return-void

    .line 4714
    :cond_a
    new-instance v0, Lorg/telegram/tgnet/tl/TL_account$changePhone;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_account$changePhone;-><init>()V

    .line 4715
    iget-object v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->requestPhone:Ljava/lang/String;

    iput-object v5, v0, Lorg/telegram/tgnet/tl/TL_account$changePhone;->phone_number:Ljava/lang/String;

    .line 4716
    iput-object p1, v0, Lorg/telegram/tgnet/tl/TL_account$changePhone;->phone_code:Ljava/lang/String;

    .line 4717
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->phoneHash:Ljava/lang/String;

    iput-object p1, v0, Lorg/telegram/tgnet/tl/TL_account$changePhone;->phone_code_hash:Ljava/lang/String;

    .line 4718
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->destroyTimer()V

    .line 4720
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iput-boolean v4, p1, Lorg/telegram/ui/CodeFieldContainer;->isFocusSuppressed:Z

    .line 4721
    iget-object p1, p1, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    array-length v5, p1

    :goto_2
    if-ge v1, v5, :cond_b

    aget-object v6, p1, v1

    .line 4722
    invoke-virtual {v6, v2}, Lorg/telegram/ui/CodeNumberField;->animateFocusedProgress(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 4725
    :cond_b
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity;->access$800(Lorg/telegram/ui/LoginActivity;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance v1, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V

    invoke-virtual {p1, v0, v1, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    move-result p1

    .line 4801
    invoke-direct {p0, p1, v4}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->tryShowProgress(IZ)V

    .line 4802
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1, v4, v4}, Lorg/telegram/ui/LoginActivity;->-$$Nest$mshowDoneButton(Lorg/telegram/ui/LoginActivity;ZZ)V

    return-void

    .line 4806
    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->-$$Nest$fgetcancelDeletionPhone(Lorg/telegram/ui/LoginActivity;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->requestPhone:Ljava/lang/String;

    .line 4807
    new-instance v0, Lorg/telegram/tgnet/tl/TL_account$confirmPhone;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_account$confirmPhone;-><init>()V

    .line 4808
    iput-object p1, v0, Lorg/telegram/tgnet/tl/TL_account$confirmPhone;->phone_code:Ljava/lang/String;

    .line 4809
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->phoneHash:Ljava/lang/String;

    iput-object p1, v0, Lorg/telegram/tgnet/tl/TL_account$confirmPhone;->phone_code_hash:Ljava/lang/String;

    .line 4810
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->destroyTimer()V

    .line 4812
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iput-boolean v4, p1, Lorg/telegram/ui/CodeFieldContainer;->isFocusSuppressed:Z

    .line 4813
    iget-object p1, p1, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    array-length v4, p1

    :goto_3
    if-ge v1, v4, :cond_d

    aget-object v5, p1, v1

    .line 4814
    invoke-virtual {v5, v2}, Lorg/telegram/ui/CodeNumberField;->animateFocusedProgress(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 4817
    :cond_d
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity;->access$900(Lorg/telegram/ui/LoginActivity;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance v1, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Lorg/telegram/tgnet/tl/TL_account$confirmPhone;)V

    invoke-virtual {p1, v0, v1, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    move-result p1

    .line 4858
    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->tryShowProgress(I)V

    :cond_e
    :goto_4
    return-void
.end method

.method public onShow()V
    .locals 3

    .line 5109
    invoke-super {p0}, Lorg/telegram/ui/Components/SlideView;->onShow()V

    .line 5110
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->hintDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 5111
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(I)V

    .line 5113
    :cond_0
    new-instance v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V

    invoke-static {}, Lorg/telegram/ui/LoginActivity;->-$$Nest$sfgetSHOW_DELAY()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public restoreStateParams(Landroid/os/Bundle;)V
    .locals 3

    .line 5188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "smsview_params_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentParams:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 5190
    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->setParams(Landroid/os/Bundle;Z)V

    .line 5192
    :cond_0
    const-string v0, "catchedPhone"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5194
    iput-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->catchedPhone:Ljava/lang/String;

    .line 5196
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "smsview_code_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5197
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v2, v1, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    if-eqz v2, :cond_2

    .line 5198
    invoke-virtual {v1, v0}, Lorg/telegram/ui/CodeFieldContainer;->setText(Ljava/lang/String;)V

    .line 5200
    :cond_2
    const-string v0, "time"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3

    .line 5202
    iput v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->time:I

    .line 5204
    :cond_3
    const-string v0, "open"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_4

    .line 5206
    iput p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->openTime:I

    :cond_4
    return-void
.end method

.method public saveStateParams(Landroid/os/Bundle;)V
    .locals 3

    .line 5168
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/CodeFieldContainer;->getCode()Ljava/lang/String;

    move-result-object v0

    .line 5169
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 5170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "smsview_code_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5172
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->catchedPhone:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 5173
    const-string v1, "catchedPhone"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5175
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentParams:Landroid/os/Bundle;

    if-eqz v0, :cond_2

    .line 5176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "smsview_params_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentParams:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 5178
    :cond_2
    iget v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->time:I

    if-eqz v0, :cond_3

    .line 5179
    const-string v1, "time"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 5181
    :cond_3
    iget v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->openTime:I

    if-eqz v0, :cond_4

    .line 5182
    const-string v1, "open"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_4
    return-void
.end method

.method public setParams(Landroid/os/Bundle;Z)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x2

    .line 4477
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    .line 4460
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/high16 v8, 0x3f800000    # 1.0f

    const/16 v9, 0x10

    const/16 v10, 0x11

    const/16 v11, 0x8

    if-nez v1, :cond_2

    .line 4290
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextCodeParams:Landroid/os/Bundle;

    if-eqz v1, :cond_47

    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextCodeAuth:Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;

    if-eqz v1, :cond_47

    .line 4291
    invoke-direct {v0, v4}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->setProblemTextVisible(Z)V

    .line 4292
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeText:Lorg/telegram/ui/LoginActivity$LoadingTextView;

    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    .line 4293
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemText:Lorg/telegram/ui/LoginActivity$LoadingTextView;

    if-eqz v1, :cond_47

    .line 4294
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 4295
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemText:Lorg/telegram/ui/LoginActivity$LoadingTextView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteValueText:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4297
    iget v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextType:I

    if-ne v1, v10, :cond_0

    .line 4298
    sget v1, Lorg/telegram/messenger/R$string;->ReturnEnteringPhrase:I

    goto :goto_0

    :cond_0
    if-ne v1, v9, :cond_1

    .line 4300
    sget v1, Lorg/telegram/messenger/R$string;->ReturnEnteringWord:I

    goto :goto_0

    .line 4302
    :cond_1
    sget v1, Lorg/telegram/messenger/R$string;->ReturnEnteringSMS:I

    .line 4304
    :goto_0
    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemText:Lorg/telegram/ui/LoginActivity$LoadingTextView;

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v1, v4, v3, v5}, Lorg/telegram/messenger/AndroidUtilities;->replaceArrows(Ljava/lang/CharSequence;ZFF)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 4309
    :cond_2
    iput-boolean v4, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->waitingForEvent:Z

    .line 4310
    iget v12, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    const/16 v13, 0xf

    const/4 v14, 0x3

    if-ne v12, v13, :cond_3

    .line 4311
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v12

    sget v15, Lorg/telegram/messenger/NotificationCenter;->didReceiveSmsCode:I

    invoke-virtual {v12, v0, v15}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    goto :goto_1

    :cond_3
    if-ne v12, v2, :cond_4

    .line 4313
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->setWaitingForSms(Z)V

    .line 4314
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v12

    sget v15, Lorg/telegram/messenger/NotificationCenter;->didReceiveSmsCode:I

    invoke-virtual {v12, v0, v15}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    goto :goto_1

    :cond_4
    if-ne v12, v14, :cond_5

    .line 4316
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->setWaitingForCall(Z)V

    .line 4317
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v12

    sget v15, Lorg/telegram/messenger/NotificationCenter;->didReceiveCall:I

    invoke-virtual {v12, v0, v15}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    if-eqz p2, :cond_5

    .line 4319
    new-instance v12, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda6;

    invoke-direct {v12}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda6;-><init>()V

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 4325
    :cond_5
    :goto_1
    iput-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentParams:Landroid/os/Bundle;

    .line 4326
    const-string v12, "phone"

    invoke-virtual {v1, v12}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->phone:Ljava/lang/String;

    .line 4327
    const-string v12, "ephone"

    invoke-virtual {v1, v12}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->emailPhone:Ljava/lang/String;

    .line 4328
    const-string v12, "phoneFormated"

    invoke-virtual {v1, v12}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->requestPhone:Ljava/lang/String;

    .line 4329
    const-string v12, "phoneHash"

    invoke-virtual {v1, v12}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->phoneHash:Ljava/lang/String;

    .line 4330
    const-string v12, "timeout"

    invoke-virtual {v1, v12}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v12

    iput v12, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->time:I

    .line 4331
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    const-wide/16 v17, 0x3e8

    div-long v13, v15, v17

    long-to-int v13, v13

    iput v13, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->openTime:I

    .line 4332
    const-string v13, "nextType"

    invoke-virtual {v1, v13}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v13

    iput v13, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextType:I

    .line 4333
    const-string v13, "pattern"

    invoke-virtual {v1, v13}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->pattern:Ljava/lang/String;

    .line 4334
    const-string v13, "prefix"

    invoke-virtual {v1, v13}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->prefix:Ljava/lang/String;

    .line 4335
    const-string v13, "length"

    invoke-virtual {v1, v13}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v13

    iput v13, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->length:I

    .line 4336
    const-string v13, "prevType"

    invoke-virtual {v1, v13, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v13

    iput v13, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->prevType:I

    .line 4337
    iget v13, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->length:I

    if-nez v13, :cond_6

    const/4 v13, 0x5

    .line 4338
    iput v13, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->length:I

    .line 4340
    :cond_6
    const-string v13, "url"

    invoke-virtual {v1, v13}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->url:Ljava/lang/String;

    const/4 v1, 0x0

    .line 4342
    iput-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextCodeParams:Landroid/os/Bundle;

    .line 4343
    iput-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextCodeAuth:Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;

    .line 4345
    iget-object v13, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget v14, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->length:I

    iget v15, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    invoke-virtual {v13, v14, v15}, Lorg/telegram/ui/CodeFieldContainer;->setNumbersCount(II)V

    .line 4346
    iget-object v13, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v13, v13, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    array-length v14, v13

    move v15, v6

    :goto_2
    if-ge v15, v14, :cond_9

    move/from16 v16, v8

    aget-object v8, v13, v15

    .line 4347
    invoke-virtual {v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->hasCustomKeyboard()Z

    move-result v17

    if-eqz v17, :cond_8

    iget-object v12, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v12}, Lorg/telegram/ui/LoginActivity;->-$$Nest$misCustomKeyboardForceDisabled(Lorg/telegram/ui/LoginActivity;)Z

    move-result v12

    if-eqz v12, :cond_7

    goto :goto_3

    :cond_7
    move v12, v6

    goto :goto_4

    :cond_8
    :goto_3
    move v12, v4

    :goto_4
    invoke-virtual {v8, v12}, Lorg/telegram/ui/CodeNumberField;->setShowSoftInputOnFocusCompat(Z)V

    .line 4348
    new-instance v12, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$6;

    invoke-direct {v12, v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$6;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V

    invoke-virtual {v8, v12}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 4364
    new-instance v12, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda7;

    invoke-direct {v12, v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V

    invoke-virtual {v8, v12}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    add-int/lit8 v15, v15, 0x1

    move/from16 v8, v16

    goto :goto_2

    :cond_9
    move/from16 v16, v8

    .line 4372
    iget v8, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->prevType:I

    const/high16 v12, -0x40800000    # -1.0f

    if-ne v8, v10, :cond_a

    .line 4373
    iget-object v8, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->prevTypeTextView:Landroid/widget/TextView;

    invoke-virtual {v8, v6}, Landroid/view/View;->setVisibility(I)V

    .line 4374
    iget-object v8, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->prevTypeTextView:Landroid/widget/TextView;

    sget v13, Lorg/telegram/messenger/R$string;->BackEnteringPhrase:I

    invoke-static {v13}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    int-to-float v12, v12

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    int-to-float v14, v14

    invoke-static {v13, v4, v12, v14}, Lorg/telegram/messenger/AndroidUtilities;->replaceArrows(Ljava/lang/CharSequence;ZFF)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_a
    if-ne v8, v9, :cond_b

    .line 4376
    iget-object v8, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->prevTypeTextView:Landroid/widget/TextView;

    invoke-virtual {v8, v6}, Landroid/view/View;->setVisibility(I)V

    .line 4377
    iget-object v8, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->prevTypeTextView:Landroid/widget/TextView;

    sget v13, Lorg/telegram/messenger/R$string;->BackEnteringWord:I

    invoke-static {v13}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    int-to-float v12, v12

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    int-to-float v14, v14

    invoke-static {v13, v4, v12, v14}, Lorg/telegram/messenger/AndroidUtilities;->replaceArrows(Ljava/lang/CharSequence;ZFF)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 4379
    :cond_b
    iget-object v8, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->prevTypeTextView:Landroid/widget/TextView;

    invoke-virtual {v8, v11}, Landroid/view/View;->setVisibility(I)V

    .line 4386
    :goto_5
    iget-object v8, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->phone:Ljava/lang/String;

    if-nez v8, :cond_c

    goto/16 :goto_23

    .line 4390
    :cond_c
    invoke-static {}, Lorg/telegram/PhoneFormat/PhoneFormat;->getInstance()Lorg/telegram/PhoneFormat/PhoneFormat;

    move-result-object v8

    iget-object v12, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->phone:Ljava/lang/String;

    invoke-virtual {v8, v12}, Lorg/telegram/PhoneFormat/PhoneFormat;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 4392
    iget-object v12, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v12}, Lorg/telegram/ui/LoginActivity;->-$$Nest$misInCancelAccountDeletionMode(Lorg/telegram/ui/LoginActivity;)Z

    move-result v12

    const-string v13, "+"

    const-string v14, ""

    const/4 v15, 0x4

    if-eqz v12, :cond_e

    .line 4393
    new-instance v12, Landroid/text/SpannableStringBuilder;

    sget v1, Lorg/telegram/messenger/R$string;->CancelAccountResetInfo2:I

    invoke-static {}, Lorg/telegram/PhoneFormat/PhoneFormat;->getInstance()Lorg/telegram/PhoneFormat/PhoneFormat;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Lorg/telegram/PhoneFormat/PhoneFormat;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-array v9, v4, [Ljava/lang/Object;

    aput-object v8, v9, v6

    const-string v8, "CancelAccountResetInfo2"

    invoke-static {v8, v1, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-direct {v12, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/16 v1, 0x2a

    .line 4395
    invoke-static {v12, v1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v8

    .line 4396
    invoke-static {v12, v1}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;C)I

    move-result v1

    const/4 v9, -0x1

    if-eq v8, v9, :cond_d

    if-eq v1, v9, :cond_d

    if-eq v8, v1, :cond_d

    .line 4398
    iget-object v9, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->confirmTextView:Landroid/widget/TextView;

    new-instance v10, Lorg/telegram/messenger/AndroidUtilities$LinkMovementMethodMy;

    invoke-direct {v10}, Lorg/telegram/messenger/AndroidUtilities$LinkMovementMethodMy;-><init>()V

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    add-int/lit8 v9, v1, 0x1

    .line 4399
    invoke-virtual {v12, v1, v9, v14}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v9, v8, 0x1

    .line 4400
    invoke-virtual {v12, v8, v9, v14}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 4401
    new-instance v9, Lorg/telegram/ui/Components/URLSpanNoUnderline;

    const-string v10, "tg://settings/change_number"

    invoke-direct {v9, v10}, Lorg/telegram/ui/Components/URLSpanNoUnderline;-><init>(Ljava/lang/String;)V

    sub-int/2addr v1, v4

    const/16 v10, 0x21

    invoke-virtual {v12, v9, v8, v1, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_d
    :goto_6
    move-object v1, v12

    goto/16 :goto_7

    .line 4405
    :cond_e
    iget v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    if-ne v1, v4, :cond_f

    .line 4406
    sget v1, Lorg/telegram/messenger/R$string;->SentAppCodeWithPhone:I

    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->addNbsp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-array v9, v4, [Ljava/lang/Object;

    aput-object v8, v9, v6

    const-string v8, "SentAppCodeWithPhone"

    invoke-static {v8, v1, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v12

    goto :goto_6

    :cond_f
    if-ne v1, v2, :cond_10

    .line 4408
    sget v1, Lorg/telegram/messenger/R$string;->SentSmsCode:I

    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->addNbsp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-array v9, v4, [Ljava/lang/Object;

    aput-object v8, v9, v6

    const-string v8, "SentSmsCode"

    invoke-static {v8, v1, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v12

    goto :goto_6

    :cond_10
    const/4 v9, 0x3

    if-ne v1, v9, :cond_11

    .line 4410
    sget v1, Lorg/telegram/messenger/R$string;->SentCallCode:I

    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->addNbsp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-array v9, v4, [Ljava/lang/Object;

    aput-object v8, v9, v6

    const-string v8, "SentCallCode"

    invoke-static {v8, v1, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v12

    goto :goto_6

    :cond_11
    if-ne v1, v15, :cond_12

    .line 4412
    sget v1, Lorg/telegram/messenger/R$string;->SentCallOnly:I

    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->addNbsp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-array v9, v4, [Ljava/lang/Object;

    aput-object v8, v9, v6

    const-string v8, "SentCallOnly"

    invoke-static {v8, v1, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v12

    goto :goto_6

    :cond_12
    const/16 v12, 0xf

    if-ne v1, v12, :cond_13

    .line 4414
    sget v1, Lorg/telegram/messenger/R$string;->SentFragmentCode:I

    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->addNbsp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-array v9, v4, [Ljava/lang/Object;

    aput-object v8, v9, v6

    const-string v8, "SentFragmentCode"

    invoke-static {v8, v1, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    goto :goto_7

    :cond_13
    move-object v1, v14

    .line 4417
    :goto_7
    iget-object v8, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->confirmTextView:Landroid/widget/TextView;

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4419
    iget v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    const/16 v8, 0xb

    const/16 v12, 0xf

    if-eq v1, v12, :cond_19

    if-ne v1, v4, :cond_18

    .line 4421
    iget v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextType:I

    const/4 v9, 0x3

    if-eq v1, v9, :cond_17

    if-eq v1, v15, :cond_17

    if-ne v1, v8, :cond_14

    goto :goto_8

    :cond_14
    if-ne v1, v12, :cond_15

    .line 4424
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemText:Lorg/telegram/ui/LoginActivity$LoadingTextView;

    sget v9, Lorg/telegram/messenger/R$string;->DidNotGetTheCodeFragment:I

    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9

    :cond_15
    if-nez v1, :cond_16

    .line 4426
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemText:Lorg/telegram/ui/LoginActivity$LoadingTextView;

    sget v9, Lorg/telegram/messenger/R$string;->DidNotGetTheCode:I

    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9

    .line 4428
    :cond_16
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemText:Lorg/telegram/ui/LoginActivity$LoadingTextView;

    sget v9, Lorg/telegram/messenger/R$string;->DidNotGetTheCodeSms:I

    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9

    .line 4422
    :cond_17
    :goto_8
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemText:Lorg/telegram/ui/LoginActivity$LoadingTextView;

    sget v9, Lorg/telegram/messenger/R$string;->DidNotGetTheCodePhone:I

    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9

    .line 4431
    :cond_18
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemText:Lorg/telegram/ui/LoginActivity$LoadingTextView;

    sget v9, Lorg/telegram/messenger/R$string;->DidNotGetTheCode:I

    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4435
    :cond_19
    :goto_9
    iget v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    const/4 v9, 0x3

    if-eq v1, v9, :cond_1a

    .line 4436
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    iget-object v9, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v9, v9, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    aget-object v9, v9, v6

    invoke-static {v1, v9}, Lorg/telegram/ui/LoginActivity;->-$$Nest$mshowKeyboard(Lorg/telegram/ui/LoginActivity;Landroid/view/View;)Z

    .line 4437
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v1, v1, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    aget-object v1, v1, v6

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_a

    .line 4439
    :cond_1a
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v1, v1, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    aget-object v1, v1, v6

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 4442
    :goto_a
    invoke-direct {v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->destroyTimer()V

    .line 4443
    invoke-direct {v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->destroyCodeTimer()V

    .line 4445
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    long-to-double v9, v9

    iput-wide v9, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lastCurrentTime:D

    .line 4446
    iget v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    if-ne v1, v4, :cond_1b

    .line 4447
    invoke-direct {v0, v4}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->setProblemTextVisible(Z)V

    .line 4448
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeText:Lorg/telegram/ui/LoginActivity$LoadingTextView;

    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    .line 4449
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemText:Lorg/telegram/ui/LoginActivity$LoadingTextView;

    if-eqz v1, :cond_43

    .line 4450
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_20

    .line 4452
    :cond_1b
    const-string v9, "CallAvailableIn"

    const-string v10, "SmsAvailableIn"

    const/4 v12, 0x3

    if-ne v1, v12, :cond_26

    .line 4453
    iget v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextType:I

    if-eq v1, v15, :cond_1d

    if-eq v1, v2, :cond_1d

    const/16 v3, 0x11

    if-eq v1, v3, :cond_1d

    const/16 v3, 0x10

    if-eq v1, v3, :cond_1d

    if-ne v1, v8, :cond_1c

    goto :goto_b

    .line 4463
    :cond_1c
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeText:Lorg/telegram/ui/LoginActivity$LoadingTextView;

    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_d

    .line 4454
    :cond_1d
    :goto_b
    invoke-direct {v0, v6}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->setProblemTextVisible(Z)V

    .line 4455
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeText:Lorg/telegram/ui/LoginActivity$LoadingTextView;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 4456
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemText:Lorg/telegram/ui/LoginActivity$LoadingTextView;

    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    .line 4457
    iget v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextType:I

    if-eq v1, v15, :cond_20

    if-ne v1, v8, :cond_1e

    goto :goto_c

    :cond_1e
    if-eq v1, v2, :cond_1f

    const/16 v3, 0x11

    if-eq v1, v3, :cond_1f

    const/16 v3, 0x10

    if-ne v1, v3, :cond_21

    .line 4460
    :cond_1f
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeText:Lorg/telegram/ui/LoginActivity$LoadingTextView;

    sget v3, Lorg/telegram/messenger/R$string;->SmsAvailableIn:I

    new-array v9, v2, [Ljava/lang/Object;

    aput-object v5, v9, v6

    aput-object v7, v9, v4

    invoke-static {v10, v3, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_d

    .line 4458
    :cond_20
    :goto_c
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeText:Lorg/telegram/ui/LoginActivity$LoadingTextView;

    sget v3, Lorg/telegram/messenger/R$string;->CallAvailableIn:I

    new-array v10, v2, [Ljava/lang/Object;

    aput-object v5, v10, v6

    aput-object v7, v10, v4

    invoke-static {v9, v3, v10}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_21
    :goto_d
    if-eqz p2, :cond_22

    .line 4465
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->pattern:Ljava/lang/String;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->obtainLoginPhoneCall(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_e

    :cond_22
    const/4 v1, 0x0

    :goto_e
    if-eqz v1, :cond_23

    .line 4467
    invoke-virtual {v0, v1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->onNextPressed(Ljava/lang/String;)V

    goto/16 :goto_20

    .line 4468
    :cond_23
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->catchedPhone:Ljava/lang/String;

    if-eqz v1, :cond_24

    .line 4469
    invoke-virtual {v0, v1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->onNextPressed(Ljava/lang/String;)V

    goto/16 :goto_20

    .line 4470
    :cond_24
    iget v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextType:I

    if-eq v1, v15, :cond_25

    if-eq v1, v2, :cond_25

    const/16 v3, 0x11

    if-eq v1, v3, :cond_25

    const/16 v3, 0x10

    if-eq v1, v3, :cond_25

    if-ne v1, v8, :cond_43

    .line 4471
    :cond_25
    invoke-direct {v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->createTimer()V

    goto/16 :goto_20

    :cond_26
    const/16 v12, 0x3e8

    move/from16 v17, v4

    if-ne v1, v2, :cond_32

    .line 4473
    iget v4, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextType:I

    if-eq v4, v2, :cond_28

    const/16 v11, 0x11

    const/16 v8, 0x10

    if-eq v4, v11, :cond_29

    if-eq v4, v8, :cond_29

    if-eq v4, v15, :cond_29

    const/4 v15, 0x3

    if-ne v4, v15, :cond_27

    goto :goto_f

    :cond_27
    const/4 v4, 0x4

    goto/16 :goto_16

    :cond_28
    const/16 v8, 0x10

    const/16 v11, 0x11

    :cond_29
    :goto_f
    if-eq v4, v2, :cond_2b

    if-eq v4, v11, :cond_2b

    if-ne v4, v8, :cond_2a

    goto :goto_10

    .line 4477
    :cond_2a
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeText:Lorg/telegram/ui/LoginActivity$LoadingTextView;

    sget v4, Lorg/telegram/messenger/R$string;->CallAvailableIn:I

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v3, v2, v6

    aput-object v7, v2, v17

    invoke-static {v9, v4, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_11

    .line 4475
    :cond_2b
    :goto_10
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeText:Lorg/telegram/ui/LoginActivity$LoadingTextView;

    sget v3, Lorg/telegram/messenger/R$string;->SmsAvailableIn:I

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v5, v2, v6

    aput-object v7, v2, v17

    invoke-static {v10, v3, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4479
    :goto_11
    iget v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->time:I

    if-ge v1, v12, :cond_2c

    move/from16 v1, v17

    goto :goto_12

    :cond_2c
    move v1, v6

    :goto_12
    invoke-direct {v0, v1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->setProblemTextVisible(Z)V

    .line 4480
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeText:Lorg/telegram/ui/LoginActivity$LoadingTextView;

    iget v2, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->time:I

    if-ge v2, v12, :cond_2d

    const/16 v2, 0x8

    goto :goto_13

    :cond_2d
    move v2, v6

    :goto_13
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4481
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemText:Lorg/telegram/ui/LoginActivity$LoadingTextView;

    if-eqz v1, :cond_2f

    .line 4482
    iget v2, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->time:I

    if-ge v2, v12, :cond_2e

    move v11, v6

    goto :goto_14

    :cond_2e
    const/16 v11, 0x8

    :goto_14
    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    .line 4485
    :cond_2f
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v2, "mainconfig"

    invoke-virtual {v1, v2, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 4486
    const-string v2, "sms_hash"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4488
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_30

    .line 4489
    const-string v4, "sms_hash_code"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_30

    .line 4490
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_30

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v2}, Lorg/telegram/ui/LoginActivity;->-$$Nest$fgetnewAccount(Lorg/telegram/ui/LoginActivity;)Z

    move-result v2

    if-nez v2, :cond_30

    const/16 v2, 0x7c

    .line 4491
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_15

    :cond_30
    const/4 v3, 0x0

    :goto_15
    if-eqz v3, :cond_31

    .line 4497
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    invoke-virtual {v1, v3}, Lorg/telegram/ui/CodeFieldContainer;->setCode(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 4498
    invoke-virtual {v0, v3}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->onNextPressed(Ljava/lang/String;)V

    goto/16 :goto_20

    .line 4500
    :cond_31
    invoke-direct {v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->createTimer()V

    goto/16 :goto_20

    :cond_32
    move v4, v15

    :goto_16
    if-ne v1, v4, :cond_33

    .line 4502
    iget v4, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextType:I

    if-eq v4, v2, :cond_35

    const/16 v11, 0x11

    if-eq v4, v11, :cond_34

    const/16 v8, 0xb

    if-eq v4, v8, :cond_34

    const/16 v8, 0x10

    if-ne v4, v8, :cond_33

    goto :goto_17

    :cond_33
    const/16 v8, 0xb

    goto :goto_1d

    :cond_34
    const/16 v8, 0x10

    goto :goto_17

    :cond_35
    const/16 v8, 0x10

    const/16 v11, 0x11

    :goto_17
    if-eq v4, v2, :cond_37

    if-eq v4, v11, :cond_37

    if-ne v4, v8, :cond_36

    goto :goto_18

    .line 4506
    :cond_36
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeText:Lorg/telegram/ui/LoginActivity$LoadingTextView;

    sget v4, Lorg/telegram/messenger/R$string;->CallAvailableIn:I

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v3, v2, v6

    aput-object v7, v2, v17

    invoke-static {v9, v4, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_19

    .line 4504
    :cond_37
    :goto_18
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeText:Lorg/telegram/ui/LoginActivity$LoadingTextView;

    sget v3, Lorg/telegram/messenger/R$string;->SmsAvailableIn:I

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v5, v2, v6

    aput-object v7, v2, v17

    invoke-static {v10, v3, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4508
    :goto_19
    iget v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->time:I

    if-ge v1, v12, :cond_38

    move/from16 v4, v17

    goto :goto_1a

    :cond_38
    move v4, v6

    :goto_1a
    invoke-direct {v0, v4}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->setProblemTextVisible(Z)V

    .line 4509
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeText:Lorg/telegram/ui/LoginActivity$LoadingTextView;

    iget v2, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->time:I

    if-ge v2, v12, :cond_39

    const/16 v2, 0x8

    goto :goto_1b

    :cond_39
    move v2, v6

    :goto_1b
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4510
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemText:Lorg/telegram/ui/LoginActivity$LoadingTextView;

    if-eqz v1, :cond_3b

    .line 4511
    iget v2, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->time:I

    if-ge v2, v12, :cond_3a

    move v11, v6

    goto :goto_1c

    :cond_3a
    const/16 v11, 0x8

    :goto_1c
    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    .line 4513
    :cond_3b
    invoke-direct {v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->createTimer()V

    goto/16 :goto_20

    :goto_1d
    if-ne v1, v8, :cond_41

    .line 4515
    iget v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextType:I

    const/4 v4, 0x4

    if-eq v1, v4, :cond_3c

    if-eq v1, v2, :cond_3c

    const/16 v3, 0x11

    if-eq v1, v3, :cond_3c

    const/16 v3, 0x10

    if-eq v1, v3, :cond_3c

    if-ne v1, v8, :cond_43

    .line 4516
    :cond_3c
    invoke-direct {v0, v6}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->setProblemTextVisible(Z)V

    .line 4517
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeText:Lorg/telegram/ui/LoginActivity$LoadingTextView;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 4518
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemText:Lorg/telegram/ui/LoginActivity$LoadingTextView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 4519
    iget v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextType:I

    const/4 v4, 0x4

    if-eq v1, v4, :cond_3f

    const/16 v8, 0xb

    if-ne v1, v8, :cond_3d

    goto :goto_1e

    :cond_3d
    if-eq v1, v2, :cond_3e

    const/16 v3, 0x11

    if-eq v1, v3, :cond_3e

    const/16 v3, 0x10

    if-ne v1, v3, :cond_40

    .line 4522
    :cond_3e
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeText:Lorg/telegram/ui/LoginActivity$LoadingTextView;

    sget v3, Lorg/telegram/messenger/R$string;->SmsAvailableIn:I

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v5, v2, v6

    aput-object v7, v2, v17

    invoke-static {v10, v3, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1f

    .line 4520
    :cond_3f
    :goto_1e
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeText:Lorg/telegram/ui/LoginActivity$LoadingTextView;

    sget v3, Lorg/telegram/messenger/R$string;->CallAvailableIn:I

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v5, v2, v6

    aput-object v7, v2, v17

    invoke-static {v9, v3, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4524
    :cond_40
    :goto_1f
    invoke-direct {v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->createTimer()V

    goto :goto_20

    .line 4527
    :cond_41
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeText:Lorg/telegram/ui/LoginActivity$LoadingTextView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 4528
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemText:Lorg/telegram/ui/LoginActivity$LoadingTextView;

    if-eqz v1, :cond_42

    .line 4529
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 4531
    :cond_42
    invoke-direct {v0, v6}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->setProblemTextVisible(Z)V

    .line 4532
    invoke-direct {v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->createCodeTimer()V

    .line 4535
    :cond_43
    :goto_20
    iget v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    const/16 v8, 0xb

    if-ne v1, v8, :cond_47

    .line 4536
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->prefix:Ljava/lang/String;

    move v2, v6

    .line 4537
    :goto_21
    iget v3, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->length:I

    const-string v4, "0"

    if-ge v2, v3, :cond_44

    .line 4538
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 4540
    :cond_44
    invoke-static {}, Lorg/telegram/PhoneFormat/PhoneFormat;->getInstance()Lorg/telegram/PhoneFormat/PhoneFormat;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/telegram/PhoneFormat/PhoneFormat;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move v2, v6

    .line 4541
    :goto_22
    iget v3, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->length:I

    if-ge v2, v3, :cond_46

    .line 4542
    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_45

    .line 4544
    invoke-virtual {v1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_45
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    .line 4547
    :cond_46
    const-string v2, "\\)"

    invoke-virtual {v1, v2, v14}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4548
    const-string v2, "\\("

    invoke-virtual {v1, v2, v14}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4549
    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->prefixTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_47
    :goto_23
    return-void
.end method

.method public updateColors()V
    .locals 5

    .line 4099
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->confirmTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v1}, Lorg/telegram/ui/LoginActivity;->-$$Nest$misInCancelAccountDeletionMode(Lorg/telegram/ui/LoginActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    goto :goto_0

    :cond_0
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText6:I

    :goto_0
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4100
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->confirmTextView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionBackground:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 4101
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->titleTextView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4103
    iget v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    const/16 v2, 0xb

    if-ne v0, v2, :cond_1

    .line 4104
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->missedCallDescriptionSubtitle:Landroid/widget/TextView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4105
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->missedCallDescriptionSubtitle2:Landroid/widget/TextView;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4106
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->missedCallArrowIcon:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteInputFieldActivated:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 4107
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->missedCallPhoneIcon:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 4108
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->prefixTextView:Landroid/widget/TextView;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4111
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->hintDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-direct {p0, v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->applyLottieColors(Lorg/telegram/ui/Components/RLottieDrawable;)V

    .line 4112
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->starsToDotsDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-direct {p0, v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->applyLottieColors(Lorg/telegram/ui/Components/RLottieDrawable;)V

    .line 4113
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->dotsDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-direct {p0, v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->applyLottieColors(Lorg/telegram/ui/Components/RLottieDrawable;)V

    .line 4114
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->dotsToStarsDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-direct {p0, v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->applyLottieColors(Lorg/telegram/ui/Components/RLottieDrawable;)V

    .line 4116
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    if-eqz v0, :cond_2

    .line 4117
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 4120
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeText:Lorg/telegram/ui/LoginActivity$LoadingTextView;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_3

    .line 4122
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText6:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 4124
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeText:Lorg/telegram/ui/LoginActivity$LoadingTextView;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4126
    iget v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    const/16 v1, 0xf

    if-eq v0, v1, :cond_4

    .line 4127
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemText:Lorg/telegram/ui/LoginActivity$LoadingTextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText4:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4129
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->wrongCode:Landroid/widget/TextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
