.class Lorg/telegram/ui/Components/SharedMediaLayout$48;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Cells/SharedLinkCell$SharedLinkCellDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/SharedMediaLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/SharedMediaLayout;


# direct methods
.method public static synthetic $r8$lambda$jJlRensxQkWG3t5p1eUDCmFhZBs(Lorg/telegram/ui/Components/SharedMediaLayout$48;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/SharedMediaLayout$48;->lambda$onLinkPress$0(Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Components/SharedMediaLayout;)V
    .locals 0

    .line 7735
    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$48;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onLinkPress$0(Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    if-nez p3, :cond_0

    .line 7753
    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$48;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p2, p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$mopenUrl(Lorg/telegram/ui/Components/SharedMediaLayout;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 p2, 0x1

    if-ne p3, p2, :cond_3

    .line 7756
    const-string p2, "mailto:"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x7

    .line 7757
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 7758
    :cond_1
    const-string/jumbo p2, "tel:"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x4

    .line 7759
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 7761
    :cond_2
    :goto_0
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->addToClipboard(Ljava/lang/CharSequence;)Z

    :cond_3
    return-void
.end method


# virtual methods
.method public canPerformActions()Z
    .locals 1

    .line 7743
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$48;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget-boolean v0, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->isActionModeShowed:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public needOpenWebView(Lorg/telegram/tgnet/TLRPC$WebPage;Lorg/telegram/messenger/MessageObject;)V
    .locals 1

    .line 7738
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$48;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0, p1, p2}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$mopenWebView(Lorg/telegram/ui/Components/SharedMediaLayout;Lorg/telegram/tgnet/TLRPC$WebPage;Lorg/telegram/messenger/MessageObject;)V

    return-void
.end method

.method public onLinkPress(Ljava/lang/String;Z)V
    .locals 4

    if-eqz p2, :cond_0

    .line 7749
    new-instance p2, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$48;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetprofileActivity(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p2, v0}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;-><init>(Landroid/content/Context;)V

    .line 7750
    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 7751
    const-string v0, "Open"

    sget v1, Lorg/telegram/messenger/R$string;->Open:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Copy"

    sget v2, Lorg/telegram/messenger/R$string;->Copy:I

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    new-instance v0, Lorg/telegram/ui/Components/SharedMediaLayout$48$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout$48$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout$48;Ljava/lang/String;)V

    invoke-virtual {p2, v2, v0}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 7764
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$48;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetprofileActivity(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->create()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void

    .line 7766
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$48;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p2, p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$mopenUrl(Lorg/telegram/ui/Components/SharedMediaLayout;Ljava/lang/String;)V

    return-void
.end method
