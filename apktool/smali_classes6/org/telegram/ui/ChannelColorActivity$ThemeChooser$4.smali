.class Lorg/telegram/ui/ChannelColorActivity$ThemeChooser$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/tgnet/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;-><init>(Landroid/content/Context;ZILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;

.field final synthetic val$currentAccount:I


# direct methods
.method public static synthetic $r8$lambda$cue-7WAM9EVsqdsBMEkovarT9CU(Lorg/telegram/ui/ChannelColorActivity$ThemeChooser$4;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser$4;->lambda$onComplete$0(Ljava/util/List;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;I)V
    .locals 0

    .line 1866
    iput-object p1, p0, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser$4;->this$0:Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;

    iput p2, p0, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser$4;->val$currentAccount:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onComplete$0(Ljava/util/List;)V
    .locals 1

    .line 1873
    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser$4;->this$0:Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;

    invoke-static {v0, p1}, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;->-$$Nest$monDataLoaded(Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onComplete(Ljava/lang/Object;)V
    .locals 0

    .line 1866
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser$4;->onComplete(Ljava/util/List;)V

    return-void
.end method

.method public onComplete(Ljava/util/List;)V
    .locals 2

    .line 1872
    iget v0, p0, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser$4;->val$currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser$4$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser$4$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ChannelColorActivity$ThemeChooser$4;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/NotificationCenter;->doOnIdle(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onError(Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2

    .line 1879
    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser$4;->this$0:Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
