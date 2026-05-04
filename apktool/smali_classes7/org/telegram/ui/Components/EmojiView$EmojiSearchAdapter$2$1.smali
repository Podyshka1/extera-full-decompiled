.class Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$2;

.field final synthetic val$builder:Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

.field final synthetic val$loadingUrl:[Z


# direct methods
.method public static synthetic $r8$lambda$H2cVe_srB413a_A3A1irYCSwRDs(Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$2$1;[Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/ui/ActionBar/BottomSheet$Builder;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$2$1;->lambda$onClick$1([Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/ui/ActionBar/BottomSheet$Builder;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HRbm7K1ZjpBTBxdRwzF_sKwfEBg(Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$2$1;[Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/ActionBar/BottomSheet$Builder;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$2$1;->lambda$onClick$0([Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/ActionBar/BottomSheet$Builder;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iFXghBHejyGy_kqIAcl9rc6MR2M(Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$2$1;[Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$2$1;->lambda$onClick$3([Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$vH9ihXJTCkRT7j8duiv12G2pwLE(Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$2$1;ILandroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$2$1;->lambda$onClick$2(ILandroid/content/DialogInterface;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$2;[ZLorg/telegram/ui/ActionBar/BottomSheet$Builder;)V
    .locals 0

    .line 7841
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$2$1;->this$2:Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$2;

    iput-object p2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$2$1;->val$loadingUrl:[Z

    iput-object p3, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$2$1;->val$builder:Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onClick$0([Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/ActionBar/BottomSheet$Builder;)V
    .locals 2

    const/4 v0, 0x0

    .line 7855
    :try_start_0
    aget-object v1, p1, v0

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    const/4 v1, 0x0

    .line 7859
    aput-object v1, p1, v0

    .line 7861
    instance-of p1, p2, Lorg/telegram/tgnet/TLRPC$TL_emojiURL;

    if-eqz p1, :cond_0

    .line 7862
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$2$1;->this$2:Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$2;

    iget-object p1, p1, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$2;->this$1:Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;

    iget-object p1, p1, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_emojiURL;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_emojiURL;->url:Ljava/lang/String;

    invoke-static {p1, p2}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    .line 7863
    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->getDismissRunnable()Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onClick$1([Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/ui/ActionBar/BottomSheet$Builder;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 7853
    new-instance p4, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$2$1$$ExternalSyntheticLambda2;

    invoke-direct {p4, p0, p1, p3, p2}, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$2$1$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$2$1;[Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/ActionBar/BottomSheet$Builder;)V

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onClick$2(ILandroid/content/DialogInterface;)V
    .locals 1

    .line 7873
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$2$1;->this$2:Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$2;

    iget-object p2, p2, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$2;->this$1:Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;

    iget-object p2, p2, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget p2, p2, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    return-void
.end method

.method private synthetic lambda$onClick$3([Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 3

    const/4 v0, 0x0

    .line 7870
    aget-object v1, p1, v0

    if-nez v1, :cond_0

    return-void

    .line 7873
    :cond_0
    new-instance v2, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$2$1$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, p2}, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$2$1$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$2$1;I)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 7874
    aget-object p1, p1, v0

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 7844
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$2$1;->val$loadingUrl:[Z

    const/4 v0, 0x0

    aget-boolean v1, p1, v0

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 7847
    aput-boolean v1, p1, v0

    .line 7848
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog;

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$2$1;->this$2:Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$2;

    iget-object v2, v2, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$2;->this$1:Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;

    iget-object v2, v2, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x3

    invoke-direct {p1, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    new-array v1, v1, [Lorg/telegram/ui/ActionBar/AlertDialog;

    aput-object p1, v1, v0

    .line 7850
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_messages_getEmojiURL;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_messages_getEmojiURL;-><init>()V

    .line 7851
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$2$1;->this$2:Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$2;

    iget-object v2, v2, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$2;->this$1:Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->-$$Nest$fgetlastSearchAlias(Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$2$1;->this$2:Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$2;

    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$2;->this$1:Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->-$$Nest$fgetlastSearchAlias(Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$2$1;->this$2:Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$2;

    iget-object v2, v2, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$2;->this$1:Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;

    iget-object v2, v2, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetlastSearchKeyboardLanguage(Lorg/telegram/ui/Components/EmojiView;)[Ljava/lang/String;

    move-result-object v2

    aget-object v0, v2, v0

    :goto_0
    iput-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_getEmojiURL;->lang_code:Ljava/lang/String;

    .line 7852
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$2$1;->this$2:Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$2;

    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$2;->this$1:Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget v0, v0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$2$1;->val$builder:Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    new-instance v3, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$2$1$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v1, v2}, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$2$1$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$2$1;[Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/ui/ActionBar/BottomSheet$Builder;)V

    invoke-virtual {v0, p1, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result p1

    .line 7869
    new-instance v0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$2$1$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, v1, p1}, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$2$1$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$2$1;[Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    const-wide/16 v1, 0x3e8

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method
